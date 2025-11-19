uint64_t sub_100046CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046D2C(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100046DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000056EC(qword_1000DED00, &qword_100096A70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100045110(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100046EE0()
{
  result = qword_1000DAD20;
  if (!qword_1000DAD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DAD20);
  }

  return result;
}

uint64_t sub_100046F34(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100047030(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(*v2, a2);
  v8 = v17 - v7;
  v17[0] = v6;
  swift_getMetatypeMetadata();
  v9 = String.init<A>(describing:)();
  v11 = v10;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  (*(*(*(*v2 + 80) - 8) + 16))(v8, &v2[*(*v2 + 96)]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v8, v3);
  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v17[0];
}

char *sub_1000471FC()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_1000472AC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000474B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v20[4] = v5;
  v20[5] = type metadata accessor for Publishers.Map();
  v20[6] = swift_getWitnessTable();
  v20[7] = swift_getWitnessTable();
  v6 = type metadata accessor for Publishers.SwitchToLatest();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v20 - v15;
  v17 = *(v3 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v16, &v1[v17], v7);
  v18 = *(v6 - 8);
  if ((*(v18 + 48))(v16, 1, v6) != 1)
  {
    return (*(v18 + 32))(a1, v16, v6);
  }

  (*(v8 + 8))(v16, v7);
  sub_1000477D8(v1);
  (*(v18 + 16))(v13, a1, v6);
  (*(v18 + 56))(v13, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v1[v17], v13, v7);
  return swift_endAccess();
}

uint64_t sub_1000477D8(void *a1)
{
  v2 = *(*a1 + 80);
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.Map();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v11 - v7;
  v9 = a1[2];
  v11[1] = a1[3];

  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1000479E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v29 = *a2;
  v4 = *(v29 + class metadata base offset for CurrentValueSubject);
  v5 = type metadata accessor for Just();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v28 - v15;
  v17 = *(v4 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v14, v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v28 - v24;
  (*(v11 + 16))(v16, v31, v10);
  if ((*(v17 + 48))(v16, 1, v4) == 1)
  {
    (*(v11 + 8))(v16, v10);
    v33 = a2;
    swift_getWitnessTable();
    result = Publisher.eraseToAnyPublisher()();
    v27 = result;
  }

  else
  {
    (*(v17 + 32))(v25, v16, v4);
    (*(v17 + 16))(v22, v25, v4);
    Just.init(_:)();
    swift_getWitnessTable();
    v27 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v9, v5);
    result = (*(v17 + 8))(v25, v4);
  }

  *v32 = v27;
  return result;
}

uint64_t sub_100047D84()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v10[0] = v2;
  v10[1] = type metadata accessor for Publishers.Map();
  v10[2] = swift_getWitnessTable();
  v10[3] = swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.SwitchToLatest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v10 - v7;
  sub_1000474B0(v10 - v7);
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_100047F74()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = type metadata accessor for Optional();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v38 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v7, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v38 - v17;
  sub_1000056EC(&qword_1000DEE08, &qword_100096BE8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100092B80;
  v40 = v2;
  swift_getMetatypeMetadata();
  *(v19 + 32) = String.init<A>(describing:)();
  *(v19 + 40) = v20;
  v40 = 0;
  v41 = 0xE000000000000000;
  v21._countAndFlagsBits = 0x3D65756C6176;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22 = v1[2];
  CurrentValueSubject.value.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v23 = *(v10 + 8);
  v23(v18, v3);
  v24 = v41;
  *(v19 + 48) = v40;
  *(v19 + 56) = v24;
  v25 = v1[3];
  CurrentValueSubject.value.getter();
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    (*(v38 + 8))(v9, v39);
  }

  else
  {
    (*(v10 + 32))(v15, v9, v3);
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v26._countAndFlagsBits = 0x656469727265766FLL;
    v26._object = 0xEE003D65756C6156;
    String.append(_:)(v26);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v27 = v40;
    v28 = v41;
    v30 = *(v19 + 16);
    v29 = *(v19 + 24);
    if (v30 >= v29 >> 1)
    {
      v19 = sub_10006F40C((v29 > 1), v30 + 1, 1, v19);
    }

    v23(v15, v3);
    *(v19 + 16) = v30 + 1;
    v31 = v19 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28;
  }

  v40 = v19;
  sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
  sub_100048664();
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  v40 = 60;
  v41 = 0xE100000000000000;
  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 62;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);

  return v40;
}

char *sub_100048344()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(*v0 + 104);
  v5 = *(v1 + 80);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);

  v7 = *&v0[*(*v0 + 128) + 8];

  v8 = *(*v0 + 144);
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = *&v0[*(*v0 + 152)];

  return v0;
}

uint64_t sub_10004859C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

unint64_t sub_100048664()
{
  result = qword_1000DEE10;
  if (!qword_1000DEE10)
  {
    sub_100005818(&qword_1000DB448, &qword_1000928B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEE10);
  }

  return result;
}

uint64_t sub_1000486DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000486FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_1000487AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100048888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100048960()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100049D0C(319, &unk_1000DEE80, &type metadata for AnyView, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100048A0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityIconView(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  *a1 = static Alignment.center.getter();
  a1[1] = v9;
  v10 = sub_1000056EC(&qword_1000DEF78, &qword_100096CE8);
  sub_100048CCC(v2, a1 + *(v10 + 44));
  v11 = *(v2 + v5[7]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a1 + *(sub_1000056EC(&qword_1000DEF80, &unk_100096CF0) + 36));
  v13 = v30;
  *v12 = v29;
  v12[1] = v13;
  v12[2] = v31;
  v14 = *(v2 + v5[9]) - *(v2 + v5[8]);
  v15 = static Animation.easeOut(duration:)();
  v16 = v2 + v5[14];
  v17 = *v16;
  v18 = *(v16 + 8);
  v27[16] = v17;
  v28 = v18;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  LOBYTE(v5) = v27[15];
  v19 = a1 + *(sub_1000056EC(&qword_1000DEF88, &qword_100096D00) + 36);
  *v19 = v15;
  v19[8] = v5;
  v20 = a1 + *(sub_1000056EC(&qword_1000DEF90, &qword_100096D08) + 36);
  sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  Binding.wrappedValue.getter();
  sub_100049D7C(v2, &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  sub_100049DE4(&v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21);
  v23 = &v20[*(sub_1000056EC(&qword_1000DEF98, &qword_100096D10) + 36)];
  *v23 = sub_100049E48;
  v23[1] = v22;
  sub_100049D7C(v2, &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v24 = swift_allocObject();
  sub_100049DE4(&v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v21);
  result = sub_1000056EC(&qword_1000DEFA0, &qword_100096D18);
  v26 = (a1 + *(result + 36));
  *v26 = sub_10004A010;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

uint64_t sub_100048CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v35 = &v35 - v10;
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v35 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for ActivityIconView(0);
  v19 = (a1 + v18[10]);
  v21 = *v19;
  v20 = v19[1];
  v39 = v21;
  v40 = v20;
  sub_1000056EC(&qword_1000DEFA8, &unk_100096D20);
  State.wrappedValue.getter();
  v22 = v38;
  v23 = a1 + v18[12];
  v25 = *(v23 + 8);
  LOBYTE(v39) = *v23;
  v24 = v39;
  v40 = v25;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  sub_100048F38(v22, v38, v17);

  v26 = (a1 + v18[11]);
  v28 = *v26;
  v27 = v26[1];
  v39 = v28;
  v40 = v27;
  State.wrappedValue.getter();
  v29 = v38;
  LOBYTE(v39) = v24;
  v40 = v25;
  State.wrappedValue.getter();
  sub_100048F38(v29, (v38 & 1) == 0, v14);

  v30 = v35;
  sub_10004A180(v17, v35);
  v31 = v36;
  sub_10004A180(v14, v36);
  v32 = v37;
  sub_10004A180(v30, v37);
  v33 = sub_1000056EC(&qword_1000DEFB8, &qword_100096D38);
  sub_10004A180(v31, v32 + *(v33 + 48));
  sub_10004A1F0(v14);
  sub_10004A1F0(v17);
  sub_10004A1F0(v31);
  return sub_10004A1F0(v30);
}

uint64_t sub_100048F38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a3;
  v5 = sub_1000056EC(&qword_1000DEFC0, &qword_100096D40);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v42[-v9];
  v11 = sub_1000056EC(&qword_1000DEFC8, &qword_100096D48);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v42[-v15];
  v17 = sub_1000056EC(&qword_1000DEFD0, &unk_100096D50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v42[-v20];
  v22 = type metadata accessor for ActivityIconView(0);
  v23 = v22[5];
  v44 = v3;
  v24 = *(v3 + v23) * 0.25;
  v25 = (v10 + *(v6 + 44));
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  v29 = v25 + v26;
  v30 = v43;
  (*(*(v28 - 8) + 104))(v29, v27, v28);
  *v25 = v24;
  v25[1] = v24;
  *(v25 + *(sub_1000056EC(&qword_1000DEFD8, &qword_10009C740) + 36)) = 256;
  *v10 = a1;
  v31 = 0;
  v32 = 1.0;
  if (v30)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 0.0;
  }

  sub_10001F170(v10, v16, &qword_1000DEFC0, &qword_100096D40);
  *&v16[*(v12 + 44)] = v33;
  if ((v30 & 1) == 0)
  {
    v32 = *(v44 + v22[9]);
  }

  static UnitPoint.center.getter();
  v35 = v34;
  v37 = v36;
  sub_10001F170(v16, v21, &qword_1000DEFC8, &qword_100096D48);
  v38 = &v21[*(v17 + 36)];
  *v38 = v32;
  v38[1] = v32;
  *(v38 + 2) = v35;
  *(v38 + 3) = v37;
  if ((v30 & 1) == 0)
  {
    v31 = *(v44 + v22[8]);
  }

  v39 = v45;
  sub_10001F170(v21, v45, &qword_1000DEFD0, &unk_100096D50);
  result = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  v41 = v39 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = 0;
  return result;
}

uint64_t sub_10004920C(char *a1)
{
  v45 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  __chkstk_darwin(v2, v4);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  __chkstk_darwin(v6, v8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityIconView(0);
  v46 = *(v10 - 1);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10, v12);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v44 - v21;
  v23 = v1 + v10[12];
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(aBlock) = v24;
  v54 = v25;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v26 = v59;
  v27 = *(type metadata accessor for ActivityIcon(0) + 20);
  v28 = *&v45[v27];
  if (v26 == 1)
  {
    if (v28)
    {
      v29 = *&v45[v27];
    }

    else
    {
      v29 = AnyView.init<A>(_:)();
    }

    v30 = v10[11];
  }

  else
  {
    if (v28)
    {
      v29 = *&v45[v27];
    }

    else
    {
      v29 = AnyView.init<A>(_:)();
    }

    v30 = v10[10];
  }

  v31 = (v1 + v30);
  v33 = *v31;
  v32 = v31[1];
  aBlock = v33;
  v54 = v32;
  v59 = v29;

  sub_1000056EC(&qword_1000DEFA8, &unk_100096D20);
  State.wrappedValue.setter();
  sub_10000FE40();
  v34 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v35 = *(v1 + v10[6]);
  + infix(_:_:)();
  v36 = *(v14 + 8);
  v44 = v13;
  v45 = v36;
  (v36)(v19, v13);
  sub_100049D7C(v1, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v38 = swift_allocObject();
  sub_100049DE4(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  v57 = sub_10004A084;
  v58 = v38;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_100035630;
  v56 = &unk_1000CA210;
  v39 = _Block_copy(&aBlock);

  v40 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10004A128();
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780);
  v41 = v50;
  v42 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v39);

  (*(v51 + 8))(v41, v42);
  (*(v48 + 8))(v40, v49);
  return (v45)(v22, v44);
}

uint64_t sub_10004973C()
{
  v0 = type metadata accessor for ActivityIcon(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  Binding.wrappedValue.getter();
  sub_10004920C(v4);
  return sub_10004A028(v4);
}

uint64_t sub_1000497D0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ActivityIconView(0) + 48));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_10004987C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_10001F170(a1, a2, &qword_1000DEEB0, &qword_100096C78);
  v5 = type metadata accessor for ActivityIconView(0);
  *(a2 + v5[5]) = a3;
  *(a2 + v5[6]) = 0x3F50624DD2F1A9FCLL;
  *(a2 + v5[7]) = 0x3FD3333333333333;
  *(a2 + v5[8]) = 0x4024000000000000;
  *(a2 + v5[9]) = 0x3FB999999999999ALL;
  v6 = (a2 + v5[10]);
  AnyView.init<A>(_:)();
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a2 + v5[11]);
  AnyView.init<A>(_:)();
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = a2 + v5[12];
  result = State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_100049A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100049AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100049BB4()
{
  sub_100049CB4();
  if (v0 <= 0x3F)
  {
    sub_100049D0C(319, &unk_1000DEF28, &type metadata for AnyView, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100049D0C(319, &qword_1000DB1A0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100049CB4()
{
  if (!qword_1000DEF20)
  {
    type metadata accessor for ActivityIcon(255);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DEF20);
    }
  }
}

void sub_100049D0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100049D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049E48(char *a1)
{
  v3 = *(type metadata accessor for ActivityIconView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_10004920C(a1);
}

uint64_t sub_100049EAC()
{
  v1 = (type metadata accessor for ActivityIconView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + *(sub_1000056EC(&qword_1000DEEB0, &qword_100096C78) + 32);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(type metadata accessor for ActivityIcon(0) + 20));

  v10 = (v0 + v3 + v1[12]);
  v11 = *v10;

  v12 = v10[1];

  v13 = (v0 + v3 + v1[13]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v0 + v3 + v1[14] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004A028(uint64_t a1)
{
  v2 = type metadata accessor for ActivityIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A09C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivityIconView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10004A110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A128()
{
  result = qword_1000D9FA0;
  if (!qword_1000D9FA0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FA0);
  }

  return result;
}

uint64_t sub_10004A180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A1F0(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004A25C()
{
  result = qword_1000DEFE0;
  if (!qword_1000DEFE0)
  {
    sub_100005818(&qword_1000DEFA0, &qword_100096D18);
    sub_10004A2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFE0);
  }

  return result;
}

unint64_t sub_10004A2E8()
{
  result = qword_1000DEFE8;
  if (!qword_1000DEFE8)
  {
    sub_100005818(&qword_1000DEF90, &qword_100096D08);
    sub_10004A3A0();
    sub_10000EE58(&qword_1000DF020, &qword_1000DEF98, &qword_100096D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFE8);
  }

  return result;
}

unint64_t sub_10004A3A0()
{
  result = qword_1000DEFF0;
  if (!qword_1000DEFF0)
  {
    sub_100005818(&qword_1000DEF88, &qword_100096D00);
    sub_10004A458();
    sub_10000EE58(&qword_1000DF010, &qword_1000DF018, &qword_10009C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFF0);
  }

  return result;
}

unint64_t sub_10004A458()
{
  result = qword_1000DEFF8;
  if (!qword_1000DEFF8)
  {
    sub_100005818(&qword_1000DEF80, &unk_100096CF0);
    sub_10000EE58(&qword_1000DF000, &qword_1000DF008, &unk_100096D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFF8);
  }

  return result;
}

uint64_t sub_10004A518@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  return sub_100006854(v5 + v3, a1);
}

uint64_t sub_10004A5B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  sub_10004AA24(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10004A61C()
{
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject);
}

uint64_t sub_10004A698@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject);
}

uint64_t sub_10004A71C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_10004AAFC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004A828()
{
  v1 = *(v0 + 3);

  sub_1000068B8(&v0[OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext]);
  v2 = *&v0[OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject];

  v3 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for NearbySharingInteractionViewModel()
{
  result = qword_1000DF068;
  if (!qword_1000DF068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A940()
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10004AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AA8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10004A71C(v4);
}

uint64_t sub_10004AAB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject);
  *(v1 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) = *(v0 + 24);
}

unint64_t sub_10004AAFC()
{
  result = qword_1000DF1C8;
  if (!qword_1000DF1C8)
  {
    type metadata accessor for NearbySharingInteractionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1C8);
  }

  return result;
}

uint64_t sub_10004AB5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004ABA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v5 = sub_1000056EC(&qword_1000DF1D8, &qword_100096EE8);
  v40 = *(v5 - 8);
  v6 = v40;
  v7 = *(v40 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v46 = &v39 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v39 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v39 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;

  sub_1000056EC(&qword_1000DF1E0, &qword_100096EF0);
  sub_10004B264();
  v41 = v20;
  Button.init(action:label:)();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  v27 = v17;
  v39 = v17;
  Button.init(action:label:)();
  v28 = *(v6 + 16);
  v29 = v46;
  v28(v46, v20, v5);
  v30 = v47;
  v28(v47, v27, v5);
  v32 = v44;
  v31 = v45;
  v33 = v42;
  *v45 = v21;
  v31[1] = v33;
  v43 &= 1u;
  *(v31 + 16) = v43;
  v31[3] = v32;
  v34 = sub_1000056EC(&qword_1000DF1F0, &qword_100096EF8);
  v28(v31 + *(v34 + 48), v29, v5);
  v28(v31 + *(v34 + 64), v30, v5);
  v35 = v21;
  v36 = v21;
  LOBYTE(v21) = v43;
  sub_10004B348(v36, v33, v43);
  v37 = *(v40 + 8);

  v37(v39, v5);
  v37(v41, v5);
  v37(v30, v5);
  v37(v29, v5);
  sub_100022470(v35, v33, v21);
}

uint64_t sub_10004B004()
{
  sub_1000056EC(&qword_1000DF1F8, &qword_100096F00);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10004AAFC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject);

  PassthroughSubject.send(_:)();
}

__n128 sub_10004B0F0@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v14;
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_10004B1DC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_1000056EC(&qword_1000DF1D0, &qword_100096EE0);
  return sub_10004AC0C(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_10004B244()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004B004();
}

unint64_t sub_10004B264()
{
  result = qword_1000DF1E8;
  if (!qword_1000DF1E8)
  {
    sub_100005818(&qword_1000DF1E0, &qword_100096EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1E8);
  }

  return result;
}

uint64_t sub_10004B2E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004B004();
}

uint64_t sub_10004B348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10004B35C()
{
  result = qword_1000DF200;
  if (!qword_1000DF200)
  {
    sub_100005818(&qword_1000DF208, qword_100096F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF200);
  }

  return result;
}

void sub_10004B3C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10004B42C@<X0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v11 = 0;
  sub_10004B558(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_10001A510(__dst, &v8, &qword_1000DF210, &unk_100097008);
  sub_10000A628(v13, &qword_1000DF210, &unk_100097008);
  memcpy(&v10[7], __dst, 0x140uLL);
  v4 = v11;
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v4;
  memcpy((a1 + 17), v10, 0x147uLL);
  *(a1 + 344) = sub_10004C19C;
  *(a1 + 352) = v5;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return sub_100019BA0(v1, __src);
}

uint64_t sub_10004B558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  *&v87 = *(a1 + 16);
  *(&v87 + 1) = v3;
  sub_10001F080();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.title.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_100022470(v4, v6, v8 & 1);

  v14 = Text.bold()();
  v43 = v15;
  v44 = v14;
  LOBYTE(v4) = v16;
  v45 = v17;
  sub_100022470(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v39 = v4 & 1;
  LOBYTE(v87) = v4 & 1;
  LOBYTE(v83) = 0;
  v40 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100092B80;
  LOBYTE(v4) = static Edge.Set.leading.getter();
  *(v18 + 32) = v4;
  v19 = static Edge.Set.trailing.getter();
  *(v18 + 33) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  v36 = v20;
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v104 = 0;
  v37 = *(a1 + 32);
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v35 = v87;
  v87 = *(a1 + 40);

  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v30 = v83;
  State.init(wrappedValue:)();
  v31 = v87;
  State.init(wrappedValue:)();
  v32 = v87;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v74 = v44;
  *(&v74 + 1) = v43;
  LOBYTE(v75) = v39;
  *(&v75 + 1) = *v102;
  DWORD1(v75) = *&v102[3];
  *(&v75 + 1) = v45;
  *&v76 = KeyPath;
  BYTE8(v76) = 1;
  *(&v76 + 9) = *v101;
  HIDWORD(v76) = *&v101[3];
  *&v77 = v41;
  *(&v77 + 1) = 3;
  LOBYTE(v78) = 0;
  DWORD1(v78) = *&v103[3];
  *(&v78 + 1) = *v103;
  *(&v78 + 1) = v40;
  *&v79 = 0x3FE6666666666666;
  BYTE8(v79) = v20;
  *(&v79 + 9) = v105[0];
  HIDWORD(v79) = *(v105 + 3);
  *&v80 = v22;
  *(&v80 + 1) = v24;
  *&v81 = v26;
  *(&v81 + 1) = v28;
  v82 = 0;
  __src[2] = v76;
  __src[3] = v77;
  __src[0] = v74;
  __src[1] = v75;
  LOBYTE(__src[8]) = 0;
  __src[6] = v80;
  __src[7] = v81;
  __src[4] = v78;
  __src[5] = v79;
  *&v83 = v37;
  BYTE8(v83) = v35;
  *&v84 = sub_10004C378;
  *(&v84 + 1) = v29;
  v85[0] = v30;
  *&v85[8] = v87;
  v85[24] = v87;
  v33 = *(&v87 + 1);
  *v86 = *(&v87 + 1);
  *&v86[72] = v71;
  *&v86[56] = v70;
  *&v86[88] = v72;
  *&v86[104] = v73;
  *&v86[8] = v67;
  *&v86[24] = v68;
  *&v86[40] = v69;
  *(&__src[17] + 8) = *&v86[80];
  *(&__src[18] + 8) = *&v86[96];
  *(&__src[16] + 8) = *&v86[64];
  *(&__src[11] + 8) = *&v85[16];
  *(&__src[10] + 8) = *v85;
  *(&__src[9] + 8) = v84;
  *(&__src[8] + 8) = v83;
  *(&__src[15] + 8) = *&v86[48];
  *(&__src[14] + 8) = *&v86[32];
  *(&__src[13] + 8) = *&v86[16];
  *(&__src[12] + 8) = *v86;
  *(&__src[19] + 1) = *(&v73 + 1);
  memcpy(a2, __src, 0x140uLL);
  v91 = v31;
  v97 = v70;
  v98 = v71;
  v99 = v72;
  v100 = v73;
  v94 = v67;
  v95 = v68;
  *&v87 = v37;
  BYTE8(v87) = v35;
  v88 = sub_10004C378;
  v89 = v29;
  v90 = v30;
  v92 = v32;
  v93 = v33;
  v96 = v69;
  sub_10001A510(&v74, v46, &qword_1000DF218, &qword_1000970F8);
  sub_10001A510(&v83, v46, &qword_1000DF220, &qword_100097100);
  sub_10000A628(&v87, &qword_1000DF220, &qword_100097100);
  v46[0] = v44;
  v46[1] = v43;
  v47 = v39;
  *v48 = *v102;
  *&v48[3] = *&v102[3];
  v49 = v45;
  v50 = KeyPath;
  v51 = 1;
  *v52 = *v101;
  *&v52[3] = *&v101[3];
  v53 = v41;
  v54 = 3;
  v55 = 0;
  *&v56[3] = *&v103[3];
  *v56 = *v103;
  v57 = v40;
  v58 = 0x3FE6666666666666;
  v59 = v36;
  *&v60[3] = *(v105 + 3);
  *v60 = v105[0];
  v61 = v22;
  v62 = v24;
  v63 = v26;
  v64 = v28;
  v65 = 0;
  return sub_10000A628(v46, &qword_1000DF218, &qword_1000970F8);
}

void sub_10004BBE8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  aBlock[4] = sub_10004C1F4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B3C4;
  aBlock[3] = &unk_1000CA3E0;
  v5 = _Block_copy(aBlock);
  sub_100019BA0(a1, v7);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
  _Block_release(v5);
}

uint64_t sub_10004BD04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_10004B42C(a1);
}

uint64_t sub_10004BD48@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004BD9C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004BDD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10004BE00@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HandoffFeatureEducationViewModel();
  sub_10004C064();
  v2 = ObservedObject.init(wrappedValue:)();
  v32 = v3;
  v33 = v2;
  v4 = objc_opt_self();
  v5 = [v4 localizedStringForKey:17];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100084E5C(0, 3, 0);
  v8 = [v4 localizedStringForKey:18];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = _swiftEmptyArrayStorage[2];
  v12 = _swiftEmptyArrayStorage[3];
  if (v13 >= v12 >> 1)
  {
    sub_100084E5C((v12 > 1), v13 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v13 + 1;
  v14 = &_swiftEmptyArrayStorage[3 * v13];
  v14[32] = 0;
  *(v14 + 5) = v9;
  *(v14 + 6) = v11;
  v15 = [v4 localizedStringForKey:{19, v30}];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v20 = _swiftEmptyArrayStorage[2];
  v19 = _swiftEmptyArrayStorage[3];
  if (v20 >= v19 >> 1)
  {
    sub_100084E5C((v19 > 1), v20 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v20 + 1;
  v21 = &_swiftEmptyArrayStorage[3 * v20];
  v21[32] = 1;
  *(v21 + 5) = v16;
  *(v21 + 6) = v18;
  v22 = [v4 localizedStringForKey:20];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v27 = _swiftEmptyArrayStorage[2];
  v26 = _swiftEmptyArrayStorage[3];
  if (v27 >= v26 >> 1)
  {
    sub_100084E5C((v26 > 1), v27 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v27 + 1;
  v28 = &_swiftEmptyArrayStorage[3 * v27];
  v28[32] = 2;
  *(v28 + 5) = v23;
  *(v28 + 6) = v25;
  result = State.init(wrappedValue:)();
  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31;
  *(a1 + 24) = v7;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = v34;
  return result;
}

unint64_t sub_10004C064()
{
  result = qword_1000DA908;
  if (!qword_1000DA908)
  {
    type metadata accessor for HandoffFeatureEducationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA908);
  }

  return result;
}

__n128 sub_10004C0BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004C0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10004C120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004C1A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004C1F4()
{
  v2 = *(v0 + 56);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

uint64_t sub_10004C24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004C264@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004C2B8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004C2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10004C31C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10004C380()
{
  result = qword_1000DF228;
  if (!qword_1000DF228)
  {
    sub_100005818(&qword_1000DF230, &qword_100097108);
    sub_10004C40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF228);
  }

  return result;
}

unint64_t sub_10004C40C()
{
  result = qword_1000DF238;
  if (!qword_1000DF238)
  {
    sub_100005818(&qword_1000DF240, &qword_100097110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF238);
  }

  return result;
}

Swift::UInt64 sub_10004C474()
{
  if (*(v0 + 32) & 1) != 0 || (*(v0 + 48))
  {
    if (*(v0 + 16))
    {
      return 0x646570706F7473;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    result = v3 - v2;
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v4 = UpTicksToSecondsF(_:)(result);
      return sub_1000810D8(v4);
    }
  }

  return result;
}

uint64_t sub_10004C530()
{
  if (*v0)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

unint64_t sub_10004C568()
{
  result = qword_1000DF360;
  if (!qword_1000DF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF360);
  }

  return result;
}

uint64_t sub_10004C5E0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  UUID.init()();
  v8 = qword_1000DBFC0;
  v9 = sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v3 + v8) = PassthroughSubject.init()();
  *(v3 + qword_1000DBFD0) = 0;
  v12 = qword_1000DBFD8;
  v13 = sub_1000056EC(&qword_1000DF5E0, &unk_100097330);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v3 + v12) = PassthroughSubject.init()();
  *(v3 + qword_1000DBFE0) = 0;
  *(v3 + qword_1000DBFC8) = a1;
  v16 = (v3 + qword_1000F3C50);
  *v16 = a2;
  v16[1] = a3;
  v17 = qword_1000D9770;
  v18 = a1;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000047A0(v19, qword_1000DBFA8);
  v20 = v18;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = v20;
    v25 = String.init<A>(describing:)();
    v27 = sub_1000343F8(v25, v26, &v30);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = sub_1000343F8(a2, a3, &v30);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Init: role=%s, machService=%s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v4;
}

uint64_t sub_10004C888()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF368);
  sub_1000047A0(v0, qword_1000DF368);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004C908()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10004C988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000056EC(&qword_1000DF5D0, &qword_100097320);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_10004C5E0(0, 0xD000000000000031, 0x80000001000A54D0);
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000047A0(v9, qword_1000DF368);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Init", v12, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10004CACC()
{
  v1 = v0;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  return v1;
}

uint64_t sub_10004CBCC()
{
  sub_10004CACC();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_10004CC24()
{
  v1 = v0;
  v14 = sub_1000056EC(&qword_1000DF5E8, &qword_100097650);
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v14, v4);
  v6 = &v15[-1] - v5;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DF368);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000529C(v11);
  }

  v15[0] = *(*(v1 + 16) + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1000056EC(&qword_1000DF5F0, &unk_100097340);
  sub_10000EE58(&qword_1000DF5F8, &qword_1000DF5F0, &unk_100097340);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v12 = *(v1 + 32);
  v15[0] = sub_10004FFF8();
  sub_1000056EC(&qword_1000DF600, &unk_100097660);
  sub_10000EE58(&qword_1000DF608, &qword_1000DF600, &unk_100097660);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF610, &qword_1000DF5E8, &qword_100097650);
  v13 = v14;
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v6, v13);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v15[0] = *(v12 + qword_1000DBFC0);
  sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  sub_10000EE58(&qword_1000DF618, &qword_1000DF5D8, &qword_100097328);
  v15[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_1000056EC(&qword_1000DF620, &unk_100097350);
  sub_10000EE58(&qword_1000DF628, &qword_1000DF620, &unk_100097350);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000500D4();
}

uint64_t sub_10004D16C(__int128 *a1)
{
  v2 = type metadata accessor for ViewServiceOutput(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1[1];
  v14 = *a1;
  v15 = v7;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 32);

    v10 = *(sub_1000056EC(&qword_1000DC500, &unk_100097360) + 48);
    *(v6 + 41) = *(v16 + 9);
    v11 = v15;
    *v6 = v14;
    v6[1] = v11;
    v6[2] = v16[0];
    sub_10004DDBC(&v14, v13);
    static Date.now.getter();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v6);

    return sub_10004DD5C(v6, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_10004D2CC(char *a1)
{
  v2 = type metadata accessor for ViewServiceOutput(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 32);

    v10 = *(sub_1000056EC(&qword_1000DC520, &unk_1000948F0) + 48);
    *v6 = v7;
    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v6);

    return sub_10004DD5C(v6, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_10004D3F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004D5A4(a1);
  }

  return result;
}

uint64_t sub_10004D454()
{
  v1 = v0;
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = *(v1 + 32);
  return sub_1000507C0();
}

void sub_10004D5A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v71 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v66[-v11];
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v66[-v15];
  __chkstk_darwin(v14, v17);
  v19 = &v66[-v18];
  v20 = type metadata accessor for ViewServiceInput(0);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v66[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v23, v26);
  v74 = &v66[-v28];
  v30 = __chkstk_darwin(v27, v29);
  v73 = &v66[-v31];
  __chkstk_darwin(v30, v32);
  v34 = &v66[-v33];
  if (qword_1000D9780 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000047A0(v35, qword_1000DF368);
  sub_10004DCA4(a1, v34, type metadata accessor for ViewServiceInput);
  v72 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v70 = v12;
    v40 = v39;
    v68 = swift_slowAlloc();
    v75[0] = v68;
    *v40 = 136315394;
    *(v40 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5510, v75);
    *(v40 + 12) = 2080;
    v67 = v38;
    sub_10004DCA4(v34, v73, type metadata accessor for ViewServiceInput);
    v41 = v19;
    v42 = v25;
    v43 = String.init<A>(describing:)();
    v69 = v2;
    v45 = v44;
    sub_10004DD5C(v34, type metadata accessor for ViewServiceInput);
    v46 = v43;
    v25 = v42;
    v19 = v41;
    v47 = sub_1000343F8(v46, v45, v75);
    v2 = v69;

    *(v40 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v37, v67, "%s: input=%s", v40, 0x16u);
    swift_arrayDestroy();

    v12 = v70;
  }

  else
  {

    sub_10004DD5C(v34, type metadata accessor for ViewServiceInput);
  }

  v48 = v74;
  sub_10004DCA4(a1, v74, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v50 = *v48;
        v51 = v48[1];
        v52 = *(*(v2 + 24) + 24);
        v75[0] = v50;
        v75[1] = v51;

        PassthroughSubject.send(_:)();

        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_10004DD5C(v48, type metadata accessor for ViewServiceInput);
LABEL_14:
    sub_10004DCA4(a1, v25, type metadata accessor for ViewServiceInput);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v75[0] = v56;
      *v55 = 136315138;
      sub_10004DCA4(v25, v73, type metadata accessor for ViewServiceInput);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      sub_10004DD5C(v25, type metadata accessor for ViewServiceInput);
      v60 = sub_1000343F8(v57, v59, v75);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "### Unexpected input: %s", v55, 0xCu);
      sub_10000529C(v56);

      return;
    }

    v61 = type metadata accessor for ViewServiceInput;
    v62 = v25;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 6)
  {
    return;
  }

  sub_10004DC40(v48, v19);
  v63 = *(v2 + 24);
  sub_10004DCA4(v19, v16, type metadata accessor for NearbySharingInteractionDisplayContext);
  swift_beginAccess();
  v64 = *(v63 + 16);
  sub_10004DCA4(v16, v12, type metadata accessor for NearbySharingInteractionDisplayContext);
  v65 = v71;
  sub_10004DCA4(v12, v71, type metadata accessor for NearbySharingInteractionDisplayContext);

  sub_100052D60(v65);

  sub_10004DD5C(v12, type metadata accessor for NearbySharingInteractionDisplayContext);
  sub_10004DD5C(v16, type metadata accessor for NearbySharingInteractionDisplayContext);
  v62 = v19;
  v61 = type metadata accessor for NearbySharingInteractionDisplayContext;
LABEL_19:
  sub_10004DD5C(v62, v61);
}

uint64_t sub_10004DC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DD0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004DE18()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_10004DEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext;
  swift_beginAccess();
  return sub_100006854(v3 + v4, a2);
}

uint64_t sub_10004DF7C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100006854(a1, v8);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000068B8(v8);
}

uint64_t sub_10004E0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF690);
  sub_1000047A0(v0, qword_1000DF690);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004E124()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10004E1B4()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DF938, qword_1000974C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v13 = *(v0 + 32);
  }

  else
  {
    v14 = *(*(v0 + 16) + 32);
    v15 = *(v14 + 24);

    CurrentValueSubject.value.getter();
    v16 = *(v8 + 48);
    if (v16(v6, 1, v7) == 1)
    {
      v17 = *(v14 + 16);
      CurrentValueSubject.value.getter();

      if (v16(v6, 1, v7) != 1)
      {
        sub_10000A628(v6, &qword_1000DF938, qword_1000974C0);
      }
    }

    else
    {

      sub_10004DC40(v6, v12);
    }

    v18 = *(*(v1 + 24) + 16);
    v19 = type metadata accessor for NearbySharingInteractionViewModel();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v13 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v13 + 16) = 0x706F6F625FLL;
    *(v13 + 24) = 0xE500000000000000;
    sub_10004DC40(v12, v13 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__displayContext);
    *(v13 + OBJC_IVAR____TtC13PCViewService33NearbySharingInteractionViewModel__nearbySharingInteractionViewEventSubject) = v18;
    v22 = *(v1 + 32);
    *(v1 + 32) = v13;
  }

  return v13;
}

uint64_t sub_10004E3F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DF690);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10004E4F8()
{
  v1 = v0;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  return v1;
}

uint64_t sub_10004E5F8()
{
  sub_10004E4F8();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_10004E650()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DA9E0, &qword_100091D88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v30 - v5;
  v7 = sub_1000056EC(&qword_1000DF910, &qword_100097480);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  __chkstk_darwin(v7, v9);
  v31 = v30 - v10;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000047A0(v11, qword_1000DF690);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v35 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v35);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000529C(v15);
  }

  v16 = *(v1 + 16);
  [*(v16 + 24) setDesiredHardwareButtonEvents:16];
  v17 = *(v1 + 24);
  v18 = *(v17 + 16);
  memset(v35, 0, sizeof(v35));
  v36 = 2;

  PassthroughSubject.send(_:)();

  v34 = sub_10004E1B4();
  type metadata accessor for NearbySharingInteractionViewModel();
  State.init(wrappedValue:)();
  v19 = *v35;
  v20 = objc_allocWithZone(sub_1000056EC(&qword_1000DF918, &qword_100097488));
  *v35 = v19;
  v30[1] = v19;
  v21 = &v20[*((swift_isaMask & *v20) + qword_1000F3C60 + 16)];
  *v21 = 0;
  *(v21 + 1) = 0;

  v22 = UIHostingController.init(rootView:)();
  v30[0] = v22;
  v23 = *(v16 + 16);
  sub_10000E2D4(v22, 0);

  v24 = *(v17 + 16);
  *v35 = 1;
  memset(&v35[8], 0, 48);
  v36 = 2;

  PassthroughSubject.send(_:)();

  *v35 = *(v16 + 32);
  sub_10000FE40();

  v25 = static OS_dispatch_queue.main.getter();
  v34 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = v6;
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_1000056EC(&qword_1000DF920, &qword_100097490);
  sub_10000EE58(&qword_1000DF928, &qword_1000DF920, &qword_100097490);
  sub_10004EF60(&qword_1000DAA48, sub_10000FE40);
  v28 = v31;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v27, &qword_1000DA9E0, &qword_100091D88);

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF930, &qword_1000DF910, &qword_100097480);
  v29 = v33;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v28, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004EBFC(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_10004E1B4();

    sub_100006854(a1, v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    v11[-2] = v8;
    v11[-1] = v6;
    v11[2] = v8;
    sub_10004EF60(&qword_1000DF1C8, type metadata accessor for NearbySharingInteractionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return sub_1000068B8(v6);
  }

  return result;
}

uint64_t sub_10004ED8C()
{
  v1 = v0;
  if (qword_1000D9788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  swift_beginAccess();
  v7 = *(v1 + 40);
  *(v1 + 40) = &_swiftEmptySetSingleton;
}

uint64_t sub_10004EEFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004EF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F010(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10004F728(a1);
  (*(*(*(v2 + qword_1000F3C60) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10004F090()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF940);
  sub_1000047A0(v0, qword_1000DF940);
  return Logger.init(subsystem:category:)();
}

id sub_10004F120()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_1000D9790 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DF940);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A5670, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000529C(v7);
  }

  v8 = *(v2 + qword_1000F3C60);
  v9 = *(v2 + qword_1000F3C60 + 8);
  v10 = type metadata accessor for LockscreenViewableUIHostingController();
  v17.receiver = v1;
  v17.super_class = v10;
  result = objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v12 = (v1 + *((swift_isaMask & *v1) + qword_1000F3C60 + 16));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = sub_10000B16C(*v12);
    v13(v15);
    return sub_10000B17C(v13);
  }

  return result;
}

void sub_10004F338(void *a1)
{
  v1 = a1;
  sub_10004F120();
}

void *sub_10004F3C4(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1000F3C60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a2);
  v8 = &v15 - v7;
  v10 = (v2 + *(v9 + 16));
  *v10 = 0;
  v10[1] = 0;
  (*(v5 + 16))(v8);
  v11 = UIHostingController.init(coder:rootView:)();
  v12 = *(v5 + 8);
  v13 = v11;
  v12(a2, v4);
  if (v11)
  {
  }

  return v11;
}

id sub_10004F50C(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = (v1 + *(v3 + qword_1000F3C60 + 16));
  *v4 = 0;
  v4[1] = 0;
  v5 = *(v3 + qword_1000F3C60);
  v6 = *(v3 + qword_1000F3C60 + 8);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LockscreenViewableUIHostingController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_10004F5F4()
{
  v1 = (v0 + *((swift_isaMask & *v0) + qword_1000F3C60 + 16));
  v2 = v1[1];
  return sub_10000B17C(*v1);
}

id sub_10004F644()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_1000F3C60);
  v3 = *(v1 + qword_1000F3C60 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockscreenViewableUIHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10004F6C0(void *a1)
{
  v1 = (a1 + *((swift_isaMask & *a1) + qword_1000F3C60 + 16));
  v2 = v1[1];
  return sub_10000B17C(*v1);
}

uint64_t sub_10004F728(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_1000F3C60) - 8) + 64);
  __chkstk_darwin(a1, a1);
  v4 = &v9 - v3;
  v6 = (v1 + *(v5 + 16));
  *v6 = 0;
  v6[1] = 0;
  (*(v7 + 16))(v4);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10004F820(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ViewServiceOutput(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v12 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v31 - v14;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000047A0(v16, qword_1000DBFA8);
  sub_1000522F4(a1, v15, type metadata accessor for ViewServiceOutput);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v6;
    v35 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_1000343F8(0x293A5F28646E6573, 0xE800000000000000, &v35);
    *(v20 + 12) = 2080;
    v33 = a1;
    sub_1000522F4(v15, v12, type metadata accessor for ViewServiceOutput);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100052294(v15, type metadata accessor for ViewServiceOutput);
    v25 = sub_1000343F8(v22, v24, &v35);

    *(v20 + 14) = v25;
    a1 = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: input=%s", v20, 0x16u);
    swift_arrayDestroy();
    v6 = v34;

    v8 = v32;
  }

  else
  {

    sub_100052294(v15, type metadata accessor for ViewServiceOutput);
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  sub_1000522F4(a1, v12, type metadata accessor for ViewServiceOutput);
  v28 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v27;
  sub_100052638(v12, v29 + v28, type metadata accessor for ViewServiceOutput);
  sub_10004FC2C(0, 0, v6, &unk_100097690, v29);
}

uint64_t sub_10004FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v25 - v11;
  sub_100052798(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100052808(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_100052808(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100052808(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10004FE98()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1000DBFD0;
  if (*(v0 + qword_1000DBFD0))
  {
    v8 = *(v0 + qword_1000DBFD0);
  }

  else
  {
    v9 = *(v0 + qword_1000DBFC8);
    (*(v4 + 16))(v6, v0 + qword_1000F3C48);
    v10 = type metadata accessor for XPCConnectionManager();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();

    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = 0x4008000000000000;
    }

    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = 10;
    }

    if (v9)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v8 = sub_100051F9C(v6, v14, v15, v16, v0, v13);
    v17 = *(v0 + v7);
    *(v0 + v7) = v8;
  }

  return v8;
}

uint64_t sub_10004FFF8()
{
  v1 = qword_1000DBFE0;
  if (*(v0 + qword_1000DBFE0))
  {
    v2 = *(v0 + qword_1000DBFE0);
  }

  else
  {
    v6 = *(v0 + qword_1000DBFD8);
    sub_1000056EC(&qword_1000DF5E0, &unk_100097330);
    sub_10000EE58(&qword_1000DFCF8, &qword_1000DF5E0, &unk_100097330);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1000500D4()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x2928656D75736572, 0xE800000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_100050224();
}

void sub_100050224()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x5374736575716572, 0xEE00292874726174, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  sub_1000503B0();
  if (!*(v1 + qword_1000DBFC8))
  {

    sub_1000504F8();
  }
}

uint64_t sub_1000503B0()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "start()", v5, 2u);
  }

  sub_10004FE98();
  v6 = sub_100030D8C();

  if (v6 == 1 && !*(v1 + qword_1000DBFC8))
  {
    sub_1000504F8();
    v8 = *(v1 + qword_1000DBFD8);

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1000504F8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DBFA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000343F8(0x2928676E6970, 0xE600000000000000, &v20);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000529C(v10);
  }

  static String.Encoding.ascii.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  (*(v1 + 8))(v5, v0);
  if (v13 >> 60 == 15)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### Failed to ping", v16, 2u);
    }
  }

  else
  {
    v17 = sub_10004FE98();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v17 handleWithSerializedObject:isa];

    sub_100052280(v11, v13);
  }
}

uint64_t sub_1000507C0()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10004FE98();
  sub_100031864();
}

uint64_t sub_10005092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10005094C, 0, 0);
}

uint64_t sub_10005094C()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = type metadata accessor for JSONEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for ViewServiceOutput(0);
    sub_100052870();
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v8 = v7;

    sub_1000503B0();
    v9 = sub_10004FE98();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 handleWithSerializedObject:isa];

    sub_100008A9C(v6, v8);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100050AA8()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DF9D8);
  sub_1000047A0(v0, qword_1000DF9D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100050B4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100050BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000056EC(&qword_1000DF5D0, &qword_100097320);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_10004C5E0(0, 0xD000000000000031, 0x80000001000A54D0);
  *(v2 + 40) = &_swiftEmptySetSingleton;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000047A0(v9, qword_1000DF9D8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Init", v12, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_100050D14()
{
  v1 = v0;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF9D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  return v1;
}

uint64_t sub_100050E14()
{
  sub_100050D14();

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_100050E6C()
{
  v1 = v0;
  v16 = sub_1000056EC(&qword_1000DF5E8, &qword_100097650);
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16, v4);
  v6 = &v17[-1] - v5;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DF9D8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000529C(v11);
  }

  v17[0] = *(*(v1 + 16) + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000521E0;
  *(v13 + 24) = v12;

  sub_1000056EC(&qword_1000DFCE0, &qword_100097658);
  sub_10000EE58(&qword_1000DFCE8, &qword_1000DFCE0, &qword_100097658);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v14 = *(v1 + 32);
  v17[0] = sub_10004FFF8();
  sub_1000056EC(&qword_1000DF600, &unk_100097660);
  sub_10000EE58(&qword_1000DF608, &qword_1000DF600, &unk_100097660);
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DF610, &qword_1000DF5E8, &qword_100097650);
  v15 = v16;
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v6, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v17[0] = *(v14 + qword_1000DBFC0);
  sub_1000056EC(&qword_1000DF5D8, &qword_100097328);
  sub_10000EE58(&qword_1000DF618, &qword_1000DF5D8, &qword_100097328);
  v17[0] = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_1000056EC(&qword_1000DF620, &unk_100097350);
  sub_10000EE58(&qword_1000DF628, &qword_1000DF620, &unk_100097350);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000500D4();
}

uint64_t sub_1000513E0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewServiceOutput(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 32);

    v13 = *(sub_1000056EC(&qword_1000DC548, &unk_100097680) + 64);
    v14 = a1[1];
    *v10 = *a1;
    *(v10 + 1) = v14;
    *(v10 + 2) = a1[2];
    *(v10 + 41) = *(a1 + 41);
    *(v10 + 8) = a2;
    *(v10 + 9) = a3;
    sub_1000528C8(a1, v16);

    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v10);

    return sub_100052294(v10, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_100051540(char *a1)
{
  v2 = type metadata accessor for ViewServiceOutput(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 32);

    v10 = *(sub_1000056EC(&qword_1000DC520, &unk_1000948F0) + 48);
    *v6 = v7;
    Date.init()();
    swift_storeEnumTagMultiPayload();
    sub_10004F820(v6);

    return sub_100052294(v6, type metadata accessor for ViewServiceOutput);
  }

  return result;
}

uint64_t sub_100051668(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100051818(a1);
  }

  return result;
}

uint64_t sub_1000516C8()
{
  v1 = v0;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DF9D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = *(v1 + 32);
  return sub_1000507C0();
}

void sub_100051818(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityDisplayContext(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v85 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7, v9);
  v83 = v80 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v84 = v80 - v14;
  __chkstk_darwin(v13, v15);
  v17 = v80 - v16;
  v18 = type metadata accessor for ViewServiceInput(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18, v20);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v27 = (v80 - v26);
  v29 = __chkstk_darwin(v25, v28);
  v86 = v80 - v30;
  __chkstk_darwin(v29, v31);
  v33 = v80 - v32;
  if (qword_1000D9798 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_1000047A0(v34, qword_1000DF9D8);
  v87 = a1;
  sub_1000522F4(a1, v33, type metadata accessor for ViewServiceInput);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v82 = v2;
    v39 = v38;
    v80[0] = swift_slowAlloc();
    v88[0] = v80[0];
    *v39 = 136315394;
    *(v39 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5510, v88);
    *(v39 + 12) = 2080;
    v80[1] = v35;
    sub_1000522F4(v33, v86, type metadata accessor for ViewServiceInput);
    v40 = String.init<A>(describing:)();
    v81 = v27;
    v41 = v40;
    v43 = v42;
    sub_100052294(v33, type metadata accessor for ViewServiceInput);
    v44 = sub_1000343F8(v41, v43, v88);

    *(v39 + 14) = v44;
    v27 = v81;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s: input=%s", v39, 0x16u);
    swift_arrayDestroy();

    v2 = v82;
  }

  else
  {

    sub_100052294(v33, type metadata accessor for ViewServiceInput);
  }

  v45 = v87;
  sub_1000522F4(v87, v27, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return;
      }

      sub_1000522F4(v45, v23, type metadata accessor for ViewServiceInput);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v88[0] = v63;
        *v62 = 136315138;
        sub_1000522F4(v23, v86, type metadata accessor for ViewServiceInput);
        v64 = String.init<A>(describing:)();
        v65 = v23;
        v66 = v64;
        v68 = v67;
        sub_100052294(v65, type metadata accessor for ViewServiceInput);
        v69 = sub_1000343F8(v66, v68, v88);

        *(v62 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v60, v61, "### Unexpected input: %s", v62, 0xCu);
        sub_10000529C(v63);
      }

      else
      {

        sub_100052294(v23, type metadata accessor for ViewServiceInput);
      }

      v53 = type metadata accessor for ViewServiceInput;
      v52 = v27;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v54 = *v27;
      v55 = *(v2 + 24);
      swift_beginAccess();
      v56 = *(v55 + 40);
      v57 = v54;

      sub_100053B58(v54);
    }

    else
    {
      v73 = *v27;
      v74 = *(v2 + 24);
      swift_beginAccess();
      v75 = *(v74 + 48);

      sub_100053FC4(v73);
    }

LABEL_20:

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v77 = *v27;
      v76 = v27[1];
      v78 = *(v2 + 24);
      swift_beginAccess();
      v79 = *(v78 + 32);

      sub_100019FE8(v77);
      sub_1000536D8(v77, v76);

      sub_100019FD8(v77);
      return;
    }

    v58 = v27[1];
    v59 = *(*(v2 + 24) + 56);
    v88[0] = *v27;
    v88[1] = v58;

    PassthroughSubject.send(_:)();

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v70 = *(v2 + 24);
    v71 = *v27;
    swift_beginAccess();
    v72 = *(v70 + 24);

    sub_1000532BC(v71);
    goto LABEL_20;
  }

  sub_100052638(v27, v17, type metadata accessor for ActivityDisplayContext);
  v47 = *(v2 + 24);
  v48 = v84;
  sub_1000522F4(v17, v84, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  v49 = *(v47 + 16);
  v50 = v83;
  sub_1000522F4(v48, v83, type metadata accessor for ActivityDisplayContext);
  v51 = v85;
  sub_1000522F4(v50, v85, type metadata accessor for ActivityDisplayContext);

  sub_100052DA0(v51);

  sub_100052294(v50, type metadata accessor for ActivityDisplayContext);
  sub_100052294(v48, type metadata accessor for ActivityDisplayContext);
  v52 = v17;
  v53 = type metadata accessor for ActivityDisplayContext;
LABEL_24:
  sub_100052294(v52, v53);
}

uint64_t sub_100051F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx) = 0;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask) = 0;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries) = 0;
  v11 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6 + v11, a1, v12);
  v14 = a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy;
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  *(a6 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate + 8) = &off_1000C8FB0;
  swift_unknownObjectWeakAssign();
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000047A0(v15, qword_1000DBDE8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  else
  {
  }

  (*(v13 + 8))(a1, v12);
  return a6;
}

uint64_t sub_1000521A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000521E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052220(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = *(a1 + 32);
  *(v7 + 9) = *(a1 + 41);
  return v2(v6, *(a1 + 64), *(a1 + 72));
}

uint64_t sub_100052280(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008A9C(a1, a2);
  }

  return a1;
}

uint64_t sub_100052294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000522F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005235C()
{
  v1 = *(type metadata accessor for ViewServiceOutput(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1000525D8(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56));
    v11 = &qword_1000DC500;
    v12 = &unk_100097360;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = &qword_1000DC520;
    v12 = &unk_1000948F0;
LABEL_7:
    v10 = *(sub_1000056EC(v11, v12) + 48);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_1000524EC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56));
  v9 = *(v7 + 72);

  v10 = *(sub_1000056EC(&qword_1000DC548, &unk_100097680) + 64);
LABEL_8:
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v7 + v10, v13);
LABEL_9:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000524EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 == 2)
  {
    v10 = a8 & 0x1F;

    return sub_100052578(result, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    if (v9 == 1)
    {
    }

    else
    {
      if (a8 >> 5)
      {
        return result;
      }
    }
  }
}

uint64_t sub_100052578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 1)
  {
    if (a8)
    {
      return result;
    }
  }
}

uint64_t sub_1000525D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_100052638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000526A0(uint64_t a1)
{
  v4 = *(type metadata accessor for ViewServiceOutput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D80;

  return sub_10005092C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100052798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052808(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100052870()
{
  result = qword_1000DFCF0;
  if (!qword_1000DFCF0)
  {
    type metadata accessor for ViewServiceOutput(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFCF0);
  }

  return result;
}

void sub_100052940(char a1)
{
  v2 = v1;
  v33 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = a1 & 1;
    v7 = *v5;
    LOBYTE(v31[0]) = a1 & 1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v9 = *v2;
    if (v8)
    {
      v10 = *(v2 + *(v9 + 112));
      if (v10)
      {
        v11 = v10;
        v12 = String._bridgeToObjectiveC()();

        [v11 removeObjectForKey:v12];

        return;
      }

LABEL_11:

      return;
    }

    v13 = *(v2 + *(v9 + 120));
    if (v13 == 2 || (v13 & 1) == 0)
    {
      v14 = *(v2 + *(v9 + 112));
      if (v14)
      {
        LOBYTE(v31[0]) = v6;
        v15 = v14;
        v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v17 = String._bridgeToObjectiveC()();

        [v15 setValue:v16 forKey:v17];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v30 = v6;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v29, v31);
      sub_100006768(v31, v32);
      v22 = sub_10008C2F8();
      v24 = v23;
      v25 = *(v2 + *(*v2 + 112));
      if (v25)
      {
        v26 = v25;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v28 = String._bridgeToObjectiveC()();

        [v26 setValue:isa forKey:v28];
        sub_100008A9C(v22, v24);
      }

      else
      {

        sub_100008A9C(v22, v24);
      }

      sub_10000529C(v31);
    }

    else
    {

      memset(v29, 0, sizeof(v29));
      sub_10000A628(v29, &qword_1000DFF90, &unk_100097888);
      v18 = v2 + *(*v2 + 144);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
      }
    }
  }
}

uint64_t sub_100052DE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = v4;
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v44 - v16;
  v18 = v4[2];
  CurrentValueSubject.send(_:)();
  v19 = (v7 + *(*v7 + 128));
  if (!v19[1])
  {
    v26 = a1;
    v27 = a4;
    return sub_10005D310(v26, v27);
  }

  v44[0] = a4;
  v20 = *v19;
  sub_10005D370(a1, v17, a3);

  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  v22 = *v7;
  if (v21)
  {
    v23 = *(v7 + *(v22 + 112));
    if (v23)
    {
      v24 = v23;
      v25 = String._bridgeToObjectiveC()();

      [v24 removeObjectForKey:v25];

LABEL_5:
LABEL_14:
      v26 = a1;
      v27 = v44[0];
      return sub_10005D310(v26, v27);
    }

LABEL_13:

    goto LABEL_14;
  }

  v28 = *(v7 + *(v22 + 120));
  if (v28 == 2 || (v28 & 1) == 0)
  {
    v29 = *(v7 + *(v22 + 112));
    if (v29)
    {
      sub_10005D370(a1, v17, a3);
      v30 = v29;
      v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v32 = String._bridgeToObjectiveC()();

      [v30 setValue:v31 forKey:v32];

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_10005D370(a1, v14, a3);
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (!swift_dynamicCast())
  {

    memset(v45, 0, sizeof(v45));
    sub_10000A628(v45, &qword_1000DFF90, &unk_100097888);
    v34 = v7 + *(*v7 + 144);
    v25 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v25, v35, "### Failed to cast as Codable", v36, 2u);
    }

    goto LABEL_5;
  }

  sub_10005D18C(v45, v46);
  sub_100006768(v46, v47);
  v37 = sub_10008C2F8();
  v39 = v38;
  v40 = *(v7 + *(*v7 + 112));
  if (v40)
  {
    v41 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v43 = String._bridgeToObjectiveC()();

    [v41 setValue:isa forKey:v43];
    sub_100008A9C(v37, v39);
  }

  else
  {

    sub_100008A9C(v37, v39);
  }

  sub_10005D310(a1, v44[0]);
  return sub_10000529C(v46);
}

void sub_1000532BC(char a1)
{
  v2 = v1;
  v32 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = *v5;
    LOBYTE(v30[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v13 = *(v2 + *(v8 + 112));
      if (v13)
      {
        LOBYTE(v30[0]) = a1;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v29 = a1;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v28, v30);
      sub_100006768(v30, v31);
      v21 = sub_10008C2F8();
      v23 = v22;
      v24 = *(v2 + *(*v2 + 112));
      if (v24)
      {
        v25 = v24;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v27 = String._bridgeToObjectiveC()();

        [v25 setValue:isa forKey:v27];
        sub_100008A9C(v21, v23);
      }

      else
      {

        sub_100008A9C(v21, v23);
      }

      sub_10000529C(v30);
    }

    else
    {

      memset(v28, 0, sizeof(v28));
      sub_10000A628(v28, &qword_1000DFF90, &unk_100097888);
      v17 = v2 + *(*v2 + 144);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
      }
    }
  }
}

void sub_1000536D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v6 = *(v2 + 16);
  CurrentValueSubject.send(_:)();
  v7 = (v3 + *(*v3 + 128));
  if (!v7[1])
  {
LABEL_13:
    sub_100019FD8(a1);
    return;
  }

  v8 = *v7;
  *&v32 = a1;
  *(&v32 + 1) = a2;

  sub_100019FE8(a1);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_100019FD8(a1);
    v10 = *(v3 + *(*v3 + 112));
    if (v10)
    {
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();

      [v11 removeObjectForKey:v12];
    }

    else
    {
    }

    return;
  }

  v13 = *(v3 + *(*v3 + 120));
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v14 = *(v3 + *(*v3 + 112));
    if (v14)
    {
      *&v32 = a1;
      *(&v32 + 1) = a2;
      v15 = v14;
      v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v17 = String._bridgeToObjectiveC()();

      [v15 setValue:v16 forKey:v17];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v30 = a1;
  v31 = a2;
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (swift_dynamicCast())
  {
    sub_10005D18C(v29, &v32);
    sub_100006768(&v32, v33);
    v22 = sub_10008C2F8();
    v24 = v23;
    v25 = *(v3 + *(*v3 + 112));
    if (v25)
    {
      v26 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();

      [v26 setValue:isa forKey:v28];
      sub_100008A9C(v22, v24);
    }

    else
    {

      sub_100008A9C(v22, v24);
    }

    sub_10000529C(&v32);
  }

  else
  {

    memset(v29, 0, sizeof(v29));
    sub_10000A628(v29, &qword_1000DFF90, &unk_100097888);
    v18 = v3 + *(*v3 + 144);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
    }
  }
}

void sub_100053B58(void *a1)
{
  v2 = v1;
  v3 = a1;
  v30 = a1;
  v4 = *(v1 + 16);
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (!v5[1])
  {
    goto LABEL_5;
  }

  v6 = *v5;
  *&v28 = v3;
  v7 = v3;

  sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v8 = *(v2 + *(*v2 + 112));
    if (v8)
    {
      v9 = v8;
      v3 = String._bridgeToObjectiveC()();

      [v9 removeObjectForKey:v3];

LABEL_5:
      return;
    }

LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
  v10 = *(v2 + *(*v2 + 120));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v11 = *(v2 + *(*v2 + 112));
    if (v11)
    {
      *&v28 = v3;
      v12 = v11;
      v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v14 = String._bridgeToObjectiveC()();

      [v12 setValue:v13 forKey:v14];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v27 = v3;
  sub_1000056EC(&qword_1000DFF88, &qword_100097880);
  if (swift_dynamicCast())
  {
    sub_10005D18C(v26, &v28);
    sub_100006768(&v28, v29);
    v19 = sub_10008C2F8();
    v21 = v20;
    v22 = *(v2 + *(*v2 + 112));
    if (v22)
    {
      v23 = v22;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v25 = String._bridgeToObjectiveC()();

      [v23 setValue:isa forKey:v25];
      sub_100008A9C(v19, v21);
    }

    else
    {

      sub_100008A9C(v19, v21);
    }

    sub_10000529C(&v28);
  }

  else
  {

    memset(v26, 0, sizeof(v26));
    sub_10000A628(v26, &qword_1000DFF90, &unk_100097888);
    v15 = v2 + *(*v2 + 144);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
    }
  }
}

void sub_100053FC4(float a1)
{
  v2 = v1;
  v32 = a1;
  v4 = v1[2];
  CurrentValueSubject.send(_:)();
  v5 = (v2 + *(*v2 + 128));
  if (v5[1])
  {
    v6 = *v5;
    *v30 = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v13 = *(v2 + *(v8 + 112));
      if (v13)
      {
        *v30 = a1;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v29 = a1;
    sub_1000056EC(&qword_1000DFF88, &qword_100097880);
    if (swift_dynamicCast())
    {
      sub_10005D18C(v28, v30);
      sub_100006768(v30, v31);
      v21 = sub_10008C2F8();
      v23 = v22;
      v24 = *(v2 + *(*v2 + 112));
      if (v24)
      {
        v25 = v24;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v27 = String._bridgeToObjectiveC()();

        [v25 setValue:isa forKey:v27];
        sub_100008A9C(v21, v23);
      }

      else
      {

        sub_100008A9C(v21, v23);
      }

      sub_10000529C(v30);
    }

    else
    {

      memset(v28, 0, sizeof(v28));
      sub_10000A628(v28, &qword_1000DFF90, &unk_100097888);
      v17 = v2 + *(*v2 + 144);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
      }
    }
  }
}

char *sub_1000543E8(int a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v111[0] = a4;
  v108 = a2;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v110 = &v94 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v103 = &v94 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v104 = &v94 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v94 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v94 - v29;

  v31 = *(*v5 + 104);
  v32 = sub_1000056EC(&qword_1000DFFF0, &unk_1000978F0);
  (*(*(v32 - 8) + 56))(&v5[v31], 1, 1, v32);
  v33 = *(*v5 + 112);
  *&v5[v33] = 0;
  v107 = *(*v5 + 120);
  v5[v107] = 2;
  v34 = &v5[*(*v5 + 128)];
  *v34 = 0;
  *(v34 + 1) = 0;
  v109 = v34;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v115 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v35 = *(*v5 + 144);
  (*(v10 + 32))(&v5[v35], v30, v9);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v36 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_43;
  }

  v37 = *(v10 + 16);
  v99 = v10 + 16;
  v100 = v37;
  v37(v27, &v5[v35], v9);
  v96 = v36;
  v97 = v36;

  v38 = Logger.logObject.getter();
  v39 = v10;
  v40 = static os_log_type_t.default.getter();

  v95 = v40;
  v41 = os_log_type_enabled(v38, v40);
  v102 = v39;
  v98 = a1;
  v101 = v35;
  v106 = v9;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v113 = v43;
    *v42 = 136315138;
    v44 = v108;
    *&v115 = v108;
    *(&v115 + 1) = a3;
    v94 = v111[0] & 1;
    LOBYTE(v116) = v111[0] & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v45 = String.init<A>(describing:)();
    v47 = sub_1000343F8(v45, v46, &v113);
    v48 = v102;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v95, "Configuring userDefaultsSync: %s", v42, 0xCu);
    sub_10000529C(v43);

    v49 = v94;

    v50 = *(v48 + 8);
    v50(v27, v106);
  }

  else
  {

    v50 = *(v39 + 8);
    v50(v27, v9);
    v49 = v111[0] & 1;
    v44 = v108;
  }

  v51 = v109;
  v52 = *(v109 + 1);
  *v109 = v44;
  *(v51 + 1) = a3;

  v5[v107] = v49;
  v53 = *&v5[v33];
  *&v5[v33] = v96;
  v54 = v97;

  v55 = String._bridgeToObjectiveC()();

  v56 = [v54 valueForKey:v55];

  if (v56)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  v57 = v50;
  v115 = v113;
  v116 = v114;

  if ((v111[0] & 1) == 0)
  {
    sub_10001A510(&v115, &v113, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    if (swift_dynamicCast())
    {
      v66 = v112[0];
    }

    else
    {
      v66 = 2;
    }

    goto LABEL_20;
  }

  v58 = sub_10005D288(&type metadata for Bool);
  if (!v58)
  {
    v62 = v104;
    v67 = v106;
    v100(v104, &v5[v101], v106);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v62;
      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v68, v69, v72, v71, 2u);

      v51 = v109;
      v57(v70, v67);
      v66 = 2;
      goto LABEL_32;
    }

LABEL_27:

    v57(v62, v67);
    v66 = 2;
    goto LABEL_32;
  }

  v59 = v58;
  sub_10001A510(&v115, &v113, &qword_1000D9E38, &qword_100091570);
  if (!*(&v114 + 1))
  {
    sub_10000A628(&v113, &qword_1000D9E38, &qword_100091570);
    v62 = v105;
LABEL_24:
    v67 = v106;
    v100(v62, &v5[v101], v106);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v62;
      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "### Failed to cast as Data";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v60 = swift_dynamicCast();
  v62 = v105;
  if ((v60 & 1) == 0)
  {
    goto LABEL_24;
  }

  v108 = v54;
  v64 = v112[0];
  v63 = v112[1];
  v65 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v60, v61);
  sub_10004DE18();
  sub_100008A9C(v64, v63);
  if (swift_dynamicCast())
  {
    v66 = v113;
  }

  else
  {
    v66 = 2;
  }

  v54 = v108;
  v51 = v109;
LABEL_20:
  v67 = v106;
LABEL_32:
  v74 = v110;
  v100(v110, &v5[v101], v67);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    *v111 = v57;
    v77 = 7104878;
    v78 = swift_slowAlloc();
    v112[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = *(v51 + 1);
    if (v79)
    {
      *&v113 = *v51;
      *(&v113 + 1) = v79;

      v80 = String.init<A>(describing:)();
      v82 = v81;
    }

    else
    {
      v82 = 0xE300000000000000;
      v80 = 7104878;
    }

    v83 = sub_1000343F8(v80, v82, v112);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2080;
    if (v66 == 2)
    {
      v84 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v113) = v66 & 1;
      v77 = String.init<A>(describing:)();
      v84 = v85;
    }

    v86 = sub_1000343F8(v77, v84, v112);

    *(v78 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v75, v76, "Initial %s: %s", v78, 0x16u);
    swift_arrayDestroy();

    (*v111)(v110, v106);
  }

  else
  {

    v57(v74, v67);
  }

  sub_10000A628(&v115, &qword_1000D9E38, &qword_100091570);
  LOBYTE(a1) = v98;
  if (v66 != 2)
  {
    LOBYTE(a1) = v66;
  }

LABEL_43:
  LOBYTE(v115) = a1 & 1;
  v87 = sub_1000056EC(&qword_1000DA8E8, &qword_100091BC0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v115) = 2;
  v90 = sub_1000056EC(&qword_1000DFFF8, &qword_100097900);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

char *sub_1000550FC(void *a1, void (*a2)(void, void), uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v112) = a4;
  v113 = a2;
  v114 = a1;
  v7 = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v108 = &v97[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12, v14);
  v111 = &v97[-v16];
  v18 = __chkstk_darwin(v15, v17);
  v106 = &v97[-v19];
  v21 = __chkstk_darwin(v18, v20);
  v107 = &v97[-v22];
  v24 = __chkstk_darwin(v21, v23);
  v26 = &v97[-v25];
  __chkstk_darwin(v24, v27);
  v29 = &v97[-v28];

  v30 = *(*v5 + 104);
  v31 = sub_1000056EC(&qword_1000DFFA0, &qword_100097898);
  v32 = 1;
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  v33 = *(*v5 + 112);
  *&v5[v33] = 0;
  v109 = *(*v5 + 120);
  v109[v5] = 2;
  v34 = &v5[*(*v5 + 128)];
  *v34 = 0;
  *(v34 + 1) = 0;
  v110 = v34;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v118 = v7;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v35 = *(*v5 + 144);
  v36 = v8;
  (*(v9 + 32))(&v5[v35], v29, v8);
  if (!a3)
  {
    v51 = v114;
    goto LABEL_39;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v37 = qword_1000F3D78;
  v38 = v113;
  if (!qword_1000F3D78)
  {

    v32 = 1;
    v51 = v114;
    goto LABEL_39;
  }

  v39 = *(v9 + 16);
  v103 = v9 + 16;
  v102 = v39;
  v39(v26, &v5[v35], v36);
  v99 = v37;
  v101 = v37;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v98 = v41;
  v42 = v41;
  v43 = v36;
  v44 = os_log_type_enabled(v40, v42);
  v105 = v36;
  v104 = v35;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v116 = v46;
    *v45 = 136315138;
    *&v118 = v38;
    *(&v118 + 1) = a3;
    v100 = v112 & 1;
    LOBYTE(v119) = v112 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v47 = String.init<A>(describing:)();
    v49 = v9;
    v50 = sub_1000343F8(v47, v48, &v116);
    v43 = v105;

    *(v45 + 4) = v50;
    v51 = v114;
    _os_log_impl(&_mh_execute_header, v40, v98, "Configuring userDefaultsSync: %s", v45, 0xCu);
    sub_10000529C(v46);

    v52 = v113;
    v53 = *(v49 + 8);
    v53(v26, v43);
    v54 = v49;
  }

  else
  {

    v52 = v38;
    v53 = *(v9 + 8);
    v53(v26, v43);
    v100 = v112 & 1;
    v54 = v9;
    v51 = v114;
  }

  v55 = v110;
  v56 = *(v110 + 1);
  *v110 = v52;
  *(v55 + 1) = a3;

  v109[v5] = v100;
  v57 = *&v5[v33];
  *&v5[v33] = v99;
  v58 = v101;

  v59 = String._bridgeToObjectiveC()();

  v60 = [v58 valueForKey:v59];

  if (v60)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v116 = 0u;
    v117 = 0u;
  }

  v118 = v116;
  v119 = v117;

  if ((v112 & 1) == 0)
  {
    sub_10001A510(&v118, &v116, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
    if (swift_dynamicCast())
    {
      v32 = v115[0];
    }

    else
    {
      v32 = 1;
    }

    goto LABEL_28;
  }

  v61 = sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
  v62 = sub_10005D288(v61);
  if (v62)
  {
    v63 = v62;
    sub_10001A510(&v118, &v116, &qword_1000D9E38, &qword_100091570);
    if (*(&v117 + 1))
    {
      v64 = swift_dynamicCast();
      v66 = v108;
      if (v64)
      {
        v112 = v54;
        v113 = v53;
        v109 = v58;
        v68 = v115[0];
        v67 = v115[1];
        v69 = *(*(v63 - 8) + 64);
        __chkstk_darwin(v64, v65);
        sub_10004DE18();
        sub_100008A9C(v68, v67);
        if (swift_dynamicCast())
        {
          v32 = v116;
        }

        else
        {
          v32 = 1;
        }

        v43 = v105;
        v54 = v112;
        v53 = v113;
        v58 = v109;
        goto LABEL_28;
      }
    }

    else
    {
      sub_10000A628(&v116, &qword_1000D9E38, &qword_100091570);
      v66 = v108;
    }

    v43 = v105;
    v102(v66, &v5[v104], v105);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "### Failed to cast as Data";
      goto LABEL_26;
    }
  }

  else
  {
    v66 = v107;
    v43 = v105;
    v102(v107, &v5[v104], v105);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "### Type not Codable";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v70, v71, v73, v72, 2u);
    }
  }

  v53(v66, v43);
  v32 = 1;
LABEL_28:
  v74 = v111;
  v102(v111, &v5[v104], v43);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v75, v76))
  {

    v53(v74, v43);
    sub_10000A628(&v118, &qword_1000D9E38, &qword_100091570);
    if (v32 == 1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v112 = v54;
  v113 = v53;
  v77 = 7104878;
  v78 = swift_slowAlloc();
  v115[0] = swift_slowAlloc();
  *v78 = 136315394;
  v79 = *(v110 + 1);
  if (v79)
  {
    *&v116 = *v110;
    *(&v116 + 1) = v79;

    v80 = String.init<A>(describing:)();
    v82 = v81;
  }

  else
  {
    v82 = 0xE300000000000000;
    v80 = 7104878;
  }

  v83 = sub_1000343F8(v80, v82, v115);

  *(v78 + 4) = v83;
  *(v78 + 12) = 2080;
  if (v32 == 1)
  {
    v84 = 0xE300000000000000;
  }

  else
  {
    *&v116 = v32;
    v85 = v32;
    sub_1000056EC(&qword_1000DFFB8, &qword_1000978B8);
    v77 = String.init<A>(describing:)();
    v84 = v86;
  }

  v87 = sub_1000343F8(v77, v84, v115);

  *(v78 + 14) = v87;
  _os_log_impl(&_mh_execute_header, v75, v76, "Initial %s: %s", v78, 0x16u);
  swift_arrayDestroy();

  v113(v111, v105);
  sub_10000A628(&v118, &qword_1000D9E38, &qword_100091570);
  v51 = v114;
  if (v32 != 1)
  {
LABEL_38:
    v88 = v32;

    v51 = v32;
  }

LABEL_39:
  *&v118 = v51;
  v89 = sub_1000056EC(&qword_1000DFFA8, &qword_1000978A0);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  *&v118 = 1;
  v92 = sub_1000056EC(&qword_1000DFFB0, &unk_1000978A8);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  sub_100019FD8(v32);
  return v5;
}

void *sub_100055E0C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v170 = a4;
  v172 = a3;
  v165 = a2;
  v176 = a1;
  v6 = *v4;
  v7 = type metadata accessor for ActivityDisplayContext(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = __chkstk_darwin(v7, v10);
  v175 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v157 = &v143 - v15;
  __chkstk_darwin(v14, v16);
  v158 = &v143 - v17;
  v18 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v174 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v173 = &v143 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v162 = &v143 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v166 = &v143 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v153 = &v143 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v161 = &v143 - v37;
  __chkstk_darwin(v36, v38);
  v40 = &v143 - v39;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v45 = __chkstk_darwin(v41, v44);
  v159 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45, v47);
  v168 = &v143 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v155 = &v143 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v156 = &v143 - v55;
  v57 = __chkstk_darwin(v54, v56);
  v59 = &v143 - v58;
  __chkstk_darwin(v57, v60);
  v62 = &v143 - v61;

  v63 = *(*v5 + 104);
  v64 = sub_1000056EC(&qword_1000E0080, &qword_1000979E0);
  v65 = v5 + v63;
  v66 = v40;
  (*(*(v64 - 8) + 56))(v65, 1, 1, v64);
  v164 = *(*v5 + 112);
  *(v5 + v164) = 0;
  v163 = *(*v5 + 120);
  *(v5 + v163) = 2;
  v67 = (v5 + *(*v5 + 128));
  *v67 = 0;
  v67[1] = 0;
  v167 = v67;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  *&v180 = v6;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v68 = v41;
  Logger.init(subsystem:category:)();
  v69 = *(*v5 + 144);
  v171 = v42;
  v70 = v62;
  v71 = v66;
  v72 = v172;
  (*(v42 + 32))(v5 + v69, v70, v41);
  v73 = v8 + 7;
  v74 = v8[7];
  v74(v71, 1, 1, v7);
  if (!v72)
  {
    goto LABEL_35;
  }

  v169 = v7;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v75 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    v7 = v169;
    goto LABEL_35;
  }

  v154 = v74;
  v152 = v8;
  v76 = v171;
  v77 = *(v171 + 16);
  v149 = v171 + 16;
  v148 = v77;
  v77(v59, v5 + v69, v68);
  v145 = v75;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v160 = v71;
  v80 = v79;

  v81 = os_log_type_enabled(v78, v80);
  v147 = v73;
  v146 = v68;
  v150 = v69;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *&v178 = v151;
    *v82 = 136315138;
    v143 = v80;
    v83 = v165;
    *&v180 = v165;
    *(&v180 + 1) = v72;
    v144 = v170 & 1;
    LOBYTE(v181) = v170 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v84 = String.init<A>(describing:)();
    v86 = sub_1000343F8(v84, v85, &v178);

    *(v82 + 4) = v86;
    v87 = v171;
    _os_log_impl(&_mh_execute_header, v78, v143, "Configuring userDefaultsSync: %s", v82, 0xCu);
    sub_10000529C(v151);
    v88 = v87;
    v68 = v146;

    v89 = v144;

    v151 = *(v88 + 8);
    (v151)(v59, v68);
  }

  else
  {

    v151 = *(v76 + 8);
    (v151)(v59, v68);
    v89 = v170 & 1;
    v83 = v165;
  }

  v90 = v167;
  v91 = v167[1];
  *v167 = v83;
  v90[1] = v72;

  *(v5 + v163) = v89;
  v92 = *(v5 + v164);
  *(v5 + v164) = v75;
  v93 = v145;

  v94 = String._bridgeToObjectiveC()();

  v165 = v93;
  v95 = [v93 valueForKey:v94];

  v74 = v154;
  if (v95)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v178 = 0u;
    v179 = 0u;
  }

  v7 = v169;
  v180 = v178;
  v181 = v179;

  if ((v170 & 1) == 0)
  {
    sub_10001A510(&v180, &v178, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v104 = v161;
    v105 = swift_dynamicCast();
    v74(v104, v105 ^ 1u, 1, v7);
    sub_10005D50C(v104, v160, &qword_1000DA898, &qword_100091B38);
    goto LABEL_25;
  }

  v96 = sub_10005D288(v7);
  if (!v96)
  {
    v100 = v156;
    v148(v156, v5 + v150, v68);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v68;
      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v106, v107, v110, v109, 2u);
      v68 = v108;
    }

LABEL_24:

    (v151)(v100, v68);
    goto LABEL_25;
  }

  v97 = v96;
  sub_10001A510(&v180, &v178, &qword_1000D9E38, &qword_100091570);
  if (!*(&v179 + 1))
  {
    sub_10000A628(&v178, &qword_1000D9E38, &qword_100091570);
    v100 = v159;
LABEL_21:
    v148(v100, v5 + v150, v68);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v68;
      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v98 = swift_dynamicCast();
  v100 = v159;
  if ((v98 & 1) == 0)
  {
    goto LABEL_21;
  }

  v101 = v177[0];
  v102 = v177[1];
  v103 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v98, v99);
  sub_10004DE18();
  sub_100008A9C(v101, v102);
  v140 = v153;
  v7 = v169;
  v141 = swift_dynamicCast();
  v142 = v154;
  v154(v140, v141 ^ 1u, 1, v7);
  sub_10005D50C(v140, v160, &qword_1000DA898, &qword_100091B38);
  v74 = v142;
LABEL_25:
  v111 = v168;
  v148(v168, v5 + v150, v68);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = 7104878;
    v115 = swift_slowAlloc();
    v177[0] = swift_slowAlloc();
    *v115 = 136315394;
    v116 = v167[1];
    if (v116)
    {
      *&v178 = *v167;
      *(&v178 + 1) = v116;

      v117 = String.init<A>(describing:)();
      v119 = v118;
    }

    else
    {
      v119 = 0xE300000000000000;
      v117 = 7104878;
    }

    v120 = sub_1000343F8(v117, v119, v177);

    *(v115 + 4) = v120;
    *(v115 + 12) = 2080;
    v121 = v160;
    swift_beginAccess();
    v122 = v121;
    v123 = v166;
    sub_10001A510(v122, v166, &qword_1000DA898, &qword_100091B38);
    v124 = v123;
    v125 = v162;
    sub_10001A510(v124, v162, &qword_1000DA898, &qword_100091B38);
    if ((v152[6])(v125, 1, v169) == 1)
    {
      v126 = 0xE300000000000000;
    }

    else
    {
      v127 = v158;
      sub_10005D4A4(v125, v158, type metadata accessor for ActivityDisplayContext);
      sub_10005D370(v127, v157, type metadata accessor for ActivityDisplayContext);
      v114 = String.init<A>(describing:)();
      v126 = v128;
      sub_10005D310(v127, type metadata accessor for ActivityDisplayContext);
    }

    sub_10000A628(v166, &qword_1000DA898, &qword_100091B38);
    v129 = sub_1000343F8(v114, v126, v177);

    *(v115 + 14) = v129;
    _os_log_impl(&_mh_execute_header, v112, v113, "Initial %s: %s", v115, 0x16u);
    swift_arrayDestroy();

    (v151)(v168, v146);
    sub_10000A628(&v180, &qword_1000D9E38, &qword_100091570);
    v7 = v169;
    v71 = v160;
    v74 = v154;
  }

  else
  {

    (v151)(v111, v68);
    sub_10000A628(&v180, &qword_1000D9E38, &qword_100091570);
    v71 = v160;
  }

  v8 = v152;
LABEL_35:
  swift_beginAccess();
  v130 = v173;
  sub_10001A510(v71, v173, &qword_1000DA898, &qword_100091B38);
  v131 = v8[6];
  if (v131(v130, 1, v7) == 1)
  {
    sub_10005D370(v176, v175, type metadata accessor for ActivityDisplayContext);
    if (v131(v130, 1, v7) != 1)
    {
      sub_10000A628(v130, &qword_1000DA898, &qword_100091B38);
    }
  }

  else
  {
    sub_10005D4A4(v130, v175, type metadata accessor for ActivityDisplayContext);
  }

  v132 = sub_1000056EC(&qword_1000E0088, &qword_1000979E8);
  v133 = *(v132 + 48);
  v134 = *(v132 + 52);
  swift_allocObject();
  v5[2] = CurrentValueSubject.init(_:)();
  v74(v174, 1, 1, v7);
  v135 = sub_1000056EC(&qword_1000E0090, &qword_1000979F0);
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  v138 = CurrentValueSubject.init(_:)();
  sub_10005D310(v176, type metadata accessor for ActivityDisplayContext);
  v5[3] = v138;
  sub_10000A628(v71, &qword_1000DA898, &qword_100091B38);
  return v5;
}

char *sub_10005708C(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v112) = a4;
  v109 = a2;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v106 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13, v15);
  v111 = &v94[-v17];
  v19 = __chkstk_darwin(v16, v18);
  v104 = &v94[-v20];
  v22 = __chkstk_darwin(v19, v21);
  v105 = &v94[-v23];
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v94[-v26];
  __chkstk_darwin(v25, v28);
  v30 = &v94[-v29];

  v31 = *(*v5 + 104);
  v32 = sub_1000056EC(&qword_1000E0068, &qword_1000979C0);
  (*(*(v32 - 8) + 56))(&v5[v31], 1, 1, v32);
  v33 = *(*v5 + 112);
  *&v5[v33] = 0;
  v108 = *(*v5 + 120);
  v5[v108] = 2;
  v34 = &v5[*(*v5 + 128)];
  *v34 = 0;
  *(v34 + 1) = 0;
  v110 = v34;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v116 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v35 = *(*v5 + 144);
  (*(v10 + 32))(&v5[v35], v30, v9);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v36 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_38;
  }

  v37 = *(v10 + 16);
  v100 = v10 + 16;
  v101 = v37;
  v37(v27, &v5[v35], v9);
  v96 = v36;
  v97 = v36;

  v38 = Logger.logObject.getter();
  v39 = v10;
  v40 = static os_log_type_t.default.getter();

  LODWORD(v107) = v40;
  v41 = os_log_type_enabled(v38, v40);
  v103 = v39;
  v99 = a1;
  v102 = v35;
  v98 = v9;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v114 = v43;
    *v42 = 136315138;
    v44 = v109;
    *&v116 = v109;
    *(&v116 + 1) = a3;
    v95 = v112 & 1;
    LOBYTE(v117) = v112 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v45 = String.init<A>(describing:)();
    v47 = sub_1000343F8(v45, v46, &v114);
    v48 = v103;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v107, "Configuring userDefaultsSync: %s", v42, 0xCu);
    sub_10000529C(v43);

    v49 = v95;

    v50 = v98;
    v107 = *(v48 + 8);
    v107(v27, v98);
  }

  else
  {

    v107 = *(v39 + 8);
    v107(v27, v9);
    v49 = v112 & 1;
    v50 = v9;
    v44 = v109;
  }

  v51 = v110;
  v52 = *(v110 + 1);
  *v110 = v44;
  *(v51 + 1) = a3;

  v5[v108] = v49;
  v53 = *&v5[v33];
  *&v5[v33] = v96;
  v54 = v97;

  v55 = String._bridgeToObjectiveC()();

  v56 = [v54 valueForKey:v55];

  if (v56)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v57 = v107;
  v116 = v114;
  v117 = v115;

  if ((v112 & 1) == 0)
  {
    sub_10001A510(&v116, &v114, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    if (swift_dynamicCast())
    {
      v66 = v113[0];
    }

    else
    {
      v66 = 5;
    }

    goto LABEL_27;
  }

  v58 = sub_10005D288(&type metadata for CardMode);
  if (v58)
  {
    v59 = v58;
    sub_10001A510(&v116, &v114, &qword_1000D9E38, &qword_100091570);
    if (*(&v115 + 1))
    {
      v60 = swift_dynamicCast();
      v62 = v106;
      if (v60)
      {
        v112 = v54;
        v64 = v113[0];
        v63 = v113[1];
        v65 = *(*(v59 - 8) + 64);
        __chkstk_darwin(v60, v61);
        sub_10004DE18();
        sub_100008A9C(v64, v63);
        if (swift_dynamicCast())
        {
          v66 = v114;
        }

        else
        {
          v66 = 5;
        }

        v51 = v110;
        v54 = v112;
        goto LABEL_27;
      }
    }

    else
    {
      sub_10000A628(&v114, &qword_1000D9E38, &qword_100091570);
      v62 = v106;
    }

    v101(v62, &v5[v102], v50);
    v67 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v67, v71, "### Failed to cast as Data", v72, 2u);

      v70 = v106;
      goto LABEL_26;
    }

LABEL_25:

    v70 = v62;
    goto LABEL_26;
  }

  v62 = v105;
  v101(v105, &v5[v102], v50);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v67, v68))
  {
    goto LABEL_25;
  }

  v69 = swift_slowAlloc();
  *v69 = 0;
  _os_log_impl(&_mh_execute_header, v67, v68, "### Type not Codable", v69, 2u);

  v70 = v105;
LABEL_26:
  v57(v70, v50);
  v66 = 5;
LABEL_27:
  v73 = v111;
  v101(v111, &v5[v102], v50);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v107 = v57;
    v76 = 7104878;
    v77 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v77 = 136315394;
    v78 = *(v51 + 1);
    if (v78)
    {
      *&v114 = *v51;
      *(&v114 + 1) = v78;

      v79 = String.init<A>(describing:)();
      v81 = v80;
    }

    else
    {
      v81 = 0xE300000000000000;
      v79 = 7104878;
    }

    v82 = sub_1000343F8(v79, v81, v113);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2080;
    if (v66 == 5)
    {
      v83 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v114) = v66;
      v76 = String.init<A>(describing:)();
      v83 = v84;
    }

    v85 = sub_1000343F8(v76, v83, v113);

    *(v77 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Initial %s: %s", v77, 0x16u);
    swift_arrayDestroy();

    v107(v111, v98);
  }

  else
  {

    v57(v73, v50);
  }

  sub_10000A628(&v116, &qword_1000D9E38, &qword_100091570);
  LOBYTE(a1) = v99;
  if (v66 != 5)
  {
    LOBYTE(a1) = v66;
  }

LABEL_38:
  LOBYTE(v116) = a1;
  v86 = sub_1000056EC(&qword_1000E0070, &qword_1000979C8);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v116) = 5;
  v89 = sub_1000056EC(&qword_1000E0078, &unk_1000979D0);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

char *sub_100057D80(void *a1, unint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v109) = a5;
  v110 = a3;
  v111 = a1;
  v112 = a2;
  v8 = *v5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = __chkstk_darwin(v9, v12);
  v106 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v108 = &v95 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v103 = &v95 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v104 = &v95 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v95 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v95 - v29;

  v31 = *(*v6 + 104);
  v32 = sub_1000056EC(&qword_1000E0050, &qword_1000979A8);
  (*(*(v32 - 8) + 56))(&v6[v31], 1, 1, v32);
  v33 = *(*v6 + 112);
  *&v6[v33] = 0;
  v34 = 2;
  v105 = *(*v6 + 120);
  v6[v105] = 2;
  v35 = &v6[*(*v6 + 128)];
  *v35 = 0;
  *(v35 + 1) = 0;
  v107 = v35;
  *&v6[*(*v6 + 136)] = 0;
  *&v6[*(*v6 + 152)] = 0;
  *&v118 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v36 = *(*v6 + 144);
  v37 = v10[4];
  v113 = v9;
  v37(&v6[v36], v30, v9);
  if (!a4)
  {
    goto LABEL_9;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v38 = qword_1000F3D78;
  v39 = v110;
  if (!qword_1000F3D78)
  {

    v34 = 2;
LABEL_9:
    v51 = v111;
    v52 = v112;
    goto LABEL_44;
  }

  v40 = v10[2];
  v100 = v10 + 2;
  v99 = v40;
  v40(v27, &v6[v36], v113);
  v98 = v38;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  LODWORD(v102) = v42;
  v43 = os_log_type_enabled(v41, v42);
  v101 = v36;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v97 = v38;
    v45 = v44;
    v95 = swift_slowAlloc();
    *&v116 = v95;
    *v45 = 136315138;
    *&v118 = v39;
    *(&v118 + 1) = a4;
    v96 = v109 & 1;
    LOBYTE(v119) = v109 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v46 = String.init<A>(describing:)();
    v48 = sub_1000343F8(v46, v47, &v116);
    v49 = v113;

    *(v45 + 4) = v48;
    v39 = v110;
    _os_log_impl(&_mh_execute_header, v41, v102, "Configuring userDefaultsSync: %s", v45, 0xCu);
    sub_10000529C(v95);

    v38 = v97;

    v102 = v10[1];
    v102(v27, v49);
    v50 = v96;
  }

  else
  {

    v102 = v10[1];
    v102(v27, v113);
    v50 = v109 & 1;
  }

  v53 = v107;
  v54 = *(v107 + 1);
  *v107 = v39;
  *(v53 + 1) = a4;

  v6[v105] = v50;
  v55 = *&v6[v33];
  *&v6[v33] = v38;
  v56 = v98;

  v57 = String._bridgeToObjectiveC()();

  v110 = v56;
  v58 = [v56 valueForKey:v57];

  if (v58)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v116 = 0u;
    v117 = 0u;
  }

  v59 = v106;
  v118 = v116;
  v119 = v117;

  if ((v109 & 1) == 0)
  {
    sub_10001A510(&v118, &v116, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v115;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v34 = v114;
    }

    else
    {
      v34 = 2;
    }

    goto LABEL_25;
  }

  v60 = sub_10005D288(&type metadata for MediaTransferStatus);
  v61 = v99;
  if (!v60)
  {
    v59 = v104;
    v99(v104, &v6[v101], v113);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v34 = 2;
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "### Type not Codable";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v70, v71, v73, v72, 2u);

      v102(v59, v113);
      v69 = 0;
      goto LABEL_33;
    }

LABEL_32:

    v102(v59, v113);
    v69 = 0;
    v34 = 2;
    goto LABEL_33;
  }

  v62 = v60;
  sub_10001A510(&v118, &v116, &qword_1000D9E38, &qword_100091570);
  if (!*(&v117 + 1))
  {
    sub_10000A628(&v116, &qword_1000D9E38, &qword_100091570);
LABEL_29:
    v61(v59, &v6[v101], v113);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v34 = 2;
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "### Failed to cast as Data";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v63 = swift_dynamicCast();
  if ((v63 & 1) == 0)
  {
    goto LABEL_29;
  }

  v66 = v114;
  v65 = v115;
  v67 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v63, v64);
  sub_10004DE18();
  sub_100008A9C(v66, v65);
  v94 = swift_dynamicCast();
  if (v94)
  {
    v69 = *(&v116 + 1);
  }

  else
  {
    v69 = 0;
  }

  if (v94)
  {
    v34 = v116;
  }

  else
  {
    v34 = 2;
  }

  v53 = v107;
LABEL_25:
  v61 = v99;
LABEL_33:
  v74 = v108;
  v61(v108, &v6[v101], v113);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v109 = v10;
    v77 = 7104878;
    v78 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v78 = 136315394;
    v79 = *(v53 + 1);
    if (v79)
    {
      *&v116 = *v53;
      *(&v116 + 1) = v79;

      v80 = String.init<A>(describing:)();
      v82 = v81;
    }

    else
    {
      v82 = 0xE300000000000000;
      v80 = 7104878;
    }

    v83 = sub_1000343F8(v80, v82, &v114);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2080;
    if (v34 == 2)
    {
      v84 = 0xE300000000000000;
    }

    else
    {
      *&v116 = v34;
      *(&v116 + 1) = v69;
      sub_100019FE8(v34);
      v77 = String.init<A>(describing:)();
      v84 = v85;
    }

    v52 = v112;
    v86 = sub_1000343F8(v77, v84, &v114);

    *(v78 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v75, v76, "Initial %s: %s", v78, 0x16u);
    swift_arrayDestroy();

    v102(v108, v113);
    sub_10000A628(&v118, &qword_1000D9E38, &qword_100091570);
    if (v34 == 2)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v102(v74, v113);
    sub_10000A628(&v118, &qword_1000D9E38, &qword_100091570);
    v52 = v112;
    if (v34 == 2)
    {
LABEL_43:
      v51 = v111;
      goto LABEL_44;
    }
  }

  sub_100019FE8(v34);
  sub_100019FD8(v111);
  v51 = v34;
  v52 = v69;
LABEL_44:
  *&v118 = v51;
  *(&v118 + 1) = v52;
  v87 = sub_1000056EC(&qword_1000E0058, &qword_1000979B0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *(v6 + 2) = CurrentValueSubject.init(_:)();
  v118 = xmmword_100097750;
  v90 = sub_1000056EC(&qword_1000E0060, &qword_1000979B8);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  *(v6 + 3) = CurrentValueSubject.init(_:)();
  sub_10005D494(v34);
  return v6;
}

char *sub_100058B08(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v5 = v4;
  LODWORD(v113) = a3;
  v9 = *v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v110 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v112 = &v98 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v106 = &v98 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v107 = &v98 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v98 - v27;
  __chkstk_darwin(v26, v29);
  v31 = &v98 - v30;

  v32 = *(*v5 + 104);
  v33 = sub_1000056EC(&qword_1000E0038, &qword_100097990);
  (*(*(v33 - 8) + 56))(&v5[v32], 1, 1, v33);
  v109 = *(*v5 + 112);
  *&v109[v5] = 0;
  v108 = *(*v5 + 120);
  v5[v108] = 2;
  v34 = &v5[*(*v5 + 128)];
  *v34 = 0;
  *(v34 + 1) = 0;
  v111 = v34;
  *&v5[*(*v5 + 136)] = 0;
  *&v5[*(*v5 + 152)] = 0;
  *&v117 = v9;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v35 = *(*v5 + 144);
  (*(v11 + 32))(&v5[v35], v31, v10);
  if (!a2)
  {
    goto LABEL_41;
  }

  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v36 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    goto LABEL_41;
  }

  v37 = *(v11 + 16);
  v102 = v11 + 16;
  v101 = v37;
  v37(v28, &v5[v35], v10);
  v100 = v36;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v105 = v11;
  v103 = v35;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v115 = v104;
    *v41 = 136315138;
    v98 = v39;
    v42 = a1;
    *&v117 = a1;
    *(&v117 + 1) = a2;
    v99 = v113 & 1;
    LOBYTE(v118) = v113 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000343F8(v43, v44, &v115);
    v46 = v105;

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v98, "Configuring userDefaultsSync: %s", v41, 0xCu);
    sub_10000529C(v104);

    v47 = v99;

    v104 = *(v46 + 8);
    (v104)(v28, v10);
  }

  else
  {

    v104 = *(v11 + 8);
    (v104)(v28, v10);
    v47 = v113 & 1;
    v42 = a1;
  }

  v48 = v111;
  v49 = *(v111 + 1);
  *v111 = v42;
  *(v48 + 1) = a2;

  v50 = v109;
  v5[v108] = v47;
  v51 = *&v50[v5];
  *&v50[v5] = v36;
  v52 = v100;

  v53 = String._bridgeToObjectiveC()();

  v109 = v52;
  v54 = [v52 valueForKey:v53];

  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  v55 = v110;
  v117 = v115;
  v118 = v116;

  if ((v113 & 1) == 0)
  {
    sub_10001A510(&v117, &v115, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v64 = swift_dynamicCast();
    if (v64)
    {
      v65 = *v114;
    }

    else
    {
      v65 = 0.0;
    }

    v66 = v64 ^ 1;
    goto LABEL_21;
  }

  v56 = sub_10005D288(&type metadata for Float);
  v57 = v101;
  if (!v56)
  {
    v55 = v107;
    v101(v107, &v5[v103], v10);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v10;
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = "### Type not Codable";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v67, v68, v71, v70, 2u);
      v10 = v69;

      v72 = v55;
      v73 = v69;
LABEL_29:
      (v104)(v72, v73);
      v66 = 1;
      v65 = 0.0;
      goto LABEL_30;
    }

LABEL_28:

    v72 = v55;
    v73 = v10;
    goto LABEL_29;
  }

  v58 = v56;
  sub_10001A510(&v117, &v115, &qword_1000D9E38, &qword_100091570);
  if (!*(&v116 + 1))
  {
    sub_10000A628(&v115, &qword_1000D9E38, &qword_100091570);
LABEL_25:
    v57(v55, &v5[v103], v10);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = v10;
      v70 = swift_slowAlloc();
      *v70 = 0;
      v71 = "### Failed to cast as Data";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v59 = swift_dynamicCast();
  if ((v59 & 1) == 0)
  {
    goto LABEL_25;
  }

  v113 = v10;
  v62 = v114[0];
  v61 = v114[1];
  v63 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v59, v60);
  sub_10004DE18();
  sub_100008A9C(v62, v61);
  v97 = swift_dynamicCast();
  if (v97)
  {
    v65 = *&v115;
  }

  else
  {
    v65 = 0.0;
  }

  v66 = v97 ^ 1;
  v10 = v113;
  v48 = v111;
LABEL_21:
  v57 = v101;
LABEL_30:
  v74 = v112;
  v57(v112, &v5[v103], v10);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = 7104878;
    v78 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v78 = 136315394;
    v79 = *(v48 + 1);
    v80 = v10;
    if (v79)
    {
      *&v115 = *v48;
      *(&v115 + 1) = v79;

      v81 = String.init<A>(describing:)();
      v83 = v82;
    }

    else
    {
      v83 = 0xE300000000000000;
      v81 = 7104878;
    }

    v86 = sub_1000343F8(v81, v83, v114);

    *(v78 + 4) = v86;
    *(v78 + 12) = 2080;
    if (v66)
    {
      v87 = 0xE300000000000000;
    }

    else
    {
      *&v115 = v65;
      v77 = String.init<A>(describing:)();
      v87 = v88;
    }

    v89 = sub_1000343F8(v77, v87, v114);

    *(v78 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v75, v76, "Initial %s: %s", v78, 0x16u);
    swift_arrayDestroy();

    v84 = v112;
    v85 = v80;
  }

  else
  {

    v84 = v74;
    v85 = v10;
  }

  (v104)(v84, v85);
  sub_10000A628(&v117, &qword_1000D9E38, &qword_100091570);
  if (!v66)
  {
    a4 = v65;
  }

LABEL_41:
  *&v117 = a4;
  v90 = sub_1000056EC(&qword_1000E0040, &qword_100097998);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  *(v5 + 2) = CurrentValueSubject.init(_:)();
  LODWORD(v117) = 0;
  BYTE4(v117) = 1;
  v93 = sub_1000056EC(&qword_1000E0048, &qword_1000979A0);
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();
  *(v5 + 3) = CurrentValueSubject.init(_:)();
  return v5;
}

void *sub_1000597B8(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v170 = a4;
  v172 = a3;
  v165 = a2;
  v176 = a1;
  v6 = *v4;
  v7 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = __chkstk_darwin(v7, v10);
  v175 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v157 = &v143 - v15;
  __chkstk_darwin(v14, v16);
  v158 = &v143 - v17;
  v18 = sub_1000056EC(&qword_1000DF938, qword_1000974C0);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v174 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v173 = &v143 - v25;
  v27 = __chkstk_darwin(v24, v26);
  v162 = &v143 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v166 = &v143 - v31;
  v33 = __chkstk_darwin(v30, v32);
  v153 = &v143 - v34;
  v36 = __chkstk_darwin(v33, v35);
  v161 = &v143 - v37;
  __chkstk_darwin(v36, v38);
  v40 = &v143 - v39;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v45 = __chkstk_darwin(v41, v44);
  v159 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45, v47);
  v168 = &v143 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v155 = &v143 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v156 = &v143 - v55;
  v57 = __chkstk_darwin(v54, v56);
  v59 = &v143 - v58;
  __chkstk_darwin(v57, v60);
  v62 = &v143 - v61;

  v63 = *(*v5 + 104);
  v64 = sub_1000056EC(&qword_1000DFFD8, &qword_1000978D8);
  v65 = v5 + v63;
  v66 = v40;
  (*(*(v64 - 8) + 56))(v65, 1, 1, v64);
  v164 = *(*v5 + 112);
  *(v5 + v164) = 0;
  v163 = *(*v5 + 120);
  *(v5 + v163) = 2;
  v67 = (v5 + *(*v5 + 128));
  *v67 = 0;
  v67[1] = 0;
  v167 = v67;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  *&v180 = v6;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v68 = v41;
  Logger.init(subsystem:category:)();
  v69 = *(*v5 + 144);
  v171 = v42;
  v70 = v62;
  v71 = v66;
  v72 = v172;
  (*(v42 + 32))(v5 + v69, v70, v41);
  v73 = v8 + 7;
  v74 = v8[7];
  v74(v71, 1, 1, v7);
  if (!v72)
  {
    goto LABEL_35;
  }

  v169 = v7;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v75 = qword_1000F3D78;
  if (!qword_1000F3D78)
  {

    v7 = v169;
    goto LABEL_35;
  }

  v154 = v74;
  v152 = v8;
  v76 = v171;
  v77 = *(v171 + 16);
  v149 = v171 + 16;
  v148 = v77;
  v77(v59, v5 + v69, v68);
  v145 = v75;

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v160 = v71;
  v80 = v79;

  v81 = os_log_type_enabled(v78, v80);
  v147 = v73;
  v146 = v68;
  v150 = v69;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *&v178 = v151;
    *v82 = 136315138;
    v143 = v80;
    v83 = v165;
    *&v180 = v165;
    *(&v180 + 1) = v72;
    v144 = v170 & 1;
    LOBYTE(v181) = v170 & 1;

    sub_1000056EC(&qword_1000DFFC0, &qword_1000978C0);
    v84 = String.init<A>(describing:)();
    v86 = sub_1000343F8(v84, v85, &v178);

    *(v82 + 4) = v86;
    v87 = v171;
    _os_log_impl(&_mh_execute_header, v78, v143, "Configuring userDefaultsSync: %s", v82, 0xCu);
    sub_10000529C(v151);
    v88 = v87;
    v68 = v146;

    v89 = v144;

    v151 = *(v88 + 8);
    (v151)(v59, v68);
  }

  else
  {

    v151 = *(v76 + 8);
    (v151)(v59, v68);
    v89 = v170 & 1;
    v83 = v165;
  }

  v90 = v167;
  v91 = v167[1];
  *v167 = v83;
  v90[1] = v72;

  *(v5 + v163) = v89;
  v92 = *(v5 + v164);
  *(v5 + v164) = v75;
  v93 = v145;

  v94 = String._bridgeToObjectiveC()();

  v165 = v93;
  v95 = [v93 valueForKey:v94];

  v74 = v154;
  if (v95)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v178 = 0u;
    v179 = 0u;
  }

  v7 = v169;
  v180 = v178;
  v181 = v179;

  if ((v170 & 1) == 0)
  {
    sub_10001A510(&v180, &v178, &qword_1000D9E38, &qword_100091570);
    sub_1000056EC(&qword_1000D9E38, &qword_100091570);
    v104 = v161;
    v105 = swift_dynamicCast();
    v74(v104, v105 ^ 1u, 1, v7);
    sub_10005D50C(v104, v160, &qword_1000DF938, qword_1000974C0);
    goto LABEL_25;
  }

  v96 = sub_10005D288(v7);
  if (!v96)
  {
    v100 = v156;
    v148(v156, v5 + v150, v68);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v68;
      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v106, v107, v110, v109, 2u);
      v68 = v108;
    }

LABEL_24:

    (v151)(v100, v68);
    goto LABEL_25;
  }

  v97 = v96;
  sub_10001A510(&v180, &v178, &qword_1000D9E38, &qword_100091570);
  if (!*(&v179 + 1))
  {
    sub_10000A628(&v178, &qword_1000D9E38, &qword_100091570);
    v100 = v159;
LABEL_21:
    v148(v100, v5 + v150, v68);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v68;
      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v98 = swift_dynamicCast();
  v100 = v159;
  if ((v98 & 1) == 0)
  {
    goto LABEL_21;
  }

  v101 = v177[0];
  v102 = v177[1];
  v103 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v98, v99);
  sub_10004DE18();
  sub_100008A9C(v101, v102);
  v140 = v153;
  v7 = v169;
  v141 = swift_dynamicCast();
  v142 = v154;
  v154(v140, v141 ^ 1u, 1, v7);
  sub_10005D50C(v140, v160, &qword_1000DF938, qword_1000974C0);
  v74 = v142;
LABEL_25:
  v111 = v168;
  v148(v168, v5 + v150, v68);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = 7104878;
    v115 = swift_slowAlloc();
    v177[0] = swift_slowAlloc();
    *v115 = 136315394;
    v116 = v167[1];
    if (v116)
    {
      *&v178 = *v167;
      *(&v178 + 1) = v116;

      v117 = String.init<A>(describing:)();
      v119 = v118;
    }

    else
    {
      v119 = 0xE300000000000000;
      v117 = 7104878;
    }

    v120 = sub_1000343F8(v117, v119, v177);

    *(v115 + 4) = v120;
    *(v115 + 12) = 2080;
    v121 = v160;
    swift_beginAccess();
    v122 = v121;
    v123 = v166;
    sub_10001A510(v122, v166, &qword_1000DF938, qword_1000974C0);
    v124 = v123;
    v125 = v162;
    sub_10001A510(v124, v162, &qword_1000DF938, qword_1000974C0);
    if ((v152[6])(v125, 1, v169) == 1)
    {
      v126 = 0xE300000000000000;
    }

    else
    {
      v127 = v158;
      sub_10005D4A4(v125, v158, type metadata accessor for NearbySharingInteractionDisplayContext);
      sub_10005D370(v127, v157, type metadata accessor for NearbySharingInteractionDisplayContext);
      v114 = String.init<A>(describing:)();
      v126 = v128;
      sub_10005D310(v127, type metadata accessor for NearbySharingInteractionDisplayContext);
    }

    sub_10000A628(v166, &qword_1000DF938, qword_1000974C0);
    v129 = sub_1000343F8(v114, v126, v177);

    *(v115 + 14) = v129;
    _os_log_impl(&_mh_execute_header, v112, v113, "Initial %s: %s", v115, 0x16u);
    swift_arrayDestroy();

    (v151)(v168, v146);
    sub_10000A628(&v180, &qword_1000D9E38, &qword_100091570);
    v7 = v169;
    v71 = v160;
    v74 = v154;
  }

  else
  {

    (v151)(v111, v68);
    sub_10000A628(&v180, &qword_1000D9E38, &qword_100091570);
    v71 = v160;
  }

  v8 = v152;
LABEL_35:
  swift_beginAccess();
  v130 = v173;
  sub_10001A510(v71, v173, &qword_1000DF938, qword_1000974C0);
  v131 = v8[6];
  if (v131(v130, 1, v7) == 1)
  {
    sub_10005D370(v176, v175, type metadata accessor for NearbySharingInteractionDisplayContext);
    if (v131(v130, 1, v7) != 1)
    {
      sub_10000A628(v130, &qword_1000DF938, qword_1000974C0);
    }
  }

  else
  {
    sub_10005D4A4(v130, v175, type metadata accessor for NearbySharingInteractionDisplayContext);
  }

  v132 = sub_1000056EC(&qword_1000DFFE0, &qword_1000978E0);
  v133 = *(v132 + 48);
  v134 = *(v132 + 52);
  swift_allocObject();
  v5[2] = CurrentValueSubject.init(_:)();
  v74(v174, 1, 1, v7);
  v135 = sub_1000056EC(&qword_1000DFFE8, &qword_1000978E8);
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  v138 = CurrentValueSubject.init(_:)();
  sub_10005D310(v176, type metadata accessor for NearbySharingInteractionDisplayContext);
  v5[3] = v138;
  sub_10000A628(v71, &qword_1000DF938, qword_1000974C0);
  return v5;
}

uint64_t sub_10005AA38()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DFD00);
  sub_1000047A0(v0, qword_1000DFD00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005AAB8()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge);
  }

  else
  {
    v3 = v0;
    v4 = sub_10005AB68();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState);
    type metadata accessor for ClassicCardAlertDaemonBridgeClient();
    swift_allocObject();

    v2 = sub_100050BD0(v4, v5);
    v6 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10005AB68()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel);
  }

  else
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState) + 16);
    sub_1000056EC(&qword_1000DFFC8, &unk_1000978C8);
    sub_10000EE58(&qword_1000DFFD0, &qword_1000DFFC8, &unk_1000978C8);
    v3 = v0;
    v4 = Publisher.eraseToAnyPublisher()();
    type metadata accessor for ClassicCardAlertDaemonBridgeClientModel();
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10005AC64()
{
  v1 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter;
  v2 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter);
  }

  else
  {
    v4 = v0;
    v5 = sub_10005AD18();
    v6 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState);
    v7 = objc_allocWithZone(type metadata accessor for CardPresenter(0));

    v8 = sub_1000192E4(v5, v6);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_10005AD18()
{
  v1 = _s8CardInfoOMa();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel))
  {
    v7 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel);
  }

  else
  {
    v8 = v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context;
    v9 = type metadata accessor for ClassicCardViewServiceContext();
    sub_10005D370(v8 + v9[8], v5, _s8CardInfoOMa);
    v10 = *(v8 + v9[9]);
    v11 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host);
    v12 = (v8 + v9[7]);
    v14 = v12[1];
    v44 = *v12;
    v13 = v44;
    v45 = v10;
    v42 = v11;
    v43 = v14;
    v15 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_rootViewController);
    swift_unknownObjectRetain();
    sub_100019FE8(v13);
    v41 = sub_10000E9E8();
    v40 = v16;
    v39 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive);
    v17 = *(v0 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState);
    swift_beginAccess();
    v37 = v17[2];
    swift_beginAccess();
    v36 = v17[3];
    swift_beginAccess();
    v18 = v17[4];
    swift_beginAccess();
    v19 = v17[5];
    swift_beginAccess();
    v20 = v17[6];
    v46 = *&v15[OBJC_IVAR___MainViewController_homeGestureEventSubject];
    v38 = v15;

    sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
    sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778);
    v21 = Publisher.eraseToAnyPublisher()();
    v22 = type metadata accessor for CardPresenterModel(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v7 = swift_allocObject();
    v25 = OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mrResponse;
    v26 = sub_1000056EC(&qword_1000DAB50, &unk_100091EE0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    *(v7 + v25) = sub_1000550FC(0, 0, 0, 0);
    sub_10005D4A4(v5, v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_cardInfo, _s8CardInfoOMa);
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_deviceAssetType) = v45;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_host) = v42;
    v29 = (v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_initialMediaTransferStatus);
    v30 = v43;
    *v29 = v44;
    v29[1] = v30;
    v31 = (v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel);
    v32 = v40;
    *v31 = v41;
    v31[1] = v32;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController) = v38;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__isActive) = v39;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__activityDisplayContext) = v37;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__cardMode) = v36;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mediaTransferStatus) = v18;
    *(v7 + v25) = v19;

    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__progress) = v20;
    *(v7 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_homeGestureEventPublisher) = v21;
    v33 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

char *sub_10005B13C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v132 = a4;
  v133 = a5;
  v134 = a2;
  v9 = sub_1000056EC(&qword_1000E0000, &qword_100097908);
  v118 = *(v9 - 8);
  v119 = v9;
  v10 = *(v118 + 64);
  __chkstk_darwin(v9, v11);
  v116 = &v115 - v12;
  v13 = sub_1000056EC(&qword_1000E0008, &unk_100097910);
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  __chkstk_darwin(v13, v15);
  v117 = &v115 - v16;
  v17 = type metadata accessor for ActivityDisplayContext(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v125 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v126 = &v115 - v24;
  __chkstk_darwin(v23, v25);
  v129 = &v115 - v26;
  v27 = type metadata accessor for ClassicCardViewServiceContext();
  v28 = *(*(v27 - 1) + 64);
  v30 = __chkstk_darwin(v27, v29);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = &v115 - v34;
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  v36 = qword_1000F3D18;
  *(v5 + 7) = &_swiftEmptySetSingleton;
  v128 = v5 + 56;
  *(v5 + 2) = v36;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  v37 = v36;
  UUID.init()();
  v38 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive;
  v39 = sub_1000056EC(&qword_1000E0010, qword_10009C600);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *&v5[v38] = sub_1000543E8(1, 0, 0, 0);
  v42 = &v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler];
  *v42 = 0;
  v42[1] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenter] = 0;
  *&v5[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel] = 0;
  v43 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState;
  type metadata accessor for CardPresenterState();
  v44 = swift_allocObject();
  v45 = sub_1000056EC(&qword_1000DFFC8, &unk_1000978C8);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *(v44 + 16) = PassthroughSubject.init()();
  v48 = sub_1000056EC(&qword_1000E0018, &unk_100097920);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v130 = v48;
  swift_allocObject();
  *(v44 + 24) = PassthroughSubject.init()();
  *&v5[v43] = v44;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000047A0(v51, qword_1000DFD00);
  sub_10005D370(a1, v35, type metadata accessor for ClassicCardViewServiceContext);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v127 = a1;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v135 = v56;
    *v55 = 136315138;
    sub_10005D370(v35, v32, type metadata accessor for ClassicCardViewServiceContext);
    v57 = String.init<A>(describing:)();
    v131 = v6;
    v58 = v27;
    v59 = a3;
    v61 = v60;
    sub_10005D310(v35, type metadata accessor for ClassicCardViewServiceContext);
    v62 = sub_1000343F8(v57, v61, &v135);
    a3 = v59;
    v27 = v58;
    v6 = v131;

    *(v55 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Init: context=%s", v55, 0xCu);
    sub_10000529C(v56);
    a1 = v127;
  }

  else
  {

    sub_10005D310(v35, type metadata accessor for ClassicCardViewServiceContext);
  }

  sub_10005D370(a1, &v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context], type metadata accessor for ClassicCardViewServiceContext);
  v63 = v133;
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host] = v134;
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_rootViewController] = a3;
  v64 = *v42;
  v65 = v42[1];
  v66 = v132;
  *v42 = v132;
  v42[1] = v63;
  swift_unknownObjectRetain();
  v131 = a3;
  sub_10000B16C(v66);
  sub_10000B17C(v64);
  v67 = v129;
  sub_10005D370(a1, v129, type metadata accessor for ActivityDisplayContext);
  v68 = a1 + v27[7];
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = v27[5];
  v124 = *(a1 + v27[6]);
  v72 = v124;
  v122 = *(a1 + v71);
  type metadata accessor for ClassicCardAlertDaemonBridgeClientState();
  v73 = swift_allocObject();
  v74 = sub_1000056EC(&qword_1000DAB50, &unk_100091EE0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v123 = v72;
  v73[5] = sub_1000550FC(0, 0, 0, 0);
  v77 = *(v130 + 48);
  v78 = *(v130 + 52);
  swift_allocObject();
  v73[7] = PassthroughSubject.init()();
  v79 = v126;
  sub_10005D370(v67, v126, type metadata accessor for ActivityDisplayContext);
  swift_beginAccess();
  v80 = v125;
  sub_10005D370(v79, v125, type metadata accessor for ActivityDisplayContext);
  v81 = sub_1000056EC(&qword_1000DAA38, &qword_100091DB8);
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  v84 = sub_100055E0C(v80, 0, 0, 0);
  sub_10005D310(v79, type metadata accessor for ActivityDisplayContext);
  v73[2] = v84;
  swift_endAccess();
  swift_beginAccess();
  v85 = sub_1000056EC(&qword_1000DAAE0, &unk_100097930);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v73[3] = sub_10005708C(v122, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  v88 = sub_1000056EC(&qword_1000DAA88, &unk_100091DD0);
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  sub_100019FE8(v69);
  v73[4] = sub_100057D80(v69, v70, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  v91 = v73[5];
  v92 = v123;

  v93 = *(v74 + 48);
  v94 = *(v74 + 52);
  swift_allocObject();
  v73[5] = sub_1000550FC(v124, 0, 0, 0);
  swift_endAccess();
  swift_beginAccess();
  v95 = sub_1000056EC(&qword_1000DAAA8, qword_100097940);
  v96 = *(v95 + 48);
  v97 = *(v95 + 52);
  swift_allocObject();
  v73[6] = sub_100058B08(0, 0, 0, 0.0);
  swift_endAccess();

  sub_10005D310(v129, type metadata accessor for ActivityDisplayContext);
  *&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState] = v73;
  v135 = v73[7];
  swift_allocObject();
  swift_weakInit();
  v129 = sub_10000EE58(&qword_1000E0020, &qword_1000E0018, &unk_100097920);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v135 = *&v131[OBJC_IVAR___MainViewController_backlightLuminanceBecameReducedSubject];
  v98 = swift_allocObject();
  swift_weakInit();
  v99 = swift_allocObject();
  *(v99 + 16) = sub_10005D408;
  *(v99 + 24) = v98;

  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  sub_10000EE58(&qword_1000DFF98, &qword_1000DA1D0, &qword_100091778);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v135 = *(*&v6[OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState] + 24);
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10005AAB8();
  sub_100050E6C();

  v100 = sub_10005AC64();
  sub_100010898();

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v101 = *(qword_1000F3C58 + 880);
  v102 = *(v101 + *((swift_isaMask & *v101) + 0x70));
  if (v102)
  {
    v103 = (v101 + *((swift_isaMask & *v101) + 0x68));
    v104 = *v103;
    v105 = v103[1];
    v106 = v101;
    v107 = v102;
    v108 = String._bridgeToObjectiveC()();
    [v107 setBool:0 forKey:v108];
  }

  v109 = v127;
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  if (qword_1000F3D78)
  {
    swift_getKeyPath();
    v110 = v116;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000EE58(&qword_1000E0028, &qword_1000E0000, &qword_100097908);
    v111 = v117;
    v112 = v119;
    Publisher.filter(_:)();
    (*(v118 + 8))(v110, v112);
    sub_10000EE58(&qword_1000E0030, &qword_1000E0008, &unk_100097910);
    v113 = v121;
    Publisher<>.sink(receiveValue:)();
    (*(v120 + 8))(v111, v113);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000B17C(v132);
    swift_unknownObjectRelease();

    sub_10005D310(v109, type metadata accessor for ClassicCardViewServiceContext);
  }

  else
  {
    sub_10005D310(v109, type metadata accessor for ClassicCardViewServiceContext);
    sub_10000B17C(v132);

    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_10005C028()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005CAA4(0xD00000000000001CLL, 0x80000001000A5990);
  }

  return result;
}

uint64_t sub_10005C098(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4, v5);
  }

  return result;
}

void sub_10005C110()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 880);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = (v0 + *((swift_isaMask & *v0) + 0x68));
    v3 = *v2;
    v4 = v2[1];
    v5 = v0;
    v6 = v1;
    v7 = String._bridgeToObjectiveC()();
    [v6 setBool:0 forKey:v7];
  }

  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000047A0(v8, qword_1000DFD00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "### forceKillPCViewService set to true, exiting...", v11, 2u);
  }

  exit(0);
}

uint64_t sub_10005C2C0()
{
  v1 = v0;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DFD00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10005C6A4();
  v6 = *(v1 + 32);
  sub_10000B17C(*(v1 + 24));
  v7 = *(v1 + 48);
  sub_10000B17C(*(v1 + 40));
  v8 = *(v1 + 56);

  v9 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_id;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive);

  sub_10005D310(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_context, type metadata accessor for ClassicCardViewServiceContext);
  v12 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host);
  swift_unknownObjectRelease();

  v13 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler + 8);
  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler));
  v14 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridge);

  v15 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___daemonBridgeModel);

  v16 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_daemonBridgeState);

  v17 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment____lazy_storage___cardPresenterModel);

  v18 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_cardPresenterState);

  return v1;
}

uint64_t sub_10005C4D0()
{
  sub_10005C2C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ClassicCardAlertEnvironment()
{
  result = qword_1000DFD70;
  if (!qword_1000DFD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005C57C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ClassicCardViewServiceContext();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10005C6A4()
{
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DFD00);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10005AAB8();
  sub_1000516C8();

  v5 = sub_10005AC64();
  sub_1000197E0();
}

id sub_10005C828(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DFD00);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000343F8(0xD000000000000011, 0x80000001000A5970, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1000343F8(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: reason=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v2 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_finishedHandler + 8);

    v10(v12);

    return sub_10000B17C(v10);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### No finished handler?", v16, 2u);
    }

    v17 = *(v3 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_host);

    return [v17 invalidate];
  }
}

uint64_t sub_10005CAA4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v26, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000047A0(v14, qword_1000DFD00);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v9;
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5950, aBlock);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000343F8(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: reason=%s", v17, 0x16u);
    swift_arrayDestroy();
    v9 = v25;
  }

  sub_10000FE40();
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = sub_10005D21C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000CA6F0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005D240(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v27 + 8))(v8, v4);
  return (*(v9 + 8))(v13, v26);
}

void sub_10005CF14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_10005AC64();

    sub_10001681C(a2, a3, 0, 0);
  }
}

unint64_t sub_10005CF9C()
{
  v1 = *v0;
  _StringGuts.grow(_:)(39);

  type metadata accessor for UUID();
  sub_10005D240(&qword_1000DFF80, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000025;
}

uint64_t sub_10005D074@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005D0F0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13PCViewService27ClassicCardAlertEnvironment__isActive);

  sub_100052940(a1);
}

_OWORD *sub_10005D18C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_10005D1A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D1DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D288(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005D310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005D370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005D410()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005D494(id a1)
{
  if (a1 != 2)
  {
    sub_100019FD8(a1);
  }
}

uint64_t sub_10005D4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005D50C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005D578()
{
  result = qword_1000E0098;
  if (!qword_1000E0098)
  {
    sub_100005818(&qword_1000E00A0, &qword_1000979F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0098);
  }

  return result;
}

uint64_t sub_10005D5DC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Loader.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005D68C()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E00C8);
  sub_1000047A0(v0, qword_1000E00C8);
  return Logger.init(subsystem:category:)();
}

char *sub_10005D700()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000E00C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  v7 = *(v1 + 3);

  v8 = *(*v1 + 96);
  v9 = *(v2 + 80);
  v10 = type metadata accessor for Loader.State();
  (*(*(v10 - 8) + 8))(&v1[v8], v10);
  v11 = *&v1[*(*v1 + 104)];

  return v1;
}

uint64_t sub_10005D884()
{
  sub_10005D700();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10005D914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_10005D970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_10005DB44(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

void sub_10005DDB4(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v26 = v3 & 0xFFFFFFFFFFFFFF8;
      v27 = v3 & 0xC000000000000001;
      v25 = v3;
      do
      {
        if (v27)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v26 + 16))
          {
            goto LABEL_23;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v28 = v5 + 1;
        v9 = [v7 clipsToBounds];
        v10 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a2;
        v29 = *a2;
        v13 = a2;
        *a2 = 0x8000000000000000;
        v3 = sub_100045110(v8);
        v15 = v12[2];
        v16 = (v14 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_24;
        }

        a2 = v14;
        if (v12[3] >= v17)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v20 = v29;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_10005F7B4();
            v20 = v29;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_10005F550(v17, isUniquelyReferenced_nonNull_native);
          v18 = sub_100045110(v8);
          if ((a2 & 1) != (v19 & 1))
          {
            sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v3 = v18;
          v20 = v29;
          if (a2)
          {
LABEL_4:
            *(v20[7] + v3) = v9;
            goto LABEL_5;
          }
        }

        v20[(v3 >> 6) + 8] |= 1 << v3;
        *(v20[6] + 8 * v3) = v8;
        *(v20[7] + v3) = v9;
        v21 = v20[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v20[2] = v23;
        v24 = v8;
LABEL_5:
        a2 = v13;
        v6 = *v13;
        *v13 = v20;

        [v8 setClipsToBounds:0];

        ++v5;
        v3 = v25;
      }

      while (v28 != v4);
    }
  }
}

uint64_t sub_10005E004()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E01E0);
  sub_1000047A0(v0, qword_1000E01E0);
  return Logger.init(subsystem:category:)();
}

void sub_10005E088()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 592);

  v1 = v0;
  sub_100025A38();
  v3 = v2;

  v4 = *(qword_1000F3C58 + 576);

  v5 = v4;
  sub_100025A38();
  v7 = v6;

  v8 = *(qword_1000F3C58 + 560);

  v9 = v8;
  sub_100025A38();
  v11 = v10;

  v12 = *(qword_1000F3C58 + 608);

  v13 = v12;
  sub_100025A38();
  v15 = v14;

  *&xmmword_1000F3CA0 = v3;
  *(&xmmword_1000F3CA0 + 1) = v7;
  qword_1000F3CB0 = v11;
  unk_1000F3CB8 = v15;
}

void sub_10005E1B0()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 600);

  v1 = v0;
  sub_100025A38();
  v3 = v2;

  v4 = *(qword_1000F3C58 + 584);

  v5 = v4;
  sub_100025A38();
  v7 = v6;

  v8 = *(qword_1000F3C58 + 568);

  v9 = v8;
  sub_100025A38();
  v11 = v10;

  v12 = *(qword_1000F3C58 + 608);

  v13 = v12;
  sub_100025A38();
  v15 = v14;

  *&xmmword_1000F3CC0 = v3;
  *(&xmmword_1000F3CC0 + 1) = v7;
  qword_1000F3CD0 = v11;
  unk_1000F3CD8 = v15;
}

uint64_t sub_10005E2D8()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 120);

  return v1;
}

uint64_t sub_10005E3D8()
{
  sub_10005E2D8();

  return _swift_deallocClassInstance(v0, 128, 7);
}

void sub_10005E430()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_1000343F8(0x2865726170657270, 0xE900000000000029, v38);
    *(v5 + 12) = 2080;
    v6 = *(v1 + 72);
    v35 = *(v1 + 56);
    v36 = v6;
    v7 = String.init<A>(describing:)();
    v9 = sub_1000343F8(v7, v8, v38);

    *(v5 + 14) = v9;
    *(v5 + 22) = 2080;
    v10 = *(v1 + 104);
    v35 = *(v1 + 88);
    v36 = v10;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000343F8(v11, v12, v38);

    *(v5 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.from=%s, self.to=%s", v5, 0x20u);
    swift_arrayDestroy();
  }

  v14 = [*(v1 + 16) scrollView];
  [v14 setClipsToBounds:0];

  v15 = *(v1 + 32);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 clearColor];
    [v17 setBackgroundColor:v18];
  }

  v19 = [*(v1 + 16) view];
  if (v19)
  {
    v20 = v19;
    v21 = *(v1 + 24);
    v22 = sub_100046DF0(&_swiftEmptyArrayStorage);
    v38[0] = v22;
    v23 = sub_10008564C(v21);
    if (v23)
    {
      v37 = v23;
      sub_100085850();

      sub_10005DDB4(v37, v38);

      v22 = v38[0];
    }

    else
    {
    }

    v25 = *(v1 + 120);
    *(v1 + 120) = v22;

    v26 = [*(v1 + 24) layer];
    sub_1000056EC(&qword_1000DBD80, &qword_100093928);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000938F0;
    v28 = *(v1 + 56);
    v29 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v29 setValue:isa forKey:kCAFilterInputRadius];

    *(v27 + 56) = sub_10000ED88(0, &qword_1000DBD88, CAFilter_ptr);
    *(v27 + 32) = v29;
    v31 = Array._bridgeToObjectiveC()().super.isa;

    [v26 setFilters:v31];

    v32 = [*(v1 + 24) layer];
    [v32 setTransform:{&v35, sub_10005F2DC(&v35, *(v1 + 72), *(v1 + 64))}];

    v33 = [*(v1 + 24) layer];
    v34 = *(v1 + 80);
    *&v34 = v34;
    [v33 setOpacity:v34];
  }

  else
  {
    __break(1u);
  }
}

void sub_10005E8C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E01E0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v41 = a2;
    *&aBlock = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5AB0, &aBlock);
    *(v9 + 12) = 2080;
    *&v42[0] = *(v3 + 40);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000343F8(v10, v11, &aBlock);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    *&v42[0] = *(v3 + 48);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000343F8(v13, v14, &aBlock);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: self.delay=%s, self.duration=%s", v9, 0x20u);
    swift_arrayDestroy();
  }

  v16 = objc_opt_self();
  [v16 begin];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v46 = sub_10005F9D4;
  v47 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_100035630;
  v45 = &unk_1000CA918;
  v18 = _Block_copy(&aBlock);

  sub_10000B16C(a1);

  [v16 setCompletionBlock:v18];
  _Block_release(v18);
  if (qword_1000D97C8 != -1)
  {
    swift_once();
  }

  [v16 setAnimationTimingFunction:{qword_1000E01F8, v41, *&v42[0]}];
  *&aBlock = 0x2E737265746C6966;
  *(&aBlock + 1) = 0xE800000000000000;
  v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v21);

  sub_10000ED88(0, &qword_1000E03C0, CABasicAnimation_ptr);
  v22 = sub_10005EEF0(*(v3 + 48), *(v3 + 40));
  v23 = *(v3 + 56);
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v22 setFromValue:isa];

  v25 = *(v3 + 88);
  v26 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v22 setToValue:v26];

  v27 = [*(v3 + 24) layer];
  v28 = String._bridgeToObjectiveC()();
  [v27 addAnimation:v22 forKey:v28];

  v29 = sub_10005EEF0(*(v3 + 48), *(v3 + 40));
  sub_10005F2DC(v42, *(v3 + 72), *(v3 + 64));
  v30 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v29 setFromValue:v30];

  sub_10005F2DC(&aBlock, *(v3 + 104), *(v3 + 96));
  v31 = CATransform3D._bridgeToObjectiveC()().super.isa;
  [v29 setToValue:v31];

  v32 = [*(v3 + 24) layer];
  v33 = String._bridgeToObjectiveC()();
  [v32 addAnimation:v29 forKey:v33];

  v34 = sub_10005EEF0(*(v3 + 48), *(v3 + 40));
  v35 = *(v3 + 80);
  v36 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v34 setFromValue:v36];

  v37 = *(v3 + 112);
  v38 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v34 setToValue:v38];

  v39 = [*(v3 + 24) layer];
  v40 = String._bridgeToObjectiveC()();
  [v39 addAnimation:v34 forKey:v40];

  [v16 commit];
}

id sub_10005EEF0(double a1, double a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();

  v6 = [ObjCClassFromMetadata animationWithKeyPath:v5];

  v7 = v6;
  [v7 setDuration:a1];
  [v7 setFillMode:kCAFillModeForwards];
  [v7 setRemovedOnCompletion:0];
  v8 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  [v7 setTimingFunction:v8];

  [v7 setBeginTime:CACurrentMediaTime() + a2];
  return v7;
}

void sub_10005F028()
{
  v1 = v0;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E01E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v23[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x6574656C706D6F63, 0xEA00000000002928, v23);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  [*(v1 + 16) externalAnimationsEnded];
  v7 = *(v1 + 32);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 systemBackgroundColor];
    [v9 setBackgroundColor:v10];
  }

  v11 = [*(v1 + 16) view];
  if (v11)
  {
    v12 = v11;
    v13 = *(v1 + 120);
    v14 = *(v1 + 24);

    sub_1000854F4(v14, v13);

    v15 = [*(v1 + 24) layer];
    [v15 setFilters:0];

    v16 = [*(v1 + 24) layer];
    v17 = *&CATransform3DIdentity.m33;
    v23[4] = *&CATransform3DIdentity.m31;
    v23[5] = v17;
    v18 = *&CATransform3DIdentity.m43;
    v23[6] = *&CATransform3DIdentity.m41;
    v23[7] = v18;
    v19 = *&CATransform3DIdentity.m13;
    v23[0] = *&CATransform3DIdentity.m11;
    v23[1] = v19;
    v20 = *&CATransform3DIdentity.m23;
    v23[2] = *&CATransform3DIdentity.m21;
    v23[3] = v20;
    [v16 setTransform:v23];

    v21 = [*(v1 + 24) layer];
    LODWORD(v22) = 1.0;
    [v21 setOpacity:v22];
  }

  else
  {
    __break(1u);
  }
}

CGFloat sub_10005F2DC@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  CATransform3DMakeScale(&v22, a2, a2, 1.0);
  [*(v3 + 24) center];
  v8 = v7;
  if (qword_1000D97B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000047A0(v9, qword_1000E01E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8 * a3;
    _os_log_impl(&_mh_execute_header, v10, v11, "OffsetY: %f", v12, 0xCu);
  }

  [*(v4 + 24) center];
  CATransform3DMakeTranslation(&v19, 0.0, v13 * a3, 0.0);
  a = v22;
  CATransform3DConcat(&v21, &a, &v19);
  v14 = *&v21.m33;
  a1[4] = *&v21.m31;
  a1[5] = v14;
  v15 = *&v21.m43;
  a1[6] = *&v21.m41;
  a1[7] = v15;
  v16 = *&v21.m13;
  *a1 = *&v21.m11;
  a1[1] = v16;
  result = v21.m21;
  v18 = *&v21.m23;
  a1[2] = *&v21.m21;
  a1[3] = v18;
  return result;
}

id sub_10005F494()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1046227190;
  LODWORD(v2) = 1058810102;
  LODWORD(v3) = 1052099215;
  LODWORD(v4) = 1.0;
  result = [v0 initWithControlPoints:v1 :v2 :v3 :v4];
  qword_1000E01F8 = result;
  return result;
}

void sub_10005F518(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_10005F550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000056EC(qword_1000DED00, &qword_100096A70);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_10005F7B4()
{
  v1 = v0;
  sub_1000056EC(qword_1000DED00, &qword_100096A70);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

uint64_t sub_10005F910(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = xmmword_100097A80;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v3 + 72) = _Q0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = _Q0;
  *(v3 + 120) = sub_100046DF0(&_swiftEmptyArrayStorage);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v12 = *(v3 + 32);
  *(v3 + 32) = a3;
  v13 = a3;

  return v3;
}

uint64_t sub_10005F98C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005F9D4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_10005F028();
  if (v1)
  {
    v1();
  }
}

uint64_t sub_10005FA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10005FA30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_10005FA44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005FA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float a5@<S1>)
{
  v10 = sub_1000056EC(&qword_1000DBCD8, &qword_1000937A0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = (v40 - v18);
  v20 = sub_10005FEE8(a1);
  v22 = v21;
  *v19 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for CAImage();
  v24 = v19 + v23[5];
  v40[0] = 0uLL;
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  State.init(wrappedValue:)();
  v25 = v45;
  *v24 = v44;
  *(v24 + 2) = v25;
  v26 = (v19 + v23[7]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v19 + v23[6]);
  *v27 = v20;
  v27[1] = v22;
  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  v29 = (v19 + *(v11 + 44));
  v30 = v58;
  *v29 = v57;
  v29[1] = v30;
  v29[2] = v59;
  v31 = a4 / 176.0;
  if (a4 / 176.0 * 40.0 > a4 / 176.0 * 50.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  v33 = v31 * 10.0;
  if (v31 * 10.0 > v31 * 20.0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (a5 > 0.0)
  {
    if (a5 >= 1.0)
    {
      v33 = v31 * 20.0;
    }

    else
    {
      v33 = v31 * 20.0 * a5 + v33 * (1.0 - a5);
    }
  }

  v34 = static Animation.linear(duration:)();
  sub_10001A510(v19, v16, &qword_1000DBCD8, &qword_1000937A0);
  sub_10001A510(v16, a3, &qword_1000DBCD8, &qword_1000937A0);
  v35 = (a3 + *(sub_1000056EC(&qword_1000E03D0, &qword_100097C48) + 48));
  *&v40[0] = KeyPath;
  *(&v40[0] + 1) = a2;
  v36 = v54;
  v37 = v55;
  v40[1] = v54;
  v40[2] = v55;
  v41 = v56;
  *&v42 = a5;
  *(&v42 + 1) = a5;
  *v43 = v33;
  BYTE8(v43[0]) = 0;
  *&v43[1] = v34;
  *(&v43[1] + 2) = a5;
  *v35 = v40[0];
  v35[1] = v36;
  *(v35 + 92) = *(v43 + 12);
  v38 = v41;
  v39 = v43[0];
  v35[4] = v42;
  v35[5] = v39;
  v35[2] = v37;
  v35[3] = v38;
  sub_10001A510(v40, &v44, &qword_1000E03D8, &qword_100097C50);
  sub_10000A628(v19, &qword_1000DBCD8, &qword_1000937A0);
  *&v44 = KeyPath;
  *(&v44 + 1) = a2;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v48 = a5;
  v49 = a5;
  v50 = v33;
  v51 = 0;
  v52 = v34;
  v53 = a5;
  sub_10000A628(&v44, &qword_1000E03D8, &qword_100097C50);
  return sub_10000A628(v16, &qword_1000DBCD8, &qword_1000937A0);
}

unint64_t sub_10005FEE8(uint64_t a1)
{
  v1 = 0x5F646F70656D6F68;
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000011;
  if (a1 != 7)
  {
    v3 = 0x5F646F70656D6F68;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  if (a1 == 5)
  {
    v2 = 0x5F646F70656D6F68;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 4)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005FFAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = sub_1000056EC(&qword_1000E03C8, &unk_100097BC8);
  return sub_10005FAFC(v4, v5, a1 + *(v8 + 44), v3, v6);
}

unint64_t sub_100060034()
{
  result = qword_1000E03E0;
  if (!qword_1000E03E0)
  {
    sub_100005818(&qword_1000E03E8, qword_100097C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E03E0);
  }

  return result;
}
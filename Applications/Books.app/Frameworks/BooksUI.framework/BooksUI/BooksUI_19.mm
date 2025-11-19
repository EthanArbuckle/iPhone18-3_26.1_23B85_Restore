uint64_t sub_1EA4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PaginatedResourceSetIntent.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PaginatedResourceSetIntent.init(href:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

unint64_t PaginatedResourceSetIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  sub_2EF0(&qword_325530, &qword_287E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  *(inited + 32) = 1717924456;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = 0x74696D696CLL;
  *(inited + 72) = 0xE500000000000000;

  if (v6)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_264EB0();
  }

  *(inited + 80) = v8;
  *(inited + 88) = v9;
  v10 = sub_F840(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_325538, &qword_287E88);
  swift_arrayDestroy();
  a1[3] = sub_2EF0(&qword_325540, &unk_287E90);
  result = sub_1EAC74();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1EA6E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1717924456 && a2 == 0xE400000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int HostingViewBarType.hashValue.getter(char a1)
{
  sub_265050();
  sub_265060(a1 & 1);
  return sub_265080();
}

uint64_t sub_1EA828(char a1)
{
  if (a1)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 1717924456;
  }
}

Swift::Int sub_1EA884(uint64_t a1, uint64_t a2)
{
  sub_265050();
  v4 = *(a2 + 16);
  HostingViewBarType.hash(into:)(v6, *v2);
  return sub_265080();
}

uint64_t sub_1EA8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1EA6E0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1EA908@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_448FC();
  *a2 = result;
  return result;
}

uint64_t sub_1EA934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1EA988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PaginatedResourceSetIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  type metadata accessor for PaginatedResourceSetIntent.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_264E20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v10 = v19;
  v21 = 0;
  v11 = sub_264DC0();
  v13 = v12;
  v18 = v11;
  v20 = 1;
  v14 = sub_264DA0();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  *v10 = v18;
  *(v10 + 8) = v13;
  *(v10 + 16) = v14;
  *(v10 + 24) = v16 & 1;

  sub_3080(a1);
}

unint64_t sub_1EABF4@<X0>(void *a1@<X8>)
{
  result = static PaginatedResourceSetIntent.kind.getter();
  *a1 = 0xD00000000000001ALL;
  a1[1] = v3;
  return result;
}

unint64_t sub_1EAC74()
{
  result = qword_325548;
  if (!qword_325548)
  {
    sub_2F9C(&qword_325540, &unk_287E90);
    sub_1EACF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325548);
  }

  return result;
}

unint64_t sub_1EACF8()
{
  result = qword_325550[0];
  if (!qword_325550[0])
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_325550);
  }

  return result;
}

uint64_t sub_1EAD8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1EADE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1EAE1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1EAE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CoverContainer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1EAF50(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = sub_2EF0(&qword_3256E0, &qword_288228);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22[-v13];
  if (a8)
  {
    goto LABEL_4;
  }

  sub_261770();
  v22[56] = a2 & 1;
  v22[48] = a4 & 1;
  v22[40] = v15 & 1;
  v22[32] = v16 & 1;
  if (sub_261780() & 1) != 0 || (sub_261790(), v22[24] = a2 & 1, v22[16] = a4 & 1, v22[8] = v17 & 1, v22[0] = v18 & 1, result = sub_261780(), (result))
  {
LABEL_4:
    sub_1A74B0(v14);
    v20 = sub_261490();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      return sub_1EB4F4(v14);
    }

    else
    {
      v22[72] = a2 & 1;
      v22[64] = a4 & 1;
      sub_261470();
      return (*(v21 + 8))(v14, v20);
    }
  }

  return result;
}

uint64_t sub_1EB1B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v19 = sub_2EF0(&qword_3256E0, &qword_288228);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v26[-v21];
  if ((a12 & 1) == 0)
  {
    a6 = 0;
    a8 = 0;
  }

  sub_1A74B0(&v26[-v21]);
  v23 = sub_261490();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1EB4F4(v22);
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMidX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMaxY(v28);
  sub_263710();
  v26[8] = a6 & 1;
  v26[0] = a8 & 1;
  sub_261480();
  return (*(v24 + 8))(v22, v23);
}

void (*sub_1EB414(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

unint64_t sub_1EB4A0()
{
  result = qword_3256D8;
  if (!qword_3256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3256D8);
  }

  return result;
}

uint64_t sub_1EB4F4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3256E0, &qword_288228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1EB584(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t UIImage.cornerRadius(_:)(double a1)
{
  v3 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v1 scale];
  [v3 setScale:?];
  [v1 size];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v3 format:{v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1EB948;
  *(v8 + 24) = v7;
  v13[4] = sub_1EB964;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1EB584;
  v13[3] = &unk_310550;
  v9 = _Block_copy(v13);
  v10 = v1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void sub_1EB7D4(void *a1, id a2, double a3)
{
  [a2 size];
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v6, v8, a3}];
  [v10 setLineJoinStyle:1];
  [v10 setLineCapStyle:1];
  [v10 closePath];
  c = [a1 CGContext];
  CGContextSaveGState(c);
  [v10 addClip];
  [a2 drawInRect:{0.0, 0.0, v7, v9}];
  CGContextRestoreGState(c);
}

uint64_t sub_1EB910()
{

  return swift_deallocObject();
}

uint64_t sub_1EB964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1EB98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EmptyComponentModel.init(id:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  v8 = a4 + 40;
  sub_34A0(v13, a4 + 40, &qword_315D38, &unk_266E30);
  v9 = *(type metadata accessor for EmptyComponentModel() + 24);
  v10 = sub_263E50();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  sub_34A0(a2, v8, &qword_315D38, &unk_266E30);
  return sub_34A0(a3, a4 + v9, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for EmptyComponentModel()
{
  result = qword_325770;
  if (!qword_325770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmptyComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for EmptyComponentModel();
  sub_8198(v1 + *(v7 + 24), v6, &qword_315D40, &qword_288230);
  return sub_8200(v6, a1);
}

uint64_t sub_1EBBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for EmptyComponentModel();
  sub_8198(a1 + *(v8 + 24), v7, &qword_315D40, &qword_288230);
  return sub_8200(v7, a2);
}

uint64_t sub_1EBD04(uint64_t a1)
{
  v2 = sub_1EBFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1EBD40(uint64_t a1)
{
  v2 = sub_1EBFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmptyComponentModel.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_3256E8, &qword_288238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1EBFD8();
  sub_265140();
  v11[15] = 0;
  sub_2EF0(&qword_315D28, &qword_266E20);
  sub_8E38(&qword_322ED8, &qword_315D28, &qword_266E20);
  sub_264E90();
  if (!v1)
  {
    v11[14] = 1;
    sub_2EF0(&qword_315D30, &qword_266E28);
    sub_8E38(&qword_322EE0, &qword_315D30, &qword_266E28);
    sub_264E90();
    v9 = *(type metadata accessor for EmptyComponentModel() + 24);
    v11[13] = 2;
    sub_2EF0(&qword_315D40, &qword_288230);
    sub_1A25A0();
    sub_264E90();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1EBFD8()
{
  result = qword_3256F0;
  if (!qword_3256F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3256F0);
  }

  return result;
}

uint64_t EmptyComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_2EF0(&qword_3256F8, &qword_288240);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for EmptyComponentModel();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v16 = (v15 + 40);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  sub_34A0(&v33, (v15 + 40), &qword_315D38, &unk_266E30);
  v17 = *(v12 + 32);
  v18 = sub_263E50();
  v19 = *(*(v18 - 8) + 56);
  v32 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = a1[3];
  v21 = a1[4];
  v31 = a1;
  sub_2E18(a1, v20);
  sub_1EBFD8();
  v22 = v30;
  sub_265120();
  if (v22)
  {
    sub_3080(v31);
    sub_8E80(v16, &qword_315D30, &qword_266E28);
    return sub_8E80(&v15[v32], &qword_315D40, &qword_288230);
  }

  else
  {
    v30 = v6;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v36 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20);
    v23 = v29;
    sub_264DF0();
    v24 = v34;
    *v15 = v33;
    *(v15 + 1) = v24;
    *(v15 + 4) = v35;
    sub_2EF0(&qword_315D30, &qword_266E28);
    v36 = 1;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28);
    sub_264DF0();
    sub_34A0(&v33, v16, &qword_315D30, &qword_266E28);
    LOBYTE(v33) = 2;
    sub_8EE0();
    v25 = v30;
    sub_264DF0();
    (*(v28 + 8))(v10, v23);
    sub_34A0(v25, &v15[v32], &qword_315D40, &qword_288230);
    sub_1EC4BC(v15, v27);
    sub_3080(v31);
    return sub_1EC520(v15);
  }
}

uint64_t sub_1EC4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EC520(uint64_t a1)
{
  v2 = type metadata accessor for EmptyComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EC5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_8198(v2 + *(a1 + 24), &v10 - v7, &qword_315D40, &qword_288230);
  return sub_8200(v8, a2);
}

unint64_t sub_1EC6A8()
{
  result = qword_325708;
  if (!qword_325708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325708);
  }

  return result;
}

uint64_t sub_1EC7A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1EC840()
{
  result = qword_325710;
  if (!qword_325710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325710);
  }

  return result;
}

uint64_t sub_1EC894()
{
  sub_1EC840();

  return sub_260B30();
}

double sub_1EC8D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1EC930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1ECA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1ECAE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1ECBC8()
{
  result = qword_3257B0;
  if (!qword_3257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257B0);
  }

  return result;
}

unint64_t sub_1ECC20()
{
  result = qword_3257B8;
  if (!qword_3257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257B8);
  }

  return result;
}

unint64_t sub_1ECC78()
{
  result = qword_3257C0;
  if (!qword_3257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257C0);
  }

  return result;
}

uint64_t ButtonView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0x4020000000000000;
  v9 = enum case for Font.TextStyle.subheadline(_:);
  v10 = *(v4 + 104);
  (v10)(v8, enum case for Font.TextStyle.subheadline(_:), v3, v6);
  sub_40130();
  sub_2612E0();
  v11 = type metadata accessor for ButtonView();
  v12 = v11[5];
  v16 = 0x3FF8000000000000;
  v10(v8, v9, v3);
  sub_2612E0();
  v13 = v11[6];
  *(a2 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  return sub_1F3F48(v15, a2 + v11[7], type metadata accessor for ButtonViewModel);
}

uint64_t type metadata accessor for ButtonView()
{
  result = qword_325890;
  if (!qword_325890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ECEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_319B00, &unk_26EA40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ButtonView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1F3F48(v11, a1, type metadata accessor for FontConstants.Button);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ButtonView.body.getter()
{
  v1 = type metadata accessor for BooksBorderedButtonStyle(0);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = (v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2EF0(&qword_3257C8, &qword_288548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  sub_1ED388(v17 - v8);
  v10 = type metadata accessor for ButtonView();
  sub_1F584C(v0 + *(v10 + 28), v4 + v1[8], type metadata accessor for ButtonViewModel);
  *v4 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = v1[5];
  *(v4 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v12 = v1[6];
  *(v4 + v12) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v13 = v4 + v1[7];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = sub_2F9C(&qword_3257D0, &qword_288600);
  v15 = sub_1F2EF8();
  v17[0] = v14;
  v17[1] = v15;
  swift_getOpaqueTypeConformance2();
  sub_1F44AC(&qword_325830, type metadata accessor for BooksBorderedButtonStyle);
  sub_262A60();
  sub_1F4428(v4, type metadata accessor for BooksBorderedButtonStyle);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1ED388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v43 = type metadata accessor for ButtonViewModel.Content(0);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2617C0();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261190();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_3257F8, &qword_288610);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = sub_2EF0(&qword_3257E8, &qword_288608);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v41 = sub_2EF0(&qword_3257D0, &qword_288600);
  v22 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v24 = &v40 - v23;
  sub_1ED81C(v2, v16);
  v25 = v2 + *(type metadata accessor for ButtonView() + 28);
  v26 = type metadata accessor for ButtonViewModel(0);
  if (*(v25 + v26[7]) == 2)
  {
    v27 = &enum case for ControlSize.regular(_:);
  }

  else
  {
    v27 = &enum case for ControlSize.large(_:);
  }

  (*(v9 + 104))(v12, *v27, v8);
  KeyPath = swift_getKeyPath();
  v29 = &v21[*(v18 + 44)];
  v30 = sub_2EF0(&qword_321278, &qword_27E848);
  (*(v9 + 32))(v29 + *(v30 + 28), v12, v8);
  *v29 = KeyPath;
  sub_22148(v16, v21, &qword_3257F8, &qword_288610);
  v31 = *(v25 + v26[12]);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v34 = (v31 & 1) == 0;
  v35 = v41;
  *(v33 + 16) = v34;
  sub_22148(v21, v24, &qword_3257E8, &qword_288608);
  v36 = &v24[*(v35 + 36)];
  *v36 = v32;
  v36[1] = sub_4C914;
  v36[2] = v33;
  v37 = v42;
  sub_1F584C(v25 + v26[11], v42, type metadata accessor for ButtonViewModel.Content);
  LODWORD(v32) = swift_getEnumCaseMultiPayload();
  sub_1F4428(v37, type metadata accessor for ButtonViewModel.Content);
  if (v32 == 9)
  {
    v38 = v44;
    sub_2617A0();
  }

  else
  {
    v38 = v44;
    sub_2617B0();
  }

  sub_1F2EF8();
  sub_262E70();
  (*(v45 + 8))(v38, v46);
  return sub_8E80(v24, &qword_3257D0, &qword_288600);
}

uint64_t sub_1ED81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v74 = sub_2EF0(&qword_325828, &qword_288628);
  v71 = *(v74 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v74);
  v70 = &v64 - v4;
  v69 = sub_260060();
  v68 = *(v69 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v69);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v64 - v8;
  v75 = sub_2EF0(&qword_3258D8, &qword_2886F8);
  v9 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v11 = &v64 - v10;
  v12 = sub_2604E0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonView();
  v16 = v15 - 8;
  v64 = *(v15 - 8);
  v17 = *(v64 + 64);
  __chkstk_darwin(v15);
  v65 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_316960, &unk_2689F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v64 - v20;
  v22 = sub_2EF0(&qword_325818, &qword_288620);
  v23 = *(*(v22 - 1) + 64);
  __chkstk_darwin(v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v72 = &v64 - v27;
  v28 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v16 + 36);
  v33 = type metadata accessor for ButtonViewModel(0);
  sub_1F584C(a1 + *(v33 + 52) + v32, v31, type metadata accessor for ButtonViewModel.ActionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v68;
    v35 = v73;
    v36 = v31;
    v37 = v69;
    (*(v68 + 32))(v73, v36, v69);
    v38 = (*(v34 + 16))(v66, v35, v37);
    __chkstk_darwin(v38);
    v63[1] = sub_2EF0(&qword_3258E0, &qword_288700);
    v63[2] = sub_1F3858();
    v63[0] = v63;
    v39 = v70;
    sub_263690();
    v40 = v71;
    v41 = v74;
    (*(v71 + 16))(v11, v39, v74);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_325810, &qword_325818, &qword_288620);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628);
    sub_261F80();
    (*(v40 + 8))(v39, v41);
    return (*(v34 + 8))(v73, v37);
  }

  else
  {
    v71 = a1;
    v73 = v11;
    v43 = *(v31 + 1);
    v83[0] = *v31;
    v83[1] = v43;
    v84 = *(v31 + 4);
    v44 = sub_2610B0();
    v45 = v21;
    (*(*(v44 - 8) + 56))(v21, 1, 1, v44);
    sub_8198(v83, v77, &qword_316BA0, &unk_268B90);
    v46 = v78;
    if (v78)
    {
      v47 = v79;
      v48 = sub_2E18(v77, v78);
      *(&v81 + 1) = v46;
      v82 = *(v47 + 8);
      v49 = sub_10934(&v80);
      (*(*(v46 - 8) + 16))(v49, v48, v46);
      sub_3080(v77);
    }

    else
    {
      sub_8E80(v77, &qword_316BA0, &unk_268B90);
      v80 = 0u;
      v81 = 0u;
      v82 = 0;
    }

    v50 = v65;
    sub_1F584C(v71, v65, type metadata accessor for ButtonView);
    v51 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v52 = swift_allocObject();
    sub_1F3F48(v50, v52 + v51, type metadata accessor for ButtonView);
    sub_2604C0();
    sub_260420();
    v53 = &v25[v22[9]];
    *v53 = swift_getKeyPath();
    v53[8] = 0;
    v54 = v22[10];
    *&v25[v54] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v55 = &v25[v22[11]];
    *v55 = swift_getKeyPath();
    v55[40] = 0;
    v56 = &v25[v22[12]];
    v57 = sub_2EF0(&qword_325910, &qword_2887B0);
    v56[3] = v57;
    v56[4] = sub_8E38(&qword_325918, &qword_325910, &qword_2887B0);
    v58 = sub_10934(v56);
    sub_22148(v45, v58, &qword_316960, &unk_2689F0);
    v59 = (v58 + *(v57 + 36));
    *v59 = sub_1F3EC4;
    v59[1] = v52;
    v60 = &v25[v22[13]];
    v61 = v81;
    *v60 = v80;
    *(v60 + 1) = v61;
    *(v60 + 4) = v82;
    v62 = v72;
    sub_22148(v25, v72, &qword_325818, &qword_288620);
    sub_8198(v62, v73, &qword_325818, &qword_288620);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_325810, &qword_325818, &qword_288620);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628);
    sub_261F80();
    sub_8E80(v62, &qword_325818, &qword_288620);
    return sub_8E80(v83, &qword_316BA0, &unk_268B90);
  }
}

uint64_t sub_1EE1C8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_2626C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318458, &unk_26B270);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_262730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants.Button(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_3258F8, &qword_288708);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v31 - v22;
  *v23 = sub_261D30();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_2EF0(&qword_325920, &qword_2887B8);
  sub_1EE5A0(v1, &v23[*(v24 + 44)]);
  type metadata accessor for ButtonView();
  type metadata accessor for ButtonViewModel(0);
  sub_1ECEDC(v19);
  (*(v12 + 104))(v15, enum case for Font.TextStyle.subheadline(_:), v11);
  v25 = sub_2625C0();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  sub_262650();
  sub_262680();
  sub_8E80(v10, &qword_318458, &unk_26B270);
  (*(v12 + 8))(v15, v11);
  (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v2);
  v26 = sub_2626E0();

  (*(v3 + 8))(v6, v2);
  sub_1F4428(v19, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v28 = v32;
  sub_22148(v23, v32, &qword_3258F8, &qword_288708);
  result = sub_2EF0(&qword_3258E0, &qword_288700);
  v30 = (v28 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = v26;
  return result;
}

uint64_t sub_1EE5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v241 = a2;
  v214 = type metadata accessor for DeterminateProgressViewStyle(0);
  v3 = *(*(v214 - 8) + 64);
  __chkstk_darwin(v214);
  v195 = (&v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = sub_2EF0(&qword_3210A0, &unk_27E580);
  v194 = *(v212 - 8);
  v5 = *(v194 + 64);
  __chkstk_darwin(v212);
  v192 = &v183 - v6;
  v216 = sub_2EF0(&qword_3217D8, &qword_27F0D8);
  v197 = *(v216 - 8);
  v7 = *(v197 + 64);
  __chkstk_darwin(v216);
  v196 = &v183 - v8;
  v210 = sub_2EF0(&qword_3217E8, &qword_27F0E8);
  v9 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v211 = &v183 - v10;
  v228 = sub_2EF0(&qword_3217F0, &unk_27F0F0);
  v11 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v213 = &v183 - v12;
  v215 = sub_2EF0(&qword_3217F8, &qword_27F100);
  v193 = *(v215 - 8);
  v13 = *(v193 + 64);
  __chkstk_darwin(v215);
  v191 = &v183 - v14;
  v206 = sub_2EF0(&qword_318560, &unk_26B530);
  v15 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v190 = (&v183 - v16);
  v223 = sub_2EF0(&qword_325928, &qword_2887F0);
  v17 = *(*(v223 - 8) + 64);
  __chkstk_darwin(v223);
  v225 = &v183 - v18;
  v200 = sub_2EF0(&qword_325930, &qword_2887F8);
  v19 = *(*(v200 - 8) + 64);
  __chkstk_darwin(v200);
  v202 = &v183 - v20;
  v224 = sub_2EF0(&qword_325938, &qword_288800);
  v21 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v205 = &v183 - v22;
  v236 = sub_2EF0(&qword_325940, &qword_288808);
  v23 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v229 = &v183 - v24;
  v199 = sub_2EF0(&qword_325948, &qword_288810);
  v25 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v189 = (&v183 - v26);
  v207 = sub_2EF0(&qword_325950, &qword_288818);
  v27 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v208 = &v183 - v28;
  v226 = sub_2EF0(&qword_325958, &qword_288820);
  v29 = *(*(v226 - 8) + 64);
  __chkstk_darwin(v226);
  v209 = &v183 - v30;
  v230 = sub_2EF0(&qword_325960, &qword_288828);
  v218 = *(v230 - 8);
  v31 = *(v218 + 64);
  __chkstk_darwin(v230);
  v217 = &v183 - v32;
  v238 = sub_2EF0(&qword_325968, &qword_288830);
  v33 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v240 = (&v183 - v34);
  v233 = sub_2EF0(&qword_325970, &qword_288838);
  v35 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v235 = &v183 - v36;
  v220 = sub_2EF0(&qword_325978, &qword_288840);
  v37 = *(*(v220 - 8) + 64);
  __chkstk_darwin(v220);
  v222 = &v183 - v38;
  v198 = sub_2EF0(&qword_325980, &qword_288848);
  v39 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v201 = &v183 - v40;
  v221 = sub_2EF0(&qword_325988, &qword_288850);
  v41 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v204 = &v183 - v42;
  v234 = sub_2EF0(&qword_325990, &qword_288858);
  v43 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v227 = &v183 - v44;
  v239 = sub_2EF0(&qword_325998, &qword_288860);
  v45 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v237 = &v183 - v46;
  v47 = type metadata accessor for ButtonView();
  v219 = *(v47 - 8);
  v48 = *(v219 + 64);
  __chkstk_darwin(v47);
  v49 = &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_2EF0(&qword_3259A0, &qword_288868);
  v188 = *(v203 - 8);
  v50 = *(v188 + 64);
  __chkstk_darwin(v203);
  v187 = &v183 - v51;
  v52 = sub_260BD0();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  v231 = &v183 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v183 - v56;
  v58 = type metadata accessor for ButtonViewModel.Content(0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v61 = (&v183 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = *(v47 + 28);
  v232 = a1;
  v63 = a1 + v62;
  v64 = type metadata accessor for ButtonViewModel(0);
  sub_1F584C(v63 + *(v64 + 44), v61, type metadata accessor for ButtonViewModel.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v93 = *(sub_2EF0(&qword_31E988, &qword_279108) + 48);
        v186 = v53;
        v94 = *(v53 + 32);
        v185 = v52;
        v94(v57, v61, v52);
        v95 = (v61 + v93);
        v96 = v231;
        v94(v231, v95, v52);
        v97 = sub_261E50();
        v98 = v189;
        *v189 = v97;
        *(v98 + 8) = 0x3FF0000000000000;
        *(v98 + 16) = 0;
        v99 = sub_2EF0(&qword_325A00, &qword_2888D8);
        sub_1F25B0(v57, v96, v232, (v98 + *(v99 + 44)));
        sub_8198(v98, v202, &qword_325948, &qword_288810);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_3259F0, &qword_325948, &qword_288810);
        sub_10868C();
        v100 = v205;
        sub_261F80();
        sub_8198(v100, v225, &qword_325938, &qword_288800);
        swift_storeEnumTagMultiPayload();
        sub_1F42E4();
        sub_17CBF0();
        v101 = v229;
        sub_261F80();
        sub_8E80(v100, &qword_325938, &qword_288800);
        sub_8198(v101, v235, &qword_325940, &qword_288808);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v102 = v237;
        sub_261F80();
        sub_8E80(v101, &qword_325940, &qword_288808);
        sub_8198(v102, v240, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v102, &qword_325998, &qword_288860);
        sub_8E80(v98, &qword_325948, &qword_288810);
        v103 = *(v186 + 8);
        v104 = v96;
        v105 = v185;
        v103(v104, v185);
        return (v103)(v57, v105);
      }

      else
      {
        v158 = *v61;
        ButtonViewModel.theme.getter(&v243);
        v159 = v243;

        ButtonViewModel.progressViewModel(foregroundColor:)(v159, &v246);

        v160 = v246;
        LOBYTE(v159) = BYTE8(v246);
        v161 = v247;
        sub_2EF0(&qword_318288, &unk_27F080);
        v162 = v232;
        sub_261300();
        v163 = v243;
        v164 = v162 + *(v47 + 20);
        sub_261300();
        v165 = v243;
        BYTE8(v243) = 0;
        v242 = 0x3FF0000000000000;
        *&v243 = v158;
        sub_40130();
        v166 = v192;
        sub_2612C0();
        KeyPath = swift_getKeyPath();
        v168 = v195;
        *v195 = KeyPath;
        sub_2EF0(&qword_316C18, &unk_26F830);
        swift_storeEnumTagMultiPayload();
        v169 = v214;
        v170 = *(v214 + 20);
        *(v168 + v170) = swift_getKeyPath();
        sub_2EF0(&qword_3179C0, &qword_269D60);
        swift_storeEnumTagMultiPayload();
        v171 = v168 + v169[6];
        *v171 = v163;
        *(v171 + 8) = v165;
        *(v171 + 16) = 0;
        *(v168 + v169[7]) = v160;
        *(v168 + v169[8]) = v159;
        *(v168 + v169[9]) = v161;
        *(v168 + v169[10]) = *(&v161 + 1);
        v172 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
        v173 = sub_1F44AC(&qword_321818, type metadata accessor for DeterminateProgressViewStyle);
        v174 = v196;
        v175 = v212;
        sub_2629E0();
        sub_1F4428(v168, type metadata accessor for DeterminateProgressViewStyle);
        (*(v194 + 8))(v166, v175);
        v176 = v197;
        v177 = v216;
        (*(v197 + 16))(v211, v174, v216);
        swift_storeEnumTagMultiPayload();
        v178 = type metadata accessor for InDeterminateProgressViewStyle(255);
        v179 = sub_1F44AC(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle);
        *&v246 = v175;
        *(&v246 + 1) = v178;
        *&v247 = v172;
        *(&v247 + 1) = v179;
        swift_getOpaqueTypeConformance2();
        *&v246 = v175;
        *(&v246 + 1) = v169;
        *&v247 = v172;
        *(&v247 + 1) = v173;
        swift_getOpaqueTypeConformance2();
        v180 = v213;
        sub_261F80();
        sub_8198(v180, v225, &qword_3217F0, &unk_27F0F0);
        swift_storeEnumTagMultiPayload();
        sub_1F42E4();
        sub_17CBF0();
        v181 = v229;
        sub_261F80();
        sub_8E80(v180, &qword_3217F0, &unk_27F0F0);
        sub_8198(v181, v235, &qword_325940, &qword_288808);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v182 = v237;
        sub_261F80();
        sub_8E80(v181, &qword_325940, &qword_288808);
        sub_8198(v182, v240, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v182, &qword_325998, &qword_288860);
        return (*(v176 + 8))(v174, v177);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      ButtonViewModel.theme.getter(&v243);
      v124 = v243;

      ButtonViewModel.progressViewModel(foregroundColor:)(v124, &v246);

      *&v243 = v246;
      BYTE8(v243) = BYTE8(v246);
      v244 = v247;
      v125 = v191;
      sub_170C18(&v243, v191);

      v126 = v193;
      v127 = v215;
      (*(v193 + 16))(v211, v125, v215);
      swift_storeEnumTagMultiPayload();
      v128 = type metadata accessor for InDeterminateProgressViewStyle(255);
      v129 = sub_8E38(&qword_3210A8, &qword_3210A0, &unk_27E580);
      v130 = sub_1F44AC(&qword_3210B0, type metadata accessor for InDeterminateProgressViewStyle);
      v131 = v212;
      *&v246 = v212;
      *(&v246 + 1) = v128;
      *&v247 = v129;
      *(&v247 + 1) = v130;
      swift_getOpaqueTypeConformance2();
      v132 = sub_1F44AC(&qword_321818, type metadata accessor for DeterminateProgressViewStyle);
      *&v246 = v131;
      *(&v246 + 1) = v214;
      *&v247 = v129;
      *(&v247 + 1) = v132;
      swift_getOpaqueTypeConformance2();
      v133 = v213;
      sub_261F80();
      sub_8198(v133, v225, &qword_3217F0, &unk_27F0F0);
      swift_storeEnumTagMultiPayload();
      sub_1F42E4();
      sub_17CBF0();
      v134 = v229;
      sub_261F80();
      sub_8E80(v133, &qword_3217F0, &unk_27F0F0);
      sub_8198(v134, v235, &qword_325940, &qword_288808);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v135 = v237;
      sub_261F80();
      sub_8E80(v134, &qword_325940, &qword_288808);
      sub_8198(v135, v240, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();
      sub_8E80(v135, &qword_325998, &qword_288860);
      return (*(v126 + 8))(v125, v127);
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v243 = xmmword_288500;
        *&v244 = 0;
        *(&v244 + 1) = _swiftEmptyArrayStorage;
        v245 = 0;
      }

      else
      {
        v243 = 0u;
        v244 = 0u;
        v245 = 1;
      }

      sub_261F80();
      v144 = v248;
      v145 = v247;
      v146 = v240;
      *v240 = v246;
      v146[1] = v145;
      *(v146 + 32) = v144;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      return sub_261F80();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v184 = v57;
      v186 = v53;
      v185 = v52;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v66 = v61[1];
          v229 = *v61;
          v228 = v66;
          v67 = sub_2EF0(&qword_319AF8, &qword_279110);
          v68 = *(v53 + 32);
          v68(v57, v61 + *(v67 + 48), v52);
          v69 = v53;
          v70 = *(v53 + 16);
          v71 = v231;
          v70(v231, v57, v52);
          sub_1F584C(v232, &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
          v72 = (*(v69 + 80) + 16) & ~*(v69 + 80);
        }

        else
        {
          v136 = (v61 + *(sub_2EF0(&qword_325908, &qword_288718) + 48));
          v138 = *v136;
          v137 = v136[1];
          v229 = v138;
          v228 = v137;
          v68 = *(v53 + 32);
          v68(v57, v61, v52);
          v139 = v53;
          v140 = *(v53 + 16);
          v71 = v231;
          v140(v231, v57, v52);
          sub_1F584C(v232, &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
          v72 = (*(v139 + 80) + 16) & ~*(v139 + 80);
        }

        v73 = (v54 + *(v219 + 80) + v72) & ~*(v219 + 80);
        v74 = swift_allocObject();
        v68((v74 + v72), v71, v52);
        sub_1F3F48(v49, v74 + v73, type metadata accessor for ButtonView);
        v75 = (v74 + ((v48 + v73 + 7) & 0xFFFFFFFFFFFFFFF8));
        v76 = v228;
        *v75 = v229;
        v75[1] = v76;
        sub_2EF0(&qword_322268, &qword_280838);
        sub_260A70();
        sub_260A50();
        sub_18A5E8();
        sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
        sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
        v77 = v217;
        sub_260A80();
        v78 = v218;
        v79 = v230;
        (*(v218 + 16))(v208, v77, v230);
        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_3259D0, &qword_325960, &qword_288828);
        v141 = v209;
        sub_261F80();
        sub_8198(v141, v222, &qword_325958, &qword_288820);
        swift_storeEnumTagMultiPayload();
        sub_1F40C8();
        sub_1F41A8();
        v142 = v227;
        sub_261F80();
        sub_8E80(v141, &qword_325958, &qword_288820);
        sub_8198(v142, v235, &qword_325990, &qword_288858);
        swift_storeEnumTagMultiPayload();
        sub_1F403C();
        sub_1F4258();
        v143 = v237;
        sub_261F80();
        sub_8E80(v142, &qword_325990, &qword_288858);
        sub_8198(v143, v240, &qword_325998, &qword_288860);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_3259A8, &qword_288870);
        sub_1F3FB0();
        sub_1F439C();
        sub_261F80();
        sub_8E80(v143, &qword_325998, &qword_288860);
        (*(v78 + 8))(v77, v79);
        return (*(v186 + 8))(v184, v185);
      }

      v107 = v61[1];
      v229 = *v61;
      v228 = v107;
      v225 = v61[2];
      v108 = sub_2EF0(&qword_325900, &qword_288710);
      v109 = v53;
      v110 = *(v53 + 32);
      v111 = v61 + *(v108 + 64);
      v112 = v57;
      v110(v57, v111, v52);
      v113 = v231;
      (*(v109 + 16))(v231, v112, v52);
      sub_1F584C(v232, &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
      v114 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v115 = (v54 + *(v219 + 80) + v114) & ~*(v219 + 80);
      v116 = (v48 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
      v117 = swift_allocObject();
      v110((v117 + v114), v113, v52);
      sub_1F3F48(v49, v117 + v115, type metadata accessor for ButtonView);
      v118 = (v117 + v116);
      v119 = v228;
      *v118 = v229;
      v118[1] = v119;
      v120 = v225;
      *(v117 + ((v116 + 23) & 0xFFFFFFFFFFFFFFF8)) = v225;
      v121 = v120;
      sub_2EF0(&qword_322268, &qword_280838);
      sub_260A70();
      sub_260A50();
      sub_18A5E8();
      sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
      sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
      v87 = v217;
      sub_260A80();
      v88 = v218;
      v89 = v230;
      (*(v218 + 16))(v201, v87, v230);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868);
      sub_8E38(&qword_3259D0, &qword_325960, &qword_288828);
      v122 = v204;
      sub_261F80();
      sub_8198(v122, v222, &qword_325988, &qword_288850);
      swift_storeEnumTagMultiPayload();
      sub_1F40C8();
      sub_1F41A8();
      v123 = v227;
      sub_261F80();
      sub_8E80(v122, &qword_325988, &qword_288850);
      sub_8198(v123, v235, &qword_325990, &qword_288858);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v92 = v237;
      sub_261F80();
      sub_8E80(v123, &qword_325990, &qword_288858);
      sub_8198(v92, v240, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();

LABEL_15:
      sub_8E80(v92, &qword_325998, &qword_288860);
      (*(v88 + 8))(v87, v89);
      return (*(v186 + 8))(v184, v185);
    }

    if (!EnumCaseMultiPayload)
    {
      v80 = *(v53 + 32);
      v81 = v57;
      v184 = v57;
      v80(v57, v61, v52);
      v186 = v53;
      v82 = *(v53 + 16);
      v83 = v231;
      v185 = v52;
      v82(v231, v81, v52);
      sub_1F584C(v232, &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
      v84 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v85 = (v54 + *(v219 + 80) + v84) & ~*(v219 + 80);
      v86 = swift_allocObject();
      v80((v86 + v84), v83, v52);
      sub_1F3F48(&v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v86 + v85, type metadata accessor for ButtonView);
      sub_2EF0(&qword_325A08, &qword_2888E0);
      sub_260A70();
      sub_260A50();
      sub_1F5788();
      sub_1F44AC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
      sub_1F44AC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
      v87 = v187;
      sub_260A80();
      v88 = v188;
      v89 = v203;
      (*(v188 + 16))(v201, v87, v203);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868);
      sub_8E38(&qword_3259D0, &qword_325960, &qword_288828);
      v90 = v204;
      sub_261F80();
      sub_8198(v90, v222, &qword_325988, &qword_288850);
      swift_storeEnumTagMultiPayload();
      sub_1F40C8();
      sub_1F41A8();
      v91 = v227;
      sub_261F80();
      sub_8E80(v90, &qword_325988, &qword_288850);
      sub_8198(v91, v235, &qword_325990, &qword_288858);
      swift_storeEnumTagMultiPayload();
      sub_1F403C();
      sub_1F4258();
      v92 = v237;
      sub_261F80();
      sub_8E80(v91, &qword_325990, &qword_288858);
      sub_8198(v92, v240, &qword_325998, &qword_288860);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3259A8, &qword_288870);
      sub_1F3FB0();
      sub_1F439C();
      sub_261F80();
      goto LABEL_15;
    }

    v147 = *v61;
    v148 = v61[1];
    v149 = sub_2630B0();
    v150 = v190;
    v151 = (v190 + *(v206 + 36));
    v152 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
    v153 = enum case for Image.Scale.large(_:);
    v154 = sub_2630F0();
    (*(*(v154 - 8) + 104))(v151 + v152, v153, v154);
    *v151 = swift_getKeyPath();
    *v150 = v149;
    sub_8198(v150, v202, &qword_318560, &unk_26B530);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3259F0, &qword_325948, &qword_288810);
    sub_10868C();
    v155 = v205;
    sub_261F80();
    sub_8198(v155, v225, &qword_325938, &qword_288800);
    swift_storeEnumTagMultiPayload();
    sub_1F42E4();
    sub_17CBF0();
    v156 = v229;
    sub_261F80();
    sub_8E80(v155, &qword_325938, &qword_288800);
    sub_8198(v156, v235, &qword_325940, &qword_288808);
    swift_storeEnumTagMultiPayload();
    sub_1F403C();
    sub_1F4258();
    v157 = v237;
    sub_261F80();
    sub_8E80(v156, &qword_325940, &qword_288808);
    sub_8198(v157, v240, &qword_325998, &qword_288860);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3259A8, &qword_288870);
    sub_1F3FB0();
    sub_1F439C();
    sub_261F80();
    sub_8E80(v157, &qword_325998, &qword_288860);
    return sub_8E80(v150, &qword_318560, &unk_26B530);
  }
}

uint64_t sub_1F1138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = sub_2EF0(&qword_316208, &qword_268BD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_260BD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v18 = *(v12 + 16);
  v36 = a2;
  v18(&v35 - v19, a2, v11, v17);
  KeyPath = a1;
  sub_30CC(a1, v41);
  v20 = sub_2627B0();
  v22 = v21;
  v37 = v23;
  v39 = v24;
  v25 = a3 + *(type metadata accessor for ButtonView() + 28);
  v26 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v25 + *(v26 + 56), v10, &qword_316208, &qword_268BD0);
  v27 = *(v12 + 48);
  if (v27(v10, 1, v11) == 1)
  {
    (v18)(v15, v36, v11);
    if (v27(v10, 1, v11) != 1)
    {
      sub_8E80(v10, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  sub_30CC(KeyPath, v41);
  v28 = sub_2627B0();
  v30 = v29;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v41[0] = v20;
  v41[1] = v22;
  v33 = v37 & 1;
  v42 = v37 & 1;
  v43 = v39;
  v44 = KeyPath;
  v45 = 3;
  v46 = 0;
  sub_43B58(v20, v22, v37 & 1);

  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  sub_262BF0();
  sub_39DBC(v28, v30, v32 & 1);

  sub_39DBC(v20, v22, v33);

  sub_39DBC(v20, v22, v33);
}

uint64_t sub_1F149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  v74 = a7;
  v9 = sub_262370();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  __chkstk_darwin(v9);
  v69 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = sub_2EF0(&qword_322298, &qword_280938);
  v73 = *(v75 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v60[-v13];
  v14 = sub_2EF0(&qword_316208, &qword_268BD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v60[-v16];
  v18 = sub_260BD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v23);
  v25 = *(v19 + 16);
  v63 = a2;
  v25(&v60[-v26], a2, v18, v24);
  sub_30CC(a1, &v79);
  v68 = sub_2627B0();
  v77 = v27;
  v78 = v28;
  v76 = v29;
  v30 = v64 + *(type metadata accessor for ButtonView() + 28);
  v31 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v30 + *(v31 + 56), v17, &qword_316208, &qword_268BD0);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    (v25)(v22, v63, v18);
    if (v32(v17, 1, v18) != 1)
    {
      sub_8E80(v17, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
  }

  sub_30CC(a1, &v79);
  v64 = sub_2627B0();
  v63 = v33;
  v61 = v34;
  v62 = v35;

  v36 = v67;
  sub_263110();
  v37 = sub_262900();
  v39 = v38;
  v41 = v40;
  v42 = sub_262820();
  v44 = v43;
  v46 = v45;
  sub_39DBC(v37, v39, v41 & 1);

  v47 = v68;
  v48 = sub_262820();
  v50 = v49;
  LOBYTE(v37) = v51;
  v53 = v52;
  sub_39DBC(v42, v44, v46 & 1);

  v79 = v48;
  v80 = v50;
  v81 = v37 & 1;
  v82 = v53;
  v54 = v69;
  sub_262350();
  v55 = v72;
  sub_262C70();
  (*(v70 + 8))(v54, v71);
  sub_39DBC(v48, v50, v37 & 1);

  v79 = &type metadata for Text;
  v80 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v54) = v61;
  v56 = v75;
  v57 = v64;
  v58 = v63;
  sub_262BF0();
  sub_39DBC(v57, v58, v54 & 1);

  sub_39DBC(v47, v77, v76 & 1);

  return (*(v73 + 8))(v55, v56);
}

uint64_t sub_1F1A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v66 = a4;
  v65 = a3;
  v74 = a6;
  v8 = sub_262370();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v69 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = sub_2EF0(&qword_322298, &qword_280938);
  v73 = *(v75 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v61[-v12];
  v13 = sub_2EF0(&qword_316208, &qword_268BD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v61[-v15];
  v17 = sub_260BD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v61[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v22);
  v24 = *(v18 + 16);
  v26 = a2;
  v27 = a2;
  v28 = a1;
  v24(&v61[-v25], v27, v17, v23);
  sub_30CC(a1, &v79);
  v68 = sub_2627B0();
  v77 = v29;
  v78 = v30;
  v76 = v31;
  v32 = v65 + *(type metadata accessor for ButtonView() + 28);
  v33 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v32 + *(v33 + 56), v16, &qword_316208, &qword_268BD0);
  v34 = *(v18 + 48);
  if (v34(v16, 1, v17) == 1)
  {
    (v24)(v21, v26, v17);
    if (v34(v16, 1, v17) != 1)
    {
      sub_8E80(v16, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
  }

  sub_30CC(v28, &v79);
  v65 = sub_2627B0();
  v64 = v35;
  v62 = v36;
  v63 = v37;

  sub_2630B0();
  v38 = sub_262900();
  v40 = v39;
  v42 = v41;
  v43 = sub_262820();
  v45 = v44;
  v47 = v46;
  sub_39DBC(v38, v40, v42 & 1);

  v48 = v68;
  v49 = sub_262820();
  v51 = v50;
  LOBYTE(v38) = v52;
  v54 = v53;
  sub_39DBC(v43, v45, v47 & 1);

  v79 = v49;
  v80 = v51;
  v81 = v38 & 1;
  v82 = v54;
  v55 = v69;
  sub_262350();
  v56 = v72;
  sub_262C70();
  (*(v70 + 8))(v55, v71);
  sub_39DBC(v49, v51, v38 & 1);

  v79 = &type metadata for Text;
  v80 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v49) = v62;
  v57 = v75;
  v58 = v65;
  v59 = v64;
  sub_262BF0();
  sub_39DBC(v58, v59, v49 & 1);

  sub_39DBC(v48, v77, v76 & 1);

  return (*(v73 + 8))(v56, v57);
}

uint64_t sub_1F1FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a5;
  v67 = a4;
  v65 = a3;
  v74 = a6;
  v8 = sub_262370();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v69 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2EF0(&qword_322298, &qword_280938);
  v73 = *(v75 - 8);
  v11 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = v61 - v12;
  v13 = sub_2EF0(&qword_316208, &qword_268BD0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v61 - v15;
  v17 = sub_260BD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v24 = *(v18 + 16);
  v64 = a2;
  v24(v61 - v25, a2, v17, v23);
  v26 = a1;
  sub_30CC(a1, &v79);
  v77 = sub_2627B0();
  v78 = v27;
  v29 = v28;
  v76 = v30;
  v31 = v65 + *(type metadata accessor for ButtonView() + 28);
  v32 = type metadata accessor for ButtonViewModel(0);
  sub_8198(v31 + *(v32 + 56), v16, &qword_316208, &qword_268BD0);
  v33 = *(v18 + 48);
  if (v33(v16, 1, v17) == 1)
  {
    (v24)(v21, v64, v17);
    if (v33(v16, 1, v17) != 1)
    {
      sub_8E80(v16, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
  }

  sub_30CC(v26, &v79);
  v65 = sub_2627B0();
  v64 = v34;
  v62 = v35;
  v63 = v36;
  v66 = v29;
  v37 = sub_262820();
  v39 = v38;
  v41 = v40;
  v61[1] = v42;

  sub_2630B0();
  v43 = sub_262900();
  v45 = v44;
  v47 = v46;
  v48 = sub_262820();
  v50 = v49;
  v52 = v51;
  v68 = v53;
  sub_39DBC(v43, v45, v47 & 1);

  sub_39DBC(v37, v39, v41 & 1);

  v79 = v48;
  v80 = v50;
  v81 = v52 & 1;
  v54 = v69;
  v82 = v68;
  sub_262350();
  v55 = v72;
  sub_262C70();
  (*(v70 + 8))(v54, v71);
  sub_39DBC(v48, v50, v52 & 1);

  v79 = &type metadata for Text;
  v80 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v56 = v62;
  v57 = v75;
  v58 = v65;
  v59 = v64;
  sub_262BF0();
  sub_39DBC(v58, v59, v56 & 1);

  sub_39DBC(v77, v78, v66 & 1);

  return (*(v73 + 8))(v55, v57);
}

uint64_t sub_1F25B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v76 = a4;
  v5 = sub_263640();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontConstants.Button(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_325A18, &qword_288918);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v69 = sub_2EF0(&qword_325A20, &qword_288920);
  v17 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = &v65 - v20;
  __chkstk_darwin(v21);
  v71 = &v65 - v22;
  v23 = sub_260BD0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_260B00();
  v28 = *(v67 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v67);
  v68 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v65 - v33;
  v35 = *(v24 + 16);
  v35(v27, a1, v23, v32);
  v36 = v34;
  sub_260B10();
  (v35)(v27, v65, v23);
  sub_260B10();
  v37 = v66;
  sub_1ECEDC(v11);
  v38 = _s7BooksUI13FontConstantsV6ButtonV8subtitle05SwiftB00C0Vvg_0();
  sub_1F4428(v11, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v40 = &v16[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  *&v16[*(v13 + 44)] = sub_262140();
  v41 = v37 + *(type metadata accessor for ButtonView() + 28);
  v42 = (v41 + *(type metadata accessor for ButtonViewModel(0) + 40));
  v44 = *v42;
  v43 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  if (*v42 == 2)
  {
    v47 = &enum case for BlendMode.plusLighter(_:);
  }

  else
  {
    v48 = v42[1];
    v49 = v42[2];
    v50 = v42[3];
    sub_185734(*v42);
    v47 = &enum case for BlendMode.normal(_:);
  }

  sub_185B20(v44);
  sub_185B20(2uLL);
  v52 = v74;
  v51 = v75;
  v53 = v72;
  (*(v74 + 104))(v72, *v47, v75);
  v54 = v70;
  (*(v52 + 32))(&v70[*(v69 + 36)], v53, v51);
  sub_22148(v16, v54, &qword_325A18, &qword_288918);
  v55 = v71;
  sub_22148(v54, v71, &qword_325A20, &qword_288920);
  v56 = v28;
  v57 = *(v28 + 16);
  v59 = v67;
  v58 = v68;
  v57(v68, v36, v67);
  v60 = v73;
  sub_8198(v55, v73, &qword_325A20, &qword_288920);
  v61 = v76;
  v57(v76, v58, v59);
  v62 = sub_2EF0(&qword_325A28, &qword_288928);
  sub_8198(v60, &v61[*(v62 + 48)], &qword_325A20, &qword_288920);
  sub_8E80(v55, &qword_325A20, &qword_288920);
  v63 = *(v56 + 8);
  v63(v36, v59);
  sub_8E80(v60, &qword_325A20, &qword_288920);
  return (v63)(v58, v59);
}

uint64_t sub_1F2B70@<X0>(uint64_t a1@<X8>)
{
  sub_1F37A0();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1F2BC8(uint64_t a1)
{
  sub_1DB208(*a1, *(a1 + 8));
  sub_1F37A0();
  return sub_261CC0();
}

uint64_t sub_1F2C24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  sub_261990();
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  v10 = sub_261170();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v9, v2);
  v12 = sub_263640();
  v13 = &enum case for BlendMode.multiply(_:);
  if ((v10 & 1) == 0)
  {
    v13 = &enum case for BlendMode.screen(_:);
  }

  return (*(*(v12 - 8) + 104))(a1, *v13, v12);
}

unint64_t sub_1F2DBC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    sub_1DB208(*a1, v4);
    v5 = v4;
  }

  sub_1DDE58(v3, v5);
  result = sub_1DDE58(0, 3);
  *a2 = v4 < 3;
  return result;
}

uint64_t sub_1F2E98@<X0>(uint64_t a1@<X8>)
{
  sub_1F37A0();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1F2EF8()
{
  result = qword_3257D8;
  if (!qword_3257D8)
  {
    sub_2F9C(&qword_3257D0, &qword_288600);
    sub_1F2FB0();
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257D8);
  }

  return result;
}

unint64_t sub_1F2FB0()
{
  result = qword_3257E0;
  if (!qword_3257E0)
  {
    sub_2F9C(&qword_3257E8, &qword_288608);
    sub_1F3068();
    sub_8E38(&qword_321298, &qword_321278, &qword_27E848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257E0);
  }

  return result;
}

unint64_t sub_1F3068()
{
  result = qword_3257F0;
  if (!qword_3257F0)
  {
    sub_2F9C(&qword_3257F8, &qword_288610);
    sub_1F30EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3257F0);
  }

  return result;
}

unint64_t sub_1F30EC()
{
  result = qword_325800;
  if (!qword_325800)
  {
    sub_2F9C(&qword_325808, &qword_288618);
    sub_8E38(&qword_325810, &qword_325818, &qword_288620);
    sub_8E38(&qword_325820, &qword_325828, &qword_288628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325800);
  }

  return result;
}

uint64_t sub_1F3200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = type metadata accessor for ButtonViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1F336C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = type metadata accessor for ButtonViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_1F34D0()
{
  sub_4BCBC();
  if (v0 <= 0x3F)
  {
    sub_1F356C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ButtonViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1F356C()
{
  if (!qword_31B468)
  {
    type metadata accessor for FontConstants.Button(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31B468);
    }
  }
}

uint64_t sub_1F35C4()
{
  sub_2F9C(&qword_3257C8, &qword_288548);
  type metadata accessor for BooksBorderedButtonStyle(255);
  sub_2F9C(&qword_3257D0, &qword_288600);
  sub_1F2EF8();
  swift_getOpaqueTypeConformance2();
  sub_1F44AC(&qword_325830, type metadata accessor for BooksBorderedButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1F36D8(uint64_t a1)
{
  v2 = sub_261190();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_2619C0();
}

unint64_t sub_1F37A0()
{
  result = qword_3258D0;
  if (!qword_3258D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3258D0);
  }

  return result;
}

unint64_t sub_1F3858()
{
  result = qword_3258E8;
  if (!qword_3258E8)
  {
    sub_2F9C(&qword_3258E0, &qword_288700);
    sub_8E38(&qword_3258F0, &qword_3258F8, &qword_288708);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3258E8);
  }

  return result;
}

uint64_t sub_1F393C()
{
  v1 = type metadata accessor for ButtonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + ((v2 + 16) & ~v2);
  v5 = sub_2EF0(&qword_318288, &unk_27F080);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[5], v5);
  v7 = (v4 + v1[6]);
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
  }

  else
  {
    v10 = *v7;
  }

  v11 = v4 + v1[7];
  v6(v11, v5);
  v12 = type metadata accessor for ButtonViewModel(0);
  v6(v11 + v12[5], v5);
  v13 = v12[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  else
  {
    v15 = *(v11 + v13);
  }

  v16 = (v11 + v12[10]);
  if (*v16 >= 3uLL)
  {

    v17 = v16[1];

    v18 = v16[2];

    v19 = v16[3];
  }

  v20 = v11 + v12[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = sub_260BD0();
      (*(*(v27 - 8) + 8))(v20, v27);
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_24;
      }

      v22 = *(v20 + 8);

      v23 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
      goto LABEL_20;
    }

    v30 = *(v20 + 8);
    goto LABEL_23;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v28 = *(v20 + 8);

      v23 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
LABEL_20:
      v29 = sub_260BD0();
      (*(*(v29 - 8) + 8))(v20 + v23, v29);
      break;
    case 4:
      v31 = sub_260BD0();
      (*(*(v31 - 8) + 8))(v20, v31);
      v32 = *(v20 + *(sub_2EF0(&qword_325908, &qword_288718) + 48) + 8);
LABEL_23:

      break;
    case 5:
      v24 = sub_260BD0();
      v25 = *(*(v24 - 8) + 8);
      v25(v20, v24);
      v26 = sub_2EF0(&qword_31E988, &qword_279108);
      v25(v20 + *(v26 + 48), v24);
      break;
  }

LABEL_24:
  v33 = (v11 + v12[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_260060();
    (*(*(v34 - 8) + 8))(v33, v34);
  }

  else if (v33[3])
  {
    sub_3080(v33);
  }

  v35 = v12[14];
  v36 = sub_260BD0();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v11 + v35, 1, v36))
  {
    (*(v37 + 8))(v11 + v35, v36);
  }

  return swift_deallocObject();
}

uint64_t sub_1F3EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1EE1C8(a1);
}

uint64_t sub_1F3F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1F3FB0()
{
  result = qword_3259B0;
  if (!qword_3259B0)
  {
    sub_2F9C(&qword_325998, &qword_288860);
    sub_1F403C();
    sub_1F4258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259B0);
  }

  return result;
}

unint64_t sub_1F403C()
{
  result = qword_3259B8;
  if (!qword_3259B8)
  {
    sub_2F9C(&qword_325990, &qword_288858);
    sub_1F40C8();
    sub_1F41A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259B8);
  }

  return result;
}

unint64_t sub_1F40C8()
{
  result = qword_3259C0;
  if (!qword_3259C0)
  {
    sub_2F9C(&qword_325988, &qword_288850);
    sub_8E38(&qword_3259C8, &qword_3259A0, &qword_288868);
    sub_8E38(&qword_3259D0, &qword_325960, &qword_288828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259C0);
  }

  return result;
}

unint64_t sub_1F41A8()
{
  result = qword_3259D8;
  if (!qword_3259D8)
  {
    sub_2F9C(&qword_325958, &qword_288820);
    sub_8E38(&qword_3259D0, &qword_325960, &qword_288828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259D8);
  }

  return result;
}

unint64_t sub_1F4258()
{
  result = qword_3259E0;
  if (!qword_3259E0)
  {
    sub_2F9C(&qword_325940, &qword_288808);
    sub_1F42E4();
    sub_17CBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259E0);
  }

  return result;
}

unint64_t sub_1F42E4()
{
  result = qword_3259E8;
  if (!qword_3259E8)
  {
    sub_2F9C(&qword_325938, &qword_288800);
    sub_8E38(&qword_3259F0, &qword_325948, &qword_288810);
    sub_10868C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259E8);
  }

  return result;
}

unint64_t sub_1F439C()
{
  result = qword_3259F8;
  if (!qword_3259F8)
  {
    sub_2F9C(&qword_3259A8, &qword_288870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3259F8);
  }

  return result;
}

uint64_t sub_1F4428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1F44AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F44F4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ButtonView();
  v41 = *(*(v5 - 1) + 64);
  v42 = *(*(v5 - 1) + 80);
  v39 = v1;
  v6 = v1;
  v7 = *(v2 + 8);
  v7(v0 + v3, v6);
  v43 = v0;
  v40 = (v3 + v4 + v42) & ~v42;
  v8 = v0 + v40;
  v9 = sub_2EF0(&qword_318288, &unk_27F080);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v40, v9);
  v10(v0 + v40 + v5[5], v9);
  v11 = (v0 + v40 + v5[6]);
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    v14 = *v11;
  }

  v15 = v8 + v5[7];
  v10(v15, v9);
  v16 = type metadata accessor for ButtonViewModel(0);
  v10(v15 + v16[5], v9);
  v17 = v16[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_261180();
    (*(*(v18 - 8) + 8))(v15 + v17, v18);
  }

  else
  {
    v19 = *(v15 + v17);
  }

  v20 = (v15 + v16[10]);
  if (*v20 >= 3uLL)
  {

    v21 = v20[1];

    v22 = v20[2];

    v23 = v20[3];
  }

  v24 = v15 + v16[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v31 = *(v24 + 8);

        v28 = &qword_319AF8;
        v29 = &qword_279110;
        break;
      case 4:
        v7(v24, v39);
        v33 = *(v24 + *(sub_2EF0(&qword_325908, &qword_288718) + 48) + 8);
        goto LABEL_25;
      case 5:
        v7(v24, v39);
        v28 = &qword_31E988;
        v29 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v27 = *(sub_2EF0(v28, v29) + 48);
LABEL_21:
    v30 = v24 + v27;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v30 = v24;
LABEL_22:
    v7(v30, v39);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v26 = *(v24 + 8);

    v27 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

  v32 = *(v24 + 8);
LABEL_25:

LABEL_26:
  v34 = (v15 + v16[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_260060();
    (*(*(v35 - 8) + 8))(v34, v35);
  }

  else if (v34[3])
  {
    sub_3080(v34);
  }

  v36 = v16[14];
  if (!(*(v2 + 48))(v15 + v36, 1, v39))
  {
    v7(v15 + v36, v39);
  }

  v37 = *(v43 + ((v41 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1F4A1C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_260BD0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ButtonView() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a2(a1, v2 + v5, v2 + v8, v10, v11);
}

uint64_t sub_1F4B44()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ButtonView();
  v6 = *(*(v5 - 1) + 80);
  v45 = *(*(v5 - 1) + 64);
  v43 = *(v2 + 8);
  v43(v0 + v3, v1);
  v44 = (v3 + v4 + v6) & ~v6;
  v7 = v0 + v44;
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v44, v8);
  v9(v0 + v44 + v5[5], v8);
  v10 = (v0 + v44 + v5[6]);
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v0;
    v12 = v1;
    v13 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v14 = sub_261690();
    v15 = v10 + v13;
    v1 = v12;
    v0 = v11;
    (*(*(v14 - 8) + 8))(v15, v14);
  }

  else
  {
    v16 = *v10;
  }

  v17 = v7 + v5[7];
  v9(v17, v8);
  v18 = type metadata accessor for ButtonViewModel(0);
  v9(v17 + v18[5], v8);
  v19 = v18[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_261180();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  else
  {
    v21 = *(v17 + v19);
  }

  v22 = (v17 + v18[10]);
  if (*v22 >= 3uLL)
  {

    v23 = v22[1];

    v24 = v22[2];

    v25 = v22[3];
  }

  v26 = v17 + v18[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v33 = *(v26 + 8);

        v30 = &qword_319AF8;
        v31 = &qword_279110;
        break;
      case 4:
        v43(v26, v1);
        v35 = *(v26 + *(sub_2EF0(&qword_325908, &qword_288718) + 48) + 8);
        goto LABEL_25;
      case 5:
        v43(v26, v1);
        v30 = &qword_31E988;
        v31 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v29 = *(sub_2EF0(v30, v31) + 48);
LABEL_21:
    v32 = v26 + v29;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = v26;
LABEL_22:
    v43(v32, v1);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v28 = *(v26 + 8);

    v29 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

  v34 = *(v26 + 8);
LABEL_25:

LABEL_26:
  v36 = (v17 + v18[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = sub_260060();
    (*(*(v37 - 8) + 8))(v36, v37);
  }

  else if (v36[3])
  {
    sub_3080(v36);
  }

  v38 = v18[14];
  if (!(*(v2 + 48))(v17 + v38, 1, v1))
  {
    v43(v17 + v38, v1);
  }

  v39 = (v45 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v0 + v39 + 8);

  return swift_deallocObject();
}

uint64_t sub_1F5078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ButtonView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v2 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v2 + v11);

  return sub_1F149C(a1, v2 + v6, v2 + v9, v13, v14, v15, a2);
}

uint64_t sub_1F5198()
{
  v1 = v0;
  v2 = sub_260BD0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for ButtonView();
  v38 = *(*(v6 - 1) + 80);
  v39 = *(*(v6 - 1) + 64);
  v37 = *(v3 + 8);
  v37(v1 + v4, v2);
  v7 = v1 + ((v4 + v5 + v38) & ~v38);
  v8 = sub_2EF0(&qword_318288, &unk_27F080);
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v6[5], v8);
  v10 = (v7 + v6[6]);
  sub_2EF0(&qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  else
  {
    v13 = *v10;
  }

  v14 = v7 + v6[7];
  v9(v14, v8);
  v15 = type metadata accessor for ButtonViewModel(0);
  v9(v14 + v15[5], v8);
  v16 = v15[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_261180();
    (*(*(v17 - 8) + 8))(v14 + v16, v17);
  }

  else
  {
    v18 = *(v14 + v16);
  }

  v19 = (v14 + v15[10]);
  if (*v19 >= 3uLL)
  {

    v20 = v19[1];

    v21 = v19[2];

    v22 = v19[3];
  }

  v23 = v14 + v15[11];
  type metadata accessor for ButtonViewModel.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v30 = *(v23 + 8);

        v27 = &qword_319AF8;
        v28 = &qword_279110;
        break;
      case 4:
        v37(v23, v2);
        v32 = *(v23 + *(sub_2EF0(&qword_325908, &qword_288718) + 48) + 8);
        goto LABEL_25;
      case 5:
        v37(v23, v2);
        v27 = &qword_31E988;
        v28 = &qword_279108;
        break;
      default:
        goto LABEL_26;
    }

    v26 = *(sub_2EF0(v27, v28) + 48);
LABEL_21:
    v29 = v23 + v26;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = v23;
LABEL_22:
    v37(v29, v2);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_26;
    }

    v25 = *(v23 + 8);

    v26 = *(sub_2EF0(&qword_325900, &qword_288710) + 64);
    goto LABEL_21;
  }

  v31 = *(v23 + 8);
LABEL_25:

LABEL_26:
  v33 = (v14 + v15[13]);
  type metadata accessor for ButtonViewModel.ActionKind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_260060();
    (*(*(v34 - 8) + 8))(v33, v34);
  }

  else if (v33[3])
  {
    sub_3080(v33);
  }

  v35 = v15[14];
  if (!(*(v3 + 48))(v14 + v35, 1, v2))
  {
    v37(v14 + v35, v2);
  }

  return swift_deallocObject();
}

uint64_t sub_1F56A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ButtonView() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1F1138(a1, v2 + v6, v9, a2);
}

unint64_t sub_1F5788()
{
  result = qword_325A10;
  if (!qword_325A10)
  {
    sub_2F9C(&qword_325A08, &qword_2888E0);
    sub_58070();
    sub_1F44AC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A10);
  }

  return result;
}

uint64_t sub_1F584C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F58B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1F7F4C(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1F5A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C18, &unk_26F830);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for InteractiveStarRatingView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2616C0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t InteractiveStarRatingView.init(value:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  *a5 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for InteractiveStarRatingView();
  v13 = v12[5];
  *(a5 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_2631D0();
  v14 = a5 + v12[7];
  sub_2EF0(&qword_319918, &qword_273BF0);
  sub_2631D0();

  *v14 = v18;
  v14[8] = v19;
  *(v14 + 2) = v20;
  *(a5 + v12[10]) = 5;
  *(a5 + v12[11]) = 0x4046800000000000;
  *(a5 + v12[12]) = 0x4044800000000000;
  v16 = a5 + v12[8];
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a6;
  if (a4)
  {
    a3 = 0;
    *(a5 + v12[9]) = 0;
  }

  else
  {
    *(a5 + v12[9]) = a3;
  }

  v17 = (a5 + v12[6]);
  *v17 = a3;
  v17[1] = 0;
  return result;
}

uint64_t type metadata accessor for InteractiveStarRatingView()
{
  result = qword_325B18;
  if (!qword_325B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InteractiveStarRatingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v70 = sub_261FB0();
  v3 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2611D0();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  __chkstk_darwin(v5);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_325A30, &qword_288990);
  v80 = *(v8 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v8);
  v79 = &v59 - v10;
  v11 = sub_2EF0(&qword_325A38, &qword_288998);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v68 = sub_262370();
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InteractiveStarRatingView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v21;
  v23 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2EF0(&qword_325A40, &qword_2889A0);
  v24 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v26 = &v59 - v25;
  v86 = sub_2EF0(&qword_325A48, &qword_2889A8);
  v27 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v85 = &v59 - v28;
  v77 = sub_2EF0(&qword_325A50, &qword_2889B0);
  v75 = *(v77 - 8);
  v29 = *(v75 + 64);
  __chkstk_darwin(v77);
  v72 = &v59 - v30;
  result = sub_261D30();
  *v26 = result;
  *(v26 + 1) = 0x4010000000000000;
  v26[16] = 0;
  v76 = v18;
  v32 = *(v2 + *(v18 + 40));
  if (v32 < 1)
  {
    __break(1u);
  }

  else
  {
    v59 = *(sub_2EF0(&qword_325A58, &unk_2889B8) + 44);
    v87 = 1;
    v88 = v32;
    swift_getKeyPath();
    v64 = v12;
    v82 = type metadata accessor for InteractiveStarRatingView;
    sub_1F7E94(v2, v23, type metadata accessor for InteractiveStarRatingView);
    v33 = *(v19 + 80);
    v62 = v8;
    v34 = (v33 + 16) & ~v33;
    v81 = v22;
    v35 = v33;
    v36 = swift_allocObject();
    v60 = type metadata accessor for InteractiveStarRatingView;
    sub_1F7F4C(v23, v36 + v34, type metadata accessor for InteractiveStarRatingView);
    sub_2EF0(&qword_325A60, &qword_2889E0);
    sub_2EF0(&qword_325A68, &qword_2889E8);
    v63 = v11;
    sub_1F71A0();
    v61 = v15;
    sub_1F722C();
    sub_2633B0();
    v37 = v66;
    sub_262350();
    sub_8E38(&qword_325A90, &qword_325A40, &qword_2889A0);
    v38 = v85;
    sub_262C70();
    (*(v67 + 8))(v37, v68);
    sub_1F7370(v26);
    v83 = v2;
    v39 = v82;
    sub_1F7E94(v2, v23, v82);
    v84 = v35;
    v40 = swift_allocObject();
    v41 = v60;
    sub_1F7F4C(v23, v40 + v34, v60);
    v42 = &v38[*(v86 + 36)];
    *v42 = sub_35F54;
    *(v42 + 1) = 0;
    *(v42 + 2) = sub_1F73D8;
    *(v42 + 3) = v40;
    sub_262190();
    v43 = v71;
    sub_2611A0();
    sub_1F7E94(v2, v23, v39);
    v44 = swift_allocObject();
    v45 = v41;
    sub_1F7F4C(v23, v44 + v34, v41);
    sub_1F7EFC(&qword_325A98, &type metadata accessor for DragGesture);
    sub_1F7EFC(&qword_325AA0, &type metadata accessor for DragGesture.Value);
    v46 = v79;
    v47 = v74;
    sub_2633F0();

    (*(v73 + 8))(v43, v47);
    sub_1F7E94(v83, v23, v39);
    v48 = swift_allocObject();
    sub_1F7F4C(v23, v48 + v34, v45);
    sub_8E38(&qword_325AA8, &qword_325A30, &qword_288990);
    v49 = v61;
    v50 = v62;
    sub_2633E0();

    (*(v80 + 8))(v46, v50);
    sub_2611F0();
    v51 = sub_1F74FC();
    v52 = sub_8E38(&qword_325AB8, &qword_325A38, &qword_288998);
    v53 = v72;
    v54 = v85;
    v55 = v86;
    v56 = v63;
    sub_262DE0();
    (*(v64 + 8))(v49, v56);
    sub_1F7624(v54);
    v91 = *(v83 + *(v76 + 36));
    sub_1F7E94(v83, v23, v82);
    v57 = swift_allocObject();
    sub_1F7F4C(v23, v57 + v34, v45);
    v87 = v55;
    v88 = v56;
    v89 = v51;
    v90 = v52;
    swift_getOpaqueTypeConformance2();
    v58 = v77;
    sub_262E50();

    return (*(v75 + 8))(v53, v58);
  }

  return result;
}

uint64_t sub_1F6910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261180();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants.Environment(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ColorConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v21 = *a1;
  v44 = sub_2630B0();
  v43 = sub_262570();
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for InteractiveStarRatingView();
  v23 = (a2 + v22[6]);
  v24 = *v23;
  v25 = v23[1];
  *&v45 = v24;
  *(&v45 + 1) = v25;
  sub_2EF0(&qword_325B80, &qword_288A80);
  result = sub_2631E0();
  v27 = ceil(v48);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v21 <= v27)
  {
    sub_1F58B8(v20);
    sub_1F7E94(v20, v13, type metadata accessor for ColorConstants.Environment);
    v30 = v41;
    (*(v41 + 104))(v9, enum case for ColorScheme.dark(_:), v6);
    sub_1F7EFC(&qword_3183A0, &type metadata accessor for ColorScheme);
    v31 = sub_264390();
    v32 = *(v30 + 8);
    v32(v9, v6);
    v32(v13, v6);
    if (v31)
    {
      v33 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v33 = sub_262F80();
    }

    v29 = v33;
  }

  else
  {
    sub_1F58B8(v17);
    v28 = [objc_opt_self() quaternaryLabelColor];
    v29 = sub_263070();
    v20 = v17;
  }

  sub_60B08(v20);
  v34 = swift_getKeyPath();
  v35 = *(a2 + v22[11]);
  v36 = *(a2 + v22[12]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  result = sub_2613A0();
  v38 = KeyPath;
  v37 = v43;
  *a3 = v44;
  *(a3 + 8) = v38;
  *(a3 + 16) = v37;
  *(a3 + 24) = v34;
  *(a3 + 32) = v29;
  v39 = v46;
  *(a3 + 40) = v45;
  *(a3 + 56) = v39;
  *(a3 + 72) = v47;
  return result;
}

uint64_t sub_1F6CF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for InteractiveStarRatingView() + 28));
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v3[2];
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  return sub_2631F0();
}

uint64_t sub_1F6D70(uint64_t a1, uint64_t a2)
{
  v3 = sub_2616C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for InteractiveStarRatingView();
  v12 = (a2 + v11[7]);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = v12[2];
  v34 = v13;
  LOBYTE(v35) = v14;
  v36 = v15;
  sub_2EF0(&qword_31CE10, &qword_273FD0);
  result = sub_2631E0();
  if ((v33 & 1) == 0)
  {
    v17 = v32;
    sub_2611C0();
    v19 = v18;
    sub_2611B0();
    v21 = v19 + v20;
    if (v21 >= v17)
    {
      v21 = v17;
    }

    if (v21 < 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v21;
    }

    v23 = *(a2 + v11[10]);
    sub_1F5A9C(v10);
    (*(v4 + 104))(v7, enum case for LayoutDirection.leftToRight(_:), v3);
    v24 = sub_2616B0();
    v25 = *(v4 + 8);
    v25(v7, v3);
    v25(v10, v3);
    v26 = v17 - v22;
    if (v24)
    {
      v26 = v22;
    }

    v27 = fmax(v26 / (v17 / v23), 1.0);
    v28 = (a2 + v11[6]);
    v29 = *v28;
    v30 = v28[1];
    v34 = v29;
    if (v27 > v23)
    {
      v27 = v23;
    }

    v35 = v30;
    v32 = v27;
    sub_2EF0(&qword_325B80, &qword_288A80);
    return sub_2631F0();
  }

  return result;
}

uint64_t sub_1F6FBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InteractiveStarRatingView();
  v4 = (a2 + *(v3 + 24));
  v7 = *v4;
  v9 = v4[1];
  sub_2EF0(&qword_325B80, &qword_288A80);
  sub_2631E0();
  v5 = (a2 + *(v3 + 32));
  v8 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  sub_2EF0(&qword_325B88, &unk_288A88);
  return sub_263330();
}

uint64_t sub_1F706C(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for InteractiveStarRatingView() + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_2EF0(&qword_325B80, &qword_288A80);
  result = sub_2631E0();
  if (v3 != v8)
  {
    return sub_2631F0();
  }

  return result;
}

uint64_t sub_1F7120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InteractiveStarRatingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1F6910(a1, v6, a2);
}

unint64_t sub_1F71A0()
{
  result = qword_325A70;
  if (!qword_325A70)
  {
    sub_2F9C(&qword_325A60, &qword_2889E0);
    sub_C09B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A70);
  }

  return result;
}

unint64_t sub_1F722C()
{
  result = qword_325A78;
  if (!qword_325A78)
  {
    sub_2F9C(&qword_325A68, &qword_2889E8);
    sub_1F72B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A78);
  }

  return result;
}

unint64_t sub_1F72B8()
{
  result = qword_325A80;
  if (!qword_325A80)
  {
    sub_2F9C(&qword_325A88, &unk_2889F0);
    sub_3076C();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325A80);
  }

  return result;
}

uint64_t sub_1F7370(uint64_t a1)
{
  v2 = sub_2EF0(&qword_325A40, &qword_2889A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F73D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for InteractiveStarRatingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1F6CF0(a1, v4);
}

uint64_t sub_1F7478(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for InteractiveStarRatingView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1F74FC()
{
  result = qword_325AB0;
  if (!qword_325AB0)
  {
    sub_2F9C(&qword_325A48, &qword_2889A8);
    sub_2F9C(&qword_325A40, &qword_2889A0);
    sub_8E38(&qword_325A90, &qword_325A40, &qword_2889A0);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_325AB0);
  }

  return result;
}

uint64_t sub_1F7624(uint64_t a1)
{
  v2 = sub_2EF0(&qword_325A48, &qword_2889A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F768C()
{
  v1 = type metadata accessor for InteractiveStarRatingView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2616C0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = *&v4[v1[6] + 8];

  v11 = *&v4[v1[7] + 16];

  v12 = &v4[v1[8]];
  v13 = *v12;

  v14 = *(v12 + 1);

  return swift_deallocObject();
}

uint64_t sub_1F7850(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for InteractiveStarRatingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1F706C(a1, a2, v6);
}

uint64_t sub_1F7900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_319458, &unk_26CF30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1F7A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_319458, &unk_26CF30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1F7B60()
{
  sub_1C35B4(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_1C35B4(319, &qword_3194C8, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      sub_1F7D24(319, &qword_325B28, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1F7CC0();
        if (v3 <= 0x3F)
        {
          sub_1F7D24(319, &unk_325B30, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1F7CC0()
{
  if (!qword_31CDB8)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    v0 = sub_263210();
    if (!v1)
    {
      atomic_store(v0, &qword_31CDB8);
    }
  }
}

void sub_1F7D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Double);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1F7D78()
{
  sub_2F9C(&qword_325A50, &qword_2889B0);
  sub_2F9C(&qword_325A48, &qword_2889A8);
  sub_2F9C(&qword_325A38, &qword_288998);
  sub_1F74FC();
  sub_8E38(&qword_325AB8, &qword_325A38, &qword_288998);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1F7E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F7EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F7F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1F7FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v11, &qword_3173E0, &qword_26B890);
  if (v12 == 1)
  {
    return sub_F7CC(v11, a1);
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

double sub_1F8134()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  v8 = *(v0 + 48);

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_1F8280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318148, &unk_26AEE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BrickLockupView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1F8488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BrickLockupView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1F8674@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BrickLockupView();
  sub_8198(v1 + *(v12 + 32), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1F8860@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_325B90, &qword_288C30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BrickLockupView();
  sub_8198(v1 + *(v12 + 36), v11, &qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_20DCBC(v11, a1, type metadata accessor for FontConstants.Brick);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t BrickLockupView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v4 = type metadata accessor for BrickLockupView();
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v4[9];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_325B90, &qword_288C30);
  swift_storeEnumTagMultiPayload();
  return sub_20DCBC(a1, a2 + v4[10], type metadata accessor for BrickLockupModel);
}

uint64_t type metadata accessor for BrickLockupView()
{
  result = qword_325C78;
  if (!qword_325C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrickLockupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v100 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v3 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v99 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v98 = &v93 - v6;
  v7 = sub_261690();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = *(v116 + 64);
  __chkstk_darwin(v7);
  v115 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v93 - v11;
  v97 = sub_2EF0(&qword_3174E8, &qword_269970);
  v12 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v96 = &v93 - v13;
  v120 = sub_2617E0();
  v14 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v113 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261FA0();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = *(v111 + 64);
  __chkstk_darwin(v16);
  v110 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_262F00();
  v94 = *(v95 - 8);
  v19 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261180();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ColorConstants.Environment(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ColorConstants(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for BrickLockupView();
  v34 = *(v105 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v105);
  *&v103 = sub_2EF0(&qword_325B98, &qword_288C38);
  v36 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v38 = &v93 - v37;
  v104 = sub_2EF0(&qword_325BA0, &qword_288C40);
  v39 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = &v93 - v40;
  v41 = sub_2EF0(&qword_325BA8, &qword_288C48);
  v108 = *(v41 - 8);
  v109 = v41;
  v42 = *(v108 + 64);
  __chkstk_darwin(v41);
  v107 = &v93 - v43;
  v118 = sub_2EF0(&qword_325BB0, &qword_288C50);
  v44 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v119 = &v93 - v45;
  sub_20DD24(v1, &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrickLockupView);
  v46 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v102 = swift_allocObject();
  sub_20DCBC(&v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v102 + v46, type metadata accessor for BrickLockupView);
  sub_1F8674(v33);
  sub_20DD24(v33, v29, type metadata accessor for ColorConstants.Environment);
  (*(v22 + 104))(v25, enum case for ColorScheme.dark(_:), v21);
  sub_20DBBC(&qword_3183A0, &type metadata accessor for ColorScheme);
  v47 = sub_264390();
  v48 = *(v22 + 8);
  v48(v25, v21);
  sub_20D990(v33, type metadata accessor for ColorConstants);
  v48(v29, v21);
  if (v47)
  {
    (*(v94 + 104))(v93, enum case for Color.RGBColorSpace.sRGB(_:), v95);
    v49 = sub_263060();
  }

  else
  {
    sub_1F8674(v33);
    v49 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    sub_20D990(v33, type metadata accessor for ColorConstants);
  }

  v50 = sub_262500();
  v51 = &v38[*(v103 + 36)];
  v52 = *(v120 + 20);
  v53 = enum case for RoundedCornerStyle.continuous(_:);
  v54 = sub_261DD0();
  v55 = *(*(v54 - 8) + 104);
  v55(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #10.0 }

  v103 = _Q0;
  *v51 = _Q0;
  *&v51[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v61 = v102;
  *v38 = sub_209524;
  *(v38 + 1) = v61;
  *(v38 + 2) = v49;
  v38[24] = v50;
  v62 = v2 + *(v105 + 40);
  v63 = *(v62 + *(type metadata accessor for BrickLockupModel(0) + 20));
  v64 = v38;
  v65 = v106;
  sub_22148(v64, v106, &qword_325B98, &qword_288C38);
  v66 = v65 + *(v104 + 36);
  *v66 = v63;
  *(v66 + 8) = 0;
  v67 = v110;
  sub_2618C0();
  sub_2095A4();
  sub_20DBBC(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v68 = v107;
  v69 = v112;
  sub_262AA0();
  (*(v111 + 8))(v67, v69);
  sub_8E80(v65, &qword_325BA0, &qword_288C40);
  v70 = v113;
  v55(&v113[*(v120 + 20)], v53, v54);
  *v70 = v103;
  sub_262F80();
  v71 = sub_263000();

  v72 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v74 = v73;
  v75 = v119;
  v76 = &v119[*(v118 + 36)];
  sub_20DD24(v70, v76, &type metadata accessor for RoundedRectangle);
  v77 = v76 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v77 = v71;
  *(v77 + 8) = xmmword_26BA30;
  *(v77 + 24) = 0x4018000000000000;
  v78 = (v76 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v78 = v72;
  v78[1] = v74;
  (*(v108 + 32))(v75, v68, v109);
  sub_20D990(v70, &type metadata accessor for RoundedRectangle);
  v79 = v116;
  v80 = v117;
  v81 = *(v116 + 104);
  v82 = v114;
  v81(v114, enum case for DynamicTypeSize.xSmall(_:), v117);
  v83 = v115;
  v81(v115, enum case for DynamicTypeSize.accessibility3(_:), v80);
  sub_20DBBC(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v85 = *(v79 + 32);
    v86 = v98;
    v85(v98, v82, v80);
    v87 = v100;
    v85((v86 + *(v100 + 48)), v83, v80);
    v88 = v99;
    sub_8198(v86, v99, &qword_3174E0, &qword_26B310);
    v89 = *(v87 + 48);
    v90 = v96;
    v85(v96, v88, v80);
    v91 = *(v79 + 8);
    v91(v88 + v89, v80);
    sub_22148(v86, v88, &qword_3174E0, &qword_26B310);
    v85((v90 + *(v97 + 36)), (v88 + *(v87 + 48)), v80);
    v91(v88, v80);
    sub_2097CC();
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v92 = v119;
    sub_262B70();
    sub_8E80(v90, &qword_3174E8, &qword_269970);
    return sub_8E80(v92, &qword_325BB0, &qword_288C50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1F98F8@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v943 = a2;
  v850 = sub_2EF0(&qword_325CD0, &qword_288CE8);
  v3 = *(*(v850 - 8) + 64);
  __chkstk_darwin(v850);
  v857 = (&v831 - v4);
  v852 = sub_2EF0(&qword_325CD8, &qword_288CF0);
  v834 = *(v852 - 8);
  v5 = *(v834 + 64);
  __chkstk_darwin(v852);
  v838 = &v831 - v6;
  v845 = sub_2EF0(&qword_325CE0, &qword_288CF8);
  v7 = *(*(v845 - 8) + 64);
  __chkstk_darwin(v845);
  v848 = &v831 - v8;
  v890 = sub_2EF0(&qword_325CE8, &qword_288D00);
  v9 = *(*(v890 - 8) + 64);
  __chkstk_darwin(v890);
  v851 = &v831 - v10;
  v844 = sub_2EF0(&qword_325CF0, &qword_288D08);
  v11 = *(*(v844 - 8) + 64);
  __chkstk_darwin(v844);
  v856 = (&v831 - v12);
  v849 = sub_2EF0(&qword_325CF8, &qword_288D10);
  v832 = *(v849 - 8);
  v13 = *(v832 + 64);
  __chkstk_darwin(v849);
  v836 = &v831 - v14;
  v843 = sub_2EF0(&qword_325D00, &qword_288D18);
  v15 = *(*(v843 - 8) + 64);
  __chkstk_darwin(v843);
  v855 = (&v831 - v16);
  v847 = sub_2EF0(&qword_325D08, &qword_288D20);
  v833 = *(v847 - 8);
  v17 = *(v833 + 64);
  __chkstk_darwin(v847);
  v837 = &v831 - v18;
  v840 = sub_2EF0(&qword_325D10, &qword_288D28);
  v19 = *(*(v840 - 8) + 64);
  __chkstk_darwin(v840);
  v842 = &v831 - v20;
  v870 = sub_2EF0(&qword_325D18, &qword_288D30);
  v21 = *(*(v870 - 8) + 64);
  __chkstk_darwin(v870);
  v846 = &v831 - v22;
  v864 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v23 = *(*(v864 - 8) + 64);
  __chkstk_darwin(v864);
  v865 = &v831 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v863 = &v831 - v26;
  v867 = sub_2EF0(&qword_3174E8, &qword_269970);
  v27 = *(*(v867 - 8) + 64);
  __chkstk_darwin(v867);
  v866 = &v831 - v28;
  v839 = sub_2EF0(&qword_325D20, &qword_288D38);
  v29 = *(*(v839 - 8) + 64);
  __chkstk_darwin(v839);
  v854 = (&v831 - v30);
  v841 = sub_2EF0(&qword_325D28, &qword_288D40);
  v831 = *(v841 - 8);
  v31 = *(v831 + 64);
  __chkstk_darwin(v841);
  v835 = &v831 - v32;
  v886 = sub_2EF0(&qword_325D30, &qword_288D48);
  v33 = *(*(v886 - 8) + 64);
  __chkstk_darwin(v886);
  v888 = &v831 - v34;
  v868 = sub_2EF0(&qword_325D38, &qword_288D50);
  v35 = *(*(v868 - 8) + 64);
  __chkstk_darwin(v868);
  v869 = &v831 - v36;
  v887 = sub_2EF0(&qword_325D40, &qword_288D58);
  v37 = *(*(v887 - 8) + 64);
  __chkstk_darwin(v887);
  v871 = &v831 - v38;
  v942 = sub_2EF0(&qword_325D48, &qword_288D60);
  v39 = *(*(v942 - 8) + 64);
  __chkstk_darwin(v942);
  v889 = &v831 - v40;
  v940 = sub_2EF0(&qword_325D50, &qword_288D68);
  v41 = *(*(v940 - 8) + 64);
  __chkstk_darwin(v940);
  v941 = &v831 - v42;
  v883 = sub_2EF0(&qword_325D58, &qword_288D70);
  v43 = *(*(v883 - 8) + 64);
  __chkstk_darwin(v883);
  v885 = &v831 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v884 = (&v831 - v46);
  v908 = sub_2EF0(&qword_325D60, &qword_288D78);
  v47 = *(*(v908 - 8) + 64);
  __chkstk_darwin(v908);
  v900 = (&v831 - v48);
  v906 = sub_2EF0(&qword_325D68, &qword_288D80);
  v49 = *(*(v906 - 8) + 64);
  __chkstk_darwin(v906);
  v907 = &v831 - v50;
  v932 = sub_2EF0(&qword_325D70, &qword_288D88);
  v51 = *(*(v932 - 8) + 64);
  __chkstk_darwin(v932);
  v909 = &v831 - v52;
  v880 = sub_2EF0(&qword_325D78, &qword_288D90);
  v53 = *(*(v880 - 8) + 64);
  __chkstk_darwin(v880);
  v882 = &v831 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v881 = (&v831 - v56);
  v905 = sub_2EF0(&qword_325D80, &qword_288D98);
  v57 = *(*(v905 - 8) + 64);
  __chkstk_darwin(v905);
  v899 = (&v831 - v58);
  v877 = sub_2EF0(&qword_325D88, &qword_288DA0);
  v59 = *(*(v877 - 8) + 64);
  __chkstk_darwin(v877);
  v879 = &v831 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v878 = (&v831 - v62);
  v903 = sub_2EF0(&qword_325D90, &qword_288DA8);
  v63 = *(*(v903 - 8) + 64);
  __chkstk_darwin(v903);
  v898 = (&v831 - v64);
  v901 = sub_2EF0(&qword_325D98, &qword_288DB0);
  v65 = *(*(v901 - 8) + 64);
  __chkstk_darwin(v901);
  v902 = &v831 - v66;
  v925 = sub_2EF0(&qword_325DA0, &qword_288DB8);
  v67 = *(*(v925 - 1) + 64);
  __chkstk_darwin(v925);
  v904 = &v831 - v68;
  v921 = sub_2EF0(&qword_325DA8, &qword_288DC0);
  v920 = *(v921 - 8);
  v69 = v920[8];
  __chkstk_darwin(v921);
  v919 = &v831 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v918 = &v831 - v72;
  v927 = sub_2EF0(&qword_325DB0, &qword_288DC8);
  v73 = *(*(v927 - 8) + 64);
  __chkstk_darwin(v927);
  v916 = (&v831 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v75);
  v948 = (&v831 - v76);
  v77 = type metadata accessor for SizeConstants.Spacing(0);
  v78 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77 - 8);
  v950 = &v831 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SizeConstants(0);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v949 = &v831 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v946 = type metadata accessor for BrickLockupView();
  v933 = *(v946 - 8);
  v83 = *(v933 + 64);
  __chkstk_darwin(v946);
  v858 = &v831 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v939 = v84;
  __chkstk_darwin(v85);
  v937 = &v831 - v86;
  v895 = sub_2EF0(&qword_325DB8, &qword_288DD0);
  v87 = *(*(v895 - 8) + 64);
  __chkstk_darwin(v895);
  v896 = &v831 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v917 = (&v831 - v90);
  v894 = sub_262F00();
  v892 = *(v894 - 8);
  v91 = *(v892 + 64);
  __chkstk_darwin(v894);
  v893 = &v831 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v915 = sub_2EF0(&qword_325DC0, &qword_288DD8);
  v93 = *(*(v915 - 8) + 64);
  __chkstk_darwin(v915);
  v910 = (&v831 - v94);
  v95 = sub_2EF0(&qword_316208, &qword_268BD0);
  v935 = *(v95 - 8);
  v96 = *(v935 + 64);
  __chkstk_darwin(v95 - 8);
  v860 = &v831 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98);
  v947 = &v831 - v99;
  v936 = v100;
  __chkstk_darwin(v101);
  v951 = &v831 - v102;
  v955 = sub_260BD0();
  v953 = *(v955 - 8);
  v103 = *(v953 + 64);
  __chkstk_darwin(v955);
  v859 = &v831 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v105);
  v938 = &v831 - v106;
  v934 = v107;
  __chkstk_darwin(v108);
  v952 = &v831 - v109;
  v928 = sub_2EF0(&qword_325DC8, &qword_288DE0);
  v110 = *(*(v928 - 8) + 64);
  __chkstk_darwin(v928);
  v930 = (&v831 - v111);
  v922 = sub_2EF0(&qword_325DD0, &qword_288DE8);
  v112 = *(*(v922 - 1) + 64);
  __chkstk_darwin(v922);
  v923 = &v831 - v113;
  v912 = sub_2EF0(&qword_325DD8, &qword_288DF0);
  v114 = *(*(v912 - 1) + 64);
  __chkstk_darwin(v912);
  v913 = &v831 - v115;
  v926 = sub_2EF0(&qword_325DE0, &qword_288DF8);
  v116 = *(*(v926 - 1) + 64);
  __chkstk_darwin(v926);
  v914 = (&v831 - v117);
  v929 = sub_2EF0(&qword_325DE8, &qword_288E00);
  v118 = *(*(v929 - 8) + 64);
  __chkstk_darwin(v929);
  v924 = &v831 - v119;
  v911 = sub_2EF0(&qword_325DF0, &qword_288E08);
  v120 = *(*(v911 - 8) + 64);
  __chkstk_darwin(v911);
  v853 = &v831 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v897 = &v831 - v123;
  v944 = sub_2EF0(&qword_325DF8, &qword_288E10);
  v124 = *(*(v944 - 8) + 64);
  __chkstk_darwin(v944);
  v931 = (&v831 - v125);
  v945 = type metadata accessor for BrickLockupModel.BrickType(0);
  v126 = *(*(v945 - 1) + 64);
  __chkstk_darwin(v945);
  v891 = (&v831 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v128);
  v130 = (&v831 - v129);
  __chkstk_darwin(v131);
  v133 = &v831 - v132;
  v134 = sub_261690();
  v135 = *(v134 - 8);
  v136 = v135[8];
  __chkstk_darwin(v134);
  v138 = &v831 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v139);
  v141 = &v831 - v140;
  sub_261420();
  v143 = v142;
  sub_1F8280(v141);
  v872 = v135[13];
  v873 = v135 + 13;
  (v872)(v138, enum case for DynamicTypeSize.xxxLarge(_:), v134);
  v874 = sub_20DBBC(&qword_317538, &type metadata accessor for DynamicTypeSize);
  v144 = sub_264360();
  v862 = v135;
  v146 = v135[1];
  v145 = v135 + 1;
  v876 = v138;
  v147 = v138;
  v148 = v134;
  v146(v147, v134);
  v875 = v141;
  v861 = v146;
  v146(v141, v134);
  v149 = a1;
  v150 = v946;
  v954 = v149;
  if ((v144 & 1) == 0)
  {
LABEL_7:
    v155 = &v149[*(v150 + 40)];
    sub_20DD24(v155, v130, type metadata accessor for BrickLockupModel.BrickType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v157 = v149;
    v158 = v130;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v229 = sub_2EF0(&qword_325BD0, &qword_288C60);
          v230 = v229[12];
          v231 = (v130 + v229[16]);
          v233 = *v231;
          v232 = v231[1];
          v917 = v233;
          v945 = v232;
          v946 = *(v130 + v229[20]);
          LODWORD(v923) = *(v130 + v229[24]);
          v234 = v953;
          v235 = *(v953 + 32);
          v914 = (v953 + 32);
          v915 = v235;
          v236 = v952;
          v237 = v955;
          v235(v952, v130, v955);
          v238 = v951;
          sub_22148(v130 + v230, v951, &qword_316208, &qword_268BD0);
          v239 = sub_261D10();
          v240 = v899;
          *v899 = v239;
          v240[1] = 0;
          *(v240 + 16) = 0;
          v924 = v240 + *(sub_2EF0(&qword_325F10, &qword_288E70) + 44);
          v241 = sub_261E60();
          v242 = v948;
          *v948 = v241;
          v242[1] = 0x4020000000000000;
          *(v242 + 16) = 0;
          v922 = (v242 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
          v243 = v949;
          sub_1F8488(v949);
          v925 = type metadata accessor for SizeConstants.Environment;
          v244 = v950;
          sub_20DCBC(v243, v950, type metadata accessor for SizeConstants.Environment);
          v926 = type metadata accessor for SizeConstants.Spacing;
          sub_20D990(v244, type metadata accessor for SizeConstants.Spacing);
          v245 = v938;
          (*(v234 + 16))(v938, v236, v237);
          v246 = v937;
          sub_20DD24(v157, v937, type metadata accessor for BrickLockupView);
          v247 = v947;
          sub_8198(v238, v947, &qword_316208, &qword_268BD0);
          v248 = (*(v234 + 80) + 16) & ~*(v234 + 80);
          v249 = (v934 + *(v933 + 80) + v248) & ~*(v933 + 80);
          v250 = (v939 + *(v935 + 80) + v249) & ~*(v935 + 80);
          v251 = (v936 + v250 + 7) & 0xFFFFFFFFFFFFFFF8;
          v252 = swift_allocObject();
          (v915)(v252 + v248, v245, v237);
          sub_20DCBC(v246, v252 + v249, type metadata accessor for BrickLockupView);
          sub_22148(v247, v252 + v250, &qword_316208, &qword_268BD0);
          v253 = (v252 + v251);
          v254 = v945;
          *v253 = v917;
          v253[1] = v254;

          sub_2EF0(&qword_325E10, &qword_288E28);
          sub_260A70();
          sub_260A50();
          sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28);
          sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
          sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
          v255 = v918;
          sub_260A80();
          v256 = v949;
          sub_1F8488(v949);
          v257 = v950;
          v258 = v925;
          sub_20DCBC(v256, v950, v925);
          sub_20D990(v257, v926);
          v259 = v920;
          v260 = v920[2];
          v261 = v919;
          v262 = v921;
          v260(v919, v255, v921);
          v263 = v922;
          *v922 = 0x4030000000000000;
          *(v263 + 8) = 0;
          v264 = sub_2EF0(&qword_325E20, &qword_288E30);
          v260(v263 + *(v264 + 48), v261, v262);
          v265 = v263 + *(v264 + 64);
          *v265 = 0x4030000000000000;
          v265[8] = 0;
          v266 = v259[1];
          v266(v255, v262);
          v266(v261, v262);
          LOBYTE(v256) = sub_262530();
          v267 = v949;
          sub_1F8488(v949);
          v268 = v950;
          sub_20DCBC(v267, v950, v258);
          v269 = v926;
          sub_20D990(v268, v926);
          sub_2610C0();
          v271 = v270;
          v273 = v272;
          v275 = v274;
          v277 = v276;
          v278 = sub_2EF0(&qword_325E28, &qword_288E38);
          v279 = v948;
          v280 = v948 + *(v278 + 36);
          *v280 = v256;
          *(v280 + 1) = v271;
          *(v280 + 2) = v273;
          *(v280 + 3) = v275;
          *(v280 + 4) = v277;
          v280[40] = 0;
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v281 = (v279 + *(v927 + 36));
          v282 = v974;
          *v281 = v973;
          v281[1] = v282;
          v281[2] = v975;
          v283 = sub_263550();
          v284 = v881;
          *v881 = v283;
          *(v284 + 8) = v285;
          v286 = sub_2EF0(&qword_325F18, &qword_288E78);
          sub_20713C(v946, v923, v284 + *(v286 + 44), v143);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v287 = (v284 + *(sub_2EF0(&qword_325F20, &qword_288E80) + 36));
          v288 = *v984;
          *v287 = v983;
          v287[1] = v288;
          v287[2] = *&v984[16];
          LOBYTE(v256) = sub_262530();
          sub_1F8488(v267);
          sub_20DCBC(v267, v268, v925);
          sub_20D990(v268, v269);
          sub_2610C0();
          v290 = v289;
          v292 = v291;
          v294 = v293;
          v296 = v295;
          v297 = v284 + *(sub_2EF0(&qword_325F28, &qword_288E88) + 36);
          *v297 = v256;
          *(v297 + 8) = v290;
          *(v297 + 16) = v292;
          *(v297 + 24) = v294;
          *(v297 + 32) = v296;
          *(v297 + 40) = 0;
          *(v284 + *(v880 + 36)) = xmmword_288B10;
          v298 = v916;
          sub_8198(v279, v916, &qword_325DB0, &qword_288DC8);
          v299 = v882;
          sub_8198(v284, v882, &qword_325D78, &qword_288D90);
          v300 = v924;
          sub_8198(v298, v924, &qword_325DB0, &qword_288DC8);
          v301 = sub_2EF0(&qword_325F30, &qword_288E90);
          sub_8198(v299, v300 + *(v301 + 48), &qword_325D78, &qword_288D90);
          sub_8E80(v284, &qword_325D78, &qword_288D90);
          sub_8E80(v279, &qword_325DB0, &qword_288DC8);
          sub_8E80(v299, &qword_325D78, &qword_288D90);
          sub_8E80(v298, &qword_325DB0, &qword_288DC8);

          v302 = &qword_325D80;
          v303 = &qword_288D98;
          v304 = v899;
          sub_8198(v899, v907, &qword_325D80, &qword_288D98);
        }

        else
        {
          v534 = sub_2EF0(&qword_325BD8, &unk_289180);
          v535 = v534[12];
          v536 = (v130 + v534[16]);
          v538 = *v536;
          v537 = v536[1];
          v917 = v538;
          v945 = v537;
          v946 = *(v130 + v534[20]);
          v539 = v534[24];
          v540 = v953;
          v541 = *(v953 + 32);
          v914 = (v953 + 32);
          v915 = v541;
          LODWORD(v923) = *(v130 + v539);
          v542 = v952;
          v543 = v955;
          v541(v952, v130, v955);
          v544 = v951;
          sub_22148(v130 + v535, v951, &qword_316208, &qword_268BD0);
          v545 = sub_261D10();
          v546 = v900;
          *v900 = v545;
          v546[1] = 0;
          *(v546 + 16) = 0;
          v924 = v546 + *(sub_2EF0(&qword_325E00, &qword_288E18) + 44);
          v547 = sub_261E60();
          v548 = v948;
          *v948 = v547;
          v548[1] = 0x4020000000000000;
          *(v548 + 16) = 0;
          v922 = (v548 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
          v549 = v949;
          sub_1F8488(v949);
          v925 = type metadata accessor for SizeConstants.Environment;
          v550 = v950;
          sub_20DCBC(v549, v950, type metadata accessor for SizeConstants.Environment);
          v926 = type metadata accessor for SizeConstants.Spacing;
          sub_20D990(v550, type metadata accessor for SizeConstants.Spacing);
          v551 = v938;
          (*(v540 + 16))(v938, v542, v543);
          v552 = v937;
          sub_20DD24(v157, v937, type metadata accessor for BrickLockupView);
          v553 = v947;
          sub_8198(v544, v947, &qword_316208, &qword_268BD0);
          v554 = (*(v540 + 80) + 16) & ~*(v540 + 80);
          v555 = (v934 + *(v933 + 80) + v554) & ~*(v933 + 80);
          v556 = (v939 + *(v935 + 80) + v555) & ~*(v935 + 80);
          v557 = (v936 + v556 + 7) & 0xFFFFFFFFFFFFFFF8;
          v558 = swift_allocObject();
          (v915)(v558 + v554, v551, v543);
          sub_20DCBC(v552, v558 + v555, type metadata accessor for BrickLockupView);
          sub_22148(v553, v558 + v556, &qword_316208, &qword_268BD0);
          v559 = (v558 + v557);
          v560 = v945;
          *v559 = v917;
          v559[1] = v560;

          sub_2EF0(&qword_325E10, &qword_288E28);
          sub_260A70();
          sub_260A50();
          sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28);
          sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
          sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
          v561 = v918;
          sub_260A80();
          v562 = v949;
          sub_1F8488(v949);
          v563 = v950;
          v564 = v925;
          sub_20DCBC(v562, v950, v925);
          sub_20D990(v563, v926);
          v565 = v920;
          v566 = v920[2];
          v567 = v919;
          v568 = v921;
          v566(v919, v561, v921);
          v569 = v922;
          *v922 = 0x4030000000000000;
          *(v569 + 8) = 0;
          v570 = sub_2EF0(&qword_325E20, &qword_288E30);
          v566(v569 + *(v570 + 48), v567, v568);
          v571 = v569 + *(v570 + 64);
          *v571 = 0x4030000000000000;
          v571[8] = 0;
          v572 = v565[1];
          v572(v561, v568);
          v572(v567, v568);
          LOBYTE(v562) = sub_262530();
          v573 = v949;
          sub_1F8488(v949);
          v574 = v950;
          sub_20DCBC(v573, v950, v564);
          v575 = v926;
          sub_20D990(v574, v926);
          sub_2610C0();
          v577 = v576;
          v579 = v578;
          v581 = v580;
          v583 = v582;
          v584 = sub_2EF0(&qword_325E28, &qword_288E38);
          v585 = v948;
          v586 = v948 + *(v584 + 36);
          *v586 = v562;
          *(v586 + 1) = v577;
          *(v586 + 2) = v579;
          *(v586 + 3) = v581;
          *(v586 + 4) = v583;
          v586[40] = 0;
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v587 = (v585 + *(v927 + 36));
          v588 = v974;
          *v587 = v973;
          v587[1] = v588;
          v587[2] = v975;
          v589 = sub_263550();
          v590 = v884;
          *v884 = v589;
          *(v590 + 8) = v591;
          v592 = sub_2EF0(&qword_325E30, &qword_288E40);
          sub_207BD4(v946, v923, v590 + *(v592 + 44), v143);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v593 = (v590 + *(sub_2EF0(&qword_325E38, &qword_288E48) + 36));
          v594 = *v984;
          *v593 = v983;
          v593[1] = v594;
          v593[2] = *&v984[16];
          LOBYTE(v562) = sub_262530();
          sub_1F8488(v573);
          sub_20DCBC(v573, v574, v925);
          sub_20D990(v574, v575);
          sub_2610C0();
          v596 = v595;
          v598 = v597;
          v600 = v599;
          v602 = v601;
          v603 = v590 + *(sub_2EF0(&qword_325E40, &qword_288E50) + 36);
          *v603 = v562;
          *(v603 + 8) = v596;
          *(v603 + 16) = v598;
          *(v603 + 24) = v600;
          *(v603 + 32) = v602;
          *(v603 + 40) = 0;
          *(v590 + *(v883 + 36)) = xmmword_288B10;
          v604 = v916;
          sub_8198(v585, v916, &qword_325DB0, &qword_288DC8);
          v605 = v885;
          sub_8198(v590, v885, &qword_325D58, &qword_288D70);
          v606 = v924;
          sub_8198(v604, v924, &qword_325DB0, &qword_288DC8);
          v607 = sub_2EF0(&qword_325E48, &qword_288E58);
          sub_8198(v605, v606 + *(v607 + 48), &qword_325D58, &qword_288D70);
          sub_8E80(v590, &qword_325D58, &qword_288D70);
          sub_8E80(v585, &qword_325DB0, &qword_288DC8);
          sub_8E80(v605, &qword_325D58, &qword_288D70);
          sub_8E80(v604, &qword_325DB0, &qword_288DC8);

          v302 = &qword_325D60;
          v303 = &qword_288D78;
          v304 = v900;
          sub_8198(v900, v907, &qword_325D60, &qword_288D78);
        }

        swift_storeEnumTagMultiPayload();
        sub_8E38(&qword_325E50, &qword_325D80, &qword_288D98);
        sub_8E38(&qword_325E58, &qword_325D60, &qword_288D78);
        v531 = v909;
        sub_261F80();
        v532 = &qword_325D70;
        v533 = &qword_288D88;
        sub_8198(v531, v930, &qword_325D70, &qword_288D88);
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }

      v401 = sub_2EF0(&qword_325BC8, &unk_2891A0);
      v402 = v401[12];
      v403 = (v130 + v401[16]);
      v405 = *v403;
      v404 = v403[1];
      v913 = v405;
      v946 = v404;
      v406 = (v130 + v401[20]);
      v407 = v406[7];
      v988 = v406[6];
      v989 = v407;
      v408 = v406[5];
      v986 = v406[4];
      v987 = v408;
      v409 = v406[1];
      v983 = *v406;
      *v984 = v409;
      v410 = v406[3];
      *&v984[16] = v406[2];
      v985 = v410;
      v411 = v953;
      v412 = *(v953 + 32);
      v911 = v953 + 32;
      v912 = v412;
      v413 = v952;
      v414 = v955;
      v412(v952, v130, v955);
      v415 = v951;
      sub_22148(v130 + v402, v951, &qword_316208, &qword_268BD0);
      v416 = sub_261D10();
      v417 = v898;
      *v898 = v416;
      v417[1] = 0;
      *(v417 + 16) = 0;
      v917 = (v417 + *(sub_2EF0(&qword_325F38, &qword_288E98) + 44));
      v418 = sub_261E60();
      v419 = v948;
      *v948 = v418;
      v419[1] = 0x4020000000000000;
      *(v419 + 16) = 0;
      v915 = v419 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44);
      v420 = v949;
      sub_1F8488(v949);
      v914 = type metadata accessor for SizeConstants.Environment;
      v421 = v950;
      sub_20DCBC(v420, v950, type metadata accessor for SizeConstants.Environment);
      v945 = type metadata accessor for SizeConstants.Spacing;
      sub_20D990(v421, type metadata accessor for SizeConstants.Spacing);
      v422 = v938;
      (*(v411 + 16))(v938, v413, v414);
      v423 = v937;
      sub_20DD24(v157, v937, type metadata accessor for BrickLockupView);
      v424 = v947;
      sub_8198(v415, v947, &qword_316208, &qword_268BD0);
      v425 = (*(v411 + 80) + 16) & ~*(v411 + 80);
      v426 = (v934 + *(v933 + 80) + v425) & ~*(v933 + 80);
      v427 = (v939 + *(v935 + 80) + v426) & ~*(v935 + 80);
      v428 = (v936 + v427 + 7) & 0xFFFFFFFFFFFFFFF8;
      v429 = swift_allocObject();
      v912(v429 + v425, v422, v414);
      sub_20DCBC(v423, v429 + v426, type metadata accessor for BrickLockupView);
      sub_22148(v424, v429 + v427, &qword_316208, &qword_268BD0);
      v430 = (v429 + v428);
      v431 = v946;
      *v430 = v913;
      v430[1] = v431;

      sub_2EF0(&qword_325E10, &qword_288E28);
      sub_260A70();
      sub_260A50();
      sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28);
      sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
      sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
      v432 = v918;
      sub_260A80();
      v433 = v949;
      sub_1F8488(v949);
      v434 = v950;
      v435 = v914;
      sub_20DCBC(v433, v950, v914);
      sub_20D990(v434, v945);
      v436 = v920;
      v437 = v920[2];
      v438 = v919;
      v439 = v921;
      v437(v919, v432, v921);
      v440 = v915;
      *v915 = 0x4030000000000000;
      *(v440 + 8) = 0;
      v441 = sub_2EF0(&qword_325E20, &qword_288E30);
      v437((v440 + *(v441 + 48)), v438, v439);
      v442 = v440 + *(v441 + 64);
      *v442 = 0x4030000000000000;
      *(v442 + 8) = 0;
      v443 = v436[1];
      v443(v432, v439);
      v443(v438, v439);
      LOBYTE(v433) = sub_262530();
      v444 = v949;
      sub_1F8488(v949);
      v445 = v950;
      v446 = v435;
      sub_20DCBC(v444, v950, v435);
      v447 = v945;
      sub_20D990(v445, v945);
      sub_2610C0();
      v449 = v448;
      v451 = v450;
      v453 = v452;
      v455 = v454;
      v456 = sub_2EF0(&qword_325E28, &qword_288E38);
      v457 = v948;
      v458 = v948 + *(v456 + 36);
      *v458 = v433;
      *(v458 + 1) = v449;
      *(v458 + 2) = v451;
      *(v458 + 3) = v453;
      *(v458 + 4) = v455;
      v458[40] = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v459 = (v457 + *(v927 + 36));
      v460 = v980;
      *v459 = v979;
      v459[1] = v460;
      v459[2] = v981;
      v461 = sub_263550();
      v462 = v878;
      *v878 = v461;
      *(v462 + 8) = v463;
      v464 = sub_2EF0(&qword_325F40, &qword_288EA0);
      sub_206CDC(&v983, v462 + *(v464 + 44), v143);
      LOBYTE(v433) = sub_262510();
      sub_1F8488(v444);
      sub_20DCBC(v444, v445, v446);
      sub_20D990(v445, v447);
      sub_2610C0();
      v466 = v465;
      v468 = v467;
      v470 = v469;
      v472 = v471;
      v473 = v462 + *(sub_2EF0(&qword_325F48, &qword_288EA8) + 36);
      *v473 = v433;
      *(v473 + 8) = v466;
      *(v473 + 16) = v468;
      *(v473 + 24) = v470;
      *(v473 + 32) = v472;
      *(v473 + 40) = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v474 = (v462 + *(v877 + 36));
      v475 = v974;
      *v474 = v973;
      v474[1] = v475;
      v474[2] = v975;
      v476 = v916;
      sub_8198(v457, v916, &qword_325DB0, &qword_288DC8);
      v477 = v879;
      sub_8198(v462, v879, &qword_325D88, &qword_288DA0);
      v478 = v917;
      sub_8198(v476, v917, &qword_325DB0, &qword_288DC8);
      v479 = sub_2EF0(&qword_325F50, &qword_288EB0);
      sub_8198(v477, v478 + *(v479 + 48), &qword_325D88, &qword_288DA0);
      sub_8E80(v462, &qword_325D88, &qword_288DA0);
      sub_8E80(v457, &qword_325DB0, &qword_288DC8);
      sub_8E80(v477, &qword_325D88, &qword_288DA0);
      sub_8E80(v476, &qword_325DB0, &qword_288DC8);

      sub_2F8C4(&v983);
      v302 = &qword_325D90;
      v303 = &qword_288DA8;
      v304 = v898;
      sub_8198(v898, v902, &qword_325D90, &qword_288DA8);
      swift_storeEnumTagMultiPayload();
      sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
      sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8);
      v480 = v904;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v384 = *v130;
        v383 = v158[1];
        v385 = type metadata accessor for BrickLockupModel(0);
        v386 = *(v155 + *(v385 + 20));
        sub_1F7FC4(&v983);
        v387 = *&v984[8];
        v388 = *&v984[16];
        sub_2E18(&v983, *&v984[8]);
        *&v973 = v384;
        *(&v973 + 1) = v383;
        LOBYTE(v974) = 1;
        v389 = sub_1F8134();
        BYTE2(v979) = -2;
        LOWORD(v979) = -772;
        v390 = (*(v388 + 16))(&v973, &v979, v387, v388, v143, v143 / v386, v389);
        sub_3080(&v983);
        v391 = type metadata accessor for ImageResourceLoader();
        v392 = *(v391 + 48);
        v393 = *(v391 + 52);
        v394 = swift_allocObject();
        *(v394 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v395 = swift_allocObject();
        *(v395 + 28) = 0;
        *(v395 + 16) = 0;
        *(v395 + 24) = 0;
        *(v394 + 24) = v395;
        sub_2603B0();
        *&v973 = v394;

        sub_2631D0();

        v396 = v983;
        *&v983 = sub_208AA0;
        *(&v983 + 1) = 0;
        *v984 = v390;
        *&v984[8] = v396;
        v397 = (v155 + *(v385 + 24));
        v398 = v397[1];
        if (v398)
        {
          v399 = *v397;
          v400 = v398;
        }

        else
        {
          v399 = 0;
          v400 = 0xE000000000000000;
        }

        v608 = v941;
        *&v973 = v399;
        *(&v973 + 1) = v400;

        sub_2EF0(&qword_3188A8, &qword_26BDD0);
        sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
        sub_10A84();
        v660 = v897;
        sub_262C00();

        swift_unknownObjectRelease();

        sub_8198(v660, v913, &qword_325DF0, &qword_288E08);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v661 = v914;
        sub_261F80();
        sub_8198(v661, v923, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A308();
        v662 = v924;
        sub_261F80();
        sub_8E80(v661, &qword_325DE0, &qword_288DF8);
        sub_8198(v662, v930, &qword_325DE8, &qword_288E00);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
        sub_20A4A4();
        v225 = v931;
        sub_261F80();
        sub_8E80(v662, &qword_325DE8, &qword_288E00);
        sub_8E80(v897, &qword_325DF0, &qword_288E08);
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v159 = sub_2EF0(&qword_325BB8, &qword_2891B0);
        v160 = *(v159 + 48);
        v161 = (v130 + *(v159 + 64));
        v163 = *v161;
        v946 = v161[1];
        v162 = v946;
        v164 = *(v953 + 32);
        v919 = (v953 + 32);
        v920 = v164;
        (v164)(v952, v158, v955);
        sub_22148(v158 + v160, v951, &qword_316208, &qword_268BD0);
        v165 = enum case for Color.RGBColorSpace.sRGB(_:);
        v166 = v893;
        v167 = *(v892 + 104);
        v168 = v894;
        v167(v893, enum case for Color.RGBColorSpace.sRGB(_:), v894);
        v948 = sub_263060();
        v167(v166, v165, v168);
        v169 = sub_263060();
        v170 = sub_263520();
        v171 = v910;
        *v910 = v170;
        v171[1] = v172;
        v945 = (v171 + *(sub_2EF0(&qword_325F58, &qword_288EB8) + 44));
        v173 = *(v155 + *(type metadata accessor for BrickLockupModel(0) + 20));
        sub_1F7FC4(&v983);
        v174 = *&v984[8];
        v175 = *&v984[16];
        sub_2E18(&v983, *&v984[8]);
        *&v973 = v163;
        *(&v973 + 1) = v162;
        LOBYTE(v974) = 1;
        v176 = sub_1F8134();
        BYTE2(v979) = -2;
        LOWORD(v979) = -772;
        v921 = (*(v175 + 16))(&v973, &v979, v174, v175, v143, v143 / v173, v176);
        sub_3080(&v983);
        v177 = type metadata accessor for ImageResourceLoader();
        v178 = *(v177 + 48);
        v179 = *(v177 + 52);
        v180 = swift_allocObject();
        *(v180 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v181 = swift_allocObject();
        *(v181 + 28) = 0;
        *(v181 + 16) = 0;
        *(v181 + 24) = 0;
        *(v180 + 24) = v181;
        sub_2603B0();
        *&v973 = v180;
        sub_2631D0();
        v916 = *(&v983 + 1);
        v918 = v983;
        LOBYTE(v983) = 1;
        sub_2EF0(&qword_3205C0, &qword_27C958);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_269100;
        *(v182 + 32) = v948;
        *(v182 + 40) = v169;
        v927 = v169;

        sub_263730();
        sub_263740();
        sub_263470();
        sub_261590();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v183 = sub_261E60();
        v184 = v917;
        *v917 = v183;
        v184[1] = 0x4020000000000000;
        *(v184 + 16) = 0;
        v909 = *(sub_2EF0(&qword_325F60, &qword_288EC0) + 44);
        v185 = v953;
        v186 = v938;
        v187 = v955;
        (*(v953 + 16))(v938, v952, v955);
        v188 = v937;
        sub_20DD24(v157, v937, type metadata accessor for BrickLockupView);
        sub_8198(v951, v947, &qword_316208, &qword_268BD0);
        v189 = (*(v185 + 80) + 16) & ~*(v185 + 80);
        v190 = (v934 + *(v933 + 80) + v189) & ~*(v933 + 80);
        v191 = (v939 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
        v192 = (*(v935 + 80) + v191 + 8) & ~*(v935 + 80);
        v193 = (v936 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
        v194 = swift_allocObject();
        (v920)(v194 + v189, v186, v187);
        sub_20DCBC(v188, v194 + v190, type metadata accessor for BrickLockupView);
        *(v194 + v191) = v143;
        sub_22148(v947, v194 + v192, &qword_316208, &qword_268BD0);
        v195 = (v194 + v193);
        *v195 = 0;
        v195[1] = 0;
        sub_2EF0(&qword_325F68, &qword_288EC8);
        sub_260A70();
        sub_260A50();
        sub_8E38(&qword_325F70, &qword_325F68, &qword_288EC8);
        sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
        sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
        v196 = v917;
        sub_260A80();
        LOBYTE(v190) = sub_262500();
        v197 = v949;
        sub_1F8488(v949);
        v198 = v950;
        sub_20DCBC(v197, v950, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v198, type metadata accessor for SizeConstants.Spacing);
        sub_2610C0();
        v199 = v196;
        v200 = v196 + *(v895 + 36);
        *v200 = v190;
        *(v200 + 1) = v201;
        *(v200 + 2) = v202;
        *(v200 + 3) = v203;
        *(v200 + 4) = v204;
        v200[40] = 0;
        v205 = v896;
        sub_8198(v199, v896, &qword_325DB8, &qword_288DD0);
        v954 = sub_208AA0;
        v968 = sub_208AA0;
        v969 = 0;
        v206 = v921;
        *&v970 = v921;
        v207 = v918;
        *(&v970 + 1) = v918;
        v208 = v916;
        v971 = v916;
        v209 = v970;
        v210 = v945;
        *v945 = sub_208AA0;
        *(v210 + 1) = v209;
        *(v210 + 2) = v971;
        v211 = v962;
        v973 = v962;
        v974 = v963;
        v976 = v965;
        v977 = v966;
        v212 = v964;
        v975 = v964;
        *(v210 + 72) = v963;
        v213 = v967;
        v978 = v967;
        v972 = 257;
        *(v210 + 24) = 257;
        *(v210 + 56) = v211;
        v215 = v965;
        v214 = v966;
        *(v210 + 17) = v213;
        *(v210 + 120) = v214;
        *(v210 + 104) = v215;
        *(v210 + 88) = v212;
        v216 = v210;
        v217 = sub_2EF0(&qword_325F78, &qword_288ED0);
        sub_8198(v205, v216 + *(v217 + 64), &qword_325DB8, &qword_288DD0);
        sub_8198(&v968, &v983, &qword_325F80, &qword_288ED8);
        sub_8198(&v973, &v983, &qword_3205C8, &unk_27C960);
        sub_8E80(v917, &qword_325DB8, &qword_288DD0);
        sub_8E80(v205, &qword_325DB8, &qword_288DD0);
        *&v984[16] = v964;
        v985 = v965;
        v986 = v966;
        *&v987 = v967;
        v983 = v962;
        *v984 = v963;
        sub_8E80(&v983, &qword_3205C8, &unk_27C960);
        v979 = v954;
        *&v980 = v206;
        *(&v980 + 1) = v207;
        v981 = v208;
        v982 = 257;
        sub_8E80(&v979, &qword_325F80, &qword_288ED8);

        v218 = v910;
        v219 = (v910 + *(v915 + 36));
        v220 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
        v221 = enum case for ColorScheme.dark(_:);
        v222 = sub_261180();
        (*(*(v222 - 8) + 104))(v219 + v220, v221, v222);
        *v219 = swift_getKeyPath();
        sub_8198(v218, v913, &qword_325DC0, &qword_288DD8);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v223 = v914;
        sub_261F80();
        sub_8198(v223, v923, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A308();
        v224 = v924;
        sub_261F80();
        sub_8E80(v223, &qword_325DE0, &qword_288DF8);
        sub_8198(v224, v930, &qword_325DE8, &qword_288E00);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
        sub_20A4A4();
        v225 = v931;
        sub_261F80();
        sub_8E80(v224, &qword_325DE8, &qword_288E00);
        v226 = v218;
        v227 = &qword_325DC0;
        v228 = &qword_288DD8;
LABEL_29:
        sub_8E80(v226, v227, v228);
        sub_8E80(v951, &qword_316208, &qword_268BD0);
        (*(v953 + 8))(v952, v955);
        v608 = v941;
LABEL_30:
        sub_8198(v225, v608, &qword_325DF8, &qword_288E10);
        swift_storeEnumTagMultiPayload();
        sub_20A584();
        sub_20A63C();
        sub_261F80();
        return sub_8E80(v225, &qword_325DF8, &qword_288E10);
      }

      v481 = sub_2EF0(&qword_325BC0, &qword_288C58);
      v482 = *(v481 + 48);
      v483 = (v130 + *(v481 + 64));
      v485 = *v483;
      v484 = v483[1];
      v915 = v485;
      v917 = v484;
      v486 = v953;
      v487 = *(v953 + 32);
      v913 = v953 + 32;
      v914 = v487;
      v488 = v952;
      v489 = v955;
      (v487)(v952, v130, v955);
      v490 = v130 + v482;
      v491 = v951;
      sub_22148(v490, v951, &qword_316208, &qword_268BD0);
      v492 = sub_261E60();
      v493 = v948;
      *v948 = v492;
      v493[1] = 0x4020000000000000;
      *(v493 + 16) = 0;
      v916 = (v493 + *(sub_2EF0(&qword_325E08, &qword_288E20) + 44));
      v494 = v949;
      sub_1F8488(v949);
      v946 = type metadata accessor for SizeConstants.Environment;
      v495 = v950;
      sub_20DCBC(v494, v950, type metadata accessor for SizeConstants.Environment);
      v945 = type metadata accessor for SizeConstants.Spacing;
      sub_20D990(v495, type metadata accessor for SizeConstants.Spacing);
      v496 = v938;
      v497 = v489;
      (*(v486 + 16))(v938, v488, v489);
      v498 = v937;
      sub_20DD24(v157, v937, type metadata accessor for BrickLockupView);
      v499 = v947;
      sub_8198(v491, v947, &qword_316208, &qword_268BD0);
      v500 = (*(v486 + 80) + 16) & ~*(v486 + 80);
      v501 = (v934 + *(v933 + 80) + v500) & ~*(v933 + 80);
      v502 = (v939 + *(v935 + 80) + v501) & ~*(v935 + 80);
      v503 = (v936 + v502 + 7) & 0xFFFFFFFFFFFFFFF8;
      v504 = swift_allocObject();
      (v914)(v504 + v500, v496, v497);
      sub_20DCBC(v498, v504 + v501, type metadata accessor for BrickLockupView);
      sub_22148(v499, v504 + v502, &qword_316208, &qword_268BD0);
      v505 = (v504 + v503);
      v506 = v917;
      *v505 = v915;
      v505[1] = v506;

      sub_2EF0(&qword_325E10, &qword_288E28);
      sub_260A70();
      sub_260A50();
      sub_8E38(&qword_325E18, &qword_325E10, &qword_288E28);
      sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
      sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
      v507 = v918;
      sub_260A80();
      v508 = v949;
      sub_1F8488(v949);
      v509 = v950;
      sub_20DCBC(v508, v950, v946);
      sub_20D990(v509, v945);
      v510 = v920;
      v511 = v920[2];
      v512 = v919;
      v513 = v921;
      v511(v919, v507, v921);
      v514 = v916;
      *v916 = 0x4030000000000000;
      *(v514 + 8) = 0;
      v515 = sub_2EF0(&qword_325E20, &qword_288E30);
      v511(v514 + *(v515 + 48), v512, v513);
      v516 = v514 + *(v515 + 64);
      *v516 = 0x4030000000000000;
      v516[8] = 0;
      v517 = v510[1];
      v517(v507, v513);
      v517(v512, v513);

      LOBYTE(v502) = sub_262530();
      sub_1F8488(v508);
      v518 = v950;
      sub_20DCBC(v508, v950, v946);
      sub_20D990(v518, v945);
      sub_2610C0();
      v520 = v519;
      v522 = v521;
      v524 = v523;
      v526 = v525;
      v527 = sub_2EF0(&qword_325E28, &qword_288E38);
      v304 = v948;
      v528 = v948 + *(v527 + 36);
      *v528 = v502;
      *(v528 + 1) = v520;
      *(v528 + 2) = v522;
      *(v528 + 3) = v524;
      *(v528 + 4) = v526;
      v528[40] = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v529 = (v304 + *(v927 + 36));
      v530 = *v984;
      *v529 = v983;
      v529[1] = v530;
      v529[2] = *&v984[16];
      v302 = &qword_325DB0;
      v303 = &qword_288DC8;
      sub_8198(v304, v902, &qword_325DB0, &qword_288DC8);
      swift_storeEnumTagMultiPayload();
      sub_20DB28(&qword_325E98, &qword_325DB0, &qword_288DC8, sub_20A3EC);
      sub_8E38(&qword_325EB8, &qword_325D90, &qword_288DA8);
      v480 = v904;
    }

    sub_261F80();
    sub_8198(v480, v923, &qword_325DA0, &qword_288DB8);
    swift_storeEnumTagMultiPayload();
    sub_20A0B0();
    sub_20A308();
    v531 = v924;
    sub_261F80();
    sub_8E80(v480, &qword_325DA0, &qword_288DB8);
    v532 = &qword_325DE8;
    v533 = &qword_288E00;
    sub_8198(v531, v930, &qword_325DE8, &qword_288E00);
    swift_storeEnumTagMultiPayload();
LABEL_28:
    sub_20A02C(&qword_325E60, &qword_325DE8, &qword_288E00, sub_20A308);
    sub_20A4A4();
    v225 = v931;
    sub_261F80();
    sub_8E80(v531, v532, v533);
    v226 = v304;
    v227 = v302;
    v228 = v303;
    goto LABEL_29;
  }

  sub_20DD24(&v149[*(v946 + 40)], v133, type metadata accessor for BrickLockupModel.BrickType);
  v151 = swift_getEnumCaseMultiPayload();
  if (v151 == 1)
  {
    v152 = sub_2EF0(&qword_325BB8, &qword_2891B0);
    v153 = *(v152 + 48);
    v154 = *&v133[*(v152 + 64) + 8];

    sub_8E80(&v133[v153], &qword_316208, &qword_268BD0);
    (*(v953 + 8))(v133, v955);
    goto LABEL_6;
  }

  if (!v151)
  {
    sub_20D990(v133, type metadata accessor for BrickLockupModel.BrickType);
LABEL_6:
    v149 = v954;
    goto LABEL_7;
  }

  v948 = v145;
  sub_20D990(v133, type metadata accessor for BrickLockupModel.BrickType);
  v305 = &v954[*(v150 + 40)];
  v306 = v891;
  sub_20DD24(v305, v891, type metadata accessor for BrickLockupModel.BrickType);
  v307 = swift_getEnumCaseMultiPayload();
  if (v307 <= 2)
  {
    v308 = v955;
    v309 = v952;
    if (!v307)
    {
      v664 = *v306;
      v663 = v306[1];
      v665 = v941;
      if (qword_315870 != -1)
      {
        swift_once();
      }

      v666 = sub_260D50();
      sub_B080(v666, qword_316000);
      v667 = sub_260D30();
      v668 = sub_264900();
      if (os_log_type_enabled(v667, v668))
      {
        v669 = swift_slowAlloc();
        *v669 = 0;
        _os_log_impl(&dword_0, v667, v668, "Editorial artwork only BrickType has the same layout for both AX style so this should be handle and never get here", v669, 2u);
      }

      v670 = type metadata accessor for BrickLockupModel(0);
      v671 = *&v305[*(v670 + 20)];
      sub_1F7FC4(&v983);
      v672 = *&v984[8];
      v673 = *&v984[16];
      sub_2E18(&v983, *&v984[8]);
      *&v973 = v664;
      *(&v973 + 1) = v663;
      LOBYTE(v974) = 1;
      v674 = sub_1F8134();
      BYTE2(v979) = -2;
      LOWORD(v979) = -772;
      v675 = (*(v673 + 16))(&v973, &v979, v672, v673, v143, v143 / v671, v674);
      sub_3080(&v983);
      v676 = type metadata accessor for ImageResourceLoader();
      v677 = *(v676 + 48);
      v678 = *(v676 + 52);
      v679 = swift_allocObject();
      *(v679 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v680 = swift_allocObject();
      *(v680 + 28) = 0;
      *(v680 + 16) = 0;
      *(v680 + 24) = 0;
      *(v679 + 24) = v680;
      sub_2603B0();
      *&v973 = v679;

      sub_2631D0();

      v681 = v983;
      *&v983 = sub_208AA0;
      *(&v983 + 1) = 0;
      *v984 = v675;
      *&v984[8] = v681;
      v682 = &v305[*(v670 + 24)];
      v683 = *(v682 + 1);
      if (v683)
      {
        v684 = *v682;
        v685 = v683;
      }

      else
      {
        v684 = 0;
        v685 = 0xE000000000000000;
      }

      *&v973 = v684;
      *(&v973 + 1) = v685;

      sub_2EF0(&qword_3188A8, &qword_26BDD0);
      sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
      sub_10A84();
      v828 = v853;
      sub_262C00();

      swift_unknownObjectRelease();

      sub_8198(v828, v913, &qword_325DF0, &qword_288E08);
      swift_storeEnumTagMultiPayload();
      sub_20A13C();
      sub_20A224();
      v829 = v914;
      sub_261F80();
      sub_8198(v829, v869, &qword_325DE0, &qword_288DF8);
      swift_storeEnumTagMultiPayload();
      sub_20A0B0();
      sub_20A6F4();
      v830 = v871;
      sub_261F80();
      sub_8E80(v829, &qword_325DE0, &qword_288DF8);
      sub_8198(v830, v888, &qword_325D40, &qword_288D58);
      swift_storeEnumTagMultiPayload();
      sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
      sub_20A8B0();
      v382 = v889;
      sub_261F80();
      sub_8E80(v830, &qword_325D40, &qword_288D58);
      sub_8E80(v853, &qword_325DF0, &qword_288E08);
      goto LABEL_51;
    }

    if (v307 == 1)
    {
      v310 = sub_2EF0(&qword_325BB8, &qword_2891B0);
      v311 = *(v310 + 48);
      v312 = (v306 + *(v310 + 64));
      v313 = v312[1];
      v932 = *v312;
      v314 = *(v953 + 32);
      v945 = (v953 + 32);
      v938 = v314;
      (v314)(v859, v306, v308);
      sub_22148(v306 + v311, v860, &qword_316208, &qword_268BD0);
      if (qword_315870 == -1)
      {
LABEL_18:
        v315 = sub_260D50();
        sub_B080(v315, qword_316000);
        v316 = sub_260D30();
        v317 = sub_264900();
        v318 = os_log_type_enabled(v316, v317);
        v319 = v954;
        if (v318)
        {
          v320 = swift_slowAlloc();
          *v320 = 0;
          _os_log_impl(&dword_0, v316, v317, "Editorial artwork BrickType has the same layout for both AX style so this should be handle and never get here", v320, 2u);
        }

        v321 = enum case for Color.RGBColorSpace.sRGB(_:);
        v322 = v893;
        v323 = *(v892 + 104);
        v324 = v894;
        v323(v893, enum case for Color.RGBColorSpace.sRGB(_:), v894);
        v325 = sub_263060();
        v323(v322, v321, v324);
        v326 = sub_263060();
        v327 = sub_263520();
        v328 = v910;
        *v910 = v327;
        v328[1] = v329;
        v948 = (v328 + *(sub_2EF0(&qword_325F58, &qword_288EB8) + 44));
        v330 = *&v305[*(type metadata accessor for BrickLockupModel(0) + 20)];
        sub_1F7FC4(&v983);
        v331 = *&v984[8];
        v332 = *&v984[16];
        sub_2E18(&v983, *&v984[8]);
        *&v973 = v932;
        v931 = v313;
        *(&v973 + 1) = v313;
        LOBYTE(v974) = 1;
        v333 = sub_1F8134();
        BYTE2(v979) = -2;
        LOWORD(v979) = -772;
        v932 = (*(v332 + 16))(&v973, &v979, v331, v332, v143, v143 / v330, v333);
        sub_3080(&v983);
        v334 = type metadata accessor for ImageResourceLoader();
        v335 = *(v334 + 48);
        v336 = *(v334 + 52);
        v337 = swift_allocObject();
        *(v337 + 16) = 0;
        sub_2EF0(&qword_318728, &qword_26DBF0);
        v338 = swift_allocObject();
        *(v338 + 28) = 0;
        *(v338 + 16) = 0;
        *(v338 + 24) = 0;
        *(v337 + 24) = v338;
        sub_2603B0();
        *&v973 = v337;
        sub_2631D0();
        v929 = *(&v983 + 1);
        v930 = v983;
        LOBYTE(v983) = 1;
        sub_2EF0(&qword_3205C0, &qword_27C958);
        v339 = swift_allocObject();
        *(v339 + 16) = xmmword_269100;
        v947 = v325;
        *(v339 + 32) = v325;
        *(v339 + 40) = v326;
        v946 = v326;

        sub_263730();
        sub_263740();
        sub_263470();
        sub_261590();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v340 = sub_261E60();
        v341 = v917;
        *v917 = v340;
        v341[1] = 0x4020000000000000;
        *(v341 + 16) = 0;
        v928 = *(sub_2EF0(&qword_325F60, &qword_288EC0) + 44);
        v342 = v953;
        v343 = v952;
        (*(v953 + 16))(v952, v859, v955);
        v344 = v937;
        sub_20DD24(v319, v937, type metadata accessor for BrickLockupView);
        v345 = v951;
        sub_8198(v860, v951, &qword_316208, &qword_268BD0);
        v346 = (*(v342 + 80) + 16) & ~*(v342 + 80);
        v347 = (v934 + *(v933 + 80) + v346) & ~*(v933 + 80);
        v348 = (v939 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
        v349 = (*(v935 + 80) + v348 + 8) & ~*(v935 + 80);
        v350 = (v936 + v349 + 7) & 0xFFFFFFFFFFFFFFF8;
        v351 = swift_allocObject();
        (v938)(v351 + v346, v343, v955);
        sub_20DCBC(v344, v351 + v347, type metadata accessor for BrickLockupView);
        *(v351 + v348) = v143;
        sub_22148(v345, v351 + v349, &qword_316208, &qword_268BD0);
        v352 = (v351 + v350);
        *v352 = 0;
        v352[1] = 0;
        sub_2EF0(&qword_325F68, &qword_288EC8);
        sub_260A70();
        sub_260A50();
        sub_8E38(&qword_325F70, &qword_325F68, &qword_288EC8);
        sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
        sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
        v353 = v917;
        sub_260A80();
        LOBYTE(v345) = sub_262500();
        v354 = v949;
        sub_1F8488(v949);
        v355 = v950;
        sub_20DCBC(v354, v950, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v355, type metadata accessor for SizeConstants.Spacing);
        sub_2610C0();
        v356 = v353 + *(v895 + 36);
        *v356 = v345;
        *(v356 + 1) = v357;
        *(v356 + 2) = v358;
        *(v356 + 3) = v359;
        *(v356 + 4) = v360;
        v356[40] = 0;
        v361 = v896;
        sub_8198(v353, v896, &qword_325DB8, &qword_288DD0);
        v954 = sub_208AA0;
        v968 = sub_208AA0;
        v969 = 0;
        v362 = v932;
        *&v970 = v932;
        v363 = v930;
        *(&v970 + 1) = v930;
        v364 = v929;
        v971 = v929;
        v365 = v970;
        v366 = v948;
        *v948 = sub_208AA0;
        *(v366 + 1) = v365;
        *(v366 + 2) = v971;
        v367 = v956;
        v973 = v956;
        v974 = v957;
        v368 = v960;
        v369 = v958;
        v370 = v959;
        v976 = v959;
        v977 = v960;
        v975 = v958;
        *(v366 + 9) = v957;
        *(v366 + 7) = v367;
        v371 = v961;
        v978 = v961;
        v972 = 257;
        *(v366 + 24) = 257;
        v366[17] = v371;
        *(v366 + 15) = v368;
        *(v366 + 13) = v370;
        *(v366 + 11) = v369;
        v372 = v366;
        v373 = sub_2EF0(&qword_325F78, &qword_288ED0);
        sub_8198(v361, v372 + *(v373 + 64), &qword_325DB8, &qword_288DD0);
        sub_8198(&v968, &v983, &qword_325F80, &qword_288ED8);
        sub_8198(&v973, &v983, &qword_3205C8, &unk_27C960);
        sub_8E80(v917, &qword_325DB8, &qword_288DD0);
        sub_8E80(v361, &qword_325DB8, &qword_288DD0);
        *&v984[16] = v958;
        v985 = v959;
        v986 = v960;
        *&v987 = v961;
        v983 = v956;
        *v984 = v957;
        sub_8E80(&v983, &qword_3205C8, &unk_27C960);
        v979 = v954;
        *&v980 = v362;
        *(&v980 + 1) = v363;
        v981 = v364;
        v982 = 257;
        sub_8E80(&v979, &qword_325F80, &qword_288ED8);

        v374 = v910;
        v375 = (v910 + *(v915 + 36));
        v376 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
        v377 = enum case for ColorScheme.dark(_:);
        v378 = sub_261180();
        (*(*(v378 - 8) + 104))(v375 + v376, v377, v378);
        *v375 = swift_getKeyPath();
        sub_8198(v374, v913, &qword_325DC0, &qword_288DD8);
        swift_storeEnumTagMultiPayload();
        sub_20A13C();
        sub_20A224();
        v379 = v914;
        sub_261F80();
        sub_8198(v379, v869, &qword_325DE0, &qword_288DF8);
        swift_storeEnumTagMultiPayload();
        sub_20A0B0();
        sub_20A6F4();
        v380 = v871;
        sub_261F80();
        sub_8E80(v379, &qword_325DE0, &qword_288DF8);
        sub_8198(v380, v888, &qword_325D40, &qword_288D58);
        swift_storeEnumTagMultiPayload();
        sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
        sub_20A8B0();
        v381 = v889;
        sub_261F80();
        v382 = v381;
        sub_8E80(v380, &qword_325D40, &qword_288D58);
        sub_8E80(v374, &qword_325DC0, &qword_288DD8);
        sub_8E80(v860, &qword_316208, &qword_268BD0);
        (*(v953 + 8))(v859, v955);
        goto LABEL_50;
      }

LABEL_55:
      swift_once();
      goto LABEL_18;
    }

    v740 = sub_2EF0(&qword_325BC0, &qword_288C58);
    v741 = *(v740 + 48);
    v742 = (v306 + *(v740 + 64));
    v744 = *v742;
    v743 = v742[1];
    v949 = v744;
    v946 = v743;
    v745 = v953;
    v746 = *(v953 + 32);
    v932 = v953 + 32;
    v945 = v746;
    (v746)(v309, v306, v308);
    v747 = v951;
    sub_22148(v306 + v741, v951, &qword_316208, &qword_268BD0);
    v748 = sub_261E50();
    v749 = v854;
    *v854 = v748;
    v749[1] = 0;
    *(v749 + 16) = 0;
    v950 = *(sub_2EF0(&qword_325FD0, &qword_288F40) + 44);
    (*(v745 + 16))(v938, v309, v308);
    sub_20DD24(v954, v937, type metadata accessor for BrickLockupView);
    sub_8198(v747, v947, &qword_316208, &qword_268BD0);
    v750 = (*(v745 + 80) + 16) & ~*(v745 + 80);
    v751 = v308;
    v752 = (v934 + *(v933 + 80) + v750) & ~*(v933 + 80);
    v753 = (v939 + *(v935 + 80) + v752) & ~*(v935 + 80);
    v754 = (v936 + v753 + 7) & 0xFFFFFFFFFFFFFFF8;
    v755 = (v754 + 15) & 0xFFFFFFFFFFFFFFF8;
    v756 = swift_allocObject();
    (v945)(v756 + v750, v938, v751);
    sub_20DCBC(v937, v756 + v752, type metadata accessor for BrickLockupView);
    sub_22148(v947, v756 + v753, &qword_316208, &qword_268BD0);
    *(v756 + v754) = v143;
    v757 = (v756 + v755);
    v758 = v946;
    *v757 = v949;
    v757[1] = v758;
    v759 = (v756 + ((v755 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v759 = KeyedEncodingContainer.encode<A>(_:forKey:);
    v759[1] = 0;
    sub_2EF0(&qword_325FD8, &qword_288F48);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FE0, &qword_325FD8, &qword_288F48);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v760 = v875;
    v761 = v872;
    (v872)(v875, enum case for DynamicTypeSize.xSmall(_:), v148);
    v762 = v876;
    v761(v876, enum case for DynamicTypeSize.accessibility3(_:), v148);
    result = sub_264380();
    if (result)
    {
      v763 = v863;
      v764 = v862[4];
      v764(v863, v760, v148);
      v765 = v864;
      v764((v763 + *(v864 + 48)), v762, v148);
      v766 = v865;
      sub_8198(v763, v865, &qword_3174E0, &qword_26B310);
      v767 = *(v765 + 48);
      v768 = v866;
      v764(v866, v766, v148);
      v769 = v861;
      v861(v766 + v767, v148);
      sub_22148(v763, v766, &qword_3174E0, &qword_26B310);
      v770 = v867;
      v764((v768 + *(v867 + 36)), (v766 + *(v765 + 48)), v148);
      v769(v766, v148);
      v954 = &protocol conformance descriptor for VStack<A>;
      v771 = sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38);
      v772 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
      v773 = v835;
      v774 = v839;
      v775 = v854;
      sub_262B70();
      sub_8E80(v768, &qword_3174E8, &qword_269970);
      sub_8E80(v775, &qword_325D20, &qword_288D38);
      v776 = v831;
      v777 = v773;
      v778 = v841;
      (*(v831 + 16))(v842, v777, v841);
      swift_storeEnumTagMultiPayload();
      *&v983 = v774;
      *(&v983 + 1) = v770;
      *v984 = v771;
      *&v984[8] = v772;
      swift_getOpaqueTypeConformance2();
      v779 = sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18);
      *&v983 = v843;
      *(&v983 + 1) = v770;
      *v984 = v779;
      *&v984[8] = v772;
      swift_getOpaqueTypeConformance2();
      v780 = v846;
      sub_261F80();
      sub_8198(v780, v869, &qword_325D18, &qword_288D30);
      swift_storeEnumTagMultiPayload();
      sub_20A0B0();
      sub_20A6F4();
      v781 = v871;
      sub_261F80();
      sub_8E80(v780, &qword_325D18, &qword_288D30);
      sub_8198(v781, v888, &qword_325D40, &qword_288D58);
      swift_storeEnumTagMultiPayload();
      sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
      sub_20A8B0();
      v382 = v889;
      sub_261F80();
      sub_8E80(v781, &qword_325D40, &qword_288D58);
      (*(v776 + 8))(v835, v778);
      goto LABEL_49;
    }

    goto LABEL_57;
  }

  v610 = v953;
  v611 = v955;
  v612 = v952;
  if (v307 == 3)
  {
    v686 = sub_2EF0(&qword_325BC8, &unk_2891A0);
    v687 = v686[12];
    v688 = (v306 + v686[16]);
    v690 = *v688;
    v689 = v688[1];
    v950 = v690;
    v949 = v689;
    v691 = (v306 + v686[20]);
    v692 = v691[5];
    v986 = v691[4];
    v987 = v692;
    v693 = v691[7];
    v988 = v691[6];
    v989 = v693;
    v694 = v691[1];
    v983 = *v691;
    *v984 = v694;
    v695 = v691[3];
    *&v984[16] = v691[2];
    v985 = v695;
    v696 = *(v610 + 32);
    v932 = v610 + 32;
    v945 = v696;
    (v696)(v612, v306, v611);
    sub_22148(v306 + v687, v951, &qword_316208, &qword_268BD0);
    v930 = type metadata accessor for BrickLockupView;
    v697 = v937;
    sub_20DD24(v954, v937, type metadata accessor for BrickLockupView);
    v698 = *(v933 + 80);
    v699 = (v698 + 16) & ~v698;
    v700 = (v939 + v699 + 7) & 0xFFFFFFFFFFFFFFF8;
    v701 = swift_allocObject();
    v931 = type metadata accessor for BrickLockupView;
    sub_20DCBC(v697, v701 + v699, type metadata accessor for BrickLockupView);
    v933 = v701;
    *(v701 + v700) = v143;
    v702 = (v701 + ((v700 + 15) & 0xFFFFFFFFFFFFFFF8));
    v703 = v985;
    v702[2] = *&v984[16];
    v702[3] = v703;
    v704 = *v984;
    *v702 = v983;
    v702[1] = v704;
    v705 = v989;
    v702[6] = v988;
    v702[7] = v705;
    v706 = v987;
    v702[4] = v986;
    v702[5] = v706;
    v707 = sub_261E50();
    v708 = v855;
    *v855 = v707;
    v708[1] = 0;
    *(v708 + 16) = 0;
    v946 = *(sub_2EF0(&qword_325FB8, &qword_288F30) + 44);
    v709 = v610 + 16;
    (*(v610 + 16))(v938, v952, v955);
    v710 = v858;
    sub_20DD24(v954, v858, v930);
    sub_8198(v951, v947, &qword_316208, &qword_268BD0);
    v711 = (*(v709 + 64) + 16) & ~*(v709 + 64);
    v712 = (v934 + v698 + v711) & ~v698;
    v713 = (v939 + *(v935 + 80) + v712) & ~*(v935 + 80);
    v714 = (v936 + v713 + 7) & 0xFFFFFFFFFFFFFFF8;
    v313 = ((v714 + 15) & 0xFFFFFFFFFFFFFFF8);
    v715 = swift_allocObject();
    (v945)(v715 + v711, v938, v955);
    sub_20DCBC(v710, v715 + v712, v931);
    sub_22148(v947, v715 + v713, &qword_316208, &qword_268BD0);
    *(v715 + v714) = v143;
    v716 = (v313 + v715);
    v717 = v949;
    *v716 = v950;
    v716[1] = v717;
    v718 = (v715 + ((v313 + 23) & 0xFFFFFFFFFFFFFFF8));
    v719 = v933;
    *v718 = sub_20C644;
    v718[1] = v719;
    sub_2EF0(&qword_325FC0, &qword_288F38);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FC8, &qword_325FC0, &qword_288F38);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v720 = v875;
    v305 = v872;
    (v872)(v875, enum case for DynamicTypeSize.xSmall(_:), v148);
    v721 = v876;
    (v305)(v876, enum case for DynamicTypeSize.accessibility3(_:), v148);
    if ((sub_264380() & 1) == 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v722 = v863;
    v723 = v862[4];
    v723(v863, v720, v148);
    v724 = v864;
    v723((v722 + *(v864 + 48)), v721, v148);
    v725 = v865;
    sub_8198(v722, v865, &qword_3174E0, &qword_26B310);
    v726 = *(v724 + 48);
    v727 = v866;
    v723(v866, v725, v148);
    v728 = v861;
    v861(v725 + v726, v148);
    sub_22148(v722, v725, &qword_3174E0, &qword_26B310);
    v729 = v867;
    v723((v727 + *(v867 + 36)), (v725 + *(v724 + 48)), v148);
    v728(v725, v148);
    v954 = sub_8E38(&qword_325EF0, &qword_325D00, &qword_288D18);
    v730 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v731 = v837;
    v732 = v843;
    v733 = v855;
    sub_262B70();
    sub_8E80(v727, &qword_3174E8, &qword_269970);
    sub_8E80(v733, &qword_325D00, &qword_288D18);
    v734 = v833;
    v735 = v731;
    v736 = v847;
    (*(v833 + 16))(v842, v735, v847);
    swift_storeEnumTagMultiPayload();
    v737 = sub_8E38(&qword_325EE8, &qword_325D20, &qword_288D38);
    *&v973 = v839;
    *(&v973 + 1) = v729;
    *&v974 = v737;
    *(&v974 + 1) = v730;
    swift_getOpaqueTypeConformance2();
    *&v973 = v732;
    *(&v973 + 1) = v729;
    *&v974 = v954;
    *(&v974 + 1) = v730;
    swift_getOpaqueTypeConformance2();
    v738 = v846;
    sub_261F80();
    sub_8198(v738, v869, &qword_325D18, &qword_288D30);
    swift_storeEnumTagMultiPayload();
    sub_20A0B0();
    sub_20A6F4();
    v739 = v871;
    sub_261F80();
    sub_8E80(v738, &qword_325D18, &qword_288D30);
    sub_8198(v739, v888, &qword_325D40, &qword_288D58);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v382 = v889;
    sub_261F80();
    sub_8E80(v739, &qword_325D40, &qword_288D58);
    (*(v734 + 8))(v837, v736);
    goto LABEL_49;
  }

  v613 = v951;
  if (v307 == 4)
  {
    v614 = sub_2EF0(&qword_325BD0, &qword_288C60);
    v615 = v614[12];
    v616 = (v306 + v614[16]);
    v618 = *v616;
    v617 = v616[1];
    v950 = v618;
    v949 = v617;
    v946 = *(v306 + v614[20]);
    LODWORD(v929) = *(v306 + v614[24]);
    v619 = *(v610 + 32);
    v932 = v610 + 32;
    v945 = v619;
    (v619)(v612, v306, v611);
    sub_22148(v306 + v615, v613, &qword_316208, &qword_268BD0);
    v930 = type metadata accessor for BrickLockupView;
    v620 = v937;
    sub_20DD24(v954, v937, type metadata accessor for BrickLockupView);
    v621 = *(v933 + 80);
    v622 = (v621 + 16) & ~v621;
    v623 = v610;
    v624 = (v939 + v622 + 7) & 0xFFFFFFFFFFFFFFF8;
    v625 = swift_allocObject();
    v931 = type metadata accessor for BrickLockupView;
    sub_20DCBC(v620, v625 + v622, type metadata accessor for BrickLockupView);
    v933 = v625;
    *(v625 + v624) = v143;
    v626 = v625 + ((v624 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v626 = v946;
    *(v626 + 8) = v929;
    v627 = sub_261E50();
    v628 = v856;
    *v856 = v627;
    v628[1] = 0;
    *(v628 + 16) = 0;
    v946 = *(sub_2EF0(&qword_325FA0, &qword_288F20) + 44);
    (*(v610 + 16))(v938, v952, v611);
    v629 = v858;
    sub_20DD24(v954, v858, v930);
    sub_8198(v951, v947, &qword_316208, &qword_268BD0);
    v630 = (*(v623 + 80) + 16) & ~*(v623 + 80);
    v631 = (v934 + v621 + v630) & ~v621;
    v632 = (v939 + *(v935 + 80) + v631) & ~*(v935 + 80);
    v633 = (v936 + v632 + 7) & 0xFFFFFFFFFFFFFFF8;
    v634 = (v633 + 15) & 0xFFFFFFFFFFFFFFF8;
    v635 = swift_allocObject();
    (v945)(v635 + v630, v938, v955);
    sub_20DCBC(v629, v635 + v631, v931);
    sub_22148(v947, v635 + v632, &qword_316208, &qword_268BD0);
    *(v635 + v633) = v143;
    v636 = (v635 + v634);
    v637 = v949;
    *v636 = v950;
    v636[1] = v637;
    v638 = (v635 + ((v634 + 23) & 0xFFFFFFFFFFFFFFF8));
    v639 = v933;
    *v638 = sub_20BC70;
    v638[1] = v639;
    sub_2EF0(&qword_325FA8, &qword_288F28);
    sub_260A70();
    sub_260A50();
    sub_8E38(&qword_325FB0, &qword_325FA8, &qword_288F28);
    sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    sub_260A80();
    v640 = v875;
    v641 = v872;
    (v872)(v875, enum case for DynamicTypeSize.xSmall(_:), v148);
    v642 = v876;
    v641(v876, enum case for DynamicTypeSize.accessibility3(_:), v148);
    result = sub_264380();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v643 = v863;
    v644 = v862[4];
    v644(v863, v640, v148);
    v645 = v864;
    v644((v643 + *(v864 + 48)), v642, v148);
    v646 = v865;
    sub_8198(v643, v865, &qword_3174E0, &qword_26B310);
    v647 = *(v645 + 48);
    v648 = v866;
    v644(v866, v646, v148);
    v649 = v861;
    v861(v646 + v647, v148);
    sub_22148(v643, v646, &qword_3174E0, &qword_26B310);
    v650 = v867;
    v644((v648 + *(v867 + 36)), (v646 + *(v645 + 48)), v148);
    v649(v646, v148);
    v954 = &protocol conformance descriptor for VStack<A>;
    v651 = sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08);
    v652 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v653 = v836;
    v654 = v844;
    v655 = v856;
    sub_262B70();
    sub_8E80(v648, &qword_3174E8, &qword_269970);
    sub_8E80(v655, &qword_325CF0, &qword_288D08);
    v656 = v832;
    v657 = v849;
    (*(v832 + 16))(v848, v653, v849);
    swift_storeEnumTagMultiPayload();
    *&v983 = v654;
    *(&v983 + 1) = v650;
    *v984 = v651;
    *&v984[8] = v652;
    swift_getOpaqueTypeConformance2();
    v658 = sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8);
    *&v983 = v850;
    *(&v983 + 1) = v650;
    *v984 = v658;
    *&v984[8] = v652;
    swift_getOpaqueTypeConformance2();
    v659 = v851;
    sub_261F80();
    sub_8198(v659, v888, &qword_325CE8, &qword_288D00);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v382 = v889;
    sub_261F80();
    sub_8E80(v659, &qword_325CE8, &qword_288D00);
    (*(v656 + 8))(v836, v657);
LABEL_49:
    sub_8E80(v951, &qword_316208, &qword_268BD0);
    (*(v953 + 8))(v952, v955);
LABEL_50:
    v665 = v941;
LABEL_51:
    sub_8198(v382, v665, &qword_325D48, &qword_288D60);
    swift_storeEnumTagMultiPayload();
    sub_20A584();
    sub_20A63C();
    sub_261F80();
    return sub_8E80(v382, &qword_325D48, &qword_288D60);
  }

  v782 = sub_2EF0(&qword_325BD8, &unk_289180);
  v783 = v782[12];
  v784 = (v306 + v782[16]);
  v786 = *v784;
  v785 = v784[1];
  v950 = v786;
  v949 = v785;
  v946 = *(v306 + v782[20]);
  LODWORD(v929) = *(v306 + v782[24]);
  v787 = *(v610 + 32);
  v932 = v610 + 32;
  v945 = v787;
  (v787)(v612, v306, v611);
  sub_22148(v306 + v783, v613, &qword_316208, &qword_268BD0);
  v930 = type metadata accessor for BrickLockupView;
  v788 = v937;
  sub_20DD24(v954, v937, type metadata accessor for BrickLockupView);
  v789 = *(v933 + 80);
  v790 = (v789 + 16) & ~v789;
  v791 = v610;
  v792 = (v939 + v790 + 7) & 0xFFFFFFFFFFFFFFF8;
  v793 = swift_allocObject();
  v931 = type metadata accessor for BrickLockupView;
  sub_20DCBC(v788, v793 + v790, type metadata accessor for BrickLockupView);
  v933 = v793;
  *(v793 + v792) = v143;
  v794 = v793 + ((v792 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v794 = v946;
  *(v794 + 8) = v929;
  v795 = sub_261E50();
  v796 = v857;
  *v857 = v795;
  v796[1] = 0;
  *(v796 + 16) = 0;
  v946 = *(sub_2EF0(&qword_325F88, &qword_288F10) + 44);
  (*(v610 + 16))(v938, v952, v611);
  v797 = v858;
  sub_20DD24(v954, v858, v930);
  sub_8198(v951, v947, &qword_316208, &qword_268BD0);
  v798 = (*(v791 + 80) + 16) & ~*(v791 + 80);
  v799 = (v934 + v789 + v798) & ~v789;
  v800 = (v939 + *(v935 + 80) + v799) & ~*(v935 + 80);
  v801 = (v936 + v800 + 7) & 0xFFFFFFFFFFFFFFF8;
  v802 = (v801 + 15) & 0xFFFFFFFFFFFFFFF8;
  v803 = swift_allocObject();
  (v945)(v803 + v798, v938, v955);
  sub_20DCBC(v797, v803 + v799, v931);
  sub_22148(v947, v803 + v800, &qword_316208, &qword_268BD0);
  *(v803 + v801) = v143;
  v804 = (v803 + v802);
  v805 = v949;
  *v804 = v950;
  v804[1] = v805;
  v806 = (v803 + ((v802 + 23) & 0xFFFFFFFFFFFFFFF8));
  v807 = v933;
  *v806 = sub_20B2C0;
  v806[1] = v807;
  sub_2EF0(&qword_325F90, &qword_288F18);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_325F98, &qword_325F90, &qword_288F18);
  sub_20DBBC(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_20DBBC(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A80();
  v808 = v875;
  v809 = v872;
  (v872)(v875, enum case for DynamicTypeSize.xSmall(_:), v148);
  v810 = v876;
  v809(v876, enum case for DynamicTypeSize.accessibility3(_:), v148);
  result = sub_264380();
  if (result)
  {
    v811 = v863;
    v812 = v862[4];
    v812(v863, v808, v148);
    v813 = v864;
    v812((v811 + *(v864 + 48)), v810, v148);
    v814 = v865;
    sub_8198(v811, v865, &qword_3174E0, &qword_26B310);
    v815 = *(v813 + 48);
    v816 = v866;
    v812(v866, v814, v148);
    v817 = v861;
    v861(v814 + v815, v148);
    sub_22148(v811, v814, &qword_3174E0, &qword_26B310);
    v818 = v867;
    v812((v816 + *(v867 + 36)), (v814 + *(v813 + 48)), v148);
    v817(v814, v148);
    v954 = sub_8E38(&qword_325F08, &qword_325CD0, &qword_288CE8);
    v819 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v820 = v838;
    v821 = v850;
    v822 = v857;
    sub_262B70();
    sub_8E80(v816, &qword_3174E8, &qword_269970);
    sub_8E80(v822, &qword_325CD0, &qword_288CE8);
    v823 = v834;
    v824 = v820;
    v825 = v852;
    (*(v834 + 16))(v848, v824, v852);
    swift_storeEnumTagMultiPayload();
    v826 = sub_8E38(&qword_325F00, &qword_325CF0, &qword_288D08);
    *&v983 = v844;
    *(&v983 + 1) = v818;
    *v984 = v826;
    *&v984[8] = v819;
    swift_getOpaqueTypeConformance2();
    *&v983 = v821;
    *(&v983 + 1) = v818;
    *v984 = v954;
    *&v984[8] = v819;
    swift_getOpaqueTypeConformance2();
    v827 = v851;
    sub_261F80();
    sub_8198(v827, v888, &qword_325CE8, &qword_288D00);
    swift_storeEnumTagMultiPayload();
    sub_20A02C(&qword_325ED8, &qword_325D40, &qword_288D58, sub_20A6F4);
    sub_20A8B0();
    v382 = v889;
    sub_261F80();
    sub_8E80(v827, &qword_325CE8, &qword_288D00);
    (*(v823 + 8))(v838, v825);
    goto LABEL_49;
  }

LABEL_58:
  __break(1u);
  return result;
}

double sub_200E2C@<D0>(_OWORD *a1@<X1>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_263550();
  a2[1] = v14;
  v15 = sub_2EF0(&qword_325F40, &qword_288EA0);
  sub_206CDC(a1, a2 + *(v15 + 44), a3);
  LOBYTE(a1) = sub_262510();
  sub_1F8488(v13);
  sub_20DCBC(v13, v9, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v9, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_2EF0(&qword_325F48, &qword_288EA8) + 36);
  *v24 = a1;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v25 = (a2 + *(sub_2EF0(&qword_325D88, &qword_288DA0) + 36));
  v26 = v28[1];
  *v25 = v28[0];
  v25[1] = v26;
  result = *&v29;
  v25[2] = v29;
  return result;
}

double sub_201030@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_263550();
  a3[1] = v16;
  v17 = sub_2EF0(&qword_325F18, &qword_288E78);
  sub_20713C(a1, a2 & 1, a3 + *(v17 + 44), a4);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v18 = (a3 + *(sub_2EF0(&qword_325F20, &qword_288E80) + 36));
  v19 = v31[1];
  *v18 = v31[0];
  v18[1] = v19;
  v18[2] = v31[2];
  LOBYTE(a1) = sub_262530();
  sub_1F8488(v15);
  sub_20DCBC(v15, v11, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v11, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a3 + *(sub_2EF0(&qword_325F28, &qword_288E88) + 36);
  *v28 = a1;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_2EF0(&qword_325D78, &qword_288D90);
  result = 0.0;
  *(a3 + *(v29 + 36)) = xmmword_288B10;
  return result;
}

double sub_201258@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_263550();
  a3[1] = v16;
  v17 = sub_2EF0(&qword_325E30, &qword_288E40);
  sub_207BD4(a1, a2, a3 + *(v17 + 44), a4);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v18 = (a3 + *(sub_2EF0(&qword_325E38, &qword_288E48) + 36));
  v19 = v31[1];
  *v18 = v31[0];
  v18[1] = v19;
  v18[2] = v31[2];
  LOBYTE(a2) = sub_262530();
  sub_1F8488(v15);
  sub_20DCBC(v15, v11, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v11, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a3 + *(sub_2EF0(&qword_325E40, &qword_288E50) + 36);
  *v28 = a2;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_2EF0(&qword_325D58, &qword_288D70);
  result = 0.0;
  *(a3 + *(v29 + 36)) = xmmword_288B10;
  return result;
}

uint64_t sub_201480@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t *a19)
{
  v186 = a8;
  v187 = a7;
  v169 = a5;
  v170 = a6;
  v178 = a4;
  v172 = a2;
  v197 = a1;
  v194 = a9;
  v190 = a10;
  v191 = a11;
  v185 = sub_2EF0(a10, a11);
  v20 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v189 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v188 = &v167 - v23;
  v24 = sub_2EF0(&qword_316208, &qword_268BD0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v177 = &v167 - v26;
  v195 = a12;
  v196 = a13;
  v27 = sub_2EF0(a12, a13);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v193 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v192 = &v167 - v31;
  v32 = type metadata accessor for SizeConstants.Spacing(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v176 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SizeConstants(0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v175 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25FF40();
  v182 = *(v38 - 1);
  v183 = v38;
  v39 = v182[8];
  __chkstk_darwin(v38);
  v181 = (&v167 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_2EF0(&qword_318458, &unk_26B270);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v167 - v43;
  v45 = sub_262730();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v167 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FontConstants.Brick(0);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v53 = (&v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_260BD0();
  v55 = *(v54 - 8);
  v56 = v55[8];
  __chkstk_darwin(v54);
  v171 = &v167 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = (&v167 - v59);
  v180 = sub_2EF0(&qword_325FE8, &qword_288F50);
  v61 = *(*(v180 - 1) + 64);
  __chkstk_darwin(v180);
  v198 = &v167 - v62;
  v174 = sub_2EF0(&qword_325FF0, &qword_288F58);
  v63 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v184 = &v167 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v173 = &v167 - v66;
  v68 = __chkstk_darwin(v67);
  v199 = v55;
  v200 = &v167 - v69;
  v70 = v55[2];
  v179 = v60;
  v70(v60, v172, v54, v68);
  v172 = v53;
  v71 = v53;
  v72 = a3;
  sub_1F8860(v71);
  v73 = v45;
  (*(v46 + 104))(v49, enum case for Font.TextStyle.body(_:), v45);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v74 = sub_2625C0();
    (*(*(v74 - 8) + 56))(v44, 1, 1, v74);
  }

  else
  {
    v75 = enum case for Font.Design.serif (_:);
    v76 = sub_2625C0();
    v77 = v72;
    v78 = v54;
    v79 = *(v76 - 8);
    (*(v79 + 104))(v44, v75, v76);
    (*(v79 + 56))(v44, 0, 1, v76);
    v54 = v78;
    v72 = v77;
  }

  sub_262680();
  sub_8E80(v44, &qword_318458, &unk_26B270);
  (*(v46 + 8))(v49, v73);
  v80 = sub_2625A0();

  sub_20D990(v172, type metadata accessor for FontConstants.Brick);
  sub_30CC(v197, &v233);
  v81 = v179;
  v82 = sub_260BB0();
  v84 = v83;
  v85 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v86 = sub_19C6C8(v82, v84, v80);
  [*&v86[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v87 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (v182[2])(v181, &v86[v87], v183);

  v88 = sub_2628D0();
  v90 = v89;
  LOBYTE(v86) = v91;
  v93 = v92;

  sub_3080(&v233);
  v172 = v199[1];
  v172(v81, v54);
  *&v233 = v88;
  *(&v233 + 1) = v90;
  LOBYTE(v234) = v86 & 1;
  *(&v234 + 1) = v93;
  v94 = v198;
  sub_262EA0();
  sub_39DBC(v88, v90, v86 & 1);

  v95 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  v97 = (v94 + *(sub_2EF0(&qword_325FF8, &qword_288F90) + 36));
  *v97 = KeyPath;
  v97[1] = v95;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v98 = (v94 + *(v180 + 9));
  v99 = v262;
  *v98 = v261;
  v98[1] = v99;
  v98[2] = v263;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_269100;
  LOBYTE(v93) = sub_2624F0();
  *(v100 + 32) = v93;
  v101 = sub_262510();
  *(v100 + 33) = v101;
  v102 = sub_262540();
  sub_262540();
  if (sub_262540() != v93)
  {
    v102 = sub_262540();
  }

  v183 = a19;
  v182 = a18;
  v181 = a17;
  v180 = a16;
  v103 = a15;
  v179 = a14;

  sub_262540();
  v104 = sub_262540();
  v105 = v192;
  if (v104 != v101)
  {
    v102 = sub_262540();
  }

  v106 = v175;
  sub_1F8488(v175);
  v107 = v176;
  sub_20DCBC(v106, v176, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v107, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = v173;
  sub_22148(v198, v173, &qword_325FE8, &qword_288F50);
  v117 = v116 + *(v174 + 36);
  *v117 = v102;
  *(v117 + 8) = v109;
  *(v117 + 16) = v111;
  *(v117 + 24) = v113;
  *(v117 + 32) = v115;
  *(v117 + 40) = 0;
  sub_22148(v116, v200, &qword_325FF0, &qword_288F58);
  *v105 = sub_261D10();
  *(v105 + 8) = 0;
  *(v105 + 16) = 0;
  v118 = v177;
  sub_8198(v178, v177, &qword_316208, &qword_268BD0);
  v119 = v199;
  if ((v199[6])(v118, 1, v54) == 1)
  {
    sub_8E80(v118, &qword_316208, &qword_268BD0);
    v120 = v170;
    if (!v170)
    {
      sub_20D9F8(&v247);
      goto LABEL_13;
    }

    sub_1F7FC4(&v233);
    v121 = *(&v234 + 1);
    v122 = v235;
    sub_2E18(&v233, *(&v234 + 1));
    *&v230 = v169;
    *(&v230 + 1) = v120;
    LOBYTE(v231[0]) = 1;
    v123 = sub_1F8134();
    BYTE2(v216) = -2;
    LOWORD(v216) = -772;
    v124 = (*(v122 + 16))(&v230, &v216, v121, v122, 36.0, 36.0, v123);
    sub_3080(&v233);
    v125 = type metadata accessor for ImageResourceLoader();
    v126 = *(v125 + 48);
    v127 = *(v125 + 52);
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v129 = swift_allocObject();
    *(v129 + 28) = 0;
    *(v129 + 16) = 0;
    *(v129 + 24) = 0;
    *(v128 + 24) = v129;
    sub_2603B0();
    *&v230 = v128;
    sub_2631D0();
    v130 = v233;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v230 = sub_208AA0;
    *(&v230 + 1) = 0;
    *&v231[0] = v124;
    *(v231 + 8) = v130;
    sub_20DA24(&v230);
    v243 = v231[9];
    v244 = v231[10];
    v245 = v231[11];
    v246 = v232;
    v239 = v231[5];
    v240 = v231[6];
    v241 = v231[7];
    v242 = v231[8];
    v235 = v231[1];
    v236 = v231[2];
    v237 = v231[3];
    v238 = v231[4];
    v233 = v230;
    v234 = v231[0];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0);
    sub_20DA30();
    v103 = a15;
    sub_261F80();
    v243 = v226;
    v244 = v227;
    v245 = v228;
    v246 = v229;
    v239 = v222;
    v240 = v223;
    v241 = v224;
    v242 = v225;
    v235 = v218;
    v236 = v219;
    v237 = v220;
    v238 = v221;
    v233 = v216;
    v234 = v217;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v233);
  }

  else
  {
    v168 = v54;
    v131 = v119[4];
    v199 = a15;
    v132 = v72;
    v133 = v171;
    v131(v171, v118, v54);
    v134 = sub_261E50();
    LOBYTE(v216) = 1;
    sub_203DEC(v133, v132, v197, &v233);
    v210 = v241;
    v211 = v242;
    v212 = v243;
    v206 = v237;
    v207 = v238;
    v208 = v239;
    v209 = v240;
    v202 = v233;
    v203 = v234;
    v204 = v235;
    v205 = v236;
    v214[8] = v241;
    v214[9] = v242;
    v214[10] = v243;
    v214[4] = v237;
    v214[5] = v238;
    v214[6] = v239;
    v214[7] = v240;
    v214[0] = v233;
    v214[1] = v234;
    v213 = v244;
    v215 = v244;
    v214[2] = v235;
    v214[3] = v236;
    sub_8198(&v202, &v230, &qword_326038, &qword_288FC0);
    sub_8E80(v214, &qword_326038, &qword_288FC0);
    *(&v201[8] + 7) = v210;
    *(&v201[9] + 7) = v211;
    *(&v201[10] + 7) = v212;
    *(&v201[11] + 7) = v213;
    *(&v201[4] + 7) = v206;
    *(&v201[5] + 7) = v207;
    *(&v201[6] + 7) = v208;
    *(&v201[7] + 7) = v209;
    *(v201 + 7) = v202;
    *(&v201[1] + 7) = v203;
    *(&v201[2] + 7) = v204;
    *(&v201[3] + 7) = v205;
    *(&v231[8] + 1) = v201[8];
    *(&v231[9] + 1) = v201[9];
    *(&v231[10] + 1) = v201[10];
    v231[11] = *(&v201[10] + 15);
    *(&v231[4] + 1) = v201[4];
    *(&v231[5] + 1) = v201[5];
    *(&v231[6] + 1) = v201[6];
    *(&v231[7] + 1) = v201[7];
    *(v231 + 1) = v201[0];
    *(&v231[1] + 1) = v201[1];
    *(&v231[2] + 1) = v201[2];
    v230 = v134;
    LOBYTE(v231[0]) = v216;
    *(&v231[3] + 1) = v201[3];
    sub_20DAE8(&v230);
    v243 = v231[9];
    v244 = v231[10];
    v245 = v231[11];
    v246 = v232;
    v239 = v231[5];
    v240 = v231[6];
    v241 = v231[7];
    v242 = v231[8];
    v235 = v231[1];
    v236 = v231[2];
    v237 = v231[3];
    v238 = v231[4];
    v233 = v230;
    v234 = v231[0];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0);
    sub_20DA30();
    v103 = v199;
    sub_261F80();
    v243 = v226;
    v244 = v227;
    v245 = v228;
    v246 = v229;
    v239 = v222;
    v240 = v223;
    v241 = v224;
    v242 = v225;
    v235 = v218;
    v236 = v219;
    v237 = v220;
    v238 = v221;
    v233 = v216;
    v234 = v217;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v233);
    v172(v133, v168);
  }

  v257 = v243;
  v258 = v244;
  v259 = v245;
  v260 = v246;
  v253 = v239;
  v254 = v240;
  v255 = v241;
  v256 = v242;
  v249 = v235;
  v250 = v236;
  v251 = v237;
  v252 = v238;
  v247 = v233;
  v248 = v234;
LABEL_13:
  v135 = v105 + *(sub_2EF0(v179, v103) + 44);
  v136 = v188;
  v187();
  v137 = sub_262510();
  sub_2610C0();
  v138 = v136 + *(v185 + 36);
  *v138 = v137;
  *(v138 + 8) = v139;
  *(v138 + 16) = v140;
  *(v138 + 24) = v141;
  *(v138 + 32) = v142;
  *(v138 + 40) = 0;
  v144 = v189;
  v143 = v190;
  v145 = v191;
  sub_8198(v136, v189, v190, v191);
  v146 = v258;
  v231[9] = v257;
  v231[10] = v258;
  v147 = v259;
  v231[11] = v259;
  v148 = v253;
  v149 = v254;
  v231[5] = v253;
  v231[6] = v254;
  v150 = v255;
  v151 = v256;
  v231[7] = v255;
  v231[8] = v256;
  v152 = v249;
  v153 = v250;
  v231[1] = v249;
  v231[2] = v250;
  v154 = v251;
  v155 = v252;
  v231[3] = v251;
  v231[4] = v252;
  v156 = v247;
  v157 = v248;
  v230 = v247;
  v231[0] = v248;
  *(v135 + 160) = v257;
  *(v135 + 176) = v146;
  *(v135 + 192) = v147;
  *(v135 + 96) = v148;
  *(v135 + 112) = v149;
  *(v135 + 128) = v150;
  *(v135 + 144) = v151;
  *(v135 + 32) = v152;
  *(v135 + 48) = v153;
  *(v135 + 64) = v154;
  *(v135 + 80) = v155;
  v232 = v260;
  *(v135 + 208) = v260;
  *v135 = v156;
  *(v135 + 16) = v157;
  v158 = sub_2EF0(v180, v181);
  sub_8198(v144, v135 + *(v158 + 48), v143, v145);
  sub_8198(&v230, &v233, &qword_326000, &qword_288F98);
  sub_8E80(v136, v143, v145);
  sub_8E80(v144, v143, v145);
  v243 = v257;
  v244 = v258;
  v245 = v259;
  v246 = v260;
  v239 = v253;
  v240 = v254;
  v241 = v255;
  v242 = v256;
  v235 = v249;
  v236 = v250;
  v237 = v251;
  v238 = v252;
  v233 = v247;
  v234 = v248;
  sub_8E80(&v233, &qword_326000, &qword_288F98);
  v159 = v200;
  v160 = v184;
  sub_8198(v200, v184, &qword_325FF0, &qword_288F58);
  v161 = v193;
  v163 = v195;
  v162 = v196;
  sub_8198(v105, v193, v195, v196);
  v164 = v194;
  sub_8198(v160, v194, &qword_325FF0, &qword_288F58);
  v165 = sub_2EF0(v182, v183);
  sub_8198(v161, v164 + *(v165 + 48), v163, v162);
  sub_8E80(v105, v163, v162);
  sub_8E80(v159, &qword_325FF0, &qword_288F58);
  sub_8E80(v161, v163, v162);
  return sub_8E80(v160, &qword_325FF0, &qword_288F58);
}

uint64_t sub_202904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v138 = a8;
  v139 = a7;
  v124 = a5;
  v125 = a6;
  v135 = a4;
  v137 = a2;
  v141 = a9;
  v142 = a1;
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v136 = &v123 - v12;
  v13 = type metadata accessor for SizeConstants.Spacing(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v134 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SizeConstants(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v133 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25FF40();
  v129 = *(v19 - 8);
  v130 = v19;
  v20 = *(v129 + 64);
  __chkstk_darwin(v19);
  v128 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_318458, &unk_26B270);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v123 - v24;
  v26 = sub_262730();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FontConstants.Brick(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_260BD0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v126 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v123 - v40;
  v127 = sub_2EF0(&qword_325FE8, &qword_288F50);
  v42 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v143 = &v123 - v43;
  v132 = sub_2EF0(&qword_325FF0, &qword_288F58);
  v44 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v140 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v131 = &v123 - v47;
  v49 = __chkstk_darwin(v48);
  v144 = v36;
  v145 = &v123 - v50;
  v51 = *(v36 + 16);
  v146 = v35;
  v51(v41, v137, v35, v49);
  v137 = a3;
  sub_1F8860(v34);
  (*(v27 + 104))(v30, enum case for Font.TextStyle.body(_:), v26);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v52 = sub_2625C0();
    (*(*(v52 - 8) + 56))(v25, 1, 1, v52);
  }

  else
  {
    v53 = enum case for Font.Design.serif (_:);
    v54 = sub_2625C0();
    v55 = *(v54 - 8);
    (*(v55 + 104))(v25, v53, v54);
    (*(v55 + 56))(v25, 0, 1, v54);
  }

  sub_262680();
  sub_8E80(v25, &qword_318458, &unk_26B270);
  (*(v27 + 8))(v30, v26);
  v56 = sub_2625A0();

  sub_20D990(v34, type metadata accessor for FontConstants.Brick);
  sub_30CC(v142, v180);
  v57 = sub_260BB0();
  v59 = v58;
  v60 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v61 = sub_19C6C8(v57, v59, v56);
  [*&v61[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v62 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v129 + 16))(v128, &v61[v62], v130);

  v63 = sub_2628D0();
  v65 = v64;
  LOBYTE(v61) = v66;
  v68 = v67;

  sub_3080(v180);
  v130 = *(v144 + 8);
  v130(v41, v146);
  *&v180[0] = v63;
  *(&v180[0] + 1) = v65;
  LOBYTE(v180[1]) = v61 & 1;
  *(&v180[1] + 1) = v68;
  v69 = v143;
  sub_262EA0();
  sub_39DBC(v63, v65, v61 & 1);

  v70 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  KeyPath = swift_getKeyPath();
  v72 = (v69 + *(sub_2EF0(&qword_325FF8, &qword_288F90) + 36));
  *v72 = KeyPath;
  v72[1] = v70;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v73 = (v69 + *(v127 + 36));
  v74 = v199;
  *v73 = v198;
  v73[1] = v74;
  v73[2] = v200;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_269100;
  LOBYTE(v56) = sub_2624F0();
  *(v75 + 32) = v56;
  v76 = sub_262510();
  *(v75 + 33) = v76;
  v77 = sub_262540();
  sub_262540();
  if (sub_262540() != v56)
  {
    v77 = sub_262540();
  }

  sub_262540();
  if (sub_262540() != v76)
  {
    v77 = sub_262540();
  }

  v79 = v136;
  v78 = v137;
  v80 = v133;
  sub_1F8488(v133);
  v81 = v80;
  v82 = v134;
  sub_20DCBC(v81, v134, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v82, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v131;
  sub_22148(v143, v131, &qword_325FE8, &qword_288F50);
  v92 = v91 + *(v132 + 36);
  *v92 = v77;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  sub_22148(v91, v145, &qword_325FF0, &qword_288F58);
  v93 = sub_261D10();
  v183 = 0;
  sub_8198(v135, v79, &qword_316208, &qword_268BD0);
  v94 = v144;
  v95 = v146;
  if ((*(v144 + 48))(v79, 1, v146) == 1)
  {
    sub_8E80(v79, &qword_316208, &qword_268BD0);
    v96 = v125;
    if (!v125)
    {
      sub_20D9F8(&v184);
      goto LABEL_13;
    }

    sub_1F7FC4(v180);
    v97 = *(&v180[1] + 1);
    v98 = *&v180[2];
    sub_2E18(v180, *(&v180[1] + 1));
    *&v179[0] = v124;
    *(&v179[0] + 1) = v96;
    LOBYTE(v179[1]) = 1;
    v99 = sub_1F8134();
    BYTE2(v169) = -2;
    LOWORD(v169) = -772;
    v100 = (*(v98 + 16))(v179, &v169, v97, v98, 36.0, 36.0, v99);
    sub_3080(v180);
    v101 = type metadata accessor for ImageResourceLoader();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    v104 = swift_allocObject();
    *(v104 + 16) = 0;
    sub_2EF0(&qword_318728, &qword_26DBF0);
    v105 = swift_allocObject();
    *(v105 + 28) = 0;
    *(v105 + 16) = 0;
    *(v105 + 24) = 0;
    *(v104 + 24) = v105;
    sub_2603B0();
    *&v179[0] = v104;
    sub_2631D0();
    v106 = v180[0];
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    *&v179[0] = sub_208AA0;
    *(&v179[0] + 1) = 0;
    *&v179[1] = v100;
    *(&v179[1] + 8) = v106;
    sub_20DA24(v179);
    v180[10] = v179[10];
    v180[11] = v179[11];
    v180[12] = v179[12];
    LOBYTE(v180[13]) = v179[13];
    v180[6] = v179[6];
    v180[7] = v179[7];
    v180[8] = v179[8];
    v180[9] = v179[9];
    v180[2] = v179[2];
    v180[3] = v179[3];
    v180[4] = v179[4];
    v180[5] = v179[5];
    v180[0] = v179[0];
    v180[1] = v179[1];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0);
    sub_20DA30();
    sub_261F80();
    v180[10] = *&v170[144];
    v180[11] = *&v170[160];
    v180[12] = *&v170[176];
    LOBYTE(v180[13]) = v170[192];
    v180[6] = *&v170[80];
    v180[7] = *&v170[96];
    v180[8] = *&v170[112];
    v180[9] = *&v170[128];
    v180[2] = *&v170[16];
    v180[3] = *&v170[32];
    v180[4] = *&v170[48];
    v180[5] = *&v170[64];
    v180[0] = v169;
    v180[1] = *v170;
    v107 = KeyedEncodingContainer.encode<A>(_:forKey:)(v180);
  }

  else
  {
    v143 = v93;
    v108 = v126;
    (*(v94 + 32))(v126, v79, v95);
    v144 = sub_261E50();
    LOBYTE(v169) = 1;
    sub_203DEC(v108, v78, v142, v180);
    v148[8] = v180[8];
    v148[9] = v180[9];
    v148[10] = v180[10];
    v148[4] = v180[4];
    v148[5] = v180[5];
    v148[6] = v180[6];
    v148[7] = v180[7];
    v148[0] = v180[0];
    v148[1] = v180[1];
    v148[2] = v180[2];
    v148[3] = v180[3];
    v168[8] = v180[8];
    v168[9] = v180[9];
    v168[10] = v180[10];
    v168[4] = v180[4];
    v168[5] = v180[5];
    v168[6] = v180[6];
    v168[7] = v180[7];
    v168[0] = v180[0];
    v168[1] = v180[1];
    *&v148[11] = *&v180[11];
    *&v168[11] = *&v180[11];
    v168[2] = v180[2];
    v168[3] = v180[3];
    sub_8198(v148, v179, &qword_326038, &qword_288FC0);
    sub_8E80(v168, &qword_326038, &qword_288FC0);
    *(&v147[8] + 7) = v148[8];
    *(&v147[9] + 7) = v148[9];
    *(&v147[10] + 7) = v148[10];
    *(&v147[11] + 7) = *&v148[11];
    *(&v147[4] + 7) = v148[4];
    *(&v147[5] + 7) = v148[5];
    *(&v147[6] + 7) = v148[6];
    *(&v147[7] + 7) = v148[7];
    *(v147 + 7) = v148[0];
    *(&v147[1] + 7) = v148[1];
    *(&v147[2] + 7) = v148[2];
    *(&v147[3] + 7) = v148[3];
    *(&v179[9] + 1) = v147[8];
    *(&v179[10] + 1) = v147[9];
    *(&v179[11] + 1) = v147[10];
    v93 = v143;
    v179[12] = *(&v147[10] + 15);
    *(&v179[5] + 1) = v147[4];
    *(&v179[6] + 1) = v147[5];
    *(&v179[7] + 1) = v147[6];
    *(&v179[8] + 1) = v147[7];
    *(&v179[1] + 1) = v147[0];
    *(&v179[2] + 1) = v147[1];
    *(&v179[3] + 1) = v147[2];
    v179[0] = v144;
    LOBYTE(v179[1]) = v169;
    *(&v179[4] + 1) = v147[3];
    sub_20DAE8(v179);
    v180[10] = v179[10];
    v180[11] = v179[11];
    v180[12] = v179[12];
    LOBYTE(v180[13]) = v179[13];
    v180[6] = v179[6];
    v180[7] = v179[7];
    v180[8] = v179[8];
    v180[9] = v179[9];
    v180[2] = v179[2];
    v180[3] = v179[3];
    v180[4] = v179[4];
    v180[5] = v179[5];
    v180[0] = v179[0];
    v180[1] = v179[1];
    sub_2EF0(&qword_326018, &qword_288FB0);
    sub_2EF0(&qword_326020, &qword_288FB8);
    sub_8E38(&qword_326028, &qword_326018, &qword_288FB0);
    sub_20DA30();
    sub_261F80();
    v180[10] = *&v170[144];
    v180[11] = *&v170[160];
    v180[12] = *&v170[176];
    LOBYTE(v180[13]) = v170[192];
    v180[6] = *&v170[80];
    v180[7] = *&v170[96];
    v180[8] = *&v170[112];
    v180[9] = *&v170[128];
    v180[2] = *&v170[16];
    v180[3] = *&v170[32];
    v180[4] = *&v170[48];
    v180[5] = *&v170[64];
    v180[0] = v169;
    v180[1] = *v170;
    KeyedEncodingContainer.encode<A>(_:forKey:)(v180);
    v107 = (v130)(v108, v146);
  }

  v194 = v180[10];
  v195 = v180[11];
  v196 = v180[12];
  v197 = v180[13];
  v190 = v180[6];
  v191 = v180[7];
  v192 = v180[8];
  v193 = v180[9];
  v186 = v180[2];
  v187 = v180[3];
  v188 = v180[4];
  v189 = v180[5];
  v184 = v180[0];
  v185 = v180[1];
LABEL_13:
  v139(v107);
  v109 = sub_262510();
  sub_2610C0();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v150[10] = v194;
  v150[11] = v195;
  v150[12] = v196;
  v150[6] = v190;
  v150[7] = v191;
  v150[8] = v192;
  v150[9] = v193;
  v150[2] = v186;
  v150[3] = v187;
  v150[4] = v188;
  v150[5] = v189;
  v150[0] = v184;
  v150[1] = v185;
  v162 = v194;
  v163 = v195;
  v164 = v196;
  v158 = v190;
  v159 = v191;
  v160 = v192;
  v161 = v193;
  v154 = v186;
  v155 = v187;
  v156 = v188;
  v157 = v189;
  v152 = v184;
  v153 = v185;
  v166[10] = v194;
  v166[11] = v195;
  v166[12] = v196;
  v166[6] = v190;
  v166[7] = v191;
  v166[8] = v192;
  v166[9] = v193;
  v166[2] = v186;
  v166[3] = v187;
  v166[4] = v188;
  v166[5] = v189;
  v151 = v197;
  LOBYTE(v165) = v197;
  v149 = 0;
  v167 = v197;
  v166[0] = v184;
  v166[1] = v185;
  sub_8198(v150, v180, &qword_326000, &qword_288F98);
  sub_8E80(v166, &qword_326000, &qword_288F98);
  *&v182[167] = v162;
  *&v182[183] = v163;
  *&v182[199] = v164;
  *&v182[215] = v165;
  *&v182[103] = v158;
  *&v182[119] = v159;
  *&v182[135] = v160;
  *&v182[151] = v161;
  *&v182[39] = v154;
  *&v182[55] = v155;
  *&v182[71] = v156;
  *&v182[87] = v157;
  *&v182[7] = v152;
  *&v182[23] = v153;
  v168[0] = v93;
  LOBYTE(v168[1]) = v183;
  *(&v168[11] + 1) = *&v182[160];
  *(&v168[12] + 1) = *&v182[176];
  *(&v168[13] + 1) = *&v182[192];
  v168[14] = *&v182[207];
  *(&v168[7] + 1) = *&v182[96];
  *(&v168[8] + 1) = *&v182[112];
  *(&v168[9] + 1) = *&v182[128];
  *(&v168[10] + 1) = *&v182[144];
  *(&v168[3] + 1) = *&v182[32];
  *(&v168[4] + 1) = *&v182[48];
  *(&v168[5] + 1) = *&v182[64];
  *(&v168[6] + 1) = *&v182[80];
  *(&v168[1] + 1) = *v182;
  *(&v168[2] + 1) = *&v182[16];
  LOBYTE(v168[15]) = v109;
  *(&v168[15] + 1) = *v181;
  DWORD1(v168[15]) = *&v181[3];
  *(&v168[15] + 1) = v111;
  *&v168[16] = v113;
  *(&v168[16] + 1) = v115;
  *&v168[17] = v117;
  BYTE8(v168[17]) = 0;
  v169 = v93;
  v170[0] = v183;
  *&v170[97] = *&v182[96];
  *&v170[113] = *&v182[112];
  *&v170[129] = *&v182[128];
  *&v170[145] = *&v182[144];
  *&v170[33] = *&v182[32];
  *&v170[49] = *&v182[48];
  *&v170[65] = *&v182[64];
  *&v170[81] = *&v182[80];
  *&v170[1] = *v182;
  *&v170[17] = *&v182[16];
  *&v171[15] = *&v182[207];
  *v171 = *&v182[192];
  *&v170[177] = *&v182[176];
  *&v170[161] = *&v182[160];
  v172 = v109;
  *v173 = *v181;
  *&v173[3] = *&v181[3];
  v174 = v111;
  v175 = v113;
  v176 = v115;
  v177 = v117;
  v178 = 0;
  sub_8198(v168, v180, &qword_326008, &qword_288FA0);
  sub_8E80(&v169, &qword_326008, &qword_288FA0);
  v118 = v145;
  v119 = v140;
  sub_8198(v145, v140, &qword_325FF0, &qword_288F58);
  memcpy(v148, v168, 0x119uLL);
  v120 = v141;
  sub_8198(v119, v141, &qword_325FF0, &qword_288F58);
  v121 = *(sub_2EF0(&qword_326010, &qword_288FA8) + 48);
  memcpy(v179, v148, 0x119uLL);
  memcpy((v120 + v121), v148, 0x119uLL);
  sub_8198(v179, v180, &qword_326008, &qword_288FA0);
  sub_8E80(v118, &qword_325FF0, &qword_288F58);
  memcpy(v180, v148, 0x119uLL);
  sub_8E80(v180, &qword_326008, &qword_288FA0);
  return sub_8E80(v119, &qword_325FF0, &qword_288F58);
}

uint64_t sub_203DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v82 = a4;
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25FF40();
  v76 = *(v78 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v78);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_318458, &unk_26B270);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v72 - v16;
  v18 = sub_262730();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FontConstants.Brick(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_260BD0();
  v27 = *(KeyPath - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(KeyPath);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31, a1, v29);
  v81 = a2;
  sub_1F8860(v26);
  (*(v19 + 104))(v22, enum case for Font.TextStyle.caption2(_:), v18);
  v32 = sub_2625C0();
  (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
  v33 = sub_262680();
  sub_8E80(v17, &qword_318458, &unk_26B270);
  (*(v19 + 8))(v22, v18);
  sub_20D990(v26, type metadata accessor for FontConstants.Brick);
  sub_30CC(v77, v94);
  v34 = sub_260BB0();
  v36 = v35;
  objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v37 = sub_19C6C8(v34, v36, v33);
  [*&v37[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v38 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v76 + 16))(v75, &v37[v38], v78);

  v39 = sub_2628D0();
  v76 = v40;
  v77 = v39;
  LOBYTE(v37) = v41;
  v78 = v42;

  sub_3080(v94);
  (*(v27 + 8))(v31, KeyPath);
  KeyPath = swift_getKeyPath();
  v75 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v73 = swift_getKeyPath();
  v43 = v37 & 1;
  v117 = v37 & 1;
  v115 = 0;
  sub_2EF0(qword_31B050, &qword_27CCE0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_269100;
  LOBYTE(v18) = sub_262530();
  *(v44 + 32) = v18;
  v45 = sub_262520();
  *(v44 + 33) = v45;
  v46 = sub_262540();
  sub_262540();
  if (sub_262540() != v18)
  {
    v46 = sub_262540();
  }

  sub_262540();
  if (sub_262540() != v45)
  {
    v46 = sub_262540();
  }

  v47 = v79;
  sub_1F8488(v79);
  v48 = v80;
  sub_20DCBC(v47, v80, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v48, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v118 = 0;
  sub_263520();
  sub_2613A0();
  *(v120 + 7) = *&v120[7];
  *(&v120[2] + 7) = *&v120[9];
  *(&v120[4] + 7) = v121;
  v58 = v76;
  v57 = v77;
  *&v86 = v77;
  *(&v86 + 1) = v76;
  LOBYTE(v87) = v43;
  *(&v87 + 1) = *v116;
  DWORD1(v87) = *&v116[3];
  v59 = v78;
  v61 = v73;
  v60 = KeyPath;
  *(&v87 + 1) = v78;
  *&v88 = KeyPath;
  *(&v88 + 1) = 3;
  LOBYTE(v89) = 0;
  DWORD1(v89) = *&v114[3];
  *(&v89 + 1) = *v114;
  v62 = v75;
  *(&v89 + 1) = v73;
  *&v90 = v75;
  BYTE8(v90) = v46;
  HIDWORD(v90) = *&v119[3];
  *(&v90 + 9) = *v119;
  *&v91 = v50;
  *(&v91 + 1) = v52;
  *&v92 = v54;
  *(&v92 + 1) = v56;
  v93[0] = 0;
  v63 = *&v120[2];
  *&v93[48] = *(&v121 + 1);
  *&v93[33] = *&v120[4];
  v64 = *v120;
  *&v93[17] = *&v120[2];
  *&v93[1] = *v120;
  *(&v84[2] + 7) = v88;
  *(&v84[1] + 7) = v87;
  *(v84 + 7) = v86;
  *(&v84[6] + 7) = v92;
  *(&v84[5] + 7) = v91;
  *(&v84[4] + 7) = v90;
  *(&v84[3] + 7) = v89;
  *(&v84[10] + 7) = *&v93[48];
  *(&v84[9] + 7) = *&v93[32];
  *(&v84[8] + 7) = *&v93[16];
  *(&v84[7] + 7) = *v93;
  v65 = v84[6];
  v66 = v82;
  *(v82 + 121) = v84[7];
  v67 = v84[9];
  *(v66 + 137) = v84[8];
  *(v66 + 153) = v67;
  *(v66 + 168) = *(&v84[9] + 15);
  v68 = v84[2];
  *(v66 + 57) = v84[3];
  v69 = v84[5];
  *(v66 + 73) = v84[4];
  *(v66 + 89) = v69;
  *(v66 + 105) = v65;
  v70 = v84[1];
  *(v66 + 9) = v84[0];
  v85 = 0;
  *v66 = 0x4018000000000000;
  *(v66 + 8) = 0;
  *(v66 + 25) = v70;
  *(v66 + 41) = v68;
  v94[0] = v57;
  v94[1] = v58;
  v95 = v43;
  *v96 = *v116;
  *&v96[3] = *&v116[3];
  v97 = v59;
  v98 = v60;
  v99 = 3;
  v100 = 0;
  *v101 = *v114;
  *&v101[3] = *&v114[3];
  v102 = v61;
  v103 = v62;
  v104 = v46;
  *&v105[3] = *&v119[3];
  *v105 = *v119;
  v106 = v50;
  v107 = v52;
  v108 = v54;
  v109 = v56;
  v110 = 0;
  v111 = v64;
  v112 = v63;
  v113[0] = *&v120[4];
  *(v113 + 15) = *(&v120[5] + 7);
  sub_8198(&v86, &v83, &qword_326040, &qword_288FF8);
  return sub_8E80(v94, &qword_326040, &qword_288FF8);
}

uint64_t sub_204698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double (*a5)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v123 = a6;
  v109 = a5;
  v126 = a4;
  v136 = a7;
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v127 = &v108 - v12;
  v13 = type metadata accessor for ColorConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v139 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_25FF40();
  v143 = *(v138 - 8);
  v16 = *(v143 + 64);
  __chkstk_darwin(v138);
  v128 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_318458, &unk_26B270);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  v24 = sub_262730();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v120 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v108 - v29;
  v31 = type metadata accessor for FontConstants.Brick(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v119 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v108 - v35;
  v37 = sub_260BD0();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v121 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v108 - v41;
  v43 = __chkstk_darwin(v42);
  v45 = &v108 - v44;
  v124 = v46;
  v47 = *(v46 + 16);
  v141 = v48;
  v116 = v47;
  v117 = v46 + 16;
  (v47)(&v108 - v44, a2, v43);
  v140 = a3;
  sub_1F8860(v36);
  v142 = v25;
  v49 = *(v25 + 104);
  v137 = v24;
  v114 = v49;
  v115 = v25 + 104;
  v49(v30, enum case for Font.TextStyle.body(_:), v24);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v50 = sub_2625C0();
    (*(*(v50 - 8) + 56))(v23, 1, 1, v50);
  }

  else
  {
    v51 = enum case for Font.Design.serif (_:);
    v52 = a1;
    v53 = sub_2625C0();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v23, v51, v53);
    v55 = v53;
    a1 = v52;
    (*(v54 + 56))(v23, 0, 1, v55);
  }

  v110 = a1;
  sub_262680();
  sub_8E80(v23, &qword_318458, &unk_26B270);
  v113 = *(v142 + 8);
  v113(v30, v137);
  v56 = sub_2625A0();

  sub_20D990(v36, type metadata accessor for FontConstants.Brick);
  sub_30CC(a1, &v166);
  v57 = sub_260BB0();
  v59 = v58;
  v112 = type metadata accessor for BooksHTMLConverter();
  v60 = objc_allocWithZone(v112);

  v61 = sub_19C6C8(v57, v59, v56);
  [*&v61[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v62 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v63 = *(v143 + 16);
  v64 = v128;
  v143 += 16;
  v111 = v63;
  v63(v128, &v61[v62], v138);

  v65 = sub_2628D0();
  v133 = v66;
  v134 = v65;
  v68 = v67;
  v135 = v69;

  sub_3080(&v166);
  v70 = v124;
  v71 = v141;
  v125 = *(v124 + 8);
  v118 = v124 + 8;
  v125(v45, v141);
  KeyPath = swift_getKeyPath();
  v72 = v139;
  sub_1F8674(v139);
  v131 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_20D990(v72, type metadata accessor for ColorConstants);
  v130 = swift_getKeyPath();
  LODWORD(v142) = v68 & 1;
  v180 = v68 & 1;
  v178 = 0;
  sub_263580();
  sub_2613A0();
  v73 = v127;
  sub_8198(v126, v127, &qword_316208, &qword_268BD0);
  if ((*(v70 + 48))(v73, 1, v71) == 1)
  {
    sub_8E80(v73, &qword_316208, &qword_268BD0);
    v74 = v123;
    if (v123)
    {
      v75 = sub_261D30();
      LOBYTE(v156) = 1;
      sub_206A68(v109, v74, &v166);
      v155[0] = v170;
      v155[1] = v171;
      v155[2] = v172;
      LOBYTE(v155[3]) = v173[0];
      v151 = v166;
      v152 = v167;
      v153 = v168;
      v154 = v169;
      v145 = v166;
      v146 = v167;
      v147 = v168;
      v148 = v169;
      v149[0] = v170;
      v149[1] = v171;
      v149[2] = v172;
      LOBYTE(v149[3]) = v173[0];
      sub_8198(&v151, &v158, &qword_3260D0, &qword_289088);
      sub_8E80(&v145, &qword_3260D0, &qword_289088);
      *&v144[71] = v155[0];
      *&v144[87] = v155[1];
      *&v144[103] = v155[2];
      *&v144[7] = v151;
      *&v144[23] = v152;
      *&v144[39] = v153;
      *&v144[55] = v154;
      *(v157 + 1) = *v144;
      *(&v157[1] + 1) = *&v144[16];
      *(&v157[2] + 1) = *&v144[32];
      *(&v157[6] + 1) = *&v144[96];
      *(&v157[5] + 1) = *&v144[80];
      *(&v157[4] + 1) = *&v144[64];
      v144[119] = v155[3];
      v76 = v156;
      v156 = v75;
      LOBYTE(v157[0]) = v76;
      *(&v157[7] + 1) = *&v144[112];
      *(&v157[3] + 1) = *&v144[48];
      sub_20DB1C(&v156);
      v164 = v157[5];
      v165[0] = v157[6];
      *(v165 + 10) = *(&v157[6] + 10);
      v160 = v157[1];
      v161 = v157[2];
      v163 = v157[4];
      v162 = v157[3];
      v159 = v157[0];
      v158 = v156;
      sub_2EF0(&qword_326118, &qword_2890E8);
      sub_2EF0(&qword_3260D8, &qword_289090);
      sub_20DB28(&qword_326128, &qword_326118, &qword_2890E8, sub_20DC04);
      sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090);
      sub_261F80();
      v164 = v172;
      v165[0] = v173[0];
      *(v165 + 10) = *(v173 + 10);
      v160 = v168;
      v161 = v169;
      v163 = v171;
      v162 = v170;
      v159 = v167;
      v158 = v166;
      KeyedEncodingContainer.encode<A>(_:forKey:)(&v158);
      v172 = v164;
      v173[0] = v165[0];
      *(v173 + 10) = *(v165 + 10);
      v168 = v160;
      v169 = v161;
      v171 = v163;
      v170 = v162;
      v167 = v159;
      v166 = v158;
    }

    else
    {
      sub_20DAF8(&v166);
    }
  }

  else
  {
    v77 = *(v70 + 32);
    v78 = v129;
    v77(v129, v73, v71);
    v79 = v121;
    v116(v121, v78, v71);
    v80 = v119;
    sub_1F8860(v119);
    v81 = v120;
    v82 = v137;
    v114(v120, enum case for Font.TextStyle.caption2(_:), v137);
    v83 = sub_2625C0();
    v84 = v122;
    (*(*(v83 - 8) + 56))(v122, 1, 1, v83);
    v85 = sub_262680();
    sub_8E80(v84, &qword_318458, &unk_26B270);
    v113(v81, v82);
    sub_20D990(v80, type metadata accessor for FontConstants.Brick);
    sub_30CC(v110, &v166);
    v86 = sub_260BB0();
    v88 = v87;
    v89 = objc_allocWithZone(v112);

    v90 = sub_19C6C8(v86, v88, v85);
    [*&v90[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v91 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v111(v64, &v90[v91], v138);

    v92 = sub_2628D0();
    v94 = v93;
    LOBYTE(v80) = v95;
    v143 = v96;

    sub_3080(&v166);
    v125(v79, v141);
    v97 = swift_getKeyPath();
    v98 = v139;
    sub_1F8674(v139);
    v99 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_20D990(v98, type metadata accessor for ColorConstants);
    v100 = swift_getKeyPath();
    LOBYTE(v166) = v80 & 1;
    LOBYTE(v158) = 0;
    sub_263580();
    sub_2613A0();
    *&v156 = v92;
    *(&v156 + 1) = v94;
    LOBYTE(v157[0]) = v80 & 1;
    *(&v157[0] + 1) = v143;
    *&v157[1] = v97;
    *(&v157[1] + 1) = 3;
    LOBYTE(v157[2]) = 0;
    *(&v157[2] + 1) = v100;
    *&v157[3] = v99;
    sub_20DBAC(&v156);
    v164 = v157[5];
    v165[0] = v157[6];
    *(v165 + 10) = *(&v157[6] + 10);
    v160 = v157[1];
    v161 = v157[2];
    v163 = v157[4];
    v162 = v157[3];
    v159 = v157[0];
    v158 = v156;
    sub_2EF0(&qword_326118, &qword_2890E8);
    sub_2EF0(&qword_3260D8, &qword_289090);
    sub_20DB28(&qword_326128, &qword_326118, &qword_2890E8, sub_20DC04);
    sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090);
    sub_261F80();
    v125(v129, v141);
    v164 = v172;
    v165[0] = v173[0];
    *(v165 + 10) = *(v173 + 10);
    v160 = v168;
    v161 = v169;
    v163 = v171;
    v162 = v170;
    v159 = v167;
    v158 = v166;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v158);
    v172 = v164;
    v173[0] = v165[0];
    *(v173 + 10) = *(v165 + 10);
    v168 = v160;
    v169 = v161;
    v171 = v163;
    v170 = v162;
    v167 = v159;
    v166 = v158;
  }

  v164 = v172;
  v165[0] = v173[0];
  *(v165 + 10) = *(v173 + 10);
  v160 = v168;
  v161 = v169;
  v163 = v171;
  v162 = v170;
  v159 = v167;
  v158 = v166;
  v102 = v133;
  v101 = v134;
  *&v151 = v134;
  *(&v151 + 1) = v133;
  LOBYTE(v152) = v142;
  *(&v152 + 1) = *v179;
  DWORD1(v152) = *&v179[3];
  v103 = v135;
  *(&v152 + 1) = v135;
  v105 = v131;
  v104 = KeyPath;
  *&v153 = KeyPath;
  *(&v153 + 1) = 3;
  LOBYTE(v154) = 0;
  *(&v154 + 1) = *v177;
  DWORD1(v154) = *&v177[3];
  v106 = v130;
  *(&v154 + 1) = v130;
  *&v155[0] = v131;
  *(&v155[2] + 8) = v176;
  *(&v155[1] + 8) = v175;
  *(v155 + 8) = v174;
  v150[2] = v153;
  v150[3] = v154;
  v150[0] = v151;
  v150[1] = v152;
  v150[4] = v155[0];
  v150[5] = v155[1];
  v150[6] = v155[2];
  v157[1] = v168;
  v157[2] = v169;
  v156 = v166;
  v157[0] = v167;
  *(&v157[6] + 10) = *(v173 + 10);
  v157[6] = v173[0];
  v157[5] = v172;
  v157[3] = v170;
  v157[4] = v171;
  *(&v150[12] + 8) = v171;
  *(&v150[13] + 8) = v172;
  *(&v150[14] + 8) = v173[0];
  *(&v150[15] + 2) = *(v173 + 10);
  *(&v150[8] + 8) = v167;
  *&v150[7] = *(&v176 + 1);
  *(&v150[9] + 8) = v168;
  *(&v150[10] + 8) = v169;
  *(&v150[11] + 8) = v170;
  *(&v150[7] + 8) = v166;
  memcpy(v136, v150, 0x102uLL);
  sub_8198(&v151, &v145, &qword_326118, &qword_2890E8);
  sub_8198(&v156, &v145, &qword_326120, &qword_2890F0);
  sub_8E80(&v158, &qword_326120, &qword_2890F0);
  *&v145 = v101;
  *(&v145 + 1) = v102;
  LOBYTE(v146) = v142;
  *(&v146 + 1) = *v179;
  DWORD1(v146) = *&v179[3];
  *(&v146 + 1) = v103;
  *&v147 = v104;
  *(&v147 + 1) = 3;
  LOBYTE(v148) = 0;
  *(&v148 + 1) = *v177;
  DWORD1(v148) = *&v177[3];
  *(&v148 + 1) = v106;
  *&v149[0] = v105;
  *(&v149[2] + 8) = v176;
  *(&v149[1] + 8) = v175;
  *(v149 + 8) = v174;
  return sub_8E80(&v145, &qword_326118, &qword_2890E8);
}

uint64_t sub_2057F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double (*a4)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v148 = a5;
  v133 = a4;
  v151 = a3;
  v162 = a2;
  v158 = a6;
  v159 = a1;
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v152 = &v132 - v10;
  v11 = type metadata accessor for ColorConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25FF40();
  v165 = *(v15 - 8);
  v16 = *(v165 + 64);
  __chkstk_darwin(v15);
  v160 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_318458, &unk_26B270);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v146 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v132 - v22;
  v24 = sub_262730();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v145 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v132 - v29;
  v31 = type metadata accessor for FontConstants.Brick(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v144 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v132 - v35;
  v37 = sub_260BD0();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v147 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v153 = &v132 - v41;
  v43 = __chkstk_darwin(v42);
  v163 = v45;
  v164 = &v132 - v44;
  v46 = *(*&v45 + 16);
  v47 = v25;
  v166 = v48;
  v142 = v46;
  v143 = *&v45 + 16;
  v46(v43);
  v157 = v36;
  sub_1F8860(v36);
  v140 = *(v25 + 104);
  v141 = v25 + 104;
  v140(v30, enum case for Font.TextStyle.body(_:), v24);
  v49 = _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0();
  v161 = v14;
  if (v49)
  {
    v50 = sub_2625C0();
    (*(*(v50 - 8) + 56))(v23, 1, 1, v50);
  }

  else
  {
    v51 = enum case for Font.Design.serif (_:);
    v52 = sub_2625C0();
    v53 = v24;
    v54 = *(v52 - 8);
    (*(v54 + 104))(v23, v51, v52);
    (*(v54 + 56))(v23, 0, 1, v52);
    v24 = v53;
  }

  v135 = v24;
  v136 = v15;
  sub_262680();
  sub_8E80(v23, &qword_318458, &unk_26B270);
  v55 = *(v47 + 8);
  v134 = v47 + 8;
  v139 = v55;
  v55(v30, v24);
  v56 = sub_2625A0();

  sub_20D990(v157, type metadata accessor for FontConstants.Brick);
  sub_30CC(v159, &v196);
  v57 = v164;
  v58 = sub_260BB0();
  v60 = v59;
  v138 = type metadata accessor for BooksHTMLConverter();
  objc_allocWithZone(v138);

  v61 = sub_19C6C8(v58, v60, v56);
  [*&v61[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v62 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v63 = *(v165 + 16);
  v165 += 16;
  v137 = v63;
  v63(v160, &v61[v62], v15);

  v64 = sub_2628D0();
  v66 = v65;
  v68 = v67;

  sub_3080(&v196);
  v149 = *(*&v163 + 8);
  v150 = *&v163 + 8;
  v149(v57, v166);
  v69 = v161;
  sub_1F8674(v161);
  v70 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_20D990(v69, type metadata accessor for ColorConstants);
  *&v196 = v70;
  v71 = sub_2627F0();
  v73 = v72;
  v75 = v74;
  sub_39DBC(v64, v66, v68 & 1);

  sub_262F80();
  sub_263000();

  v76 = sub_262850();
  v155 = v77;
  v156 = v76;
  LOBYTE(v70) = v78;
  v157 = v79;

  v80 = v71;
  v81 = v163;
  sub_39DBC(v80, v73, v75 & 1);
  v82 = v166;

  KeyPath = swift_getKeyPath();
  sub_263580();
  sub_2613A0();
  LODWORD(v164) = v70 & 1;
  v207 = v70 & 1;
  v205 = 0;
  *&v204[7] = v208;
  *&v204[23] = v209;
  *&v204[39] = v210;
  v83 = v152;
  sub_8198(v151, v152, &qword_316208, &qword_268BD0);
  if ((*(*&v81 + 48))(v83, 1, v82) == 1)
  {
    sub_8E80(v83, &qword_316208, &qword_268BD0);
    v84 = v148;
    if (v148)
    {
      v85 = sub_261D30();
      LOBYTE(v186) = 1;
      sub_206A68(v133, v84, &v196);
      v172[1] = v200;
      v172[2] = v201;
      v172[3] = v202;
      v173 = v203[0];
      v169 = v196;
      v170 = v197;
      v171 = v198;
      v172[0] = v199;
      v174 = v196;
      v175 = v197;
      v176 = v198;
      v177[0] = v199;
      v177[1] = v200;
      v177[2] = v201;
      v177[3] = v202;
      v178 = v203[0];
      sub_8198(&v169, &v188, &qword_3260D0, &qword_289088);
      sub_8E80(&v174, &qword_3260D0, &qword_289088);
      *&v168[71] = v172[1];
      *&v168[87] = v172[2];
      *&v168[103] = v172[3];
      *&v168[7] = v169;
      *&v168[23] = v170;
      *&v168[39] = v171;
      *&v168[55] = v172[0];
      *(v187 + 1) = *v168;
      *(&v187[1] + 1) = *&v168[16];
      *(&v187[2] + 1) = *&v168[32];
      *(&v187[6] + 1) = *&v168[96];
      *(&v187[5] + 1) = *&v168[80];
      *(&v187[4] + 1) = *&v168[64];
      v168[119] = v173;
      v86 = v186;
      v186 = v85;
      LOBYTE(v187[0]) = v86;
      *(&v187[7] + 1) = *&v168[112];
      *(&v187[3] + 1) = *&v168[48];
      sub_20DB1C(&v186);
      v193 = v187[4];
      v194 = v187[5];
      v195[0] = v187[6];
      *(v195 + 10) = *(&v187[6] + 10);
      v190 = v187[1];
      v191 = v187[2];
      v192 = v187[3];
      v188 = v186;
      v189 = v187[0];
      sub_2EF0(&qword_3260C0, &qword_289078);
      sub_2EF0(&qword_3260D8, &qword_289090);
      sub_20DB28(&qword_3260E0, &qword_3260C0, &qword_289078, sub_58070);
      sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090);
      sub_261F80();
      v194 = v202;
      v195[0] = v203[0];
      *(v195 + 10) = *(v203 + 10);
      v190 = v198;
      v191 = v199;
      v192 = v200;
      v193 = v201;
      v188 = v196;
      v189 = v197;
      KeyedEncodingContainer.encode<A>(_:forKey:)(&v188);
      v202 = v194;
      v203[0] = v195[0];
      *(v203 + 10) = *(v195 + 10);
      v198 = v190;
      v199 = v191;
      v200 = v192;
      v201 = v193;
      v196 = v188;
      v197 = v189;
    }

    else
    {
      sub_20DAF8(&v196);
    }
  }

  else
  {
    v87 = *(*&v81 + 32);
    v163 = a7 * 0.65;
    v88 = v153;
    v87(v153, v83, v82);
    v89 = v147;
    (v142)(v147, v88, v82);
    v90 = v144;
    sub_1F8860(v144);
    v91 = v145;
    v92 = v135;
    v140(v145, enum case for Font.TextStyle.caption2(_:), v135);
    v93 = sub_2625C0();
    v94 = v146;
    (*(*(v93 - 8) + 56))(v146, 1, 1, v93);
    v95 = sub_262680();
    sub_8E80(v94, &qword_318458, &unk_26B270);
    v139(v91, v92);
    sub_20D990(v90, type metadata accessor for FontConstants.Brick);
    sub_30CC(v159, &v196);
    v96 = sub_260BB0();
    v98 = v97;
    objc_allocWithZone(v138);

    v99 = sub_19C6C8(v96, v98, v95);
    [*&v99[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v100 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v137(v160, &v99[v100], v136);

    v101 = sub_2628D0();
    v103 = v102;
    LOBYTE(v100) = v104;

    sub_3080(&v196);
    v149(v89, v82);
    v105 = v161;
    sub_1F8674(v161);
    v106 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_20D990(v105, type metadata accessor for ColorConstants);
    *&v196 = v106;
    v107 = sub_2627F0();
    v109 = v108;
    v111 = v110;
    sub_39DBC(v101, v103, v100 & 1);

    sub_262F80();
    sub_263000();

    v112 = sub_262850();
    v114 = v113;
    LOBYTE(v103) = v115;
    v117 = v116;

    sub_39DBC(v107, v109, v111 & 1);

    v118 = swift_getKeyPath();
    sub_263580();
    sub_2613A0();
    LOBYTE(v196) = v103 & 1;
    LOBYTE(v188) = 0;
    *&v167[7] = v211;
    *&v167[23] = v212;
    *&v167[39] = v213;
    *&v186 = v112;
    *(&v186 + 1) = v114;
    LOBYTE(v187[0]) = v103 & 1;
    *(&v187[0] + 1) = v117;
    *&v187[1] = v118;
    *(&v187[1] + 1) = 3;
    LOBYTE(v187[2]) = 0;
    *&v187[5] = *(&v213 + 1);
    *(&v187[4] + 1) = *&v167[32];
    *(&v187[3] + 1) = *&v167[16];
    *(&v187[2] + 1) = *v167;
    sub_20DBAC(&v186);
    v194 = v187[5];
    v195[0] = v187[6];
    *(v195 + 10) = *(&v187[6] + 10);
    v190 = v187[1];
    v191 = v187[2];
    v192 = v187[3];
    v193 = v187[4];
    v188 = v186;
    v189 = v187[0];
    sub_2EF0(&qword_3260C0, &qword_289078);
    sub_2EF0(&qword_3260D8, &qword_289090);
    sub_20DB28(&qword_3260E0, &qword_3260C0, &qword_289078, sub_58070);
    sub_8E38(&qword_3260E8, &qword_3260D8, &qword_289090);
    sub_261F80();
    v149(v153, v166);
    v194 = v202;
    v195[0] = v203[0];
    *(v195 + 10) = *(v203 + 10);
    v190 = v198;
    v191 = v199;
    v192 = v200;
    v193 = v201;
    v188 = v196;
    v189 = v197;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v188);
    v202 = v194;
    v203[0] = v195[0];
    *(v203 + 10) = *(v195 + 10);
    v198 = v190;
    v199 = v191;
    v200 = v192;
    v201 = v193;
    v196 = v188;
    v197 = v189;
  }

  v194 = v202;
  v195[0] = v203[0];
  *(v195 + 10) = *(v203 + 10);
  v190 = v198;
  v191 = v199;
  v192 = v200;
  v193 = v201;
  v188 = v196;
  v189 = v197;
  v119 = v155;
  v120 = v156;
  *&v169 = v156;
  *(&v169 + 1) = v155;
  LOBYTE(v170) = v164;
  *(&v170 + 1) = *v206;
  DWORD1(v170) = *&v206[3];
  v121 = v157;
  *(&v170 + 1) = v157;
  v122 = KeyPath;
  *&v171 = KeyPath;
  *(&v171 + 1) = 3;
  LOBYTE(v172[0]) = 0;
  *(&v172[1] + 1) = *&v204[16];
  *(v172 + 1) = *v204;
  *(&v172[2] + 1) = *&v204[32];
  v179 = v169;
  v180 = v170;
  v183 = v172[1];
  v184 = v172[2];
  v181 = v171;
  v182 = v172[0];
  v187[1] = v198;
  v187[2] = v199;
  v186 = v196;
  v187[0] = v197;
  *(&v187[6] + 10) = *(v203 + 10);
  v187[5] = v202;
  v187[6] = v203[0];
  v187[3] = v200;
  v187[4] = v201;
  *(&v185[6] + 8) = v202;
  *(&v185[5] + 8) = v201;
  *(v185 + 8) = v196;
  *&v172[3] = *&v204[47];
  *&v185[0] = *&v204[47];
  *(&v185[4] + 8) = v200;
  *(&v185[3] + 8) = v199;
  *(&v185[2] + 8) = v198;
  *(&v185[1] + 8) = v197;
  *(&v185[8] + 2) = *(v203 + 10);
  *(&v185[7] + 8) = v203[0];
  v123 = v185[7];
  v124 = v158;
  *(v158 + 192) = v185[6];
  *(v124 + 208) = v123;
  *(v124 + 224) = v185[8];
  *(v124 + 240) = v185[9];
  v125 = v185[3];
  *(v124 + 128) = v185[2];
  *(v124 + 144) = v125;
  v126 = v185[5];
  *(v124 + 160) = v185[4];
  *(v124 + 176) = v126;
  v127 = v184;
  *(v124 + 64) = v183;
  *(v124 + 80) = v127;
  v128 = v185[1];
  *(v124 + 96) = v185[0];
  *(v124 + 112) = v128;
  v129 = v180;
  *v124 = v179;
  *(v124 + 16) = v129;
  v130 = v182;
  *(v124 + 32) = v181;
  *(v124 + 48) = v130;
  sub_8198(&v169, &v174, &qword_3260C0, &qword_289078);
  sub_8198(&v186, &v174, &qword_3260C8, &qword_289080);
  sub_8E80(&v188, &qword_3260C8, &qword_289080);
  *(v177 + 1) = *v204;
  *&v174 = v120;
  *(&v174 + 1) = v119;
  LOBYTE(v175) = v164;
  *(&v175 + 1) = *v206;
  DWORD1(v175) = *&v206[3];
  *(&v175 + 1) = v121;
  *&v176 = v122;
  *(&v176 + 1) = 3;
  LOBYTE(v177[0]) = 0;
  *(&v177[1] + 1) = *&v204[16];
  *(&v177[2] + 1) = *&v204[32];
  *&v177[3] = *&v204[47];
  return sub_8E80(&v174, &qword_3260C0, &qword_289078);
}

uint64_t sub_206A68@<X0>(double (*a1)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1F7FC4(&v34);
  v6 = v37;
  v7 = v38;
  sub_2E18(&v34, v37);
  v30 = a1;
  v31 = a2;
  LOBYTE(v32) = 1;
  v8 = sub_1F8134();
  v23 = -2;
  v22 = -772;
  v9 = (*(v7 + 16))(&v30, &v22, v6, v7, 36.0, 36.0, v8);
  sub_3080(&v34);
  v10 = type metadata accessor for ImageResourceLoader();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v14 = swift_allocObject();
  *(v14 + 28) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v13 + 24) = v14;
  sub_2603B0();
  v30 = v13;
  sub_2631D0();
  v15 = v34;
  v16 = v35;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v26 = 1;
  v30 = sub_208AA0;
  v31 = 0;
  *&v32 = v9;
  *(&v32 + 1) = v15;
  *v33 = v16;
  *&v33[8] = v27;
  *&v33[24] = v28;
  *&v33[40] = v29;
  *&v25[7] = sub_208AA0;
  *&v25[23] = v32;
  *&v25[87] = *(&v29 + 1);
  *&v25[71] = *&v33[32];
  *&v25[55] = *&v33[16];
  *&v25[39] = *v33;
  v24 = 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  v17 = *v25;
  *(a3 + 25) = *&v25[16];
  *(a3 + 9) = v17;
  v18 = *&v25[32];
  v19 = *&v25[48];
  v20 = *&v25[64];
  *(a3 + 88) = *&v25[79];
  *(a3 + 73) = v20;
  *(a3 + 57) = v19;
  *(a3 + 41) = v18;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  v34 = sub_208AA0;
  v35 = 0;
  v36 = v9;
  v37 = v15;
  v38 = v16;
  v41 = v29;
  v40 = v28;
  v39 = v27;
  sub_8198(&v30, &v22, &qword_326020, &qword_288FB8);
  return sub_8E80(&v34, &qword_326020, &qword_288FB8);
}

uint64_t sub_206CDC@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SizeConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[5];
  v49[4] = a1[4];
  v49[5] = v14;
  v15 = a1[7];
  v49[6] = a1[6];
  v49[7] = v15;
  v16 = a1[1];
  v49[0] = *a1;
  v49[1] = v16;
  v17 = a1[3];
  v49[2] = a1[2];
  v49[3] = v17;
  v18 = sub_2F8B8(v49);
  v19 = sub_2F950(v49);
  if (!v18)
  {
    v20 = *(v19 + 25);
  }

  v21 = sub_2609D0();
  v23 = v22;
  if (v21 == sub_2609D0() && v23 == v24)
  {

    v25 = 0.51;
  }

  else
  {
    v26 = sub_264F10();

    v25 = 0.33;
    if (v26)
    {
      v25 = 0.51;
    }
  }

  v27 = a3 * 0.5;
  v28 = v25 * a3;
  sub_1F8488(v13);
  sub_20DCBC(v13, v9, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v9, type metadata accessor for SizeConstants.Spacing);
  sub_1F8488(v13);
  sub_20DCBC(v13, v9, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v9, type metadata accessor for SizeConstants.Spacing);
  if (v27 + -16.0 <= v28)
  {
    v29 = 16.0;
  }

  else
  {
    v29 = 0.0;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v30 = type metadata accessor for CoverView();
  v31 = v30[6];
  *(a2 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v32 = v30[7];
  *(a2 + v32) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v33 = (a2 + v30[8]);
  sub_5757C(a1, v48);
  type metadata accessor for ProfileRestrictions();
  sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v33 = sub_261900();
  v33[1] = v34;
  v35 = a2 + v30[9];
  v47[15] = 1;
  sub_2631D0();
  v36 = *(&v48[0] + 1);
  *v35 = v48[0];
  *(v35 + 8) = v36;
  v37 = (a2 + v30[10]);
  v38 = a1[5];
  v37[4] = a1[4];
  v37[5] = v38;
  v39 = a1[7];
  v37[6] = a1[6];
  v37[7] = v39;
  v40 = a1[1];
  *v37 = *a1;
  v37[1] = v40;
  v41 = a1[3];
  v37[2] = a1[2];
  v37[3] = v41;
  *(a2 + v30[11]) = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v42 = (a2 + *(sub_2EF0(&qword_3188E0, &qword_274300) + 36));
  v43 = v48[1];
  *v42 = v48[0];
  v42[1] = v43;
  v42[2] = v48[2];
  v44 = a2 + *(sub_2EF0(&qword_3260F0, &qword_2890C0) + 36);
  *v44 = v29;
  *(v44 + 8) = 0;
  result = sub_2EF0(&qword_3260F8, &qword_2890C8);
  v46 = a2 + *(result + 36);
  *v46 = 0;
  *(v46 + 8) = 257;
  return result;
}

void sub_20713C(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v139 = a2;
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v135 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v134 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2EF0(&qword_3260F8, &qword_2890C8);
  v13 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v15 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v127 - v17;
  v137 = sub_2EF0(&qword_326100, &qword_2890D0);
  v19 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v21 = v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = v127 - v26;
  __chkstk_darwin(v28);
  v138 = v127 - v32;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v133 = *(a1 + 16);
  v128 = v31;
  v129 = v30;
  v130 = v29;
  v33 = *(a1 + 112);
  v155 = *(a1 + 96);
  v156 = v33;
  v34 = *(a1 + 144);
  v157 = *(a1 + 128);
  v158 = v34;
  v35 = *(a1 + 48);
  v151 = *(a1 + 32);
  v152 = v35;
  v36 = *(a1 + 80);
  v153 = *(a1 + 64);
  v154 = v36;
  v159[0] = v151;
  v159[1] = v35;
  v159[2] = v153;
  v159[3] = v36;
  v159[4] = v155;
  v159[5] = v33;
  v159[6] = v157;
  v159[7] = v34;
  v37 = sub_2F8B8(v159);
  v38 = sub_2F950(v159);
  v131 = v21;
  v132 = a3;
  if (!v37)
  {
    v39 = *(v38 + 25);
    sub_5757C(&v151, v150);
  }

  v40 = sub_2609D0();
  v42 = v41;
  if (v40 == sub_2609D0() && v42 == v43)
  {

    v44 = 0.51;
  }

  else
  {
    v45 = sub_264F10();

    v44 = 0.33;
    if (v45)
    {
      v44 = 0.51;
    }
  }

  v46 = a4 * 0.5;
  v47 = a4 * 0.5 * 0.5;
  v48 = v47 - v44 * a4 * 0.5;
  v49 = v134;
  sub_1F8488(v134);
  v50 = v49;
  v51 = v135;
  sub_20DCBC(v50, v135, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v51, type metadata accessor for SizeConstants.Spacing);
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  *(v18 + 6) = swift_getKeyPath();
  v18[56] = 0;
  v52 = type metadata accessor for CoverView();
  v53 = v52[6];
  *&v18[v53] = swift_getKeyPath();
  v127[4] = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v54 = v52[7];
  *&v18[v54] = swift_getKeyPath();
  v127[3] = sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v55 = &v18[v52[8]];
  v56 = type metadata accessor for ProfileRestrictions();
  v127[1] = sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  v127[2] = v56;
  *v55 = sub_261900();
  v55[1] = v57;
  v58 = &v18[v52[9]];
  LOBYTE(v142) = 1;
  sub_2631D0();
  v59 = *(&v150[0] + 1);
  *v58 = v150[0];
  *(v58 + 1) = v59;
  v60 = &v18[v52[10]];
  v61 = v156;
  *(v60 + 4) = v155;
  *(v60 + 5) = v61;
  v62 = v158;
  *(v60 + 6) = v157;
  *(v60 + 7) = v62;
  v63 = v152;
  *v60 = v151;
  *(v60 + 1) = v63;
  v64 = v154;
  *(v60 + 2) = v153;
  *(v60 + 3) = v64;
  v18[v52[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v127[0] = sub_2EF0(&qword_3188E0, &qword_274300);
  v65 = &v18[*(v127[0] + 36)];
  v66 = v150[9];
  *v65 = v150[8];
  *(v65 + 1) = v66;
  *(v65 + 2) = v150[10];
  v67 = sub_2EF0(&qword_3260F0, &qword_2890C0);
  v68 = &v18[*(v67 + 36)];
  *v68 = -v48;
  *(v68 + 1) = 0;
  v69 = &v18[*(v136 + 36)];
  *v69 = 0;
  *(v69 + 4) = 257;
  LOBYTE(v56) = sub_262510();
  sub_2610C0();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  sub_22148(v18, v27, &qword_3260F8, &qword_2890C8);
  v78 = v138;
  v79 = &v27[*(v137 + 36)];
  *v79 = v56;
  *(v79 + 1) = v71;
  *(v79 + 2) = v73;
  *(v79 + 3) = v75;
  *(v79 + 4) = v77;
  v79[40] = 0;
  sub_22148(v27, v78, &qword_326100, &qword_2890D0);
  if (v133 == 1)
  {
    goto LABEL_19;
  }

  v80 = *(a1 + 240);
  v146 = *(a1 + 224);
  v147 = v80;
  v81 = *(a1 + 272);
  v148 = *(a1 + 256);
  v149 = v81;
  v82 = *(a1 + 176);
  v142 = *(a1 + 160);
  v143 = v82;
  v83 = *(a1 + 208);
  v144 = *(a1 + 192);
  v145 = v83;
  v150[0] = v142;
  v150[1] = v82;
  v150[2] = v144;
  v150[3] = v83;
  v150[4] = v146;
  v150[5] = v80;
  v150[6] = v148;
  v150[7] = v81;
  v84 = sub_2F8B8(v150);
  v85 = sub_2F950(v150);
  if (!v84)
  {
    v86 = *(v85 + 25);
    sub_5757C(&v142, v140);
  }

  v87 = v131;
  v88 = sub_2609D0();
  v90 = v89;
  if (v88 == sub_2609D0() && v90 == v91)
  {

    v92 = 0.51;
  }

  else
  {
    v93 = sub_264F10();

    v92 = 0.33;
    if (v93)
    {
      v92 = 0.51;
    }
  }

  v94 = v92 * a4;
  v95 = v134;
  sub_1F8488(v134);
  v96 = v135;
  sub_20DCBC(v95, v135, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v96, type metadata accessor for SizeConstants.Spacing);
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  *(v15 + 6) = swift_getKeyPath();
  v15[56] = 0;
  v97 = v52[6];
  *&v15[v97] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v98 = v52[7];
  *&v15[v98] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v99 = &v15[v52[8]];
  *v99 = sub_261900();
  v99[1] = v100;
  v101 = &v15[v52[9]];
  v141 = 1;
  sub_2631D0();
  v102 = *(&v140[0] + 1);
  *v101 = v140[0];
  *(v101 + 1) = v102;
  v103 = &v15[v52[10]];
  v104 = v147;
  *(v103 + 4) = v146;
  *(v103 + 5) = v104;
  v105 = v149;
  *(v103 + 6) = v148;
  *(v103 + 7) = v105;
  v106 = v143;
  *v103 = v142;
  *(v103 + 1) = v106;
  v107 = v145;
  *(v103 + 2) = v144;
  *(v103 + 3) = v107;
  v15[v52[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v108 = &v15[*(v127[0] + 36)];
  v109 = v140[1];
  *v108 = v140[0];
  *(v108 + 1) = v109;
  *(v108 + 2) = v140[2];
  v110 = &v15[*(v67 + 36)];
  *v110 = (v46 + -16.0) * 0.5 - (v47 - v94 * 0.5);
  *(v110 + 1) = 0;
  v111 = &v15[*(v136 + 36)];
  *v111 = 0;
  *(v111 + 4) = 257;
  LOBYTE(v101) = sub_262510();
  sub_2610C0();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v128;
  sub_22148(v15, v128, &qword_3260F8, &qword_2890C8);
  v121 = v120 + *(v137 + 36);
  *v121 = v101;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  v122 = v129;
  sub_22148(v120, v129, &qword_326100, &qword_2890D0);
  v123 = v138;
  v124 = v130;
  sub_8198(v138, v130, &qword_326100, &qword_2890D0);
  sub_8198(v122, v87, &qword_326100, &qword_2890D0);
  v125 = v132;
  sub_8198(v124, v132, &qword_326100, &qword_2890D0);
  v126 = sub_2EF0(&qword_326108, &qword_2890D8);
  sub_8198(v87, v125 + *(v126 + 48), &qword_326100, &qword_2890D0);
  sub_8E80(v122, &qword_326100, &qword_2890D0);
  sub_8E80(v123, &qword_326100, &qword_2890D0);
  sub_8E80(v87, &qword_326100, &qword_2890D0);
  sub_8E80(v124, &qword_326100, &qword_2890D0);
}

void sub_207BD4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v206 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SizeConstants(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v205 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2EF0(&qword_3260F8, &qword_2890C8);
  v14 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v16 = (&v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v186 - v18;
  __chkstk_darwin(v20);
  v22 = &v186 - v21;
  v207 = sub_2EF0(&qword_326100, &qword_2890D0);
  v23 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v25 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(&v186 - v32);
  v34 = &v186 - v33;
  __chkstk_darwin(v35);
  v203 = &v186 - v42;
  v204 = *(a1 + 16);
  if (!v204)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v194 = v38;
  v195 = a2;
  v187 = v37;
  v188 = v16;
  v202 = v36;
  v189 = v41;
  v190 = v40;
  v191 = v39;
  v43 = *(a1 + 112);
  v233 = *(a1 + 96);
  v234 = v43;
  v44 = *(a1 + 144);
  v235 = *(a1 + 128);
  v236 = v44;
  v45 = *(a1 + 48);
  v229 = *(a1 + 32);
  v230 = v45;
  v46 = *(a1 + 80);
  v231 = *(a1 + 64);
  v232 = v46;
  v237[0] = v229;
  v237[1] = v45;
  v237[2] = v231;
  v237[3] = v46;
  v237[4] = v233;
  v237[5] = v43;
  v237[6] = v235;
  v237[7] = v44;
  v47 = sub_2F8B8(v237);
  v48 = sub_2F950(v237);
  v192 = v25;
  v193 = a3;
  if (!v47)
  {
    v49 = *(v48 + 25);
    sub_5757C(&v229, v228);
  }

  v50 = sub_2609D0();
  v52 = v51;
  if (v50 == sub_2609D0() && v52 == v53)
  {

    v54 = 0.51;
  }

  else
  {
    v55 = sub_264F10();

    v54 = 0.33;
    if (v55)
    {
      v54 = 0.51;
    }
  }

  v56 = a4 * 0.5 * 0.5;
  v57 = v56 - v54 * a4 * 0.5;
  v58 = v205;
  sub_1F8488(v205);
  v59 = v58;
  v60 = v206;
  sub_20DCBC(v59, v206, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v60, type metadata accessor for SizeConstants.Spacing);
  *v22 = swift_getKeyPath();
  v22[40] = 0;
  *(v22 + 6) = swift_getKeyPath();
  v22[56] = 0;
  v61 = type metadata accessor for CoverView();
  v62 = v61[6];
  *&v22[v62] = swift_getKeyPath();
  v201 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v63 = v61[7];
  *&v22[v63] = swift_getKeyPath();
  v200 = sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v64 = &v22[v61[8]];
  v65 = type metadata accessor for ProfileRestrictions();
  v198 = sub_20DBBC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  v199 = v65;
  *v64 = sub_261900();
  v64[1] = v66;
  v67 = &v22[v61[9]];
  LOBYTE(v220) = 1;
  sub_2631D0();
  v68 = *(&v228[0] + 1);
  *v67 = v228[0];
  *(v67 + 1) = v68;
  v69 = &v22[v61[10]];
  v70 = v234;
  *(v69 + 4) = v233;
  *(v69 + 5) = v70;
  v71 = v236;
  *(v69 + 6) = v235;
  *(v69 + 7) = v71;
  v72 = v230;
  *v69 = v229;
  *(v69 + 1) = v72;
  v73 = v232;
  *(v69 + 2) = v231;
  *(v69 + 3) = v73;
  v22[v61[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v197 = sub_2EF0(&qword_3188E0, &qword_274300);
  v74 = &v22[*(v197 + 36)];
  v75 = v228[9];
  *v74 = v228[8];
  *(v74 + 1) = v75;
  *(v74 + 2) = v228[10];
  v196 = sub_2EF0(&qword_3260F0, &qword_2890C0);
  v76 = &v22[*(v196 + 36)];
  *v76 = -v57;
  *(v76 + 1) = 0;
  v77 = &v22[*(v208 + 36)];
  *v77 = 0;
  *(v77 + 4) = 257;
  LOBYTE(v67) = sub_262510();
  v78 = v195;
  v79 = qword_2890F8[v195];
  sub_2610C0();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  sub_22148(v22, v34, &qword_3260F8, &qword_2890C8);
  v88 = &v34[*(v207 + 36)];
  *v88 = v67;
  *(v88 + 1) = v81;
  *(v88 + 2) = v83;
  *(v88 + 3) = v85;
  *(v88 + 4) = v87;
  v88[40] = 0;
  sub_22148(v34, v203, &qword_326100, &qword_2890D0);
  if (v204 == 1)
  {
    goto LABEL_28;
  }

  v89 = *(a1 + 240);
  v224 = *(a1 + 224);
  v225 = v89;
  v90 = *(a1 + 272);
  v226 = *(a1 + 256);
  v227 = v90;
  v91 = *(a1 + 176);
  v220 = *(a1 + 160);
  v221 = v91;
  v92 = *(a1 + 208);
  v222 = *(a1 + 192);
  v223 = v92;
  v228[0] = v220;
  v228[1] = v91;
  v228[2] = v222;
  v228[3] = v92;
  v228[4] = v224;
  v228[5] = v89;
  v228[6] = v226;
  v228[7] = v90;
  v93 = sub_2F8B8(v228);
  v94 = sub_2F950(v228);
  if (!v93)
  {
    v95 = *(v94 + 25);
    sub_5757C(&v220, v219);
  }

  v96 = sub_2609D0();
  v98 = v97;
  if (v96 == sub_2609D0() && v98 == v99)
  {

    v100 = 0.51;
    v101 = v202;
    v102 = &unk_288000;
  }

  else
  {
    v103 = sub_264F10();

    v102 = &unk_288000;
    v100 = 0.33;
    if (v103)
    {
      v100 = 0.51;
    }

    v101 = v202;
  }

  v104 = v56 + v100 * a4 * -0.5;
  v105 = v205;
  sub_1F8488(v205);
  v106 = v105;
  v107 = v206;
  sub_20DCBC(v106, v206, type metadata accessor for SizeConstants.Environment);
  sub_20D990(v107, type metadata accessor for SizeConstants.Spacing);
  v108 = a4 * 0.5 + -16.0;
  v109 = v102[352];
  *v19 = swift_getKeyPath();
  v19[40] = 0;
  *(v19 + 6) = swift_getKeyPath();
  v19[56] = 0;
  v110 = v61[6];
  *&v19[v110] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v111 = v61[7];
  *&v19[v111] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v112 = &v19[v61[8]];
  *v112 = sub_261900();
  v112[1] = v113;
  v114 = &v19[v61[9]];
  LOBYTE(v211) = 1;
  sub_2631D0();
  v115 = *(&v219[0] + 1);
  *v114 = v219[0];
  *(v114 + 1) = v115;
  v116 = &v19[v61[10]];
  v117 = v225;
  *(v116 + 4) = v224;
  *(v116 + 5) = v117;
  v118 = v227;
  *(v116 + 6) = v226;
  *(v116 + 7) = v118;
  v119 = v221;
  *v116 = v220;
  *(v116 + 1) = v119;
  v120 = v223;
  *(v116 + 2) = v222;
  *(v116 + 3) = v120;
  v19[v61[11]] = 0;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v121 = &v19[*(v197 + 36)];
  v122 = v228[12];
  *v121 = v228[11];
  *(v121 + 1) = v122;
  *(v121 + 2) = v228[13];
  v123 = &v19[*(v196 + 36)];
  *v123 = v108 * v109 - v104;
  *(v123 + 1) = 0;
  v124 = &v19[*(v208 + 36)];
  *v124 = 0;
  *(v124 + 4) = 257;
  LOBYTE(v114) = sub_262510();
  v125 = qword_289110[v78];
  sub_2610C0();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v19;
  v135 = v194;
  sub_22148(v134, v194, &qword_3260F8, &qword_2890C8);
  v136 = v135 + *(v207 + 36);
  *v136 = v114;
  *(v136 + 8) = v127;
  *(v136 + 16) = v129;
  *(v136 + 24) = v131;
  *(v136 + 32) = v133;
  *(v136 + 40) = 0;
  sub_22148(v135, v101, &qword_326100, &qword_2890D0);
  if (v204 >= 3)
  {
    v137 = *(a1 + 368);
    v215 = *(a1 + 352);
    v216 = v137;
    v138 = *(a1 + 400);
    v217 = *(a1 + 384);
    v218 = v138;
    v139 = *(a1 + 304);
    v211 = *(a1 + 288);
    v212 = v139;
    v140 = *(a1 + 336);
    v213 = *(a1 + 320);
    v214 = v140;
    v219[0] = v211;
    v219[1] = v139;
    v219[2] = v213;
    v219[3] = v140;
    v219[4] = v215;
    v219[5] = v137;
    v219[6] = v217;
    v219[7] = v138;
    v141 = sub_2F8B8(v219);
    v142 = sub_2F950(v219);
    if (!v141)
    {
      v143 = *(v142 + 25);
      sub_5757C(&v211, v209);
    }

    v144 = sub_2609D0();
    v146 = v145;
    if (v144 == sub_2609D0() && v146 == v147)
    {
    }

    else
    {
      v148 = sub_264F10();

      if ((v148 & 1) == 0)
      {
LABEL_26:
        v149 = v205;
        sub_1F8488(v205);
        v150 = v206;
        sub_20DCBC(v149, v206, type metadata accessor for SizeConstants.Environment);
        sub_20D990(v150, type metadata accessor for SizeConstants.Spacing);
        KeyPath = swift_getKeyPath();
        v152 = v188;
        *v188 = KeyPath;
        *(v152 + 40) = 0;
        *(v152 + 48) = swift_getKeyPath();
        *(v152 + 56) = 0;
        v153 = v61[6];
        *(v152 + v153) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v154 = v61[7];
        *(v152 + v154) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v155 = (v152 + v61[8]);
        *v155 = sub_261900();
        v155[1] = v156;
        v157 = v152 + v61[9];
        v210 = 1;
        sub_2631D0();
        v158 = *(&v209[0] + 1);
        *v157 = v209[0];
        *(v157 + 8) = v158;
        v159 = (v152 + v61[10]);
        v160 = v216;
        v159[4] = v215;
        v159[5] = v160;
        v161 = v218;
        v159[6] = v217;
        v159[7] = v161;
        v162 = v212;
        *v159 = v211;
        v159[1] = v162;
        v163 = v214;
        v159[2] = v213;
        v159[3] = v163;
        *(v152 + v61[11]) = 0;
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v164 = (v152 + *(v197 + 36));
        v165 = v209[1];
        *v164 = v209[0];
        v164[1] = v165;
        v164[2] = v209[2];
        v166 = v152 + *(v196 + 36);
        *v166 = v108 * 0.66 - (v56 + v109 * a4 * -0.5);
        *(v166 + 8) = 0;
        v167 = v152 + *(v208 + 36);
        *v167 = 0;
        *(v167 + 8) = 257;
        LOBYTE(v157) = sub_262510();
        v168 = qword_289128[v78];
        sub_2610C0();
        v170 = v169;
        v172 = v171;
        v174 = v173;
        v176 = v175;
        v177 = v187;
        sub_22148(v152, v187, &qword_3260F8, &qword_2890C8);
        v178 = v177 + *(v207 + 36);
        *v178 = v157;
        *(v178 + 8) = v170;
        *(v178 + 16) = v172;
        *(v178 + 24) = v174;
        *(v178 + 32) = v176;
        *(v178 + 40) = 0;
        v179 = v189;
        sub_22148(v177, v189, &qword_326100, &qword_2890D0);
        v180 = v203;
        v181 = v190;
        sub_8198(v203, v190, &qword_326100, &qword_2890D0);
        v182 = v191;
        sub_8198(v101, v191, &qword_326100, &qword_2890D0);
        v183 = v192;
        sub_8198(v179, v192, &qword_326100, &qword_2890D0);
        v184 = v193;
        sub_8198(v181, v193, &qword_326100, &qword_2890D0);
        v185 = sub_2EF0(&qword_326110, &qword_2890E0);
        sub_8198(v182, v184 + *(v185 + 48), &qword_326100, &qword_2890D0);
        sub_8198(v183, v184 + *(v185 + 64), &qword_326100, &qword_2890D0);
        sub_8E80(v179, &qword_326100, &qword_2890D0);
        sub_8E80(v202, &qword_326100, &qword_2890D0);
        sub_8E80(v180, &qword_326100, &qword_2890D0);
        sub_8E80(v183, &qword_326100, &qword_2890D0);
        sub_8E80(v182, &qword_326100, &qword_2890D0);
        sub_8E80(v181, &qword_326100, &qword_2890D0);
        return;
      }
    }

    v109 = 0.51;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

double sub_208AA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2630C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v9 = a1;
    sub_2630A0();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v10 = sub_263100();

    (*(v5 + 8))(v8, v4);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v18 = v23;
    v16 = v25;
    v14[8] = 0;
    *&v27 = v10;
    *(&v27 + 1) = v22;
    LOBYTE(v28) = v23;
    *(&v28 + 1) = *v17;
    DWORD1(v28) = *&v17[3];
    *(&v28 + 1) = v24;
    v29[0] = v25;
    *&v29[1] = *v15;
    *&v29[4] = *&v15[3];
    *&v29[8] = v26;
    v29[24] = 0;

    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0);
    sub_261F80();

    v27 = v19;
    v28 = v20;
    *v29 = *v21;
    *&v29[9] = *&v21[9];
  }

  else
  {
    v11 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    LOBYTE(v22) = 1;
    *&v19 = v11;
    WORD4(v19) = 256;
    v21[24] = 1;
    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0);
    sub_261F80();
  }

  v12 = v28;
  *a2 = v27;
  a2[1] = v12;
  a2[2] = *v29;
  result = *&v29[9];
  *(a2 + 41) = *&v29[9];
  return result;
}

uint64_t sub_208E3C()
{
  v1 = type metadata accessor for BrickLockupView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
    v5 = *v4;
  }

  sub_3074(v4[6], *(v4 + 56));
  v6 = v1[6];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v4 + v1[7];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(&v9[v10], v11);
  }

  else
  {
    v12 = *v9;
  }

  v13 = v1[8];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  else
  {
    v15 = *(v4 + v13);
  }

  v16 = v4 + v1[9];
  sub_2EF0(&qword_325B90, &qword_288C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v18 = sub_261690();
    (*(*(v18 - 8) + 8))(&v16[v17], v18);
  }

  else
  {
    v19 = *v16;
  }

  v20 = v4 + v1[10];
  type metadata accessor for BrickLockupModel.BrickType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v32 = *(v20 + 8);

        goto LABEL_38;
      case 1:
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BB8;
        v26 = &qword_2891B0;
        break;
      case 2:
        v22 = sub_260BD0();
        v23 = *(v22 - 8);
        v24 = *(v23 + 8);
        v24(v20, v22);
        v25 = &qword_325BC0;
        v26 = &qword_288C58;
        break;
      default:
        goto LABEL_38;
    }

    v40 = sub_2EF0(v25, v26);
    v41 = *(v40 + 48);
    if (!(*(v23 + 48))(v20 + v41, 1, v22))
    {
      v24(v20 + v41, v22);
    }

    v42 = *(v20 + *(v40 + 64) + 8);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v27 = sub_260BD0();
      v28 = *(v27 - 8);
      v29 = *(v28 + 8);
      v29(v20, v27);
      v30 = &qword_325BD0;
      v31 = &qword_288C60;
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_38;
      }

      v27 = sub_260BD0();
      v28 = *(v27 - 8);
      v29 = *(v28 + 8);
      v29(v20, v27);
      v30 = &qword_325BD8;
      v31 = &unk_289180;
    }

    v43 = sub_2EF0(v30, v31);
    v44 = v43[12];
    if (!(*(v28 + 48))(v20 + v44, 1, v27))
    {
      v29(v20 + v44, v27);
    }

    v45 = *(v20 + v43[16] + 8);

    v46 = *(v20 + v43[20]);
LABEL_37:

    goto LABEL_38;
  }

  v33 = sub_260BD0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 8);
  v35(v20, v33);
  v36 = sub_2EF0(&qword_325BC8, &unk_2891A0);
  v37 = v36[12];
  if (!(*(v34 + 48))(v20 + v37, 1, v33))
  {
    v35(v20 + v37, v33);
  }

  v38 = *(v20 + v36[16] + 8);

  v39 = (v20 + v36[20]);
  v49 = v39[15];
  sub_57200(*v39, v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14]);
LABEL_38:
  v47 = *(v20 + *(type metadata accessor for BrickLockupModel(0) + 24) + 8);

  return swift_deallocObject();
}
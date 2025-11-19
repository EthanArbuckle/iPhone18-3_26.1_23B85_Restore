uint64_t sub_10002CC9C(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045F60, &qword_1000362C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CD04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002CD4C()
{
  v1 = *(v0 + 16);
  sub_10001891C(v1, v9);
  v2 = swift_allocObject();
  sub_10002B740(v9, v2 + 16);
  sub_10001891C(v1, v8);
  v3 = swift_allocObject();
  sub_10002B740(v8, v3 + 16);
  v9[0] = nullsub_1(sub_10002CE50, v2, sub_10002CF9C, v3);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  sub_10002B628();
  sub_100033814();
}

uint64_t sub_10002CE50()
{
  v1 = (*(**(v0 + 40) + 192))();
  v3 = v2;
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*((swift_isaMask & *Strong) + 0x140))(v1, v3, v5);
  }
}

uint64_t sub_10002CF34()
{
  v1 = v0[3];

  v2 = v0[5];

  swift_unknownObjectWeakDestroy();
  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

void sub_10002CF9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x148))();
  }
}

uint64_t sub_10002D07C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10002D0BC()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_10002D114()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10002D13C()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id sub_10002D18C(void *a1)
{
  result = [a1 CGImage];
  if (result)
  {
    [a1 scale];
    v3 = sub_100033B34();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of ApplicationIcon.deviceScale()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t ApplicationIcon.init<>(icon:descriptor:)(void *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 mainScreen];
  [v6 scale];

  return a2;
}

__n128 sub_10002D310@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v8 = a2;
  [objc_allocWithZone(ISImageDescriptor) init];
  sub_100001A68(&qword_100046190, &qword_100036798);
  sub_100033B94();
  result = v12;
  *a3 = v8;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_10003216C;
  *(a3 + 32) = v6;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  return result;
}

uint64_t sub_10002D3F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002D438@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100033B54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62 <= 1)
  {
    (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
    sub_100031164(a1);
    v11 = sub_100033B74();
    sub_100031804(a1);
LABEL_8:
    result = (*(v7 + 8))(v10, v6);
    *a3 = v11;
    return result;
  }

  v12 = [objc_opt_self() genericApplicationIcon];
  v13 = [v12 prepareImageForDescriptor:a2];

  if (!v13)
  {
    sub_100033B84();
    (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
    v11 = sub_100033B74();
    goto LABEL_7;
  }

  v14 = v13;
  result = [v14 CGImage];
  if (result)
  {
    [v14 scale];
    sub_100033B34();

    (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
    v11 = sub_100033B74();

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ApplicationIconPhase.image.getter(unint64_t a1)
{
  if (a1 >> 62 > 1)
  {
    return 0;
  }

  else
  {
  }
}

__n128 sub_10002D718@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  [objc_allocWithZone(ISImageDescriptor) init];
  type metadata accessor for ResolvedApplicationIcon.LoadingState();
  sub_100033B94();
  result = v15;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  *(a6 + 56) = v15;
  *(a6 + 72) = v16;
  return result;
}

uint64_t sub_10002D7E0(uint64_t a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];

  return a1;
}

uint64_t ApplicationIcon.init<A, B>(icon:descriptor:content:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a1;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  sub_100033794();
  swift_getWitnessTable();

  return sub_10002D7E0(a2);
}

uint64_t sub_10002D954()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

__n128 sub_10002D99C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = *(v2 + 64);
  *(v11 + 72) = v10;
  sub_100033794();
  v12 = v9;
  v13 = a1;

  swift_getWitnessTable();
  sub_10002D718(v12, v13, 0, sub_100032138, v11, v17);
  v14 = v17[3];
  *(a2 + 32) = v17[2];
  *(a2 + 48) = v14;
  *(a2 + 64) = v17[4];
  result = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10002DAD8@<X0>(unint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v61 = a8;
  v62 = a9;
  v51 = a5;
  v52 = a4;
  v54 = a3;
  v55 = a2;
  v13 = *(a6 - 8);
  v14 = v13[8];
  v60 = a10;
  v15 = __chkstk_darwin(a1);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v49 - v18;
  v53 = sub_100033B54();
  v19 = *(v53 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v53);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a7 - 8);
  v24 = *(v50 + 64);
  v25 = __chkstk_darwin(v21);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v49 - v28;
  v59 = a7;
  v30 = sub_100033794();
  v57 = *(v30 - 8);
  v58 = v30;
  v31 = *(v57 + 64);
  v32 = __chkstk_darwin(v30);
  v34 = &v49 - v33;
  if (a1 >> 62 > 1)
  {
    v52(v32);
    v42 = v50;
    v43 = *(v50 + 16);
    v44 = v59;
    v43(v29, v27, v59);
    v45 = *(v42 + 8);
    v45(v27, v44);
    v43(v27, v29, v44);
    v40 = v60;
    v41 = v61;
    sub_10002E0A4(v27, a6, v44);
    v45(v27, v44);
    v45(v29, v44);
  }

  else
  {
    v35 = v53;
    (*(v19 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v53);
    sub_100031164(a1);
    v36 = sub_100033B74();
    sub_100031804(a1);
    (*(v19 + 8))(v23, v35);
    v55(v36);
    v37 = v13[2];
    v38 = v56;
    v37(v56, v17, a6);
    v39 = v13[1];
    v39(v17, a6);
    v37(v17, v38, a6);
    v40 = v60;
    v41 = v61;
    sub_10002DFAC(v17, a6);

    v39(v17, a6);
    v39(v38, a6);
  }

  v63 = v41;
  v64 = v40;
  v46 = v58;
  swift_getWitnessTable();
  v47 = v57;
  (*(v57 + 16))(v62, v34, v46);
  return (*(v47 + 8))(v34, v46);
}

uint64_t sub_10002DFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100033774();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100033784();
}

uint64_t sub_10002E0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033774();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100033784();
}

uint64_t ApplicationIcon.init(icon:descriptor:transaction:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;

  return sub_10002D7E0(a2);
}

__n128 sub_10002E238@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = a2;
  v13 = a1;
  [objc_allocWithZone(ISImageDescriptor) init];
  sub_100001A68(&qword_100046188, &qword_100036790);
  sub_100033B94();
  result = v17;
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v17;
  *(a6 + 72) = v18;
  return result;
}

uint64_t sub_10002E320()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10002E368@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v10 = v2[6];
  v9 = v2[7];

  sub_10002D718(v8, a1, v7, v10, v9, v13);
  v11 = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = v11;
  *(a2 + 64) = v13[4];
  result = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t ApplicationIcon.body.getter@<X0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (a1)
  {
    v12 = a1;
    a2(&v58);
    v13 = type metadata accessor for ResolvedApplicationIcon();
    swift_getWitnessTable();
    v14 = *(v13 - 8);
    v15 = *(v14 + 16);
    v15(&v33, &v58, v13);
    v38[2] = v60;
    v38[3] = v61;
    v38[4] = v62;
    v38[0] = v58;
    v38[1] = v59;
    v16 = *(v14 + 8);
    v16(v38, v13);
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    v39[0] = v33;
    v39[1] = v34;
    v60 = v35;
    v61 = v36;
    v62 = v37;
    v58 = v33;
    v59 = v34;
    v15(&v28, &v58, v13);
    v40[2] = v60;
    v40[3] = v61;
    v40[4] = v62;
    v40[0] = v58;
    v40[1] = v59;
    v15(&v52, v39, v13);
    v16(v40, v13);
    v41[2] = v30;
    v41[3] = v31;
    v41[4] = v32;
    v41[0] = v28;
    v41[1] = v29;
    v60 = v30;
    v61 = v31;
    v62 = v32;
    v58 = v28;
    v59 = v29;
    v15(&v52, v41, v13);
    sub_100033454();
    swift_getWitnessTable();
    sub_10002DFAC(&v58, v13);

    v42[2] = v60;
    v42[3] = v61;
    v42[4] = v62;
    v42[0] = v58;
    v42[1] = v59;
    v16(v42, v13);
    v43[2] = v30;
    v43[3] = v31;
    v43[4] = v32;
    v43[0] = v28;
    v43[1] = v29;
    v16(v43, v13);
    v48 = v35;
    v49 = v36;
    v50 = v37;
    v46 = v33;
    v47 = v34;
    v16(&v46, v13);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    *(v18 + 32) = a7;
    *(v18 + 40) = 0;
    *(v18 + 48) = a2;
    *(v18 + 56) = a3;
    v19 = type metadata accessor for ResolvedApplicationIcon();

    swift_getWitnessTable();
    *&v58 = sub_100033444();
    *(&v58 + 1) = v20;
    v21 = sub_100033454();
    swift_getWitnessTable();
    v22 = *(*(v21 - 8) + 16);
    v22(&v46, &v58, v21);

    v58 = v46;
    v22(v43, &v58, v21);
    v58 = v43[0];
    sub_10002E0A4(&v58, v19, v21);
  }

  v60 = v54;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v58 = v52;
  v59 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  type metadata accessor for ResolvedApplicationIcon();
  WitnessTable = swift_getWitnessTable();
  sub_100033454();
  v24 = sub_100033794();
  v25 = swift_getWitnessTable();
  v44 = WitnessTable;
  v45 = v25;
  swift_getWitnessTable();
  v26 = *(v24 - 8);
  (*(v26 + 16))(a6, &v46, v24);
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  v52 = v46;
  v53 = v47;
  return (*(v26 + 8))(&v52, v24);
}

uint64_t sub_10002E98C()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002E9CC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = v1[4];
  v7 = *(v1 + 6);
  v6 = *(v1 + 7);
  sub_100033424();
  v10 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v8 scale:{v9, v5}];
  v7(&v23);

  v11 = type metadata accessor for ResolvedApplicationIcon();
  swift_getWitnessTable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v21, &v23, v11);
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[0] = v23;
  v22[1] = v24;
  v14 = *(v12 + 8);
  v14(v22, v11);
  v18 = v21[2];
  v19 = v21[3];
  v20 = v21[4];
  v16 = v21[0];
  v17 = v21[1];
  v13(a1, &v16, v11);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v23 = v16;
  v24 = v17;
  return v14(&v23, v11);
}

uint64_t ApplicationIconPhase.error.getter(unint64_t a1)
{
  if (a1 >> 62 != 2)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

void sub_10002EBE8(void *a1, void *a2, uint64_t a3)
{
  v37 = v3[5];
  v5 = v3[6];
  v39 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v61 = v39;
  v62 = v37;
  v59 = v7;
  v60 = v6;
  v42 = v37;
  v43 = v5;
  v44 = v39;
  v41 = v6;
  v45 = v6;
  v40 = v7;
  v46 = v7;
  v8 = v5;
  sub_10000DBBC(&v62, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v61, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v60, &aBlock);
  v30 = a3;
  v32 = *(a3 + 16);
  v33 = *(a3 + 24);
  type metadata accessor for ResolvedApplicationIcon.LoadingState();
  sub_100033384();
  v9 = sub_100033F24();
  v38 = *(v9 - 8);
  v10 = *(v38 + 16);
  v10(&aBlock, &v59, v9);
  sub_10000DBBC(&v62, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v61, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v60, &aBlock);
  v10(&aBlock, &v59, v9);
  v11 = v8;
  sub_10000DBBC(&v62, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v61, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v60, &aBlock);
  v10(&aBlock, &v59, v9);
  v12 = v11;
  sub_10000DBBC(&v62, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v61, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v60, &aBlock);
  v10(&aBlock, &v59, v9);
  sub_100033BD4();
  sub_100033BA4();
  v13 = aBlock;

  sub_100031804(v50);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_100031BB8(0, &qword_100046128, ISIcon_ptr);
  v14 = a1;
  v15 = sub_100033F14();

  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_100031BB8(0, &qword_100046178, NSObject_ptr);
  v42 = v37;
  v43 = v12;
  v44 = v39;
  v45 = v41;
  v46 = v40;
  sub_100033BA4();

  v16 = v48;

  sub_100031804(v50);
  v17 = sub_100033F14();

  if (v17)
  {
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v18 = *(v38 + 8);
    v18(&v59, v9);
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v18(&v59, v9);
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v18(&v59, v9);
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v18(&v59, v9);
  }

  else
  {
LABEL_5:
    v42 = v37;
    v43 = v12;
    v44 = v39;
    v45 = v41;
    v46 = v40;
    sub_100033BA4();

    v19 = v49;
    v20 = sub_100031804(v50);
    if (v19)
    {
      (*(*v19 + 112))(v20);
    }

    v42 = v37;
    v43 = v12;
    v44 = v39;
    v45 = v41;
    v46 = v40;
    sub_100033BA4();

    aBlock = v37;
    v48 = v12;
    v49 = v39;
    v50 = v41;
    v51 = v40;
    v53 = v56;
    v54 = v57;
    *&v55 = 0;
    *(&v55 + 1) = *(&v58 + 1);
    sub_100033BB4();
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v21 = *(v38 + 8);
    v21(&v59, v9);
    v31 = [a1 imageForDescriptor:a2];
    sub_100033BA4();
    v22 = v56;
    v29 = a1;

    aBlock = v37;
    v48 = v12;
    v49 = v39;
    v50 = v41;
    v51 = v40;
    v53 = a1;
    v54 = v57;
    v55 = v58;
    sub_100033BB4();
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v21(&v59, v9);
    v42 = v37;
    v43 = v12;
    v44 = v39;
    v45 = v41;
    v46 = v40;
    v23 = a2;
    sub_100033BA4();

    aBlock = v37;
    v48 = v12;
    v49 = v39;
    v50 = v41;
    v51 = v40;
    v53 = v56;
    v54 = v23;
    v55 = v58;
    sub_100033BB4();
    sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v60);
    v21(&v59, v9);
    if (v31)
    {
      if ([v31 placeholder])
      {
        type metadata accessor for CancellableToken();
        v24 = swift_allocObject();
        *(v24 + 16) = 0;
        v25 = swift_allocObject();
        v26 = *v34;
        *(v25 + 56) = v34[1];
        v27 = v34[3];
        *(v25 + 72) = v34[2];
        *(v25 + 88) = v27;
        *(v25 + 104) = v34[4];
        *(v25 + 16) = v32;
        *(v25 + 24) = v33;
        *(v25 + 32) = v24;
        *(v25 + 40) = v26;
        v51 = sub_100031B90;
        v52 = v25;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_10002F9F8;
        v50 = &unk_1000426C0;
        v28 = _Block_copy(&aBlock);

        (*(*(v30 - 8) + 16))(&v42);

        [v29 getImageForImageDescriptor:v23 completion:v28];
        _Block_release(v28);
        v42 = v37;
        v43 = v12;
        v44 = v39;
        v45 = v41;
        v46 = v40;

        sub_100033BA4();

        aBlock = v37;
        v48 = v12;
        v49 = v39;
        v50 = v41;
        v51 = v40;
        v53 = v56;
        v54 = v57;
        *&v55 = v24;
        *(&v55 + 1) = *(&v58 + 1);
        sub_100033BB4();

        sub_10000DC24(&v62, &qword_100046168, &qword_100036780);
        sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
        sub_100031AE0(&v60);
        v21(&v59, v9);
      }

      else
      {
        sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

        sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
        sub_100031AE0(&v60);
        v21(&v59, v9);
        __chkstk_darwin(*(v34 + 2));
        sub_100033524();
      }
    }

    else
    {
      sub_10000DC24(&v62, &qword_100046168, &qword_100036780);

      sub_10000DC24(&v61, &qword_100046170, &qword_100036788);
      sub_100031AE0(&v60);
      v21(&v59, v9);
      __chkstk_darwin(*(v34 + 2));
      sub_100033524();
    }
  }
}

void sub_10002F8B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 88))();
  if ((v5 & 1) == 0)
  {
    if (a1)
    {
      v6 = *(a3 + 16);
      __chkstk_darwin(v5);
      v7 = a1;
      sub_100033524();
    }

    else
    {
      __chkstk_darwin(*(a3 + 16));
      sub_100033524();
    }
  }
}

void sub_10002F9F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10002FA64@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *(v2 + 56);
  v67 = *(v2 + 40);
  v68 = v3;
  *&v69 = *(v2 + 72);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for ResolvedApplicationIcon.LoadingState();
  sub_100033BD4();
  sub_100033BA4();
  v7 = *(&v62 + 1);
  sub_100031164(*(&v62 + 1));

  sub_100031804(*(&v62 + 1));
  v8 = *(v2 + 24);
  v40 = *(v2 + 32);
  *&v43 = *(&v62 + 1);
  *(&v43 + 1) = v8;
  *&v44 = v40;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  v10 = *(v2 + 48);
  *(v9 + 64) = *(v2 + 32);
  *(v9 + 80) = v10;
  *(v9 + 96) = *(v2 + 64);
  v11 = *(v2 + 16);
  *(v9 + 32) = *v2;
  *(v9 + 48) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  v13 = *(v2 + 48);
  *(v12 + 64) = *(v2 + 32);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(v2 + 64);
  v14 = *(v2 + 16);
  *(v12 + 32) = *v2;
  *(v12 + 48) = v14;
  *&v61 = sub_100031838;
  *(&v61 + 1) = v9;
  *&v62 = sub_100031880;
  *(&v62 + 1) = v12;
  v42 = *(*(a1 - 8) + 16);
  v42(&v67, v2, a1);
  v42(&v67, v2, a1);
  v37 = v5;
  type metadata accessor for ResolvedApplicationIcon.Inner();

  WitnessTable = swift_getWitnessTable();
  sub_100033A94();

  sub_100031804(v7);

  v15 = v55;
  v35 = *(&v56 + 1);
  v38 = *(&v57 + 1);
  v43 = v55;
  v44 = v56;
  v45 = v57;
  *&v46 = *v58;
  v54 = *v2;
  v16 = v54;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v5;
  v18 = *(v2 + 48);
  *(v17 + 64) = *(v2 + 32);
  *(v17 + 80) = v18;
  *(v17 + 96) = *(v2 + 64);
  v19 = *(v2 + 16);
  *(v17 + 32) = *v2;
  *(v17 + 48) = v19;
  v42(&v67, v2, a1);
  sub_1000334D4();
  sub_100031BB8(0, &qword_100046128, ISIcon_ptr);
  v52 = WitnessTable;
  v53 = &protocol witness table for _AppearanceActionModifier;
  v20 = v16;
  v21 = swift_getWitnessTable();
  sub_100031A58(&qword_100046130, &qword_100046128, ISIcon_ptr);
  sub_100033AA4();

  sub_100031804(v15);

  sub_100031988(v35);
  sub_100031988(v38);
  v32 = v61;
  v34 = *(&v62 + 1);
  v36 = *(&v63 + 1);
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v39 = *&v64[8];
  *&v58[8] = *&v64[8];
  *v58 = *v64;
  *&v58[24] = *&v64[24];
  *&v43 = *(v2 + 8);
  v22 = v43;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  *(v23 + 24) = v37;
  v24 = *(v2 + 48);
  *(v23 + 64) = *(v2 + 32);
  *(v23 + 80) = v24;
  *(v23 + 96) = *(v2 + 64);
  v25 = *(v2 + 16);
  *(v23 + 32) = *v2;
  *(v23 + 48) = v25;
  v42(&v67, v2, a1);
  v26 = v22;
  sub_100006924(&qword_100046138, &qword_100036770);
  sub_1000334D4();
  sub_100031BB8(0, &qword_100046140, ISImageDescriptor_ptr);
  v50 = v21;
  v51 = sub_1000114F8(&qword_100046148, &qword_100046138, &qword_100036770);
  swift_getWitnessTable();
  sub_100031A58(&qword_100046150, &qword_100046140, ISImageDescriptor_ptr);
  sub_100033AA4();

  sub_100031804(v32);

  sub_100031988(v34);
  sub_100031988(v36);

  v47 = v71;
  v48 = v72;
  v49 = v73;
  v43 = v67;
  v44 = v68;
  v45 = v69;
  v46 = v70;
  sub_100006924(&qword_100046158, &qword_100036778);
  v27 = sub_1000334D4();
  sub_1000114F8(&qword_100046160, &qword_100046158, &qword_100036778);
  swift_getWitnessTable();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v29(&v55, &v43, v27);
  *&v64[16] = v47;
  v65 = v48;
  v66 = v49;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  *v64 = v46;
  v30 = *(v28 + 8);
  v30(&v61, v27);
  v47 = *&v58[16];
  v48 = v59;
  v49 = v60;
  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = *v58;
  v29(a2, &v43, v27);
  v71 = v47;
  v72 = v48;
  v73 = v49;
  v67 = v43;
  v68 = v44;
  v69 = v45;
  v70 = v46;
  return (v30)(&v67, v27);
}

uint64_t sub_100030154@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_100030294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  return sub_100030154(*(a1 + 16), a2);
}

uint64_t sub_1000302B8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_10002FA64(a1, a2);
}

id sub_1000302FC()
{
  result = [objc_opt_self() genericApplicationIcon];
  qword_100047AF0 = result;
  return result;
}

uint64_t *sub_100030338()
{
  if (qword_100047430 != -1)
  {
    swift_once();
  }

  return &qword_100047AF0;
}

void sub_1000303AC()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047AF8 = v2;
}

uint64_t *sub_10003041C()
{
  if (qword_100047438 != -1)
  {
    swift_once();
  }

  return &qword_100047AF8;
}

void sub_100030490()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047B00 = v2;
}

uint64_t *sub_100030500()
{
  if (qword_100047440 != -1)
  {
    swift_once();
  }

  return &qword_100047B00;
}

void sub_100030574()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047B08 = v2;
}

uint64_t *sub_1000305E4()
{
  if (qword_100047448 != -1)
  {
    swift_once();
  }

  return &qword_100047B08;
}

id sub_100030658(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_1000306B8(void *a1@<X8>)
{
  if (qword_100047438 != -1)
  {
    swift_once();
  }

  v2 = qword_100047AF8;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 mainScreen];
  [v6 scale];
  v8 = v7;

  if (qword_100047440 != -1)
  {
    swift_once();
  }

  v9 = qword_100047B00;
  sub_100033CA4();
  sub_100033C84();

  v10 = sub_1000333E4();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = sub_100032544;
  v11[5] = 0;

  v12 = v9;
  v13 = [v4 mainScreen];
  [v13 scale];
  v15 = v14;

  if (qword_100047448[0] != -1)
  {
    swift_once();
  }

  v16 = qword_100047B08;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = 0;
  v17[4] = sub_100030F48;
  v17[5] = 0;
  v18 = v16;
  v19 = [v4 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(ISImageDescriptor) initWithSize:100.0 scale:{100.0, 1.0}];
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = v18;
  v25 = [v4 mainScreen];
  [v25 scale];
  v27 = v26;

  *a1 = v8;
  a1[1] = 0;
  a1[2] = sub_100032540;
  a1[3] = v3;
  a1[4] = v15;
  a1[5] = 0;
  a1[6] = sub_1000309F4;
  a1[7] = v11;
  a1[8] = v21;
  a1[9] = 0;
  a1[10] = sub_100032520;
  a1[11] = v17;
  a1[12] = v27;
  a1[13] = v22;
  a1[14] = sub_100032540;
  a1[15] = v23;
}

double sub_100030A00@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((a1 >> 62) > 1)
  {
    if (a1 >> 62 != 2)
    {
      sub_100033AF4();

      sub_100001A68(&qword_100046000, &qword_100036380);
      sub_100030F94();
      sub_100033784();
      sub_100001A68(&qword_100046020, &qword_100036390);
      sub_100001A68(&qword_100046028, qword_100036398);
      sub_10003104C();
      sub_1000310D8();
      sub_100033784();

      goto LABEL_7;
    }

    swift_getErrorValue();
    sub_100034104();
    sub_100028204();
    v3 = sub_1000339A4();
    v5 = v4;
    v7 = v6;
    sub_100033AD4();
    v12 = sub_100033984();
    v14 = v8;
    v10 = v9;

    sub_1000283F8(v3, v5, v7 & 1);

    v17 = v10 & 1;
    sub_100028360(v12, v14, v10 & 1);

    sub_100001A68(&qword_100046000, &qword_100036380);
    sub_100030F94();
    sub_100033784();
  }

  else
  {
    sub_100033714();
    v12 = sub_100033994();
    v14 = v13;
    v16 = v15;
    sub_100033C74();
    v17 = v16 & 1;
    sub_100031164(a1);
    sub_100028360(v12, v14, v17);

    sub_100001A68(&qword_100046000, &qword_100036380);
    sub_100030F94();
    sub_100033784();
  }

  sub_100001A68(&qword_100046020, &qword_100036390);
  sub_100001A68(&qword_100046028, qword_100036398);
  sub_10003104C();
  sub_1000310D8();
  sub_100033784();
  sub_1000283F8(v12, v14, v17);

LABEL_7:
  *v22 = *v21;
  *&v22[10] = *&v21[10];
  *a2 = v19;
  a2[1] = v20;
  a2[2] = *v22;
  result = *&v21[10];
  *(a2 + 42) = *&v21[10];
  return result;
}

uint64_t sub_100030F4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100030F94()
{
  result = qword_100046008;
  if (!qword_100046008)
  {
    sub_100006924(&qword_100046000, &qword_100036380);
    sub_1000114F8(&qword_100046010, &qword_100046018, &qword_100036388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046008);
  }

  return result;
}

unint64_t sub_10003104C()
{
  result = qword_100046030;
  if (!qword_100046030)
  {
    sub_100006924(&qword_100046020, &qword_100036390);
    sub_100030F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046030);
  }

  return result;
}

unint64_t sub_1000310D8()
{
  result = qword_100046038;
  if (!qword_100046038)
  {
    sub_100006924(&qword_100046028, qword_100036398);
    sub_100030F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046038);
  }

  return result;
}

unint64_t sub_100031164(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1000311DC()
{
  result = qword_100046040;
  if (!qword_100046040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046040);
  }

  return result;
}

uint64_t sub_100031254(uint64_t a1)
{
  v2 = sub_1000320A4();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_1000312A0(uint64_t a1)
{
  v2 = sub_1000320A4();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_100031310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10003134C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100031394(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000313EC(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100031414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100031470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000314D0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_10003151C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ResolvedApplicationIcon();
  swift_getWitnessTable();
  sub_100033454();
  sub_100033794();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100031628()
{
  result = qword_100046118;
  if (!qword_100046118)
  {
    sub_100006924(&qword_100046120, &qword_100036608);
    sub_10003104C();
    sub_1000310D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046118);
  }

  return result;
}

uint64_t sub_1000316B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000316F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003170C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100031754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031804(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
  }

  return result;
}

void sub_100031838()
{
  v2 = *(v0 + 32);
  v1 = v0 + 32;
  v3 = *(v1 - 16);
  v4 = *(v1 - 8);
  v5 = *(v1 + 8);
  v6 = type metadata accessor for ResolvedApplicationIcon();
  sub_10002EBE8(v2, v5, v6);
}

unint64_t sub_100031880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v8 = *(v0 + 72);
  v9 = *(v0 + 88);
  v10 = *(v0 + 104);
  type metadata accessor for ResolvedApplicationIcon.LoadingState();
  sub_100033BD4();
  sub_100033BA4();

  result = sub_100031804(v7);
  if (v6)
  {
    (*(*v6 + 112))(result);
  }

  return result;
}

void sub_10003193C(void **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = *a1;
  v5 = v1[5];
  v6 = type metadata accessor for ResolvedApplicationIcon();
  sub_10002EBE8(v4, v5, v6);
}

uint64_t sub_100031988(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031998()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  sub_100031804(*(v0 + 96));
  v4 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100031A10(void **a1)
{
  v3 = *(v1 + 32);
  v2 = v1 + 32;
  v4 = *(v2 - 16);
  v5 = *(v2 - 8);
  v6 = *a1;
  v7 = type metadata accessor for ResolvedApplicationIcon();
  sub_10002EBE8(v3, v6, v7);
}

uint64_t sub_100031A58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100031BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100031B10()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  sub_100031804(*(v0 + 104));
  v5 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

void sub_100031B90(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_10002F8B4(a1, v1[4], (v1 + 5));
}

uint64_t sub_100031BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031BB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100031C18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  type metadata accessor for ResolvedApplicationIcon.LoadingError();
  swift_getWitnessTable();
  swift_allocError();
  v5 = v3[5];
  v4 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  v17 = v5;
  v15 = v7;
  v16[0] = v6;
  v14 = v8;
  v13[5] = v5;
  v13[6] = v4;
  v13[7] = v6;
  v13[8] = v7;
  v13[9] = v8;
  sub_10000DBBC(&v17, v13, &qword_100046168, &qword_100036780);
  v9 = v4;
  sub_10000DBBC(v16, v13, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v15, v13);
  type metadata accessor for ResolvedApplicationIcon.LoadingState();
  sub_100033384();
  v10 = sub_100033F24();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v13, &v14, v10);
  sub_100033BD4();
  sub_100033BA4();
  sub_100031804(v13[13]);
  v13[0] = v5;
  v13[1] = v9;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  sub_100033BB4();
  sub_10000DC24(&v17, &qword_100046168, &qword_100036780);

  sub_10000DC24(v16, &qword_100046170, &qword_100036788);
  sub_100031AE0(&v15);
  return (*(v11 + 8))(&v14, v10);
}

id sub_100031E60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  result = [v4 CGImage];
  if (result)
  {
    [v4 scale];
    sub_100033B34();
    v7 = v3[5];
    v6 = v3[6];
    v8 = v3[7];
    v9 = v3[8];
    v10 = v3[9];
    v18 = v7;
    v16 = v9;
    v17[0] = v8;
    v15 = v10;
    v14[5] = v7;
    v14[6] = v6;
    v14[7] = v8;
    v14[8] = v9;
    v14[9] = v10;
    sub_10000DBBC(&v18, v14, &qword_100046168, &qword_100036780);
    v11 = v6;
    sub_10000DBBC(v17, v14, &qword_100046170, &qword_100036788);
    sub_100031AA8(&v16, v14);
    type metadata accessor for ResolvedApplicationIcon.LoadingState();
    sub_100033384();
    v12 = sub_100033F24();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v14, &v15, v12);
    sub_100033BD4();
    sub_100033BA4();
    sub_100031804(v14[13]);
    v14[0] = v7;
    v14[1] = v11;
    v14[2] = v8;
    v14[3] = v9;
    v14[4] = v10;
    sub_100033BB4();
    sub_10000DC24(&v18, &qword_100046168, &qword_100036780);

    sub_10000DC24(v17, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v16);
    return (*(v13 + 8))(&v15, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000320A4()
{
  result = qword_100046180;
  if (!qword_100046180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046180);
  }

  return result;
}

uint64_t sub_1000320F8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000321AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000321E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000321FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100032244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032284()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000322C0(uint64_t a1, int a2)
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

uint64_t sub_100032308(uint64_t result, int a2, int a3)
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

uint64_t sub_100032348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ResolvedApplicationIcon.Inner();
  sub_1000334D4();
  sub_100006924(&qword_100046138, &qword_100036770);
  sub_1000334D4();
  sub_100006924(&qword_100046158, &qword_100036778);
  sub_1000334D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000114F8(&qword_100046148, &qword_100046138, &qword_100036770);
  swift_getWitnessTable();
  sub_1000114F8(&qword_100046160, &qword_100046158, &qword_100036778);
  return swift_getWitnessTable();
}

id sub_100032588()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100047A58 = result;
  return result;
}

uint64_t sub_100032620(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003267C()
{
  v0 = sub_100033184();
  sub_100032F20(v0, qword_100047B28);
  sub_100032620(v0, qword_100047B28);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v1 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032B44()
{
  v0 = sub_100033184();
  sub_100032F20(v0, qword_100047C18);
  sub_100032620(v0, qword_100047C18);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v1 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032D24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100033184();
  sub_100032F20(v3, a2);
  sub_100032620(v3, a2);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v4 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032DEC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_100033184();

  return sub_100032620(v3, a2);
}

uint64_t sub_100032E64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_100033184();
  v6 = sub_100032620(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_100032F20(uint64_t a1, uint64_t *a2)
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
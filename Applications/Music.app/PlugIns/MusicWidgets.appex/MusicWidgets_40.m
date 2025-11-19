uint64_t sub_10042047C(uint64_t a1)
{
  sub_10002EA8C(a1, v7);
  sub_100009DCC(&qword_1006EF660);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return sub_100010474(a1);
}

void (*sub_100420510(void *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_100420DD0();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_10041F7D4(v4, v4 + 192);
  return sub_1004205FC;
}

void sub_1004205FC(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002EA8C((v2 + 16), v2 + 296);
    sub_10002EA8C(v2 + 296, (v2 + 21));
    sub_100009DCC(&qword_1006EF660);
    swift_dynamicCast();
    v3 = v2[13];
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    Gradient.View.typedConfiguration.setter(v2 + 4);
    sub_100010474(v2 + 296);
  }

  else
  {
    sub_10002EA8C((v2 + 16), v2 + 296);
    sub_100009DCC(&qword_1006EF660);
    swift_dynamicCast();
    v5 = v2[13];
    v2[8] = v2[12];
    v2[9] = v5;
    v6 = v2[15];
    v2[10] = v2[14];
    v2[11] = v6;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  sub_100010474((v2 + 16));

  free(v2);
}

id sub_100420708()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10041F7D4(&v15, v14);
  sub_10041F7D4(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10041F83C(v11);

  sub_10041F80C(&v15);
  sub_100420D0C(&qword_1006F4138);
  return v9;
}

uint64_t sub_100420834@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_10041F7D4(v7, &v6);
}

BOOL sub_100420874(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100596F30;
  v13 = xmmword_100596DF0;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_100596F40;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_10041F7D4(&v10, &v9);
  sub_10041F80C(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100596F40;
  v13 = xmmword_100596F50;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_100596F40;
  v16 = xmmword_100596F50;

  v5 = kCAGradientLayerAxial;

  sub_10041F7D4(&v10, &v9);
  sub_10041F80C(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_10041F7D4(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005728D8();
  v6 = v5;
  if (v4 == sub_1005728D8() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_100574498();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_1003DFF88(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || (sub_1003DFF9C(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_1003DFFF8(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

unint64_t sub_100420C1C()
{
  result = qword_1006F40F0;
  if (!qword_1006F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F40F0);
  }

  return result;
}

uint64_t sub_100420C70(uint64_t a1)
{
  result = sub_100420D0C(&qword_1006F4138);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100420D0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100420D4C(uint64_t a1)
{
  *(a1 + 8) = sub_100420D7C();
  result = sub_100420DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100420D7C()
{
  result = qword_1006F4170;
  if (!qword_1006F4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4170);
  }

  return result;
}

unint64_t sub_100420DD0()
{
  result = qword_1006F4178;
  if (!qword_1006F4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4178);
  }

  return result;
}

uint64_t sub_100420E34()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1003DF688(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100420EEC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1003DF688(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_100019B40(a3, a5 + *(v8 + 20), &qword_1006F3E50);
  return sub_100424168(a4, a5 + *(v8 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

uint64_t static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v73 = a1;
  v79 = a8;
  v67 = *a7;
  v10 = *(a7 + 8);
  v11 = *(a7 + 16);
  v65 = a5;
  v66 = v11;
  v62 = *(a7 + 24);
  v63 = v10;
  v82 = *(a7 + 32);
  v61 = *(a7 + 40);
  v64 = *(a7 + 41);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10056DBD8();
  v68 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009DCC(&unk_1006F2F60);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin(v18);
  v69 = &v60 - v19;
  v20 = sub_100009DCC(&qword_1006F41A8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v74 = sub_100009DCC(&qword_1006F41B0);
  __chkstk_darwin(v74);
  v78 = &v60 - v24;
  v77 = sub_100009DCC(&qword_1006F41B8);
  v25 = __chkstk_darwin(v77);
  v76 = &v60 - v26;
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14, v25);
  v27 = a6;
  v28 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100424100(v27, v28, type metadata accessor for ArtworkImage.Placeholder);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_100424168(v28, v31 + v29, type metadata accessor for ArtworkImage.Placeholder);
  v32 = (v31 + v30);
  v33 = *(a7 + 16);
  *v32 = *a7;
  v32[1] = v33;
  *(v32 + 26) = *(a7 + 26);
  v34 = v69;
  sub_1003BFDEC(v73, sub_100402028, v31, a7, v17, v69);

  (*(v15 + 8))(v17, v68);
  v35 = v75;
  if (v75)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  (*(v71 + 32))(v23, v34, v72);
  *&v23[*(v21 + 44)] = v36;
  v37 = sub_1005709E8();
  v39 = v35;
  if (v35)
  {
    LOBYTE(v90[0]) = v63 & 1;
    LOBYTE(v84) = v62 & 1;
    v83[0] = v61 & 1;
    v40 = v63 & 1;
    v41 = v62 & 1;
    v42 = v61 & 1 | (v64 << 8);
    v43 = v66;
    v35 = v65 & 1;
    v44 = v80;
    v45 = v81;
    v46 = v67;
    v47 = v82;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v47 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  v82 = v47;
  LODWORD(v71) = v42;
  *&v84 = v39;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v35;
  *&v86 = v46;
  *(&v86 + 1) = v40;
  *&v87 = v43;
  *(&v87 + 1) = v41;
  *&v88 = v47;
  WORD4(v88) = v42;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  v72 = v38;
  v73 = v37;
  v48 = v23;
  v49 = v78;
  v50 = v46;
  sub_100019B40(v48, v78, &qword_1006F41A8);
  v51 = (v49 + *(v74 + 36));
  v52 = v87;
  v51[2] = v86;
  v51[3] = v52;
  v53 = v89;
  v51[4] = v88;
  v51[5] = v53;
  v54 = v85;
  *v51 = v84;
  v51[1] = v54;
  v90[0] = v39;
  v90[1] = v44;
  v90[2] = v45;
  v90[3] = v35;
  v90[4] = v50;
  v90[5] = v40;
  v90[6] = v43;
  v90[7] = v41;
  v90[8] = v82;
  v91 = v71;
  v92 = v73;
  v93 = v72;

  sub_10000CC8C(&v84, v83, &qword_1006F41C0);
  sub_10001036C(v90, &qword_1006F41C0);
  v55 = sub_100570A38();
  v56 = v76;
  sub_100019B40(v49, v76, &qword_1006F41B0);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v39;
  v58 = v81;
  v57[2] = v80;
  v57[3] = v58;
  sub_100019B40(v56, v79, &qword_1006F41B8);
}

void sub_100421610(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_100421750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_10056F688();
  __chkstk_darwin(v5);
  v6 = sub_100570978();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100570988();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100009DCC(&qword_1006F42B8);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v31 - v14;
  v16 = *a1;
  if (*(a1 + 8))
  {
    v16 = 0.0;
  }

  *v9 = v16;
  (*(v7 + 104))(v9, enum case for GridItem.Size.fixed(_:), v6);
  v36 = *(a2 + 24);
  if (v36)
  {
    v17 = 14;
  }

  else
  {
    v17 = 4;
  }

  Int.seconds.getter(v17);
  sub_100570998();
  sub_100421B14(v12, *(a2 + 16));
  Int.seconds.getter(v17);
  v33 = a2;
  v34 = a1;
  sub_10056F368();
  v35 = 0;
  sub_100423F68(&unk_1006F1EF0, &type metadata accessor for PinnedScrollableViews);
  sub_100574748();
  sub_100009DCC(&qword_1006F42C0);
  sub_100423FB0();
  sub_100570A88();
  sub_10056FA38();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_10056FA38();
  v28 = v32;
  (*(v13 + 32))(v32, v15, v31);
  result = sub_100009DCC(&qword_1006F42D8);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_100421B14(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_100570988();
      v5 = sub_100572D98();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = sub_100570988();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_100421C70(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_100424084(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_100424084(result, v14);
      sub_100421FA8(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_100424084(v6, v14);
      sub_100009DCC(&qword_1006F42E0);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_100010BC0(&qword_1006F42E8, &qword_1006F42E0);
      sub_100423F68(&qword_1006F42D0, _s11GridPreviewO8GridViewV8ItemViewVMa);
      sub_100423F68(&qword_1006F42F0, type metadata accessor for ArtworkImage.GridPreview.Item);
      return sub_1005708C8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100421E64@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100424100(a1, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v11 = 0x4014000000000000;
  }

  else
  {
    v11 = 0x4000000000000000;
  }

  sub_100424168(v10, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v12 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v13 = (a4 + v12[5]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  *(v13 + 26) = *(a2 + 26);
  v15 = a4 + v12[6];
  *v15 = v11;
  *(v15 + 8) = -1;
  *(v15 + 16) = 0;
  v16 = v12[7];
  *(a4 + v16) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDA0);
  return swift_storeEnumTagMultiPayload();
}

void sub_100421FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_24:

      return;
    }

    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v27[1] = a2;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    v16 = v11 - 1;
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v13;
    v31 = v27 - v9;
    v28 = a1;
    while (1)
    {
      sub_100424100(v14, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
      v22 = v18[2];
      if (v22 < a1)
      {
        break;
      }

      if (v12 >= v22)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_100424100(v18 + v13 + v15 * v12, v6, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100475428(0, v17[2] + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_100475428(v25 > 1, v26 + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v17[2] = v26 + 1;
      v13 = v30;
      sub_100424168(v6, v17 + v30 + v26 * v15, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1004234CC(v18);
      }

      v10 = v31;
      if (v12 >= v18[2])
      {
        goto LABEL_27;
      }

      sub_1004241D0(v31, v18 + v13 + v15 * v12++);
      a1 = v28;
      if (v12 < v28)
      {
        goto LABEL_8;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      v12 = 0;
LABEL_9:
      --v16;
      v14 += v15;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if ((v23 & 1) == 0)
    {
      sub_100475428(0, v22 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      sub_100475428(v19 > 1, v20 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v18[2] = v20 + 1;
    v13 = v30;
    v21 = v18 + v30 + v20 * v15;
    v10 = v31;
    sub_100424168(v31, v21, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1004222E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_10056F318();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F1330);
  v56 = *(v6 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10056DBD8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  v50 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v19 = (v2 + *(v50 + 20));
  v20 = *(v19 + 26);
  v21 = v19[1];
  v57 = *v19;
  v58[0] = v21;
  *(v58 + 10) = v20;
  (*(v13 + 104))(v15, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  sub_100424100(v2 + v18, v11, type metadata accessor for ArtworkImage.Placeholder);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_100424168(v11, v24 + v22, type metadata accessor for ArtworkImage.Placeholder);
  v25 = (v24 + v23);
  v26 = v58[0];
  *v25 = v57;
  v25[1] = v26;
  *(v25 + 26) = *(v58 + 10);
  v27 = v2 + v17;
  v28 = v52;
  sub_1003BFDEC(v27, sub_1004066EC, v24, &v57, v15, v52);

  (*(v13 + 8))(v15, v12);
  v29 = v50;
  v30 = v2;
  sub_1003BEDA0(v5);
  v31 = v51;
  sub_1003C3B9C(v51);
  (*(v53 + 8))(v5, v54);
  v32 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = (v28 + *(sub_100009DCC(&qword_1006F2F28) + 36));
  v34 = v28;
  v35 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v33 + v35) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98);
  swift_storeEnumTagMultiPayload();
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = swift_allocObject();
  sub_100019B40(v31, v37 + v36, &qword_1006F1330);
  *v33 = sub_1003CB4D4;
  v33[1] = v37;
  v38 = (v30 + *(v29 + 24));
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v42 = v34 + *(sub_100009DCC(&qword_1006F43C8) + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  *(v42 + 16) = v41;
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  v43 = static Border.artwork;
  v44 = qword_1006FE2F8;
  v45 = byte_1006FE300;
  v46 = v34 + *(sub_100009DCC(&qword_1006F43D0) + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  *(v46 + 16) = v45;
  *(v46 + 24) = v39;
  *(v46 + 32) = v40;
  *(v46 + 40) = v41;

  sub_10056E8C8();
  sub_100570A08();
  sub_10056E8E8();

  sub_100570B48();
  sub_10056E8B8();
  sub_100570A08();
  sub_10056E8E8();

  sub_100570B48();
  sub_10056E8B8();
  sub_100570A08();
  sub_10056E8E8();

  sub_10056E8A8();

  v47 = sub_10056E8D8();

  result = sub_100009DCC(&qword_1006F43D8);
  *(v34 + *(result + 36)) = v47;
  return result;
}

double sub_1004229A0@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_100421610(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_100570528();
  v7 = sub_1005709C8();
  v9 = v8;
  v10 = a1 + *(sub_100009DCC(&qword_1006F42A0) + 36);
  sub_100421750(v15, v17, v10);
  v11 = (v10 + *(sub_100009DCC(&qword_1006F42A8) + 36));
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_1005709E8();
  sub_10056E888();
  v12 = (a1 + *(sub_100009DCC(&qword_1006F42B0) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

size_t sub_100422AE0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(&qword_1006EF148);
  v10 = *(sub_100009DCC(&qword_1006EF140) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100009DCC(&qword_1006EF140) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100422CD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F06D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100422DE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F03D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100422EE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F4310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100422FE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F03C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1004230F4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(&qword_1006F42F8);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1004232CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F4308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1004233C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F4300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006F3E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100009DCC(&unk_1006F2E50);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_100574498() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_10000CC8C(a1 + v14, v13, &qword_1006F3E50);
  sub_10000CC8C(a2 + v14, &v13[v15], &qword_1006F3E50);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10001036C(v13, &qword_1006F3E50);
LABEL_12:
      v17 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v22 + 24), a2 + *(v22 + 24));
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_10000CC8C(v13, v10, &qword_1006F3E50);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100424238(v10);
LABEL_9:
    sub_10001036C(v13, &unk_1006F2E50);
    goto LABEL_10;
  }

  v18 = v21;
  sub_100424168(&v13[v15], v21, type metadata accessor for ArtworkImage.ViewModel);
  v19 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v10, v18);
  sub_100424238(v18);
  sub_100424238(v10);
  sub_10001036C(v13, &qword_1006F3E50);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_100423810()
{
  result = qword_1006F41C8;
  if (!qword_1006F41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F41C8);
  }

  return result;
}

unint64_t sub_100423868()
{
  result = qword_1006F41D0;
  if (!qword_1006F41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F41D0);
  }

  return result;
}

uint64_t sub_1004238F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F3E50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100423A34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006F3E50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100423B64()
{
  sub_1004245F0(319, &qword_1006F15D0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100423C3C()
{
  result = qword_1006F4270;
  if (!qword_1006F4270)
  {
    sub_100010324(&qword_1006F41B8);
    sub_100423CF4();
    sub_100010BC0(&qword_1006F4290, &qword_1006F4298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4270);
  }

  return result;
}

unint64_t sub_100423CF4()
{
  result = qword_1006F4278;
  if (!qword_1006F4278)
  {
    sub_100010324(&qword_1006F41B0);
    sub_100423DAC();
    sub_100010BC0(&qword_1006F4288, &qword_1006F41C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4278);
  }

  return result;
}

unint64_t sub_100423DAC()
{
  result = qword_1006F4280;
  if (!qword_1006F4280)
  {
    sub_100010324(&qword_1006F41A8);
    sub_100010324(&qword_1006F18C8);
    sub_1003CC8F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4280);
  }

  return result;
}

__n128 sub_100423E74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100423E98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_100423EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100423F68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100423FB0()
{
  result = qword_1006F42C8;
  if (!qword_1006F42C8)
  {
    sub_100010324(&qword_1006F42C0);
    sub_100423F68(&qword_1006F42D0, _s11GridPreviewO8GridViewV8ItemViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F42C8);
  }

  return result;
}

uint64_t sub_1004240BC()
{

  return swift_deallocObject();
}

uint64_t sub_100424100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100424168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004241D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100424238(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004242A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100009DCC(&qword_1006F16D0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1004243F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = sub_100009DCC(&qword_1006F16D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100424524()
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v0 <= 0x3F)
  {
    sub_1004245F0(319, &unk_1006F1748, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004245F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100424698(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10042471C()
{
  result = qword_1006F43B8;
  if (!qword_1006F43B8)
  {
    sub_100010324(&qword_1006F42A0);
    sub_100010BC0(&qword_1006F43C0, &qword_1006F42A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F43B8);
  }

  return result;
}

uint64_t sub_1004247F8()
{
  v1 = *(sub_100009DCC(&qword_1006F1330) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      sub_100010474(v0 + v2);
    }

    if (*(v3 + 64))
    {
      sub_100010474(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = sub_100570A78();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_1004249A0()
{
  result = qword_1006F43E0;
  if (!qword_1006F43E0)
  {
    sub_100010324(&qword_1006F43D8);
    sub_100424A58();
    sub_100010BC0(&qword_1006F43F8, &qword_1006F4400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F43E0);
  }

  return result;
}

unint64_t sub_100424A58()
{
  result = qword_1006F43E8;
  if (!qword_1006F43E8)
  {
    sub_100010324(&qword_1006F43D0);
    sub_100424AE4();
    sub_1003A6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F43E8);
  }

  return result;
}

unint64_t sub_100424AE4()
{
  result = qword_1006F43F0;
  if (!qword_1006F43F0)
  {
    sub_100010324(&qword_1006F43C8);
    sub_1004037A0();
    sub_1003A69FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F43F0);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return sub_1002DCE0C(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_100425890();
      v11 = sub_100572D28();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = sub_100574178();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_100573F58();
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_100425890()
{
  result = qword_1006F6130;
  if (!qword_1006F6130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F6130);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_1006EEC20 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDB0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t sub_100425BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_10042BDB0(v1 + v3, v5);
  if (v6 != 1)
  {
    return sub_1000FF9D0(v5, a1);
  }

  sub_10001036C(v5, &qword_1006F47D8);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_100582410;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  sub_1000FEAFC(a1, v5);
  swift_beginAccess();
  sub_10042BE20(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_1000D3B98(0, &qword_1006F4480);
  v11 = v7;
  v12 = v9;
  v13 = sub_100573A58();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  sub_100009DCC(&qword_1006F4470);
  sub_1005707F8();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_100425F98(v3, a2, a1);
    a1[v17] = 1;
    sub_100425BBC(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_100429CF4, v19);

    sub_100112B40(v22);
  }
}

id sub_100425F98(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v5 = sub_10056D3C8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100572378();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006F4818);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_1005723A8();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v58 = sub_10056DE38();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImagePicker(0);
  v22 = *(v21 + 24);
  v57 = a1;
  v23 = a1 + v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  v61 = v24;
  v62 = v25;
  v63 = v23;
  sub_100009DCC(&qword_1006F4498);
  sub_1005707F8();
  if (v60 <= 1u)
  {
    if (!v60)
    {
      v26 = [objc_allocWithZone(UIImagePickerController) init];
      [v26 setSourceType:1];
      sub_100009DCC(&qword_1006F4820);
      sub_10056F9C8();
      v27 = v61;
      [v26 setDelegate:v61];

      [v26 setAllowsEditing:1];
      sub_100009DCC(&qword_1006F44B0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10057B510;
      sub_10056DE28();
      v29 = sub_10056DE08();
      v31 = v30;
      (*(v18 + 8))(v20, v58);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      isa = sub_100572D08().super.isa;

      [v26 setMediaTypes:isa];

      v33._rawValue = *(v57 + *(v21 + 36));
      if (v33._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v33);
      }

      return v26;
    }

    result = [a3 view];
    if (result)
    {
      v40 = result;
      v41 = [objc_opt_self() clearColor];
      [v40 setBackgroundColor:v41];

      v42 = [objc_opt_self() sharedPhotoLibrary];
      sub_100572368();
      sub_100572318();
      v43 = sub_100572328();
      (*(*(v43 - 8) + 56))(v11, 0, 1, v43);
      sub_100572398();
      (*(v53 + 104))(v8, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v54);
      sub_100572388();
      sub_1000D3B98(0, &qword_1006F4830);
      v45 = v55;
      v44 = v56;
      (*(v55 + 16))(v14, v17, v56);
      v46 = sub_1005737A8();
      sub_100009DCC(&qword_1006F4820);
      sub_10056F9C8();
      sub_10042B060(&qword_1006F4838, type metadata accessor for ImagePicker.Coordinator);
      sub_1005737B8();
      v26 = v46;
      v47 = [v26 presentationController];
      if (v47)
      {
        v48 = v47;
        sub_10056F9C8();
        v49 = v61;
        [v48 setDelegate:v61];
      }

      (*(v45 + 8))(v17, v44);
      return v26;
    }

    goto LABEL_16;
  }

  if (v60 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    sub_100009DCC(&qword_1006F4828);
    *(swift_allocObject() + 16) = xmmword_10057B510;
    sub_10056DE28();
    v37 = objc_allocWithZone(UIDocumentPickerViewController);
    v38 = sub_100572D08().super.isa;

    v26 = [v37 initForOpeningContentTypes:v38 asCopy:1];

    sub_100009DCC(&qword_1006F4820);
    sub_10056F9C8();
    v39 = v61;
    [v26 setDelegate:v61];

    [v26 _setAutomaticallyDismissesAfterCompletion:0];
    return v26;
  }

  result = [a3 view];
  if (result)
  {
    v50 = result;
    v51 = [objc_opt_self() clearColor];
    [v50 setBackgroundColor:v51];

    sub_10056D3A8();
    v26 = sub_10056D398();
    sub_100009DCC(&qword_1006F4820);
    sub_10056F9C8();
    sub_10056D388();
    sub_10056D3B8();
    sub_10056D378();
    return v26;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1005726A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_100573E78();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_1000F51DC(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_1000EB93C(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_100574578();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_10042AC90();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_1000F40D4(v37, v6[6] + 40 * v20);
        sub_1000F51DC(v34, (v6[7] + 32 * v28));
        sub_1000F4130(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_10042A458(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1000EB93C(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        sub_100010474(v12);
        sub_1000F51DC(v34, v12);
        sub_1000F4130(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_100572688().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v12 = sub_1000EBB8C(UIImagePickerControllerEditedImage);
  if (v13)
  {
    sub_100081F38(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v12, &v56);
    sub_1000F51DC(&v56, &v58);
    goto LABEL_9;
  }

  v14 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v56 = 0u;
  v57 = 0u;
  if (v14 && (v15 = sub_1000EBB8C(UIImagePickerControllerOriginalImage), (v16 & 1) != 0))
  {
    sub_100081F38(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v15, &v58);
    if (*(&v57 + 1))
    {
      sub_10001036C(&v56, &qword_1006F6190);
    }
  }

  else
  {
LABEL_8:
    v58 = 0u;
    v59 = 0u;
  }

LABEL_9:
  if (!*(&v59 + 1))
  {
    sub_10001036C(&v58, &qword_1006F6190);
LABEL_16:
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_100573ED8(61);
    v61._countAndFlagsBits = 0xD00000000000002ALL;
    v61._object = 0x80000001005B9D20;
    sub_100572A98(v61);
    type metadata accessor for InfoKey(0);
    sub_10042B060(&qword_1006EF0D0, type metadata accessor for InfoKey);
    v62._countAndFlagsBits = sub_1005726B8();
    sub_100572A98(v62);

    v63._object = 0x80000001005B9D50;
    v63._countAndFlagsBits = 0xD000000000000011;
    sub_100572A98(v63);
    v29 = *(&v58 + 1);
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v58;
      sub_10042AE34();
      v32 = swift_allocError();
      *v33 = v31;
      v33[1] = v29;

      v30(v32, 1);
      sub_1000F3E14(v30);
    }

    else
    {
    }

    return;
  }

  sub_1000D3B98(0, &qword_1006F4490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v56;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v34 = v56;
LABEL_20:
    v27 = 0uLL;
    v26 = 1;
    v28 = 0uLL;
    goto LABEL_21;
  }

  v18 = v56;
  v19 = sub_1000EBB8C(UIImagePickerControllerCropRect);
  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_100081F38(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v19, &v58);
  sub_1000D3B98(0, &qword_1006F44A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v56;
  [v56 CGRectValue];
  v52 = v22;
  v53 = v23;
  v51 = v24;
  v54 = v25;

  *&v28 = v51;
  *&v27 = v52;
  v26 = 0;
  *(&v27 + 1) = v53;
  *(&v28 + 1) = v54;
LABEL_21:
  v58 = v27;
  v59 = v28;
  v60 = v26;
  v35 = UIImage.centerCropIfNeeded(imageRect:)(&v58);

  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {

    v36(v35, 0);
    sub_1000F3E14(v36);
  }

  v37 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_10041C024(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v11);
  v38 = &v11[*(v6 + 24)];
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v38) = v38[16];
  *&v56 = v39;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v38;
  sub_100009DCC(&qword_1006F4498);
  sub_1005707F8();
  v41 = v55;
  sub_10042AE88(v11);
  if ((v41 - 1) > 2)
  {
    sub_10041C024(v3 + v37, v8);
    v48 = &v8[*(v6 + 32)];
    v49 = *v48;
    v50 = *(v48 + 1);
    LOBYTE(v48) = v48[16];
    *&v56 = v49;
    *(&v56 + 1) = v50;
    LOBYTE(v57) = v48;
    v55 = 0;
    sub_100009DCC(&qword_1006F4470);
    sub_100570808();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v42 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 presentingViewController];

    if (v44)
    {
      sub_10041C024(v3 + v37, v8);
      v45 = &v8[*(v6 + 32)];
      v46 = *v45;
      v47 = *(v45 + 1);
      LOBYTE(v45) = v45[16];
      *&v56 = v46;
      *(&v56 + 1) = v47;
      LOBYTE(v57) = v45;
      v55 = 0;
      sub_100009DCC(&qword_1006F4470);
      sub_100570808();
      [v44 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_10042AE88(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_10056CEC8() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        sub_100009DCC(&qword_1006F44B0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10057B510;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_100572D08().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_10041C024(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  sub_100009DCC(&qword_1006F4498);
  sub_1005707F8();
  v21 = HIBYTE(v25);
  sub_10042AE88(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_10041C024(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    sub_100009DCC(&qword_1006F4470);
    sub_100570808();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_10042AE88(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100572358();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10056DE38();
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v16 = *(v9 + 80);
    v17 = v2;
    isa = _.super.super.super.isa;
    v30 = v13;
    v18 = (v16 + 32) & ~v16;
    v31 = v12;
    v19 = sub_100572338();
    sub_10056DE28();
    (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v18, v8);
    v20 = swift_allocObject();
    v21 = isa;
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v9 + 32))(v20 + v18, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v22 = v17;
    v23 = v21;
    v24 = sub_100573468();

    (*(v30 + 8))(v15, v31);
  }

  else
  {
    sub_10041C024(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v25 = &v7[*(v5 + 32)];
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v25) = v25[16];
    v33 = v26;
    v34 = v27;
    v35 = v25;
    v32 = 0;
    sub_100009DCC(&qword_1006F4470);
    sub_100570808();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_10042AE88(v7);
  }
}

uint64_t sub_1004277BC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v11 = sub_100572358();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_100572F48();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_100572F08();
  v18 = a1;
  v19 = a2;
  sub_1000F646C(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = sub_100572EF8();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], v29, v28);
  sub_100396F38(0, 0, v16, &unk_1005A05A8, v25);
}

uint64_t sub_100427A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_100572F08();
  v8[9] = sub_100572EF8();
  v10 = sub_100572E78();

  return _swift_task_switch(sub_100427AB8, v10, v9);
}

uint64_t sub_100427AB8()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_1000F54C8(v3, v2);
    sub_1000F54C8(v3, v2);
    isa = sub_10056C908().super.isa;
    v6 = [v4 initWithData:isa];

    sub_1000A79FC(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_100572348();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_10056C918();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = sub_10056C908().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          sub_1000A79FC(v30, v29);
        }

        else
        {
          sub_1000A79FC(*(v0 + 24), *(v0 + 32));
        }

        sub_10008246C(v13, v15);
      }

      else
      {
        sub_1000A79FC(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_1000A79FC(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_100573ED8(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F4808);
  v48._countAndFlagsBits = sub_100572978();
  sub_100572A98(v48);

  v33 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v33)
  {
    sub_10042AE34();
    v34 = swift_allocError();
    *v35 = 0xD00000000000002FLL;
    v35[1] = 0x80000001005BA050;

    v33(v34, 1);
    sub_1000F3E14(v33);
  }

  else
  {
  }

  v36 = *(v0 + 56);
  v37 = sub_100428D4C();
  [v36 presentViewController:v37 animated:1 completion:0];

  v38 = sub_100572348();
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    v42 = *(v0 + 56);
    sub_100009DCC(&qword_1006F44B0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10057B510;
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;
    v44 = sub_100572D08().super.isa;

    [v42 deselectAssetsWithIdentifiers:v44];
  }

LABEL_17:
  v45 = *(v0 + 8);

  return v45();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_10056C848();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_100572898();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_10056C918();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = sub_10056C908().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          sub_10008246C(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_10008246C(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_100573ED8(59);
  v49._countAndFlagsBits = 0xD000000000000025;
  v49._object = 0x80000001005B9D70;
  sub_100572A98(v49);
  v50._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v50);

  v51._object = 0x80000001005B9DA0;
  v51._countAndFlagsBits = 0xD000000000000014;
  sub_100572A98(v51);
  v35 = v47;
  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {
    v37 = v46;
    sub_10042AE34();
    v38 = swift_allocError();
    *v39 = v37;
    v39[1] = v35;

    v36(v38, 1);
    sub_1000F3E14(v36);
  }

  else
  {
  }

  sub_10041C024(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v40 = &v8[*(v6 + 32)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  v46 = v41;
  v47 = v42;
  v48 = v40;
  v45 = 0;
  sub_100009DCC(&qword_1006F4470);
  sub_100570808();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_10042AE88(v8);
}

void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_10056C7E8(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v32 = v11;
    v12 = sub_10056C918();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_10056C908().super.isa;
    v20 = [v18 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v20)
    {
      [v20 setDelegate:v2];
      [v20 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v21);
      }

      sub_10008246C(v12, v14);
      [a1 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      sub_10008246C(v12, v14);
    }

    v27 = v32;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_100573ED8(52);
    v38._object = 0x80000001005B9DC0;
    v38._countAndFlagsBits = 0xD000000000000031;
    sub_100572A98(v38);
    sub_10056C8A8();
    sub_10042B060(&qword_1006F44B8, &type metadata accessor for URL);
    v39._countAndFlagsBits = sub_100574408();
    sub_100572A98(v39);

    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    sub_100572A98(v40);
    v22 = v35;
    v23 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v23)
    {
      v24 = v34;
      sub_10042AE34();
      v25 = swift_allocError();
      *v26 = v24;
      v26[1] = v22;

      v23(v25, 1);
      sub_1000F3E14(v23);
    }

    else
    {
    }

    sub_10041C024(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v28 = &v6[*(v4 + 32)];
    v29 = *v28;
    v30 = *(v28 + 1);
    LOBYTE(v28) = v28[16];
    v34 = v29;
    v35 = v30;
    v36 = v28;
    v33 = 0;
    sub_100009DCC(&qword_1006F4470);
    sub_100570808();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_10042AE88(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10041C024(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
  v7 = &v6[*(v4 + 40)];
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v7) = v7[16];
  v12 = v8;
  v13 = v9;
  v14 = v7;
  v11[7] = 0;
  sub_100009DCC(&qword_1006F4470);
  sub_100570808();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_10042AE88(v6);
}

void sub_100428B54(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10041C024(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v9 = &v8[*(v6 + 40)];
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  v15 = v10;
  v16 = v11;
  v17 = v9;
  v14[7] = 0;
  v12 = a3;
  v13 = a1;
  sub_100009DCC(&qword_1006F4470);
  sub_100570808();
  [v12 dismissViewControllerAnimated:1 completion:0];
  sub_10042AE88(v8);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  sub_100009DCC(&qword_1006F4470);
  sub_100570808();
}

id sub_100428D4C()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_100428DAC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100428DAC()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  sub_100572818();
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FDF00;
  v10 = qword_1006FDF00;
  sub_10056CBC8();
  v11 = v10;
  v20[2] = v9;
  v20[0] = sub_100572948();
  v12 = *(v2 + 8);
  v12(v7, v1);
  sub_100572818();
  v8(v4, v7, v1);
  sub_10056CBC8();
  sub_100572948();
  v20[1] = v2 + 16;
  v12(v7, v1);
  v13 = sub_100572898();
  v20[0] = v8;
  v14 = v13;

  v15 = sub_100572898();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  sub_100572818();
  (v20[0])(v4, v7, v1);
  sub_10056CBC8();
  sub_100572948();
  v12(v7, v1);
  v17 = sub_100572898();

  v18 = [objc_opt_self() actionWithTitle:v17 style:1 handler:0];

  [v16 addAction:v18];
  return v16;
}

id sub_1004291F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_10041C024(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ImagePicker.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_10041C024(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &v5[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v5;
  v14.super_class = v4;
  v8 = objc_msgSendSuper2(&v14, "init");
  sub_10042AE88(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10041C024(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_10042B258(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = &v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v8[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v11 = sub_10042B2BC;
  v11[1] = v10;
  sub_1000F3E14(v12);
  return v8;
}

uint64_t sub_100429430(void *a1, char a2, uint64_t a3)
{
  v6 = sub_10056DF88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = Logger.playlistCovers.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = sub_10056DF68();
    v12 = sub_100573428();
    sub_1002F25C8(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v28 = v14;
      *v13 = 136446210;
      v30 = a1;
      swift_errorRetain();
      sub_100009DCC(&qword_1006F47F0);
      v15 = sub_100572978();
      v17 = sub_10037A2AC(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "ImagePicker failed with error: %{public}s", v13, 0xCu);
      sub_100010474(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = type metadata accessor for ImagePicker(0);
    v20 = (a3 + v19[5]);
    v21 = *v20;
    v22 = *(v20 + 2);
    v28 = v21;
    v29 = v22;
    v30 = a1;
    v23 = a1;
    sub_100009DCC(&qword_1006F47F8);
    result = sub_100570808();
    v24 = *(a3 + v19[7]);
    if (v24)
    {
      v25 = (a3 + v19[6]);
      v26 = *v25;
      v27 = v25[1];
      LOBYTE(v25) = *(v25 + 16);
      *&v28 = v26;
      *(&v28 + 1) = v27;
      LOBYTE(v29) = v25;
      sub_100009DCC(&qword_1006F4498);
      sub_1005707F8();
      return v24(v30);
    }
  }

  return result;
}

char *sub_1004296E0@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_100429708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10042B060(&qword_1006F47E0, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10042979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10042B060(&qword_1006F47E0, type metadata accessor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100429830()
{
  sub_10042B060(&qword_1006F47E0, type metadata accessor for ImagePicker);
  sub_10056F908();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);

  return v3;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100572898();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100429C10()
{
  v0 = sub_100385DC0(&off_10069D760);
  sub_100009DCC(&qword_1006F4840);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_100429CB4()
{

  return swift_deallocObject();
}

void sub_100429CF4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

uint64_t static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_1006EEC20 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100429D94(uint64_t a1, uint64_t a2)
{
  sub_100574678();
  sub_1005729F8();
  v4 = sub_1005746C8();

  return sub_1000EBC88(a1, a2, v4);
}

unint64_t sub_100429E10(unsigned __int8 *a1)
{
  sub_100574678();
  PlaylistCovers.Cover.Representation.hash(into:)();
  v2 = sub_1005746C8();

  return sub_100429F3C(a1, v2);
}

unint64_t sub_100429E7C(char a1)
{
  sub_100574678();
  sub_1005729F8();

  v2 = sub_1005746C8();

  return sub_10042A020(a1, v2);
}

unint64_t sub_100429F3C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 56 * v4;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *v7;
      v15 = *(v7 + 48);
      v14[1] = v9;
      v14[2] = v8;
      v14[0] = v10;
      sub_1002D99B0(v14, v13);
      v11 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v14, a1);
      sub_1002D9A0C(v14);
      if (v11)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10042A020(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_100574498();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10042A19C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006EFB68);
  v33 = a2;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1000F54C8(v34, *(&v34 + 1));
      }

      sub_100574678();
      sub_1005729F8();
      result = sub_1005746C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10042A458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F4810);
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000F51DC((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000F40D4(v23, &v36);
        sub_100081F38(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100573E58(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000F51DC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10042A710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F47E8);
  v61 = a2;
  result = sub_1005741A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v59 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v61)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v78 = *(v32 + 64);
        v79 = v33;
        v34 = *(v32 + 112);
        v80 = *(v32 + 96);
        v81 = v34;
        v35 = *(v32 + 16);
        v74 = *v32;
        v75 = v35;
        v36 = *(v32 + 48);
        v76 = *(v32 + 32);
        v77 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v60 = *(v27 + 8);
        v62 = *(v27 + 40);
        v63 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v65 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v68 = *(v38 + 48);
        v69 = v39;
        v66 = v41;
        v67 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v73 = *(v38 + 128);
        v71 = v43;
        v72 = v42;
        v70 = v44;
        v37 = v73;
        v45 = v60;
        v46 = *(&v60 + 1);
        v47 = v63;
        v48 = *(&v63 + 1);
        v49 = v62;
        v50 = *(&v62 + 1);
        sub_10042B8F4(&v65, v64);
        v30 = v62;
        v29 = v63;
        v28 = v60;
        v78 = v69;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v74 = v65;
        v75 = v66;
        v76 = v67;
        v77 = v68;
      }

      v82[0] = v31;
      *&v82[8] = v28;
      *&v82[24] = v29;
      *&v82[40] = v30;
      sub_100574678();
      PlaylistCovers.Cover.Representation.hash(into:)();
      result = sub_1005746C8();
      v51 = -1 << *(v7 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v14 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v14 + 8 * v53);
          if (v57 != -1)
          {
            v15 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v52) & ~*(v14 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v82[16];
      *v16 = *v82;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v82[32];
      *(v16 + 48) = *&v82[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v79;
      *(v18 + 64) = v78;
      *(v18 + 80) = v19;
      v20 = v81;
      *(v18 + 96) = v80;
      *(v18 + 112) = v20;
      v21 = v75;
      *v18 = v74;
      *(v18 + 16) = v21;
      v22 = v77;
      *(v18 + 32) = v76;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_34;
    }

    v58 = 1 << *(v5 + 32);
    v3 = v59;
    if (v58 >= 64)
    {
      bzero((v5 + 64), ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v58;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_10042AB0C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006EFB68);
  v2 = *v0;
  v3 = sub_100574198();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1000F54C8(v22, *(&v22 + 1));
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

void *sub_10042AC90()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F4810);
  v2 = *v0;
  v3 = sub_100574198();
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
        v18 = 40 * v17;
        sub_1000F40D4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100081F38(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000F51DC(v22, (*(v4 + 56) + v17));
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

unint64_t sub_10042AE34()
{
  result = qword_1006F4488;
  if (!qword_1006F4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4488);
  }

  return result;
}

uint64_t sub_10042AE88(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042AEE4()
{
  v1 = sub_100572358();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10042AFB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100572358() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1004277BC(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_10042B060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10042B0C8()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100009DCC(&unk_1006EEDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056E918();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10042B258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042B2BC(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100429430(a1, a2 & 1, v6);
}

unint64_t sub_10042B340()
{
  result = qword_1006F44C8;
  if (!qword_1006F44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F44C8);
  }

  return result;
}

uint64_t sub_10042B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&unk_1006F26F0);
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

uint64_t sub_10042B4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(&unk_1006F26F0);
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

void sub_10042B598()
{
  sub_10042B720();
  if (v0 <= 0x3F)
  {
    sub_10042B7C4(319, &unk_1006F4550, &qword_1006EF6A0, &unk_100598E18, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10042B778(319, &unk_1006F4560);
      if (v2 <= 0x3F)
      {
        sub_10042B7C4(319, &qword_1006F1DB8, &qword_1006F4570, &unk_1005A0460, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10042B778(319, &qword_1006F4578);
          if (v4 <= 0x3F)
          {
            sub_10042B7C4(319, &qword_1006F4580, &unk_1006F4588, &unk_1005A0468, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10042B720()
{
  if (!qword_1006F2778)
  {
    sub_10056E918();
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F2778);
    }
  }
}

void sub_10042B778(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100570868();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10042B7C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010324(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10042B830()
{
  result = type metadata accessor for ImagePicker(319);
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

void *sub_10042B950()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F47E8);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    for (i = (v10 + 63) >> 6; v12; result = sub_10042B8F4(&v53, v52))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
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

uint64_t sub_10042BB94()
{
  v1 = sub_100572358();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_10008246C(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10042BC88(uint64_t a1)
{
  sub_100572358();
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
  v11[1] = sub_10000CB98;

  return sub_100427A10(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10042BDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F47D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042BE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F47D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InteractionFeedbackLoadingView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_10056F218();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100009DCC(&qword_1006F4848);
  sub_10042BFD4(a1, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = (a3 + *(sub_100009DCC(&qword_1006F4850) + 36));
  *v10 = sub_10042C6D8;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_10042BFD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_10056F1D8();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_10056F7B8();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006F2CF8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v45 = sub_100009DCC(&qword_1006F4870);
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v17 = &v37 - v16;
  v18 = sub_100009DCC(&qword_1006F4878);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  v47 = a1;
  v48 = v43;
  sub_100009DCC(&qword_1006F12F8);
  sub_100570678();
  v24 = 1;
  if (v46 == 1)
  {
    sub_10056E7E8();
    sub_10056F7A8();
    sub_100010BC0(&qword_1006F2CF0, &qword_1006F2CF8);
    sub_10042CC5C(&qword_1006F4888, &type metadata accessor for CircularProgressViewStyle);
    sub_10056FF98();
    (*(v38 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
    v25 = &v17[*(sub_100009DCC(&qword_1006F4890) + 36)];
    v26 = *(sub_100009DCC(&qword_1006F4898) + 28);
    v27 = enum case for ControlSize.large(_:);
    v28 = sub_10056E6B8();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    v29 = v40;
    sub_10056F1C8();
    v31 = v41;
    v30 = v42;
    (*(v41 + 16))(v39, v29, v42);
    sub_10042CC5C(&qword_1006F48A0, &type metadata accessor for OpacityTransition);
    v32 = sub_10056E8F8();
    (*(v31 + 8))(v29, v30);
    *&v17[*(v45 + 36)] = v32;
    sub_10042CCA4(v17, v23);
    v24 = 0;
  }

  (*(v15 + 56))(v23, v24, 1, v45);
  sub_10042CA94(v23, v20);
  v33 = v44;
  *v44 = 0;
  *(v33 + 8) = 1;
  v34 = sub_100009DCC(&qword_1006F4880);
  sub_10042CA94(v20, v33 + *(v34 + 48));
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  v35[8] = 1;
  sub_10042CB04(v23);
  return sub_10042CB04(v20);
}

uint64_t sub_10042C568(char a1, uint64_t a2, double a3)
{
  v6 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_100572F48();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v8, &unk_1005A06B8, v10, &type metadata for () + 8, a3);

  return sub_10042CA2C(v8);
}

uint64_t sub_10042C6A0()
{

  return swift_deallocObject();
}

uint64_t sub_10042C704(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_10042C728, 0, 0);
}

uint64_t sub_10042C728()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  sub_100009DCC(&qword_1006F12F8);
  sub_100570688();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042C7C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  *a1 = sub_10056F218();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100009DCC(&qword_1006F4848);
  sub_10042BFD4(v4, v5, (a1 + *(v6 + 44)));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  v8 = (a1 + *(sub_100009DCC(&qword_1006F4850) + 36));
  *v8 = sub_10042CD1C;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

unint64_t sub_10042C8BC()
{
  result = qword_1006F4858;
  if (!qword_1006F4858)
  {
    sub_100010324(&qword_1006F4850);
    sub_100010BC0(&qword_1006F4860, &qword_1006F4868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4858);
  }

  return result;
}

uint64_t sub_10042C974(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000CB98;

  return sub_10042C704(a1, v4, v5);
}

uint64_t sub_10042CA2C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F4800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042CA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F4878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042CB04(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F4878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042CB90(uint64_t a1)
{
  v2 = sub_10056E6B8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10056EEF8();
}

uint64_t sub_10042CC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10042CCA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F4870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10056E778();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_10056E788();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_10056EA18();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for LayoutProviderStack();
  v17 = (a9 + result[13]);
  *v17 = a2;
  v17[1] = a3;
  v18 = a9 + result[14];
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  v19 = (a9 + result[15]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  sub_100010324(&qword_1006F48A8);
  v4 = *(a1 + 24);
  sub_10042D31C(&qword_1006F48B0);
  v5 = sub_10056EA08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v25 - v11;
  (*(*(a1 + 32) + 8))(v26, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v10);
  v13 = sub_10000C8CC(v26, v26[3]);
  v14 = __chkstk_darwin(v13);
  (*(v16 + 16))(v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v25[4] = sub_100570A68();
  v17 = (v2 + *(a1 + 60));
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_10042D2C8();
  v21 = *(a1 + 40);
  sub_10042CD20(v18, v19, &type metadata for AnyLayout, v4, v20, v21, v8);

  sub_100010474(v26);
  v25[2] = sub_10042D31C(&qword_1006F48C0);
  v25[3] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1003CE294(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_1003CE294(v12, v5, WitnessTable);
  return (v23)(v12, v5);
}

unint64_t sub_10042D2C8()
{
  result = qword_1006F48B8;
  if (!qword_1006F48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F48B8);
  }

  return result;
}

uint64_t sub_10042D31C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006F48A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AxisStack.body.getter(uint64_t a1)
{
  v17[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v23, v17, &type metadata for Axis);
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v10 = type metadata accessor for LayoutProviderStack();
  v11 = &v23[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v23[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v23[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v17[0] = v23[0];
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v14 = type metadata accessor for LayoutProviderStack();
  WitnessTable = swift_getWitnessTable();
  sub_1003CE294(v17, v14, WitnessTable);

  v23[0] = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  sub_1003CE294(v23, v14, WitnessTable);
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_10042D5C0();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_10042D614();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_10042D5C0()
{
  result = qword_1006F48C8;
  if (!qword_1006F48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F48C8);
  }

  return result;
}

unint64_t sub_10042D614()
{
  result = qword_1006F48D0[0];
  if (!qword_1006F48D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F48D0);
  }

  return result;
}

unint64_t sub_10042D6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_10042D5C0();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_10042D614();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_10042D768()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1003CBC5C();
    if (v1 <= 0x3F)
    {
      sub_1003CC840();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10042D810(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_10042D95C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_10042DB30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10042DB6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10042DBB4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10042DC18()
{
  sub_100010324(&qword_1006F48A8);
  sub_10042D31C(&qword_1006F48B0);
  sub_10056EA08();
  sub_10042D31C(&qword_1006F48C0);
  return swift_getWitnessTable();
}

uint64_t sub_10042DD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_1003CE294(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1003CE294(v14, a4, a6);
  return (v15)(v14, a4);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_100572898();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_1006EEC28;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_1006F49D8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_10042E238();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_10042E3AC();
  [v16 addSubview:v26];

  return v16;
}

id sub_10042E238()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_10042E3AC();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_10042E3AC();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_10042E3AC();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_10042E3AC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_10042E238();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_10042E644;
}

void sub_10042E644(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_10042E238();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

id LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10042E830;
}

void sub_10042E830(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_10042E984;
}

void sub_10042E984(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_100574498() & 1) != 0)
      {
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = sub_100572898();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_10042EBE0;
}

void sub_10042EBE0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  sub_1002DCE0C(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  sub_100573848();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = sub_10042E3AC();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  sub_100573848();
  if (v46 == 2)
  {
    [v0 bounds];
    sub_100573868();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    sub_100573848();
    [v0 bounds];
    sub_100573868();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    sub_100573848();
    v53 = v50;
  }

  sub_100573848();
  [v0 bounds];
  sub_100573868();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  sub_100573848();
  [v0 bounds];
  sub_100573868();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10042E3AC();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _s3__C6CGSizeVMa_1(0);
    if (sub_10056CEC8())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_10042F538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_10042F568()
{
  sub_10042F8D8();
  v0 = UIFontTextStyleSubheadline;
  v1 = sub_1005738E8();

  qword_1006F49D8 = v1;
}

unint64_t sub_10042F6A4()
{
  result = qword_1006F4A10;
  if (!qword_1006F4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4A10);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LoadingView.Style(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10042F78C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10042F7A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_10042F7D8()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  sub_1005740F8();
  __break(1u);
}

unint64_t sub_10042F8D8()
{
  result = qword_1006F4A40;
  if (!qword_1006F4A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F4A40);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056C628();
  __chkstk_darwin(v2 - 8);
  sub_100009DCC(&qword_1006F4A48);
  swift_allocObject();

  sub_10056CE68();
  sub_10056CE58();

  result = sub_10056FF18();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10042FA24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056C628();
  __chkstk_darwin(v2 - 8);
  sub_100009DCC(&qword_1006F4A48);
  swift_allocObject();

  sub_10056CE68();
  sub_10056CE58();

  result = sub_10056FF18();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10042FB20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_10056E728();
  sub_100435D80(a1, v15, a2, a3, a4, a5, a6, a7);
  return sub_1003AC1DC(v15);
}

uint64_t sub_10042FBC4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_100570AE8();
}

uint64_t sub_10042FD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_10056E668();
}

uint64_t sub_10042FF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100573C28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for MaterialyView();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v57 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v78 = *(a1 + 16);
  v2 = v78;
  v79 = &type metadata for Color;
  v80 = v3;
  v81 = &protocol witness table for Color;
  v5 = v3;
  v65 = sub_10056E678();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v42 - v6;
  sub_10056EDE8();
  v64 = sub_10056ECA8();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v42 - v7;
  v78 = v2;
  v79 = &type metadata for LinearGradient;
  v80 = v5;
  v81 = &protocol witness table for LinearGradient;
  sub_10056E678();
  WitnessTable = sub_100573C28();
  v78 = v2;
  v79 = &type metadata for Color;
  v80 = &type metadata for EmptyView;
  v81 = v5;
  v82 = &protocol witness table for Color;
  v83 = &protocol witness table for EmptyView;
  sub_10056ECF8();
  sub_10056ECA8();
  v56 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_10056E768();
  sub_10056ECA8();
  sub_10056ECA8();
  v10 = sub_100010324(&qword_1006F4A50);
  v11 = sub_100010BC0(&qword_1006F4A58, &qword_1006F4A50);
  v78 = v2;
  v79 = v10;
  v80 = v5;
  v81 = v11;
  v12 = v5;
  sub_10056E678();
  v78 = AssociatedTypeWitness;
  v79 = &type metadata for Color;
  v80 = v9;
  v81 = &protocol witness table for Color;
  sub_10056E678();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata3();
  sub_100570AD8();
  swift_getWitnessTable();
  v54 = sub_1005707E8();
  WitnessTable = swift_getWitnessTable();
  sub_10056EE08();
  v13 = sub_10056ECA8();
  __chkstk_darwin(v13);
  v53 = &v42 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin(v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v18;
  v46 = swift_getWitnessTable();
  v76 = v46;
  v77 = &protocol witness table for _BlendModeEffect;
  v19 = swift_getWitnessTable();
  v49 = v19;
  v20 = swift_getWitnessTable();
  v74 = v19;
  v75 = v20;
  v51 = v13;
  v48 = swift_getWitnessTable();
  v78 = v2;
  v79 = &type metadata for LinearGradient;
  v80 = v13;
  v43 = v12;
  v81 = v12;
  v82 = &protocol witness table for LinearGradient;
  v83 = v48;
  v21 = sub_10056ECF8();
  v52 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v47 = &v42 - v25;
  v26 = v56;
  v27 = type metadata accessor for MaterialyView.Style.Specs();
  v45 = v27;
  v50 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = (&v42 - v28);
  v30 = v58;
  sub_100430A3C(*(v58 + *(v57 + 36)), v2, v26, &v42 - v28);
  (*(v15 + 16))(v18, v30, v2);
  v31 = v29 + *(v27 + 36);
  v71 = *(v31 + 1);
  v32 = *(v31 + 2);
  v72 = *(v31 + 1);
  v73 = v32;

  sub_10056E728();
  v70 = *v29;
  v33 = v60;
  sub_10042FD94(&v70, 256, v2, &type metadata for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v34 = v59;
  v35 = v65;
  sub_100570378();
  (*(v61 + 8))(v33, v35);
  v66 = v2;
  v67 = v26;
  v68 = v29;
  v69 = v30;
  sub_1005709E8();
  v36 = v53;
  v37 = v64;
  sub_1005702F8();
  (*(v62 + 8))(v34, v37);
  sub_100433030(v44, &v71, &v78, 1, v36, v2, &type metadata for LinearGradient, v51, v23, v43, &protocol witness table for LinearGradient, v48);
  v38 = swift_getWitnessTable();
  v39 = v47;
  sub_1003CE294(v23, v21, v38);
  v40 = *(v52 + 8);
  v40(v23, v21);
  sub_1003CE294(v39, v21, v38);
  v40(v39, v21);
  return (*(v50 + 8))(v29, v45);
}

uint64_t sub_100430A3C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = a1;
  v8 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
  __chkstk_darwin(v8 - 8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v64 - v11;
  __chkstk_darwin(v12);
  v72 = &v64 - v13;
  __chkstk_darwin(v14);
  v71 = &v64 - v15;
  v16 = sub_100570A78();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  v22 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  __chkstk_darwin(v22 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v64 - v26;
  if (v7 == 2)
  {
    sub_1005704D8();
    v28 = sub_1005704E8();

    v29 = *(v17 + 104);
    v30 = v19;
    v29(v19, enum case for BlendMode.plusLighter(_:), v16);
    v31 = v29;
    v74 = v27;
    v69 = v21;
    sub_100433450(v28, v30, v27);
    sub_100009DCC(&qword_1006F03C8);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10057BD80;
    sub_1005704D8();
    sub_1005704E8();

    *(v32 + 32) = sub_100570948();
    *(v32 + 40) = v33;
    sub_1005704D8();
    sub_1005704E8();

    *(v32 + 48) = sub_100570948();
    *(v32 + 56) = v34;
    sub_1005704D8();
    sub_1005704E8();

    *(v32 + 64) = sub_100570948();
    *(v32 + 72) = v35;
    sub_1005704D8();
    sub_1005704E8();

    *(v32 + 80) = sub_100570948();
    *(v32 + 88) = v36;
    sub_100570958();
    sub_100570AF8();
    sub_100570B08();
    sub_10056EA68();
    *&v79 = 0x3FE0000000000000;
    *(&v79 + 1) = v82;
    v80 = v83;
    v81 = v84;
    memset(v85, 0, 40);
    sub_1005704A8();
    v37 = sub_1005704E8();

    v38 = enum case for BlendMode.normal(_:);
    v31(v30, enum case for BlendMode.normal(_:), v16);
    v39 = v71;
    sub_1004334DC(v37, v30, v71, 4.0, 0.0, 3.0);
    sub_1005704D8();
    v40 = sub_1005704E8();

    v31(v30, v38, v16);
    v41 = v72;
    sub_1004334DC(v40, v30, v72, 3.0, 0.0, 1.0);
    v42 = v75;
    v43 = v74;
    v44 = v39;
    v45 = v41;
  }

  else
  {
    sub_1005704D8();
    v46 = 0.23;
    if (a1)
    {
      v46 = 0.8;
    }

    v71 = *&v46;
    v47 = 3.0;
    if (a1)
    {
      v47 = 6.0;
    }

    v72 = *&v47;
    v48 = sub_1005704E8();

    v49 = *(v17 + 104);
    v49(v19, enum case for BlendMode.plusLighter(_:), v16);
    v70 = v20;
    sub_100433450(v48, v19, v24);
    sub_100009DCC(&qword_1006F03C8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10057BD80;
    sub_1005704D8();
    sub_1005704E8();

    *(v50 + 32) = sub_100570948();
    *(v50 + 40) = v51;
    sub_1005704D8();
    sub_1005704E8();

    *(v50 + 48) = sub_100570948();
    *(v50 + 56) = v52;
    sub_1005704D8();
    sub_1005704E8();

    *(v50 + 64) = sub_100570948();
    *(v50 + 72) = v53;
    sub_1005704D8();
    sub_1005704E8();

    *(v50 + 80) = sub_100570948();
    *(v50 + 88) = v54;
    sub_100570958();
    sub_100570AF8();
    sub_100570B08();
    sub_10056EA68();
    *&v79 = 0x3FF0000000000000;
    *(&v79 + 1) = v76;
    v80 = v77;
    v81 = v78;
    sub_100009DCC(&qword_1006F03D0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10057B500;
    sub_1005704D8();
    v56 = sub_1005704E8();

    *(v55 + 32) = v56;
    sub_1005704A8();
    v57 = sub_1005704E8();

    *(v55 + 40) = v57;
    sub_100570968();
    sub_100570B28();
    sub_100570B38();
    sub_10056EA68();
    v68 = v82;
    sub_1005704A8();
    v58 = sub_1005704E8();
    v59 = enum case for BlendMode.normal(_:);

    v67 = v83;
    v66 = v84;
    v49(v19, v59, v16);
    v65 = v24;
    v60 = v73;
    sub_1004334DC(v58, v19, v73, 4.0, 0.0, 3.0);
    sub_1005704D8();
    v61 = sub_1005704E8();

    v49(v19, v59, v16);
    v62 = v74;
    sub_1004334DC(v61, v19, v74, *&v72, 0.0, 1.0);
    *&v85[0] = v68;
    *(&v85[1] + 8) = v66;
    *(v85 + 8) = v67;
    v42 = v75;
    v43 = v65;
    v44 = v60;
    v45 = v62;
  }

  return sub_100433570(v43, &v79, v85, v44, v45, v42);
}

uint64_t sub_1004313F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a5;
  v7 = *(a4 + 8);
  sub_10056E678();
  v20 = sub_100573C28();
  v28 = a3;
  v29 = &type metadata for Color;
  v30 = &type metadata for EmptyView;
  v31 = v7;
  v32 = &protocol witness table for Color;
  v33 = &protocol witness table for EmptyView;
  sub_10056ECF8();
  sub_10056ECA8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_10056E768();
  sub_10056ECA8();
  sub_10056EDE8();
  sub_10056ECA8();
  sub_100010324(&qword_1006F4A50);
  sub_100010BC0(&qword_1006F4A58, &qword_1006F4A50);
  sub_10056E678();
  v28 = AssociatedTypeWitness;
  v29 = &type metadata for Color;
  v30 = v9;
  v31 = &protocol witness table for Color;
  sub_10056E678();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata3();
  sub_100570AD8();
  swift_getWitnessTable();
  v10 = sub_1005707E8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = v22;
  sub_1005709E8();
  sub_1005707D8();
  WitnessTable = swift_getWitnessTable();
  sub_1003CE294(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_1003CE294(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_100431804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a2;
  v138 = a1;
  v127 = a5;
  v7 = sub_100010324(&qword_1006F4A50);
  v8 = *(a4 + 8);
  v144 = a3;
  *&v145 = v7;
  *(&v145 + 1) = v8;
  *&v146 = sub_100010BC0(&qword_1006F4A58, &qword_1006F4A50);
  sub_10056E678();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v144 = AssociatedTypeWitness;
  *&v145 = &type metadata for Color;
  *(&v145 + 1) = v10;
  *&v146 = &protocol witness table for Color;
  sub_10056E678();
  sub_10056EDE8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  v118 = sub_100570AD8();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1005707E8();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v115 = &v95 - v13;
  v121 = v14;
  v15 = sub_10056ECA8();
  v120 = *(v15 - 8);
  __chkstk_darwin(v15);
  v117 = &v95 - v16;
  v122 = v17;
  v126 = sub_10056ECA8();
  v123 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v124 = &v95 - v20;
  v111 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v21);
  v110 = &v95 - v22;
  v144 = a3;
  *&v145 = &type metadata for Color;
  *(&v145 + 1) = &type metadata for EmptyView;
  *&v146 = v8;
  *(&v146 + 1) = &protocol witness table for Color;
  v147 = &protocol witness table for EmptyView;
  v23 = sub_10056ECF8();
  v100 = *(v23 - 8);
  __chkstk_darwin(v23);
  v99 = &v95 - v24;
  v101 = v25;
  v26 = sub_10056ECA8();
  v106 = *(v26 - 8);
  __chkstk_darwin(v26);
  v103 = &v95 - v27;
  v114 = AssociatedTypeWitness;
  v112 = v10;
  v28 = sub_10056E768();
  v107 = v26;
  v104 = v28;
  v29 = sub_10056ECA8();
  v108 = *(v29 - 8);
  __chkstk_darwin(v29);
  v105 = &v95 - v30;
  v109 = v31;
  v32 = a3;
  v113 = sub_10056ECA8();
  v130 = *(v113 - 8);
  __chkstk_darwin(v113);
  v137 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v133 = &v95 - v35;
  v144 = a3;
  *&v145 = &type metadata for LinearGradient;
  *(&v145 + 1) = v8;
  *&v146 = &protocol witness table for LinearGradient;
  v36 = sub_10056E678();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v95 - v41;
  v129 = v43;
  v131 = sub_100573C28();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v45 = &v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v135 = &v95 - v47;
  v132 = a4;
  v128 = type metadata accessor for MaterialyView.Style.Specs();
  v48 = v138 + *(v128 + 40);
  if (*v48)
  {
    v144 = *v48;
    v145 = *(v48 + 8);
    v146 = *(v48 + 24);
    sub_10042FD94(&v144, 256, v32, &type metadata for LinearGradient);
    v49 = v129;
    v50 = swift_getWitnessTable();
    sub_1003CE294(v39, v49, v50);
    v51 = *(v37 + 8);
    v51(v39, v49);
    v52 = v50;
    v11 = v8;
    sub_1003CE294(v42, v49, v52);
    v51(v42, v49);
    (*(v37 + 32))(v45, v39, v49);
    (*(v37 + 56))(v45, 0, 1, v49);
  }

  else
  {
    (*(v37 + 56))(v45, 1, 1, v129);
    swift_getWitnessTable();
  }

  v53 = v136;
  v54 = *(v136 + 16);
  v97 = v136 + 16;
  v98 = v54;
  v55 = v131;
  v54(v135, v45, v131);
  v56 = *(v53 + 8);
  v136 = v53 + 8;
  v102 = v56;
  v56(v45, v55);
  v144 = sub_1005704D8();
  v57 = v99;
  v95 = v32;
  sub_10042FB20(&v144, 1, v32, &type metadata for Color, v11, &protocol witness table for Color, v99);

  v58 = v101;
  v59 = swift_getWitnessTable();
  v60 = v103;
  sub_1005702D8();
  (*(v100 + 8))(v57, v58);
  v61 = v110;
  sub_10056EC68();
  v143[11] = v59;
  v143[12] = &protocol witness table for _ShadowEffect;
  v62 = v107;
  v63 = swift_getWitnessTable();
  v64 = v105;
  v65 = v114;
  sub_100570388();
  (*(v111 + 8))(v61, v65);
  (*(v106 + 8))(v60, v62);
  v66 = v95;
  v67 = v132;
  type metadata accessor for MaterialyView.Style.Specs.Shadow();
  v68 = swift_getWitnessTable();
  v143[9] = v63;
  v143[10] = v68;
  v69 = v109;
  v70 = swift_getWitnessTable();
  v71 = v45;
  v72 = v137;
  sub_100570378();
  (*(v108 + 8))(v64, v69);
  v143[7] = v70;
  v143[8] = &protocol witness table for _BlendModeEffect;
  v73 = v113;
  v111 = swift_getWitnessTable();
  sub_1003CE294(v72, v73, v111);
  v74 = *(v130 + 8);
  v112 = v130 + 8;
  v114 = v74;
  v75 = (v74)(v72, v73);
  __chkstk_darwin(v75);
  *(&v95 - 4) = v66;
  *(&v95 - 3) = v67;
  v76 = v138;
  *(&v95 - 2) = v134;
  *(&v95 - 1) = v76;
  sub_1005709E8();
  v77 = v115;
  sub_1005707D8();
  v78 = v121;
  v79 = swift_getWitnessTable();
  v80 = v117;
  sub_100570118();
  (*(v119 + 8))(v77, v78);
  v143[5] = v79;
  v143[6] = &protocol witness table for _CompositingGroupEffect;
  v81 = v122;
  v82 = swift_getWitnessTable();
  v83 = v125;
  sub_100570378();
  (*(v120 + 8))(v80, v81);
  v143[3] = v82;
  v143[4] = &protocol witness table for _BlendModeEffect;
  v84 = v126;
  v138 = swift_getWitnessTable();
  v85 = v124;
  sub_1003CE294(v83, v84, v138);
  v86 = v123;
  v87 = *(v123 + 8);
  v87(v83, v84);
  v96 = v71;
  v88 = v131;
  v98(v71, v135, v131);
  v144 = v71;
  v89 = v137;
  v90 = v133;
  (*(v130 + 16))(v137, v133, v73);
  *&v145 = v89;
  (*(v86 + 16))(v83, v85, v84);
  *(&v145 + 1) = v83;
  v143[0] = v88;
  v143[1] = v73;
  v143[2] = v84;
  v139 = swift_getWitnessTable();
  v91 = v88;
  v140 = swift_getWitnessTable();
  v141 = v111;
  v142 = v138;
  sub_10042FBC4(&v144, 3uLL, v143);
  v87(v85, v84);
  v92 = v114;
  v114(v90, v73);
  v93 = v102;
  v102(v135, v91);
  v87(v83, v84);
  v92(v137, v73);
  return v93(v96, v91);
}

uint64_t sub_1004328B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v52 = a1;
  v68 = a5;
  v7 = sub_100570A78();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = v47 - v10;
  v59 = AssociatedTypeWitness;
  v58 = *(swift_getAssociatedConformanceWitness() + 8);
  v72 = AssociatedTypeWitness;
  v73 = &type metadata for Color;
  v74 = v58;
  v75 = &protocol witness table for Color;
  v55 = sub_10056E678();
  v64 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v47 - v11;
  sub_10056EDE8();
  v12 = sub_10056ECA8();
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  __chkstk_darwin(v12);
  v54 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = v47 - v16;
  v17 = sub_100009DCC(&qword_1006F4A50);
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  v47[1] = a4;
  v20 = *(a4 + 8);
  v21 = sub_100010BC0(&qword_1006F4A58, &qword_1006F4A50);
  v72 = a3;
  v73 = v17;
  v74 = v20;
  v75 = v21;
  v22 = sub_10056E678();
  v48 = *(v22 - 8);
  v23 = v48;
  __chkstk_darwin(v22);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v49 = v47 - v27;
  type metadata accessor for MaterialyView.Style.Specs();
  sub_10056E6F8();
  sub_10042FD94(v19, 256, a3, v17);
  sub_10001036C(v19, &qword_1006F4A50);
  WitnessTable = swift_getWitnessTable();
  sub_1003CE294(v25, v22, WitnessTable);
  v28 = *(v23 + 8);
  v51 = v23 + 8;
  v57 = v28;
  v28(v25, v22);
  v29 = v56;
  sub_10056EC68();
  v72 = sub_1005704D8();
  v30 = v53;
  v31 = v59;
  sub_10042FD94(&v72, 256, v59, &type metadata for Color);

  (*(v63 + 8))(v29, v31);
  v33 = v65;
  v32 = v66;
  v34 = v67;
  (*(v66 + 104))(v65, enum case for BlendMode.destinationOut(_:), v67);
  v35 = v55;
  v36 = swift_getWitnessTable();
  v37 = v54;
  sub_100570378();
  (*(v32 + 8))(v33, v34);
  (*(v64 + 8))(v30, v35);
  v71[2] = v36;
  v71[3] = &protocol witness table for _BlendModeEffect;
  v38 = v61;
  v39 = swift_getWitnessTable();
  v40 = v60;
  sub_1003CE294(v37, v38, v39);
  v41 = v62;
  v42 = *(v62 + 8);
  v43 = v37;
  v42(v37, v38);
  v44 = v49;
  (*(v48 + 16))(v25, v49, v22);
  v72 = v25;
  (*(v41 + 16))(v43, v40, v38);
  v73 = v43;
  v71[0] = v22;
  v71[1] = v38;
  v69 = WitnessTable;
  v70 = v39;
  sub_10042FBC4(&v72, 2uLL, v71);
  v42(v40, v38);
  v45 = v57;
  v57(v44, v22);
  v42(v43, v38);
  return v45(v25, v22);
}

uint64_t sub_100433030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  __chkstk_darwin(a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10056F598();
  __chkstk_darwin(v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  __chkstk_darwin(v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  __chkstk_darwin(v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10056E9F8();
  __chkstk_darwin(v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_10056E678();
  v25 = __chkstk_darwin(v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_10056E9E8();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_10056E668();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1005709E8();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_10056F588();
  return sub_10056EC98();
}

uint64_t sub_100433450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor() + 36);
  v6 = sub_100570A78();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1004334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v8 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow() + 44);
  v9 = sub_100570A78();
  v10 = *(*(v9 - 8) + 32);

  return v10(a3 + v8, a2, v9);
}

uint64_t sub_100433570@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for MaterialyView.Style.Specs();
  v14 = (a6 + v13[9]);
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  v16 = a6 + v13[10];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a3 + 32);
  v18 = v13[11];
  v19 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
  v22 = *(*(v19 - 8) + 32);
  (v22)((v19 - 8), a6 + v18, a4, v19);
  v20 = a6 + v13[12];

  return v22(v20, a5, v19);
}

uint64_t MaterialyButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle();
  sub_1003BBB74();
  sub_10056E7F8();
  return sub_10056E7F8();
}

uint64_t sub_10043378C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F128();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle()
{
  result = qword_1006F4BD0;
  if (!qword_1006F4BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006F4A60);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  *v7 = sub_10056F368();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v8 = sub_100009DCC(&qword_1006F4A68);
  sub_100433980(a1, v2, &v7[*(v8 + 44)]);
  if (sub_1004346D0())
  {
    v9 = sub_10056F6C8();
  }

  else
  {
    v9 = sub_10056F6E8();
  }

  v10 = v9;
  sub_100019B40(v7, a2, &qword_1006F4A60);
  result = sub_100009DCC(qword_1006F4A70);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_100433980@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v112 = a3;
  v110 = sub_10056F3C8();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100009DCC(&qword_1006F4E38);
  __chkstk_darwin(v102);
  v103 = &v86 - v5;
  v104 = sub_100009DCC(&qword_1006F4E40);
  __chkstk_darwin(v104);
  v106 = &v86 - v6;
  v105 = sub_100009DCC(&qword_1006F4E48);
  __chkstk_darwin(v105);
  v111 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v86 - v9;
  __chkstk_darwin(v10);
  v109 = &v86 - v11;
  v12 = sub_100009DCC(&qword_1006F2E90);
  __chkstk_darwin(v12 - 8);
  v94 = &v86 - v13;
  v14 = sub_10056F238();
  v15 = *(v14 - 8);
  v88 = v14;
  v89 = v15;
  __chkstk_darwin(v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056F768();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009DCC(&qword_1006F4E50);
  __chkstk_darwin(v22);
  v24 = &v86 - v23;
  v25 = sub_100009DCC(&qword_1006F4E58);
  v90 = *(v25 - 8);
  v91 = v25;
  __chkstk_darwin(v25);
  v86 = &v86 - v26;
  v87 = sub_100009DCC(&qword_1006F4E60) - 8;
  __chkstk_darwin(v87);
  v28 = &v86 - v27;
  v93 = sub_100009DCC(&qword_1006F4E68);
  __chkstk_darwin(v93);
  v113 = &v86 - v29;
  v95 = sub_100009DCC(&qword_1006F4E70);
  __chkstk_darwin(v95);
  v98 = &v86 - v30;
  v97 = sub_100009DCC(&qword_1006F4E78);
  __chkstk_darwin(v97);
  v100 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v96 = &v86 - v33;
  __chkstk_darwin(v34);
  v99 = &v86 - v35;
  sub_10056F778();
  if (sub_10056F788())
  {
    v36 = 0.92;
  }

  else
  {
    v36 = 1.0;
  }

  sub_100570B48();
  v38 = v37;
  v40 = v39;
  (*(v19 + 32))(v24, v21, v18);
  v41 = &v24[*(v22 + 36)];
  *v41 = v36;
  *(v41 + 1) = v36;
  *(v41 + 2) = v38;
  *(v41 + 3) = v40;
  sub_10056F228();
  sub_100435CC4();
  sub_100436038(&qword_1006F4E90, &type metadata accessor for IconOnlyLabelStyle);
  v42 = v86;
  v43 = v88;
  sub_10056FFB8();
  v44 = a1;
  (*(v89 + 8))(v17, v43);
  sub_10001036C(v24, &qword_1006F4E50);
  type metadata accessor for MaterialyButtonStyle();
  sub_100009DCC(&qword_1006F1100);
  sub_10056E808();
  sub_10056FB48();
  v45 = sub_10056FB38();
  v46 = v94;
  (*(*(v45 - 8) + 56))(v94, 1, 1, v45);
  v47 = sub_10056FBA8();
  sub_10001036C(v46, &qword_1006F2E90);
  KeyPath = swift_getKeyPath();
  (*(v90 + 32))(v28, v42, v91);
  v49 = v28;
  v50 = &v28[*(v87 + 44)];
  *v50 = KeyPath;
  v50[1] = v47;
  v94 = v44;
  LOBYTE(v91) = sub_10056F788() & 1;
  LODWORD(v91) = v91;
  sub_10056E808();
  sub_10056E808();
  sub_1005709E8();
  sub_10056EDF8();
  *(&v114[3] + 7) = *(&v114[10] + 8);
  *(&v114[4] + 7) = *(&v114[11] + 8);
  *(&v114[5] + 7) = *(&v114[12] + 8);
  *(&v114[6] + 7) = *(&v114[13] + 8);
  *(v114 + 7) = *(&v114[7] + 8);
  *(&v114[1] + 7) = *(&v114[8] + 8);
  *(&v114[2] + 7) = *(&v114[9] + 8);
  v51 = sub_1005709E8();
  v53 = v52;
  v54 = v113;
  sub_100019B40(v49, v113, &qword_1006F4E60);
  v55 = v54 + *(v93 + 36);
  v56 = v114[5];
  *(v55 + 65) = v114[4];
  *(v55 + 81) = v56;
  *(v55 + 97) = v114[6];
  v57 = v114[1];
  *(v55 + 1) = v114[0];
  *(v55 + 17) = v57;
  v58 = v114[3];
  *(v55 + 33) = v114[2];
  *v55 = v91;
  v59 = *(&v114[6] + 15);
  *(v55 + 49) = v58;
  *(v55 + 112) = v59;
  *(v55 + 120) = v51;
  *(v55 + 128) = v53;
  sub_10056E808();
  sub_10056E808();
  sub_1005709E8();
  sub_10056EDF8();
  v60 = v98;
  sub_100019B40(v113, v98, &qword_1006F4E68);
  v61 = (v60 + *(v95 + 36));
  v62 = *(&v114[19] + 8);
  v61[4] = *(&v114[18] + 8);
  v61[5] = v62;
  v61[6] = *(&v114[20] + 8);
  v63 = *(&v114[15] + 8);
  *v61 = *(&v114[14] + 8);
  v61[1] = v63;
  v64 = *(&v114[17] + 8);
  v61[2] = *(&v114[16] + 8);
  v61[3] = v64;
  v65 = sub_100570A38();
  LOBYTE(v51) = sub_10056F788();
  v66 = v96;
  sub_100019B40(v60, v96, &qword_1006F4E70);
  v67 = v66 + *(v97 + 36);
  *v67 = v65;
  *(v67 + 8) = v51 & 1;
  v68 = v99;
  sub_100019B40(v66, v99, &qword_1006F4E78);
  v69 = v103;
  sub_10056F778();
  v70 = swift_getKeyPath();
  v71 = v69 + *(v102 + 36);
  *v71 = v70;
  *(v71 + 8) = 1;
  v72 = v107;
  sub_10056F3B8();
  sub_100435F50();
  sub_100436038(&qword_1006F4EB0, &type metadata accessor for TitleOnlyLabelStyle);
  v73 = v106;
  v74 = v110;
  sub_10056FFB8();
  (*(v108 + 8))(v72, v74);
  sub_10001036C(v69, &qword_1006F4E38);
  v75 = sub_10056FC18();
  v76 = swift_getKeyPath();
  v77 = (v73 + *(v104 + 36));
  *v77 = v76;
  v77[1] = v75;
  if (sub_10056F788())
  {
    v78 = 0.8;
  }

  else
  {
    v78 = 1.0;
  }

  v79 = v101;
  sub_100019B40(v73, v101, &qword_1006F4E40);
  *(v79 + *(v105 + 36)) = v78;
  v80 = v109;
  sub_100019B40(v79, v109, &qword_1006F4E48);
  v81 = v100;
  sub_10000CC8C(v68, v100, &qword_1006F4E78);
  v82 = v111;
  sub_10000CC8C(v80, v111, &qword_1006F4E48);
  v83 = v112;
  sub_10000CC8C(v81, v112, &qword_1006F4E78);
  v84 = sub_100009DCC(&qword_1006F4EB8);
  sub_10000CC8C(v82, v83 + *(v84 + 48), &qword_1006F4E48);
  sub_10001036C(v80, &qword_1006F4E48);
  sub_10001036C(v68, &qword_1006F4E78);
  sub_10001036C(v82, &qword_1006F4E48);
  return sub_10001036C(v81, &qword_1006F4E78);
}

uint64_t sub_1004346D0()
{
  v1 = sub_10056F198();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_100573438();
    v6 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100434878()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100434908(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_100434A8C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_100434CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100009DCC(&qword_1006F1100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100434DAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F1100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100434E58()
{
  sub_100435A24(319, &qword_1006F2B20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100434F00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100434F00()
{
  if (!qword_1006F1188)
  {
    sub_1003BBB74();
    v0 = sub_10056E818();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F1188);
    }
  }
}

uint64_t sub_100434F5C()
{
  sub_10056E678();
  sub_10056EDE8();
  sub_10056ECA8();
  sub_10056E678();
  sub_100573C28();
  sub_10056ECF8();
  sub_10056ECA8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_10056E768();
  sub_10056ECA8();
  sub_10056ECA8();
  sub_100010324(&qword_1006F4A50);
  sub_100010BC0(&qword_1006F4A58, &qword_1006F4A50);
  sub_10056E678();
  sub_10056E678();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata3();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  swift_getWitnessTable();
  sub_10056EE08();
  sub_10056ECA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10056ECF8();
  return swift_getWitnessTable();
}

unint64_t sub_100435360()
{
  result = qword_1006F4C10;
  if (!qword_1006F4C10)
  {
    sub_100010324(qword_1006F4A70);
    sub_100010BC0(&qword_1006F4C18, &qword_1006F4A60);
    sub_100010BC0(&qword_1006F4C20, qword_1006F4C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4C10);
  }

  return result;
}

uint64_t sub_100435444()
{
  result = sub_100570A78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004354D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100570A78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100435594(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100570A78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100435638()
{
  type metadata accessor for MaterialyView.Style.Specs.FillColor();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke();
    if (v1 <= 0x3F)
    {
      sub_100435A24(319, qword_1006F4D30, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100435748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1004358C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100435A24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100435A74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100435AB0()
{
  type metadata accessor for UIOffset(319);
  if (v0 <= 0x3F)
  {
    sub_100570A78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100435B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100570A78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_100435C20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100570A78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100435CC4()
{
  result = qword_1006F4E80;
  if (!qword_1006F4E80)
  {
    sub_100010324(&qword_1006F4E50);
    sub_100436038(&qword_1006F4E88, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4E80);
  }

  return result;
}

uint64_t sub_100435D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin(a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_100433030(v21, v17, a2, v28, v25, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t sub_100435F50()
{
  result = qword_1006F4E98;
  if (!qword_1006F4E98)
  {
    sub_100010324(&qword_1006F4E38);
    sub_100436038(&qword_1006F4E88, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100010BC0(&qword_1006F4EA0, &qword_1006F4EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F4E98);
  }

  return result;
}

uint64_t sub_100436038(unint64_t *a1, void (*a2)(uint64_t))
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_10043A144(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  sub_100361E70(&v27, v50);
  sub_100361ECC(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  sub_100361E70(&v44, v26);
  sub_100361ECC(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&sub_100439BC0()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&sub_100439F48()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_10043A144(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  sub_100361E70(&v50, v85);
  sub_100361ECC(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  sub_100361E70(&v67, v85);
  sub_100361ECC(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = &v25[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v27 = *(v26 + 1);
  v84[0] = *v26;
  v84[1] = v27;
  v28 = *(v26 + 2);
  v29 = *(v26 + 3);
  v30 = *(v26 + 5);
  v84[4] = *(v26 + 4);
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  *(v26 + 4) = a1[4];
  *(v26 + 5) = v31;
  *(v26 + 2) = v33;
  *(v26 + 3) = v32;
  v34 = a1[1];
  *v26 = *a1;
  *(v26 + 1) = v34;
  v35 = v25;
  sub_100361E70(a1, v85);
  sub_100361ECC(v84);
  v36 = &v35[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v37 = *(v36 + 1);
  v85[0] = *v36;
  v85[1] = v37;
  v38 = *(v36 + 2);
  v39 = *(v36 + 3);
  v40 = *(v36 + 5);
  v85[4] = *(v36 + 4);
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  *(v36 + 4) = a2[4];
  *(v36 + 5) = v41;
  *(v36 + 2) = v43;
  *(v36 + 3) = v42;
  v44 = a2[1];
  *v36 = *a2;
  *(v36 + 1) = v44;
  sub_100361E70(a2, &v48);
  sub_100361ECC(v85);
  v45 = *&sub_100439BC0()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&sub_100439F48()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  sub_100361ECC(a2);
  sub_100361ECC(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043A144(a1, v13, type metadata accessor for NowPlaying.TrackMetadata);
  v14 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_10043A0E0(v13, v2 + v14);
  swift_endAccess();
  v15 = sub_100439BC0();
  sub_10043A144(a1 + *(v11 + 32), v9, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v17 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000CC8C(&v15[v17], v6, &qword_1006F4EF0);
  swift_beginAccess();
  sub_10043A1AC(v9, &v15[v17]);
  swift_endAccess();
  sub_10043E960(v6);

  sub_10001036C(v6, &qword_1006F4EF0);
  sub_10001036C(v9, &qword_1006F4EF0);
  v18 = sub_100439F48();
  sub_10000CC8C(a1 + *(v11 + 36), v9, &qword_1006F4EF0);
  v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000CC8C(&v18[v19], v6, &qword_1006F4EF0);
  swift_beginAccess();
  sub_10043A1AC(v9, &v18[v19]);
  swift_endAccess();
  sub_10043E960(v6);

  sub_10001036C(v6, &qword_1006F4EF0);
  return sub_10001036C(v9, &qword_1006F4EF0);
}

uint64_t sub_100436B14(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043A144(a1, v6, type metadata accessor for NowPlaying.TrackMetadata);
  v7 = *a2;
  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_10043A0E0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_10043A144(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  sub_100361E70(&v16, v14);
  sub_100361ECC(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id sub_100436E70()
{
  v1 = sub_100009DCC(&qword_1006F4F00);
  __chkstk_darwin(v1 - 8);
  v60 = &v58 - v2;
  v3 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v4)
  {
    v5 = *(*v4 + 424);
    v6 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v7 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);

    v5(&v75, v3, v6, v7);

    if (v75)
    {
      v8 = v76;
      v9 = sub_1004411AC(v75, v76);

      sub_100440528(v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_100573F58();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_100574178();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v83[4] = v14[5];
          v83[5] = v23;
          v83[2] = v21;
          v83[3] = v22;
          v83[0] = v19;
          v83[1] = v20;
          v24 = v14[2];
          v77 = v14[1];
          v78 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v81 = v14[5];
          v82 = v27;
          v79 = v25;
          v80 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_100361E70(&v69, v68);
          sub_100361E70(&v69, v68);
          sub_100361E70(v83, v68);
          sub_100361ECC(&v77);
          sub_10043DB9C(v83);
          sub_100361ECC(v83);
          sub_100361ECC(&v69);
          v66 = v11[24];
          v28 = *&v3[v65];
          if (v28)
          {
            v29 = v3;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v3 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001036C(v35, &qword_1006F4F00);
                v66 &= v37;
              }

              else
              {
                v3 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001036C(v39, &qword_1006F4F00);
              }
            }

            else
            {
              v3 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v3;
  v41 = sub_100439BC0();
  v42 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v81 = *(v41 + 5);
  v82 = v50;
  v79 = v48;
  v80 = v49;
  v77 = v46;
  v78 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_100361E70(v68, v67);
  sub_100361E70(v68, v67);
  sub_100361E70(&v77, v67);
  sub_100361ECC(&v69);
  sub_10043DB9C(&v77);
  sub_100361ECC(&v77);
  sub_100361ECC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_10043CA4C(v56, v67);

  return [v40 setNeedsLayout];
}

uint64_t (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1004374E0;
}

id sub_1004374F8()
{
  v1 = sub_100009DCC(&qword_1006F4F00);
  __chkstk_darwin(v1 - 8);
  v60 = &v58 - v2;
  v3 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v4)
  {
    v5 = *(*v4 + 424);
    v6 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v7 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);

    v5(v75, v3, v6, v7);

    if (v75[0])
    {
      v8 = v76;
      v9 = sub_1004412B8(v75[1], v76, v77);

      sub_100440528(v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_100573F58();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_100574178();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_100361E70(&v69, v68);
          sub_100361E70(&v69, v68);
          sub_100361E70(v84, v68);
          sub_100361ECC(&v78);
          sub_10043DB9C(v84);
          sub_100361ECC(v84);
          sub_100361ECC(&v69);
          v66 = v11[24];
          v28 = *&v3[v65];
          if (v28)
          {
            v29 = v3;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v3 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001036C(v35, &qword_1006F4F00);
                v66 &= v37;
              }

              else
              {
                v3 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001036C(v39, &qword_1006F4F00);
              }
            }

            else
            {
              v3 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v3;
  v41 = sub_100439F48();
  v42 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_100361E70(v68, v67);
  sub_100361E70(v68, v67);
  sub_100361E70(&v78, v67);
  sub_100361ECC(&v69);
  sub_10043DB9C(&v78);
  sub_100361ECC(&v78);
  sub_100361ECC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_10043CA4C(v56, v67);

  return [v40 setNeedsLayout];
}
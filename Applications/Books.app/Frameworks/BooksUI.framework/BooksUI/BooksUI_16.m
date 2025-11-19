uint64_t SynchronousNativeIntentDispatchAction.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2EF0(&qword_322D18, &qword_282088);
  sub_263C70();
  sub_264190();
  v8 = v12;
  v9 = v13;
  sub_2E18(v11, v12);
  (*(v9 + 8))(a1, v7, a2, a3, v8, v9);
  return sub_3080(v11);
}

void *initializeBufferWithCopyOfBuffer for SynchronousNativeIntentDispatchAction(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for SynchronousNativeIntentDispatchAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for SynchronousNativeIntentDispatchAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_19E4C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_322D20, &qword_2820D8);
  sub_261730();
  sub_19E53C();
  return swift_getWitnessTable();
}

unint64_t sub_19E53C()
{
  result = qword_322D28;
  if (!qword_322D28)
  {
    sub_2F9C(&qword_322D20, &qword_2820D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322D28);
  }

  return result;
}

uint64_t sub_19E5C4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_320378, &qword_28A310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19E62C()
{
  sub_3080((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_19E674()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_19E724()
{
  sub_262080();
  sub_1A1470(&qword_317430, &type metadata accessor for PinnedScrollableViews);
  return sub_265250();
}

uint64_t View.shelfGridColumnSpan(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1A056C(KeyPath, &v8, a2, a3);
}

uint64_t ColumnHStack.init(alignment:fillSinglePage:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ColumnHStack();
  v9 = a4 + v8[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + v8[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a4 + v8[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  v12 = a4 + v8[10];
  return a3();
}

uint64_t sub_19E8E0(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 44);
  result = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {
    v10 = *v8;

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v10, 0);
    (*(v4 + 8))(v7, v3);
    return v12[1];
  }

  return result;
}

double sub_19EA2C(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 48));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_264900();
  v11 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v9, 0);
  (*(v4 + 8))(v7, v3);
  return *&v12[1];
}

double sub_19EB84(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 52));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_264900();
  v11 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v9, 0);
  (*(v4 + 8))(v7, v3);
  return *&v12[1];
}

uint64_t ColumnHStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_262080();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 16);
  v7 = v55;
  v8 = sub_2F9C(&qword_322D30, &qword_2821F0);
  v54 = *(a1 + 24);
  v9 = v54;
  v10 = sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0);
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v68 = v10;
  sub_262100();
  v11 = sub_263090();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = sub_2610F0();
  v52 = *(v13 - 8);
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v51 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50 = &v48 - v17;
  v56 = v12;
  v57 = v11;
  v18 = sub_263260();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v48 = &v48 - v23;
  v24 = sub_261F90();
  v59 = *(v24 - 8);
  v60 = v24;
  v25 = *(v59 + 64);
  __chkstk_darwin(v24);
  v58 = &v48 - v26;
  v27 = *(a1 - 8);
  v28 = *(v27 + 64);
  v30 = __chkstk_darwin(v29);
  (*(v27 + 16))(&v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v30);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v33 = v54;
  *(v32 + 16) = v55;
  *(v32 + 24) = v33;
  (*(v27 + 32))(v32 + v31, &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  LODWORD(v27) = *(v2 + 8);
  v34 = *v2;
  sub_19EA2C(a1);
  if (v27 == 1)
  {
    sub_263250();
    v35 = swift_getWitnessTable();
    v36 = v48;
    sub_1609C(v21, v18, v35);
    v37 = *(v49 + 8);
    v37(v21, v18);
    sub_1609C(v36, v18, v35);
    swift_getWitnessTable();
    v38 = v58;
    sub_1D738(v21, v18);
    v37(v21, v18);
    v37(v36, v18);
  }

  else
  {
    sub_19E724();
    v39 = v51;
    sub_2610E0();
    v40 = swift_getWitnessTable();
    v41 = v50;
    sub_1609C(v39, v13, v40);
    v42 = *(v52 + 8);
    v42(v39, v13);
    sub_1609C(v41, v13, v40);
    swift_getWitnessTable();
    v38 = v58;
    sub_1D830(v39, v18, v13);
    v42(v39, v13);
    v42(v41, v13);
  }

  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v62 = v43;
  v63 = v44;
  v45 = v60;
  v46 = swift_getWitnessTable();
  sub_1609C(v38, v45, v46);
  (*(v59 + 8))(v38, v45);
}

uint64_t sub_19F3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColumnHStack();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = *(*(a2 - 8) + 64);
  v13 = __chkstk_darwin(v12);
  (*(v16 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + *(v15 + 40), a2, v13);
  (*(v7 + 16))(v10, a1, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v7 + 32))(v18 + v17, v10, v6);
  sub_2EF0(&qword_322D30, &qword_2821F0);
  sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0);
  return sub_263080();
}

uint64_t sub_19F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v60 = a5;
  v65 = a3;
  v66 = a4;
  v63 = type metadata accessor for ColumnHStack();
  v7 = *(v63 - 8);
  v62 = *(v7 + 64);
  __chkstk_darwin(v63);
  v64 = &v55 - v8;
  v59 = sub_2EF0(&qword_322DD8, &qword_282280);
  v58 = *(v59 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v55 - v12;
  v13 = sub_261DE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2621F0();
  v18 = *(v67 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v67);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v55 - v24;
  v73[0] = 0;
  v26 = a2;
  LODWORD(a2) = *(a2 + 8);
  v27 = (*(v14 + 16))(v17, a1, v13, v23);
  v61 = a2;
  if (a2)
  {
    __chkstk_darwin(v27);
    v28 = v66;
    *(&v55 - 4) = v65;
    *(&v55 - 3) = v28;
    v53 = v73;
    v54 = v26;
    sub_19FEBC(sub_1A14B8, (&v55 - 6), v25);
  }

  else
  {
    sub_1A1470(&qword_322DE0, &type metadata accessor for SubviewsCollection);
    sub_264820();
    sub_264860();
    v29 = sub_264850();
    sub_1D16F0(v29);
  }

  v30 = v26;
  v31 = v63;
  sub_1A0184(v63);
  v33 = v32;
  v56 = v18;
  v34 = *(v18 + 16);
  v55 = v25;
  v34(v21, v25, v67);
  v35 = v64;
  (*(v7 + 16))(v64, v30, v31);
  v36 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v37 = swift_allocObject();
  v38 = v66;
  *(v37 + 2) = v65;
  *(v37 + 3) = v38;
  *(v37 + 4) = v33;
  (*(v7 + 32))(&v37[v36], v35, v31);
  sub_263420();
  sub_2EF0(&qword_322DE8, &qword_282288);
  sub_1A1470(&qword_322DF0, &type metadata accessor for SubviewsCollectionSlice);
  sub_1A13EC();
  v53 = sub_1A1470(&qword_322E00, &type metadata accessor for Subview);
  sub_2633C0();
  if (!v61 || (v39 = v73[0], v39 >= sub_19E8E0(v31)))
  {
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v42 = 0;
    v41 = 0;
    LODWORD(v65) = 1;
    goto LABEL_9;
  }

  result = sub_19E8E0(v31);
  if (!__OFSUB__(result, v39))
  {
    sub_19EA2C(v31);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    LODWORD(v65) = 0;
    v66 = v73[1];
    v63 = v77;
    v64 = v75;
    v62 = v78;
    v71 = 0;
    v70 = v74;
    v69 = v76;
    v41 = v74;
    v42 = v76;
    v72 = 0;
LABEL_9:
    v43 = v58;
    v44 = *(v58 + 16);
    v45 = v57;
    v46 = v68;
    v47 = v59;
    v44(v57, v68, v59);
    v48 = v60;
    v44(v60, v45, v47);
    v49 = &v48[*(sub_2EF0(&qword_322E08, &unk_282290) + 48)];
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v49 + 2) = v66;
    *(v49 + 3) = v41;
    v50 = v63;
    *(v49 + 4) = v64;
    *(v49 + 5) = v42;
    v51 = v62;
    *(v49 + 6) = v50;
    *(v49 + 7) = v51;
    v49[64] = v65;
    v52 = *(v43 + 8);
    v52(v46, v47);
    (*(v56 + 8))(v55, v67);
    return (v52)(v45, v47);
  }

  __break(1u);
  return result;
}

uint64_t sub_19FD1C(uint64_t a1, void *a2)
{
  v3 = sub_2615F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263410();
  sub_1A14DC();
  sub_261600();
  result = (*(v4 + 8))(v7, v3);
  v9 = v13;
  v10 = *a2 + v13;
  if (__OFADD__(*a2, v13))
  {
    __break(1u);
  }

  else
  {
    v11 = type metadata accessor for ColumnHStack();
    result = sub_19E8E0(v11);
    if (result < v10)
    {
      return result >= v10;
    }

    if (!__OFADD__(*a2, v9))
    {
      *a2 += v9;
      return result >= v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19FE80()
{
  sub_1A14DC();
  sub_261600();
  return v1;
}

uint64_t sub_19FEBC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v19 = a3;
  v5 = sub_263430();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261DE0();
  sub_1A1470(&qword_322DE0, &type metadata accessor for SubviewsCollection);
  sub_264820();
  sub_264860();
  v11 = v26;
  if (v26 != v25[0])
  {
    v21 = v5;
    v12 = (v6 + 16);
    v20 = (v6 + 8);
    while (1)
    {
      v13 = v3;
      v14 = sub_2648A0();
      v15 = v21;
      (*v12)(v9);
      v14(v25, 0);
      v16 = v22(v9);
      if (v4)
      {
        (*(*(v10 - 8) + 8))(v13, v10);
        return (*v20)(v9, v15);
      }

      v17 = v16;
      (*v20)(v9, v15);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v3 = v13;
      sub_264870();
      sub_264860();
      v11 = v26;
      if (v26 == v25[0])
      {
        goto LABEL_9;
      }
    }

    v3 = v13;
  }

LABEL_9:
  result = sub_264820();
  if (v11 < v24)
  {
    __break(1u);
  }

  else
  {
    v25[0] = v24;
    v25[1] = v11;
    sub_264890();
    return (*(*(v10 - 8) + 8))(v3, v10);
  }

  return result;
}

void sub_1A0184(uint64_t a1)
{
  sub_19EB84(a1);
  sub_19EA2C(a1);
  sub_19E8E0(a1);
  sub_19EA2C(a1);
}

double sub_1A01E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2615F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263410();
  sub_1A14DC();
  sub_261600();
  (*(v5 + 8))(v8, v4);
  v9 = type metadata accessor for ColumnHStack();
  sub_19EA2C(v9);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v10 = sub_263430();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_2EF0(&qword_322DE8, &qword_282288) + 36));
  v12 = v14[1];
  *v11 = v14[0];
  v11[1] = v12;
  result = *&v15;
  v11[2] = v15;
  return result;
}

void *sub_1A0404@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, void *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t sub_1A04D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t sub_1A056C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *(*a1 + class metadata base offset for WritableKeyPath + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v18 - v9;
  v11 = sub_262400();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v18 - v15);
  (*(v7 + 16))(v10, a2, v6, v14);
  sub_1A1530(a1, v10, v16);

  sub_262E30();
  return (*(v12 + 8))(v16, v11);
}

void *sub_1A078C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, void *a4@<X8>)
{
  v7 = a1();
  result = a3(&v9, a2, a2, v7);
  *a4 = v9;
  return result;
}

uint64_t sub_1A0828(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v11 = *a1;
  v9 = a5();
  return a7(&v11, a6, a6, v9);
}

uint64_t sub_1A0940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ColumnHStack() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_19F3AC(v4, v1, v2);
}

void sub_1A0A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_60890(319, &qword_322DC0);
    if (v3 <= 0x3F)
    {
      sub_60890(319, &qword_316308);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A0AE8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 9) & ~v6) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))(&a1[v6 + 9] & ~v6);
    }

    v17 = a1[8];
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A0C50(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 9) & ~v9) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 > 0xFE)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 9] & ~v9;

        v17(v18);
      }

      else
      {
        a1[8] = a2 + 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1A0E34(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  sub_2F9C(&qword_322D30, &qword_2821F0);
  sub_8E38(qword_322D38, &qword_322D30, &qword_2821F0);
  sub_262100();
  sub_263090();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_263260();
  sub_2610F0();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A0FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_322DC8, &qword_285D50);
  sub_261730();
  sub_8E38(&qword_322DD0, &qword_322DC8, &qword_285D50);
  return swift_getWitnessTable();
}

uint64_t sub_1A1068()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ColumnHStack();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  (*(*(v2 - 8) + 8))(v6 + *(v3 + 40), v2);
  sub_3074(*(v6 + v4[13]), *(v6 + v4[13] + 8));
  sub_3074(*(v6 + v4[14]), *(v6 + v4[14] + 8));
  sub_3074(*(v6 + v4[15]), *(v6 + v4[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A118C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ColumnHStack() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_19F5E0(a1, v8, v5, v6, a2);
}

uint64_t sub_1A1228()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ColumnHStack();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));
  (*(*(v2 - 8) + 8))(v6 + *(v3 + 40), v2);
  sub_3074(*(v6 + v4[13]), *(v6 + v4[13] + 8));
  sub_3074(*(v6 + v4[14]), *(v6 + v4[14] + 8));
  sub_3074(*(v6 + v4[15]), *(v6 + v4[15] + 8));

  return swift_deallocObject();
}

double sub_1A134C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(*(type metadata accessor for ColumnHStack() - 8) + 80);
  v8 = v2[4];

  return sub_1A01E8(a1, a2);
}

unint64_t sub_1A13EC()
{
  result = qword_322DF8;
  if (!qword_322DF8)
  {
    sub_2F9C(&qword_322DE8, &qword_282288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322DF8);
  }

  return result;
}

uint64_t sub_1A1470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A14B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_19FD1C(a1, *(v1 + 32)) & 1;
}

unint64_t sub_1A14DC()
{
  result = qword_322E10;
  if (!qword_322E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322E10);
  }

  return result;
}

uint64_t sub_1A1530@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + class metadata base offset for WritableKeyPath + 8);
  v7 = sub_262400();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 28);

  return v8(v9, a2, v6);
}

uint64_t View.defaultBlendMode()()
{
  v0 = type metadata accessor for DefaultBlendModeModifier();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  sub_262E30();
  return sub_1A1A00(v3);
}

uint64_t type metadata accessor for DefaultBlendModeModifier()
{
  result = qword_322E70;
  if (!qword_322E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v25 - v12);
  v14 = sub_263640();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A1D1C(v3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v15 + 32);
    v19(v18, v13, v14);
  }

  else
  {
    v20 = *v13;
    sub_264900();
    v21 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    v19 = *(v15 + 32);
  }

  v22 = sub_2EF0(&qword_322EA8, &qword_282390);
  v19((a2 + *(v22 + 36)), v18, v14);
  v23 = sub_2EF0(&qword_322EB0, &unk_282398);
  return (*(*(v23 - 8) + 16))(a2, v26, v23);
}

uint64_t sub_1A1A00(uint64_t a1)
{
  v2 = type metadata accessor for DefaultBlendModeModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A1A5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DefaultBlendModeModifier();
  sub_261730();
  sub_1A1AC8();
  return swift_getWitnessTable();
}

unint64_t sub_1A1AC8()
{
  result = qword_3193A8;
  if (!qword_3193A8)
  {
    type metadata accessor for DefaultBlendModeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3193A8);
  }

  return result;
}

uint64_t sub_1A1B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317878, &unk_27E490);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A1BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317878, &unk_27E490);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A1C3C()
{
  sub_1A1CA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A1CA8()
{
  if (!qword_3178F8)
  {
    sub_263640();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3178F8);
    }
  }
}

uint64_t sub_1A1D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3179C0, &qword_269D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A1D90()
{
  result = qword_322EB8;
  if (!qword_322EB8)
  {
    sub_2F9C(&qword_322EA8, &qword_282390);
    sub_1A1E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EB8);
  }

  return result;
}

unint64_t sub_1A1E1C()
{
  result = qword_322EC0;
  if (!qword_322EC0)
  {
    sub_2F9C(&qword_322EB0, &unk_282398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EC0);
  }

  return result;
}

uint64_t ShelfFooterSeeAllComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ShelfFooterSeeAllComponentModel();
  sub_8198(v1 + *(v7 + 24), v6, &qword_315D40, &qword_288230);
  return sub_22148(v6, a1, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for ShelfFooterSeeAllComponentModel()
{
  result = qword_322F88;
  if (!qword_322F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for ShelfFooterSeeAllComponentModel();
  sub_8198(a1 + *(v8 + 24), v7, &qword_315D40, &qword_288230);
  return sub_22148(v7, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfFooterSeeAllComponentModel.init(id:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  v8 = a4 + 40;
  sub_34A0(v13, a4 + 40, &qword_315D38, &unk_266E30);
  v9 = *(type metadata accessor for ShelfFooterSeeAllComponentModel() + 24);
  v10 = sub_263E50();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 32) = *(a1 + 32);
  sub_34A0(a2, v8, &qword_315D38, &unk_266E30);
  return sub_34A0(a3, a4 + v9, &qword_315D48, &qword_266E40);
}

uint64_t sub_1A2200()
{
  v1 = 0x6575676573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1A2250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2278(uint64_t a1)
{
  v2 = sub_1A254C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A22B4(uint64_t a1)
{
  v2 = sub_1A254C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfFooterSeeAllComponentModel.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_322EC8, &qword_2823A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1A254C();
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
    v9 = *(type metadata accessor for ShelfFooterSeeAllComponentModel() + 24);
    v11[13] = 2;
    sub_2EF0(&qword_315D40, &qword_288230);
    sub_1A25A0();
    sub_264E90();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A254C()
{
  result = qword_322ED0;
  if (!qword_322ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322ED0);
  }

  return result;
}

unint64_t sub_1A25A0()
{
  result = qword_322EE8;
  if (!qword_322EE8)
  {
    sub_2F9C(&qword_315D40, &qword_288230);
    sub_1A265C(&qword_322EF0, &qword_322EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322EE8);
  }

  return result;
}

uint64_t sub_1A265C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_315D48, &qword_266E40);
    sub_1A36C0(a2, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShelfFooterSeeAllComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_2EF0(&qword_322F00, &qword_2823B0);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ShelfFooterSeeAllComponentModel();
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
  sub_1A254C();
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
    sub_1A2B88(v15, v27);
    sub_3080(v31);
    return sub_1A2BEC(v15);
  }
}

uint64_t sub_1A2B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterSeeAllComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2BEC(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterSeeAllComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_8198(v2 + *(a1 + 24), &v10 - v7, &qword_315D40, &qword_288230);
  return sub_22148(v8, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfFooterSeeAllComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_322F08, &qword_2823B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - v7);
  sub_8198(a1 + 40, &v21, &qword_315D30, &qword_266E28);
  if (v22)
  {
    sub_F7CC(&v21, v23);
    v9 = type metadata accessor for SeeAllView();
    sub_30CC(v23, v8 + *(v9 + 24));
    *v8 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v10 = *(v9 + 20);
    *(v8 + v10) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v10) = sub_262560();
    sub_2610C0();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_3080(v23);
    v19 = v8 + *(v4 + 36);
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    v19[40] = 0;
    sub_22148(v8, a2, &qword_322F08, &qword_2823B8);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_8E80(&v21, &qword_315D38, &unk_266E30);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_1A2F7C()
{
  sub_1A31BC();

  return sub_260B30();
}

uint64_t sub_1A2FC8(uint64_t a1)
{
  result = sub_1A36C0(&qword_322F10, type metadata accessor for ShelfFooterSeeAllComponentModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A306C()
{
  result = qword_322F20;
  if (!qword_322F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322F20);
  }

  return result;
}

unint64_t sub_1A31BC()
{
  result = qword_322F28;
  if (!qword_322F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322F28);
  }

  return result;
}

double sub_1A3210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1A3268@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 40, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1A3350(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1A3420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_1A34D0()
{
  sub_9CAC();
  if (v0 <= 0x3F)
  {
    sub_9D28();
    if (v1 <= 0x3F)
    {
      sub_9DD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A3580()
{
  result = qword_322FC8;
  if (!qword_322FC8)
  {
    sub_2F9C(&qword_322FD0, &qword_282600);
    sub_1A3604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FC8);
  }

  return result;
}

unint64_t sub_1A3604()
{
  result = qword_322FD8;
  if (!qword_322FD8)
  {
    sub_2F9C(&qword_322F08, &qword_2823B8);
    sub_1A36C0(&qword_322FE0, type metadata accessor for SeeAllView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FD8);
  }

  return result;
}

uint64_t sub_1A36C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A371C()
{
  result = qword_322FE8;
  if (!qword_322FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FE8);
  }

  return result;
}

unint64_t sub_1A3774()
{
  result = qword_322FF0;
  if (!qword_322FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FF0);
  }

  return result;
}

unint64_t sub_1A37CC()
{
  result = qword_322FF8;
  if (!qword_322FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_322FF8);
  }

  return result;
}

uint64_t sub_1A3820(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PressedOverlayButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_2624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31E010, &qword_282730);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v14 - v11;
  (*(v3 + 16))(v6, a1, v2, v10);
  sub_263240();
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730);
  sub_1A3B0C();
  sub_262A60();
  return (*(v8 + 8))(v12, v7);
}

unint64_t sub_1A3B0C()
{
  result = qword_323008;
  if (!qword_323008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323008);
  }

  return result;
}

uint64_t sub_1A3B8C()
{
  sub_2F9C(&qword_31E010, &qword_282730);
  sub_8E38(&qword_31E018, &qword_31E010, &qword_282730);
  sub_1A3B0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A3C64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2622A0();
  if (sub_2622B0())
  {
    if (qword_315A98 != -1)
    {
      swift_once();
    }

    v7 = qword_323000;
    v8 = sub_262EE0();
  }

  else
  {
    v8 = sub_262FA0();
  }

  v9 = v8;
  v10 = sub_262500();
  (*(v3 + 32))(a1, v6, v2);
  result = sub_2EF0(&qword_323010, &qword_2827E8);
  v12 = a1 + *(result + 36);
  *v12 = v9;
  *(v12 + 8) = v10;
  return result;
}

uint64_t sub_1A3DB8()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_1A3E80;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1A3F1C;
  v4[3] = &unk_30D9F0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_323000 = v2;
  return result;
}

id sub_1A3E80(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == &dword_0 + 2)
  {
    v3 = 0.921568627;
    v4 = 0.960784314;
    v5 = 0.12;
  }

  else
  {
    v3 = 0.0156862745;
    v4 = 0.0588235294;
    v5 = 0.15;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:v5];
}

id sub_1A3F1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_1A3F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A3FA0()
{
  result = qword_323018;
  if (!qword_323018)
  {
    sub_2F9C(&qword_323010, &qword_2827E8);
    sub_9A100();
    sub_8E38(&qword_323020, &qword_323028, &unk_2827F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323018);
  }

  return result;
}

uint64_t IntentResult.dispatchState.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_264A60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_260AD0();
  v9 = 1;
  LODWORD(v3) = (*(*(v3 - 8) + 48))(v8, 1, v3);
  result = (*(v5 + 8))(v8, v4);
  if (v3 == 1)
  {
    result = sub_260AE0();
    if (result)
    {

      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1A419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A43A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageIntentDispatchState.getter()
{
  sub_3C60();

  return sub_261CB0();
}

uint64_t EnvironmentValues.pageIntentDispatchState.setter(char *a1)
{
  v2 = *a1;
  sub_3C60();
  return sub_261CC0();
}

uint64_t (*EnvironmentValues.pageIntentDispatchState.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_3C60();
  sub_261CB0();
  return sub_1A42E8;
}

uint64_t sub_1A42E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_261CC0();
}

unint64_t sub_1A4324()
{
  result = qword_323030;
  if (!qword_323030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323030);
  }

  return result;
}

unint64_t sub_1A43A0()
{
  result = qword_323038;
  if (!qword_323038)
  {
    sub_2F9C(qword_323040, &qword_2828E8);
    sub_1A4324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323038);
  }

  return result;
}

unint64_t MetricsFieldsConvertible.metricsFields.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_25FE70();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_25FE60();
  v6 = *(a2 + 8);
  v14 = sub_25FE50();
  v16 = v15;

  v17 = objc_opt_self();
  isa = sub_260070().super.isa;
  v24[0] = 0;
  v19 = [v17 JSONObjectWithData:isa options:0 error:v24];

  if (v19)
  {
    v20 = v24[0];
    sub_264AC0();
    swift_unknownObjectRelease();
    sub_2EF0(&qword_320CD0, &unk_27D9A0);
    if (swift_dynamicCast())
    {
      v13 = sub_1A4738(v23);
    }

    else
    {
      v13 = sub_E678(_swiftEmptyArrayStorage);
    }

    sub_16A088(v14, v16);
  }

  else
  {
    v21 = v24[0];
    sub_25FFB0();

    swift_willThrow();
    sub_16A088(v14, v16);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v7 = sub_260D50();
    sub_B080(v7, qword_315F70);
    swift_errorRetain();
    v8 = sub_260D30();
    v9 = sub_2648F0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Failed to convert metrics model into MetricsFields: %@", v10, 0xCu);
      sub_8E80(v11, &qword_316450, &qword_2681E0);
    }

    v13 = sub_E678(_swiftEmptyArrayStorage);
  }

  return v13;
}

uint64_t sub_1A4738(uint64_t a1)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v40 = &_swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A52CC(*(a1 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_1A52CC(&v36, &v29);
    if (v30)
    {
      sub_FBD8(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_FBD8(v34, v31);
      v17 = v2[2];
      if (v2[3] <= v17)
      {

        sub_14D5B4(v17 + 1, 1);
        v2 = v40;
      }

      else
      {
      }

      v18 = v32;
      v19 = v2[5];
      sub_265050();
      sub_264500();
      result = sub_265080();
      v20 = (v2 + 8);
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~v2[(v22 >> 6) + 8]) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *&v20[8 * v23];
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~v2[(v22 >> 6) + 8])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(v2[6] + 16 * v24) = v18;
      sub_FBD8(v31, (v2[7] + 32 * v24));
      ++v2[2];
      v10 = v33;
    }

    else
    {

      sub_8E80(&v35, &qword_323148, &qword_2829F0);
      v10 = &v29;
    }

    result = sub_8E80(v10, &qword_316200, &qword_267FD0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t NotEncoded<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_30CC(v11, v14);
  sub_2647C0();
  result = sub_3080(a1);
  if (!v3)
  {
    return (*(v7 + 32))(a3, v10, a2);
  }

  return result;
}

uint64_t NotDecoded.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_264A60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t NotDecoded.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_264A60();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t NotDecoded.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_264A60();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t NotDecoded.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_3080(a1);
  v5 = *(*(a2 - 8) + 56);
  v5(a3, 1, 1, a2);
  v6 = sub_264A60();
  (*(*(v6 - 8) + 8))(a3, v6);
  return (v5)(a3, 1, 1, a2);
}

uint64_t sub_1A4DFC(void *a1)
{
  v1 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_265130();
  sub_17450(v3, v3[3]);
  sub_264F60();
  return sub_3080(v3);
}

uint64_t sub_1A4E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_264A60();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1A5088(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
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

  else if (v5)
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1A52CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316200, &qword_267FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MoreButtonView.init(assetInfo:contextActionMenuView:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MoreButtonView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  result = sub_F7CC(a1, a4 + v8[6]);
  v11 = (a4 + v8[7]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t type metadata accessor for MoreButtonView()
{
  result = qword_3231D8;
  if (!qword_3231D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5460@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A688C(v12, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A5644@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for MoreButtonView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A688C(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MoreButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for SizeConstants(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261FA0();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261760();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_323150, &qword_282A48);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v40 = sub_2EF0(&qword_323158, &qword_282A50);
  v41 = *(v40 - 8);
  v18 = *(v41 + 64);
  __chkstk_darwin(v40);
  v20 = &v38 - v19;
  v47 = v1;
  sub_2EF0(&qword_323160, &qword_282A58);
  sub_8E38(&qword_323168, &qword_323160, &qword_282A58);
  sub_263230();
  sub_261750();
  v21 = sub_8E38(&qword_323170, &qword_323150, &qword_282A48);
  v22 = sub_1A5E08(&qword_319400, &type metadata accessor for PlainButtonStyle);
  sub_262A50();
  (*(v39 + 8))(v12, v9);
  (*(v14 + 8))(v17, v13);
  v23 = v42;
  sub_2618C0();
  v48 = v13;
  v49 = v9;
  v50 = v21;
  v51 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1A5E08(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v24 = v45;
  v25 = v40;
  v26 = v43;
  sub_262AA0();
  (*(v44 + 8))(v23, v26);
  (*(v41 + 8))(v20, v25);
  v27 = v46;
  sub_1A5460(v46);
  sub_1A6824(v27, type metadata accessor for SizeConstants);
  LOBYTE(v27) = sub_262500();
  sub_2610C0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = sub_2EF0(&qword_323178, &qword_282A60);
  v37 = v24 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_1A5D64()
{
  sub_2EF0(&qword_323220, &qword_282AD0);
  sub_1A66E0();
  return sub_262750();
}

uint64_t sub_1A5E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5E6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MoreButtonView();
  v5 = a1 + *(v4 + 28);
  v6 = *(v5 + 8);
  (*v5)(v16, a1 + *(v4 + 24));
  v7 = v17;
  v8 = sub_2E18(v16, v17);
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  (*(v12 + 16))(&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = sub_263310();
  result = sub_3080(v16);
  *a2 = v13;
  return result;
}

uint64_t sub_1A5F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = sub_2630B0();
  sub_262650();
  sub_262A20();

  sub_1A5644(v9);
  v10 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_1A6824(v9, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(sub_2EF0(&qword_3217D0, &qword_27F0D0) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  sub_1A5460(v5);
  sub_1A6824(v5, type metadata accessor for SizeConstants);
  LOBYTE(v10) = sub_262500();
  sub_2610C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(sub_2EF0(&qword_323238, &qword_282AD8) + 36);
  *v21 = v10;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  result = sub_2EF0(&qword_323220, &qword_282AD0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1A61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A62E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_316F68, &unk_269C50);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1A6408()
{
  sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v0 <= 0x3F)
  {
    sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      sub_44744();
      if (v2 <= 0x3F)
      {
        sub_16D28();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A64F8()
{
  result = qword_323218;
  if (!qword_323218)
  {
    sub_2F9C(&qword_323178, &qword_282A60);
    sub_2F9C(&qword_323158, &qword_282A50);
    sub_261FA0();
    sub_2F9C(&qword_323150, &qword_282A48);
    sub_261760();
    sub_8E38(&qword_323170, &qword_323150, &qword_282A48);
    sub_1A5E08(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1A5E08(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323218);
  }

  return result;
}

unint64_t sub_1A66E0()
{
  result = qword_323228;
  if (!qword_323228)
  {
    sub_2F9C(&qword_323220, &qword_282AD0);
    sub_1A6798();
    sub_8E38(&qword_323240, &qword_323248, &qword_282AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323228);
  }

  return result;
}

unint64_t sub_1A6798()
{
  result = qword_323230;
  if (!qword_323230)
  {
    sub_2F9C(&qword_323238, &qword_282AD8);
    sub_17CB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323230);
  }

  return result;
}

uint64_t sub_1A6824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A688C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1A68F4(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v43 = _swiftEmptyArrayStorage;
    sub_2DB24(0, v4, 0);
    v6 = -1 << *(v5 + 32);
    v32 = v5 + 56;
    v33 = _swiftEmptyArrayStorage;
    v7 = sub_264B20();
    if (v7 < 0 || (v8 = v7, v7 >= 1 << *(v5 + 32)))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v29 = v5 + 64;
      v30 = v4;
      v9 = *(v5 + 36);
      v10 = 1;
      while (1)
      {
        v11 = v8 >> 6;
        if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          break;
        }

        v12 = v5;
        v13 = (*(v5 + 48) + 16 * v8);
        v14 = v13[1];
        v40[0] = *v13;
        v40[1] = v14;

        a1(v41, v40);
        if (v3)
        {
          goto LABEL_30;
        }

        v39 = v42;
        v37 = v41[3];
        v38 = v41[4];
        v35 = v41[1];
        v36 = v41[2];
        v34 = v41[0];
        v15 = v33;
        v43 = v33;
        v17 = v33[2];
        v16 = v33[3];
        if (v17 >= v16 >> 1)
        {
          sub_2DB24((v16 > 1), v17 + 1, 1);
          v15 = v43;
        }

        v15[2] = v17 + 1;
        v18 = &v15[11 * v17];
        *(v18 + 2) = v34;
        *(v18 + 3) = v35;
        *(v18 + 56) = v39;
        *(v18 + 5) = v37;
        *(v18 + 6) = v38;
        *(v18 + 4) = v36;
        v19 = 1 << *(v12 + 32);
        if (v8 >= v19)
        {
          goto LABEL_27;
        }

        v20 = *(v32 + 8 * v11);
        if ((v20 & (1 << v8)) == 0)
        {
          goto LABEL_28;
        }

        v5 = v12;
        if (v9 != *(v12 + 36))
        {
          goto LABEL_29;
        }

        v21 = v20 & (-2 << (v8 & 0x3F));
        v33 = v15;
        if (v21)
        {
          v8 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v22 = v30;
        }

        else
        {
          v23 = v11 << 6;
          v24 = v11 + 1;
          v22 = v30;
          v25 = (v29 + 8 * v11);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1AA7A0(v8, v9, 0);
              v8 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          sub_1AA7A0(v8, v9, 0);
          v8 = v19;
        }

LABEL_19:
        v3 = 0;
        if (v10 == v22)
        {
          return v33;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          v9 = *(v5 + 36);
          ++v10;
          if (v8 < 1 << *(v5 + 32))
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1A6BC4(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = a3;
    v39 = _swiftEmptyArrayStorage;
    sub_2DB44(0, v4, 0);
    v35 = _swiftEmptyArrayStorage;
    v7 = v6 + 56;
    v8 = -1 << *(v6 + 32);
    v9 = sub_264B20();
    v10 = 0;
    v31 = v6 + 64;
    v32 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v34 = v10;
      v13 = *(v6 + 36);
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v9);
      v16 = v15[1];
      v36[0] = *v15;
      v36[1] = v16;

      a1(v37, v36);
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v35;
      v39 = v35;
      v19 = v35[2];
      v18 = v35[3];
      if (v19 >= v18 >> 1)
      {
        sub_2DB44((v18 > 1), v19 + 1, 1);
        v17 = v39;
      }

      v17[2] = v19 + 1;
      v35 = v17;
      v20 = &v17[7 * v19];
      v21 = v37[0];
      v22 = v37[1];
      v23 = v37[2];
      v20[10] = v38;
      *(v20 + 3) = v22;
      *(v20 + 4) = v23;
      *(v20 + 2) = v21;
      v11 = 1 << *(v14 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v24 = *(v7 + 8 * v12);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v14;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v31 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1AA7A0(v9, v13, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1AA7A0(v9, v13, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v34 + 1;
      v9 = v11;
      if (v34 + 1 == v32)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1A6E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v52 = _swiftEmptyArrayStorage;
  sub_2DAA4(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_264B20();
  if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v53 = *(a1 + 36);
    v32 = v1;
    v8 = 1;
    while (1)
    {
      v9 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v10 = (*(a1 + 48) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = (*(a1 + 56) + 72 * v7);
      v40[0] = *v13;
      v15 = v13[2];
      v14 = v13[3];
      v16 = v13[1];
      v41 = *(v13 + 32);
      v40[2] = v15;
      v40[3] = v14;
      v40[1] = v16;
      v17 = *v13;
      v18 = v13[1];
      v19 = v13[2];
      v20 = v13[3];
      v39 = *(v13 + 32);
      v37 = v19;
      v38 = v20;
      v35 = v17;
      v36 = v18;
      memmove(__dst, v13, 0x42uLL);
      v33 = v12;
      v44[0] = v12;
      v44[1] = v11;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v45 = v35;
      v46 = v36;
      swift_bridgeObjectRetain_n();
      sub_14FF5C(v40, v34);
      sub_14FF5C(__dst, v34);
      sub_8E80(v44, &qword_3232C8, &qword_282E10);
      v50[2] = __dst[2];
      v50[3] = __dst[3];
      v51 = v43;
      v50[0] = __dst[0];
      v50[1] = __dst[1];
      result = sub_1AA6F4(v50);
      v52 = v2;
      v22 = v2[2];
      v21 = v2[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_2DAA4((v21 > 1), v22 + 1, 1);
        v2 = v52;
      }

      v2[2] = v22 + 1;
      v23 = &v2[2 * v22];
      v23[4] = v33;
      v23[5] = v11;
      v24 = 1 << *(a1 + 32);
      if (v7 >= v24)
      {
        goto LABEL_27;
      }

      v4 = a1 + 64;
      v25 = *(a1 + 64 + 8 * v9);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v7 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v9 << 6;
        v28 = v9 + 1;
        v29 = (a1 + 72 + 8 * v9);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1AA7A0(v7, v53, 0);
            v7 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_1AA7A0(v7, v53, 0);
        v7 = v24;
      }

LABEL_19:
      if (v8 == v32)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        ++v8;
        if (v7 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1A7174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_316B98, &unk_275840);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v7;
  v16 = *(v1 + 32);
  result = sub_EC9BC();
  v9 = *(*&v15[0] + 16);
  if (result == v9)
  {
    v10 = sub_260620();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }

  else if (result >= v9)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v1 + 40);
    v13 = *(v1 + 48);
    (*(&v15[0] + 1))(*&v15[0] + 40 * result + 32);
    v12(v6);
    sub_8E80(v6, &qword_316B98, &unk_275840);
    v14 = sub_260620();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  return result;
}

uint64_t sub_1A731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_264B20();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v6 = sub_1AA154(&v13, result, *(a1 + 36), 0, a1);
    v7 = v15;
    v18[2] = v15;
    v8 = v16;
    v18[3] = v16;
    v26 = v16;
    v25 = v15;
    v9 = v14;
    v10 = v13;
    v18[0] = v13;
    v18[1] = v14;
    v24 = v14;
    v23 = v13;
    *&v12 = v6;
    *(&v12 + 1) = v11;
    v19 = v17;
    v27 = v17;
    *&v20[0] = v6;
    *(&v20[0] + 1) = v11;
    v21 = v17;
    v20[1] = v13;
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v16;
    *(a2 + 80) = v17;
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
    *a2 = v20[0];
    v22[0] = v6;
    v22[1] = v11;

    sub_14FF5C(v18, v28);
    sub_8198(v20, v28, &qword_3232C8, &qword_282E10);
    sub_8E80(v22, &qword_3232C8, &qword_282E10);
    v28[2] = v14;
    v28[3] = v15;
    v28[4] = v16;
    v29 = v17;
    v28[0] = v12;
    v28[1] = v13;
    return sub_8E80(v28, &qword_3232C8, &qword_282E10);
  }

  return result;
}

uint64_t sub_1A74B0@<X0>(uint64_t a1@<X8>)
{
  sub_261570();
  sub_1AA748();
  sub_264820();
  sub_264860();
  if (v9[4] == v9[0])
  {
    v2 = sub_261490();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2648A0();
    v6 = v5;
    v7 = sub_261490();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

double EnvironmentValues.libraryAssetState.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1A807C();
  sub_261CB0();
  v2 = *(v6[0] + 16);

  if (v2 == 1 && (sub_261CB0(), sub_1A731C(v6[0], v6), , v6[1]))
  {

    v3 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v3;
    *(a1 + 64) = v11;
    v4 = v8;
    *a1 = v7;
    *(a1 + 16) = v4;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v4 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v4;
}

uint64_t View.observeLibraryAssetState(for:libraryAssetStateObserverProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[0] = a3;
  v24[3] = a6;
  v24[2] = sub_261730();
  v10 = sub_261F90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v24 - v16;
  sub_2EF0(&qword_317240, &qword_269790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v19 = sub_127F84(inited);
  swift_setDeallocating();
  sub_12801C(inited + 32);
  View.observeLibraryAssetStates(for:libraryAssetStateObserverProvider:)(v19, v24[0], a4, a5, v14);

  v20 = sub_126060();
  v24[6] = a5;
  v24[7] = v20;
  v24[4] = swift_getWitnessTable();
  v24[5] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v14, v10, WitnessTable);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_1609C(v17, v10, WitnessTable);
  return (v22)(v17, v10);
}

uint64_t LibraryAssetStateRequiring.assetIDsToObserveState.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v12[0] = v2;
  v12[1] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_E9098(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_E9098((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_8E80(v12, &qword_316DD0, &qword_2692C0);
  v10 = sub_127F84(v6);

  return v10;
}

uint64_t sub_1A7A30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  sub_2EF0(&qword_3232D0, &qword_282E18);
  sub_2631D0();
  v6 = v16[0];
  v7 = v16[1];
  KeyPath = swift_getKeyPath();
  v14[2] = a2;

  v9 = sub_1A68F4(sub_1AA7AC, v14, a1);

  if (v9[2])
  {
    sub_2EF0(&qword_3160F0, &unk_267EE0);
    v10 = sub_264D10();
  }

  else
  {
    v10 = &_swiftEmptyDictionarySingleton;
  }

  v16[0] = v10;

  sub_1A94D0(v11, 1, v16);

  v12 = v16[0];
  *a3 = a1;
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = KeyPath;
  *(a3 + 80) = v15;
  return sub_3080(a2);
}

uint64_t sub_1A7B98@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a2[3];
  v6 = a2[4];
  sub_2E18(a2, v5);
  v7 = *(v6 + 16);

  return v7(v3, v4, v5, v6);
}

uint64_t sub_1A7C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3232A0, &qword_282DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  KeyPath = swift_getKeyPath();
  v54 = *(v2 + 24);
  sub_2EF0(&qword_3232A8, &unk_282DD0);
  sub_2631E0();
  v11 = v60[0];
  if (v60[0])
  {
    v42 = KeyPath;
    v43 = v6;
    v44 = a1;
    v45 = v2;
    v46 = v9;
    v47 = a2;
    sub_2EF0(&qword_3160F0, &unk_267EE0);
    result = sub_264CF0();
    v13 = result;
    v14 = 0;
    v15 = v11 + 64;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v49 = result + 64;
    v50 = result;
    v48 = v11;
    if (v18)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v18));
        v51 = (v18 - 1) & v18;
LABEL_11:
        v23 = v20 | (v14 << 6);
        v52 = 16 * v23;
        v24 = *(v11 + 56);
        v25 = (*(v11 + 48) + 16 * v23);
        v26 = v25[1];
        v53 = *v25;
        sub_30CC(v24 + 40 * v23, v60);
        v28 = v61;
        v27 = v62;
        sub_2E18(v60, v61);
        v29 = *(v27 + 16);

        v29(&v54, v28, v27);
        result = sub_3080(v60);
        *(v49 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v13 = v50;
        v30 = (*(v50 + 48) + v52);
        *v30 = v53;
        v30[1] = v26;
        v31 = *(v13 + 56) + 72 * v23;
        *v31 = v54;
        *(v31 + 64) = v58;
        *(v31 + 48) = v57;
        *(v31 + 32) = v56;
        *(v31 + 16) = v55;
        v32 = *(v13 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          break;
        }

        *(v13 + 16) = v34;
        v11 = v48;
        v18 = v51;
        if (!v51)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v21 = v14;
      while (1)
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v14 >= v19)
        {

          a2 = v47;
          v9 = v46;
          v3 = v45;
          a1 = v44;
          v6 = v43;
          KeyPath = v42;
          goto LABEL_16;
        }

        v22 = *(v15 + 8 * v14);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v51 = (v22 - 1) & v22;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v35 = *(v2 + 16);
    *&v54 = *(v2 + 8);
    *(&v54 + 1) = v35;
    sub_2EF0(&qword_3232C0, &unk_282DF0);
    sub_2631E0();
    v13 = v60[0];
LABEL_16:
    v36 = sub_2EF0(&qword_3232B0, &qword_282DE0);
    (*(*(v36 - 8) + 16))(v9, a1, v36);
    v37 = &v9[*(v6 + 36)];
    *v37 = KeyPath;
    v37[1] = v13;
    sub_1AA5B0(v3, &v54);
    v38 = swift_allocObject();
    v39 = v57;
    *(v38 + 48) = v56;
    *(v38 + 64) = v39;
    *(v38 + 80) = v58;
    *(v38 + 96) = v59;
    v40 = v55;
    *(v38 + 16) = v54;
    *(v38 + 32) = v40;
    sub_1AA664(v9, a2);
    result = sub_2EF0(&qword_3232B8, &qword_282DE8);
    v41 = (a2 + *(result + 36));
    *v41 = sub_1AA65C;
    v41[1] = v38;
    v41[2] = 0;
    v41[3] = 0;
  }

  return result;
}

uint64_t EnvironmentValues.libraryAssetStates.getter()
{
  sub_1A807C();
  sub_261CB0();
  return v1;
}

unint64_t sub_1A807C()
{
  result = qword_323278;
  if (!qword_323278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323278);
  }

  return result;
}

uint64_t sub_1A80D0@<X0>(void *a1@<X8>)
{
  sub_1A807C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A8120(uint64_t *a1)
{
  v2 = *a1;
  sub_1A807C();

  return sub_261CC0();
}

uint64_t sub_1A81BC(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v12 = v2;
  v13 = v3;
  sub_2EF0(&qword_3232A8, &unk_282DD0);
  sub_2631E0();
  if (v11)
  {
  }

  v5 = *a1;
  __chkstk_darwin(0);
  v10[2] = a1;
  if (sub_1A6BC4(sub_1AA6D4, v10, v6)[2])
  {
    sub_2EF0(&qword_320390, &qword_27C478);
    v7 = sub_264D10();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v12 = v7;

  sub_1A9820(v8, 1, &v12);

  v9 = v12;
  v12 = v2;
  v13 = v3;
  v11 = v9;
  return sub_2631F0();
}

uint64_t sub_1A8318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;

  sub_40EF0(v21);
  v6 = v22;
  v7 = v23;
  sub_2E18(v21, v22);
  v8 = *(a2 + 16);
  *&v29[0] = *(a2 + 8);
  *(&v29[0] + 1) = v8;
  sub_2EF0(&qword_3232C0, &unk_282DF0);
  result = sub_2631E0();
  v10 = v24;
  if (*(v24 + 16))
  {
    result = sub_D410(v4, v5);
    if (v11)
    {
      v12 = *(v10 + 56) + 72 * result;
      v24 = *v12;
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 64);
      v25 = *(v12 + 16);
      v26 = v14;
      v28 = v15;
      v27 = v13;
      sub_14FF5C(&v24, v29);

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v16 = v24;
      v17 = v25;
      (*(v7 + 8))(v4, v5, &v16, v6, v7);
      v29[2] = v18;
      v29[3] = v19;
      v30 = v20;
      v29[0] = v16;
      v29[1] = v17;
      sub_1AA6F4(v29);
      return sub_3080(v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t View.observeLibraryAssetStates(for:libraryAssetStateObserverProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v51 = a2;
  v55 = a5;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_261730();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v54 = sub_261F90();
  v53 = *(v54 - 8);
  v21 = *(v53 + 64);
  __chkstk_darwin(v54);
  v56 = &v49 - v22;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 != 1)
  {
    goto LABEL_5;
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v49 = v13;
  v24 = v20;
  v25 = v5;
  v26 = v7;
  v27 = v23;
  v28 = sub_264420();
  v50 = a3;
  v29 = v28;
  v30 = [v27 integerForKey:v28];

  v31 = v25;
  v20 = v24;
  v32 = v10;
  v33 = v49;

  v34 = v50;
  if ((v30 & 0x20) != 0)
  {
    v40 = v57;
    sub_1609C(v31, v50, v57);
    sub_1609C(v33, v34, v40);
    v41 = sub_126060();
    v58 = v40;
    v59 = v41;
    swift_getWitnessTable();
    sub_1D830(v32, v14, v34);
    v42 = *(v26 + 8);
    v42(v32, v34);
    v42(v33, v34);
  }

  else
  {
LABEL_5:
    sub_30CC(v51, v66);

    sub_1A7A30(v35, v66, v67);
    v36 = v57;
    sub_262E30();
    sub_1AA224(v67);
    v37 = sub_126060();
    v64 = v36;
    v65 = v37;
    WitnessTable = swift_getWitnessTable();
    sub_1609C(v17, v14, WitnessTable);
    v39 = *(v52 + 8);
    v39(v17, v14);
    sub_1609C(v20, v14, WitnessTable);
    sub_1D738(v17, v14);
    v39(v17, v14);
    v39(v20, v14);
  }

  v43 = sub_126060();
  v44 = v57;
  v62 = v57;
  v63 = v43;
  v60 = swift_getWitnessTable();
  v61 = v44;
  v45 = v54;
  v46 = swift_getWitnessTable();
  v47 = v56;
  sub_1609C(v56, v45, v46);
  return (*(v53 + 8))(v47, v45);
}

{
  v41 = a2;
  v44 = *(a3 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(a1);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  v15 = sub_261730();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  __chkstk_darwin(v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v42 = v40 - v20;
  v21 = sub_261F90();
  v45 = *(v21 - 8);
  v22 = *(v45 + 64);
  __chkstk_darwin(v21);
  v24 = v40 - v23;
  sub_8198(a1, &v50, &qword_323280, &unk_282B20);
  if (!v51)
  {
    sub_8E80(&v50, &qword_323280, &unk_282B20);
LABEL_9:
    sub_1609C(v46, a3, a4);
    sub_1609C(v14, a3, a4);
    v35 = sub_126060();
    v56 = a4;
    v57 = v35;
    swift_getWitnessTable();
    sub_1D830(v11, v15, a3);
    v36 = *(v44 + 8);
    v36(v11, a3);
    v36(v14, a3);
    goto LABEL_10;
  }

  v40[0] = v21;
  v40[1] = a5;
  sub_F7CC(&v50, &v58);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1)
  {
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = sub_264420();
    v27 = [v25 integerForKey:v26];

    if ((v27 & 0x20) != 0)
    {
      sub_3080(&v58);
      v21 = v40[0];
      goto LABEL_9;
    }
  }

  v28 = v59;
  v29 = v60;
  sub_2E18(&v58, v59);
  v30 = (*(v29 + 8))(v28, v29);
  sub_30CC(v41, v49);
  sub_1A7A30(v30, v49, &v50);
  sub_262E30();
  sub_1AA224(&v50);
  v31 = sub_126060();
  v47 = a4;
  v48 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = v42;
  sub_1609C(v18, v15, WitnessTable);
  v34 = *(v43 + 8);
  v34(v18, v15);
  sub_1609C(v33, v15, WitnessTable);
  sub_1D738(v18, v15);
  v34(v18, v15);
  v34(v33, v15);
  sub_3080(&v58);
  v21 = v40[0];
LABEL_10:
  v37 = sub_126060();
  v54 = a4;
  v55 = v37;
  v52 = swift_getWitnessTable();
  v53 = a4;
  v38 = swift_getWitnessTable();
  sub_1609C(v24, v21, v38);
  return (*(v45 + 8))(v24, v21);
}

unint64_t sub_1A8FD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_F5B8(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_1A9008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AA4D8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.libraryAssetStates.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A807C();
  sub_261CB0();
  return sub_1A90CC;
}

uint64_t sub_1A90CC(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_261CC0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_261CC0();
  }
}

uint64_t EnvironmentValues.ownedAssetIDs.getter()
{
  sub_1A807C();
  sub_261CB0();
  v0 = sub_1A9C04(v4);

  v1 = sub_1A6E54(v0);

  v2 = sub_127F84(v1);

  return v2;
}

double sub_1A91F0()
{
  qword_323270 = 0;
  result = 0.0;
  xmmword_323250 = 0u;
  unk_323260 = 0u;
  return result;
}

uint64_t sub_1A9208@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315AA0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_323250, v1, &unk_31EF78, &qword_279C50);
}

uint64_t EnvironmentValues.libraryAssetStateObserverProvider.getter()
{
  sub_129290();

  return sub_261CB0();
}

uint64_t EnvironmentValues.libraryAssetStateObserverProvider.setter(uint64_t a1)
{
  sub_8198(a1, v3, &unk_31EF78, &qword_279C50);
  sub_129290();
  sub_261CC0();
  return sub_8E80(a1, &unk_31EF78, &qword_279C50);
}

void (*EnvironmentValues.libraryAssetStateObserverProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_129290();
  sub_261CB0();
  return sub_1A93D0;
}

void sub_1A93D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_8198(*a1, v2 + 40, &unk_31EF78, &qword_279C50);
    sub_8198(v2 + 40, v2 + 80, &unk_31EF78, &qword_279C50);
    sub_261CC0();
    sub_8E80(v2 + 40, &unk_31EF78, &qword_279C50);
  }

  else
  {
    sub_8198(*a1, v2 + 40, &unk_31EF78, &qword_279C50);
    sub_261CC0();
  }

  sub_8E80(v2, &unk_31EF78, &qword_279C50);

  free(v2);
}

uint64_t sub_1A94D0(uint64_t a1, char a2, void *a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v5 = 0;
  for (i = 32; ; i += 88)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_264FB0();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(a1 + i + 64);
    v41 = *(a1 + i + 48);
    v42 = v7;
    v8 = *(a1 + i + 32);
    v39 = *(a1 + i + 16);
    v40 = v8;
    v38 = *(a1 + i);
    v9 = *(a1 + i + 80);
    v43 = v9;
    v34 = v41;
    v35 = v42;
    v32 = v39;
    v33 = v8;
    v10 = v38;
    sub_8198(&v38, &v37, &qword_3160F8, &qword_2697C0);
    if (!*(&v10 + 1))
    {
    }

    v37 = v10;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    LOWORD(v42) = v9;
    v11 = *a3;
    v13 = sub_D410(v10, *(&v10 + 1));
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_21;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_14F388();
      if (v17)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v21[6] + 16 * v13) = v10;
    v22 = v21[7] + 72 * v13;
    *v22 = v38;
    v23 = v39;
    v24 = v40;
    v25 = v41;
    *(v22 + 64) = v42;
    *(v22 + 32) = v24;
    *(v22 + 48) = v25;
    *(v22 + 16) = v23;
    v26 = v21[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    ++v5;
    v21[2] = v28;
    a2 = 1;
    if (v31 == v5)
    {
    }
  }

  sub_14E2B8(v16, a2 & 1);
  v18 = *a3;
  v19 = sub_D410(v10, *(&v10 + 1));
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_23;
  }

  v13 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v29 = swift_allocError();
  swift_willThrow();
  v44 = v29;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1AA6F4(&v38);
  }

LABEL_24:
  sub_264BC0(30);
  v45._object = 0x80000000002926D0;
  v45._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v45);
  sub_264CC0();
  v46._countAndFlagsBits = 39;
  v46._object = 0xE100000000000000;
  sub_264530(v46);
  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t sub_1A9820(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_8198(a1 + 32, &v46, &qword_3171A8, &unk_282E00);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_F7CC(v48, v43);
  v9 = *a3;
  v10 = sub_D410(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_14E654(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_D410(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_264FB0();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_14F59C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    swift_errorRetain();
    sub_2EF0(&qword_31E968, &qword_27B490);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_3080(v43);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_F7CC(v43, v22[7] + 40 * v10);
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
    }

    v26 = a1 + 88;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_8198(v26, &v46, &qword_3171A8, &unk_282E00);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_F7CC(v48, v43);
      v30 = *a3;
      v31 = sub_D410(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_14E654(v35, 1);
        v37 = *a3;
        v31 = sub_D410(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_F7CC(v43, v39[7] + 40 * v31);
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 56;
      if (v4 == v27)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_264BC0(30);
  v50._object = 0x80000000002926D0;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  sub_264530(v50);
  sub_264CC0();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  sub_264530(v51);
  result = sub_264CD0();
  __break(1u);
  return result;
}

uint64_t sub_1A9C04(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A9D64(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A9E58(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1A9D64(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 72 * v10 + 16) <= 1u)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1A9ED0(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_1A9ED0(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1A9E58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1A9D64(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A9ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2EF0(&qword_3160F0, &unk_267EE0);
  result = sub_264D10();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v46 = *(v21 + 32);
    v44 = v23;
    v45 = v24;
    v42 = *v21;
    v43 = v22;
    v25 = *(v9 + 40);
    sub_265050();

    sub_14FF5C(&v42, v41);
    sub_264500();
    result = sub_265080();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v19;
    v34[1] = v20;
    v35 = *(v9 + 56) + 72 * v29;
    *v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    *(v35 + 64) = v46;
    *(v35 + 32) = v37;
    *(v35 + 48) = v38;
    *(v35 + 16) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AA154(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v21 = v5;
    v22 = v6;
    v7 = (*(a5 + 48) + 16 * a2);
    v8 = *v7;
    v9 = v7[1];
    v10 = *(a5 + 56) + 72 * a2;
    v19[0] = *v10;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    v13 = *(v10 + 16);
    v20 = *(v10 + 64);
    v19[2] = v12;
    v19[3] = v11;
    v19[1] = v13;
    v14 = *v10;
    v15 = *(v10 + 16);
    v16 = *(v10 + 32);
    v17 = *(v10 + 48);
    *(result + 64) = *(v10 + 64);
    *(result + 32) = v16;
    *(result + 48) = v17;
    *result = v14;
    *(result + 16) = v15;

    sub_14FF5C(v19, v18);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AA254@<X0>(void *a1@<X8>)
{
  sub_1A807C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1AA314(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_261F90();
  sub_126060();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1AA3D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AA3FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1AA444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AA4D8()
{
  result = qword_323288;
  if (!qword_323288)
  {
    sub_2F9C(&qword_323290, &qword_282D98);
    sub_1AA55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323288);
  }

  return result;
}

unint64_t sub_1AA55C()
{
  result = qword_323298;
  if (!qword_323298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323298);
  }

  return result;
}

uint64_t sub_1AA5E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  if (*(v0 + 96))
  {
    sub_3080((v0 + 56));
  }

  else
  {
    v6 = *(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1AA664(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3232A0, &qword_282DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AA748()
{
  result = qword_31D960;
  if (!qword_31D960)
  {
    sub_261570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D960);
  }

  return result;
}

uint64_t sub_1AA7A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1AA7D0()
{
  result = qword_3232D8;
  if (!qword_3232D8)
  {
    sub_2F9C(&qword_3232B8, &qword_282DE8);
    sub_1AA85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3232D8);
  }

  return result;
}

unint64_t sub_1AA85C()
{
  result = qword_3232E0;
  if (!qword_3232E0)
  {
    sub_2F9C(&qword_3232A0, &qword_282DA0);
    sub_8E38(&qword_3232E8, &qword_3232B0, &qword_282DE0);
    sub_8E38(&qword_3232F0, &qword_3232F8, &qword_282E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3232E0);
  }

  return result;
}

uint64_t sub_1AA974()
{
  sub_1AA9A4();
  result = sub_261D40();
  qword_354020 = result;
  return result;
}

unint64_t sub_1AA9A4()
{
  result = qword_323300[0];
  if (!qword_323300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_323300);
  }

  return result;
}

uint64_t sub_1AAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemMetadataFormatAndDescriptorView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t sub_1AAB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = *(a1 - 8);
  v39 = *(v3 + 64);
  __chkstk_darwin(a1);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v36 = *(v5 + 16);
  v37 = v6;
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  sub_2F9C(&qword_3189E8, &unk_26F980);
  sub_261730();
  type metadata accessor for DefaultBlendModeModifier();
  v7 = sub_261730();
  v35 = sub_260A70();
  v34 = sub_260A50();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  v52 = AssociatedConformanceWitness;
  v53 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  v50 = WitnessTable;
  v51 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
  v48 = v12;
  v49 = v13;
  v33 = v7;
  v14 = swift_getWitnessTable();
  v15 = sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  v16 = sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  v42 = v7;
  v43 = v35;
  v44 = v34;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v17 = sub_260A90();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v33 - v24;
  v26 = v38;
  (*(v3 + 16))(v38, v40, a1, v23);
  v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v36;
  *(v28 + 24) = v29;
  (*(v3 + 32))(v28 + v27, v26, a1);
  sub_180C1C();
  v30 = swift_getWitnessTable();
  sub_1609C(v21, v17, v30);
  v31 = *(v18 + 8);
  v31(v21, v17);
  sub_1609C(v25, v17, v30);
  return (v31)(v25, v17);
}

uint64_t sub_1AAFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v61 = a5;
  v55 = sub_2626C0();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v55);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontConstants.ListItem(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v16 = *(v57 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v47 = &v47 - v17;
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v52 = sub_261730();
  v58 = *(v52 - 8);
  v18 = *(v58 + 64);
  __chkstk_darwin(v52);
  v48 = &v47 - v19;
  sub_2F9C(&qword_3189E8, &unk_26F980);
  v53 = sub_261730();
  v59 = *(v53 - 8);
  v20 = *(v59 + 64);
  __chkstk_darwin(v53);
  v49 = &v47 - v21;
  type metadata accessor for DefaultBlendModeModifier();
  v22 = sub_261730();
  v60 = *(v22 - 8);
  v23 = *(v60 + 64);
  __chkstk_darwin(v22);
  v51 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v56 = &v47 - v26;
  v27 = a2 + *(type metadata accessor for ListItemMetadataFormatAndDescriptorView() + 36);
  (*(a4 + 32))(v54, a3);
  v28 = v15;
  sub_404E0(v15);
  sub_262700();
  v29 = v55;
  (*(v8 + 104))(v11, enum case for Font.Leading.tight(_:), v55);
  sub_2626E0();

  (*(v8 + 8))(v11, v29);
  sub_65488(v28);
  v30 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v47;
  v33 = v48;
  sub_262D80();

  (*(v57 + 8))(v32, v30);
  v34 = sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  v66 = AssociatedConformanceWitness;
  v67 = v34;
  v35 = v52;
  WitnessTable = swift_getWitnessTable();
  v37 = v49;
  sub_262EB0();
  (*(v58 + 8))(v33, v35);
  v38 = sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  v64 = WitnessTable;
  v65 = v38;
  v39 = v53;
  v40 = swift_getWitnessTable();
  v41 = v51;
  View.defaultBlendMode()();
  (*(v59 + 8))(v37, v39);
  v42 = sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
  v62 = v40;
  v63 = v42;
  v43 = swift_getWitnessTable();
  v44 = v56;
  sub_1609C(v41, v22, v43);
  v45 = *(v60 + 8);
  v45(v41, v22);
  sub_1609C(v44, v22, v43);
  return (v45)(v44, v22);
}

uint64_t sub_1AB600(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB654()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ListItemMetadataFormatAndDescriptorView();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
    v8 = *v5;
  }

  (*(*(v2 - 8) + 8))(&v5[*(v3 + 36)], v2);

  return swift_deallocObject();
}

uint64_t sub_1AB7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ListItemMetadataFormatAndDescriptorView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1AAFAC(a1, v8, v5, v6, a2);
}

uint64_t sub_1AB854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  sub_2F9C(&qword_3189E8, &unk_26F980);
  sub_261730();
  type metadata accessor for DefaultBlendModeModifier();
  sub_261730();
  sub_260A70();
  sub_260A50();
  swift_getAssociatedConformanceWitness();
  sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
  swift_getWitnessTable();
  sub_1AB600(&qword_3189E0, &qword_3189E8, &unk_26F980);
  swift_getWitnessTable();
  sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
  swift_getWitnessTable();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A90();
  return swift_getWitnessTable();
}

uint64_t sub_1ABAD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_264830();
  if (!v26)
  {
    return sub_2646B0();
  }

  v48 = v26;
  v52 = sub_264C60();
  v39 = sub_264C70();
  sub_264C40(v48);
  result = sub_264820();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2648A0();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_264C50();
      result = sub_264870();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MResourceDecoder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v52 = a3;
  v59 = sub_2641D0();
  v56 = *(v59 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v59);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v51 - v7;
  v8 = sub_2EF0(&qword_3229A8, &qword_281B60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = sub_263840();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_322B38, &qword_281FA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_260820();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v24 = a1[4];
  v61 = a1;
  sub_2E18(a1, v25);
  sub_265100();
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v26 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B080(v26, qword_323388);
  sub_2642C0();

  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v23, v18, v19);
    v28 = v61;
    v29 = v61[4];
    sub_2E18(v61, v61[3]);
    v30 = v57;
    sub_2650F0();
    v27 = v30;
    if (v30)
    {
      (*(v20 + 8))(v23, v19);
      goto LABEL_7;
    }

    v57 = v11;
    sub_2E18(v62, v62[3]);
    sub_19B934(&qword_3229C8, &type metadata accessor for JSONObject);
    sub_264F30();
    v42 = v57;
    sub_263800();
    v43 = sub_263C10();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_8E80(v42, &qword_3229A8, &qword_281B60);
      v28 = v61;
      v45 = v12;
    }

    else
    {
      v46 = sub_263C00();
      v47 = v42;
      v48 = v46;
      (*(v44 + 8))(v47, v43);
      v28 = v61;
      v45 = v12;
      if (v48)
      {
LABEL_15:
        v49 = v54;
        sub_260A00();
        v50 = sub_2609F0();

        (*(v53 + 8))(v49, v45);
        (*(v20 + 8))(v23, v19);
        sub_3080(v62);
        *v52 = v50;
        return sub_3080(v28);
      }
    }

    sub_EEE8(_swiftEmptyArrayStorage);

    goto LABEL_15;
  }

  sub_8E80(v18, &qword_322B38, &qword_281FA0);
  type metadata accessor for MResourceDecoder.MResourceDecoderError();
  swift_getWitnessTable();
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v61;
LABEL_7:
  v62[6] = v27;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  v31 = v58;
  v32 = v59;
  if (swift_dynamicCast())
  {

    v33 = v55;
    v34 = v56;
    (*(v56 + 32))(v55, v31, v32);
    v35 = sub_264C10();
    swift_allocError();
    v58 = v36;
    v37 = v28[3];
    v38 = v61[4];
    sub_2E18(v61, v37);
    v57 = sub_2650E0();
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    sub_264BC0(23);
    v63._object = 0x80000000002941B0;
    v63._countAndFlagsBits = 0xD000000000000011;
    sub_264530(v63);
    v64._countAndFlagsBits = sub_265260();
    sub_264530(v64);

    v65._countAndFlagsBits = 8250;
    v65._object = 0xE200000000000000;
    sub_264530(v65);
    sub_264CC0();
    sub_19B934(&qword_322B58, &type metadata accessor for JSONError);
    swift_allocError();
    (*(v34 + 16))(v39, v33, v32);
    v40 = v58;
    v28 = v61;
    sub_264BF0();
    (*(*(v35 - 8) + 104))(v40, enum case for DecodingError.dataCorrupted(_:), v35);
    swift_willThrow();
    (*(v34 + 8))(v33, v32);
  }

  return sub_3080(v28);
}

id MResourceDecoder.wrappedValue.getter()
{
  v0 = ShelfGridItemColumnSpan.Context.offset.getter();

  return v0;
}

uint64_t sub_1AC7F0()
{
  v0 = sub_2EF0(&qword_322B40, &unk_282F70);
  sub_B600(v0, qword_323388);
  sub_B080(v0, qword_323388);
  sub_260820();
  return sub_263960();
}

uint64_t static JSONContext.Property<A>.catalogServiceConfig.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_322B40, &unk_282F70);
  v3 = sub_B080(v2, qword_323388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _MResourceDecoder_Many.init(from:)(uint64_t *a1, uint64_t a2)
{
  sub_30CC(a1, v12);
  v5 = type metadata accessor for MResourceDecoder();
  swift_getWitnessTable();
  v6 = sub_264700();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v12[0] = v6;
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    v8 = sub_2646F0();
    WitnessTable = swift_getWitnessTable();
    v5 = sub_1ABAD4(sub_1ACFB8, KeyPath, v8, a2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);

    sub_3080(a1);
  }

  return v5;
}

id sub_1ACADC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  type metadata accessor for MResourceDecoder();
  v5 = ShelfGridItemColumnSpan.Context.offset.getter();
  *a3 = v5;

  return v5;
}

uint64_t _MResourceDecoder_Many.init(_partiallyFrom:)(uint64_t *a1, uint64_t a2)
{
  sub_30CC(a1, v10);
  type metadata accessor for MResourceDecoder();
  swift_getWitnessTable();
  v10[0] = sub_2646E0();
  KeyPath = swift_getKeyPath();
  v5 = sub_2646F0();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1ABAD4(sub_10D740, KeyPath, v5, a2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);

  sub_3080(a1);

  return v8;
}

uint64_t sub_1ACC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _MResourceDecoder_Many.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ACCB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _MResourceDecoder_Many.init(_partiallyFrom:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t _MResourceDecoder_OrNil.init(from:)(uint64_t *a1)
{
  sub_30CC(a1, v4);
  type metadata accessor for MResourceDecoder();
  swift_getWitnessTable();
  sub_264A70();
  result = sub_3080(a1);
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ACDA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  result = _MResourceDecoder_OrNil.init(from:)(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1ACE28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACE64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACEB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ACEF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1ACF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CircularIconView.init(kind:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CircularIconView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[11];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  *(a2 + v4[10]) = v3;
  return result;
}

uint64_t type metadata accessor for CircularIconView()
{
  result = qword_323628;
  if (!qword_323628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AD194@<X0>(uint64_t a1@<X8>)
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
    return sub_1AFDC8(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AD378@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318F68, &qword_26C578);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for CircularIconView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_318F68, &qword_26C578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AFDC8(v11, a1, type metadata accessor for FontConstants.Navigation);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AD564()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CircularIconView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1AD6BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CircularIconView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
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

uint64_t sub_1AD8C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CircularIconView();
  sub_8198(v1 + *(v12 + 32), v11, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_263640();
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

uint64_t sub_1ADACC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CircularIconView() + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

double CircularIconView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_3235A0, &qword_2833D0);
  v7 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v9 = (&v22 - v8);
  v24 = sub_2EF0(&qword_3235A8, &qword_2833D8);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v24);
  v13 = &v22 - v12;
  *v9 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9[1] = v14;
  v15 = sub_2EF0(&qword_3235B0, &qword_2833E0);
  sub_1ADF14(v1, v9 + *(v15 + 44));
  v16 = sub_1AD564();
  v17 = &enum case for DynamicTypeSize.large(_:);
  if ((v16 & 1) == 0)
  {
    v17 = &enum case for DynamicTypeSize.medium(_:);
  }

  (*(v3 + 104))(v6, *v17, v2);
  sub_8E38(&qword_3235B8, &qword_3235A0, &qword_2833D0);
  sub_262B60();
  (*(v3 + 8))(v6, v2);
  sub_8E80(v9, &qword_3235A0, &qword_2833D0);
  sub_1AEB28();
  sub_1AEB28();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v18 = v25;
  (*(v10 + 32))(v25, v13, v24);
  v19 = (v18 + *(sub_2EF0(&qword_3235C0, &qword_2833E8) + 36));
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  result = *&v28;
  v19[2] = v28;
  return result;
}

uint64_t sub_1ADF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v109 = sub_2EF0(&qword_3190B8, &qword_26C8B0);
  v3 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v112 = &v95[-v4];
  v110 = sub_2EF0(&qword_319088, &qword_26C7F0);
  v5 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v114 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v111 = &v95[-v8];
  __chkstk_darwin(v9);
  v113 = &v95[-v10];
  v11 = sub_261180();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v104 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v103 = &v95[-v16];
  v17 = type metadata accessor for ColorConstants.Environment(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v95[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for ColorConstants(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v95[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_263640();
  v26 = *(v25 - 8);
  v98 = v26;
  v27 = v26[8];
  __chkstk_darwin(v25);
  v105 = &v95[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v31 = &v95[-v30];
  v102 = sub_2EF0(&qword_323698, &qword_2834E0);
  v32 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v118 = &v95[-v33];
  v101 = sub_2EF0(&qword_3236A0, &qword_2834E8);
  v34 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v108 = &v95[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v100 = &v95[-v37];
  __chkstk_darwin(v38);
  v40 = &v95[-v39];
  v99 = sub_1AE904();
  v41 = sub_1ADACC();
  v116 = a1;
  v117 = v12;
  v106 = v40;
  v107 = v25;
  if (v41)
  {
    v42 = v11;
    v97 = v26[13];
    v97(v31, enum case for BlendMode.normal(_:), v25);
  }

  else
  {
    sub_1AD194(v24);
    sub_4BD3C(v24, v20);
    v43 = v103;
    (*(v12 + 104))(v103, enum case for ColorScheme.dark(_:), v11);
    sub_60AB0();
    v44 = sub_264390();
    v45 = v26;
    v46 = *(v12 + 8);
    v46(v43, v11);
    sub_1AFD68(v24, type metadata accessor for ColorConstants);
    v42 = v11;
    v46(v20, v11);
    v26 = v45;
    v47 = v45[13];
    v97 = v47;
    if (v44)
    {
      v48 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v48 = &enum case for BlendMode.plusDarker(_:);
    }

    v25 = v107;
    v47(v31, *v48, v107);
    v40 = v106;
  }

  v50 = v26[4];
  v49 = v26 + 4;
  v51 = v118;
  v52 = &v118[*(v102 + 36)];
  v102 = v50;
  v50(v52, v31, v25);
  *v51 = v99;
  *(v51 + 4) = 256;
  v53 = v116;
  if (sub_1ADACC())
  {
    v99 = v49;
    sub_1AD194(v24);
    sub_4BD3C(v24, v20);
    v54 = v117;
    v55 = v20;
    v56 = *(v117 + 104);
    v57 = v103;
    v96 = enum case for ColorScheme.dark(_:);
    v58 = v42;
    v56(v103);
    sub_60AB0();
    v59 = sub_264390();
    v60 = *(v54 + 8);
    v60(v57, v42);
    sub_1AFD68(v24, type metadata accessor for ColorConstants);
    v60(v55, v42);
    if (v59)
    {
      v61 = enum case for ColorScheme.light(_:);
      v62 = v104;
      v63 = v104;
    }

    else
    {
      v62 = v104;
      v63 = v104;
      v61 = v96;
    }

    (v56)(v63, v61, v42);
    v40 = v106;
    v25 = v107;
    v53 = v116;
    v64 = v117;
  }

  else
  {
    v62 = v104;
    sub_1AD6BC(v104);
    v64 = v117;
    v58 = v42;
  }

  KeyPath = swift_getKeyPath();
  v66 = v100;
  v67 = &v100[*(v101 + 36)];
  v68 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v64 + 32))(v67 + *(v68 + 28), v62, v58);
  *v67 = KeyPath;
  sub_22148(v118, v66, &qword_323698, &qword_2834E0);
  sub_22148(v66, v40, &qword_3236A0, &qword_2834E8);
  v69 = *(type metadata accessor for CircularIconView() + 40);
  LOBYTE(KeyPath) = *(v53 + v69);
  v70 = *(type metadata accessor for SymbolImage() + 20);
  v71 = swift_getKeyPath();
  v72 = v112;
  *&v112[v70] = v71;
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *v72 = KeyPath;
  v73 = sub_1AEC90();
  *&v72[*(sub_2EF0(&qword_3190A8, &qword_26C870) + 36)] = v73;
  v74 = sub_1AEF20();
  v75 = swift_getKeyPath();
  v76 = &v72[*(sub_2EF0(&qword_3190B0, &qword_283590) + 36)];
  *v76 = v75;
  v76[1] = v74;
  sub_1AF17C();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = sub_262500();
  v86 = &v72[*(v109 + 36)];
  *v86 = v85;
  *(v86 + 1) = v78;
  *(v86 + 2) = v80;
  *(v86 + 3) = v82;
  *(v86 + 4) = v84;
  v86[40] = 0;
  v87 = v105;
  if (*(v53 + v69) == 6)
  {
    sub_1AD8C4(v105);
  }

  else
  {
    v97(v105, enum case for BlendMode.normal(_:), v25);
  }

  v88 = v111;
  (v102)(&v111[*(v110 + 36)], v87, v25);
  sub_22148(v72, v88, &qword_3190B8, &qword_26C8B0);
  v89 = v113;
  sub_22148(v88, v113, &qword_319088, &qword_26C7F0);
  v90 = v108;
  sub_8198(v40, v108, &qword_3236A0, &qword_2834E8);
  v91 = v114;
  sub_8198(v89, v114, &qword_319088, &qword_26C7F0);
  v92 = v115;
  sub_8198(v90, v115, &qword_3236A0, &qword_2834E8);
  v93 = sub_2EF0(&qword_3236A8, &qword_283598);
  sub_8198(v91, v92 + *(v93 + 48), &qword_319088, &qword_26C7F0);
  sub_8E80(v89, &qword_319088, &qword_26C7F0);
  sub_8E80(v40, &qword_3236A0, &qword_2834E8);
  sub_8E80(v91, &qword_319088, &qword_26C7F0);
  return sub_8E80(v90, &qword_3236A0, &qword_2834E8);
}

uint64_t sub_1AE904()
{
  v1 = sub_2634E0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  if (*(v0 + *(type metadata accessor for CircularIconView() + 40)) > 6u)
  {

    goto LABEL_7;
  }

  v3 = sub_264F10();

  if (v3)
  {
LABEL_7:
    sub_262FA0();
    return sub_2613B0();
  }

  if (sub_1ADACC())
  {
    sub_2634D0();
  }

  else
  {
    v4 = [objc_opt_self() tertiarySystemFillColor];
    sub_263070();
  }

  return sub_2613B0();
}

double sub_1AEB28()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CircularIconView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return dbl_2835F0[v7];
}

uint64_t sub_1AEC90()
{
  v1 = sub_261180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = *(v0 + *(type metadata accessor for CircularIconView() + 40));
  v18 = sub_1ADACC();
  v19 = v18;
  if (v17 == 6)
  {
    sub_1AD194(v16);
    v20 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    if (v19)
    {
      v21 = sub_263000();

      v20 = v21;
    }
  }

  else if (v18)
  {
    sub_1AD194(v16);
    v20 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    sub_1AD194(v13);
    sub_4BD3C(v13, v9);
    (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1);
    sub_60AB0();
    v22 = sub_264390();
    v23 = *(v2 + 8);
    v23(v5, v1);
    v23(v9, v1);
    if (v22)
    {
      v24 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v24 = sub_262F80();
    }

    v20 = v24;
    v16 = v13;
  }

  sub_1AFD68(v16, type metadata accessor for ColorConstants);
  return v20;
}

uint64_t sub_1AEF20()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontConstants.Navigation(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for CircularIconView() + 40)) == 6)
  {

    return static Font.headline.getter();
  }

  else
  {
    sub_1AD378(v13);
    (*(v6 + 104))(v9, enum case for Font.TextStyle.callout(_:), v5);
    v14 = sub_2625C0();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_262650();
    v15 = sub_262680();
    sub_8E80(v4, &qword_318458, &unk_26B270);
    (*(v6 + 8))(v9, v5);
    sub_1AFD68(v13, type metadata accessor for FontConstants.Navigation);
    return v15;
  }
}

void sub_1AF17C()
{
  v1 = *(v0 + *(type metadata accessor for CircularIconView() + 40));
  if (v1 <= 3 || v1 > 5 || v1 == 4)
  {
    v2 = sub_264F10();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v3 = sub_264420();

  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    [v4 alignmentRectInsets];
  }
}

uint64_t sub_1AF450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF5A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1AF4B4()
{
  sub_ED51C();

  return sub_261CB0();
}

uint64_t View.circularIcon(size:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_262A90();
}

unint64_t sub_1AF5A0()
{
  result = qword_3235C8;
  if (!qword_3235C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3235C8);
  }

  return result;
}

uint64_t sub_1AF624(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1AF820(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_1AFA0C()
{
  sub_6083C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_6083C(319, &qword_319010, type metadata accessor for FontConstants.Navigation);
    if (v1 <= 0x3F)
    {
      sub_60890(319, &qword_3167D0);
      if (v2 <= 0x3F)
      {
        sub_6083C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_6083C(319, &qword_3178F8, &type metadata accessor for BlendMode);
          if (v4 <= 0x3F)
          {
            sub_60890(319, &unk_323638);
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

unint64_t sub_1AFBA8()
{
  result = qword_323680;
  if (!qword_323680)
  {
    sub_2F9C(&qword_3235C0, &qword_2833E8);
    sub_2F9C(&qword_3235A0, &qword_2833D0);
    sub_8E38(&qword_3235B8, &qword_3235A0, &qword_2833D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323680);
  }

  return result;
}

uint64_t sub_1AFCA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_323688, &qword_2834D8);
  sub_261730();
  sub_8E38(&qword_323690, &qword_323688, &qword_2834D8);
  return swift_getWitnessTable();
}

uint64_t sub_1AFD68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static ListItemMetadata.topChartsListPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = sub_2609A0();
  v7 = v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  v9 = sub_2609B0();
  v11 = v10;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v25[4] = sub_2E5C();
  v12 = swift_allocObject();
  v25[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;
  v24[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v24[4] = sub_2F38();
  v13 = swift_allocObject();
  v24[0] = v13;
  sub_30CC(a1, v13 + 120);
  KeyPath = swift_getKeyPath();
  v28 = 0;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *(v13 + 16) = KeyPath;
  *(v13 + 82) = 0;
  *(v13 + 88) = v15;
  *(v13 + 96) = 0;
  *(v13 + 104) = v16;
  *(v13 + 112) = 0;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v26, a2, &qword_315B58, &unk_266540);
  sub_34A0(v25, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v24, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v22, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v20, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v18, a2 + 240, &qword_315B80, &qword_276FC0);
}

uint64_t sub_1B00B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B00F8()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t SeriesHeaderCoverStackCoverLayout.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[9];
  v14 = v1[8];
  v2 = v14;
  v15 = v3;
  v5 = v1[11];
  v16 = v1[10];
  v4 = v16;
  v17 = v5;
  v6 = v1[5];
  v11[0] = v1[4];
  v11[1] = v6;
  v8 = v1[7];
  v12 = v1[6];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_5757C(v11, &v10);
}

double SeriesHeaderCoverStackCoverLayout.offset(for:)()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1B0254();
}

double sub_1B0254()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v2 = 0.45;
    v3 = 0.7;
  }

  else
  {
    if (!*v0)
    {
      return 0.0;
    }

    v2 = 0.25;
    if (v1 == 1)
    {
      v3 = 0.86;
    }

    else
    {
      v7 = *(v0 + 4) - 3;
      v3 = 0.0;
      if (v7 <= 2)
      {
        v3 = dbl_283890[v7];
      }
    }
  }

  v4 = *(v0 + 3) * *(v0 + 7) * v2 + (*(v0 + 2) * *(v0 + 3) - *(v0 + 1) * (*(v0 + 3) * v3)) * 0.5;
  v5 = -1.0;
  if (*v0 > 2u)
  {
    if (v1 != 3)
    {
      v5 = 1.0;
    }

    return v4 * v5;
  }

  else
  {
    if (v1 != 1)
    {
      v5 = 1.0;
    }

    return v4 * v5;
  }
}

uint64_t SeriesHeaderCoverStackCoverLayout.scale(forOverscrollOffset:)(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 6);
  v6 = a1 / *(v1 + 3);
  if (*(v1 + 5) < 0.0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 5);
    sub_E1D74();
    return sub_264350();
  }

  return result;
}

void SeriesHeaderCoverStackCoverLayout.offset(forOverscrollOffset:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 6);
  if (*(v0 + 5) < 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_E1D74();
    sub_264350();
    if (v1)
    {
      LODWORD(v8) = *(v0 + 1);
      *(&v8 + 3) = *(v0 + 1);
      v20 = *(v0 + 136);
      v22 = *(v0 + 152);
      v24 = *(v0 + 168);
      v26 = *(v0 + 23);
      v12 = *(v0 + 72);
      v14 = *(v0 + 88);
      v16 = *(v0 + 104);
      v18 = *(v0 + 120);
      v10 = *(v0 + 56);
      sub_1B0254();
      if (v1 <= 2 && v1 != 1 && (v5 - 3) < 3)
      {
        v7 = dbl_283890[v5 - 3];
      }
    }

    else
    {
      LODWORD(v9) = *(v0 + 1);
      *(&v9 + 3) = *(v0 + 1);
      v21 = *(v0 + 136);
      v23 = *(v0 + 152);
      v25 = *(v0 + 168);
      v27 = *(v0 + 23);
      v13 = *(v0 + 72);
      v15 = *(v0 + 88);
      v17 = *(v0 + 104);
      v19 = *(v0 + 120);
      v11 = *(v0 + 56);
      sub_1B0254();
    }
  }
}

unint64_t sub_1B05F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B07E8(*a1);
  *a2 = result;
  return result;
}

uint64_t _s7BooksUI022SeriesHeaderCoverStackE6LayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5.f64[0] = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a1 + 9);
  v54[4] = *(a1 + 8);
  v54[5] = v10;
  v11 = *(a1 + 11);
  v54[6] = *(a1 + 10);
  v54[7] = v11;
  v12 = *(a1 + 5);
  v54[0] = *(a1 + 4);
  v54[1] = v12;
  v15 = *(a1 + 7);
  v54[2] = *(a1 + 6);
  v54[3] = v15;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15.f64[0] = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  v19 = *(a2 + 7);
  v20 = *(a2 + 9);
  v55[4] = *(a2 + 8);
  v55[5] = v20;
  v21 = *(a2 + 11);
  v55[6] = *(a2 + 10);
  v55[7] = v21;
  v22 = *(a2 + 5);
  v55[0] = *(a2 + 4);
  v55[1] = v22;
  v23 = v8 == v18;
  v24 = *(a2 + 6);
  v25 = *(a2 + 7);
  v26 = v23;
  v55[2] = *(a2 + 6);
  v55[3] = v25;
  if (v3 == v13)
  {
    v5.f64[1] = v7;
    v15.f64[1] = v17;
    if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v4, v14), vceqq_f64(v5, v15)), xmmword_2836A0)) & 0xF) == 0 && v26 && v9 == v19 && v6 == v16)
    {
      v27 = *(a1 + 9);
      v48 = *(a1 + 8);
      v49 = v27;
      v28 = *(a1 + 11);
      v50 = *(a1 + 10);
      v51 = v28;
      v29 = *(a1 + 5);
      v44 = *(a1 + 4);
      v45 = v29;
      v30 = *(a1 + 7);
      v46 = *(a1 + 6);
      v47 = v30;
      v31 = *(a2 + 9);
      v40 = *(a2 + 8);
      v41 = v31;
      v32 = *(a2 + 11);
      v42 = *(a2 + 10);
      v43 = v32;
      v33 = *(a2 + 5);
      v36 = *(a2 + 4);
      v37 = v33;
      v34 = *(a2 + 7);
      v38 = *(a2 + 6);
      v39 = v34;
      sub_5757C(v54, v53);
      sub_5757C(v55, v53);
      v2 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v44, &v36);
      v52[4] = v40;
      v52[5] = v41;
      v52[6] = v42;
      v52[7] = v43;
      v52[0] = v36;
      v52[1] = v37;
      v52[2] = v38;
      v52[3] = v39;
      sub_EA998(v52);
      v53[4] = v48;
      v53[5] = v49;
      v53[6] = v50;
      v53[7] = v51;
      v53[0] = v44;
      v53[1] = v45;
      v53[2] = v46;
      v53[3] = v47;
      sub_EA998(v53);
    }
  }

  return v2 & 1;
}

unint64_t sub_1B07E8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

double _s7BooksUI022SeriesHeaderCoverStackE6LayoutV6height3for12CoreGraphics7CGFloatVSo6CGSizeV_tF_0()
{
  v1 = *v0;
  result = v0[3];
  if (v1 <= 1)
  {
    if (*v0)
    {
      return result * 0.86;
    }
  }

  else if (v1 == 2)
  {
    v4 = *(v0 + 4) - 3;
    v5 = 0.0;
    if (v4 < 3)
    {
      v5 = dbl_283890[v4];
    }

    return result * v5;
  }

  else
  {
    v3 = result * 0.7;
    result = result * 0.7;
    if (v1 == 3)
    {
      return v3;
    }
  }

  return result;
}

unint64_t sub_1B0874(uint64_t a1)
{
  result = sub_1B089C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B089C()
{
  result = qword_3236B0;
  if (!qword_3236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3236B0);
  }

  return result;
}

__n128 sub_1B08F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B0924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 88) >> 3) & 0xFFFFFF80 | (*(a1 + 88) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 184) = 0;
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 192) = 1;
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
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      return result;
    }

    *(a1 + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0A2C()
{
  result = qword_3236B8;
  if (!qword_3236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3236B8);
  }

  return result;
}

uint64_t View.cheapShadow<A>(shape:color:radius:x:y:)()
{
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2612B0();
  swift_getWitnessTable();
  return sub_2629F0();
}

uint64_t sub_1B0B58()
{
  v0 = sub_2612B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_263160();
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v4, v0, WitnessTable);
  v9 = *(v1 + 8);
  v9(v4, v0);
  sub_1609C(v7, v0, WitnessTable);
  return (v9)(v7, v0);
}

uint64_t sub_1B0D00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  return sub_1B0B58();
}

uint64_t sub_1B0D18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_2612B0();
  swift_getWitnessTable();
  sub_261F60();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t ReadingSummaryFrameViewModel.init(longestStreak:totalCompletedGoalDays:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v7 = sub_2602E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReadingSummaryFrameViewModel(0);
  v13 = v12[7];
  v14 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  sub_2602A0();
  isa = sub_2602B0().super.isa;
  (*(v8 + 8))(v11, v7);
  [v14 setCalendar:isa];

  [v14 setAllowedUnits:16];
  [v14 setMaximumUnitCount:1];
  [v14 setUnitsStyle:3];
  *(a4 + v13) = v14;
  sub_22148(a1, a4, &qword_3236C0, &qword_2838B0);
  *(a4 + v12[5]) = a2;
  v16 = v12[6];
  v17 = sub_260550();
  return (*(*(v17 - 8) + 32))(a4 + v16, v20, v17);
}

uint64_t sub_1B0FD8()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v12, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v7, v0);
  v18 = sub_264490();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_1B125C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v12, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v4, v7, v0);
  v18 = sub_264490();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_1B14D8()
{
  v1 = v0;
  v2 = sub_2EF0(&qword_323A10, &unk_283BA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v52 = &v47 - v4;
  v5 = sub_2EF0(&qword_317AC8, &qword_269E38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v47 - v7;
  v8 = sub_25FEE0();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2602E0();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2602D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v47 - v23;
  v25 = sub_25FEB0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v1;
  v30 = v1;
  v32 = v31;
  sub_8198(v30, v24, &qword_3236C0, &qword_2838B0);
  if ((*(v26 + 48))(v24, 1, v32) == 1)
  {
    sub_8E80(v24, &qword_3236C0, &qword_2838B0);
  }

  else
  {
    (*(v26 + 32))(v29, v24, v32);
    (*(v17 + 104))(v20, enum case for Calendar.Component.day(_:), v16);
    sub_2602A0();
    sub_25FE80();
    v34 = v33;
    v35 = v53;
    (*(v54 + 8))(v15, v53);
    (*(v17 + 8))(v20, v16);
    if ((v34 & 1) == 0)
    {
      v36 = *(v47 + *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 28));
      v37 = v49;
      sub_2602A0();
      (*(v54 + 56))(v37, 0, 1, v35);
      v38 = sub_260300();
      (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
      v39 = v48;
      sub_25FED0();
      isa = sub_25FEC0().super.isa;
      (*(v50 + 8))(v39, v51);
      v41 = [v36 stringFromDateComponents:isa];

      if (v41)
      {
        v42 = sub_264460();
        v44 = v43;

        v59 = v42;
        v60 = v44;
        v57 = 32;
        v58 = 0xE100000000000000;
        v55 = 10;
        v56 = 0xE100000000000000;
        sub_10A84();
        v45 = sub_264AA0();
        (*(v26 + 8))(v29, v32);

        return v45;
      }
    }

    (*(v26 + 8))(v29, v32);
  }

  return 0;
}

uint64_t sub_1B1B10()
{
  v60 = sub_264410();
  v63 = *(v60 - 8);
  v1 = *(v63 + 64);
  __chkstk_darwin(v60);
  v61 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = &v49 - v4;
  v57 = sub_2601B0();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v57);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_260290();
  v58 = *(v64 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v64);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v49 - v16;
  v18 = sub_25FEB0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v0, v17, &qword_3236C0, &qword_2838B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8E80(v17, &qword_3236C0, &qword_2838B0);
    return 0;
  }

  else
  {
    v55 = v18;
    v56 = v19;
    (*(v19 + 32))(v22, v17, v18);
    v24 = [objc_allocWithZone(NSDateFormatter) init];
    sub_260260();
    isa = sub_260240().super.isa;
    v26 = v58;
    v27 = *(v58 + 8);
    v53 = v58 + 8;
    v54 = v27;
    v27(v13, v64);
    [v24 setLocale:isa];

    v28 = sub_264420();
    [v24 setLocalizedDateFormatFromTemplate:v28];

    sub_25FEA0();
    v29 = sub_260160().super.isa;
    v30 = *(v5 + 8);
    v31 = v57;
    v30(v8, v57);
    v51 = v24;
    v52 = v22;
    v32 = [v24 stringFromDate:v29];

    v33 = sub_264460();
    v49 = v34;
    v50 = v33;

    sub_25FE90();
    v35 = sub_260160().super.isa;
    v30(v8, v31);
    v36 = [v24 stringFromDate:v35];

    v57 = sub_264460();
    v38 = v37;

    v39 = v62;
    sub_2643A0();
    sub_260260();
    v40 = v63;
    v41 = v60;
    (*(v63 + 16))(v61, v39, v60);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v44 = v64;
    (*(v26 + 16))(v59, v13, v64);
    v45 = sub_264490();
    v47 = v46;
    v54(v13, v44);
    (*(v40 + 8))(v39, v41);
    v65 = v50;
    v66 = v49;
    v67._countAndFlagsBits = 32;
    v67._object = 0xE100000000000000;
    sub_264530(v67);
    v68._countAndFlagsBits = v45;
    v68._object = v47;
    sub_264530(v68);

    v69._countAndFlagsBits = 32;
    v69._object = 0xE100000000000000;
    sub_264530(v69);
    v70._countAndFlagsBits = v57;
    v70._object = v38;
    sub_264530(v70);

    v23 = v65;
    (*(v56 + 8))(v52, v55);
  }

  return v23;
}

uint64_t sub_1B2140@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v1 = sub_2EF0(&qword_323A10, &unk_283BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v50 = &v47 - v3;
  v4 = sub_2EF0(&qword_317AC8, &qword_269E38);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v47 = &v47 - v6;
  v7 = sub_25FEE0();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260290();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = sub_264410();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  sub_2643A0();
  sub_260260();
  (*(v20 + 16))(v23, v26, v19);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v12 + 16))(v15, v18, v11);
  v48 = sub_264490();
  v30 = v29;
  (*(v12 + 8))(v18, v11);
  (*(v20 + 8))(v26, v19);
  v31 = type metadata accessor for ReadingSummaryFrameViewModel(0);
  v32 = v49;
  v33 = *(v49 + *(v31 + 28));
  v34 = v47;
  sub_2602A0();
  v35 = sub_2602E0();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = sub_260300();
  (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  v46 = *(v32 + *(v31 + 20));
  sub_25FED0();
  isa = sub_25FEC0().super.isa;
  (*(v51 + 8))(v10, v52);
  v38 = [v33 stringFromDateComponents:isa];

  if (v38)
  {
    v39 = sub_264460();
    v41 = v40;

    v58 = v39;
    v59 = v41;
    v56 = 32;
    v57 = 0xE100000000000000;
    v54 = 10;
    v55 = 0xE100000000000000;
    sub_10A84();
    v38 = sub_264AA0();
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v53;
  *v53 = v48;
  v44[1] = v30;
  v44[2] = v38;
  v44[3] = v43;
  type metadata accessor for PlatterItem.Configuration(0);
  v44[4] = 0;
  v44[5] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B2708@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_260290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = sub_264410();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  sub_2643A0();
  sub_260260();
  (*(v11 + 16))(v14, v17, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v6, v9, v2);
  v20 = sub_264490();
  v22 = v21;
  (*(v3 + 8))(v9, v2);
  (*(v11 + 8))(v17, v10);
  v23 = sub_1B14D8();
  v25 = v24;
  v26 = sub_1B1B10();
  *a1 = v20;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v25;
  a1[4] = v26;
  a1[5] = v27;
  type metadata accessor for PlatterItem.Configuration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B29C4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_2EF0(&qword_323980, &qword_283AA8);
  v1 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v41 = (&v39 - v2);
  v3 = sub_2630C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2EF0(&qword_323988, &qword_283AB0);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v10 = &v39 - v9;
  v11 = sub_260D00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for PlatterItem.Configuration(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E50(v40, v22, type metadata accessor for PlatterItem.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v26 = *(v22 + 2);
    *(v25 + 32) = *(v22 + 1);
    *(v25 + 48) = v26;
    v27 = v41;
    *v41 = sub_1B5A44;
    v27[1] = v25;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_323990, &qword_283AB8);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8);
    return sub_261F80();
  }

  else
  {
    v29 = v12;
    v30 = *(v12 + 32);
    v39 = v11;
    v30(v18, v22, v11);
    (*(v12 + 16))(v15, v18, v11);
    sub_263120();
    (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
    v31 = sub_263100();

    (*(v4 + 8))(v7, v3);
    LODWORD(v40) = sub_262120();
    v32 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v34 = v33;
    KeyPath = swift_getKeyPath();
    v36 = &v10[*(v44 + 36)];
    v37 = type metadata accessor for PlatterModifier(0);
    *(v36 + *(v37 + 20)) = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v36 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v38 = (v36 + *(v37 + 24));
    *v38 = v32;
    v38[1] = v34;
    *v10 = v31;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    *(v10 + 5) = v40;
    sub_8198(v10, v41, &qword_323988, &qword_283AB0);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_323990, &qword_283AB8);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8);
    sub_261F80();
    sub_8E80(v10, &qword_323988, &qword_283AB0);
    return (*(v29 + 8))(v18, v39);
  }
}

uint64_t sub_1B2F44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v50 = a4;
  v51 = a5;
  v48 = a1;
  v49 = a3;
  v52 = a7;
  v9 = type metadata accessor for TextLockup();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261420();
  if (v14 <= 200.0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  HIDWORD(v47) = v15;
  v16 = v10[15];
  v17 = enum case for Font.Design.default(_:);
  v18 = sub_2625C0();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v13 + v16, v17, v18);
  (*(v19 + 56))(v13 + v16, 0, 1, v18);
  v20 = sub_261E60();
  v21 = sub_263580();
  v23 = v22;
  v24 = v10[19];
  v25 = enum case for DynamicTypeSize.accessibility2(_:);
  v26 = sub_261690();
  (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v27 = v10[7];
  *(v13 + v27) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v28 = v13 + v10[8];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v13 + v10[9];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v13 + v10[10];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  *(v13 + v10[11]) = BYTE4(v47);
  v31 = (v13 + v10[12]);
  v32 = v49;
  *v31 = v48;
  v31[1] = a2;
  v33 = (v13 + v10[13]);
  v34 = v50;
  *v33 = v32;
  v33[1] = v34;
  v33[2] = 0;
  v35 = (v13 + v10[14]);
  *v35 = v51;
  v35[1] = a6;
  *(v13 + v10[16]) = v20;
  v36 = (v13 + v10[17]);
  *v36 = v21;
  v36[1] = v23;
  *(v13 + v10[18]) = 0;

  v37 = sub_263520();
  v39 = v38;
  KeyPath = swift_getKeyPath();
  v41 = sub_2EF0(&qword_3239D0, &qword_283B60);
  v42 = v52;
  v43 = (v52 + *(v41 + 36));
  v44 = type metadata accessor for PlatterModifier(0);
  *(v43 + *(v44 + 20)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *v43 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = (v43 + *(v44 + 24));
  *v45 = v37;
  v45[1] = v39;
  return sub_1B5BF8(v13, v42, type metadata accessor for TextLockup);
}

uint64_t sub_1B32D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PlatterModifier(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_263640();
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

uint64_t sub_1B34E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v63 = a2;
  v3 = type metadata accessor for ColorConstants(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_323AC0, &qword_283C18);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  v11 = sub_2EF0(&qword_323AC8, &qword_283C20);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  v16 = sub_2EF0(&qword_323AD0, &qword_283C28);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v21 = sub_2EF0(&qword_323AD8, &qword_283C30);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v61 - v24;
  v26 = sub_262500();
  sub_2610C0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_2EF0(&qword_323AE0, &qword_283C38);
  (*(*(v35 - 8) + 16))(v10, v61, v35);
  v36 = &v10[*(v7 + 44)];
  *v36 = v26;
  *(v36 + 1) = v28;
  *(v36 + 2) = v30;
  *(v36 + 3) = v32;
  *(v36 + 4) = v34;
  v36[40] = 0;
  v37 = (v2 + *(type metadata accessor for PlatterModifier(0) + 24));
  v59 = *v37;
  v60 = v37[1];
  sub_261830();
  sub_22148(v10, v15, &qword_323AC0, &qword_283C18);
  v38 = &v15[*(v12 + 44)];
  v39 = v69;
  *(v38 + 4) = v68;
  *(v38 + 5) = v39;
  *(v38 + 6) = v70;
  v40 = v65;
  *v38 = v64;
  *(v38 + 1) = v40;
  v41 = v67;
  *(v38 + 2) = v66;
  *(v38 + 3) = v41;
  v42 = v62;
  sub_404B8(v62);
  v43 = [objc_opt_self() quaternaryLabelColor];
  sub_263070();
  sub_263000();

  sub_1B60CC(v42, type metadata accessor for ColorConstants);
  v44 = sub_263000();

  v45 = sub_262500();
  sub_22148(v15, v20, &qword_323AC8, &qword_283C20);
  v46 = &v20[*(v17 + 44)];
  *v46 = v44;
  v46[8] = v45;
  sub_1B32D4(&v25[*(v22 + 44)]);
  sub_22148(v20, v25, &qword_323AD0, &qword_283C28);
  v47 = sub_2EF0(&qword_323AE8, &qword_283C40);
  v48 = v63;
  v49 = (v63 + *(v47 + 36));
  v50 = *(sub_2617E0() + 20);
  v51 = enum case for RoundedCornerStyle.continuous(_:);
  v52 = sub_261DD0();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  __asm { FMOV            V0.2D, #12.0 }

  *v49 = _Q0;
  *&v49[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  return sub_22148(v25, v48, &qword_323AD8, &qword_283C30);
}

uint64_t sub_1B3988()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v7 = *(v0 + 16);

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

BOOL sub_1B3AD4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    v7 = *(v0 + 16);

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return (v6 & 1) == 0;
}

uint64_t ReadingSummaryFrame.sharableView.getter()
{
  v1 = type metadata accessor for ReadingSummaryFrame(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_1B4E50(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSummaryFrame);
  sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame);
  return sub_263310();
}

uint64_t ReadingSummaryFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingSummaryFrame(0) + 28);
  v4 = *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 24);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_1B4EB8(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_1B4EB8(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t ReadingSummaryFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v4 = type metadata accessor for ReadingSummaryFrame(0);
  v5 = (a2 + *(v4 + 24));
  v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *v5 = sub_262F40();
  v7 = enum case for ColorScheme.light(_:);
  v8 = sub_261180();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5 + v6, v7, v8);
  (*(v9 + 56))(v5 + v6, 0, 1, v8);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  return sub_1B5BF8(a1, a2 + *(v4 + 28), type metadata accessor for ReadingSummaryFrameViewModel);
}

uint64_t ReadingSummaryFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_261E50();
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = 0;
  v3 = sub_2EF0(&qword_3236D0, &qword_283910);
  sub_1B4088(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_2EF0(&qword_3236D8, &unk_283948) + 36));
  v6 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v7 = enum case for ColorScheme.dark(_:);
  v8 = sub_261180();
  result = (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  return result;
}

uint64_t sub_1B4088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_3239D8, &qword_283B68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for TextLockup();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v47 - v17);
  v19 = *(type metadata accessor for ReadingSummaryFrame(0) + 28);
  v20 = sub_1B0FD8();
  v51 = v21;
  v52 = v20;
  v22 = sub_1B125C();
  v49 = v23;
  v50 = v22;
  v24 = v12[15];
  v25 = sub_2625C0();
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  v48 = sub_261E60();
  v47 = sub_263580();
  v27 = v26;
  v28 = v12[19];
  v29 = enum case for DynamicTypeSize.accessibility2(_:);
  v30 = sub_261690();
  (*(*(v30 - 8) + 104))(v18 + v28, v29, v30);
  *v18 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v31 = v12[7];
  *(v18 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v32 = v18 + v12[8];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v18 + v12[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = v18 + v12[10];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v18 + v12[11]) = 5;
  v35 = (v18 + v12[12]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v18 + v12[13]);
  v37 = v51;
  *v36 = v52;
  v36[1] = v37;
  v36[2] = 0;
  v38 = (v18 + v12[14]);
  v39 = v49;
  *v38 = v50;
  v38[1] = v39;
  v40 = v47;
  *(v18 + v12[16]) = v48;
  v41 = (v18 + v12[17]);
  *v41 = v40;
  v41[1] = v27;
  *(v18 + v12[18]) = 0;
  *v10 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  *(v10 + 1) = v42;
  *(v10 + 2) = 0x4030000000000000;
  v10[24] = 0;
  *(v10 + 4) = 0x4030000000000000;
  v10[40] = 0;
  v43 = sub_2EF0(&qword_3239E0, &qword_283B70);
  sub_1B44C4(a1, &v10[*(v43 + 44)]);
  sub_1B4E50(v18, v15, type metadata accessor for TextLockup);
  sub_8198(v10, v7, &qword_3239D8, &qword_283B68);
  *a2 = 0;
  *(a2 + 8) = 1;
  v44 = sub_2EF0(&qword_3239E8, &qword_283B78);
  sub_1B4E50(v15, a2 + v44[12], type metadata accessor for TextLockup);
  sub_8198(v7, a2 + v44[16], &qword_3239D8, &qword_283B68);
  v45 = a2 + v44[20];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_8E80(v10, &qword_3239D8, &qword_283B68);
  sub_1B60CC(v18, type metadata accessor for TextLockup);
  sub_8E80(v7, &qword_3239D8, &qword_283B68);
  return sub_1B60CC(v15, type metadata accessor for TextLockup);
}

uint64_t sub_1B44C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_3239F0, &qword_283B80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *a1;

    sub_264900();
    v16 = sub_2624B0();
    v22 = v5;
    v17 = v16;
    sub_260D10();

    v5 = v22;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v14, 0);
    (*(v10 + 8))(v13, v9);
    if (v23)
    {
      goto LABEL_6;
    }
  }

  if ((sub_1B3988() & 1) == 0)
  {
    v20 = 1;
    return (*(v5 + 56))(a2, v20, 1, v4);
  }

LABEL_6:
  *v8 = 0;
  v8[8] = 1;
  v18 = sub_2EF0(&qword_3239F8, &qword_283B88);
  sub_1B474C(&v8[*(v18 + 36)]);
  v19 = &v8[*(v4 + 36)];
  *v19 = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  sub_22148(v8, a2, &qword_3239F0, &qword_283B80);
  v20 = 0;
  return (*(v5 + 56))(a2, v20, 1, v4);
}

uint64_t sub_1B474C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for PlatterItem(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v34 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v33 - v5);
  v33 = sub_2EF0(&qword_323A00, &qword_283B90);
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v33 - v10;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  __chkstk_darwin(v14);
  v35 = &v33 - v15;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  v22 = *(type metadata accessor for ReadingSummaryFrame(0) + 28);
  sub_1B2140(v6);
  sub_1B3AD4();
  sub_263720();
  sub_2613C0();
  sub_2613D0();
  sub_2613E0();

  if (sub_1B3AD4())
  {
    sub_263630();
    sub_2635B0();
  }

  v23 = sub_261400();

  sub_1B5BF8(v6, v18, type metadata accessor for PlatterItem);
  v24 = v33;
  *&v18[*(v33 + 36)] = v23;
  sub_22148(v18, v21, &qword_323A00, &qword_283B90);
  v25 = v34;
  sub_1B2708(v34);
  sub_1B3AD4();
  sub_263720();
  sub_2613C0();
  sub_2613D0();
  sub_2613E0();

  if (sub_1B3AD4())
  {
    sub_263630();
    sub_2635B0();
  }

  v26 = sub_261400();

  sub_1B5BF8(v25, v13, type metadata accessor for PlatterItem);
  *&v13[*(v24 + 36)] = v26;
  v27 = v35;
  sub_22148(v13, v35, &qword_323A00, &qword_283B90);
  v28 = v36;
  sub_8198(v21, v36, &qword_323A00, &qword_283B90);
  v29 = v37;
  sub_8198(v27, v37, &qword_323A00, &qword_283B90);
  v30 = v38;
  sub_8198(v28, v38, &qword_323A00, &qword_283B90);
  v31 = sub_2EF0(&qword_323A08, &qword_283B98);
  sub_8198(v29, v30 + *(v31 + 48), &qword_323A00, &qword_283B90);
  sub_8E80(v27, &qword_323A00, &qword_283B90);
  sub_8E80(v21, &qword_323A00, &qword_283B90);
  sub_8E80(v29, &qword_323A00, &qword_283B90);
  return sub_8E80(v28, &qword_323A00, &qword_283B90);
}

uint64_t sub_1B4BEC(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_1B4E50(v4, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingSummaryFrame);
  sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame);
  return sub_263310();
}

uint64_t sub_1B4CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 28);
  v5 = *(type metadata accessor for ReadingSummaryFrameViewModel(0) + 24);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_1B4EB8(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_1B4EB8(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_1B4DE8@<X0>(_BYTE *a1@<X8>)
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    result = 1;
  }

  else
  {
    result = sub_261BC0();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1B4E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4F18(uint64_t a1)
{
  result = sub_1B4EB8(&qword_3236E0, type metadata accessor for ReadingSummaryFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4F70(uint64_t a1)
{
  result = sub_1B4EB8(&qword_3236C8, type metadata accessor for ReadingSummaryFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_260550();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B5124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_3236C0, &qword_2838B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_260550();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1B5238()
{
  sub_1B5F90(319, &qword_323750, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_260550();
    if (v1 <= 0x3F)
    {
      sub_1B530C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B530C()
{
  result = qword_323758;
  if (!qword_323758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_323758);
  }

  return result;
}

uint64_t sub_1B536C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PageBackground(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ReadingSummaryFrameViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B549C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = type metadata accessor for PageBackground(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ReadingSummaryFrameViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1B55BC()
{
  sub_3E7AC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageBackground(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ReadingSummaryFrameViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B565C()
{
  result = qword_323828;
  if (!qword_323828)
  {
    sub_2F9C(&qword_3236D8, &unk_283948);
    sub_8E38(&qword_323830, &qword_323838, &qword_283A28);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323828);
  }

  return result;
}

uint64_t sub_1B5754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterItem.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B57F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterItem.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B5884()
{
  result = type metadata accessor for PlatterItem.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B58F0()
{
  sub_260D00();
  if (v0 <= 0x3F)
  {
    sub_1B5964();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B5964()
{
  if (!qword_323950)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_323950);
    }
  }
}

uint64_t sub_1B59FC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

unint64_t sub_1B5A54()
{
  result = qword_323998;
  if (!qword_323998)
  {
    sub_2F9C(&qword_323988, &qword_283AB0);
    sub_1B5B10();
    sub_1B4EB8(&qword_3239C0, type metadata accessor for PlatterModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323998);
  }

  return result;
}

unint64_t sub_1B5B10()
{
  result = qword_3239A0;
  if (!qword_3239A0)
  {
    sub_2F9C(&qword_3239A8, &unk_283AC0);
    sub_2F960();
    sub_8E38(&qword_3239B0, &qword_3239B8, &qword_283AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3239A0);
  }

  return result;
}

uint64_t sub_1B5BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B5C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_317878, &unk_27E490);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B5D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_317878, &unk_27E490);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1B5EA4()
{
  sub_1B5F90(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1B5F90(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B5FF8()
{
  result = qword_323AB0;
  if (!qword_323AB0)
  {
    sub_2F9C(&qword_323AB8, &qword_283BC0);
    sub_1B5A54();
    sub_8E38(&qword_3239C8, &qword_323990, &qword_283AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AB0);
  }

  return result;
}

uint64_t sub_1B60CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B6130()
{
  result = qword_323AF0;
  if (!qword_323AF0)
  {
    sub_2F9C(&qword_323AE8, &qword_283C40);
    sub_1B61E8();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AF0);
  }

  return result;
}

unint64_t sub_1B61E8()
{
  result = qword_323AF8;
  if (!qword_323AF8)
  {
    sub_2F9C(&qword_323AD8, &qword_283C30);
    sub_1B6274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323AF8);
  }

  return result;
}

unint64_t sub_1B6274()
{
  result = qword_323B00;
  if (!qword_323B00)
  {
    sub_2F9C(&qword_323AD0, &qword_283C28);
    sub_1B632C();
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B00);
  }

  return result;
}

unint64_t sub_1B632C()
{
  result = qword_323B08;
  if (!qword_323B08)
  {
    sub_2F9C(&qword_323AC8, &qword_283C20);
    sub_1B63B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B08);
  }

  return result;
}

unint64_t sub_1B63B8()
{
  result = qword_323B10;
  if (!qword_323B10)
  {
    sub_2F9C(&qword_323AC0, &qword_283C18);
    sub_8E38(&qword_323B18, &qword_323AE0, &qword_283C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B10);
  }

  return result;
}

uint64_t Metrics.Impression.init(artistName:id:idType:impressionIndex:impressionType:isSG:kind:name:narratorName:parentId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = 0xEA00000000006C61;
  v18 = *a5;
  v19 = *a7;
  if (v19 <= 3)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = 0xE400000000000000;
        v21 = 1802398060;
      }

      else
      {
        v20 = 0xE600000000000000;
        v21 = 0x70756B636F6CLL;
      }
    }

    else if (v19)
    {
      v20 = 0xE600000000000000;
      v21 = 0x7265746C6966;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x6E6F74747562;
    }
  }

  else if (v19 <= 5)
  {
    if (v19 == 4)
    {
      v20 = 0xE400000000000000;
      v21 = 1701273968;
    }

    else
    {
      v20 = 0xE700000000000000;
      v21 = 0x77656976657270;
    }
  }

  else if (v19 == 6)
  {
    v20 = 0xE700000000000000;
    v21 = 0x6E6F6974636573;
  }

  else if (v19 == 7)
  {
    v20 = 0xE600000000000000;
    v21 = 0x68736F6F7773;
  }

  else
  {
    v20 = 0xEA00000000007075;
    v21 = 0x6B636F6C5F707075;
  }

  if (!v18)
  {
    v17 = 0xE600000000000000;
  }

  *a9 = a1;
  a9[1] = a2;
  result = 0x64695F737469;
  if (v18)
  {
    result = 0x69746E6575716573;
  }

  a9[2] = a3;
  a9[3] = a4;
  v23 = 0x696F56736B6F6F42;
  if ((a8 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0xEB00000000736563;
  if ((a8 & 1) == 0)
  {
    v24 = 0;
  }

  a9[4] = result;
  a9[5] = v17;
  a9[6] = a6;
  a9[7] = v21;
  a9[8] = v20;
  a9[9] = a10;
  a9[10] = a11;
  a9[11] = a12;
  a9[12] = a13;
  a9[13] = a14;
  a9[14] = a15;
  a9[15] = v23;
  a9[16] = v24;
  a9[17] = a16;
  a9[18] = a17;
  return result;
}

uint64_t static Metrics.createImpressionMetrics(impression:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_263DD0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_2601E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263E10();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = a1[7];
  v24 = a1[6];
  v25 = v12;
  v26 = a1[8];
  v27 = *(a1 + 18);
  v13 = a1[3];
  v20 = a1[2];
  v21 = v13;
  v14 = a1[5];
  v22 = a1[4];
  v23 = v14;
  v15 = a1[1];
  v18 = *a1;
  v19 = v15;
  if (*(&v15 + 1))
  {
  }

  else
  {

    sub_2601D0();
    sub_2601C0();
    (*(v6 + 8))(v9, v5);
  }

  sub_263E00();
  sub_169820();
  sub_263DC0();
  sub_D0B04(_swiftEmptyArrayStorage);
  sub_D0B04(_swiftEmptyArrayStorage);
  return sub_263E20();
}

uint64_t Metrics.Impression.impressionType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Metrics.Impression.impressionType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t Metrics.Impression.kind.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Metrics.Impression.kind.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Metrics.Impression.name.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Metrics.Impression.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Metrics.Impression.narratorName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Metrics.Impression.narratorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t Metrics.Impression.narratorType.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t Metrics.Impression.narratorType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t Metrics.Impression.parentId.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t Metrics.Impression.parentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t Metrics.ImpressionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E6F74747562;
    v7 = 1802398060;
    if (v1 != 2)
    {
      v7 = 0x70756B636F6CLL;
    }

    if (*v0)
    {
      v6 = 0x7265746C6966;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E6F6974636573;
    v3 = 0x68736F6F7773;
    if (v1 != 7)
    {
      v3 = 0x6B636F6C5F707075;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1701273968;
    if (v1 != 4)
    {
      v4 = 0x77656976657270;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B6C70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x726F74617272616ELL;
    v5 = 0x726F74617272616ELL;
    if (a1 != 8)
    {
      v5 = 0x6449746E65726170;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 1684957547;
    if (a1 != 5)
    {
      v6 = 1701667182;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x614E747369747261;
    v2 = 0x657079546469;
    if (a1 != 2)
    {
      v2 = 0x6973736572706D69;
    }

    if (a1)
    {
      v1 = 25705;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B6DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6DE8(uint64_t a1)
{
  v2 = sub_1B736C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B6E24(uint64_t a1)
{
  v2 = sub_1B736C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Metrics.Impression.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_323B20, &qword_283C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23[14] = v1[3];
  v23[15] = v10;
  v11 = v1[4];
  v23[12] = v1[5];
  v23[13] = v11;
  v12 = v1[6];
  v23[10] = v1[7];
  v23[11] = v12;
  v13 = v1[8];
  v14 = v1[9];
  v15 = v1[11];
  v23[8] = v1[10];
  v23[9] = v13;
  v23[5] = v15;
  v16 = v1[13];
  v23[6] = v1[12];
  v23[7] = v14;
  v17 = v1[14];
  v18 = v1[15];
  v23[3] = v16;
  v23[4] = v17;
  v19 = v1[16];
  v23[1] = v18;
  v23[2] = v19;
  v20 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_1B736C();
  sub_265140();
  v32 = 0;
  v21 = v23[16];
  sub_264E40();
  if (v21)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v31 = 1;
  sub_264E40();
  v30 = 2;
  sub_264E70();
  v29 = 3;
  sub_264E80();
  v28 = 4;
  sub_264E70();
  v27 = 5;
  sub_264E40();
  v26 = 6;
  sub_264E40();
  v25 = 7;
  sub_264E40();
  v24 = 8;
  sub_264E40();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Metrics.ImpressionType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_301390;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  v8 = 9;
  if (v6 < 9)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

Swift::Int sub_1B7194()
{
  v1 = *v0;
  sub_265050();
  sub_1E27DC();
  return sub_265080();
}

Swift::Int sub_1B71E4()
{
  v1 = *v0;
  sub_265050();
  sub_1E27DC();
  return sub_265080();
}

uint64_t sub_1B7234@<X0>(uint64_t *a1@<X8>)
{
  result = Metrics.ImpressionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ImpressionMetrics.withImpressionIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_263E50();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = sub_263E30();
  sub_263DF0();
  v6(v10, 0);
  v10[3] = &type metadata for Int;
  v10[0] = a1;
  v7 = sub_263E40();
  sub_D0B0(v10, 0x6973736572706D69, 0xEF7865646E496E6FLL);
  return v7(&v9, 0);
}

unint64_t sub_1B736C()
{
  result = qword_323B28;
  if (!qword_323B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B28);
  }

  return result;
}

unint64_t sub_1B73C0(uint64_t a1)
{
  result = sub_16A034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B73EC()
{
  result = qword_323B30;
  if (!qword_323B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B30);
  }

  return result;
}

uint64_t sub_1B7440@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1B744C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 144);

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_1B7490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1B74D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7570()
{
  result = qword_323B38;
  if (!qword_323B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B38);
  }

  return result;
}

unint64_t sub_1B75C8()
{
  result = qword_323B40;
  if (!qword_323B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B40);
  }

  return result;
}

unint64_t sub_1B7620()
{
  result = qword_323B48;
  if (!qword_323B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_323B48);
  }

  return result;
}

uint64_t sub_1B7674(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEF7865646E496E6FLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEE00657079546E6FLL || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC000000656D614ELL || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC00000065707954 || (sub_264F10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6449746E65726170 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1B79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *(*(v10 + 16) + 8);
  v11 = *(v17[0] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_264F90();
  sub_264F00();
  v14 = *(*(a4 + 8) + 8);
  v15 = sub_264390();
  (*(v6 + 8))(v9, a3);
  if (v15)
  {
    return sub_264310();
  }

  sub_264300();
  sub_264310();
  return sub_264800();
}

uint64_t sub_1B7C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[10] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(&qword_318458, &unk_26B270);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    v18 = sub_261690();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[17];

    return v19(v20, a2, v18);
  }
}
uint64_t sub_23A490()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_23A4C8()
{
  v1 = sub_3E7CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A58C(uint64_t *a1)
{
  v3 = *(sub_3E7CA4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_23800C(a1, v4, v5);
}

uint64_t sub_23A608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A66C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ArtworkLoaderModifier(0);

  return sub_2356CC(a1);
}

uint64_t sub_23A6EC(uint64_t *a1)
{
  v3 = *(type metadata accessor for ArtworkLoaderModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23575C(a1, v4);
}

unint64_t sub_23A760()
{
  result = qword_4FB4C8;
  if (!qword_4FB4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB458);
    sub_23A7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB4C8);
  }

  return result;
}

unint64_t sub_23A7EC()
{
  result = qword_4FB4D0;
  if (!qword_4FB4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB3F8);
    type metadata accessor for Artwork.Configuration(255);
    sub_239718();
    sub_23A608(&qword_4FB448, type metadata accessor for Artwork.Configuration);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB4D0);
  }

  return result;
}

uint64_t ArtworkShadow.init(color:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

double sub_23A92C()
{
  sub_3EB764();
  v0 = sub_3EB794();

  qword_4FB4D8 = v0;
  result = 6.0;
  unk_4FB4E0 = xmmword_40EEB0;
  qword_4FB4F0 = 0x4000000000000000;
  return result;
}

uint64_t static ArtworkShadow.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8A60 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_4FB4F0;
  *a1 = qword_4FB4D8;
  *(a1 + 8) = unk_4FB4E0;
  *(a1 + 24) = v2;
}

uint64_t View.artworkStyle<A>(shape:shadow:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v19 = a3;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArtworkStyleModifier();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v18 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  v16 = a2[1];
  v18 = *a2;
  v21[0] = v18;
  v21[1] = v16;
  sub_23ABD8(v10, v21, a4, v15);

  sub_3EB6E4();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23ABD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for ArtworkStyleModifier();
  v7 = (a4 + v6[9]);
  v8 = a2[1];
  *v7 = *a2;
  v7[1] = v8;
  v9 = v6[10];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v6[11];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t View.artworkStyle<A>(shape:shadowColor:shadowRadius:shadowOffsetY:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v21[2] = a5;
  v21[1] = a3;
  v12 = *(a4 - 8);
  __chkstk_darwin(a1);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArtworkStyleModifier();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v21 - v18;
  (*(v12 + 16))(v14, a1, a4, v17);
  *&v22 = a2;
  *(&v22 + 1) = a6;
  v23 = 0;
  v24 = a7;
  sub_23ABD8(v14, &v22, a4, v19);

  sub_3EB6E4();
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_23AE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3EAAF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_23D344(v2 + *(a1 + 40), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_3EA304();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_3ED9E4();
    v14 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_23B074(uint64_t a1)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 44));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_3ED9E4();
  v10 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_23968C(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_23B1CC(uint64_t a1)
{
  v2 = sub_3EA304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_23AE88(a1, &v12 - v7);
  (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);
  LOBYTE(a1) = sub_3EA2F4();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v8, v2);
  if (a1)
  {
    sub_3EB784();
  }

  else
  {
    sub_3EB764();
  }

  v10 = sub_3EB794();

  return v10;
}

uint64_t sub_23B344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_3EA744();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_3EA744();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_3EADF4();
  v29 = *(v13 - 8);
  __chkstk_darwin(v13);
  v28 = &v24 - v14;
  if (*(v2 + *(a1 + 36)))
  {
    v15 = *(a1 + 24);
    v25 = v12;
    v16 = *(v15 + 16);

    sub_3EB664();
    v33 = v16;
    v34 = &protocol witness table for _ShadowEffect;
    v17 = v13;
    WitnessTable = swift_getWitnessTable();
    sub_3EB6A4();
    (*(v26 + 8))(v6, v4);
    v31 = WitnessTable;
    v13 = v17;
    v32 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    v19 = v25;
    sub_E63BC(v9);
    v26 = v4;
    v20 = *(v27 + 8);
    v20(v9, v7);
    sub_E63BC(v19);
    v21 = v28;
    sub_E50C8(v9, v7);

    v20(v9, v7);
    v20(v19, v7);
  }

  else
  {
    v16 = *(*(a1 + 24) + 16);
    v43 = v16;
    v44 = &protocol witness table for _ShadowEffect;
    v41 = swift_getWitnessTable();
    v42 = &protocol witness table for _PaddingLayout;
    v22 = swift_getWitnessTable();
    v21 = v28;
    sub_E51C0(v22, v7, &type metadata for EmptyView);
  }

  v39 = v16;
  v40 = &protocol witness table for _ShadowEffect;
  v37 = swift_getWitnessTable();
  v38 = &protocol witness table for _PaddingLayout;
  v35 = swift_getWitnessTable();
  v36 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  sub_E63BC(v21);
  return (*(v29 + 8))(v21, v13);
}

uint64_t ArtworkStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v65 = a3;
  v4 = *(a2 + 16);
  v66 = a2;
  sub_3EA744();
  sub_3EA744();
  v5 = sub_3EADF4();
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v41 - v6;
  v7 = *(a2 + 24);
  v81[0] = v4;
  v81[1] = &type metadata for Color;
  v81[2] = &type metadata for EmptyView;
  v81[3] = v7;
  v81[4] = &protocol witness table for Color;
  v81[5] = &protocol witness table for EmptyView;
  v8 = sub_3EA774();
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v41 - v9;
  swift_getWitnessTable();
  sub_3EAEA4();
  v45 = sub_3EA384();
  v10 = sub_3EA744();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v56 = sub_3EAE94();
  v49 = sub_3EA744();
  v58 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v41 - v13;
  v53 = v8;
  WitnessTable = swift_getWitnessTable();
  v57 = sub_3EA814();
  v44 = sub_3EA744();
  v60 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = &v41 - v14;
  v79 = *(v7 + 16);
  v80 = &protocol witness table for _ShadowEffect;
  v77 = swift_getWitnessTable();
  v78 = &protocol witness table for _PaddingLayout;
  v75 = swift_getWitnessTable();
  v76 = &protocol witness table for EmptyView;
  v47 = v5;
  v48 = swift_getWitnessTable();
  v52 = sub_3EADC4();
  v41 = sub_3EA744();
  v55 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50 = &v41 - v17;
  v18 = swift_getWitnessTable();
  v19 = v4;
  sub_3EB714();
  v20 = swift_getWitnessTable();
  v73 = v18;
  v74 = v20;
  v21 = swift_getWitnessTable();
  v22 = v42;
  sub_3EB4E4();
  (*(v51 + 8))(v12, v10);
  v23 = v66;
  v81[0] = sub_23B1CC(v66);
  sub_23B074(v23);
  v24 = v59;
  sub_23C12C(v81, 1, v19, &type metadata for Color, v7, &protocol witness table for Color, v59);

  sub_3EBA74();
  v25 = swift_getWitnessTable();
  v71 = v21;
  v72 = v25;
  v26 = v49;
  v27 = swift_getWitnessTable();
  v28 = v46;
  v29 = v53;
  sub_3EB694();
  (*(v62 + 8))(v24, v29);
  (*(v58 + 8))(v22, v26);
  v30 = v63;
  sub_23B344(v66, v63);
  sub_3EBA74();
  v31 = swift_getWitnessTable();
  v69 = v27;
  v70 = v31;
  v32 = v44;
  v33 = swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  sub_3EB444();
  (*(v64 + 8))(v30, v35);
  (*(v60 + 8))(v28, v32);
  v36 = swift_getWitnessTable();
  v67 = v33;
  v68 = v36;
  v37 = v41;
  swift_getWitnessTable();
  v38 = v50;
  sub_E63BC(v34);
  v39 = *(v55 + 8);
  v39(v34, v37);
  sub_E63BC(v38);
  return (v39)(v38, v37);
}

uint64_t sub_23C12C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_3EA354();
  sub_23C1D4(a1, v15, a2, a3, a4, a5, a6, a7);
  return sub_23D2F0(v15);
}

uint64_t sub_23C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin(a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_23C394(v21, v17, a2, v28, v25, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

uint64_t sub_23C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
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
  v46 = sub_3EADC4();
  __chkstk_darwin(v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  __chkstk_darwin(v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  __chkstk_darwin(v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3EA514();
  __chkstk_darwin(v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_3EA2D4();
  v25 = __chkstk_darwin(v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_3EA504();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_3EA2C4();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_3EBA74();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_3EADB4();
  return sub_3EA704();
}

BOOL _s8ShelfKit13ArtworkShadowV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  v8 = sub_3EB754();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

void sub_23C89C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23CED4(319, &qword_4FB578, &type metadata for ArtworkShadow, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_23CE7C();
      if (v2 <= 0x3F)
      {
        sub_23CED4(319, &qword_4FB3A8, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C99C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_3EA304() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if ((v22 + 1) >= 2)
    {
      return v22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v21 = *(v6 + 48);

    return v21(a1, v7, v5);
  }
}

double sub_23CBE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_3EA304() - 8);
  v13 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v13 = *(v11 + 64);
  }

  v14 = *(v8 + 64);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v13 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 32) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v19 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return result;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFE)
      {
        v23 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *v23 = 0u;
          v23[1] = 0u;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v23 = a2;
        }
      }

      else
      {
        v22 = *(v24 + 56);

        v22(a1, a2, v9, v7);
      }

      return result;
    }
  }

  v20 = ~v10 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return result;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }

  return result;
}

void sub_23CE7C()
{
  if (!qword_4FB580)
  {
    sub_3EA304();
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB580);
    }
  }
}

void sub_23CED4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23CF24()
{
  type metadata accessor for ArtworkStyleModifier();
  sub_3EA744();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23CFB8()
{
  type metadata accessor for ArtworkStyleModifier();
  swift_getWitnessTable();
  sub_3EAEA4();
  sub_3EA384();
  sub_3EA744();
  sub_3EAE94();
  sub_3EA744();
  sub_3EA774();
  swift_getWitnessTable();
  sub_3EA814();
  sub_3EA744();
  sub_3EA744();
  sub_3EA744();
  sub_3EADF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_3EADC4();
  sub_3EA744();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_23D3DC@<D0>(uint64_t a1@<X8>)
{
  static ShelfCell.cellShape(presentation:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double static ShelfCell.cellShape(presentation:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

unint64_t sub_23D448()
{
  result = qword_4FB590;
  if (!qword_4FB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB590);
  }

  return result;
}

uint64_t sub_23D634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23D67C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ShelfCellShape(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for ShelfCellShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfCellShape(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

double ShelfCellHeight.artworkInsets(position:)(_BYTE *a1)
{
  if (*v1 <= 0.0)
  {
    return UIEdgeInsetsZero.top;
  }

  if (!*a1)
  {
    return 0.0;
  }

  if (*a1 == 1)
  {
    return UIEdgeInsetsZero.top;
  }

  return v1[1];
}

uint64_t ShelfCellListSeparatorMode.Placement.bottomVisible.getter()
{
  v1 = *v0;
  v2 = v1 & 0xFE;
  v3 = (v1 >> 8) & 1;
  if (v2 == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t static ShelfCellListSeparatorMode.Placement.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  if (v4 == 2)
  {
    return *a2 == 2;
  }

  if (v4 == 3)
  {
    return *a2 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v6 = v3 ^ v2;
  v7 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_23D928(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  if (v4 == 2)
  {
    return *a2 == 2;
  }

  if (v4 == 3)
  {
    return *a2 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v6 = v3 ^ v2;
  v7 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

__n128 ShelfCellListSeparatorMode.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ShelfCellListSeparatorMode.layout.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  return result;
}

__n128 ShelfCellListSeparatorMode.init(placement:layout:)@<Q0>(_WORD *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

unint64_t sub_23D9FC()
{
  result = qword_4FB598;
  if (!qword_4FB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB598);
  }

  return result;
}

uint64_t sub_23DAC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 2;
  }

  else
  {
    v4 = -3;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23DB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfCellListSeparatorMode.Placement(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 65283;
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = a1[1];
        if (!a1[1])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 16)) - 65283;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for ShelfCellListSeparatorMode.Placement(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *sub_23DCE8(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ShelfCellListSeparatorMode.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23DD4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DD68(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_23DD98()
{
  sub_3EE3C4(52);
  v0._object = 0x800000000042B530;
  v0._countAndFlagsBits = 0xD00000000000001ALL;
  sub_3ED3D4(v0);
  swift_getMetatypeMetadata();
  v1._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v1);

  v2._countAndFlagsBits = 0x7374636570786520;
  v2._object = 0xE900000000000020;
  sub_3ED3D4(v2);
  swift_getAssociatedTypeWitness();
  v3._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v3);

  v4._countAndFlagsBits = 0x766965636572202CLL;
  v4._object = 0xEB00000000206465;
  sub_3ED3D4(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  sub_3EE554();
  sub_3EE574();
  __break(1u);
}

uint64_t ShelfSwiftUICell.init(presentation:model:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v33 = a3;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_3EE0F4();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = a1[1];
  v19 = a1[6];
  v20 = *(a1 + 2);
  v21 = a1[7];
  v30 = *a1;
  v31 = v21;
  v22 = *(a1 + 1);
  v35 = a2;
  sub_1F958(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  v23 = swift_dynamicCast();
  v24 = *(v11 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v10, 1, 1, AssociatedTypeWitness);
    (*(v28 + 8))(v10, v29);
    sub_23DD98();
  }

  v25 = v20 | (v19 << 32);
  v24(v10, 0, 1, AssociatedTypeWitness);
  (*(v11 + 32))(v17, v10, AssociatedTypeWitness);
  v36[0] = v30;
  v36[1] = v18;
  v38 = BYTE4(v25);
  v37 = v25;
  v39 = v31;
  v40 = v22;
  (*(v11 + 16))(v14, v17, AssociatedTypeWitness);
  (*(v34 + 32))(v36, v14, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return (*(v11 + 8))(v17, AssociatedTypeWitness);
}

uint64_t static ShelfSwiftUICell.interactionContextView(presentation:model:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_3EE0F4();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[6];
  v17 = *(a1 + 2);
  v27 = a1[7];
  v18 = *(a1 + 1);
  v26 = a2;
  sub_1F958(a2, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  v19 = swift_dynamicCast();
  v20 = *(v10 + 56);
  if (!v19)
  {
    v20(v9, 1, 1, AssociatedTypeWitness);
    (*(v24 + 8))(v9, v25);
    sub_23DD98();
  }

  v21 = v17 | (v16 << 32);
  v20(v9, 0, 1, AssociatedTypeWitness);
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v30[0] = v14;
  v30[1] = v15;
  v32 = BYTE4(v21);
  v31 = v21;
  v33 = v27;
  v34 = v18;
  v22 = (*(v29 + 40))(v30, v13, v28);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return v22;
}

uint64_t ShelfAttributes.pageSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfAttributes() + 20);
  v4 = sub_3E6B44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShelfAttributes()
{
  result = qword_4FB5F8;
  if (!qword_4FB5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfAttributes.init(sizeClass:pageSize:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ShelfAttributes() + 20);
  v6 = sub_3E6B44();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static ShelfAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_3E6B84();
  v5 = v4;
  sub_3E6B84();
  if (v5 != v6)
  {
    return 0;
  }

  v7 = *(type metadata accessor for ShelfAttributes() + 20);

  return static PageSize.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t sub_23E6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_3E6B84();
  v7 = v6;
  sub_3E6B84();
  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a3 + 20);

  return static PageSize.== infix(_:_:)(a1 + v9, a2 + v9);
}

uint64_t sub_23E750()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_3EE3C4(52);
  v14._object = 0x800000000042B530;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  sub_3ED3D4(v14);
  swift_getObjectType();
  v15._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v15);

  v16._countAndFlagsBits = 0x7374636570786520;
  v16._object = 0xE900000000000020;
  sub_3ED3D4(v16);
  swift_getAssociatedTypeWitness();
  v17._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v17);

  v18._countAndFlagsBits = 0x766965636572202CLL;
  v18._object = 0xEB00000000206465;
  sub_3ED3D4(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  sub_3EE554();
  v5 = v12;
  v4 = v13;
  sub_3E9944();

  v6 = sub_3E99F4();
  v7 = sub_3ED9E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    v10 = sub_2EDD0(v5, v4, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t TypedShelfUIKitCell.apply(model:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_3EE0F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-v9 - 8];
  v11 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v12);
  v14 = &v19[-v13 - 8];
  sub_1F958(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    (*(a3 + 32))(v14, a2, a3);
    return (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    return sub_23E750();
  }
}

BOOL ShelfUIKitCell.doesCellOverrideClickAction.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4);
  v2 = v4[3] != 0;
  sub_FCF8(v4, &qword_4EDE00);
  return v2;
}

uint64_t ShelfUIKitCell.perform(_:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v7 = sub_3EC204();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3ECE84();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v29 - v19;
  if ((*(a5 + 24))(a4, a5, v18))
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v21 = sub_3E6434();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v20, v30, v31);

    sub_FCF8(v20, &qword_5005B0);
    sub_1F958(v32, v34);
    v35 = v22;
    sub_E69A0(v34, v33);
    v23 = swift_allocObject();
    v24 = v33[1];
    v23[1] = v33[0];
    v23[2] = v24;
    v23[3] = v33[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    v25 = sub_3ECE04();
    v26 = sub_3ED6F4();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = &unk_4072F0;
    v27[5] = v23;
    v27[6] = v25;

    sub_E8ECC(0, 0, v16, &unk_407300, v27);

    sub_E91B8(v34);
    return v25;
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE14();
    sub_3ECB94();

    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v29 + 104))(v9, enum case for ActionOutcome.unsupported(_:), v7);
    return sub_3ECDB4();
  }
}

uint64_t sub_23F1D4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_23F214()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_23F3D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3E6B44();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_23F490(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_3E6B44();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23F530()
{
  result = sub_3E6B44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t View.satisfyingObjectGraph<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v6 = sub_3EE0F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SatisfyingObjectGraphViewModifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a2, v6, v12);
  sub_23F7A8(v9, v14);
  sub_3EB6E4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23F7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EE0F4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = a2 + *(type metadata accessor for SatisfyingObjectGraphViewModifier() + 28);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23F83C()
{
  type metadata accessor for SatisfyingObjectGraphViewModifier();
  sub_3EA744();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_23F8D0()
{
  sub_3EE0F4();
  if (v0 <= 0x3F)
  {
    sub_23FD50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23F958(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_23FAD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_23FD50()
{
  if (!qword_4FB3B0)
  {
    sub_3EC444();
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB3B0);
    }
  }
}

uint64_t sub_23FDEC(uint64_t a1)
{
  v2 = v1;
  v24[0] = sub_3EAAF4();
  v4 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_3EE0F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = *(v7 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8, v14);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v17 = v2 + *(a1 + 28);
    v18 = *v17;
    v19 = *(v17 + 8);

    if ((v19 & 1) == 0)
    {
      sub_3ED9E4();
      v20 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v24[0]);
      return v24[1];
    }
  }

  else
  {
    (*(v12 + 32))(v16, v11, v7);
    v21 = *(v2 + *(a1 + 28) + 8);

    if ((v21 & 1) == 0)
    {
      sub_3ED9E4();
      v22 = sub_3EB034();
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();

      (*(v4 + 8))(v6, v24[0]);
    }

    v18 = sub_3EC3A4();

    (*(v12 + 8))(v16, v7);
  }

  return v18;
}

uint64_t sub_240188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  swift_getWitnessTable();
  v4 = sub_3EAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F16D0);
  v25 = v4;
  v5 = sub_3EA744();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_3EC444();
  v23 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_2404B8();
  v33 = WitnessTable;
  v34 = v10;
  v24 = swift_getWitnessTable();
  v30 = v5;
  v31 = v8;
  v32 = v24;
  v26 = &opaque type descriptor for <<opaque return type of View.actionDispatcher<A>(from:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = sub_23FDEC(a2);
  swift_getKeyPath();
  v30 = v18;
  sub_3EB4B4();

  v19 = swift_checkMetadataState();
  v20 = v24;
  sub_3EB3B4();

  (*(v27 + 8))(v7, v5);
  v30 = v5;
  v31 = v19;
  v32 = v20;
  swift_getOpaqueTypeConformance2();
  sub_E63BC(v14);
  v21 = *(v12 + 8);
  v21(v14, OpaqueTypeMetadata2);
  sub_E63BC(v17);
  return (v21)(v17, OpaqueTypeMetadata2);
}

unint64_t sub_2404B8()
{
  result = qword_4F16D8;
  if (!qword_4F16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F16D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16D8);
  }

  return result;
}

uint64_t sub_240524()
{
  type metadata accessor for SatisfyingObjectGraphViewModifier();
  swift_getWitnessTable();
  sub_3EAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F16D0);
  sub_3EA744();
  sub_3EC444();
  swift_getWitnessTable();
  sub_2404B8();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_240644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24182C(&qword_4FB770, &type metadata accessor for PageSize);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageSize.getter()
{
  sub_240720();

  return sub_3EAB04();
}

unint64_t sub_240720()
{
  result = qword_4FB6B0;
  if (!qword_4FB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB6B0);
  }

  return result;
}

uint64_t sub_2407B4(uint64_t a1)
{
  v2 = sub_3E6B44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_240720();
  sub_3EAB14();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.pageSize.setter(uint64_t a1)
{
  v2 = sub_3E6B44();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_240720();
  sub_3EAB14();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.pageSize.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_3E6B44();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[5] = v8;
  v4[6] = sub_240720();
  sub_3EAB04();
  return sub_240B34;
}

void sub_240B34(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_3EAB14();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_3EAB14();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t View.setPageSizeEnvironment(additionalTextMargin:)(double a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_3E6B44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  v11 = type metadata accessor for PageSizeEnvironmentSetter();
  __chkstk_darwin(v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = a1;
  v16[3] = 0x4079000000000000;
  sub_3EB8B4();
  v14 = v16[5];
  *(v13 + 1) = v16[4];
  *(v13 + 2) = v14;
  sub_3E6B34();
  (*(v5 + 16))(v7, v10, v4);
  sub_3EB8B4();
  (*(v5 + 8))(v10, v4);
  sub_3EB6E4();
  return sub_240E98(v13);
}

uint64_t type metadata accessor for PageSizeEnvironmentSetter()
{
  result = qword_4FB720;
  if (!qword_4FB720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E98(uint64_t a1)
{
  v2 = type metadata accessor for PageSizeEnvironmentSetter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240F38()
{
  type metadata accessor for PageSizeEnvironmentSetter();
  sub_3EA744();
  sub_24182C(&qword_4FB6B8, type metadata accessor for PageSizeEnvironmentSetter);
  return swift_getWitnessTable();
}

uint64_t sub_240FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB6C0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2410C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB6C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_241174()
{
  sub_241208();
  if (v0 <= 0x3F)
  {
    sub_241258();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241208()
{
  if (!qword_4FB730)
  {
    v0 = sub_3EB8F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB730);
    }
  }
}

void sub_241258()
{
  if (!qword_4FB738)
  {
    sub_3E6B44();
    v0 = sub_3EB8F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB738);
    }
  }
}

uint64_t sub_2412DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v32 = a2;
  v4 = sub_3EA674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for PageSizeEnvironmentSetter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_241874(v3, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  sub_2419E4(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  (*(v5 + 104))(v10, enum case for CoordinateSpace.local(_:), v4);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_241A48;
  *(v16 + 24) = v15;
  v17 = sub_3EBA74();
  v19 = v18;
  v20 = *(v5 + 32);
  v20(v7, v10, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  v20((v22 + v21), v7, v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB778);
  v24 = v32;
  (*(*(v23 - 8) + 16))(v32, v33, v23);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB780) + 36));
  *v25 = sub_241B50;
  v25[1] = v22;
  v25[2] = v17;
  v25[3] = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_241AC0;
  *(v26 + 24) = v16;
  v27 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB788) + 36));
  *v27 = sub_241C08;
  v27[1] = v26;
  KeyPath = swift_getKeyPath();
  v29 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB790) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB6C0);
  result = sub_3EB8C4();
  *v29 = KeyPath;
  return result;
}

uint64_t sub_241678(uint64_t a1, double a2)
{
  v4 = sub_3E6B44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  result = sub_3EB8C4();
  if (v15 != a2)
  {
    v15 = a2;
    v16 = v11;
    v17 = v12;
    sub_3EB8D4();
    sub_3E6B34();
    type metadata accessor for PageSizeEnvironmentSetter();
    (*(v5 + 16))(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB6C0);
    sub_3EB8D4();
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_24182C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageSizeEnvironmentSetter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2418D8()
{
  v1 = (type metadata accessor for PageSizeEnvironmentSetter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_3E6B44();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB6C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2419E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageSizeEnvironmentSetter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241A48(double a1)
{
  v3 = *(type metadata accessor for PageSizeEnvironmentSetter() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_241678(v4, a1);
}

uint64_t sub_241AC8()
{
  v1 = sub_3EA674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_241B50@<X0>(uint64_t *a1@<X8>)
{
  sub_3EA674();

  return sub_32E10C(a1);
}

uint64_t sub_241BD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_241C14()
{
  result = qword_4FB7A8;
  if (!qword_4FB7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB790);
    sub_241CCC();
    sub_886BC(&qword_4FB7E8, &qword_4FB798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB7A8);
  }

  return result;
}

unint64_t sub_241CCC()
{
  result = qword_4FB7B0;
  if (!qword_4FB7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB788);
    sub_241D84();
    sub_886BC(&qword_4FB7D8, &qword_4FB7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB7B0);
  }

  return result;
}

unint64_t sub_241D84()
{
  result = qword_4FB7B8;
  if (!qword_4FB7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB780);
    sub_886BC(&qword_4FB7C0, &qword_4FB778);
    sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB7B8);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeEyebrowView()
{
  result = qword_4FB890;
  if (!qword_4FB890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EpisodeEyebrowView.textCase.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EpisodeEyebrowView() + 28);

  return sub_241F44(a1, v3);
}

uint64_t sub_241F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeEyebrowView.lineLimit.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for EpisodeEyebrowView();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t EpisodeEyebrowView.init(asPartOf:model:wantsCheckmarkWhenPlayed:showBookmarkState:showsSubscriptionBadge:showsExplicitBadge:listContextOverride:textCase:lineLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  v36 = a7;
  v34 = a4;
  v35 = a5;
  v33 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - v18;
  v20 = type metadata accessor for EpisodeEyebrowView();
  v21 = *(v20 + 28);
  v22 = sub_3EB294();
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  *(a9 + 16) = a3;
  v23 = a9 + v21;
  v24 = a8;
  sub_24231C(a8, v23);
  if (a6)
  {
    v25 = *(a2 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit);
  }

  else
  {
    v25 = 0;
  }

  v26 = a9 + *(v20 + 32);
  *(a9 + 17) = v25;
  *v26 = a10;
  *(v26 + 8) = v33 & 1;
  v27 = v36;
  sub_FBD0(v36, v19, &qword_4EF468);

  _s8ShelfKit23EpisodeCaptionGeneratorC8asPartOf7episode18trackBookmarkState22showsSubscriptionBadge0m8ExplicitO019listContextOverrideAC9JetEngine15BaseObjectGraphC_AA06LegacyC6LockupCS3b18PodcastsFoundation14EyebrowBuilderC04ListR0OSgtcfC_0(a1, a2, v34 & 1, v35 & 1, 0, v19);
  type metadata accessor for EpisodeCaptionGenerator();
  sub_243DEC(&qword_4FB7F8, type metadata accessor for EpisodeCaptionGenerator);
  v28 = sub_3EA5B4();
  v30 = v29;

  sub_FCF8(v24, &qword_4FB7F0);
  result = sub_FCF8(v27, &qword_4EF468);
  *a9 = v28;
  *(a9 + 8) = v30;
  return result;
}

uint64_t sub_24231C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeEyebrowView.init(asPartOf:model:showsSubscriptionBadge:viewIsRTL:textCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = type metadata accessor for EpisodeEyebrowView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[16] = 0;
  v16 = *(v15 + 28);
  v17 = sub_3EB294();
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
  v18 = &v14[*(v11 + 32)];
  *v18 = 1;
  v18[8] = 0;

  if (_s8ShelfKit23EpisodeCaptionGeneratorC8asPartOf13episodeHeader9viewIsRTL22showsSubscriptionBadge0n8ExplicitP0ACSg9JetEngine15BaseObjectGraphC_AA0cJ0CS3btcfC_0(a1, a2, a4, a3, 0))
  {
    v14[17] = *(a2 + 208);
    type metadata accessor for EpisodeCaptionGenerator();
    sub_243DEC(&qword_4FB7F8, type metadata accessor for EpisodeCaptionGenerator);
    v19 = sub_3EA5B4();
    v21 = v20;

    *v14 = v19;
    *(v14 + 1) = v21;
    sub_241F44(v24, &v14[v16]);
    sub_243644(v14, a6, type metadata accessor for EpisodeEyebrowView);
    (*(v12 + 56))(a6, 0, 1, v11);
    return sub_2436AC(v14, type metadata accessor for EpisodeEyebrowView);
  }

  else
  {
    sub_FCF8(v24, &qword_4FB7F0);

    sub_FCF8(&v14[v16], &qword_4FB7F0);
    return (*(v12 + 56))(a6, 1, 1, v11);
  }
}

uint64_t sub_242620()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v73)
  {
    sub_68DC4();
    v1 = sub_3EB394();
    v3 = v2;
    v5 = v4;
    v7 = v6 & 1;
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v7 = 0;
    v5 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v72 == 2 || (sub_3E8A94() & 1) == 0)
  {
    if (*(v0 + 16) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_3E9EA4();

      if (v72 == 1)
      {
        sub_3EB834();

        v70[12] = sub_3EB3A4();
        v70[13] = v26;
        v69 = v1;
        v70[14] = v27 & 1;
        v71[0] = v28;
        v71[1] = v1;
        v71[2] = v3;
        v71[3] = v7;
        v71[4] = v5;
        v65 = v5;
        v67 = v3;
        v63 = v7;
        sub_243E44(v1, v3, v7, v5);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        do
        {
          v34 = &v71[4 * v33++];
          while (1)
          {
            v35 = *(v34 - 3);
            v36 = *(v34 - 2);
            v37 = *(v34 - 1);
            v38 = *v34;
            if (!v29)
            {
              sub_243E44(*(v34 - 3), *(v34 - 2), *(v34 - 1), *v34);
              goto LABEL_26;
            }

            if (v38)
            {
              break;
            }

            v34 += 4;
            sub_243E88(v32, v31, v30 & 1);

            sub_94D30(v32, v31, v30 & 1);

            if (++v33 == 3)
            {
              v35 = v32;
              goto LABEL_29;
            }
          }

          sub_243E44(*(v34 - 3), *(v34 - 2), *(v34 - 1), *v34);
          sub_243E44(v32, v31, v30, v29);
          v39 = sub_3EB284();
          v55 = v40;
          v56 = v39;
          v42 = v41;
          v43 = v37 & 1;
          LOBYTE(v72) = v43;
          v44 = sub_3EB284();
          v59 = v45;
          v61 = v44;
          v53 = v46;
          v57 = v47;
          sub_243E98(v32, v31, v30, v29);
          sub_94D30(v35, v36, v43);

          sub_94D30(v32, v31, v30 & 1);

          sub_94D30(v56, v55, v42 & 1);

          LOBYTE(v37) = v53 & 1;
          v36 = v59;
          v35 = v61;
          v38 = v57;
LABEL_26:
          v29 = v38;
          v30 = v37;
          v31 = v36;
          v32 = v35;
        }

        while (v33 != 2);
LABEL_29:
        sub_243E98(v69, v67, v63, v65);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB938);
        swift_arrayDestroy();
        return v35;
      }
    }
  }

  else
  {
    sub_3EB834();

    sub_3EB3A4();
    v68 = v1;
    v70[0] = v8;
    v70[1] = v1;
    v70[2] = v3;
    v70[3] = v7;
    v70[4] = v5;
    v64 = v5;
    v66 = v3;
    v62 = v7;
    sub_243E44(v1, v3, v7, v5);
    sub_3ED304();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = &v70[4 * v13++];
      while (1)
      {
        v15 = *(v14 - 3);
        v16 = *(v14 - 2);
        v18 = *(v14 - 1);
        v17 = *v14;
        if (!v9)
        {
          sub_243E44(*(v14 - 3), *(v14 - 2), *(v14 - 1), *v14);
          goto LABEL_14;
        }

        if (v17)
        {
          break;
        }

        v14 += 4;
        sub_243E88(v12, v11, v10 & 1);

        sub_94D30(v12, v11, v10 & 1);

        if (++v13 == 3)
        {
          v15 = v12;
          goto LABEL_28;
        }
      }

      sub_243E44(*(v14 - 3), *(v14 - 2), *(v14 - 1), *v14);
      sub_243E44(v12, v11, v10, v9);

      v49 = sub_3EB284();
      v60 = v19;
      v58 = v20;

      v21 = v18 & 1;
      LOBYTE(v72) = v21;
      v22 = sub_3EB284();
      v52 = v23;
      v54 = v22;
      v50 = v24;
      v51 = v25;
      sub_243E98(v12, v11, v10, v9);
      sub_94D30(v15, v16, v21);

      sub_94D30(v12, v11, v10 & 1);

      sub_94D30(v49, v60, v58 & 1);

      LOBYTE(v18) = v50 & 1;
      v16 = v52;
      v15 = v54;
      v17 = v51;
LABEL_14:
      v9 = v17;
      v10 = v18;
      v11 = v16;
      v12 = v15;
    }

    while (v13 != 2);
LABEL_28:

    sub_243E98(v68, v66, v62, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB938);
    swift_arrayDestroy();
    return v15;
  }

  return v1;
}

uint64_t EpisodeEyebrowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_3E6044();
  __chkstk_darwin(v2 - 8);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3ED1F4();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ExplicitAppendingView();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB800);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB808);
  __chkstk_darwin(v47);
  v12 = &v44 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB810);
  __chkstk_darwin(v48);
  v14 = &v44 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB818);
  __chkstk_darwin(v51);
  v52 = &v44 - v15;
  v45 = sub_242620();
  v46 = v16;
  v18 = v17;
  v20 = v19;
  v53 = v1;
  v21 = *(v1 + 17);
  *(v7 + 8) = swift_getKeyPath();
  v7[72] = 0;
  v50 = v5;
  v22 = *(v5 + 28);
  *&v7[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEC08);
  swift_storeEnumTagMultiPayload();
  if (v21 != 1)
  {
    *(v7 + 6) = 0;
    *(v7 + 7) = 0xE000000000000000;
    if (!v20)
    {

      sub_FCF8(&v7[v22], &qword_4EEC10);
      (*(v49 + 56))(v10, 1, 1, v50);
      goto LABEL_9;
    }

    v25 = v46;
    *v7 = v45;
    *(v7 + 1) = v25;
    *(v7 + 2) = v18 & 1;
    *(v7 + 3) = v20;
    goto LABEL_7;
  }

  sub_3ED184();
  sub_3E6034();
  *(v7 + 6) = sub_3ED2A4();
  *(v7 + 7) = v23;
  if (!v20)
  {
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0x8000000000000000;
    *(v7 + 3) = 0;
LABEL_7:
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    goto LABEL_8;
  }

  v24 = v46;
  *v7 = v45;
  *(v7 + 1) = v24;
  *(v7 + 2) = v18 & 1 | 0x4000000000000000;
  *(v7 + 3) = v20;
  *(v7 + 2) = xmmword_40BCD0;
LABEL_8:
  sub_243644(v7, v10, type metadata accessor for ExplicitAppendingView);
  (*(v49 + 56))(v10, 0, 1, v50);
  sub_2436AC(v7, type metadata accessor for ExplicitAppendingView);
LABEL_9:
  v26 = type metadata accessor for EpisodeEyebrowView();
  v27 = *(v26 + 28);
  v28 = &v12[*(v47 + 36)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB820);
  v30 = v53;
  sub_FBD0(v53 + v27, v28 + *(v29 + 28), &qword_4FB7F0);
  *v28 = swift_getKeyPath();
  sub_FACC(v10, v12, &qword_4FB800);
  v31 = &v14[*(v48 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
  v33 = enum case for Image.Scale.small(_:);
  v34 = sub_3EB874();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  sub_FACC(v12, v14, &qword_4FB808);
  v35 = (v30 + *(v26 + 32));
  v36 = *v35;
  LOBYTE(v31) = *(v35 + 8);
  KeyPath = swift_getKeyPath();
  v38 = v52;
  sub_FACC(v14, v52, &qword_4FB810);
  v39 = v38 + *(v51 + 36);
  *v39 = KeyPath;
  *(v39 + 8) = v36;
  *(v39 + 16) = v31;
  v40 = sub_3EBAE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  LOBYTE(v36) = v55;
  v41 = v54;
  sub_FACC(v38, v54, &qword_4FB818);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB830);
  v43 = v41 + *(result + 36);
  *v43 = v40;
  *(v43 + 8) = v36;
  return result;
}

uint64_t String.eyebrowDefaultCased.getter(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
  }

  else
  {
    sub_68DC4();
    return sub_3EE174();
  }

  return a1;
}

uint64_t sub_243380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7F0);
  __chkstk_darwin(v2 - 8);
  sub_FBD0(a1, &v5 - v3, &qword_4FB7F0);
  return sub_3EAA54();
}

uint64_t sub_24344C(uint64_t a1)
{
  v2 = sub_3EB874();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA8C4();
}

uint64_t sub_243514@<X0>(uint64_t a1@<X8>)
{
  result = sub_3EAAC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2435D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_3EAAC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_243644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2436AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24373C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24380C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2438BC()
{
  sub_243968();
  if (v0 <= 0x3F)
  {
    sub_2439FC();
    if (v1 <= 0x3F)
    {
      sub_1CC230();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243968()
{
  if (!qword_4FB8A0)
  {
    type metadata accessor for EpisodeCaptionGenerator();
    sub_243DEC(&qword_4FB7F8, type metadata accessor for EpisodeCaptionGenerator);
    v0 = sub_3EA5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB8A0);
    }
  }
}

void sub_2439FC()
{
  if (!qword_4FB8A8)
  {
    sub_3EB294();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB8A8);
    }
  }
}

unint64_t sub_243A58()
{
  result = qword_4FB8E8;
  if (!qword_4FB8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB830);
    sub_243B10();
    sub_886BC(&qword_4FB928, &qword_4FB930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB8E8);
  }

  return result;
}

unint64_t sub_243B10()
{
  result = qword_4FB8F0;
  if (!qword_4FB8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB818);
    sub_243BC8();
    sub_886BC(&qword_4F16F8, &qword_4F16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB8F0);
  }

  return result;
}

unint64_t sub_243BC8()
{
  result = qword_4FB8F8;
  if (!qword_4FB8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB810);
    sub_243C80();
    sub_886BC(&qword_4FB920, &qword_4FB828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB8F8);
  }

  return result;
}

unint64_t sub_243C80()
{
  result = qword_4FB900;
  if (!qword_4FB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB808);
    sub_243D38();
    sub_886BC(&qword_4FB918, &qword_4FB820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB900);
  }

  return result;
}

unint64_t sub_243D38()
{
  result = qword_4FB908;
  if (!qword_4FB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB800);
    sub_243DEC(&qword_4FB910, type metadata accessor for ExplicitAppendingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB908);
  }

  return result;
}

uint64_t sub_243DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243E44(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_243E88(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243E88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243E98(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_94D30(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_243EE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_243F44(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_243FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v58 = sub_3EA674();
  v3 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  __chkstk_darwin(v5);
  v55 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB940);
  __chkstk_darwin(v7);
  v9 = (&v52 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB948);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB950);
  __chkstk_darwin(v53);
  v54 = &v52 - v13;
  sub_3EAFD4();
  v14 = 1;
  if ((v15 & 1) == 0)
  {
    v16 = (sub_3EAFD4() & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v14 = (v17 & 1) == 0 && v16;
  }

  *v9 = sub_3EBA74();
  v9[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB958);
  sub_244684(v14, v1, (v9 + *(v19 + 44)));
  v60[0] = v14;
  v20 = *v1;
  v64 = *(v1 + 16);
  v65[0] = v20;
  v62 = *(v1 + 32);
  v63 = *(v1 + 40);
  v21 = swift_allocObject();
  v22 = *(v1 + 16);
  v21[1] = *v1;
  v21[2] = v22;
  *(v21 + 41) = *(v1 + 25);
  sub_FBD0(v65, v61, &qword_4FB7A0);
  sub_FBD0(&v64, v61, &qword_4FB960);
  sub_FBD0(&v62, v61, &qword_4FB968);
  sub_886BC(&qword_4FB970, &qword_4FB940);
  sub_3EB6F4();

  sub_FCF8(v9, &qword_4FB940);
  v61[0] = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  sub_3EB8C4();
  v23 = sub_3EB084();
  sub_3EA264();
  v24 = &v12[*(v10 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_3EBA74();
  sub_3EA804();
  v29 = v54;
  sub_FACC(v12, v54, &qword_4FB948);
  v30 = (v29 + *(v53 + 36));
  v31 = v61[5];
  v30[4] = v61[4];
  v30[5] = v31;
  v30[6] = v61[6];
  v33 = v61[1];
  v32 = v61[2];
  *v30 = v61[0];
  v30[1] = v33;
  v34 = v61[3];
  v30[2] = v32;
  v30[3] = v34;
  v35 = swift_allocObject();
  v36 = v2[1];
  v35[1] = *v2;
  v35[2] = v36;
  *(v35 + 41) = *(v2 + 25);
  v37 = v55;
  v38 = v58;
  (*(v3 + 104))(v55, enum case for CoordinateSpace.local(_:), v58);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_244FCC;
  *(v39 + 24) = v35;
  sub_FBD0(v65, v60, &qword_4FB7A0);
  sub_FBD0(&v64, v60, &qword_4FB960);
  sub_FBD0(&v62, v60, &qword_4FB968);
  v40 = sub_3EBA74();
  v42 = v41;
  v43 = *(v3 + 32);
  v44 = v57;
  v43(v57, v37, v38);
  v45 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v46 = swift_allocObject();
  v43((v46 + v45), v44, v38);
  v47 = v59;
  sub_FACC(v29, v59, &qword_4FB950);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB978) + 36));
  *v48 = sub_241B50;
  v48[1] = v46;
  v48[2] = v40;
  v48[3] = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_241AC0;
  *(v49 + 24) = v39;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB980);
  v51 = (v47 + *(result + 36));
  *v51 = sub_241C08;
  v51[1] = v49;
  return result;
}

uint64_t sub_244684@<X0>(char a1@<W0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_3EA644();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB988);
  __chkstk_darwin(v50);
  v11 = &v48 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB990);
  __chkstk_darwin(v55);
  v13 = &v48 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB998);
  __chkstk_darwin(v57);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  __chkstk_darwin(v18);
  v58 = &v48 - v19;
  if (a1)
  {
    v52 = 0;
    v51 = 0;
    v54 = 0;
    v56 = 0;
    v53 = 0;
    v49 = 0;
    v20 = 0x3FEB333333333333;
  }

  else
  {
    v65 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
    sub_3EB8C4();
    sub_3EA354();
    v54 = v66;
    v56 = v67;
    v53 = v68;
    v51 = *(&v65 + 1);
    v52 = v65;
    v21 = sub_3EAFD4();
    if (v22)
    {
      v20 = 0;
    }

    else
    {
      v20 = v21;
    }

    v49 = 0x3FE0000000000000;
  }

  sub_3EA634();
  v64 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  sub_3EB8C4();
  sub_3EA354();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9A0);
  (*(v7 + 16))(&v11[*(v23 + 52)], v9, v6);
  *v11 = 0;
  *(v11 + 1) = v20;
  v24 = v61;
  *(v11 + 1) = v60;
  *(v11 + 2) = v24;
  *(v11 + 6) = v62;
  *&v11[*(v23 + 56)] = 256;
  v25 = sub_3EBA74();
  v27 = v26;
  (*(v7 + 8))(v9, v6);
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9A8) + 36)];
  *v28 = v25;
  v28[1] = v27;
  sub_3EBB54();
  v29 = &v11[*(v50 + 36)];
  *v29 = 0xBFF921FB54442D18;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  v64 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB960);
  sub_3EB8C4();
  if (v63)
  {
    v32 = 6.28318531;
  }

  else
  {
    v32 = 0.0;
  }

  sub_3EBB54();
  v34 = v33;
  v36 = v35;
  sub_FACC(v11, v13, &qword_4FB988);
  v37 = &v13[*(v55 + 36)];
  *v37 = v32;
  *(v37 + 1) = v34;
  *(v37 + 2) = v36;
  v64 = a2[1];
  sub_3EB8C4();
  if (v63 == 1)
  {
    sub_3EBAD4();
    v38 = sub_3EBAB4();
  }

  else
  {
    v38 = sub_3EBAE4();
  }

  v64 = a2[1];
  sub_3EB8C4();
  v39 = v63;
  sub_FACC(v13, v17, &qword_4FB990);
  v40 = v58;
  v41 = &v17[*(v57 + 36)];
  *v41 = v38;
  v41[8] = v39;
  sub_FACC(v17, v40, &qword_4FB998);
  v42 = v59;
  sub_FBD0(v40, v59, &qword_4FB998);
  v43 = v51;
  *a3 = v52;
  a3[1] = v43;
  v44 = v56;
  a3[2] = v54;
  a3[3] = v44;
  v45 = v49;
  a3[4] = v53;
  a3[5] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9B0);
  sub_FBD0(v42, a3 + *(v46 + 48), &qword_4FB998);

  sub_FCF8(v40, &qword_4FB998);
  sub_FCF8(v42, &qword_4FB998);
}

uint64_t sub_244C9C()
{
  sub_3EA374();
  sub_3EA784();
}

uint64_t sub_244D24(__int128 *a1)
{
  v2 = sub_3EAAF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v10 = *(a1 + 4);
  if (v11 != 1)
  {

    sub_3ED9E4();
    v6 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_FCF8(&v10, &qword_4FB968);
    (*(v3 + 8))(v5, v2);
  }

  sub_3E6C14();
  v9 = *a1;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  return sub_3EB8D4();
}

uint64_t objectdestroyTm_4()
{

  sub_23968C(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_244FD4()
{
  v1 = sub_3EA674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_24505C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_2450B8()
{
  result = qword_4FB9B8;
  if (!qword_4FB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB980);
    sub_245170();
    sub_886BC(&qword_4FB7D8, &qword_4FB7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB9B8);
  }

  return result;
}

unint64_t sub_245170()
{
  result = qword_4FB9C0;
  if (!qword_4FB9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB978);
    sub_245228();
    sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB9C0);
  }

  return result;
}

unint64_t sub_245228()
{
  result = qword_4FB9C8;
  if (!qword_4FB9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB950);
    sub_2452B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB9C8);
  }

  return result;
}

unint64_t sub_2452B4()
{
  result = qword_4FB9D0;
  if (!qword_4FB9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB940);
    sub_886BC(&qword_4FB970, &qword_4FB940);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB9D0);
  }

  return result;
}

uint64_t EpisodeCaptionGenerator.caption.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t EpisodeCaptionGenerator.bookmarkState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t EpisodeCaptionGenerator.isPlayed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

double sub_245530@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2455B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_245650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_2457D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_245854()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_2458E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_245A68@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_245AE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_245B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F8);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EpisodeCaptionGenerator.__allocating_init(asPartOf:source:playStateMachine:bookmarkStateMachine:listContext:showsSubscriptionBadge:showsExplicitBadge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = sub_2485B4(a1, v17, a3, a4, a5, a6, a7, v7, v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

uint64_t EpisodeCaptionGenerator.init(asPartOf:source:playStateMachine:bookmarkStateMachine:listContext:showsSubscriptionBadge:showsExplicitBadge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = __chkstk_darwin(v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_247B90(a1, v19, a3, a4, a5, a6, a7, v23[1], v15, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

uint64_t sub_245F0C()
{
  v0 = sub_3E8304();
  __chkstk_darwin(v0 - 8);
  v2 = &v5[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_3E8984();
    sub_3E9D74();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3E8984();
    v4 = sub_3E82D4();
    sub_10A060(v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v5[15] = v4 & 1;
    return sub_3E9EB4();
  }

  return result;
}

uint64_t sub_246068()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3E8984();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3E9EB4();
  }

  return result;
}

uint64_t EpisodeCaptionGenerator.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playStateMachine))
  {

    sub_3E8974();
  }

  v2 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__caption;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__isPlayed;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__bookmarkState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F8);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t EpisodeCaptionGenerator.__deallocating_deinit()
{
  EpisodeCaptionGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s8ShelfKit23EpisodeCaptionGeneratorC8asPartOf7episode18trackBookmarkState22showsSubscriptionBadge0m8ExplicitO019listContextOverrideAC9JetEngine15BaseObjectGraphC_AA06LegacyC6LockupCS3b18PodcastsFoundation14EyebrowBuilderC04ListR0OSgtcfC_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v70 = a5;
  v74 = a4;
  LODWORD(v65) = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB20);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v55 - v11;
  v72 = sub_3E7D14();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_3E8304();
  __chkstk_darwin(v67);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F8);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v55 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F0);
  v58 = *(v82 - 8);
  __chkstk_darwin(v82);
  v57 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v23 = sub_3E7CB4();
  v83 = *(v23 - 8);
  __chkstk_darwin(v23);
  v68 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v81 = &v55 - v26;
  __chkstk_darwin(v27);
  v86 = &v55 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E98);
  sub_3EC444();
  v85 = a1;
  sub_3ECD14();
  v29 = v89[0];
  type metadata accessor for LibraryEpisodeLockup();
  v30 = swift_dynamicCastClass();
  v84 = a2;
  v69 = v29;
  if (v30)
  {

    v80 = sub_3E8D34();
  }

  else
  {
    v80 = sub_3E8D34();
  }

  sub_248A60(a6, v22);
  v31 = v83;
  v32 = *(v83 + 48);
  v33 = v23;
  if (v32(v22, 1, v23) == 1)
  {
    sub_248A60(v84 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, v19);
    if (v32(v19, 1, v23) == 1)
    {
      v34 = v83;
      (*(v83 + 104))(v86, enum case for EyebrowBuilder.ListContext.single(_:), v33);
      if (v32(v19, 1, v33) != 1)
      {
        sub_248AD0(v19);
      }
    }

    else
    {
      v34 = v83;
      (*(v83 + 32))(v86, v19, v33);
    }

    if (v32(v22, 1, v33) != 1)
    {
      sub_248AD0(v22);
    }
  }

  else
  {
    (*(v31 + 32))(v86, v22, v23);
    v34 = v31;
  }

  v35 = v84;
  v79 = a6;
  if (v65)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B58);
    sub_3ECD14();
    if (swift_dynamicCastClass())
    {

      v36 = sub_3E8D34();
    }

    else
    {
      v36 = sub_3E8D34();
    }
  }

  else
  {
    v36 = 0;
  }

  v56 = *(v34 + 16);
  v56(v81, v86, v33);
  type metadata accessor for EpisodeCaptionGenerator();
  v37 = swift_allocObject();
  v89[3] = type metadata accessor for LegacyEpisodeLockup();
  v89[4] = sub_248B38(&qword_4FBB40, type metadata accessor for LegacyEpisodeLockup);
  v89[0] = v35;
  v38 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__caption;
  v88[0] = 0;
  v88[1] = 0;
  swift_retain_n();
  v39 = v80;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
  v40 = v57;
  sub_3E9E64();
  (*(v58 + 32))(v37 + v38, v40, v82);
  v41 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__isPlayed;
  LOBYTE(v88[0]) = 0;
  v42 = v59;
  sub_3E9E64();
  (*(v60 + 32))(v37 + v41, v42, v61);
  v43 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__bookmarkState;
  LOBYTE(v88[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4FBA68);
  v44 = v62;
  sub_3E9E64();
  (*(v63 + 32))(v37 + v43, v44, v66);
  v45 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB28);
  swift_allocObject();
  *(v37 + v45) = sub_3E9D94();
  *(v37 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_subscriptions) = _swiftEmptyArrayStorage;
  *(v37 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playStateMachine) = v39;
  *(v37 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_bookmarkStateMachine) = v36;

  sub_3E8984();
  sub_3E9D74();
  swift_allocObject();
  swift_weakInit();

  sub_3E8964();

  if (v36)
  {

    sub_3E8984();
    v46 = v88[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v87) = v46;

    sub_3E9EB4();
    swift_allocObject();
    swift_weakInit();

    sub_3E8964();
  }

  v65 = v36;
  if (v70)
  {
    sub_3E6784();
    sub_3EC394();
    sub_3E6774();
  }

  v47 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
  sub_1F958(v89, v88);
  v48 = v81;
  v56(v68, v81, v33);
  (*(v71 + 104))(v73, enum case for EyebrowBuilder.Style.default(_:), v72);
  sub_3E7D44();
  swift_allocObject();
  sub_3E7D34();
  v87 = *(v37 + v47);
  sub_248950();

  sub_3E7CE4();

  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  swift_beginAccess();
  v49 = v33;
  v50 = v76;
  sub_3E9E74();
  swift_endAccess();
  sub_3EA1B4();
  v51 = v77;
  v52 = v78;
  (*(v77 + 16))(v75, v50, v78);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();

  sub_248AD0(v79);
  (*(v51 + 8))(v50, v52);
  v53 = *(v83 + 8);
  v53(v48, v49);
  v53(v86, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  return v37;
}

uint64_t _s8ShelfKit23EpisodeCaptionGeneratorC8asPartOf13episodeHeader9viewIsRTL22showsSubscriptionBadge0n8ExplicitP0ACSg9JetEngine15BaseObjectGraphC_AA0cJ0CS3btcfC_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v75 = a5;
  v81 = a4;
  LODWORD(v68) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v52 - v11;
  v12 = sub_3E7D14();
  v76 = *(v12 - 8);
  v77 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_3E8304();
  __chkstk_darwin(v74);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F8);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v52 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v52 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F0);
  v66 = *(v80 - 8);
  __chkstk_darwin(v80);
  v20 = &v52 - v19;
  v21 = sub_3E7CB4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v25 = &v52 - v24;
  __chkstk_darwin(v26);
  v30 = &v52 - v29;
  if (*(a2 + 80) == 1)
  {

    return 0;
  }

  else
  {
    v57 = v28;
    v59 = v14;
    v63 = v8;
    v64 = v7;
    v54 = v16;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E98);
    v33 = a2;
    sub_3EC444();
    v65 = a1;
    sub_3ECD14();
    v34 = v84[0];
    sub_3E7D04();
    (*(v22 + 104))(v30, enum case for EyebrowBuilder.ListContext.episodeHeaderSubtitle(_:), v32);
    v58 = v34;
    v35 = sub_3E8D44();
    v61 = v22;
    v36 = v22 + 16;
    v37 = *(v22 + 16);
    v38 = v25;
    v60 = v30;
    v62 = v32;
    v56 = v36;
    v55 = v37;
    v37(v25, v30, v32);
    type metadata accessor for EpisodeCaptionGenerator();
    v31 = swift_allocObject();
    v84[3] = type metadata accessor for EpisodeHeader();
    v84[4] = sub_248B38(&qword_4FBB38, type metadata accessor for EpisodeHeader);
    v84[0] = v33;
    v39 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__caption;
    v83[0] = 0;
    v83[1] = 0;
    v68 = v33;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
    sub_3E9E64();
    (*(v66 + 32))(v31 + v39, v20, v80);
    v40 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__isPlayed;
    LOBYTE(v83[0]) = 0;
    v41 = v67;
    sub_3E9E64();
    (*(v69 + 32))(v31 + v40, v41, v70);
    v42 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__bookmarkState;
    LOBYTE(v83[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4FBA68);
    v43 = v71;
    sub_3E9E64();
    (*(v72 + 32))(v31 + v42, v43, v73);
    v44 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB28);
    swift_allocObject();
    *(v31 + v44) = sub_3E9D94();
    *(v31 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_subscriptions) = _swiftEmptyArrayStorage;
    *(v31 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playStateMachine) = v35;
    *(v31 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_bookmarkStateMachine) = 0;

    sub_3E8984();
    sub_3E9D74();
    swift_allocObject();
    swift_weakInit();

    sub_3E8964();

    if (v75)
    {
      sub_3E6784();
      sub_3EC394();
      sub_3E6774();
    }

    v45 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
    sub_1F958(v84, v83);
    v53 = v38;
    v46 = v62;
    v55(v57, v38, v62);
    (*(v76 + 104))(v59, enum case for EyebrowBuilder.Style.default(_:), v77);
    sub_3E7D44();
    swift_allocObject();
    sub_3E7D34();
    v82 = *(v31 + v45);
    sub_248950();

    sub_3E7CE4();

    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    swift_beginAccess();
    v47 = v79;
    sub_3E9E74();
    swift_endAccess();
    sub_3EA1B4();
    v48 = v63;
    v49 = v64;
    (*(v63 + 16))(v78, v47, v64);
    swift_beginAccess();
    sub_3E9E84();
    swift_endAccess();

    (*(v48 + 8))(v47, v49);
    v50 = *(v61 + 8);
    v50(v53, v46);
    v50(v60, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
  }

  return v31;
}

uint64_t sub_247B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = a7;
  v67 = a6;
  v74 = a5;
  v58 = a4;
  v60 = a3;
  v63 = a2;
  v52[1] = a1;
  v56 = a10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB20);
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v70 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = v52 - v14;
  v65 = sub_3E7D14();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v66 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3E7CB4();
  v68 = *(v16 - 8);
  v69 = v16;
  __chkstk_darwin(v16);
  v62 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_3E8304();
  __chkstk_darwin(v57);
  v53 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v59 = v52 - v20;
  __chkstk_darwin(v21);
  v55 = v52 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F8);
  v23 = *(v54 - 8);
  __chkstk_darwin(v54);
  v25 = v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v52 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB9F0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = v52 - v32;
  v77[3] = a9;
  v77[4] = v56;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v77);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0Tm, v63, a9);
  v35 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__caption;
  v76[0] = 0;
  v76[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
  sub_3E9E64();
  v36 = *(v31 + 32);
  v63 = v30;
  v37 = v30;
  v38 = v58;
  v36(a8 + v35, v33, v37);
  v39 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__isPlayed;
  LOBYTE(v76[0]) = 0;
  sub_3E9E64();
  (*(v27 + 32))(a8 + v39, v29, v26);
  v40 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator__bookmarkState;
  LOBYTE(v76[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4FBA68);
  sub_3E9E64();
  (*(v23 + 32))(a8 + v40, v25, v54);
  v41 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB28);
  swift_allocObject();
  *(a8 + v41) = sub_3E9D94();
  v42 = v60;
  *(a8 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_subscriptions) = _swiftEmptyArrayStorage;
  *(a8 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playStateMachine) = v42;
  *(a8 + OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_bookmarkStateMachine) = v38;
  if (v42)
  {

    swift_retain_n();
    v43 = v53;
    sub_3E8984();

    sub_2489FC(v43, v59);
    sub_3E9D74();
    swift_allocObject();
    swift_weakInit();

    sub_3E8964();

    if (!v38)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_storeEnumTagMultiPayload();

  sub_3E9D74();
  if (v38)
  {
LABEL_3:

    sub_3E8984();
    v44 = v76[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v75) = v44;

    sub_3E9EB4();
    swift_allocObject();
    swift_weakInit();

    sub_3E8964();
  }

LABEL_4:
  if (v61)
  {
    sub_3E6784();
    sub_3EC394();
    sub_3E6774();
  }

  v45 = OBJC_IVAR____TtC8ShelfKit23EpisodeCaptionGenerator_playState;
  sub_1F958(v77, v76);
  v47 = v68;
  v46 = v69;
  (*(v68 + 16))(v62, v74, v69);
  (*(v64 + 104))(v66, enum case for EyebrowBuilder.Style.default(_:), v65);
  sub_3E7D44();
  swift_allocObject();
  sub_3E7D34();
  v75 = *(a8 + v45);
  sub_248950();

  sub_3E7CE4();

  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  swift_beginAccess();
  v48 = v71;
  sub_3E9E74();
  swift_endAccess();
  sub_3EA1B4();
  v50 = v72;
  v49 = v73;
  (*(v72 + 16))(v70, v48, v73);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  (*(v47 + 8))(v74, v46);
  (*(v50 + 8))(v48, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  return a8;
}

uint64_t sub_2485B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  __chkstk_darwin(a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a2, a9);
  return sub_247B90(a1, v17, a3, a4, a5, v21, v22, v18, a9, a10);
}

uint64_t type metadata accessor for EpisodeCaptionGenerator()
{
  result = qword_4FBA48;
  if (!qword_4FBA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2487C8()
{
  sub_199374(319, &qword_4FBA58, &qword_4E9950);
  if (v0 <= 0x3F)
  {
    sub_1835E8();
    if (v1 <= 0x3F)
    {
      sub_199374(319, &qword_4FBA60, &unk_4FBA68);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_248950()
{
  result = qword_4FBB30;
  if (!qword_4FBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBB30);
  }

  return result;
}

uint64_t sub_2489B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2489FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8304();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EpisodeLibraryStateView.init(episode:graph:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B58);
  sub_3EC394();
  type metadata accessor for LibraryEpisodeLockup();
  if (swift_dynamicCastClass())
  {

    v2 = sub_3E8D34();
  }

  else
  {
    v2 = sub_3E8D34();
  }

  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4E90);
  sub_3EC394();
  if (swift_dynamicCastClass())
  {

    v3 = sub_3E8D34();
  }

  else
  {
    v3 = sub_3E8D34();
  }

  a1[1] = v3;
  return result;
}

uint64_t EpisodeLibraryStateView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB50);
  swift_allocObject();

  sub_24A244(v3, KeyPath);
  sub_886BC(&qword_4FBB58, &qword_4FBB50);
  v4 = sub_3EA5B4();
  v6 = v5;
  v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB68);
  swift_allocObject();

  sub_24A438(v8, v7);
  sub_886BC(&qword_4FBB70, &qword_4FBB68);
  result = sub_3EA5B4();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = result;
  a1[3] = v10;
  return result;
}

uint64_t EpisodeBookmarkStateView.init(stateMachine:)@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB50);
  swift_allocObject();

  sub_24A244(v3, KeyPath);
  sub_886BC(&qword_4FBB58, &qword_4FBB50);
  v4 = sub_3EA5B4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t EpisodeDownloadStateView.init(stateMachine:)@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB68);
  swift_allocObject();

  sub_24A438(v3, KeyPath);
  sub_886BC(&qword_4FBB70, &qword_4FBB68);
  v4 = sub_3EA5B4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t EpisodeBookmarkStateView.init(episode:graph:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B58);
  sub_3EC394();
  type metadata accessor for LibraryEpisodeLockup();
  if (swift_dynamicCastClass())
  {

    sub_3E8D34();
  }

  else
  {
    sub_3E8D34();
  }

  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBB50);
  swift_allocObject();

  sub_24A244(v3, KeyPath);
  sub_886BC(&qword_4FBB58, &qword_4FBB50);
  v4 = sub_3EA5B4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_249280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3E8984();
  *a1 = v3;
  return result;
}

double EpisodeBookmarkStateView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_2492F8(*(v1 + 8), &v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_2492F8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_3EA754();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3EAB34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC08);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v33 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v32 = &v28 - v17;
  (*(a1 + 24))(v34, v16);
  result = sub_3E8AA4();
  v19 = 0;
  v20 = 0;
  if (result)
  {
    v21 = sub_3EB834();
    v29 = v11;
    v30 = v21;
    sub_3EAB24();
    sub_3EBB54();
    sub_3EA764();
    v22 = sub_24AB4C(&qword_4FBC10, &type metadata accessor for OpacityTransition);
    v31 = a2;
    v28 = v22;
    v23 = v4;
    v24 = v12;
    v25 = sub_24AB4C(&qword_4FBC18, &type metadata accessor for ScaleTransition);
    v26 = v32;
    v27 = v29;
    sub_3EA2B4();
    (*(v5 + 8))(v7, v23);
    (*(v9 + 8))(v27, v8);
    (*(v13 + 16))(v33, v26, v24);
    v34[0] = v8;
    v34[1] = v23;
    v34[2] = v28;
    v34[3] = v25;
    a2 = v31;
    swift_getOpaqueTypeConformance2();
    v20 = sub_3EA464();
    result = (*(v13 + 8))(v26, v24);
    v19 = v30;
  }

  *a2 = v19;
  a2[1] = v20;
  return result;
}

uint64_t sub_2496C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54[1] = a1;
  v55 = sub_3EA754();
  v66 = *(v55 - 8);
  __chkstk_darwin(v55);
  v63 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_3EAB34();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC08);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBBF0);
  __chkstk_darwin(v10);
  v58 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBBE0);
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  __chkstk_darwin(v12);
  v57 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = v54 - v16;
  v17 = sub_3E8AE4();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 24);
  v23 = a2;
  v22(v19);
  LOBYTE(a2) = sub_3E8AD4();
  v24 = *(v18 + 8);
  v24(v21, v17);
  if (a2)
  {
    v25 = sub_3EB834();
    v54[0] = a3;
    v26 = v25;
    (v22)();
    v27 = sub_3E8AB4();
    v24(v21, v17);
    if (v27)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = sub_3EBA74();
    v31 = v30;
    v32 = v58;
    v33 = &v58[*(v10 + 36)];
    sub_249D64(v23, v33);
    v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC00) + 36));
    *v34 = v29;
    v34[1] = v31;
    *v32 = v26;
    v35 = v54[0];
    *(v32 + 8) = v28;
    v36 = v59;
    sub_3EAB24();
    sub_3EBB54();
    v37 = v63;
    sub_3EA764();
    v38 = sub_24AB4C(&qword_4FBC10, &type metadata accessor for OpacityTransition);
    v39 = sub_24AB4C(&qword_4FBC18, &type metadata accessor for ScaleTransition);
    v40 = v61;
    v41 = v65;
    v42 = v55;
    sub_3EA2B4();
    v43 = v42;
    (*(v66 + 8))(v37, v42);
    (*(v62 + 8))(v36, v41);
    v44 = v64;
    v45 = v67;
    (*(v64 + 16))(v60, v40, v67);
    v70 = v41;
    v71 = v43;
    v72 = v38;
    v73 = v39;
    swift_getOpaqueTypeConformance2();
    v46 = sub_3EA464();
    (*(v44 + 8))(v40, v45);
    v47 = v57;
    sub_FACC(v32, v57, &qword_4FBBF0);
    v48 = v68;
    *(v47 + *(v68 + 36)) = v46;
    v49 = v47;
    v50 = v56;
    sub_FACC(v49, v56, &qword_4FBBE0);
    a3 = v35;
    sub_FACC(v50, v35, &qword_4FBBE0);
    v51 = 0;
    v52 = v48;
  }

  else
  {
    v51 = 1;
    v52 = v68;
  }

  return (*(v69 + 56))(a3, v51, 1, v52);
}

uint64_t sub_249D64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A08);
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC20);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC28);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = sub_3E8AE4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 24))(v17);
  if ((*(v16 + 88))(v19, v15) == enum case for EpisodeDownloadState.downloading(_:))
  {
    (*(v16 + 96))(v19, v15);
    v20 = *v19;
    v21 = v19[8];
    if (v21)
    {
      v20 = 0;
    }

    v47 = v20;
    LOBYTE(v48) = v21;
    v53 = 0x3FF0000000000000;
    sub_24AB94();
    sub_3EA3B4();
    v53 = 0x4008000000000000;
    sub_3EB8B4();
    v22 = v47;
    v23 = v48;
    LOBYTE(v53) = 0;
    sub_3EB8B4();
    v24 = v47;
    v25 = v48;
    KeyPath = swift_getKeyPath();
    v47 = v22;
    v48 = v23;
    v49 = v24;
    v50 = v25;
    v51 = KeyPath;
    v52 = 0;
    sub_886BC(&qword_4F1A00, &qword_4F1A08);
    sub_24ABF0();
    sub_3EB424();

    (*(v44 + 8))(v5, v3);
    LOBYTE(v25) = sub_3EB084();
    sub_3EA264();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    (*(v42 + 32))(v11, v8, v43);
    v35 = v45;
    v36 = &v11[*(v45 + 36)];
    *v36 = v25;
    *(v36 + 1) = v28;
    *(v36 + 2) = v30;
    *(v36 + 3) = v32;
    *(v36 + 4) = v34;
    v36[40] = 0;
    sub_FACC(v11, v14, &qword_4FBC28);
    v37 = v46;
    sub_FACC(v14, v46, &qword_4FBC28);
    v38 = 0;
    v39 = v37;
    v40 = v35;
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    v38 = 1;
    v40 = v45;
    v39 = v46;
  }

  return (*(v9 + 56))(v39, v38, 1, v40);
}

void *sub_24A244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[5] = 0;
  v2[2] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v2[3] = sub_24AEC8;
  v2[4] = v6;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC50);
  sub_886BC(&qword_4FBC58, &qword_4FBC50);
  sub_3E9CC4();
  swift_allocObject();
  swift_weakInit();
  sub_3E9DC4();

  v7 = sub_3EA1A4();

  v3[5] = v7;

  return v3;
}

void *sub_24A438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[5] = 0;
  v2[2] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v2[3] = sub_24ACA0;
  v2[4] = v6;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC40);
  sub_886BC(&qword_4FBC48, &qword_4FBC40);
  sub_3E9CC4();
  swift_allocObject();
  swift_weakInit();
  sub_3E9DC4();

  v7 = sub_3EA1A4();

  v3[5] = v7;

  return v3;
}

uint64_t sub_24A614(uint64_t *a1, int a2)
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

uint64_t sub_24A65C(uint64_t result, int a2, int a3)
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

unint64_t sub_24A710()
{
  result = qword_4FBB88;
  if (!qword_4FBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBB90);
    sub_24A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBB88);
  }

  return result;
}

unint64_t sub_24A794()
{
  result = qword_4FBB98;
  if (!qword_4FBB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBA0);
    sub_24A818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBB98);
  }

  return result;
}

unint64_t sub_24A818()
{
  result = qword_4FBBA8;
  if (!qword_4FBBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBB0);
    sub_886BC(&qword_4FB168, &qword_4FB170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBBA8);
  }

  return result;
}

unint64_t sub_24A8D4()
{
  result = qword_4FBBB8;
  if (!qword_4FBBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBC0);
    sub_24A958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBBB8);
  }

  return result;
}

unint64_t sub_24A958()
{
  result = qword_4FBBC8;
  if (!qword_4FBBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBD0);
    sub_24A9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBBC8);
  }

  return result;
}

unint64_t sub_24A9DC()
{
  result = qword_4FBBD8;
  if (!qword_4FBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBE0);
    sub_24AA94();
    sub_886BC(&qword_4FB168, &qword_4FB170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBBD8);
  }

  return result;
}

unint64_t sub_24AA94()
{
  result = qword_4FBBE8;
  if (!qword_4FBBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBBF0);
    sub_F25C4();
    sub_886BC(&qword_4FBBF8, &qword_4FBC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBBE8);
  }

  return result;
}

uint64_t sub_24AB4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AB94()
{
  result = qword_4FBC30;
  if (!qword_4FBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBC30);
  }

  return result;
}

unint64_t sub_24ABF0()
{
  result = qword_4FBC38;
  if (!qword_4FBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBC38);
  }

  return result;
}

uint64_t sub_24AC44()
{

  swift_getAtKeyPath();
}

uint64_t sub_24ACA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24ACE0(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_886BC(a4, a2);
  sub_3E9CE4();
  sub_3E9DB4();
}

uint64_t sub_24AD78@<X0>(_BYTE *a1@<X8>)
{

  swift_getAtKeyPath();

  *a1 = v3;
  return result;
}

uint64_t sub_24ADD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3EBAE4();
    sub_3EA554();
  }

  return result;
}

uint64_t static RatingString.build<A>(rating:ratingCount:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  LODWORD(v87) = a3;
  v86 = a2;
  v89 = a1;
  v81 = sub_3E5C44();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC60);
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v61 - v11;
  __chkstk_darwin(v12);
  v80 = &v61 - v13;
  v73 = sub_3E5C64();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_3E5C24();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_3E6044();
  v75 = *(v84 - 8);
  __chkstk_darwin(v84);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_3E5BF4();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v61 - v19;
  __chkstk_darwin(v20);
  v64 = &v61 - v21;
  __chkstk_darwin(v22);
  v66 = &v61 - v23;
  v85 = a5;
  v88 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v25 = sub_3EE0F4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v61 - v27;
  v29 = *(a4 - 8);
  __chkstk_darwin(v30);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v36 = &v61 - v35;
  (*(v26 + 16))(v28, v89, v25, v34);
  if ((*(v29 + 48))(v28, 1, a4) == 1)
  {
    (*(v26 + 8))(v28, v25);
  }

  else
  {
    (*(v29 + 32))(v36, v28, a4);
    swift_getAssociatedConformanceWitness();
    sub_3EE864();
    sub_3EE7E4();
    v37 = sub_3ED144();
    v40 = *(v29 + 8);
    v38 = v29 + 8;
    v39 = v40;
    v40(v32, a4);
    v41 = v36;
    if ((v37 & 1) != 0 && (v87 & 1) == 0 && v86 >= 0x1F)
    {
      v42 = v74;
      v61 = v41;
      sub_3E6024();
      v43 = v62;
      sub_3E5BB4();
      v44 = v65;
      sub_3E5C14();
      v45 = v63;
      v46 = v70;
      sub_3E5BD4();
      (*(v67 + 8))(v44, v68);
      v89 = a4;
      v47 = *(v69 + 8);
      v47(v43, v46);
      v48 = v71;
      sub_3E5C54();
      v49 = v64;
      sub_3E5BE4();
      (*(v72 + 8))(v48, v73);
      v47(v45, v46);
      sub_3E6024();
      v50 = v66;
      sub_3E5BC4();
      v88 = v38;
      v75 = *(v75 + 8);
      (v75)(v42, v84);
      v47(v49, v46);
      swift_getWitnessTable();
      sub_3ED074();
      v47(v50, v46);
      v87 = v92;
      v85 = v93;
      v90 = v86;
      sub_3E6024();
      sub_24B9D8();
      v51 = v76;
      sub_3E5A84();
      v52 = v78;
      sub_3E5C34();
      v53 = v77;
      v54 = v83;
      sub_3E5AA4();
      (*(v79 + 8))(v52, v81);
      v55 = *(v82 + 8);
      v55(v51, v54);
      sub_3E6024();
      v56 = v80;
      sub_3E5A94();
      (v75)(v42, v84);
      v55(v53, v54);
      sub_24BA2C();
      sub_3EE1E4();
      v55(v56, v54);
      v57 = v92;
      v58 = v93;
      v92 = 0;
      v93 = 0xE000000000000000;
      v94._countAndFlagsBits = 8755426;
      v94._object = 0xA300000000000000;
      sub_3ED3D4(v94);
      v95._countAndFlagsBits = 32;
      v95._object = 0xE100000000000000;
      sub_3ED3D4(v95);
      v90 = v87;
      v91 = v85;
      sub_3EE7D4();

      v96._countAndFlagsBits = 10272;
      v96._object = 0xE200000000000000;
      sub_3ED3D4(v96);
      v97._countAndFlagsBits = v57;
      v97._object = v58;
      sub_3ED3D4(v97);

      v98._countAndFlagsBits = 41;
      v98._object = 0xE100000000000000;
      sub_3ED3D4(v98);
      v59 = v92;
      v39(v61, v89);
      return v59;
    }

    v39(v36, a4);
  }

  return 0;
}

unint64_t sub_24B9D8()
{
  result = qword_4FBC68;
  if (!qword_4FBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBC68);
  }

  return result;
}

unint64_t sub_24BA2C()
{
  result = qword_4FBC70;
  if (!qword_4FBC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBC70);
  }

  return result;
}

void *UberBackgroundProtocol.interfaceStyleForOverride.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E6294();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(&v12, a1, a2, v6);
  if (v12)
  {
    if (v12 == 1)
    {
      return &dword_0 + 1;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    result = (*(a2 + 24))(a1, a2);
    if (result)
    {

      UberBackgroundProtocol.normalizedBackgroundColor.getter(a1, a2);
      sub_3E6284();
      v10 = sub_3E6274();
      (*(v5 + 8))(v8, v4);
      return v10;
    }
  }

  return result;
}

uint64_t UberBackgroundProtocol.normalizedBackgroundColor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  if (v2)
  {
    v3 = v2;
    v4 = sub_3EDE94();

    return v4;
  }

  else
  {

    return sub_3E9454();
  }
}

uint64_t HeroBackground.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC98);
  __chkstk_darwin(v41);
  v33 = &v32 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v32 = &v32 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCA0);
  __chkstk_darwin(v35);
  v5 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCA8);
  __chkstk_darwin(v38);
  v39 = &v32 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCB0);
  __chkstk_darwin(v34);
  v8 = &v32 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCB8);
  __chkstk_darwin(v37);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_3E7784();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E808(v36, v20, type metadata accessor for HeroBackgroundVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28);

      sub_24ECF0(v20, v17, &type metadata accessor for ArtworkModel);
      sub_24E808(v17, v5, &type metadata accessor for ArtworkModel);
      v22 = *(v35 + 36);
      sub_24E808(v17, &v5[v22], &type metadata accessor for ArtworkModel);
      (*(v15 + 56))(&v5[v22], 0, 1, v14);
      sub_FBD0(v5, v8, &qword_4FBCA0);
      swift_storeEnumTagMultiPayload();
      sub_24E8FC();
      sub_24EA70();
      sub_3EADE4();
      sub_FBD0(v10, v39, &qword_4FBCB8);
      swift_storeEnumTagMultiPayload();
      sub_24E870();
      sub_24EB7C();
      sub_3EADE4();
      sub_FCF8(v10, &qword_4FBCB8);
      sub_FCF8(v5, &qword_4FBCA0);
      return sub_86F48(v17);
    }

    else
    {
      v25 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8) + 48)];
      v26 = v32;
      sub_FACC(v20, v32, &qword_4F1D50);
      if (qword_4E8A80 != -1)
      {
        swift_once();
      }

      v27 = sub_3EA7F4();
      v28 = __swift_project_value_buffer(v27, qword_4FC3D8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD0);
      v30 = v33;
      v31 = &v33[*(v29 + 36)];
      sub_24E808(v28, v31, &type metadata accessor for RoundedRectangle);
      *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8) + 36)) = 256;
      *v30 = v25;
      sub_FBD0(v26, v30 + *(v41 + 36), &qword_4F1D50);
      sub_FBD0(v30, v39, &qword_4FBC98);
      swift_storeEnumTagMultiPayload();
      sub_24E870();
      sub_24EB7C();
      sub_3EADE4();
      sub_FCF8(v30, &qword_4FBC98);
      return sub_FCF8(v26, &qword_4F1D50);
    }
  }

  else
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30) + 48);

    sub_24ECF0(v20, v17, &type metadata accessor for ArtworkModel);
    sub_24E808(v17, v13, &type metadata accessor for ArtworkModel);
    v24 = *(v11 + 36);
    sub_24E808(v17, &v13[v24], &type metadata accessor for ArtworkModel);
    (*(v15 + 56))(&v13[v24], 0, 1, v14);
    sub_FBD0(v13, v8, &qword_4FBCC0);
    swift_storeEnumTagMultiPayload();
    sub_24E8FC();
    sub_24EA70();
    sub_3EADE4();
    sub_FBD0(v10, v39, &qword_4FBCB8);
    swift_storeEnumTagMultiPayload();
    sub_24E870();
    sub_24EB7C();
    sub_3EADE4();
    sub_FCF8(v10, &qword_4FBCB8);
    sub_FCF8(v13, &qword_4FBCC0);
    sub_86F48(v17);
    return sub_86F48(&v20[v36]);
  }
}

uint64_t sub_24C4FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC118);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for HeroChinBackground(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC120);
  __chkstk_darwin(v28);
  v11 = &v25 - v10;
  v12 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E808(v2, v14, type metadata accessor for HeroBackgroundVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8);

      swift_storeEnumTagMultiPayload();
      sub_24F8F4();
      sub_3EADE4();
      v23 = &qword_4F1D50;
      v22 = v14;
      return sub_FCF8(v22, v23);
    }

    v26 = v4;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28);
  }

  else
  {
    v26 = v4;
    v27 = a1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30);
    sub_86F48(&v14[*(v16 + 48)]);
  }

  sub_86F48(v14);
  *v11 = sub_3EAC74();
  *(v11 + 1) = 0xBFF0000000000000;
  v11[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC150);
  sub_24CA68(v2, &v11[*(v17 + 44)]);

  sub_24E808(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeroChinBackground);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_24ECF0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for HeroChinBackground);
  sub_24E808(v2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeroChinBackground);
  v20 = swift_allocObject();
  sub_24ECF0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for HeroChinBackground);
  v21 = &v11[*(v28 + 36)];
  *v21 = sub_24F9DC;
  v21[1] = v19;
  v21[2] = sub_24FFA8;
  v21[3] = v20;
  sub_FBD0(v11, v6, &qword_4FC120);
  swift_storeEnumTagMultiPayload();
  sub_24F8F4();
  sub_3EADE4();
  v22 = v11;
  v23 = &qword_4FC120;
  return sub_FCF8(v22, v23);
}

uint64_t sub_24C930()
{
  v0 = sub_3EABE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EAEF4();
  __swift_allocate_value_buffer(v4, qword_4FBC80);
  v5 = __swift_project_value_buffer(v4, qword_4FBC80);
  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  sub_3EAE14();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_24CA68@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC158);
  __chkstk_darwin(v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v32[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC160);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3F5310;
  *(v10 + 32) = sub_3EB794();
  *(v10 + 40) = sub_3EB794();
  v34 = sub_3EA2E4();
  v11 = (a1 + *(type metadata accessor for HeroChinBackground(0) + 24));
  v13 = v11[1];
  v40 = *v11;
  v12 = v40;
  *v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  sub_3EB8C4();
  sub_3EBA74();
  sub_3EA434();
  *&v35[6] = *&v35[54];
  *&v35[22] = *&v35[70];
  *&v35[38] = *&v35[86];
  v33 = sub_3EB094();
  v40 = v12;
  *v41 = v13;
  sub_3EB8C4();
  sub_3EA264();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v40) = 0;
  if (qword_4E8A68 != -1)
  {
    swift_once();
  }

  v22 = sub_3EAEF4();
  v23 = __swift_project_value_buffer(v22, qword_4FBC80);
  v24 = sub_3EB794();
  sub_24E808(v23, v9, &type metadata accessor for UnevenRoundedRectangle);
  *&v9[*(v4 + 52)] = v24;
  *&v9[*(v4 + 56)] = 256;
  sub_FBD0(v9, v6, &qword_4FC158);
  v25 = v34;
  *&v37[0] = v34;
  WORD4(v37[0]) = 256;
  *(v37 + 10) = *v35;
  *(&v37[1] + 10) = *&v35[16];
  *(&v37[2] + 10) = *&v35[32];
  *(&v37[3] + 1) = *&v35[46];
  v26 = v33;
  LOBYTE(v38) = v33;
  *(&v38 + 1) = *v36;
  DWORD1(v38) = *&v36[3];
  *(&v38 + 1) = v15;
  *&v39[0] = v17;
  *(&v39[0] + 1) = v19;
  *&v39[1] = v21;
  BYTE8(v39[1]) = 0;
  v27 = v39[0];
  a2[4] = v38;
  a2[5] = v27;
  v28 = v37[1];
  *a2 = v37[0];
  a2[1] = v28;
  v29 = v37[3];
  a2[2] = v37[2];
  a2[3] = v29;
  *(a2 + 89) = *(v39 + 9);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC168);
  sub_FBD0(v6, a2 + *(v30 + 48), &qword_4FC158);
  sub_FBD0(v37, &v40, &qword_4FC170);
  sub_FCF8(v9, &qword_4FC158);
  sub_FCF8(v6, &qword_4FC158);
  *&v41[2] = *v35;
  v40 = v25;
  *v41 = 256;
  v42 = *&v35[16];
  *v43 = *&v35[32];
  *&v43[14] = *&v35[46];
  v44 = v26;
  *v45 = *v36;
  *&v45[3] = *&v36[3];
  v46 = v15;
  v47 = v17;
  v48 = v19;
  v49 = v21;
  v50 = 0;
  return sub_FCF8(&v40, &qword_4FC170);
}

void sub_24CE84(double *a1@<X8>)
{
  type metadata accessor for HeroChinBackground(0);
  sub_3EA494();
  Height = 0.0;
  if ((v4 & 1) == 0)
  {
    Height = CGRectGetHeight(v3);
  }

  *a1 = Height;
}

uint64_t sub_24CEF4(double *a1)
{
  v1 = *a1;
  type metadata accessor for HeroChinBackground(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB7A0);
  result = sub_3EB8C4();
  if (v1 != v3)
  {
    result = sub_3EB8D4();
    qword_4FBC78 = *&v1;
  }

  return result;
}

uint64_t sub_24CFA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v3 - 8);
  v5 = &v27[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7];
  sub_24E808(v1, &v27[-v7], &type metadata accessor for ArtworkModel);
  v9 = sub_3E7784();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_3E94E4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  *&v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v11 = sub_3EBA54();
  v13 = v12;
  sub_FBD0(v8, a1, &qword_4F1D50);
  v14 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v5, a1 + v14[7], &qword_4FAE68);
  sub_FBD0(&v29, v28, &qword_4EE870);
  v15 = a1 + v14[5];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 2;
  v16 = (a1 + v14[6]);
  *v16 = v11;
  v16[1] = v13;
  *(a1 + v14[8]) = 1;
  *(a1 + v14[9]) = 0;
  sub_FBD0(v28, v27, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v28, &qword_4EE870);
  sub_FCF8(&v29, &qword_4EE870);
  sub_FCF8(v5, &qword_4FAE68);
  sub_FCF8(v8, &qword_4F1D50);
  v17 = a1 + *(type metadata accessor for Artwork(0) + 20);
  *v17 = sub_231DEC;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC020) + 36);
  *v18 = 0x3FF0000000000000;
  *(v18 + 8) = 0;
  sub_3EBA54();
  sub_3EA804();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC028) + 36));
  v20 = v34;
  v19[4] = v33;
  v19[5] = v20;
  v19[6] = v35;
  v21 = v30;
  *v19 = v29;
  v19[1] = v21;
  v22 = v32;
  v19[2] = v31;
  v19[3] = v22;
  if (qword_4E8A80 != -1)
  {
    swift_once();
  }

  v23 = sub_3EA7F4();
  v24 = __swift_project_value_buffer(v23, qword_4FC3D8);
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC030) + 36);
  sub_24E808(v24, v25, &type metadata accessor for RoundedRectangle);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8);
  *(v25 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24D3E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v3 - 8);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-v7];
  sub_24E808(v1, &v28[-v7], &type metadata accessor for ArtworkModel);
  v9 = sub_3E7784();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_3E94E4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  *&v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v11 = sub_3EBA54();
  v13 = v12;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0F8) + 44));
  v15 = v14->i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC100) + 44);
  sub_FBD0(v8, v15, &qword_4F1D50);
  v16 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v5, v15 + v16[7], &qword_4FAE68);
  sub_FBD0(&v30, v29, &qword_4EE870);
  v17 = v15 + v16[5];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 2;
  v18 = (v15 + v16[6]);
  *v18 = v11;
  v18[1] = v13;
  *(v15 + v16[8]) = 1;
  *(v15 + v16[9]) = 0;
  sub_FBD0(v29, v28, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v29, &qword_4EE870);
  sub_FCF8(&v30, &qword_4EE870);
  sub_FCF8(v5, &qword_4FAE68);
  sub_FCF8(v8, &qword_4F1D50);
  v19 = v15 + *(type metadata accessor for Artwork(0) + 20);
  *v19 = sub_231DEC;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v14 = vdupq_n_s64(0x3FF70A3D70A3D70AuLL);
  *a1 = 0;
  *(a1 + 8) = xmmword_410050;
  sub_3EBA54();
  sub_3EA804();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC108) + 36));
  v21 = v35;
  v20[4] = v34;
  v20[5] = v21;
  v20[6] = v36;
  v22 = v31;
  *v20 = v30;
  v20[1] = v22;
  v23 = v33;
  v20[2] = v32;
  v20[3] = v23;
  if (qword_4E8A80 != -1)
  {
    swift_once();
  }

  v24 = sub_3EA7F4();
  v25 = __swift_project_value_buffer(v24, qword_4FC3D8);
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC110) + 36);
  sub_24E808(v25, v26, &type metadata accessor for RoundedRectangle);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCD8);
  *(v26 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24D860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC038);
  __chkstk_darwin(v2);
  v4 = &v19[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC040);
  __chkstk_darwin(v5);
  v7 = &v19[-1] - v6;
  v8 = sub_3E7424();
  v19[3] = v8;
  v19[4] = sub_24EA08(&qword_4F07A0, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v19);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.heroJoeColorDebugger(_:), v8);
  LOBYTE(v8) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v8)
  {
    v10 = &v7[*(v5 + 36)];
    sub_24DBC8(v10);
    v11 = sub_3EBA24();
    v13 = v12;
    v14 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC068) + 36));
    *v14 = v11;
    v14[1] = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC048);
    (*(*(v15 - 8) + 16))(v7, a1, v15);
    sub_FBD0(v7, v4, &qword_4FC040);
    swift_storeEnumTagMultiPayload();
    sub_24F530();
    sub_886BC(&qword_4FC058, &qword_4FC048);
    sub_3EADE4();
    return sub_FCF8(v7, &qword_4FC040);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC048);
    (*(*(v17 - 8) + 16))(v4, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_24F530();
    sub_886BC(&qword_4FC058, &qword_4FC048);
    return sub_3EADE4();
  }
}

uint64_t sub_24DBC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_3E7784();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v2, v9, &qword_4F1D50);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_FCF8(v9, &qword_4F1D50);
    return (*(v4 + 56))(v18, 1, 1, v3);
  }

  else
  {
    sub_24ECF0(v9, v13, &type metadata accessor for ArtworkModel);
    *v6 = sub_3EAC74();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC078);
    sub_24DE80(v13, &v6[*(v15 + 44)]);
    *&v6[*(v3 + 36)] = xmmword_410060;
    v16 = v18;
    sub_FACC(v6, v18, &qword_4FC070);
    (*(v4 + 56))(v16, 0, 1, v3);
    return sub_86F48(v13);
  }
}

uint64_t sub_24DE80@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC080);
  __chkstk_darwin(v3 - 8);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v41 - v6;
  __chkstk_darwin(v7);
  v50 = &v41 - v8;
  __chkstk_darwin(v9);
  v45 = &v41 - v10;
  __chkstk_darwin(v11);
  v49 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  __chkstk_darwin(v25);
  v27 = &v41 - v26;
  sub_24E260(a1[64], &v41 - v26);
  sub_24E260(a1[80], v24);
  v28 = a1[96];
  v44 = v21;
  sub_24E260(v28, v21);
  v29 = a1[112];
  v43 = v18;
  sub_24E260(v29, v18);
  v30 = a1[128];
  v42 = v15;
  sub_24E260(v30, v15);
  v31 = v49;
  sub_FBD0(v27, v49, &qword_4FC080);
  v32 = v45;
  sub_FBD0(v24, v45, &qword_4FC080);
  v33 = v21;
  v34 = v50;
  sub_FBD0(v33, v50, &qword_4FC080);
  v35 = v18;
  v36 = v46;
  sub_FBD0(v35, v46, &qword_4FC080);
  v37 = v47;
  sub_FBD0(v15, v47, &qword_4FC080);
  v38 = v48;
  sub_FBD0(v31, v48, &qword_4FC080);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC088);
  sub_FBD0(v32, v38 + v39[12], &qword_4FC080);
  sub_FBD0(v34, v38 + v39[16], &qword_4FC080);
  sub_FBD0(v36, v38 + v39[20], &qword_4FC080);
  sub_FBD0(v37, v38 + v39[24], &qword_4FC080);
  sub_FCF8(v42, &qword_4FC080);
  sub_FCF8(v43, &qword_4FC080);
  sub_FCF8(v44, &qword_4FC080);
  sub_FCF8(v24, &qword_4FC080);
  sub_FCF8(v27, &qword_4FC080);
  sub_FCF8(v37, &qword_4FC080);
  sub_FCF8(v36, &qword_4FC080);
  sub_FCF8(v50, &qword_4FC080);
  sub_FCF8(v32, &qword_4FC080);
  return sub_FCF8(v49, &qword_4FC080);
}

uint64_t sub_24E260@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v34[1] = a2;
  v2 = ~a1;
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC090);
  __chkstk_darwin(v34[0]);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC098);
  __chkstk_darwin(v5 - 8);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0A0);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0A8);
  __chkstk_darwin(v11);
  v13 = (v34 - v12);
  if (v2)
  {
    sub_3E9454();
    v14 = sub_3EB734();
    sub_3EB834();
    sub_3EAC94();
    v15 = sub_3EACA4();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    v16 = sub_3EB864();

    sub_FCF8(v10, &qword_4FC0A0);
    v17 = sub_3EB124();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = sub_3EB154();
    sub_FCF8(v7, &qword_4FC098);
    KeyPath = swift_getKeyPath();
    v20 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0B0) + 36));
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
    v22 = enum case for Image.Scale.medium(_:);
    v23 = sub_3EB874();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    *v13 = v16;
    v13[1] = KeyPath;
    v13[2] = v18;
  }

  else
  {
    sub_3EB834();
    sub_3EAC94();
    v24 = sub_3EACA4();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    v25 = sub_3EB864();

    sub_FCF8(v10, &qword_4FC0A0);
    v26 = sub_3EB124();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = sub_3EB154();
    sub_FCF8(v7, &qword_4FC098);
    v28 = swift_getKeyPath();
    v29 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC0B0) + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB828) + 28);
    v31 = enum case for Image.Scale.medium(_:);
    v32 = sub_3EB874();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v13 = v25;
    v13[1] = v28;
    v13[2] = v27;
    sub_3EB784();
    v14 = sub_3EB794();
  }

  *(v13 + *(v11 + 36)) = v14;
  sub_FBD0(v13, v4, &qword_4FC0A8);
  swift_storeEnumTagMultiPayload();
  sub_24F6CC();
  sub_3EADE4();
  return sub_FCF8(v13, &qword_4FC0A8);
}

uint64_t sub_24E808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E870()
{
  result = qword_4FBCE0;
  if (!qword_4FBCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBCB8);
    sub_24E8FC();
    sub_24EA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBCE0);
  }

  return result;
}

unint64_t sub_24E8FC()
{
  result = qword_4FBCE8;
  if (!qword_4FBCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBCC0);
    sub_24EA08(&qword_4FBCF0, type metadata accessor for HeroEpisodeArtworkBackground);
    sub_24EA08(&qword_4FBCF8, type metadata accessor for HeroJoeColorDebugView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBCE8);
  }

  return result;
}

uint64_t sub_24EA08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EA70()
{
  result = qword_4FBD00;
  if (!qword_4FBD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBCA0);
    sub_24EA08(&qword_4FBD08, type metadata accessor for HeroShowUberArtworkBackground);
    sub_24EA08(&qword_4FBCF8, type metadata accessor for HeroJoeColorDebugView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBD00);
  }

  return result;
}

unint64_t sub_24EB7C()
{
  result = qword_4FBD10;
  if (!qword_4FBD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBC98);
    sub_24EC38();
    sub_24EA08(&qword_4FBCF8, type metadata accessor for HeroJoeColorDebugView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBD10);
  }

  return result;
}

unint64_t sub_24EC38()
{
  result = qword_4FBD18;
  if (!qword_4FBD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBCD0);
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBD18);
  }

  return result;
}

uint64_t sub_24ECF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE08()
{
  result = qword_4FBDC8;
  if (!qword_4FBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FBDD0);
    sub_24E870();
    sub_24EB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FBDC8);
  }

  return result;
}

uint64_t sub_24EEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeroBackgroundVariant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3EAE04();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24EFD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HeroBackgroundVariant();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_3EAE04();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F104()
{
  type metadata accessor for HeroBackgroundVariant();
  if (v0 <= 0x3F)
  {
    sub_3EAE04();
    if (v1 <= 0x3F)
    {
      sub_241208();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24F330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F530()
{
  result = qword_4FC050;
  if (!qword_4FC050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC040);
    sub_886BC(&qword_4FC058, &qword_4FC048);
    sub_886BC(&qword_4FC060, &qword_4FC068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC050);
  }

  return result;
}

uint64_t sub_24F614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3EAA14();
  *a1 = result;
  return result;
}

uint64_t sub_24F640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3EAA14();
  *a1 = result;
  return result;
}

unint64_t sub_24F6CC()
{
  result = qword_4FC0B8;
  if (!qword_4FC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0A8);
    sub_24F784();
    sub_886BC(&qword_4FC0E8, &qword_4FC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC0B8);
  }

  return result;
}

unint64_t sub_24F784()
{
  result = qword_4FC0C0;
  if (!qword_4FC0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0B0);
    sub_24F83C();
    sub_886BC(&qword_4FB920, &qword_4FB828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC0C0);
  }

  return result;
}

unint64_t sub_24F83C()
{
  result = qword_4FC0C8;
  if (!qword_4FC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0D0);
    sub_886BC(&qword_4FC0D8, &qword_4FC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC0C8);
  }

  return result;
}

unint64_t sub_24F8F4()
{
  result = qword_4FC128;
  if (!qword_4FC128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC120);
    sub_886BC(&qword_4FC130, &qword_4FC138);
    sub_886BC(&qword_4FC140, &qword_4FC148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC128);
  }

  return result;
}

void sub_24F9DC(double *a1@<X8>)
{
  type metadata accessor for HeroChinBackground(0);

  sub_24CE84(a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0;
  v2 = type metadata accessor for HeroChinBackground(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  type metadata accessor for HeroBackgroundVariant();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v34 = sub_3E7784();
    if (!(*(*(v34 - 8) + 48))(v0 + v4, 1, v34))
    {

      v35 = *(v6 + 32);
      if (v35 != 255)
      {
        sub_F2248(*(v6 + 16), *(v6 + 24), v35);
      }

      v36 = *(v6 + 64);
      if (v36 != 255)
      {
        sub_F2260(*(v6 + 56), v36);
      }

      v37 = *(v6 + 80);
      if (v37 != 255)
      {
        sub_F2260(*(v6 + 72), v37);
      }

      v38 = *(v6 + 96);
      if (v38 != 255)
      {
        sub_F2260(*(v6 + 88), v38);
      }

      v39 = *(v6 + 112);
      if (v39 != 255)
      {
        sub_F2260(*(v6 + 104), v39);
      }

      v40 = *(v6 + 128);
      if (v40 != 255)
      {
        sub_F2260(*(v6 + 120), v40);
      }

      v41 = *(v34 + 44);
      v42 = sub_3E7624();
      (*(*(v42 - 8) + 8))(v6 + v41, v42);
    }

    v33 = &qword_4FBCC8;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v25 = *(v6 + 32);
    if (v25 != 255)
    {
      sub_F2248(*(v6 + 16), *(v6 + 24), v25);
    }

    v26 = *(v6 + 64);
    if (v26 != 255)
    {
      sub_F2260(*(v6 + 56), v26);
    }

    v27 = *(v6 + 80);
    if (v27 != 255)
    {
      sub_F2260(*(v6 + 72), v27);
    }

    v28 = *(v6 + 96);
    if (v28 != 255)
    {
      sub_F2260(*(v6 + 88), v28);
    }

    v29 = *(v6 + 112);
    if (v29 != 255)
    {
      sub_F2260(*(v6 + 104), v29);
    }

    v30 = *(v6 + 128);
    if (v30 != 255)
    {
      sub_F2260(*(v6 + 120), v30);
    }

    v31 = *(sub_3E7784() + 44);
    v32 = sub_3E7624();
    (*(*(v32 - 8) + 8))(v6 + v31, v32);

    v33 = &qword_4FBD28;
LABEL_57:
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    goto LABEL_58;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_59;
  }

  v8 = *(v6 + 32);
  if (v8 != 255)
  {
    sub_F2248(*(v6 + 16), *(v6 + 24), v8);
  }

  v9 = *(v6 + 64);
  if (v9 != 255)
  {
    sub_F2260(*(v6 + 56), v9);
  }

  v10 = *(v6 + 80);
  if (v10 != 255)
  {
    sub_F2260(*(v6 + 72), v10);
  }

  v11 = *(v6 + 96);
  if (v11 != 255)
  {
    sub_F2260(*(v6 + 88), v11);
  }

  v12 = *(v6 + 112);
  if (v12 != 255)
  {
    sub_F2260(*(v6 + 104), v12);
  }

  v46 = v0;
  v13 = *(v6 + 128);
  if (v13 != 255)
  {
    sub_F2260(*(v6 + 120), v13);
  }

  v14 = sub_3E7784();
  v15 = *(v14 + 44);
  v16 = sub_3E7624();
  v17 = *(*(v16 - 8) + 8);
  v17(v6 + v15, v16);

  v18 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30) + 48);

  v19 = *(v18 + 32);
  if (v19 != 255)
  {
    sub_F2248(*(v18 + 16), *(v18 + 24), v19);
  }

  v20 = *(v18 + 64);
  if (v20 != 255)
  {
    sub_F2260(*(v18 + 56), v20);
  }

  v21 = *(v18 + 80);
  if (v21 != 255)
  {
    sub_F2260(*(v18 + 72), v21);
  }

  v22 = *(v18 + 96);
  if (v22 != 255)
  {
    sub_F2260(*(v18 + 88), v22);
  }

  v23 = *(v18 + 112);
  if (v23 != 255)
  {
    sub_F2260(*(v18 + 104), v23);
  }

  v24 = *(v18 + 128);
  if (v24 != 255)
  {
    sub_F2260(*(v18 + 120), v24);
  }

  v17(v18 + *(v14 + 44), v16);

  v1 = v46;
LABEL_58:

LABEL_59:
  v43 = *(v2 + 20);
  v44 = sub_3EAE04();
  (*(*(v44 - 8) + 8))(v6 + v43, v44);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_24FFA8(double *a1)
{
  type metadata accessor for HeroChinBackground(0);

  return sub_24CEF4(a1);
}

unint64_t sub_25001C()
{
  result = qword_4FC178;
  if (!qword_4FC178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC030);
    sub_250360(&qword_4FC180, &qword_4FC028, &unk_410320, sub_250100);
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC178);
  }

  return result;
}

unint64_t sub_250100()
{
  result = qword_4FC188;
  if (!qword_4FC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC020);
    sub_24EA08(&qword_4FC190, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC188);
  }

  return result;
}

unint64_t sub_2501C0()
{
  result = qword_4FC198;
  if (!qword_4FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC1A0);
    sub_24F530();
    sub_886BC(&qword_4FC058, &qword_4FC048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC198);
  }

  return result;
}

unint64_t sub_25027C()
{
  result = qword_4FC1A8;
  if (!qword_4FC1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC110);
    sub_250360(&qword_4FC1B0, &qword_4FC108, &unk_410428, sub_2503E4);
    sub_886BC(&qword_4FBD20, &qword_4FBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC1A8);
  }

  return result;
}

uint64_t sub_250360(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2503E4()
{
  result = qword_4FC1B8;
  if (!qword_4FC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC0F8);
    sub_886BC(&qword_4F1818, &qword_4F1808);
    sub_25049C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC1B8);
  }

  return result;
}

unint64_t sub_25049C()
{
  result = qword_4FC1C0;
  if (!qword_4FC1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC100);
    sub_886BC(&qword_4F1748, &qword_4F1738);
    sub_24EA08(&qword_4FC190, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC1C0);
  }

  return result;
}

unint64_t sub_250588()
{
  result = qword_4FC1C8;
  if (!qword_4FC1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC1D0);
    sub_24F8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC1C8);
  }

  return result;
}

uint64_t HeroBackgroundVariant.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v65);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3EB744();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E6464();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  __chkstk_darwin(v12);
  v59 = &v53 - v13;
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_3E7784();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v53 - v24);
  __chkstk_darwin(v26);
  v28 = &v53 - v27;
  LegacyEpisodeLockup.dedupedEpisodeArtwork.getter(v19);
  v58 = v21;
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_1433A4(v19);
    v30 = a1;
  }

  else
  {
    sub_251688(v19, v28, &type metadata accessor for ArtworkModel);
    sub_4E45C(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v16);
    v30 = a1;
    if (v29(v16, 1, v20) == 1)
    {
      sub_2516F0(v28, &type metadata accessor for ArtworkModel);
      sub_1433A4(v16);
    }

    else
    {
      sub_251688(v16, v25, &type metadata accessor for ArtworkModel);
      if ((*v28 != *v25 || *(v28 + 1) != v25[1]) && (sub_3EE804() & 1) == 0 && *(v28 + 5) > 200.0 && *(v28 + 6) > 200.0)
      {
        v31 = v59;
        sub_A18FC(v28, v59);
        (*(v58 + 56))(v31, 0, 1, v20);
        v32 = v62;
        sub_3E6454();
        v33 = sub_2513D4(v31);
        (*(v63 + 8))(v32, v64);
        sub_1433A4(v31);
        if (!v33)
        {
          (*(v54 + 104))(v55, enum case for Color.RGBColorSpace.sRGB(_:), v56);
          v33 = sub_3EB7C4();
        }

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30);
        v35 = *(v34 + 48);
        v36 = *(v34 + 64);
        v37 = v66;
        sub_251688(v28, v66, &type metadata accessor for ArtworkModel);
        sub_251688(v25, v37 + v35, &type metadata accessor for ArtworkModel);
        *(v37 + v36) = v33;
        return swift_storeEnumTagMultiPayload();
      }

      sub_2516F0(v25, &type metadata accessor for ArtworkModel);
      sub_2516F0(v28, &type metadata accessor for ArtworkModel);
    }
  }

  sub_4E45C(v30 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, v11);
  v39 = v29(v11, 1, v20);
  v41 = v62;
  v40 = v63;
  if (v39 == 1)
  {
    sub_1433A4(v11);
    v42 = v64;
  }

  else
  {
    v43 = v11;
    v44 = v57;
    sub_251688(v43, v57, &type metadata accessor for ArtworkModel);
    v45 = v59;
    sub_A18FC(v44, v59);
    (*(v58 + 56))(v45, 0, 1, v20);
    sub_3E6444();
    v46 = sub_2513D4(v45);
    v42 = v64;
    (*(v40 + 8))(v41, v64);
    sub_1433A4(v45);
    if (v46)
    {

      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28) + 48);
      v48 = v66;
      sub_251688(v44, v66, &type metadata accessor for ArtworkModel);
      *(v48 + v47) = v46;
      return swift_storeEnumTagMultiPayload();
    }

    sub_2516F0(v44, &type metadata accessor for ArtworkModel);
  }

  v49 = v60;
  sub_4E45C(v30 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, v60);
  sub_3E6454();
  v50 = sub_2513D4(v49);
  (*(v40 + 8))(v41, v42);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8) + 48);
  v52 = v61;
  sub_4E45C(v49, v61);
  if (!v50)
  {
    (*(v54 + 104))(v55, enum case for Color.RGBColorSpace.sRGB(_:), v56);
    v50 = sub_3EB7C4();
  }

  sub_1433A4(v49);
  *(v52 + v51) = v50;
  swift_storeEnumTagMultiPayload();
  return sub_251688(v52, v66, type metadata accessor for HeroBackgroundVariant);
}

{
  v41 = a2;
  v3 = sub_3EB744();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v40);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E6464();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_3E7784();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ShowHero();
  v23 = *(v22 + 36);
  v39 = a1;
  sub_4E45C(a1 + v23, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1433A4(v17);
    v24 = v6;
    v25 = v38;
  }

  else
  {
    sub_251688(v17, v21, &type metadata accessor for ArtworkModel);
    sub_A18FC(v21, v14);
    (*(v19 + 56))(v14, 0, 1, v18);
    sub_3E6444();
    v26 = sub_2513D4(v14);
    v25 = v38;
    (*(v38 + 8))(v8, v6);
    sub_1433A4(v14);
    if (v26)
    {
      sub_2516F0(v39, type metadata accessor for ShowHero);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28) + 48);
      v28 = v41;
      sub_251688(v21, v41, &type metadata accessor for ArtworkModel);
      *(v28 + v27) = v26;
      return swift_storeEnumTagMultiPayload();
    }

    v24 = v6;
    sub_2516F0(v21, &type metadata accessor for ArtworkModel);
  }

  v30 = v39;
  sub_4E45C(v39 + *(v22 + 32), v11);
  sub_3E6454();
  v31 = sub_2513D4(v11);
  (*(v25 + 8))(v8, v24);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8) + 48);
  v33 = v37;
  sub_4E45C(v11, v37);
  if (!v31)
  {
    (*(v35 + 104))(v34, enum case for Color.RGBColorSpace.sRGB(_:), v36);
    v31 = sub_3EB7C4();
  }

  sub_2516F0(v30, type metadata accessor for ShowHero);
  sub_1433A4(v11);
  *(v33 + v32) = v31;
  swift_storeEnumTagMultiPayload();
  return sub_251688(v33, v41, type metadata accessor for HeroBackgroundVariant);
}

uint64_t type metadata accessor for HeroBackgroundVariant()
{
  result = qword_4FC250;
  if (!qword_4FC250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_251398()
{
  result = [objc_opt_self() whiteColor];
  qword_4FC1D8 = result;
  return result;
}

uint64_t sub_2513D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-1] - v3;
  v5 = sub_3E7784();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4E45C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1433A4(v4);
    return 0;
  }

  else
  {
    sub_251688(v4, v8, &type metadata accessor for ArtworkModel);
    if (qword_4E8A70 != -1)
    {
      swift_once();
    }

    v14 = sub_3E6904();
    v15 = &protocol witness table for JoeColorClampBrightnessAlgorithm;
    __swift_allocate_boxed_opaque_existential_0Tm(v13);
    sub_3E6364();
    v10 = sub_3E76E4();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if (v10)
    {
      sub_3EDE84();
      if (v15)
      {
        sub_2516F0(v8, &type metadata accessor for ArtworkModel);

        return 0;
      }

      else
      {
        [objc_allocWithZone(UIColor) initWithHue:*v13 saturation:*&v13[1] brightness:fmax(*&v13[2] alpha:{0.1), *&v14}];
        v11 = sub_3EB734();

        sub_2516F0(v8, &type metadata accessor for ArtworkModel);
        return v11;
      }
    }

    else
    {
      sub_2516F0(v8, &type metadata accessor for ArtworkModel);
      return 0;
    }
  }
}

uint64_t sub_251688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2516F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251750()
{
  sub_2517D8();
  if (v0 <= 0x3F)
  {
    sub_251848();
    if (v1 <= 0x3F)
    {
      sub_2518B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2517D8()
{
  if (!qword_4FC260)
  {
    sub_3E7784();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_4FC260);
    }
  }
}

void sub_251848()
{
  if (!qword_4FC268)
  {
    sub_3E7784();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4FC268);
    }
  }
}

void sub_2518B4()
{
  if (!qword_4FC270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1D50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4FC270);
    }
  }
}

uint64_t sub_25192C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_3EBB14();
}

uint64_t sub_251AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3EA394();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_3EA3A4();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_3EA544();
}

uint64_t sub_251CA4()
{
  v0 = sub_3EAE04();
  __swift_allocate_value_buffer(v0, qword_4FC2A0);
  __swift_project_value_buffer(v0, qword_4FC2A0);
  return sub_3EAF04();
}

uint64_t HeroChin.init(variant:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_251D90(a1, a4);
  result = type metadata accessor for HeroChin();
  v8 = (a4 + *(result + 36));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_251D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroBackgroundVariant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HeroChin.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C0);
  v3 = *(a1 + 16);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C8);
  sub_3EA744();
  sub_3EA744();
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D8);
  sub_3EA744();
  swift_getTupleTypeMetadata2();
  sub_3EBB04();
  sub_886BC(&qword_4FC2E0, &qword_4FC2B8);
  v4 = sub_3EA534();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = sub_886BC(qword_4FC2E8, &qword_4FC2B8);
  WitnessTable = swift_getWitnessTable();
  v32 = v7;
  v33 = WitnessTable;
  v9 = swift_getWitnessTable();
  v30 = v4;
  v31 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v17 = *(a1 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v17;
  v27 = v3;
  v28 = v17;
  v29 = v24;
  sub_25228C(sub_2531C8, v26, v6);

  if (qword_4E8A78 != -1)
  {
    swift_once();
  }

  v19 = sub_3EAE04();
  __swift_project_value_buffer(v19, qword_4FC2A0);
  sub_3EB544();
  (*(v23 + 8))(v6, v4);
  v30 = v4;
  v31 = v9;
  swift_getOpaqueTypeConformance2();
  sub_E63BC(v13);
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  sub_E63BC(v16);
  return (v20)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_25228C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C8);
  sub_3EA744();
  sub_3EA744();
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D8);
  sub_3EA744();
  swift_getTupleTypeMetadata2();
  v6 = sub_3EBB04();
  v7 = sub_254360();
  WitnessTable = swift_getWitnessTable();
  return sub_251AFC(a1, a2, &type metadata for HeroChinLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_252404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a4;
  v103 = type metadata accessor for HeroChinBackground(0);
  __chkstk_darwin(v103);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v80);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  __chkstk_darwin(v11);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EA744();
  v81 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v80 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C8);
  v17 = sub_3EA744();
  v83 = *(v17 - 8);
  __chkstk_darwin(v17);
  v105 = &v80 - v18;
  v84 = v19;
  v20 = sub_3EA744();
  v86 = *(v20 - 8);
  __chkstk_darwin(v20);
  v85 = &v80 - v21;
  v87 = v22;
  v23 = sub_3EA744();
  v89 = *(v23 - 8);
  __chkstk_darwin(v23);
  v88 = &v80 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D0);
  v90 = v23;
  v25 = sub_3EA744();
  v94 = *(v25 - 8);
  __chkstk_darwin(v25);
  v92 = &v80 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D8);
  v96 = v25;
  v82 = sub_3EA744();
  v98 = *(v82 - 8);
  __chkstk_darwin(v82);
  v101 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v91 = &v80 - v29;
  __chkstk_darwin(v30);
  v100 = &v80 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC2C0);
  __chkstk_darwin(v32);
  v99 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v80 - v35;
  sub_2540EC(a1, &v80 - v35);
  v93 = v32;
  v37 = *(v32 + 36);
  v95 = v36;
  v36[v37] = 0;
  v38 = type metadata accessor for HeroChin();
  (*(a1 + *(v38 + 36)))();
  sub_3EBA84();
  sub_3EB644();
  (*(v10 + 8))(v13, a2);
  v97 = a1;
  sub_2540EC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28);
      sub_2542F0(v9, &type metadata accessor for ArtworkModel);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8);
      sub_FCF8(v9, &qword_4F1D50);
    }
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30);
    sub_2542F0(&v9[*(v40 + 48)], &type metadata accessor for ArtworkModel);
    sub_2542F0(v9, &type metadata accessor for ArtworkModel);
  }

  v41 = v88;
  v42 = v87;
  v43 = v86;
  v115 = a3;
  v116 = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_3EB494();

  (*(v81 + 8))(v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5310;
  v46 = sub_3EB0B4();
  *(inited + 32) = v46;
  v47 = sub_3EB0A4();
  *(inited + 33) = v47;
  sub_3EB0C4();
  sub_3EB0C4();
  if (sub_3EB0C4() != v46)
  {
    sub_3EB0C4();
  }

  sub_3EB0C4();
  v48 = sub_3EB0C4();
  v49 = v85;
  if (v48 != v47)
  {
    sub_3EB0C4();
  }

  v50 = v102;
  v51 = sub_886BC(&qword_4FC3A0, &qword_4FC2C8);
  v113 = WitnessTable;
  v114 = v51;
  v52 = v84;
  v53 = swift_getWitnessTable();
  v54 = v105;
  sub_3EB6C4();
  (*(v83 + 8))(v54, v52);
  v55 = sub_3EB0D4();
  sub_3EB0C4();
  sub_3EB0C4();
  if (sub_3EB0C4() != v55)
  {
    sub_3EB0C4();
  }

  v111 = v53;
  v112 = &protocol witness table for _PaddingLayout;
  v56 = swift_getWitnessTable();
  sub_3EB6C4();
  (*(v43 + 8))(v49, v42);
  sub_2540EC(v97, v50);
  v57 = v41;
  if (qword_4E8A78 != -1)
  {
    swift_once();
  }

  v58 = sub_3EAE04();
  v59 = __swift_project_value_buffer(v58, qword_4FC2A0);
  v60 = v103;
  (*(*(v58 - 8) + 16))(v50 + *(v103 + 20), v59, v58);
  v61 = (v50 + *(v60 + 24));
  v108[0] = qword_4FBC78;
  sub_3EB8B4();
  v62 = v110;
  *v61 = v109;
  v61[1] = v62;
  sub_3EBA74();
  v108[6] = v56;
  v108[7] = &protocol witness table for _PaddingLayout;
  v63 = v90;
  v64 = swift_getWitnessTable();
  sub_2542A8(&qword_4FC3A8, type metadata accessor for HeroChinBackground);
  v65 = v92;
  sub_3EB444();
  sub_2542F0(v50, type metadata accessor for HeroChinBackground);
  (*(v89 + 8))(v57, v63);
  LOBYTE(v109) = 1;
  v66 = sub_886BC(&qword_4FC3B0, &qword_4FC2D0);
  v108[4] = v64;
  v108[5] = v66;
  v67 = v96;
  v68 = swift_getWitnessTable();
  sub_254098();
  v69 = v91;
  sub_3EB4C4();
  (*(v94 + 8))(v65, v67);
  v70 = sub_886BC(&qword_4FC3B8, &qword_4FC2D8);
  v108[2] = v68;
  v108[3] = v70;
  v71 = v82;
  v72 = swift_getWitnessTable();
  v73 = v100;
  sub_E63BC(v69);
  v74 = v98;
  v75 = *(v98 + 8);
  v75(v69, v71);
  v76 = v95;
  v77 = v99;
  sub_254150(v95, v99);
  v109 = v77;
  v78 = v101;
  (*(v74 + 16))(v101, v73, v71);
  v110 = v78;
  v108[0] = v93;
  v108[1] = v71;
  v106 = sub_2541C0();
  v107 = v72;
  sub_25192C(&v109, 2uLL, v108);
  v75(v73, v71);
  sub_FCF8(v76, &qword_4FC2C0);
  v75(v78, v71);
  return sub_FCF8(v77, &qword_4FC2C0);
}

unint64_t sub_25321C()
{
  result = type metadata accessor for HeroBackgroundVariant();
  if (v1 <= 0x3F)
  {
    result = sub_178DA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2532B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeroBackgroundVariant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_253384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeroBackgroundVariant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25343C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C8);
  sub_3EA744();
  sub_3EA744();
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2D8);
  sub_3EA744();
  swift_getTupleTypeMetadata2();
  sub_3EBB04();
  sub_886BC(&qword_4FC2E0, &qword_4FC2B8);
  sub_3EA534();
  sub_886BC(qword_4FC2E8, &qword_4FC2B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_253678@<X0>(unsigned __int8 a1@<W0>, char *a2@<X8>)
{
  v27 = a2;
  v4 = sub_3EA4C4();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v26 - v8;
  v9 = sub_3EA584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC380);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - v16;
  (*(v10 + 16))(v12, v2, v9, v15);
  sub_2542A8(&qword_4FC388, &type metadata accessor for LayoutSubviews);
  sub_3ED4B4();
  v18 = *(v14 + 44);
  sub_2542A8(&qword_4F1828, &type metadata accessor for LayoutSubviews);
  sub_3ED8D4();
  if (*&v17[v18] == v34[0])
  {
LABEL_2:
    sub_FCF8(v17, &qword_4FC380);
    v19 = 1;
    v20 = v27;
  }

  else
  {
    v29 = a1;
    v31 = (v28 + 16);
    v32 = (v28 + 32);
    v30 = (v28 + 8);
    while (1)
    {
      v22 = sub_3ED904();
      v23 = v33;
      (*v31)(v33);
      v22(v34, 0);
      sub_3ED8E4();
      v24 = *v32;
      (*v32)(v6, v23, v4);
      sub_254098();
      sub_3EA4D4();
      if (LOBYTE(v34[0]) != 2 && ((LOBYTE(v34[0]) ^ v29) & 1) == 0)
      {
        break;
      }

      (*v30)(v6, v4);
      sub_3ED8D4();
      if (*&v17[v18] == v34[0])
      {
        goto LABEL_2;
      }
    }

    sub_FCF8(v17, &qword_4FC380);
    v25 = v27;
    v24(v27, v6, v4);
    v20 = v25;
    v19 = 0;
  }

  return (*(v28 + 56))(v20, v19, 1, v4);
}

double sub_253A94(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_253AC0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_3EA1E4();
  return sub_EBB14;
}

unint64_t sub_253B4C()
{
  result = qword_4FC370;
  if (!qword_4FC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC370);
  }

  return result;
}

unint64_t sub_253BA4()
{
  result = qword_4FC378;
  if (!qword_4FC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC378);
  }

  return result;
}

uint64_t sub_253BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  v9();
  sub_E63BC(v8);
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_E63BC(v11);
  return (v12)(v11, a4);
}

uint64_t sub_253D2C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_3EA4C4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v28 - v21;
  sub_253678(1u, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    v24 = v15;
    return sub_FCF8(v24, &qword_4F1760);
  }

  v30 = v19;
  v31 = a1;
  v29 = *(v17 + 32);
  v29(v22, v15, v16);
  v37 = 0;
  v36 = 0;
  sub_3EA4A4();
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMaxY(v39);
  sub_3EBB24();
  v35 = 0;
  v34 = 0;
  sub_3EA4B4();
  sub_253678(0, v12);
  if (v23(v12, 1, v16) == 1)
  {
    (*(v17 + 8))(v22, v16);
    v24 = v12;
    return sub_FCF8(v24, &qword_4F1760);
  }

  v26 = v30;
  v29(v30, v12, v16);
  sub_3EBB24();
  v33 = 0;
  v32 = 0;
  sub_3EA4B4();
  v27 = *(v17 + 8);
  v27(v26, v16);
  return (v27)(v22, v16);
}

unint64_t sub_254098()
{
  result = qword_4FC390;
  if (!qword_4FC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC390);
  }

  return result;
}

uint64_t sub_2540EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroBackgroundVariant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2541C0()
{
  result = qword_4FC3C0;
  if (!qword_4FC3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC2C0);
    sub_2542A8(&qword_4FC3C8, type metadata accessor for HeroSupplementalArtworkView);
    sub_886BC(&qword_4FC3B8, &qword_4FC2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC3C0);
  }

  return result;
}

uint64_t sub_2542A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2542F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_254360()
{
  result = qword_4FC3D0;
  if (!qword_4FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC3D0);
  }

  return result;
}

__n128 sub_2543D4()
{
  v0 = sub_3EA7F4();
  __swift_allocate_value_buffer(v0, qword_4FC3D8);
  v1 = __swift_project_value_buffer(v0, qword_4FC3D8);
  v2 = *(v0 + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = sub_3EABE4();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #14.0 }

  *v1 = result;
  return result;
}

uint64_t static HeroContainer.cardShape.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8A80 != -1)
  {
    swift_once();
  }

  v2 = sub_3EA7F4();
  v3 = __swift_project_value_buffer(v2, qword_4FC3D8);

  return sub_254504(v3, a1);
}

uint64_t sub_254504(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA7F4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static HeroContainer.shelfCellHeight.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.33333333;
  *a1 = xmmword_410720;
  return result;
}

double sub_2545A0()
{
  result = -14.0;
  xmmword_4FC3F0 = xmmword_410730;
  *&qword_4FC400 = xmmword_410740;
  return result;
}

double static HeroContainer.playButtonInsets.getter()
{
  if (qword_4E8A88 != -1)
  {
    swift_once();
  }

  return *&xmmword_4FC3F0;
}

id static HeroContainer.contextMenuPreviewParameters(bounds:)()
{
  v0 = [objc_allocWithZone(UIPreviewParameters) init];
  if (qword_4E8A80 != -1)
  {
    swift_once();
  }

  v1 = sub_3EA7F4();
  __swift_project_value_buffer(v1, qword_4FC3D8);
  sub_3EA7D4();
  v2 = sub_3EB204();
  sub_25478C(v6);
  v3 = [objc_opt_self() bezierPathWithCGPath:v2];

  [v0 setVisiblePath:v3];
  v4 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v4];

  return v0;
}

uint64_t sub_254814(uint64_t a1)
{
  v2 = sub_3EA304();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_3EA8E4();
}

uint64_t sub_2548DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EAAF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_23D344(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3EA304();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_3ED9E4();
    v13 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_254AC4()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for HeroContainerModifier() + 20));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_3ED9E4();
  v8 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();
  sub_23968C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t HeroContainerModifier.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for HeroContainerModifier() + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t type metadata accessor for HeroContainerModifier()
{
  result = qword_4FC4E8;
  if (!qword_4FC4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeroContainerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_3EA304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC410);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC418);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC420);
  __chkstk_darwin(v60);
  v13 = &v57 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC428);
  __chkstk_darwin(v61);
  v15 = &v57 - v14;
  if (qword_4E8A80 != -1)
  {
    swift_once();
  }

  v16 = sub_3EA7F4();
  v17 = __swift_project_value_buffer(v16, qword_4FC3D8);
  v18 = &v11[*(v9 + 36)];
  sub_254504(v17, v18);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC430) + 36)) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC438);
  (*(*(v19 - 8) + 16))(v11, v58, v19);
  sub_2548DC(v5);
  if ((*(v3 + 88))(v5, v2) == enum case for ColorScheme.dark(_:))
  {
    sub_3EB784();
    v20 = sub_3EB794();
  }

  else
  {
    sub_3EB764();
    v21 = v17;
    v22 = v11;
    v23 = v2;
    v20 = sub_3EB794();

    v24 = v23;
    v11 = v22;
    v17 = v21;
    (*(v3 + 8))(v5, v24);
  }

  sub_254AC4();
  sub_3EA354();
  sub_254504(v17, v8);
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC440) + 36)];
  v26 = v63;
  *v25 = v62;
  *(v25 + 1) = v26;
  *(v25 + 4) = v64;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC448);
  *&v8[*(v27 + 52)] = v20;
  *&v8[*(v27 + 56)] = 256;
  v28 = sub_3EBA74();
  v30 = v29;
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC450) + 36)];
  *v31 = v28;
  v31[1] = v30;
  v32 = sub_3EBA74();
  v34 = v33;
  v35 = &v13[*(v60 + 36)];
  sub_FACC(v8, v35, &qword_4FC410);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC458) + 36));
  *v36 = v32;
  v36[1] = v34;
  sub_FACC(v11, v13, &qword_4FC418);
  v37 = sub_3EB774();
  v38 = &v15[*(v61 + 36)];
  sub_254504(v17, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC460);
  *(v38 + *(v39 + 52)) = v37;
  *(v38 + *(v39 + 56)) = 256;
  sub_3EB764();
  v40 = sub_3EB794();

  v41 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC468) + 36);
  *v41 = v40;
  *(v41 + 8) = xmmword_410770;
  *(v41 + 24) = 0x402E000000000000;
  LOBYTE(v37) = sub_3EB084();
  sub_3EA264();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC470) + 36);
  *v50 = v37;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  v51 = sub_3EBA74();
  v53 = v52;
  v54 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC478) + 36));
  *v54 = v51;
  v54[1] = v53;
  sub_FACC(v13, v15, &qword_4FC420);
  v55 = v59;
  sub_FACC(v15, v59, &qword_4FC428);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC480);
  *(v55 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_255334@<X0>(void *a1@<X8>)
{
  result = sub_3EA8F4();
  *a1 = v3;
  return result;
}

uint64_t sub_255390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25546C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC488);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_255534()
{
  sub_23CE7C();
  if (v0 <= 0x3F)
  {
    sub_239548();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2555BC()
{
  result = qword_4FC520;
  if (!qword_4FC520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC480);
    sub_255648();
    sub_233A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC520);
  }

  return result;
}

unint64_t sub_255648()
{
  result = qword_4FC528;
  if (!qword_4FC528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC428);
    sub_255700();
    sub_886BC(&qword_4FC558, &qword_4FC478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC528);
  }

  return result;
}

unint64_t sub_255700()
{
  result = qword_4FC530;
  if (!qword_4FC530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC420);
    sub_2557B8();
    sub_886BC(&qword_4FC550, &qword_4FC458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC530);
  }

  return result;
}

unint64_t sub_2557B8()
{
  result = qword_4FC538;
  if (!qword_4FC538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC418);
    sub_886BC(&qword_4FC540, &qword_4FC438);
    sub_886BC(&qword_4FC548, &qword_4FC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC538);
  }

  return result;
}

uint64_t sub_255948@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for HeroShowArtworkView(0);
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC630);
  __chkstk_darwin(v46);
  v36 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v34 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC638);
  __chkstk_darwin(v44);
  v45 = &v34 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC640);
  __chkstk_darwin(v41);
  v10 = &v34 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC648);
  __chkstk_darwin(v43);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC650);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_3E7784();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  v23 = type metadata accessor for HeroBackgroundVariant();
  __chkstk_darwin(v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257264(v42, v25, type metadata accessor for HeroBackgroundVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD30) + 48);

    sub_25642C(&v25[v27], v22, &type metadata accessor for ArtworkModel);
    sub_257264(v22, v15, &type metadata accessor for ArtworkModel);
    *&v15[*(v13 + 36)] = 0x3FF0000000000000;
    sub_FBD0(v15, v10, &qword_4FC650);
    swift_storeEnumTagMultiPayload();
    sub_256228();
    sub_3EADE4();
    sub_FBD0(v12, v45, &qword_4FC648);
    swift_storeEnumTagMultiPayload();
    sub_25619C();
    sub_256330();
    sub_3EADE4();
    sub_FCF8(v12, &qword_4FC648);
    sub_FCF8(v15, &qword_4FC650);
    sub_86F48(v22);
    return sub_86F48(v25);
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBD28);

    swift_storeEnumTagMultiPayload();
    sub_256228();
    sub_3EADE4();
    sub_FBD0(v12, v45, &qword_4FC648);
    swift_storeEnumTagMultiPayload();
    sub_25619C();
    sub_256330();
    sub_3EADE4();
    sub_FCF8(v12, &qword_4FC648);
    return sub_86F48(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBCC8);

  v29 = v38;
  sub_25612C(v25, v38);
  v30 = v37;
  sub_FBD0(v29, v37, &qword_4F1D50);
  if ((*(v17 + 48))(v30, 1, v16) == 1)
  {
    sub_FCF8(v30, &qword_4F1D50);
    v31 = 1;
    v32 = v36;
  }

  else
  {
    sub_25642C(v30, v19, &type metadata accessor for ArtworkModel);
    v33 = v35;
    sub_25642C(v19, v35, &type metadata accessor for ArtworkModel);
    v32 = v36;
    sub_25642C(v33, v36, type metadata accessor for HeroShowArtworkView);
    v31 = 0;
  }

  (*(v39 + 56))(v32, v31, 1, v40);
  sub_FBD0(v32, v45, &qword_4FC630);
  swift_storeEnumTagMultiPayload();
  sub_25619C();
  sub_256330();
  sub_3EADE4();
  sub_FCF8(v32, &qword_4FC630);
  return sub_FCF8(v29, &qword_4F1D50);
}

uint64_t sub_25612C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25619C()
{
  result = qword_4FC658;
  if (!qword_4FC658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC648);
    sub_256228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC658);
  }

  return result;
}

unint64_t sub_256228()
{
  result = qword_4FC660;
  if (!qword_4FC660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC650);
    sub_2563E4(&qword_4FC668, type metadata accessor for HeroShowArtworkIcon);
    sub_886BC(&qword_4FC670, &qword_4FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC660);
  }

  return result;
}

unint64_t sub_256330()
{
  result = qword_4FC680;
  if (!qword_4FC680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC630);
    sub_2563E4(&qword_4FC688, type metadata accessor for HeroShowArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC680);
  }

  return result;
}

uint64_t sub_2563E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25642C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2565A0()
{
  result = qword_4FC7B0;
  if (!qword_4FC7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7B8);
    sub_25619C();
    sub_256330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC7B0);
  }

  return result;
}

__n128 sub_256648@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v43 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  sub_257264(v1, &v40 - v13, &type metadata accessor for ArtworkModel);
  v15 = sub_3E7784();
  v16 = *(*(v15 - 8) + 56);
  v44 = v14;
  v16(v14, 0, 1, v15);
  v17 = sub_3E94E4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  *&v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v18 = sub_3EBA54();
  v41 = v19;
  v42 = v11;
  sub_FBD0(v14, v11, &qword_4F1D50);
  sub_FBD0(v8, v5, &qword_4FAE68);
  sub_FBD0(&v48, v47, &qword_4EE870);
  sub_FBD0(v11, a1, &qword_4F1D50);
  v20 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v5, a1 + v20[7], &qword_4FAE68);
  sub_FBD0(v47, v46, &qword_4EE870);
  v21 = (a1 + v20[5]);
  *v21 = vdupq_n_s64(0x4048000000000000uLL);
  v21[1].i8[0] = 0;
  v22 = (a1 + v20[6]);
  v23 = v41;
  *v22 = v18;
  v22[1] = v23;
  *(a1 + v20[8]) = 1;
  *(a1 + v20[9]) = 0;
  sub_FBD0(v46, v45, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v46, &qword_4EE870);
  sub_FCF8(v47, &qword_4EE870);
  sub_FCF8(v5, &qword_4FAE68);
  sub_FCF8(v42, &qword_4F1D50);
  sub_FCF8(&v48, &qword_4EE870);
  sub_FCF8(v43, &qword_4FAE68);
  sub_FCF8(v44, &qword_4F1D50);
  v24 = a1 + *(type metadata accessor for Artwork(0) + 20);
  *v24 = sub_231DEC;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  if (qword_4E8A90 != -1)
  {
    swift_once();
  }

  v25 = sub_3EA7F4();
  v26 = __swift_project_value_buffer(v25, qword_4FC560);
  sub_3EB764();
  v27 = sub_3EB794();

  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7C0) + 36);
  sub_257264(v26, v28, &type metadata accessor for RoundedRectangle);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7C8);
  v30 = v28 + v29[9];
  *v30 = v27;
  *(v30 + 8) = xmmword_4108F0;
  *(v30 + 24) = 0x4000000000000000;
  v31 = v29[10];
  *(v28 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  v32 = v28 + v29[11];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  LOBYTE(v32) = sub_3EB084();
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7D0) + 36);
  *v33 = v32;
  *(v33 + 8) = xmmword_410900;
  *(v33 + 24) = xmmword_410910;
  *(v33 + 40) = 0;
  sub_3EBA34();
  sub_3EA804();
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7D8) + 36);
  result = v51;
  v36 = v53;
  v37 = v54;
  *(v34 + 64) = v52;
  *(v34 + 80) = v36;
  *(v34 + 96) = v37;
  v38 = v49;
  v39 = v50;
  *v34 = v48;
  *(v34 + 16) = v38;
  *(v34 + 32) = v39;
  *(v34 + 48) = result;
  return result;
}

__n128 sub_256C30@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v3 - 8);
  v5 = &v32[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v8 = &v32[-v7];
  sub_257264(v1, &v32[-v7], &type metadata accessor for ArtworkModel);
  v9 = sub_3E7784();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_3E94E4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  *&v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v11 = sub_3EBA54();
  v13 = v12;
  sub_FBD0(v8, a1, &qword_4F1D50);
  v14 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v5, a1 + v14[7], &qword_4FAE68);
  sub_FBD0(&v34, v33, &qword_4EE870);
  v15 = a1 + v14[5];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 2;
  v16 = (a1 + v14[6]);
  *v16 = v11;
  v16[1] = v13;
  *(a1 + v14[8]) = 1;
  *(a1 + v14[9]) = 0;
  sub_FBD0(v33, v32, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v33, &qword_4EE870);
  sub_FCF8(&v34, &qword_4EE870);
  sub_FCF8(v5, &qword_4FAE68);
  sub_FCF8(v8, &qword_4F1D50);
  v17 = a1 + *(type metadata accessor for Artwork(0) + 20);
  *v17 = sub_231DEC;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  if (qword_4E8A98 != -1)
  {
    swift_once();
  }

  v18 = sub_3EA7F4();
  v19 = __swift_project_value_buffer(v18, qword_4FC578);
  sub_3EB764();
  v20 = sub_3EB794();

  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7C0) + 36);
  sub_257264(v19, v21, &type metadata accessor for RoundedRectangle);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7C8);
  v23 = v21 + v22[9];
  *v23 = v20;
  *(v23 + 8) = xmmword_4108F0;
  *(v23 + 24) = 0x4000000000000000;
  v24 = v22[10];
  *(v21 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB588);
  swift_storeEnumTagMultiPayload();
  v25 = v21 + v22[11];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7E0) + 36);
  *v26 = 0;
  *(v26 + 8) = 1;
  LOBYTE(v25) = sub_3EB084();
  v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7E8) + 36);
  *v27 = v25;
  *(v27 + 8) = xmmword_410920;
  *(v27 + 24) = xmmword_410930;
  *(v27 + 40) = 0;
  if (qword_4E8AA0 != -1)
  {
    swift_once();
  }

  sub_3EA804();
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC7F0) + 36);
  v29 = v39;
  *(v28 + 64) = v38;
  *(v28 + 80) = v29;
  *(v28 + 96) = v40;
  v30 = v35;
  *v28 = v34;
  *(v28 + 16) = v30;
  result = v37;
  *(v28 + 32) = v36;
  *(v28 + 48) = result;
  return result;
}

__n128 sub_257180(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3EA7F4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *(v3 + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = sub_3EABE4();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  __asm { FMOV            V0.2D, #5.0 }

  *v4 = result;
  return result;
}

uint64_t sub_257220()
{
  result = sub_3EBA74();
  qword_4FC590 = result;
  *algn_4FC598 = v1;
  return result;
}

uint64_t sub_257264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2572E0()
{
  result = qword_4FC7F8;
  if (!qword_4FC7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7D8);
    sub_25736C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC7F8);
  }

  return result;
}

unint64_t sub_25736C()
{
  result = qword_4FC800;
  if (!qword_4FC800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7D0);
    sub_2573F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC800);
  }

  return result;
}

unint64_t sub_2573F8()
{
  result = qword_4FC808;
  if (!qword_4FC808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7C0);
    sub_2563E4(&qword_4FC190, type metadata accessor for Artwork);
    sub_886BC(&qword_4FC810, &qword_4FC7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC808);
  }

  return result;
}

unint64_t sub_2574E4()
{
  result = qword_4FC818;
  if (!qword_4FC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7F0);
    sub_257570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC818);
  }

  return result;
}

unint64_t sub_257570()
{
  result = qword_4FC820;
  if (!qword_4FC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7E8);
    sub_2575FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC820);
  }

  return result;
}

unint64_t sub_2575FC()
{
  result = qword_4FC828;
  if (!qword_4FC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FC7E0);
    sub_2573F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC828);
  }

  return result;
}

uint64_t sub_257694(uint64_t a1, unint64_t a2, int a3)
{
  LODWORD(v59) = a3;
  v60 = a2;
  v4 = sub_3E5C44();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FBC60);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v46 - v9;
  __chkstk_darwin(v10);
  v56 = &v46 - v11;
  v12 = sub_3E5C64();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E5C24();
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3E6044();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FC830);
  __chkstk_darwin(v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  __chkstk_darwin(v30);
  v33 = &v46 - v32;
  result = 0;
  if ((a1 & 0x100000000) == 0)
  {
    result = 0;
    v64 = a1;
    if (*&a1 > 0.0 && (v59 & 1) == 0 && v60 >= 0x1F)
    {
      v35 = v31;
      sub_3E6024();
      v59 = sub_257E34();
      sub_3E5BB4();
      sub_3E5C14();
      sub_3E5BD4();
      (*(v46 + 8))(v17, v15);
      v36 = *(v35 + 8);
      v36(v23, v21);
      sub_3E5C54();
      sub_3E5BE4();
      (*(v47 + 8))(v14, v48);
      v36(v26, v21);
      sub_3E6024();
      sub_3E5BC4();
      v37 = v50;
      v48 = v49[1];
      v48(v20, v50);
      v36(v29, v21);
      sub_886BC(&qword_4FC840, &qword_4FC830);
      sub_3ED074();
      v36(v33, v21);
      v59 = v62;
      v49 = v63;
      v61 = v60;
      sub_3E6024();
      sub_24B9D8();
      v38 = v51;
      sub_3E5A84();
      v39 = v53;
      sub_3E5C34();
      v40 = v52;
      v41 = v58;
      sub_3E5AA4();
      (*(v54 + 8))(v39, v55);
      v42 = *(v57 + 8);
      v42(v38, v41);
      sub_3E6024();
      v43 = v56;
      sub_3E5A94();
      v48(v20, v37);
      v42(v40, v41);
      sub_886BC(&qword_4FBC70, &qword_4FBC60);
      sub_3EE1E4();
      v42(v43, v41);
      v44 = v62;
      v45 = v63;
      v62 = 545626338;
      v63 = 0xA400000000000000;
      v65._countAndFlagsBits = v59;
      v65._object = v49;
      sub_3ED3D4(v65);

      v66._countAndFlagsBits = 10272;
      v66._object = 0xE200000000000000;
      sub_3ED3D4(v66);
      v67._countAndFlagsBits = v44;
      v67._object = v45;
      sub_3ED3D4(v67);

      v68._countAndFlagsBits = 41;
      v68._object = 0xE100000000000000;
      sub_3ED3D4(v68);
      return v62;
    }
  }

  return result;
}

uint64_t ShowHero.eyebrowRatingText.getter()
{
  v1 = type metadata accessor for ShowHero();
  v2 = (v0 + *(v1 + 40));
  v3 = *v2;
  v4 = *(v2 + 4);
  v5 = v0 + *(v1 + 44);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_257694(v3 | (v4 << 32), v6, v7);
}

unint64_t sub_257E34()
{
  result = qword_4FC838;
  if (!qword_4FC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FC838);
  }

  return result;
}

uint64_t Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a6;
  v33 = a8;
  v34 = a9;
  v35 = a7;
  v30 = a5;
  v31 = a4;
  v29 = a3;
  v11 = type metadata accessor for Header(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[32] = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v16 = *(v15 + 28);
  v17 = type metadata accessor for ActionMenu(0);
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
  v18 = *(v11 + 32);
  v19 = type metadata accessor for Header.PrimaryAction(0);
  v20 = *(v19 - 8);
  (*(v20 + 56))(&v14[v18], 1, 1, v19);
  v21 = *(v11 + 36);
  v22 = sub_3E7784();
  (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
  if ((sub_3EE0E4() & 1) != 0 || (*(v20 + 48))(v35, 1, v19) != 1)
  {
    *v14 = a1;
    *(v14 + 1) = a2;
    v25 = v31;
    v24 = v32;
    *(v14 + 2) = v29;
    *(v14 + 3) = v25;
    v14[32] = v30 & 1;
    sub_51F9C(v24, &v14[v16], &qword_4F1AB8);
    v26 = v35;
    sub_F7C5C(v35, &v14[v18]);
    sub_51F9C(v33, &v14[v21], &qword_4F1D50);
    v27 = v34;
    sub_2588BC(v14, v34, type metadata accessor for Header);
    (*(v12 + 56))(v27, 0, 1, v11);
    sub_FCF8(v26, &qword_4F1AB0);
    return sub_258724(v14, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v33, &qword_4F1D50);
    sub_FCF8(v32, &qword_4F1AB8);
    sub_FCF8(v35, &qword_4F1AB0);
    sub_258724(v14, type metadata accessor for Header);
    return (*(v12 + 56))(v34, 1, 1, v11);
  }
}

uint64_t Header.PrimaryAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Header.PrimaryAction(0);
  v12 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButtonItem();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380) + 64);
    sub_258784(a1, v6, type metadata accessor for ActionMenu);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(a1 + v8, &qword_4F5388);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_258784(a1, v6, type metadata accessor for ActionButton);
    swift_storeEnumTagMultiPayload();
LABEL_5:
    sub_258784(v6, a2, type metadata accessor for Header.PrimaryAction);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  sub_258724(a1, type metadata accessor for HeaderButtonItem);
  v10 = *(v12 + 56);

  return v10(a2, 1, 1, v4);
}

uint64_t sub_258724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Header.PrimaryAction.action.getter()
{
  v1 = type metadata accessor for Header.PrimaryAction(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC(v0, v3, type metadata accessor for Header.PrimaryAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v3;
  }

  sub_258724(v3, type metadata accessor for Header.PrimaryAction);
  return 0;
}

uint64_t sub_2588BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258938(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[7];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_258AE8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_258C78()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_258D90(319, &qword_4FC8B0, type metadata accessor for ActionMenu);
    if (v1 <= 0x3F)
    {
      sub_258D90(319, &unk_4FC8B8, type metadata accessor for Header.PrimaryAction);
      if (v2 <= 0x3F)
      {
        sub_258D90(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}
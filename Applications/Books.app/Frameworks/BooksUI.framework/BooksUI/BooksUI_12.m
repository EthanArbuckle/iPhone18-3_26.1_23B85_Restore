uint64_t sub_134300(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A208, &unk_27A5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1343B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_260410();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_134538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_260410();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_2EF0(qword_316978, &unk_268A60);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_1346A0()
{
  sub_78DC8(319, &qword_31A200, &qword_31A208, &unk_27A5E0);
  if (v0 <= 0x3F)
  {
    sub_134834(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext);
    if (v1 <= 0x3F)
    {
      sub_260410();
      if (v2 <= 0x3F)
      {
        sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
        if (v3 <= 0x3F)
        {
          sub_134834(319, &qword_316A10, &type metadata accessor for DataStack);
          if (v4 <= 0x3F)
          {
            sub_78DC8(319, &qword_316A18, &qword_316A20, &qword_268A90);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ButtonType(319);
              if (v6 <= 0x3F)
              {
                sub_134888();
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

void sub_134834(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_134888()
{
  result = qword_31F618;
  if (!qword_31F618)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_31F618);
  }

  return result;
}

uint64_t sub_1348F4()
{
  result = sub_260CA0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1349B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIKitActionButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _CodeAnyActionModel_Many.description.getter()
{
  v1 = *v0;
  sub_2EF0(&qword_316A30, &qword_2697B0);

  return sub_2646A0();
}

uint64_t _CodeAnyActionModel_Many.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v14);
  sub_3FC1C();
  v5 = sub_264700();
  if (v2)
  {
    return sub_3080(a1);
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v15 = _swiftEmptyArrayStorage;
    v8 = v5;
    sub_2DA24(0, v7, 0);
    v9 = v15;
    v10 = v8 + 32;
    do
    {
      sub_AAFC8(v10, v13);
      sub_30CC(v13, v14);
      sub_3FCA0(v13);
      v15 = v9;
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        sub_2DA24((v11 > 1), v12 + 1, 1);
        v9 = v15;
      }

      v9[2] = v12 + 1;
      sub_F7CC(v14, &v9[5 * v12 + 4]);
      v10 += 40;
      --v7;
    }

    while (v7);
    sub_3080(a1);

    *a2 = v9;
  }

  else
  {

    result = sub_3080(a1);
    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t _CodeAnyActionModel_Many.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_3FC1C();
  v4 = sub_2646E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_2DA24(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_AAFC8(v7, v11);
      sub_30CC(v11, v13);
      sub_3FCA0(v11);
      v12 = v6;
      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_2DA24((v8 > 1), v9 + 1, 1);
        v6 = v12;
      }

      v6[2] = v9 + 1;
      sub_F7CC(v13, &v6[5 * v9 + 4]);
      v7 += 40;
      --v5;
    }

    while (v5);
    sub_3080(a1);
  }

  else
  {

    result = sub_3080(a1);
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_134D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v12);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v13);
  (*(v6 + 16))(v9, a1, a4);
  return sub_261140();
}

uint64_t AssetCover.init(aspectRatio:url:effect:placeholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a6;
  a5[1] = a7;
  v12 = type metadata accessor for AssetCover();
  v13 = v12[9];
  v14 = sub_260060();
  (*(*(v14 - 8) + 32))(a5 + v13, a1, v14);
  result = (*(*(a4 - 8) + 32))(a5 + v12[10], a2, a4);
  *(a5 + v12[11]) = a3;
  return result;
}

uint64_t AssetCover.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = *(a1 - 8);
  v69 = *(v65 + 64);
  __chkstk_darwin(a1);
  v66 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v12 = a1;
  v13 = *(a1 + 24);
  v62 = *(a1 + 16);
  v63 = v13;
  type metadata accessor for _CoverEffectViewModifier();
  v14 = sub_261730();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v76 = AssociatedTypeWitness;
  v77 = &type metadata for Color;
  v78 = v16;
  v79 = &protocol witness table for Color;
  v17 = sub_261150();
  v61 = v14;
  v60 = v17;
  sub_261F90();
  WitnessTable = swift_getWitnessTable();
  v74 = &protocol witness table for Image;
  v75 = WitnessTable;
  v64 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v19 = swift_getWitnessTable();
  v59 = v19;
  v55 = swift_getWitnessTable();
  v72 = v19;
  v73 = v55;
  swift_getWitnessTable();
  v53 = sub_261080();
  v57 = *(v53 - 8);
  v20 = *(v57 + 64);
  __chkstk_darwin(v53);
  v52 = &v49 - v21;
  v56 = sub_261730();
  v58 = *(v56 - 8);
  v22 = *(v58 + 64);
  __chkstk_darwin(v56);
  v51 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v54 = &v49 - v25;
  v26 = *(v12 + 36);
  v27 = sub_260060();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v68 = v2;
  v50 = v11;
  v29(v11, v2 + v26, v27);
  (*(v28 + 56))(v11, 0, 1, v27);
  v30 = v65;
  v49 = *(v65 + 16);
  v49(v7, v2, v12);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v33 = v62;
  v34 = v63;
  *(v32 + 16) = v62;
  *(v32 + 24) = v34;
  v35 = *(v30 + 32);
  v35(v32 + v31, v7, v12);
  v36 = v66;
  v49(v66, v68, v12);
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  *(v37 + 24) = v34;
  v35(v37 + v31, v36, v12);
  v38 = v52;
  sub_135D64(v50, sub_135848, v32, sub_135CD8, v37, v61, v60, v59, v52, v55);
  v39 = *v68;
  v40 = v68[1];
  v41 = v53;
  v42 = swift_getWitnessTable();
  v43 = v51;
  sub_262A40();
  (*(v57 + 8))(v38, v41);
  v70 = v42;
  v71 = &protocol witness table for _AspectRatioLayout;
  v44 = v56;
  v45 = swift_getWitnessTable();
  v46 = v54;
  sub_1609C(v43, v44, v45);
  v47 = *(v58 + 8);
  v47(v43, v44);
  sub_1609C(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t sub_135668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier();
  v7 = sub_261730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v15 = type metadata accessor for AssetCover();
  Image.coverEffect<A>(_:)(a2 + *(v15 + 40), a3, a4, v11);
  WitnessTable = swift_getWitnessTable();
  v20[0] = &protocol witness table for Image;
  v20[1] = WitnessTable;
  v17 = swift_getWitnessTable();
  sub_1609C(v11, v7, v17);
  v18 = *(v8 + 8);
  v18(v11, v7);
  sub_1609C(v14, v7, v17);
  return (v18)(v14, v7);
}

uint64_t sub_135848(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AssetCover() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_135668(a1, v6, v3, v4);
}

uint64_t sub_1358E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v23 - v9;
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  v27[0] = AssociatedTypeWitness;
  v27[1] = &type metadata for Color;
  v27[2] = v24;
  v27[3] = &protocol witness table for Color;
  v11 = sub_261150();
  v23 = *(v11 - 8);
  v12 = *(v23 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for AssetCover();
  v19 = a1 + *(v18 + 40);
  (*(a3 + 48))(a2, a3);
  v27[0] = *(a1 + *(v18 + 44));
  sub_134D28(v27, 256, AssociatedTypeWitness, &type metadata for Color);
  (*(v25 + 8))(v10, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v14, v11, WitnessTable);
  v21 = *(v23 + 8);
  v21(v14, v11);
  sub_1609C(v17, v11, WitnessTable);
  return (v21)(v17, v11);
}

uint64_t sub_135BA8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for AssetCover();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v7 = *(v3 + 36);
  v8 = sub_260060();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  (*(*(v2 - 8) + 8))(v6 + *(v4 + 48), v2);
  v9 = *(v6 + *(v4 + 52));

  return swift_deallocObject();
}

uint64_t sub_135CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AssetCover() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1358E4(v6, v3, v4, a1);
}

uint64_t sub_135D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[0] = a5;
  v23[1] = a9;
  v17 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_136684(a1, v23 - v19);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v20[6] = a2;
  v20[7] = a3;
  v21 = v23[0];
  v20[8] = a4;
  v20[9] = v21;
  sub_261F90();
  v23[2] = a8;
  v23[3] = a10;
  swift_getWitnessTable();
  sub_261070();
  return sub_17EBC(a1);
}

void sub_135F18(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v2 <= 0x3F)
  {
    sub_260060();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_135FC0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_260060() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_30:
    if (v7 == v13)
    {
      v23 = *(v6 + 48);

      return v23((a1 + v10 + 16) & ~v10);
    }

    else
    {
      v24 = (((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12;
      if (v9 == v13)
      {
        v25 = *(v8 + 48);

        return v25(v24, v9);
      }

      else
      {
        v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v13 + (v16 | v22) + 1;
}

void sub_136210(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_260060() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v11 <= v9)
  {
    v16 = *(v8 + 84);
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v15 + 7;
  v18 = ((v15 + 7 + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = a3 - v16 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v16 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 > v16)
  {
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v16;
    }

    if (v18)
    {
      v24 = ~v16 + a2;
      bzero(a1, v18);
      *a1 = v24;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }
    }

    else if (v22)
    {
      *(a1 + v18) = v23;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v18) = 0;
  }

  else if (v22)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 == v16)
  {
    v25 = *(v8 + 56);

    v25((a1 + v12 + 16) & ~v12, a2);
  }

  else
  {
    v26 = (((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14;
    if (v11 == v16)
    {
      v27 = *(v10 + 56);

      v27(v26, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v28 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v28 = (a2 - 1);
      }

      *((v17 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
    }
  }
}

uint64_t sub_1364A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _CoverEffectViewModifier();
  sub_261730();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_261150();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261080();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_136684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_322C70, &qword_272AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1366F4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v50 = a9;
  v41 = a5;
  v42 = a4;
  v44 = a3;
  v45 = a2;
  v46 = *(a6 - 8);
  v12 = *(v46 + 64);
  v48 = a10;
  __chkstk_darwin(a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v43 = *(v18 - 8);
  v19 = *(v43 + 64);
  __chkstk_darwin(v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v41 - v24;
  v26 = sub_261F90();
  v47 = *(v26 - 8);
  v27 = *(v47 + 64);
  __chkstk_darwin(v26);
  v29 = &v41 - v28;
  v30 = sub_2615C0();
  if (v30)
  {
    v45(v30, v31);
    v32 = v49;
    sub_1609C(v14, a6, v49);
    v45 = v26;
    v33 = *(v46 + 8);
    v33(v14, a6);
    sub_1609C(v17, a6, v32);
    v34 = v48;
    sub_1D738(v14, a6);

    v33(v14, a6);
    v33(v17, a6);
    v26 = v45;
  }

  else
  {
    v42(0, v31);
    v35 = v48;
    sub_1609C(v22, a7, v48);
    v36 = *(v43 + 8);
    v36(v22, a7);
    sub_1609C(v25, a7, v35);
    v37 = v49;
    sub_1D830(v22, a6, a7);
    v36(v22, a7);
    v38 = v25;
    v34 = v35;
    v36(v38, a7);
    v32 = v37;
  }

  v51 = v32;
  v52 = v34;
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v29, v26, WitnessTable);
  return (*(v47 + 8))(v29, v26);
}

uint64_t sub_136AA8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

id static NSBundle.BooksUI.getter()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t sub_136B7C()
{
  v1 = *(v0 + 40);
  swift_errorRetain();
  return v1;
}

uint64_t Error.withSubsequentAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(v11, v17);
  (*(v7 + 16))(v10, v4, a2);
  v12 = sub_264EC0();
  if (v12)
  {
    v13 = v12;
    (*(v7 + 8))(v10, a2);
  }

  else
  {
    v13 = swift_allocError();
    (*(v7 + 32))(v14, v10, a2);
  }

  result = sub_F7CC(v17, a3);
  *(a3 + 40) = v13;
  return result;
}

unint64_t sub_136D24()
{
  result = qword_31F7F8;
  if (!qword_31F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F7F8);
  }

  return result;
}

uint64_t sub_136D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_136DC0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_136E1C(uint64_t a1)
{
  result = sub_136E44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_136E44()
{
  result = qword_31F800;
  if (!qword_31F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F800);
  }

  return result;
}

uint64_t YearInReviewLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_2EF0(&qword_31F808, &qword_27AD80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v35 - v3;
  v36 = sub_2EF0(&qword_31F810, &qword_27AD88);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v35 - v7;
  v35 = sub_2EF0(&qword_31F818, &qword_27AD90);
  v9 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v11 = &v35 - v10;
  v12 = sub_2EF0(&qword_31F820, &qword_27AD98);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v35 - v14;
  *v4 = sub_261E50();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v16 = &v4[*(sub_2EF0(&qword_31F828, &unk_27ADA0) + 44)];
  sub_2612D0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v18 = sub_2624C0();
  *(inited + 32) = v18;
  v19 = sub_2624E0();
  *(inited + 33) = v19;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v18)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v19)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_8E38(&qword_31F830, &qword_31F808, &qword_27AD80);
  sub_262D00();
  sub_1372C0(v4);
  v20 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v22 = v21;
  v23 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v23)
  {
    v23 = sub_262FE0();
  }

  v24 = v23;
  v25 = sub_262500();
  (*(v5 + 32))(v11, v8, v36);
  v26 = &v11[*(v35 + 36)];
  *v26 = v24;
  v26[8] = v25;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  sub_22148(v11, v15, &qword_31F818, &qword_27AD90);
  KeyPath = swift_getKeyPath();
  v28 = sub_2EF0(&qword_31F838, &unk_27ADE0);
  v29 = v37;
  v30 = (v37 + *(v28 + 36));
  v31 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v32 = enum case for ColorScheme.light(_:);
  v33 = sub_261180();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  return sub_22148(v15, v29, &qword_31F820, &qword_27AD98);
}

uint64_t sub_1372C0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F808, &qword_27AD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_137378()
{
  result = qword_31F840;
  if (!qword_31F840)
  {
    sub_2F9C(&qword_31F838, &unk_27ADE0);
    sub_137430();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F840);
  }

  return result;
}

unint64_t sub_137430()
{
  result = qword_31F848;
  if (!qword_31F848)
  {
    sub_2F9C(&qword_31F820, &qword_27AD98);
    sub_1374BC();
    sub_1670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F848);
  }

  return result;
}

unint64_t sub_1374BC()
{
  result = qword_31F850;
  if (!qword_31F850)
  {
    sub_2F9C(&qword_31F818, &qword_27AD90);
    sub_2F9C(&qword_31F808, &qword_27AD80);
    sub_8E38(&qword_31F830, &qword_31F808, &qword_27AD80);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31F858, &qword_31F860, &qword_27AE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F850);
  }

  return result;
}

uint64_t UberNavigationTitleView.init(title:subtitle:navigationBarOpacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for UberNavigationTitleView();
  v13 = v12[6];
  *(a5 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v15 = sub_260BD0();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  result = sub_22148(a2, a5 + v12[5], &qword_316208, &qword_268BD0);
  v17 = a5 + v12[8];
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a6;
  return result;
}

uint64_t type metadata accessor for UberNavigationTitleView()
{
  result = qword_31F8D8;
  if (!qword_31F8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_137774@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for UberNavigationTitleView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1393B0(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_137960@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for UberNavigationTitleView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_318F68, &qword_26C578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1393B0(v11, a1, type metadata accessor for FontConstants.Navigation);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t UberNavigationTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = sub_2EF0(&qword_31F868, &unk_27AED8);
  sub_137D54(v1, a1 + *(v11 + 44));
  v12 = &v1[*(type metadata accessor for UberNavigationTitleView() + 32)];
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v29[3] = *v12;
  v29[4] = v13;
  v29[5] = v14;
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263350();
  v15 = v29[0];
  v16 = v29[1];
  v17 = v29[2];
  v18 = (a1 + *(sub_2EF0(&qword_31F870, &qword_27AEE8) + 36));
  *v18 = v15;
  v18[1] = v16;
  v18[2] = v17;
  LOBYTE(v16) = sub_2624F0();
  sub_137774(v10);
  sub_1393B0(v10, v6, type metadata accessor for SizeConstants.Environment);
  sub_139340(v6, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = sub_2EF0(&qword_31F878, &qword_27AEF0);
  v28 = a1 + *(result + 36);
  *v28 = v16;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_137D54@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_2EF0(&qword_31F960, &qword_27B020);
  v129 = *(v3 - 8);
  v130 = v3;
  v4 = *(v129 + 64);
  __chkstk_darwin(v3);
  v119 = &v105 - v5;
  v6 = sub_2EF0(&qword_31F968, &qword_27B028);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v132 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v131 = &v105 - v10;
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v118 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v110 = &v105 - v15;
  __chkstk_darwin(v16);
  v109 = &v105 - v17;
  v18 = sub_262730();
  v137 = *(v18 - 8);
  v19 = *(v137 + 64);
  __chkstk_darwin(v18);
  v117 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v105 - v22;
  __chkstk_darwin(v23);
  v106 = &v105 - v24;
  v25 = type metadata accessor for FontConstants.Navigation(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v116 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v105 = &v105 - v29;
  __chkstk_darwin(v30);
  v32 = &v105 - v31;
  v33 = sub_2EF0(&qword_316208, &qword_268BD0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v126 = (&v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v38 = &v105 - v37;
  v39 = sub_260BD0();
  v40 = *(v39 - 8);
  v41 = v40[8];
  __chkstk_darwin(v39);
  v114 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v105 - v44;
  v46 = sub_260B00();
  v124 = *(v46 - 8);
  v125 = v46;
  v47 = *(v124 + 64);
  __chkstk_darwin(v46);
  v49 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v50 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v127 = &v105 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v105 - v53;
  v56 = __chkstk_darwin(v55);
  v136 = &v105 - v57;
  v112 = v40[2];
  v111 = v40 + 2;
  v112(v45, a1, v39, v56);
  v123 = v49;
  v113 = v45;
  sub_260B10();
  v120 = *(type metadata accessor for UberNavigationTitleView() + 20);
  sub_8198(&a1[v120], v38, &qword_316208, &qword_268BD0);
  v115 = v40;
  v58 = v40[6];
  v135 = v39;
  v121 = v58;
  LODWORD(v45) = v58(v38, 1, v39);
  sub_8E80(v38, &qword_316208, &qword_268BD0);
  v134 = (v137 + 104);
  v128 = v18;
  if (v45 == 1)
  {
    v32 = v105;
    v59 = a1;
    sub_137960(v105);
    v60 = v107;
    v108 = *v134;
    v108(v107, enum case for Font.TextStyle.headline(_:), v18);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v61 = v18;
      v62 = sub_2625C0();
      v63 = v110;
      (*(*(v62 - 8) + 56))(v110, 1, 1, v62);
    }

    else
    {
      v68 = enum case for Font.Design.serif (_:);
      v69 = sub_2625C0();
      v70 = v60;
      v71 = *(v69 - 8);
      v63 = v110;
      (*(v71 + 104))(v110, v68, v69);
      (*(v71 + 56))(v63, 0, 1, v69);
      v60 = v70;
      v61 = v128;
    }

    v72 = v136;
    v73 = sub_262680();
    sub_8E80(v63, &qword_318458, &unk_26B270);
    v74 = *(v137 + 8);
    v74(v60, v61);
    v75 = v59;
  }

  else
  {
    v110 = a1;
    sub_137960(v32);
    v64 = v106;
    v108 = *v134;
    v108(v106, enum case for Font.TextStyle.subheadline(_:), v18);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v65 = v18;
      v66 = sub_2625C0();
      v67 = v109;
      (*(*(v66 - 8) + 56))(v109, 1, 1, v66);
    }

    else
    {
      v76 = enum case for Font.Design.serif (_:);
      v77 = sub_2625C0();
      v78 = *(v77 - 8);
      v67 = v109;
      (*(v78 + 104))(v109, v76, v77);
      (*(v78 + 56))(v67, 0, 1, v77);
      v65 = v128;
    }

    v72 = v136;
    sub_262680();
    sub_8E80(v67, &qword_318458, &unk_26B270);
    v74 = *(v137 + 8);
    v74(v64, v65);
    v73 = sub_2625A0();

    v75 = v110;
  }

  sub_139340(v32, type metadata accessor for FontConstants.Navigation);
  KeyPath = swift_getKeyPath();
  (*(v124 + 32))(v54, v123, v125);
  v80 = &v54[*(v122 + 36)];
  *v80 = KeyPath;
  v80[1] = v73;
  sub_22148(v54, v72, &qword_318470, &qword_26FBB0);
  v81 = v126;
  sub_8198(&v75[v120], v126, &qword_316208, &qword_268BD0);
  if (v121(v81, 1, v135) == 1)
  {
    sub_8E80(v81, &qword_316208, &qword_268BD0);
    v82 = 1;
    v83 = v130;
    v84 = v131;
  }

  else
  {
    v85 = v115;
    v86 = v135;
    v87 = v114;
    (v115[4])(v114, v81, v135);
    (v112)(v113, v87, v86);
    v88 = v119;
    sub_260B10();
    v89 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v90 = swift_getKeyPath();
    v91 = (v88 + *(sub_2EF0(&qword_31F978, &unk_27B098) + 36));
    *v91 = v90;
    v91[1] = v89;
    v126 = v74;
    v92 = v116;
    sub_137960(v116);
    v93 = v117;
    v94 = v128;
    v108(v117, enum case for Font.TextStyle.caption2(_:), v128);
    v72 = v136;
    v95 = sub_2625C0();
    v96 = v118;
    (*(*(v95 - 8) + 56))(v118, 1, 1, v95);
    sub_262630();
    v97 = sub_262680();
    sub_8E80(v96, &qword_318458, &unk_26B270);
    v126(v93, v94);
    sub_139340(v92, type metadata accessor for FontConstants.Navigation);
    (v85[1])(v87, v86);
    v98 = swift_getKeyPath();
    v83 = v130;
    v84 = v131;
    v99 = (v88 + *(v130 + 36));
    *v99 = v98;
    v99[1] = v97;
    sub_22148(v88, v84, &qword_31F960, &qword_27B020);
    v82 = 0;
  }

  (*(v129 + 56))(v84, v82, 1, v83);
  v100 = v127;
  sub_8198(v72, v127, &qword_318470, &qword_26FBB0);
  v101 = v132;
  sub_8198(v84, v132, &qword_31F968, &qword_27B028);
  v102 = v133;
  sub_8198(v100, v133, &qword_318470, &qword_26FBB0);
  v103 = sub_2EF0(&qword_31F970, &qword_27B060);
  sub_8198(v101, v102 + *(v103 + 48), &qword_31F968, &qword_27B028);
  sub_8E80(v84, &qword_31F968, &qword_27B028);
  sub_8E80(v72, &qword_318470, &qword_26FBB0);
  sub_8E80(v101, &qword_31F968, &qword_27B028);
  return sub_8E80(v100, &qword_318470, &qword_26FBB0);
}

uint64_t sub_138AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263320();
  v5 = sub_2EF0(&qword_31F950, &qword_27B010);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_2EF0(&qword_31F958, &qword_27B018);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_138BD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_138DA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_316208, &qword_268BD0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_318FA0, &unk_286050);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_138F68()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_1390C4(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1390C4(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1390C4(319, &qword_319010, type metadata accessor for FontConstants.Navigation, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_139128();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1390C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_139128()
{
  if (!qword_31F8E8)
  {
    v0 = sub_263380();
    if (!v1)
    {
      atomic_store(v0, &qword_31F8E8);
    }
  }
}

unint64_t sub_13917C()
{
  result = qword_31F928;
  if (!qword_31F928)
  {
    sub_2F9C(&qword_31F878, &qword_27AEF0);
    sub_139208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F928);
  }

  return result;
}

unint64_t sub_139208()
{
  result = qword_31F930;
  if (!qword_31F930)
  {
    sub_2F9C(&qword_31F870, &qword_27AEE8);
    sub_8E38(&qword_31F938, &qword_31F940, &qword_27AF68);
    sub_1392C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F930);
  }

  return result;
}

unint64_t sub_1392C0()
{
  result = qword_31F948;
  if (!qword_31F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F948);
  }

  return result;
}

uint64_t sub_139340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1393B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_13941C()
{
  result = qword_31F980;
  if (!qword_31F980)
  {
    sub_2F9C(&qword_31F958, &qword_27B018);
    sub_8E38(&qword_31F988, &qword_31F950, &qword_27B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F980);
  }

  return result;
}

uint64_t WelcomeFrameViewModel.init(year:localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for WelcomeFrameViewModel(0);
  v10 = &a5[*(v9 + 24)];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = *(v9 + 20);
  v12 = sub_260550();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t sub_13958C()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v23[-v15];
  v17 = sub_2643F0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_2643E0();
  v24._object = 0x8000000000292F90;
  v24._countAndFlagsBits = 0xD000000000000033;
  sub_2643D0(v24);
  v25 = *(v0 + *(type metadata accessor for WelcomeFrameViewModel(0) + 24));
  sub_2643C0(v25);
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  sub_2643D0(v26);
  sub_264400();
  sub_260260();
  (*(v10 + 16))(v13, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v5, v8, v1);
  v21 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v21;
}

uint64_t sub_13988C()
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

uint64_t WelcomeFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WelcomeFrame(0) + 44);
  v4 = *(type metadata accessor for WelcomeFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_139C64(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_139C64(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_139C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_139CD0@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for WelcomeFrame(0);
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_13C134(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_139EBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for WelcomeFrame(0);
  sub_8198(v1 + *(v12 + 28), v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_13C134(v11, a1, type metadata accessor for SizeConstants.Spacing);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_13A0A8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for WelcomeFrame(0) + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

BOOL sub_13A200()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for WelcomeFrame(0);
  v7 = v0 + *(v6 + 36);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[15])
    {
      return 0;
    }
  }

  v10 = v0 + *(v6 + 40);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if (v11)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v11, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t WelcomeFrame.init(model:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2EF0(&qword_316DA0, &unk_277640);
  v5 = *(v4 + 48);
  *a2 = 0xD000000000000015;
  *(a2 + 1) = 0x8000000000292F00;
  v6 = enum case for ColorScheme.light(_:);
  v7 = sub_261180();
  (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  v8 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v8)
  {
    v8 = sub_262FE0();
  }

  *&a2[*(v4 + 64)] = v8;
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for WelcomeFrame(0);
  *&a2[v9[5]] = 0;
  v10 = v9[6];
  *&a2[v10] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  *&a2[v11] = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v12 = &a2[v9[8]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &a2[v9[9]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &a2[v9[10]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  return sub_13C134(a1, &a2[v9[11]], type metadata accessor for WelcomeFrameViewModel);
}

uint64_t WelcomeFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WelcomeFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139EBC(v9);
  sub_5C670(v9, type metadata accessor for SizeConstants.Spacing);
  *a1 = sub_261E50();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v10 = sub_2EF0(&qword_31F990, &qword_27B1A0);
  sub_13A8A0(v1, a1 + *(v10 + 44));
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(sub_2EF0(&qword_31F998, &qword_27B1D8) + 36));
  v13 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v14 = enum case for ColorScheme.dark(_:);
  v15 = sub_261180();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = KeyPath;
  sub_13C0C8(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeFrame);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_13C134(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for WelcomeFrame);
  result = sub_2EF0(&qword_31F9A0, &qword_27B1E0);
  v19 = (a1 + *(result + 36));
  *v19 = sub_13C19C;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_13A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v3 = sub_2EF0(&qword_31FB18, &qword_27B2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v239 = &v193 - v5;
  v203 = sub_2EF0(&qword_31FB20, &qword_27B2C8);
  v6 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v8 = &v193 - v7;
  v204 = sub_2EF0(&qword_31FB28, &qword_27B2D0);
  v9 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v207 = &v193 - v10;
  v206 = sub_2EF0(&qword_31FB30, &qword_27B2D8);
  v11 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v13 = &v193 - v12;
  v209 = sub_2EF0(&qword_31FB38, &qword_27B2E0);
  v14 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v212 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v208 = &v193 - v17;
  __chkstk_darwin(v18);
  v211 = &v193 - v19;
  v237 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v20 = *(*(v237 - 8) + 64);
  __chkstk_darwin(v237);
  v236 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v235 = &v193 - v23;
  v245 = sub_261690();
  v248 = *(v245 - 8);
  v24 = *(v248 + 64);
  __chkstk_darwin(v245);
  v244 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v243 = &v193 - v27;
  v234 = sub_2EF0(&qword_3174E8, &qword_269970);
  v28 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v247 = &v193 - v29;
  v30 = type metadata accessor for ColorConstants(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v242 = &v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_2EF0(&qword_31FB40, &qword_27B2E8);
  v33 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v35 = &v193 - v34;
  v36 = sub_2EF0(&qword_31FB48, &qword_27B2F0);
  v225 = *(v36 - 8);
  v226 = v36;
  v37 = *(v225 + 64);
  __chkstk_darwin(v36);
  v39 = &v193 - v38;
  v221 = sub_2EF0(&qword_31FB50, &qword_27B2F8);
  v40 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v228 = &v193 - v41;
  v227 = sub_2EF0(&qword_31FB58, &qword_27B300);
  v42 = *(*(v227 - 8) + 64);
  __chkstk_darwin(v227);
  v202 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v224 = &v193 - v45;
  __chkstk_darwin(v46);
  v246 = &v193 - v47;
  v48 = a1 + *(type metadata accessor for WelcomeFrame(0) + 44);
  v49 = (v48 + *(type metadata accessor for WelcomeFrameViewModel(0) + 24));
  v50 = v49[1];
  *&v232 = *v49;
  *(&v232 + 1) = v50;

  v231 = sub_2624F0();
  sub_2610C0();
  v200 = v52;
  v201 = v51;
  v54 = v53;
  v56 = v55;
  v272 = 0;
  if (sub_13A200() && (sub_13A0A8() & 1) == 0)
  {
    v57 = 0x4054000000000000;
  }

  else
  {
    v57 = 0;
  }

  if (!sub_13A200() || (v58 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v58 = 1.0;
  }

  v59 = sub_13A200();
  v210 = v13;
  v205 = v8;
  v238 = v3;
  v222 = v39;
  v241 = v35;
  if (v59)
  {
    sub_263610();
    v230 = sub_2635B0();
  }

  else
  {
    v230 = 0;
  }

  v199 = sub_13A0A8();
  v223 = v48;
  *&v256 = sub_13958C();
  *(&v256 + 1) = v60;
  v220 = sub_10A84();
  v61 = sub_2628F0();
  v63 = v62;
  v65 = v64;
  sub_262590();
  v66 = sub_262840();
  v67 = a1;
  v69 = v68;
  v71 = v70;
  v229 = v72;

  sub_39DBC(v61, v63, v65 & 1);

  v73 = v242;
  v233 = v67;
  sub_139CD0(v242);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v74 = sub_263000();

  sub_5C670(v73, type metadata accessor for ColorConstants);
  *&v256 = v74;
  v75 = sub_2627F0();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  sub_39DBC(v66, v69, v71 & 1);

  v229 = sub_2EF0(&qword_31FB60, &qword_27B308);
  v82 = *(v229 + 36);
  v83 = enum case for BlendMode.plusLighter(_:);
  v84 = sub_263640();
  v85 = *(v84 - 8);
  v86 = *(v85 + 104);
  v87 = v241;
  v219 = v83;
  v217 = v86;
  v218 = v84;
  v216 = v85 + 104;
  (v86)(&v241[v82], v83);
  *v87 = v75;
  *(v87 + 1) = v77;
  v87[16] = v79 & 1;
  *(v87 + 3) = v81;
  LOBYTE(v75) = sub_2624F0();
  sub_2610C0();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = &v87[*(sub_2EF0(&qword_31FB68, &qword_27B310) + 36)];
  *v96 = v75;
  *(v96 + 1) = v89;
  *(v96 + 2) = v91;
  *(v96 + 3) = v93;
  *(v96 + 4) = v95;
  v96[40] = 0;
  KeyPath = swift_getKeyPath();
  v98 = &v87[*(sub_2EF0(&qword_31FB70, &qword_27B348) + 36)];
  *v98 = KeyPath;
  v98[8] = 1;
  v99 = swift_getKeyPath();
  v100 = &v87[*(v240 + 36)];
  *v100 = v99;
  *(v100 + 1) = 3;
  v100[16] = 0;
  v101 = enum case for DynamicTypeSize.small(_:);
  v102 = v248;
  v103 = v248 + 104;
  v104 = *(v248 + 104);
  v105 = v243;
  v106 = v245;
  (v104)(v243, enum case for DynamicTypeSize.small(_:), v245);
  v107 = v244;
  v215 = enum case for DynamicTypeSize.xxxLarge(_:);
  v104(v244);
  v214 = sub_139C64(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v196 = v101;
  v197 = v104;
  v198 = v103;
  v109 = *(v102 + 32);
  v110 = v235;
  v109(v235, v105, v106);
  v111 = v237;
  v109((v110 + *(v237 + 48)), v107, v106);
  v112 = v236;
  sub_8198(v110, v236, &qword_3174E0, &qword_26B310);
  v113 = *(v111 + 48);
  v109(v247, v112, v106);
  v114 = *(v102 + 8);
  v114(v112 + v113, v106);
  sub_13CF00(v110, v112);
  v115 = *(v111 + 48);
  v116 = v247;
  v117 = &v247[*(v234 + 36)];
  v194 = v109;
  v195 = v102 + 32;
  v109(v117, (v112 + v115), v106);
  v248 = v102 + 8;
  v193 = v114;
  v114(v112, v106);
  sub_13CF70(&qword_31FB78, &qword_31FB40, &qword_27B2E8, sub_13D020);
  v118 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
  v119 = v222;
  v240 = v118;
  v120 = v241;
  sub_262B70();
  sub_8E80(v116, &qword_3174E8, &qword_269970);
  sub_8E80(v120, &qword_31FB40, &qword_27B2E8);
  if (!sub_13A200() || (v121 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v121 = 1.0;
  }

  v122 = v228;
  (*(v225 + 32))(v228, v119, v226);
  *&v122[*(v221 + 36)] = v121;
  if (sub_13A200())
  {
    sub_263630();
    v123 = sub_2635B0();
  }

  else
  {
    v123 = 0;
  }

  v124 = sub_13A0A8();
  v125 = v122;
  v126 = v224;
  sub_22148(v125, v224, &qword_31FB50, &qword_27B2F8);
  v127 = v126 + *(v227 + 36);
  *v127 = v123;
  *(v127 + 8) = v124 & 1;
  sub_22148(v126, v246, &qword_31FB58, &qword_27B300);
  *&v256 = sub_13988C();
  *(&v256 + 1) = v128;
  v129 = sub_2628F0();
  v131 = v130;
  v133 = v132;
  sub_262590();
  sub_2625A0();

  v134 = sub_262840();
  v136 = v135;
  v138 = v137;
  v241 = v139;

  sub_39DBC(v129, v131, v133 & 1);

  v140 = v242;
  sub_139CD0(v242);
  v141 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_5C670(v140, type metadata accessor for ColorConstants);
  *&v256 = v141;
  v142 = sub_2627F0();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  sub_39DBC(v134, v136, v138 & 1);

  v149 = v239;
  v217(&v239[*(v229 + 36)], v219, v218);
  *v149 = v142;
  *(v149 + 1) = v144;
  v149[16] = v146 & 1;
  *(v149 + 3) = v148;
  v150 = swift_getKeyPath();
  v151 = &v149[*(v238 + 36)];
  *v151 = v150;
  *(v151 + 1) = 3;
  v151[16] = 0;
  v152 = v243;
  v153 = v245;
  v154 = v197;
  v197(v243, v196, v245);
  v155 = v244;
  v154(v244, v215, v153);
  result = sub_264380();
  if ((result & 1) == 0)
  {
    goto LABEL_31;
  }

  v156 = v235;
  v157 = v194;
  v194(v235, v152, v153);
  v158 = v237;
  v157(v156 + *(v237 + 48), v155, v153);
  v159 = v236;
  sub_8198(v156, v236, &qword_3174E0, &qword_26B310);
  v160 = *(v158 + 48);
  v161 = v247;
  v157(v247, v159, v153);
  v162 = v193;
  v193(v159 + v160, v153);
  sub_13CF00(v156, v159);
  v157(v161 + *(v234 + 36), (v159 + *(v158 + 48)), v153);
  v162(v159, v153);
  sub_13CF70(&qword_31FB98, &qword_31FB18, &qword_27B2C0, sub_13D164);
  v163 = v205;
  v164 = v239;
  sub_262B70();
  sub_8E80(v161, &qword_3174E8, &qword_269970);
  sub_8E80(v164, &qword_31FB18, &qword_27B2C0);
  LOBYTE(v164) = sub_2624F0();
  sub_2610C0();
  v165 = v163 + *(v203 + 36);
  *v165 = v164;
  *(v165 + 8) = v166;
  *(v165 + 16) = v167;
  *(v165 + 24) = v168;
  *(v165 + 32) = v169;
  *(v165 + 40) = 0;
  if (sub_13A200() && (sub_13A0A8() & 1) == 0)
  {
    v170 = 0x4054000000000000;
  }

  else
  {
    v170 = 0;
  }

  v171 = v210;
  v172 = v207;
  sub_22148(v163, v207, &qword_31FB20, &qword_27B2C8);
  v173 = (v172 + *(v204 + 36));
  *v173 = 0;
  v173[1] = v170;
  if (!sub_13A200() || (v174 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v174 = 1.0;
  }

  sub_22148(v172, v171, &qword_31FB28, &qword_27B2D0);
  *(v171 + *(v206 + 36)) = v174;
  if (sub_13A200())
  {
    sub_263610();
    v175 = sub_2635B0();
  }

  else
  {
    v175 = 0;
  }

  v176 = sub_13A0A8();
  v177 = v208;
  sub_22148(v171, v208, &qword_31FB30, &qword_27B2D8);
  v178 = v177 + *(v209 + 36);
  *v178 = v175;
  *(v178 + 8) = v176 & 1;
  v179 = v177;
  v180 = v211;
  sub_22148(v179, v211, &qword_31FB38, &qword_27B2E0);
  v181 = v202;
  sub_8198(v246, v202, &qword_31FB58, &qword_27B300);
  v182 = v212;
  sub_8198(v180, v212, &qword_31FB38, &qword_27B2E0);
  v249 = v232;
  LOBYTE(v250) = v231;
  *(&v250 + 1) = *v271;
  DWORD1(v250) = *&v271[3];
  v184 = v200;
  v183 = v201;
  *(&v250 + 1) = v201;
  *&v251 = v200;
  *(&v251 + 1) = v54;
  *&v252 = v56;
  BYTE8(v252) = 0;
  *(&v252 + 9) = *v270;
  HIDWORD(v252) = *&v270[3];
  *&v253 = 0;
  *(&v253 + 1) = v57;
  *&v254 = v58;
  *(&v254 + 1) = v230;
  v185 = v199 & 1;
  v255 = v199 & 1;
  v186 = v253;
  v187 = v254;
  v188 = v213;
  *(v213 + 96) = v199 & 1;
  *(v188 + 64) = v186;
  *(v188 + 80) = v187;
  v189 = v249;
  v190 = v250;
  v191 = v252;
  *(v188 + 32) = v251;
  *(v188 + 48) = v191;
  *v188 = v189;
  *(v188 + 16) = v190;
  *(v188 + 104) = 0;
  *(v188 + 112) = 1;
  v192 = sub_2EF0(&qword_31FBA0, &qword_27B380);
  sub_8198(v181, v188 + *(v192 + 64), &qword_31FB58, &qword_27B300);
  sub_8198(v182, v188 + *(v192 + 80), &qword_31FB38, &qword_27B2E0);
  sub_8198(&v249, &v256, qword_31FBA8, &qword_27B388);
  sub_8E80(v180, &qword_31FB38, &qword_27B2E0);
  sub_8E80(v246, &qword_31FB58, &qword_27B300);
  sub_8E80(v182, &qword_31FB38, &qword_27B2E0);
  sub_8E80(v181, &qword_31FB58, &qword_27B300);
  v256 = v232;
  v257 = v231;
  *v258 = *v271;
  *&v258[3] = *&v271[3];
  v259 = v183;
  v260 = v184;
  v261 = v54;
  v262 = v56;
  v263 = 0;
  *v264 = *v270;
  *&v264[3] = *&v270[3];
  v265 = 0;
  v266 = v57;
  v267 = v58;
  v268 = v230;
  v269 = v185;
  return sub_8E80(&v256, qword_31FBA8, &qword_27B388);
}

void sub_13BC38(uint64_t a1)
{
  v4 = *(a1 + *(type metadata accessor for WelcomeFrame(0) + 44));
  v5._countAndFlagsBits = sub_264EB0();
  sub_264530(v5);

  v1 = [objc_opt_self() books];
  v2 = [v1 userDefaults];

  v3 = sub_264420();

  [v2 setBool:1 forKey:v3];
}

uint64_t sub_13BD4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 44);
  v5 = *(type metadata accessor for WelcomeFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_139C64(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_139C64(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_13BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139EBC(v9);
  sub_5C670(v9, type metadata accessor for SizeConstants.Spacing);
  *a2 = sub_261E50();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v10 = sub_2EF0(&qword_31F990, &qword_27B1A0);
  sub_13A8A0(v2, a2 + *(v10 + 44));
  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(sub_2EF0(&qword_31F998, &qword_27B1D8) + 36));
  v13 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v14 = enum case for ColorScheme.dark(_:);
  v15 = sub_261180();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = KeyPath;
  sub_13C0C8(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeFrame);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_13C134(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for WelcomeFrame);
  result = sub_2EF0(&qword_31F9A0, &qword_27B1E0);
  v19 = (a2 + *(result + 36));
  *v19 = sub_13D1EC;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_13C0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13C134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_13C1A0(uint64_t a1)
{
  result = sub_139C64(&qword_31F9A8, type metadata accessor for WelcomeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_13C1F8(uint64_t a1)
{
  result = sub_139C64(&qword_31F9B0, type metadata accessor for WelcomeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_13C280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260550();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_13C358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260550();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_13C418()
{
  result = sub_260550();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_13C4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for WelcomeFrameViewModel(0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_13C694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v17 = type metadata accessor for WelcomeFrameViewModel(0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_13C868()
{
  type metadata accessor for PageBackground(319);
  if (v0 <= 0x3F)
  {
    sub_BED48(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
      if (v2 <= 0x3F)
      {
        sub_3E7AC();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WelcomeFrameViewModel(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_13C980()
{
  result = qword_31FAF8;
  if (!qword_31FAF8)
  {
    sub_2F9C(&qword_31F9A0, &qword_27B1E0);
    sub_13CA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FAF8);
  }

  return result;
}

unint64_t sub_13CA0C()
{
  result = qword_31FB00;
  if (!qword_31FB00)
  {
    sub_2F9C(&qword_31F998, &qword_27B1D8);
    sub_8E38(&qword_31FB08, &qword_31FB10, &qword_27B2B8);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB00);
  }

  return result;
}

uint64_t sub_13CAF0()
{
  v1 = type metadata accessor for WelcomeFrame(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9 = v3[1];

      v10 = sub_2EF0(&qword_316DA0, &unk_277640);
      v11 = *(v10 + 48);
      v12 = sub_261180();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      v13 = *(v3 + *(v10 + 64));

      break;
    case 1:
      v27 = v3[15];
      sub_57200(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13], v3[14]);
      break;
    case 0:
      v5 = *v3;

      v6 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v7 = sub_261180();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }

      break;
  }

  v14 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_261180();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v3 + v1[7];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v17[v18], v19);
  }

  else
  {
    v20 = *v17;
  }

  sub_4054(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  sub_4054(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  sub_4054(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v21 = v3 + v1[11];
  v22 = type metadata accessor for WelcomeFrameViewModel(0);
  v23 = *(v22 + 20);
  v24 = sub_260550();
  (*(*(v24 - 8) + 8))(&v21[v23], v24);
  v25 = *&v21[*(v22 + 24) + 8];

  return swift_deallocObject();
}

void sub_13CE90()
{
  v1 = *(type metadata accessor for WelcomeFrame(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_13BC38(v2);
}

uint64_t sub_13CF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_13D020()
{
  result = qword_31FB80;
  if (!qword_31FB80)
  {
    sub_2F9C(&qword_31FB70, &qword_27B348);
    sub_13D0D8();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB80);
  }

  return result;
}

unint64_t sub_13D0D8()
{
  result = qword_31FB88;
  if (!qword_31FB88)
  {
    sub_2F9C(&qword_31FB68, &qword_27B310);
    sub_13D164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB88);
  }

  return result;
}

unint64_t sub_13D164()
{
  result = qword_31FB90;
  if (!qword_31FB90)
  {
    sub_2F9C(&qword_31FB60, &qword_27B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB90);
  }

  return result;
}

uint64_t sub_13D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  v12 = sub_2EF0(&qword_31FC38, &qword_27B480);
  v8[36] = v12;
  v13 = *(v12 - 8);
  v8[37] = v13;
  v14 = *(v13 + 64) + 15;
  v8[38] = swift_task_alloc();
  v15 = sub_263B00();
  v8[39] = v15;
  v16 = *(v15 - 8);
  v8[40] = v16;
  v17 = *(v16 + 64) + 15;
  v8[41] = swift_task_alloc();
  v18 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v8[42] = v18;
  v19 = *(v18 - 8);
  v8[43] = v19;
  v20 = *(v19 + 64) + 15;
  v8[44] = swift_task_alloc();
  v8[22] = a6;
  v8[23] = a7;
  v8[24] = a8;
  v8[25] = v31;
  updated = type metadata accessor for PageUpdateInstruction();
  v8[45] = updated;
  v22 = *(updated - 8);
  v8[46] = v22;
  v23 = *(v22 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[26] = a6;
  v8[27] = a7;
  v8[28] = a8;
  v8[29] = v31;
  v24 = type metadata accessor for PageUpdateAction();
  v8[48] = v24;
  v25 = *(v24 - 8);
  v8[49] = v25;
  v26 = *(v25 + 64) + 15;
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  sub_264750();
  v8[52] = sub_264740();
  v28 = sub_264730();
  v8[53] = v28;
  v8[54] = v27;

  return (_swift_task_switch)(sub_13D4CC, v28, v27);
}

uint64_t sub_13D4CC()
{
  v35 = v0;
  if (qword_315848 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[32];
  v5 = sub_260D50();
  sub_B080(v5, qword_315F88);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_260D30();
  v8 = sub_264910();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  if (v9)
  {
    v11 = v0[49];
    v12 = v0[50];
    v13 = v0[48];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = *(v11 + 8);
    v15(v10, v13);
    updated = PageUpdateAction.description.getter(v13);
    v18 = v17;
    v15(v12, v13);
    v19 = sub_191368(updated, v18, &v34);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "Resolving instruction for PageUpdateAction: %s)", v14, 0xCu);
    sub_3080(v33);
  }

  else
  {
    (*(v0[49] + 8))(v0[51], v0[48]);
  }

  v20 = v0[48];
  v22 = v0[32];
  v21 = v0[33];
  v23 = v21[3];
  v24 = v21[4];
  sub_2E18(v21, v23);
  PageUpdateAction.instructionIntent.getter(v20, (v0 + 2));
  v26 = v0[5];
  v25 = v0[6];
  v27 = sub_2E18(v0 + 2, v26);
  v28 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v29 = swift_task_alloc();
  v0[55] = v29;
  *v29 = v0;
  v29[1] = sub_13D78C;
  v30 = v0[47];
  v31 = v0[34];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v30, v27, v31, v26, v25, v23, v24);
}

uint64_t sub_13D78C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 424);
  if (v0)
  {
    v7 = sub_13DEF4;
  }

  else
  {
    v7 = sub_13D8C8;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_13D8C8()
{
  v1 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[40];
  v18 = v0[44];
  v19 = v0[41];
  v20 = v0[38];
  v7 = v0[35];
  v8 = v0[32];
  v14 = v0[31];
  v15 = v0[39];

  sub_3080(v0 + 2);
  v9 = v7[3];
  v10 = v7[4];
  sub_2E18(v7, v9);
  LOBYTE(v7) = (*(v10 + 40))(v2, *(v8 + *(v3 + 60)), v9, v10);
  (*(v5 + 8))(v2, v4);
  v11 = &enum case for ActionOutcome.performed(_:);
  if ((v7 & 1) == 0)
  {
    v11 = &enum case for ActionOutcome.unsupported(_:);
  }

  (*(v6 + 104))(v14, *v11, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_13DA3C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 424);
  if (v0)
  {
    v7 = sub_13E0C8;
  }

  else
  {
    v7 = sub_13DB78;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_13DB78()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[10];
  v5 = v0[11];
  sub_2E18(v0 + 7, v4);
  (*(v5 + 16))(v4, v5);
  (*(v2 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v3);
  v6 = async function pointer to ActionDispatcher.perform(_:withMetrics:asPartOf:)[1];
  v7 = swift_task_alloc();
  v0[59] = v7;
  *v7 = v0;
  v7[1] = sub_13DC90;
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[38];
  v12 = v0[34];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v9, v0 + 17, v11, v12, v10);
}

uint64_t sub_13DC90()
{
  v2 = *v1;
  v3 = (*v1)[59];
  v11 = *v1;
  (*v1)[60] = v0;

  if (v0)
  {
    (*(v2[37] + 8))(v2[38], v2[36]);
    sub_3080(v2 + 17);
    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_13E190;
  }

  else
  {
    v8 = v2[40];
    v7 = v2[41];
    v9 = v2[39];
    (*(v2[37] + 8))(v2[38], v2[36]);
    sub_3080(v2 + 17);
    (*(v8 + 8))(v7, v9);
    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_13DE08;
  }

  return (_swift_task_switch)(v6, v4, v5);
}

uint64_t sub_13DE08()
{
  v1 = v0[52];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];

  (*(v3 + 8))(v2, v4);
  sub_3080(v0 + 7);
  v5 = v0[56];
  swift_willThrow();
  v6 = v0[56];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[41];
  v12 = v0[38];

  v13 = v0[1];

  return v13();
}

uint64_t sub_13DEF4()
{
  v1 = *(v0 + 448);
  sub_3080((v0 + 16));
  *(v0 + 240) = v1;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  sub_2EF0(&qword_31FC48, &qword_27B498);
  if (swift_dynamicCast())
  {
    sub_F7CC((v0 + 96), v0 + 56);
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    *v3 = v0;
    v3[1] = sub_13DA3C;
    v4 = *(v0 + 352);
    v5 = *(v0 + 336);
    v6 = *(v0 + 272);

    return BaseObjectGraph.inject<A>(_:)(v4, v5, v5);
  }

  else
  {
    v7 = *(v0 + 416);

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_13EA68(v0 + 96);
    v8 = *(v0 + 448);
    swift_willThrow();
    v9 = *(v0 + 448);
    v11 = *(v0 + 400);
    v10 = *(v0 + 408);
    v12 = *(v0 + 376);
    v13 = *(v0 + 352);
    v14 = *(v0 + 328);
    v15 = *(v0 + 304);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_13E0C8()
{
  v1 = v0[56];
  v2 = v0[52];

  sub_3080(v0 + 7);
  v3 = v0[58];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[41];
  v9 = v0[38];

  v10 = v0[1];

  return v10();
}

uint64_t sub_13E190()
{
  v1 = v0[56];
  v2 = v0[52];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];

  (*(v4 + 8))(v3, v5);
  sub_3080(v0 + 7);
  v6 = v0[60];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[41];
  v12 = v0[38];

  v13 = v0[1];

  return v13();
}

uint64_t sub_13E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v33 = a5;
  v12 = sub_2EF0(&qword_316408, &qword_26DE30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v35 = &v31 - v14;
  v39[0] = a3;
  v39[1] = a4;
  v32 = a4;
  v39[2] = a5;
  v39[3] = a6;
  updated = type metadata accessor for PageUpdateAction();
  v16 = *(updated - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(updated);
  v19 = &v31 - v18;
  sub_2EF0(&qword_31FC30, &qword_27B418);
  sub_263C40();
  v38[0] = a3;
  v38[1] = a4;
  swift_getExtendedExistentialTypeMetadata();
  sub_263C40();
  (*(v16 + 16))(v19, a1, updated);
  sub_30CC(v39, v37);
  sub_30CC(v38, v36);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v32;
  *(v23 + 2) = a3;
  *(v23 + 3) = v24;
  v25 = v34;
  *(v23 + 4) = v33;
  *(v23 + 5) = v25;
  (*(v16 + 32))(&v23[v20], v19, updated);
  sub_F7CC(v37, &v23[v21]);
  *&v23[v22] = a2;
  sub_F7CC(v36, &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8]);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v26 = sub_2641C0();
  v27 = sub_264770();
  v28 = v35;
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_27B468;
  v29[5] = v23;
  v29[6] = v26;

  sub_E39C4(0, 0, v28, &unk_27DF80, v29);

  sub_3080(v38);
  sub_3080(v39);
  return v26;
}

uint64_t sub_13E614()
{
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  updated = type metadata accessor for PageUpdateAction();
  v2 = (*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80);
  v3 = *(*(updated - 8) + 64);
  v4 = v0 + v2;
  v5 = sub_263AF0();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(updated + 52);
  v7 = sub_260620();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  sub_3080((v4 + *(updated + 56)));
  sub_3080((v0 + v9));
  v11 = *(v0 + v10);

  sub_3080((v0 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

uint64_t sub_13E7C0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for PageUpdateAction() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + v11);
  v14 = swift_task_alloc();
  v3[6] = v14;
  *v14 = v3;
  v14[1] = sub_13E92C;

  return sub_13D200(a1, v1 + v9, v1 + v10, v13, v1 + v12, v5, v4, v6);
}

uint64_t sub_13E92C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_13EA20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_13EA68(uint64_t a1)
{
  v2 = sub_2EF0(qword_31FC50, &unk_27B4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemMetadataEyebrowView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t sub_13EB90(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_31FCD8, &qword_27B570);
  sub_260A70();
  sub_260A50();
  sub_13F87C();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

__n128 sub_13EDB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v46 = a2;
  v42 = a1;
  v6 = sub_2626C0();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v47 = sub_262730();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v47);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontConstants.ListItem(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v48 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EF0(&qword_317310, &qword_2721D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_269100;
  v21 = sub_2624C0();
  *(v20 + 32) = v21;
  v22 = sub_2624E0();
  *(v20 + 33) = v22;
  v23 = sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v21)
  {
    v23 = sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() == v22)
  {
    v45 = v23;
  }

  else
  {
    v45 = sub_2624D0();
  }

  sub_13F34C(v42, v43, v44, &v53);
  v68 = v59;
  v69 = v60;
  v70[0] = v61[0];
  *(v70 + 10) = *(v61 + 10);
  v64 = v55;
  v65 = v56;
  v66 = v57;
  v67 = v58;
  v62 = v53;
  v63 = v54;
  v71[6] = v59;
  v71[7] = v60;
  v72[0] = v61[0];
  *(v72 + 10) = *(v61 + 10);
  v71[2] = v55;
  v71[3] = v56;
  v71[4] = v57;
  v71[5] = v58;
  v71[0] = v53;
  v71[1] = v54;
  sub_13FBD4(&v62, &v52);
  sub_8E80(v71, &qword_31FD28, &qword_27B5A0);
  *(&v73[6] + 7) = v68;
  *(&v73[7] + 7) = v69;
  *(&v73[8] + 7) = v70[0];
  *(&v73[9] + 1) = *(v70 + 10);
  *(&v73[2] + 7) = v64;
  *(&v73[3] + 7) = v65;
  *(&v73[4] + 7) = v66;
  *(&v73[5] + 7) = v67;
  *(v73 + 7) = v62;
  *(&v73[1] + 7) = v63;
  v24 = v48;
  sub_404E0(v48);
  v25 = v47;
  (*(v13 + 104))(v16, enum case for Font.TextStyle.caption2(_:), v47);
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_262680();
  sub_8E80(v12, &qword_318458, &unk_26B270);
  (*(v13 + 8))(v16, v25);
  sub_2625A0();

  v28 = v49;
  v27 = v50;
  v29 = v51;
  (*(v50 + 104))(v49, enum case for Font.Leading.tight(_:), v51);
  v30 = sub_2626E0();

  (*(v27 + 8))(v28, v29);
  sub_65488(v24);
  KeyPath = swift_getKeyPath();
  v32 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  LOBYTE(v53) = 0;
  v35 = *(sub_2EF0(&qword_31FCD8, &qword_27B570) + 36);
  *(a5 + v35) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v36 = v73[6];
  *(a5 + 113) = v73[7];
  v37 = v73[9];
  *(a5 + 129) = v73[8];
  *(a5 + 145) = v37;
  v38 = v73[2];
  *(a5 + 49) = v73[3];
  v39 = v73[5];
  *(a5 + 65) = v73[4];
  *(a5 + 81) = v39;
  *(a5 + 97) = v36;
  result = v73[0];
  v41 = v73[1];
  *(a5 + 1) = v73[0];
  *(a5 + 17) = v41;
  *a5 = v45;
  *(a5 + 161) = v73[10];
  *(a5 + 33) = v38;
  *(a5 + 168) = KeyPath;
  *(a5 + 176) = v30;
  *(a5 + 184) = v33;
  *(a5 + 192) = v32;
  *(a5 + 200) = v34;
  *(a5 + 208) = 1;
  *(a5 + 216) = 0;
  return result;
}

uint64_t sub_13F34C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for ListItemMetadataEyebrowView() + 36);
  v9 = a3[2](a1, a2, a3);
  v35 = v10;
  v36 = v9;
  v11 = v10;
  v13 = v12;
  v40 = v14;
  v15 = a3[3];

  v45 = v13 & 1;
  sub_43B58(v9, v11, v13 & 1);
  v16 = v15(a1, a2, a3);
  v37 = v18;
  v38 = v17;
  v20 = v18 & 1;
  v39 = v16;
  if (v19)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  v42 = v22;
  v43 = v21;
  if (!v19)
  {
    v20 = 0;
  }

  v41 = v20;
  if (v19)
  {
    v23 = 257;
  }

  else
  {
    v23 = 0;
  }

  v44 = v23;
  v24 = a3[4];
  v25 = v19;
  sub_13FC60(v16, v17, v18, v19);
  v26 = v24(a1, a2, a3);
  v50 = v28;
  v30 = v29 & 1;
  if (v28)
  {
    v31 = v26;
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = v27;
  }

  else
  {
    v32 = 0;
  }

  v47 = v32;
  v48 = v31;
  if (!v28)
  {
    v30 = 0;
  }

  v46 = v30;
  if (v28)
  {
    v33 = 257;
  }

  else
  {
    v33 = 0;
  }

  sub_43B58(v36, v35, v45);

  sub_13FC60(v43, v42, v41, v25);
  sub_13FC60(v48, v47, v46, v50);
  sub_43B58(v36, v35, v45);

  sub_13FCA4(v39, v38, v37, v25);
  *a4 = v36;
  *(a4 + 8) = v35;
  *(a4 + 16) = v45;
  *(a4 + 24) = v40;
  *(a4 + 32) = 257;
  *(a4 + 40) = v43;
  *(a4 + 48) = v42;
  *(a4 + 56) = v41;
  *(a4 + 64) = v25;
  *(a4 + 72) = v44;
  *(a4 + 80) = v48;
  *(a4 + 88) = v47;
  *(a4 + 96) = v46;
  *(a4 + 104) = v50;
  *(a4 + 112) = v33;
  *(a4 + 120) = v36;
  *(a4 + 128) = v35;
  *(a4 + 136) = v45;
  *(a4 + 144) = v40;
  *(a4 + 152) = 256;
  sub_39DBC(v36, v35, v45);

  sub_13FCA4(v48, v47, v46, v50);
  sub_13FCA4(v43, v42, v41, v25);
  sub_39DBC(v36, v35, v45);
}

uint64_t sub_13F67C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ListItemMetadataEyebrowView();
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

double sub_13F7E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ListItemMetadataEyebrowView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  *&result = sub_13EDB0(a1, v8, v5, v6, a2).n128_u64[0];
  return result;
}

unint64_t sub_13F87C()
{
  result = qword_31FCE0;
  if (!qword_31FCE0)
  {
    sub_2F9C(&qword_31FCD8, &qword_27B570);
    sub_13F938();
    sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCE0);
  }

  return result;
}

unint64_t sub_13F938()
{
  result = qword_31FCE8;
  if (!qword_31FCE8)
  {
    sub_2F9C(&qword_31FCF0, &qword_27B578);
    sub_13F9F0();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCE8);
  }

  return result;
}

unint64_t sub_13F9F0()
{
  result = qword_31FCF8;
  if (!qword_31FCF8)
  {
    sub_2F9C(&qword_31FD00, &qword_27B580);
    sub_13FAA8();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCF8);
  }

  return result;
}

unint64_t sub_13FAA8()
{
  result = qword_31FD08;
  if (!qword_31FD08)
  {
    sub_2F9C(&qword_31FD10, &qword_27B588);
    sub_8E38(&qword_31FD18, &qword_31FD20, &unk_27B590);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FD08);
  }

  return result;
}

uint64_t sub_13FB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13FBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31FD28, &qword_27B5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13FC60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_43B58(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_13FCA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_39DBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t static ActionKinds.table.getter()
{
  if (qword_315A40 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_31FD50, &qword_27B670);
  sub_260D20();
  return v1;
}

uint64_t sub_13FDB0()
{
  if (qword_315A48 != -1)
  {
    swift_once();
  }

  v0 = qword_31FD48;
  sub_2EF0(&qword_31FD88, &qword_27B728);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_31FD40 = v1;
}

uint64_t sub_13FE48()
{
  sub_2EF0(&qword_31FD90, &qword_27B730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  *(inited + 32) = 0x7463417465737361;
  *(inited + 40) = 0xEB000000006E6F69;
  v1 = type metadata accessor for AssetAction(0);
  v2 = sub_141658(&qword_319AE8, type metadata accessor for AssetAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x69746341776F6C66;
  *(inited + 72) = 0xEA00000000006E6FLL;
  v3 = type metadata accessor for FlowAction();
  v4 = sub_141658(&qword_31FD98, type metadata accessor for FlowAction);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "flowBackAction");
  *(inited + 111) = -18;
  *(inited + 112) = sub_264180();
  *(inited + 120) = &protocol witness table for Models.FlowBackAction;
  v5 = sub_F354(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_31FDA0, &qword_27B738);
  result = swift_arrayDestroy();
  qword_31FD48 = v5;
  return result;
}

void static ActionKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315A40 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_31FD40;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1400C4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1400C4(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_E134(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

unint64_t sub_140140()
{
  sub_140D10();
  v0 = sub_263C20();
  v1 = sub_264060();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0;
  sub_1413C0(v1, sub_140F8C, 0, isUniquelyReferenced_nonNull_native, &v5);

  v3 = sub_140D64(v5);

  return v3;
}

uint64_t *sub_140210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v107 = a2;
  v97 = a3;
  v4 = sub_263840();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v96 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_263B50();
  v95 = *(v101 - 8);
  v7 = *(v95 + 64);
  __chkstk_darwin(v101);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_31FD58, &qword_27B700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v100 = &v89 - v11;
  v12 = sub_2EF0(&qword_31FD60, &qword_27B708);
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  v19 = sub_2EF0(&qword_31FD68, &qword_27B710);
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = *(v102 + 8);
  __chkstk_darwin(v19);
  v94 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  v113 = sub_263980();
  v106 = *(v113 - 8);
  v25 = *(v106 + 64);
  __chkstk_darwin(v113);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v89 - v29;
  __chkstk_darwin(v31);
  v105 = &v89 - v32;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v36 = sub_A8C6C(a1);
  if (v36)
  {
    v99 = v37;
    v100 = v38;
    v101 = v36;
    v39 = v107;
    v40 = *(v107 + 32);
    sub_2E18(v107, *(v107 + 24));
    sub_265100();
    sub_263970();
    sub_263940();
    sub_2EF0(&qword_31FD78, &qword_27B718);
    sub_263990();
    v41 = v103;
    v42 = *(v102 + 1);
    v42(v24, v103);
    v43 = v113;
    if (!v109)
    {
      v44 = sub_140D10();
      v109 = v98;
      v110 = v44;
      v45 = v94;
      sub_263940();
      v46 = v105;
      sub_263910();
      v42(v45, v41);
      v47 = v106;
      (*(v106 + 8))(v35, v113);
      v48 = v46;
      v43 = v113;
      (*(v47 + 32))(v35, v48, v113);
    }

    v49 = v39[4];
    sub_2E18(v39, v39[3]);
    v50 = v106;
    (*(v106 + 16))(v105, v35, v43);
    sub_2642B0();
    sub_265110();

    *&v111 = v101;
    *(&v111 + 1) = v99;
    v112 = v100;
    sub_10934(&v109);
    v51 = v104;
    sub_2647C0();
    if (v51)
    {
      (*(v50 + 8))(v35, v43);
      return sub_A8CF4(&v109);
    }

    v107 = v111;
    v73 = v111;
    v74 = sub_2E18(&v109, v111);
    v75 = v97;
    *(v97 + 24) = v107;
    v76 = sub_10934(v75);
    (*(*(v73 - 8) + 16))(v76, v74, v73);
    (*(v50 + 8))(v35, v43);
    return sub_3080(&v109);
  }

  v53 = v100;
  v102 = v15;
  v94 = v27;
  v54 = v99;
  v103 = v30;
  v55 = v101;
  v56 = sub_A8C6C(a1);
  if (v56)
  {
    v90 = v57;
    v91 = v58;
    v92 = v56;
    v59 = *(v107 + 32);
    sub_2E18(v107, *(v107 + 24));
    sub_265100();
    sub_263970();
    v60 = v18;
    sub_263920();
    v61 = v55;
    sub_263990();
    v62 = *(v54 + 8);
    v63 = v60;
    v64 = v12;
    v62(v63, v12);
    v65 = v95;
    v66 = (*(v95 + 48))(v53, 1, v55);
    sub_140CA8(v53);
    if (v66 == 1)
    {
      sub_140D10();
      v67 = v93;
      sub_263B60();
      v68 = v102;
      sub_263920();
      v69 = v103;
      sub_263910();
      v62(v68, v64);
      (*(v65 + 8))(v67, v61);
      v70 = v106;
      v71 = v113;
      (*(v106 + 8))(v69, v113);
      (*(v70 + 32))(v69, v105, v71);
    }

    sub_30CC(v107, v108);
    v72 = v104;
    sub_263810();
    if (v72)
    {
      return (*(v106 + 8))(v103, v113);
    }

    v82 = v106;
    v83 = v103;
    v84 = v113;
    (*(v106 + 16))(v94, v103, v113);
    *&v111 = v92;
    *(&v111 + 1) = v90;
    v112 = v91;
    sub_10934(&v109);
    sub_263DE0();
    v107 = v111;
    v85 = v111;
    v86 = sub_2E18(&v109, v111);
    v87 = v97;
    *(v97 + 24) = v107;
    v88 = sub_10934(v87);
    (*(*(v85 - 8) + 16))(v88, v86, v85);
    (*(v82 + 8))(v83, v84);
    return sub_3080(&v109);
  }

  v77 = sub_264C10();
  swift_allocError();
  v79 = v78;
  v80 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
  *v79 = a1;
  v81 = *(v107 + 32);
  sub_2E18(v107, *(v107 + 24));
  sub_2650E0();
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_264BC0(21);

  v109 = 60;
  v110 = 0xE100000000000000;
  v114._countAndFlagsBits = sub_265260();
  sub_264530(v114);

  v115._object = 0x80000000002917A0;
  v115._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v115);
  sub_264BF0();
  (*(*(v77 - 8) + 104))(v79, enum case for DecodingError.typeMismatch(_:), v77);
  return swift_willThrow();
}

uint64_t sub_140CA8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31FD58, &qword_27B700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_140D10()
{
  result = qword_31FD70;
  if (!qword_31FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FD70);
  }

  return result;
}

unint64_t sub_140D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_2EF0(&qword_31FD80, &qword_27B720);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        result = sub_D410(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_140F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void *sub_140FAC()
{
  v1 = v0;
  sub_2EF0(&qword_316160, &qword_267F50);
  v2 = *v0;
  v3 = sub_264CF0();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_141114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2EF0(&qword_316160, &qword_267F50);
  v36 = a2;
  result = sub_264D00();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1413C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v46[0] = *v16;
    v46[1] = v17;
    v47 = *(v15 + v14);

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v40 = v45;
    v20 = *v48;
    v22 = sub_D410(v43, v44);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v42 & 1) == 0)
      {
        sub_140FAC();
      }
    }

    else
    {
      v27 = v48;
      sub_141114(v25, v42 & 1);
      v28 = *v27;
      v29 = sub_D410(v18, v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v48;
    if (v26)
    {
      v41 = *(v31[7] + 16 * v22);

      *(v31[7] + 16 * v22) = v41;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 16 * v22) = v40;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_141650();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_264FB0();
  __break(1u);
  return result;
}

uint64_t sub_141658(unint64_t *a1, void (*a2)(uint64_t))
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

double FlowAction.init(id:actionMetrics:clickData:destination:origin:sourceViewIdentifer:presentation:shouldInheritFigaroRestriction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v52 = a7;
  v53 = a8;
  v48 = a5;
  v47 = a4;
  v51 = a12;
  v50 = a11;
  v49 = a10;
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a6[7];
  v60 = a6[6];
  v61 = v22;
  v62 = a6[8];
  v63 = *(a6 + 144);
  v23 = a6[3];
  v56 = a6[2];
  v57 = v23;
  v24 = a6[5];
  v58 = a6[4];
  v59 = v24;
  v25 = a6[1];
  v54 = *a6;
  v55 = v25;
  sub_2601D0();
  v26 = sub_2601C0();
  v28 = v27;
  v29 = *(v18 + 8);
  v29(v21, v17);
  *a9 = v26;
  a9[1] = v28;
  v30 = type metadata accessor for FlowAction();
  v31 = v30[11];
  *(a9 + v31) = 0;
  if (!a2)
  {
    sub_2601D0();
    a1 = sub_2601C0();
    a2 = v32;
    v29(v21, v17);
  }

  v33 = a9[1];

  *a9 = a1;
  a9[1] = a2;
  v34 = v30[5];
  v35 = sub_263AF0();
  (*(*(v35 - 8) + 32))(a9 + v34, a3, v35);
  sub_129C04(v47, a9 + v30[6]);
  sub_F7CC(v48, a9 + v30[7]);
  v36 = a9 + v30[8];
  v37 = v61;
  *(v36 + 6) = v60;
  *(v36 + 7) = v37;
  *(v36 + 8) = v62;
  v36[144] = v63;
  v38 = v57;
  *(v36 + 2) = v56;
  *(v36 + 3) = v38;
  v39 = v59;
  *(v36 + 4) = v58;
  *(v36 + 5) = v39;
  result = *&v54;
  v41 = v55;
  *v36 = v54;
  *(v36 + 1) = v41;
  v42 = (a9 + v30[9]);
  v43 = v53;
  *v42 = v52;
  v42[1] = v43;
  v44 = (a9 + v30[10]);
  v45 = v50;
  *v44 = v49;
  v44[1] = v45;
  *(a9 + v31) = v51 & 1;
  return result;
}

uint64_t FlowAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowAction() + 20);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowAction();
  sub_8198(v1 + *(v3 + 28), v5, &qword_31FDA8, &qword_27B740);
  return sub_F7CC(v5, a1);
}

uint64_t sub_141A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FlowAction();
  sub_8198(a1 + *(v4 + 28), v6, &qword_31FDA8, &qword_27B740);
  return sub_F7CC(v6, a2);
}

uint64_t FlowAction.destination.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FlowAction() + 28);
  sub_3080((v1 + v3));

  return sub_F7CC(a1, v1 + v3);
}

uint64_t FlowAction.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowAction() + 32);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_8198(v17, v16, &qword_31FDB0, &qword_27B748);
}

uint64_t FlowAction.sourceViewIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowAction() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FlowAction.presentation.getter()
{
  v1 = (v0 + *(type metadata accessor for FlowAction() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FlowAction.shouldInheritFigaroRestriction.setter(char a1)
{
  result = type metadata accessor for FlowAction();
  *(v1 + *(result + 44)) = a1;
  return result;
}

unint64_t sub_141D28()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x61746E6573657270;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001ELL;
    }

    v6 = 0x6E696769726FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x7461446B63696C63;
    if (v1 != 2)
    {
      v3 = 0x74616E6974736564;
    }

    if (*v0)
    {
      v2 = 0x654D6E6F69746361;
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
}

uint64_t sub_141E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1434E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_141E64(uint64_t a1)
{
  v2 = sub_142AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_141EA0(uint64_t a1)
{
  v2 = sub_142AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v57 = a2;
  v2 = sub_2EF0(&qword_316B98, &unk_275840);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v58 = &v54 - v4;
  v64 = sub_263AF0();
  v63 = *(v64 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v64);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2EF0(&qword_31FDB8, &qword_27B750);
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v62);
  v9 = &v54 - v8;
  v10 = sub_2601E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowAction();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2601D0();
  v19 = sub_2601C0();
  v21 = v20;
  v22 = *(v11 + 8);
  v60 = v10;
  v22(v14, v10);
  *v18 = v19;
  v18[1] = v21;
  v66 = v15;
  v23 = *(v15 + 44);
  v67 = v18;
  *(v18 + v23) = 0;
  v24 = v82[4];
  sub_2E18(v82, v82[3]);
  sub_142AE8();
  v25 = v65;
  sub_265120();
  if (v25)
  {
    v27 = v67;
    sub_3080(v82);
    v28 = v27[1];
  }

  else
  {
    v65 = v22;
    v26 = v60;
    v56 = v23;
    LOBYTE(v69) = 0;
    sub_2EF0(&qword_31FDC8, &qword_27B758);
    sub_8E38(&qword_31FDD0, &qword_31FDC8, &qword_27B758);
    sub_264DB0();
    v55 = v9;
    v30 = *(&v72 + 1);
    v31 = v66;
    if (*(&v72 + 1))
    {
      v32 = v72;
      v33 = v67;
    }

    else
    {
      sub_2601D0();
      v32 = sub_2601C0();
      v30 = v34;
      v65(v14, v26);
      v33 = v67;
      if (*(&v72 + 1))
      {
      }
    }

    v35 = v64;
    v36 = v58;
    v37 = v33[1];

    *v33 = v32;
    v33[1] = v30;
    LOBYTE(v72) = 1;
    sub_142D48(&qword_31C5A0, &type metadata accessor for ActionMetrics);
    v38 = v59;
    v39 = v55;
    sub_264DF0();
    (*(v63 + 32))(v33 + v31[5], v38, v35);
    sub_260620();
    LOBYTE(v72) = 2;
    sub_142D48(&qword_31F0B8, &type metadata accessor for ClickData);
    sub_264DB0();
    sub_129C04(v36, v33 + v31[6]);
    sub_2EF0(&qword_31FDA8, &qword_27B740);
    LOBYTE(v69) = 3;
    sub_8E38(&qword_31FDD8, &qword_31FDA8, &qword_27B740);
    sub_264DF0();
    v40 = v33 + v31[7];
    v41 = v73;
    *v40 = v72;
    *(v40 + 1) = v41;
    *(v40 + 4) = v74;
    v71 = 4;
    sub_CD7F0();
    sub_264DB0();
    v42 = v33 + v31[8];
    v43 = v79;
    v44 = v80;
    *(v42 + 6) = v78;
    *(v42 + 7) = v43;
    *(v42 + 8) = v44;
    v42[144] = v81;
    v45 = v75;
    *(v42 + 2) = v74;
    *(v42 + 3) = v45;
    v46 = v77;
    *(v42 + 4) = v76;
    *(v42 + 5) = v46;
    v47 = v73;
    *v42 = v72;
    *(v42 + 1) = v47;
    LOBYTE(v69) = 5;
    v48 = sub_264D70();
    v49 = (v33 + v31[9]);
    *v49 = v48;
    v49[1] = v50;
    v68 = 6;
    sub_142B3C();
    sub_264DF0();
    v51 = v70;
    v52 = (v33 + v31[10]);
    *v52 = v69;
    v52[1] = v51;
    LOBYTE(v69) = 7;
    sub_2EF0(&qword_316BD8, &qword_268BC0);
    v53 = v62;
    sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0);
    sub_264DB0();
    (*(v61 + 8))(v39, v53);
    *(v33 + v56) = v68 & 1;
    sub_142B90(v33, v57);
    sub_3080(v82);
    return sub_142BF4(v33);
  }
}

uint64_t sub_142A10(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t type metadata accessor for FlowAction()
{
  result = qword_31FE48;
  if (!qword_31FE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_142AE8()
{
  result = qword_31FDC0;
  if (!qword_31FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FDC0);
  }

  return result;
}

unint64_t sub_142B3C()
{
  result = qword_31FDE0;
  if (!qword_31FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FDE0);
  }

  return result;
}

uint64_t sub_142B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_142BF4(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_142C98(uint64_t a1)
{
  result = sub_142D48(&qword_31FD98, type metadata accessor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_142CF0(uint64_t a1)
{
  result = sub_142D48(&qword_31FDE8, type metadata accessor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_142D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_142D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_142D9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t *sub_142DE4(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for FlowAction() + 28));

  return sub_AF618(v3, a1);
}

uint64_t sub_142E2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for FlowAction();
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_142E64(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for FlowAction();
  *(a2 + *(result + 44)) = v3;
  return result;
}

uint64_t sub_142EAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_263AF0();
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
      v13 = sub_2EF0(&qword_316B98, &unk_275840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_142FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_263AF0();
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
      v13 = sub_2EF0(&qword_316B98, &unk_275840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_143120()
{
  sub_14337C(319, &qword_31FE58);
  if (v0 <= 0x3F)
  {
    sub_263AF0();
    if (v1 <= 0x3F)
    {
      sub_143274();
      if (v2 <= 0x3F)
      {
        sub_1432CC();
        if (v3 <= 0x3F)
        {
          sub_CE950(319, &unk_31FE70);
          if (v4 <= 0x3F)
          {
            sub_CE950(319, &qword_316CB8);
            if (v5 <= 0x3F)
            {
              sub_14337C(319, &qword_316CC0);
              if (v6 <= 0x3F)
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

void sub_143274()
{
  if (!qword_31F140)
  {
    sub_260620();
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31F140);
    }
  }
}

void sub_1432CC()
{
  if (!qword_31FE60)
  {
    sub_143328();
    v0 = sub_2637D0();
    if (!v1)
    {
      atomic_store(v0, &qword_31FE60);
    }
  }
}

unint64_t sub_143328()
{
  result = qword_31FE68;
  if (!qword_31FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FE68);
  }

  return result;
}

void sub_14337C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _DecodeDefault_Wrapper();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1433E0()
{
  result = qword_31FEB8;
  if (!qword_31FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEB8);
  }

  return result;
}

unint64_t sub_143438()
{
  result = qword_31FEC0;
  if (!qword_31FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEC0);
  }

  return result;
}

unint64_t sub_143490()
{
  result = qword_31FEC8;
  if (!qword_31FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEC8);
  }

  return result;
}

uint64_t sub_1434E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000293010 == a2 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000000293030 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t NavigationActionMenuButtonView.init(menuIconKind:menus:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for NavigationActionMenuButtonView(0);
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 32);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  return result;
}

uint64_t NavigationActionMenuButtonView.init(title:menus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NavigationActionMenuButtonView(0);
  v9 = *(v8 + 28);
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + *(v8 + 32);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *a4 = 8;
  *(a4 + 24) = a3;
  return result;
}

uint64_t NavigationActionMenuButtonView.body.getter()
{
  v1 = type metadata accessor for NavigationActionMenuButtonView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_147D2C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationActionMenuButtonView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_147F04(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for NavigationActionMenuButtonView);
  sub_2EF0(&qword_31FED0, &qword_27BA18);
  sub_260A70();
  sub_260A50();
  sub_146CD0();
  sub_1473B4(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1473B4(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_143B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v171 = a1;
  v187 = a3;
  v4 = sub_2EF0(&qword_31FF48, &qword_27BA78);
  v151 = *(v4 - 8);
  v5 = *(v151 + 64);
  __chkstk_darwin(v4);
  v150 = &v148[-v6];
  v178 = sub_2EF0(&qword_31FF40, &qword_27BA70);
  v153 = *(v178 - 8);
  v7 = *(v153 + 8);
  __chkstk_darwin(v178);
  v152 = &v148[-v8];
  v9 = sub_2EF0(&qword_31FF38, &qword_27BA68);
  v155 = *(v9 - 8);
  v10 = *(v155 + 64);
  __chkstk_darwin(v9);
  v154 = &v148[-v11];
  v12 = sub_2EF0(&qword_3200E0, &qword_27BBA8);
  v158 = *(v12 - 8);
  v13 = v158[8];
  __chkstk_darwin(v12);
  v156 = &v148[-v14];
  v15 = sub_2EF0(&qword_3200E8, &qword_27BBB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v148[-v17];
  v19 = sub_2616D0();
  v177 = *(v19 - 8);
  v20 = *(v177 + 64);
  __chkstk_darwin(v19);
  v185 = &v148[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_260BD0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v170 = &v148[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_262370();
  v181 = *(v25 - 8);
  v182 = v25;
  v26 = *(v181 + 64);
  __chkstk_darwin(v25);
  v180 = &v148[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v179 = *(v188 - 8);
  v28 = *(v179 + 64);
  __chkstk_darwin(v188);
  v30 = &v148[-v29];
  v31 = sub_2EF0(&qword_31FF10, &unk_27BA48);
  v159 = *(v31 - 8);
  v32 = *(v159 + 64);
  __chkstk_darwin(v31);
  v157 = &v148[-v33];
  v163 = sub_2EF0(&qword_31FF08, &qword_27BA40);
  v161 = *(v163 - 8);
  v34 = *(v161 + 64);
  __chkstk_darwin(v163);
  v160 = &v148[-v35];
  v166 = sub_2EF0(&qword_3200F0, &qword_27BBB8);
  v165 = *(v166 - 8);
  v36 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v148[-v37];
  v183 = sub_2EF0(&qword_31FEF8, &unk_27BA30);
  v38 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v167 = &v148[-v39];
  v184 = sub_2EF0(&qword_31FEF0, &qword_27BA28);
  v169 = *(v184 - 8);
  v40 = *(v169 + 8);
  __chkstk_darwin(v184);
  v168 = &v148[-v41];
  v42 = sub_2EF0(&qword_3200F8, &qword_27BBC0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  if (*a2 == 8)
  {
    v171 = v30;
    if (*(a2 + 16))
    {
      v169 = v148;
      v45 = *(a2 + 8);
      __chkstk_darwin(v44);
      __chkstk_darwin(v46);
      v174 = v47;
      v168 = sub_2EF0(&qword_320100, &qword_27BBC8);
      v48 = type metadata accessor for MenuContentView(0);
      v175 = v18;
      v167 = v48;
      v49 = sub_2F9C(&qword_320108, &qword_27BBD0);
      v176 = v12;
      v50 = v49;
      v173 = v15;
      v51 = v4;
      v52 = sub_2F9C(&qword_320110, &qword_27BBD8);
      v53 = sub_148154();
      v186 = v9;
      v54 = v53;
      v172 = v19;
      v190 = &type metadata for Solarium;
      v191 = &protocol witness table for Solarium;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v56 = sub_148450(&qword_320130, &qword_320110, &qword_27BBD8, sub_148154);
      v57 = v188;
      v190 = v50;
      v191 = v188;
      v192 = v52;
      v193 = v54;
      v194 = OpaqueTypeConformance2;
      v195 = v56;
      v170 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
      swift_getOpaqueTypeConformance2();
      sub_1473B4(&qword_320138, type metadata accessor for MenuContentView);
      v58 = v150;
      sub_262750();
      sub_263500();
      v59 = v171;
      sub_261DF0();
      v60 = sub_2EF0(&qword_31FF50, &qword_27BA80);
      v61 = sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78);
      v62 = sub_261760();
      v63 = sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
      v190 = v51;
      v191 = v62;
      v192 = v61;
      v193 = v63;
      v146 = swift_getOpaqueTypeConformance2();
      v64 = v152;
      sub_262E80();
      (*(v179 + 8))(v59, v57);
      (*(v151 + 8))(v58, v51);
      v65 = v180;
      sub_262350();
      v190 = v51;
      v191 = v57;
      v192 = v60;
      v193 = v61;
      v194 = OpaqueTypeConformance2;
      v195 = v146;
      v66 = swift_getOpaqueTypeConformance2();
      v67 = v154;
      v68 = v178;
      sub_262C70();
      (*(v181 + 8))(v65, v182);
      (*(v153 + 1))(v64, v68);
      v69 = v185;
      sub_2618B0();
      v190 = v68;
      v191 = v66;
      v188 = swift_getOpaqueTypeConformance2();
      v70 = sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect);
      v71 = v156;
      v72 = v186;
      v73 = v172;
      sub_262AA0();
      v74 = v73;
      (*(v177 + 8))(v69, v73);
      (*(v155 + 8))(v67, v72);
      v75 = v158;
      v76 = v176;
      (v158[2])(v175, v71, v176);
      swift_storeEnumTagMultiPayload();
      v77 = sub_2F9C(&qword_3193D0, &qword_26CDD0);
      v78 = sub_1470D4();
      v79 = sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0);
      v190 = v183;
      v191 = v77;
      v192 = v78;
      v193 = v79;
      v80 = swift_getOpaqueTypeConformance2();
      v190 = v184;
      v191 = v74;
      v192 = v80;
      v193 = v70;
      swift_getOpaqueTypeConformance2();
      v190 = v186;
      v191 = v74;
      v192 = v188;
      v193 = v70;
      swift_getOpaqueTypeConformance2();
      v81 = v187;
      sub_261F80();
      (v75[1])(v71, v76);
      v82 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
      return (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    }

    else
    {
      v142 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
      v143 = *(*(v142 - 8) + 56);
      v144 = v142;
      v145 = v187;

      return v143(v145, 1, 1, v144);
    }
  }

  else
  {
    v153 = v148;
    __chkstk_darwin(v44);
    v176 = v12;
    __chkstk_darwin(v84);
    v175 = v18;
    v162 = v85;
    v174 = v86;
    v154 = v87;
    v149 = v88;
    v152 = sub_2EF0(&qword_320140, &qword_27BBE8);
    v151 = type metadata accessor for MenuContentView(0);
    v89 = sub_2F9C(&qword_320148, &qword_27BBF0);
    v172 = v19;
    v90 = v89;
    v173 = v15;
    v186 = v9;
    v91 = sub_2F9C(&qword_320150, &qword_27BBF8);
    v155 = v4;
    v92 = v91;
    v93 = sub_148218();
    v190 = &type metadata for Solarium;
    v191 = &protocol witness table for Solarium;
    v94 = v31;
    v95 = swift_getOpaqueTypeConformance2();
    v156 = v95;
    v96 = sub_148450(&qword_320180, &qword_320150, &qword_27BBF8, sub_148218);
    v190 = v90;
    v191 = v188;
    v97 = v188;
    v192 = v92;
    v193 = v93;
    v194 = v95;
    v195 = v96;
    v158 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_320138, type metadata accessor for MenuContentView);
    v98 = v157;
    sub_262750();
    sub_263500();
    v99 = v30;
    sub_261DF0();
    v100 = sub_2EF0(&qword_31FF18, &qword_27BA58);
    v153 = &protocol conformance descriptor for Menu<A, B>;
    v101 = sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48);
    v102 = sub_2F9C(&qword_31FF28, &qword_27BA60);
    v103 = sub_261760();
    v152 = v103;
    v104 = sub_2615E0();
    v105 = sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle);
    v190 = v94;
    v191 = v104;
    v192 = v101;
    v193 = v105;
    v106 = swift_getOpaqueTypeConformance2();
    v151 = sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
    v190 = v102;
    v191 = v103;
    v192 = v106;
    v193 = v151;
    v150 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v147 = swift_getOpaqueTypeConformance2();
    v107 = v160;
    v108 = v156;
    sub_262E80();
    v109 = v97;
    (*(v179 + 8))(v99, v97);
    (*(v159 + 8))(v98, v94);
    v110 = v180;
    sub_262350();
    v190 = v94;
    v191 = v109;
    v192 = v100;
    v193 = v101;
    v194 = v108;
    v195 = v147;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = v164;
    v113 = v163;
    sub_262C70();
    (*(v181 + 8))(v110, v182);
    (*(v161 + 8))(v107, v113);
    v189 = v149;
    SymbolImage.Kind.accessibilityLocalizable.getter();
    sub_30CC(v171, &v190);
    v114 = sub_2627B0();
    v116 = v115;
    LOBYTE(v110) = v117;
    v190 = v113;
    v191 = v111;
    v182 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
    swift_getOpaqueTypeConformance2();
    v118 = v167;
    v119 = v166;
    sub_262BF0();
    sub_39DBC(v114, v116, v110 & 1);

    v120 = (*(v165 + 8))(v112, v119);
    __chkstk_darwin(v120);
    v121 = sub_2EF0(&qword_3193D0, &qword_26CDD0);
    v122 = sub_1470D4();
    v123 = sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0);
    v124 = v168;
    v125 = v183;
    sub_262D60();
    sub_148510(v118);
    v126 = v185;
    sub_2618B0();
    v190 = v125;
    v191 = v121;
    v192 = v122;
    v193 = v123;
    v127 = swift_getOpaqueTypeConformance2();
    v128 = sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect);
    v129 = v162;
    v130 = v184;
    v131 = v172;
    sub_262AA0();
    (*(v177 + 8))(v126, v131);
    (*(v169 + 1))(v124, v130);
    v132 = v154;
    v133 = v174;
    (*(v154 + 2))(v175, v129, v174);
    swift_storeEnumTagMultiPayload();
    v190 = v130;
    v191 = v131;
    v192 = v127;
    v193 = v128;
    swift_getOpaqueTypeConformance2();
    v134 = sub_2F9C(&qword_31FF50, &qword_27BA80);
    v135 = sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78);
    v136 = v155;
    v190 = v155;
    v191 = v152;
    v192 = v135;
    v193 = v151;
    v137 = swift_getOpaqueTypeConformance2();
    v190 = v136;
    v191 = v188;
    v192 = v134;
    v193 = v135;
    v194 = v156;
    v195 = v137;
    v138 = swift_getOpaqueTypeConformance2();
    v190 = v178;
    v191 = v138;
    v139 = swift_getOpaqueTypeConformance2();
    v190 = v186;
    v191 = v131;
    v192 = v139;
    v193 = v128;
    swift_getOpaqueTypeConformance2();
    v140 = v187;
    sub_261F80();
    v132[1](v162, v133);
    v141 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
    return (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  }
}

uint64_t sub_145338@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_2EF0(&qword_31CEF8, &qword_274050);
  v3 = *(v17[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17[0]);
  v6 = v17 - v5;
  v7 = sub_2EF0(&qword_320148, &qword_27BBF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  sub_263500();
  v19 = a1;
  v18 = a1;
  type metadata accessor for PlainToolbarIconView();
  sub_1473B4(&qword_31D150, type metadata accessor for PlainToolbarIconView);
  sub_6684C();
  sub_263510();
  v11 = &v10[*(sub_2EF0(&qword_320168, &qword_27BC00) + 36)];
  v12 = sub_2EF0(&qword_317530, &qword_26FCC0);
  sub_1456F8(v11 + *(v12 + 28));
  *v11 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v14 = &v10[*(v7 + 36)];
  *v14 = KeyPath;
  v14[8] = 2;
  sub_263500();
  sub_261DF0();
  sub_2EF0(&qword_320150, &qword_27BBF8);
  sub_148218();
  v20 = &type metadata for Solarium;
  v21 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_148450(&qword_320180, &qword_320150, &qword_27BBF8, sub_148218);
  v15 = v17[0];
  sub_262E80();
  (*(v3 + 8))(v6, v15);
  return sub_8E80(v10, &qword_320148, &qword_27BBF0);
}

uint64_t sub_145688@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for PlainToolbarIconView() + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_1456F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 8 || (sub_D6684(v3, 7u) & 1) == 0)
  {
    v4 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    v4 = &enum case for Image.Scale.large(_:);
  }

  v5 = *v4;
  v6 = sub_2630F0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_145790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_2EF0(&qword_320150, &qword_27BBF8) + 36);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  v6 = *(v5 + 20);
  *(v4 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v5 + 24)) = 1;
  return sub_8198(a1, a2, &qword_320148, &qword_27BBF0);
}

uint64_t sub_145860@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_261760();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2615E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_31FF28, &qword_27BA60);
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v21 - v13;
  sub_2615D0();
  v15 = sub_2EF0(&qword_31FF10, &unk_27BA48);
  v16 = sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48);
  v17 = sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle);
  sub_262EC0();
  (*(v7 + 8))(v10, v6);
  sub_261750();
  v25 = v15;
  v26 = v6;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
  v19 = v21;
  v18 = v22;
  sub_262A50();
  (*(v23 + 8))(v5, v18);
  return (*(v11 + 8))(v14, v19);
}

uint64_t sub_145B98@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_260BD0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_2630B0();
  v16[47] = a1;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a2, v16);
  v9 = sub_2627B0();
  v11 = v10;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  v13 = v12 & 1;
  *(a3 + 24) = v12 & 1;
  *(a3 + 32) = v14;

  sub_43B58(v9, v11, v13);

  sub_39DBC(v9, v11, v13);
}

uint64_t sub_145DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  type metadata accessor for ProfileRestrictions();
  sub_1473B4(&qword_326DC0, type metadata accessor for ProfileRestrictions);

  *a2 = sub_261900();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v5 = type metadata accessor for MenuContentView(0);
  v6 = *(v5 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v5 + 28)) = v3;
  return result;
}

uint64_t sub_145E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v20 = *(v18 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v18);
  v7 = v16 - v6;
  v23 = a1;
  v24 = a2;
  sub_10A84();

  v8 = sub_2628F0();
  v10 = v9;
  LOBYTE(a2) = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v23 = v8;
  v24 = v10;
  v25 = a2 & 1;
  v26 = v13;
  v27 = KeyPath;
  v28 = 2;
  sub_43B58(v8, v10, a2 & 1);

  sub_263500();
  sub_261DF0();
  v16[1] = sub_2EF0(&qword_320108, &qword_27BBD0);
  v16[0] = sub_2EF0(&qword_320110, &qword_27BBD8);
  sub_148154();
  v21 = &type metadata for Solarium;
  v22 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_148450(&qword_320130, &qword_320110, &qword_27BBD8, sub_148154);
  v14 = v18;
  sub_262E80();
  sub_39DBC(v8, v10, a2 & 1);

  (*(v20 + 8))(v7, v14);
  sub_39DBC(v8, v10, a2 & 1);
}

uint64_t sub_14612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2 + *(sub_2EF0(&qword_320110, &qword_27BBD8) + 36);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  v11 = *(v10 + 20);
  *(v9 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v10 + 24)) = 1;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  sub_43B58(v3, v4, v5);
}

uint64_t sub_146238()
{
  v0 = sub_261760();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261750();
  sub_2EF0(&qword_31FF48, &qword_27BA78);
  sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78);
  sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
  sub_262A50();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1463AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_147D2C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationActionMenuButtonView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_147F04(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for NavigationActionMenuButtonView);
  sub_2EF0(&qword_31FED0, &qword_27BA18);
  sub_260A70();
  sub_260A50();
  sub_146CD0();
  sub_1473B4(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_1473B4(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_1465B4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v7 = a1;
  sub_1468E4(a1, &v6[-v4]);
  sub_2EF0(&qword_31BAF0, &qword_271290);
  sub_147C70();
  sub_148640(&qword_31BAE8, &qword_31BAF0, &qword_271290, sub_AAD6C);
  return sub_263400();
}

uint64_t sub_1466E0(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarActionMenu(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 32));
  sub_147D2C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionMenu);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_147F04(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ToolbarActionMenu);

  sub_2EF0(&qword_31B6D0, &qword_27BBA0);
  sub_2EF0(&qword_31B6D8, &unk_270F10);
  sub_8E38(&qword_31B6E0, &qword_31B6D0, &qword_27BBA0);
  sub_AAD6C();
  sub_1473B4(&qword_31B718, type metadata accessor for ToolbarActionMenuItem);
  return sub_2633C0();
}

uint64_t sub_1468E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_260B00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_260BD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  v20 = type metadata accessor for ToolbarActionMenu(0);
  sub_8198(a1 + *(v20 + 20), v11, &qword_316208, &qword_268BD0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_8E80(v11, &qword_316208, &qword_268BD0);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v16, v19, v12);
    sub_260B10();
    (*(v13 + 8))(v19, v12);
    v23 = v26;
    (*(v4 + 32))(v26, v7, v3);
    v21 = 0;
    v22 = v23;
  }

  return (*(v4 + 56))(v22, v21, 1, v3);
}

uint64_t sub_146BA8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 28));

  sub_2EF0(&qword_31BA80, &unk_277F20);
  sub_2EF0(&qword_3200B8, &unk_27BB80);
  sub_8E38(&qword_3200C0, &qword_31BA80, &unk_277F20);
  sub_147BAC();
  sub_1473B4(&qword_3200D8, type metadata accessor for ToolbarActionMenu);
  return sub_2633C0();
}

unint64_t sub_146CD0()
{
  result = qword_31FED8;
  if (!qword_31FED8)
  {
    sub_2F9C(&qword_31FED0, &qword_27BA18);
    sub_146D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FED8);
  }

  return result;
}

unint64_t sub_146D54()
{
  result = qword_31FEE0;
  if (!qword_31FEE0)
  {
    sub_2F9C(&qword_31FEE8, &qword_27BA20);
    sub_2F9C(&qword_31FEF0, &qword_27BA28);
    sub_2616D0();
    sub_2F9C(&qword_31FEF8, &unk_27BA30);
    sub_2F9C(&qword_3193D0, &qword_26CDD0);
    sub_1470D4();
    sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0);
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31FF38, &qword_27BA68);
    sub_2F9C(&qword_31FF40, &qword_27BA70);
    sub_2F9C(&qword_31FF48, &qword_27BA78);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31FF50, &qword_27BA80);
    sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEE0);
  }

  return result;
}

unint64_t sub_1470D4()
{
  result = qword_31FF00;
  if (!qword_31FF00)
  {
    sub_2F9C(&qword_31FEF8, &unk_27BA30);
    sub_2F9C(&qword_31FF08, &qword_27BA40);
    sub_2F9C(&qword_31FF10, &unk_27BA48);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31FF18, &qword_27BA58);
    sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31FF28, &qword_27BA60);
    sub_261760();
    sub_2615E0();
    sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FF00);
  }

  return result;
}

uint64_t sub_1473B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14742C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1474FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316F68, &unk_269C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1475AC()
{
  sub_147744(319, &qword_31FFC8, &type metadata for SymbolImage.Kind, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_147744(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_147B2C(319, &unk_31FFD0, type metadata accessor for ToolbarActionMenu, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_147B2C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_147744(319, &unk_319020, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_147744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1477EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1478CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_31EFC8, &unk_279C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1479B4()
{
  sub_95884();
  if (v0 <= 0x3F)
  {
    sub_147AC8();
    if (v1 <= 0x3F)
    {
      sub_147B2C(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_147B2C(319, &unk_31FFD0, type metadata accessor for ToolbarActionMenu, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_147AC8()
{
  if (!qword_31A200)
  {
    sub_2F9C(&qword_31A208, &unk_27A5E0);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31A200);
    }
  }
}

void sub_147B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_147BAC()
{
  result = qword_3200C8;
  if (!qword_3200C8)
  {
    sub_2F9C(&qword_3200B8, &unk_27BB80);
    sub_147C70();
    sub_148640(&qword_31BAE8, &qword_31BAF0, &qword_271290, sub_AAD6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3200C8);
  }

  return result;
}

unint64_t sub_147C70()
{
  result = qword_3200D0;
  if (!qword_3200D0)
  {
    sub_2F9C(&qword_31AA18, &qword_26FB18);
    sub_1473B4(&qword_3184E0, &type metadata accessor for LocalizedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3200D0);
  }

  return result;
}

uint64_t sub_147D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_147D94()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v3 + v1[6]);

  v9 = (v3 + v1[7]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = (v3 + v1[8]);
  if (*v11)
  {
    v12 = v11[1];
  }

  return swift_deallocObject();
}

uint64_t sub_147F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_147F6C()
{
  v1 = type metadata accessor for NavigationActionMenuButtonView(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 16);

  v5 = *(v3 + 24);

  v6 = *(v1 + 28);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  sub_3074(*(v3 + *(v1 + 32)), *(v3 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_1480B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationActionMenuButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_143B18(a1, v6, a2);
}

unint64_t sub_148154()
{
  result = qword_320118;
  if (!qword_320118)
  {
    sub_2F9C(&qword_320108, &qword_27BBD0);
    sub_8E38(&qword_320120, &qword_320128, &qword_27BBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320118);
  }

  return result;
}

unint64_t sub_148218()
{
  result = qword_320158;
  if (!qword_320158)
  {
    sub_2F9C(&qword_320148, &qword_27BBF0);
    sub_1482D0();
    sub_8E38(&qword_320120, &qword_320128, &qword_27BBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320158);
  }

  return result;
}

unint64_t sub_1482D0()
{
  result = qword_320160;
  if (!qword_320160)
  {
    sub_2F9C(&qword_320168, &qword_27BC00);
    sub_148388();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320160);
  }

  return result;
}

unint64_t sub_148388()
{
  result = qword_320170;
  if (!qword_320170)
  {
    sub_2F9C(&qword_320178, &unk_27BC08);
    sub_1473B4(&qword_31D150, type metadata accessor for PlainToolbarIconView);
    sub_6684C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320170);
  }

  return result;
}

uint64_t sub_148450(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_1473B4(&qword_319450, type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_148510(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31FEF8, &unk_27BA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_148588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BA0();
  *a1 = result;
  return result;
}

uint64_t sub_148640(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ThumbOpinionButtonViewModel.init(state:assetInfo:isLikedButton:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  result = sub_F7CC(a2, a4 + 24);
  *(a4 + 64) = a3;
  return result;
}

uint64_t sub_148710@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for ThumbOpinionButton();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_14B700(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1488FC@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for ThumbOpinionButton();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_14B700(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ThumbOpinionButton.init(viewModel:nextAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v111 = type metadata accessor for DelayAction();
  v5 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v113 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_260560();
  v91 = *(v92 - 8);
  v7 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260600();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v89 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2601E0();
  v102 = *(v103 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v103);
  v100 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316B98, &unk_275840);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v88 - v18;
  __chkstk_darwin(v19);
  v99 = &v88 - v20;
  v21 = type metadata accessor for AssetAction.Kind(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AssetAction(0);
  v25 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v119 = &v88 - v29;
  v117 = sub_263AF0();
  v116 = *(v117 - 8);
  v30 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v88 - v33;
  v110 = sub_263B30();
  v109 = *(v110 - 8);
  v35 = *(v109 + 64);
  __chkstk_darwin(v110);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ThumbOpinionButton();
  v39 = *(v38 + 20);
  *(a3 + v39) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v106 = v38;
  v40 = *(v38 + 24);
  *(a3 + v40) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v112 = a3;
  sub_1497C8(a1, a3);
  LOBYTE(a3) = *(a1 + 64);
  sub_263AC0();
  sub_1497C8(a1, &v120);
  v41 = swift_allocObject();
  v42 = v123;
  *(v41 + 48) = v122;
  *(v41 + 64) = v42;
  *(v41 + 80) = v124;
  v43 = v121;
  *(v41 + 16) = v120;
  *(v41 + 32) = v43;
  *(v41 + 81) = a3;
  v107 = v37;
  v108 = v34;
  sub_263B10();
  v44 = *(a1 + 56);
  sub_2E18((a1 + 24), *(a1 + 48));
  v45 = *(v44 + 8);
  v96 = sub_2606E0();
  v95 = v46;
  v47 = *(a1 + 56);
  sub_2E18((a1 + 24), *(a1 + 48));
  v48 = *(v47 + 8);
  v94 = sub_2606E0();
  v93 = v49;
  v50 = *(a1 + 48);
  v51 = *(a1 + 56);
  v104 = a1;
  sub_2E18((a1 + 24), v50);
  LOBYTE(v51) = sub_260870();
  v52 = v115;
  sub_263AC0();
  *v24 = a3;
  v53 = v24;
  swift_storeEnumTagMultiPayload();
  v54 = sub_260620();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v99;
  v98 = v55 + 56;
  v97 = v56;
  v56(v99, 1, 1, v54);
  v58 = v100;
  sub_2601D0();
  v59 = sub_2601C0();
  v61 = v60;
  (*(v102 + 8))(v58, v103);
  *v27 = v59;
  *(v27 + 1) = v61;
  v62 = v101;
  v63 = v95;
  *(v27 + 2) = v96;
  *(v27 + 3) = v63;
  v64 = v93;
  *(v27 + 4) = v94;
  *(v27 + 5) = v64;
  v27[48] = v51 & 1;
  v65 = v118;
  (*(v116 + 16))(&v27[*(v118 + 32)], v52, v117);
  sub_14B5F0(v53, &v27[*(v65 + 40)], type metadata accessor for AssetAction.Kind);
  sub_8198(v57, v62, &qword_316B98, &unk_275840);
  v66 = *(v55 + 48);
  if (v66(v62, 1, v54) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v89);
    (*(v91 + 104))(v90, enum case for LinkActionType.click(_:), v92);
    v67 = v105;
    sub_260610();
    sub_8E80(v57, &qword_316B98, &unk_275840);
    sub_14B6A0(v53, type metadata accessor for AssetAction.Kind);
    (*(v116 + 8))(v115, v117);
    if (v66(v62, 1, v54) != 1)
    {
      sub_8E80(v62, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v57, &qword_316B98, &unk_275840);
    sub_14B6A0(v53, type metadata accessor for AssetAction.Kind);
    (*(v116 + 8))(v115, v117);
    v68 = v105;
    (*(v55 + 32))(v105, v62, v54);
    v67 = v68;
  }

  v97(v67, 0, 1, v54);
  v69 = v118;
  sub_129C04(v67, &v27[*(v118 + 36)]);
  sub_14B700(v27, v119, type metadata accessor for AssetAction);
  v70 = v104;
  v71 = v104[7];
  sub_2E18(v104 + 3, v104[6]);
  v72 = *(v71 + 8);
  v73 = sub_2606E0();
  *&v120 = 0xD000000000000010;
  *(&v120 + 1) = 0x8000000000293050;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = v73;
  v129 = v74;
  v130 = 2;
  sub_54B4(&v120);
  v75 = v113;
  sub_263AC0();
  v76 = v111;
  *(v75 + *(v111 + 20)) = 0x3FD999999999999ALL;
  sub_263AC0();
  sub_2EF0(&qword_317258, &unk_27A660);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_2683F0;
  v78 = v110;
  *(v77 + 56) = v110;
  *(v77 + 64) = &protocol witness table for ClosureAction;
  v79 = sub_10934((v77 + 32));
  v80 = v109;
  v81 = v107;
  (*(v109 + 16))(v79, v107, v78);
  *(v77 + 96) = v69;
  *(v77 + 104) = sub_14B658(&qword_319AE8, type metadata accessor for AssetAction);
  v82 = sub_10934((v77 + 72));
  v83 = v119;
  sub_14B5F0(v119, v82, type metadata accessor for AssetAction);
  *(v77 + 136) = v76;
  *(v77 + 144) = sub_14B658(&qword_320198, type metadata accessor for DelayAction);
  v84 = sub_10934((v77 + 112));
  sub_14B5F0(v75, v84, type metadata accessor for DelayAction);
  v85 = v114;
  sub_30CC(v114, v77 + 152);
  v86 = (v112 + *(v106 + 28));
  v86[3] = sub_263BD0();
  v86[4] = &protocol witness table for CompoundAction;
  sub_10934(v86);
  sub_263BC0();
  sub_3080(v85);
  sub_14B6A0(v75, type metadata accessor for DelayAction);
  sub_14B6A0(v83, type metadata accessor for AssetAction);
  (*(v80 + 8))(v81, v78);
  return sub_1498F0(v70);
}

uint64_t type metadata accessor for ThumbOpinionButton()
{
  result = qword_320228;
  if (!qword_320228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_149800(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  sub_2EF0(&qword_320290, &qword_27C088);
  sub_263330();
}

uint64_t sub_149888()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_3080(v0 + 5);

  return swift_deallocObject();
}

double ThumbOpinionButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_261760();
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2604E0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for ThumbOpinionButton();
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_3201A0, &qword_27BDE0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v16 = (&v34 + *(v15 + 48) - v13);
  v17 = sub_2EF0(&qword_3201A8, &qword_27BDE8);
  v16[3] = v17;
  v16[4] = sub_8E38(&qword_3201B0, &qword_3201A8, &qword_27BDE8);
  v18 = sub_10934(v16);
  v19 = sub_2610B0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = *(v8 + 36);
  v21 = v35;
  sub_30CC(v35 + v20, &v14[v11[13]]);
  sub_14B5F0(v21, v10, type metadata accessor for ThumbOpinionButton);
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = swift_allocObject();
  sub_14B700(v10, v23 + v22, type metadata accessor for ThumbOpinionButton);
  sub_2604C0();
  sub_260420();
  v24 = &v14[v11[9]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v11[10];
  *&v14[v25] = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v26 = &v14[v11[11]];
  *v26 = swift_getKeyPath();
  v26[40] = 0;
  v27 = (v18 + *(v17 + 36));
  *v27 = sub_14A3F4;
  v27[1] = v23;
  v28 = v36;
  sub_261750();
  sub_8E38(&qword_3201B8, &qword_3201A0, &qword_27BDE0);
  sub_14B658(&qword_319400, &type metadata accessor for PlainButtonStyle);
  v29 = v39;
  v30 = v37;
  sub_262A50();
  (*(v38 + 8))(v28, v30);
  sub_8E80(v14, &qword_3201A0, &qword_27BDE0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v31 = (v29 + *(sub_2EF0(&qword_3201C0, &qword_27BE88) + 36));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  result = *&v42;
  v31[2] = v42;
  return result;
}

uint64_t sub_149DD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a1;
  v53 = a2;
  v2 = sub_2EF0(&qword_31B578, &qword_270C30);
  v3 = *(v2 - 8);
  v52 = v2 - 8;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v48 - v5;
  v6 = type metadata accessor for SizeConstants.Environment(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v20 = *(v19 - 8);
  v49 = v19 - 8;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v23 = &v48 - v22;
  v24 = type metadata accessor for SizeConstants(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v48 - v29;
  sub_148710(&v48 - v29);
  v31 = *(v12 + 104);
  v48 = v18;
  v31(v18, enum case for Font.TextStyle.body(_:), v11);
  sub_14B5F0(v30, v27, type metadata accessor for SizeConstants);
  v32 = v18;
  v33 = v11;
  (*(v12 + 16))(v15, v32, v11);
  sub_14B5F0(v27, v23, type metadata accessor for SizeConstants);
  v34 = v10;
  sub_14B5F0(v27, v10, type metadata accessor for SizeConstants.Environment);
  v35 = *(v7 + 32);
  v36 = sub_1CF30(v15, &v10[v35]);
  v37 = *(v12 + 8);
  v37(v15, v33);
  sub_14B6A0(v27, type metadata accessor for SizeConstants);
  v38 = sub_261690();
  (*(*(v38 - 8) + 8))(&v34[v35], v38);
  v39 = 1.0;
  if ((*&v36 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v39 = v36;
  }

  if ((~*&v36 & 0x7FF0000000000000) == 0)
  {
    v36 = v39;
  }

  v40 = v48;
  *&v23[*(v49 + 44)] = v36;
  v37(v40, v33);
  sub_14B6A0(v30, type metadata accessor for SizeConstants);
  v41 = v51;
  sub_14B5F0(v23, v51, type metadata accessor for SizeConstants.Environment);
  sub_8E80(v23, &qword_31B4C0, &qword_27C030);
  *(v41 + *(v52 + 44)) = v36;
  v42 = sub_21FA68(8.0);
  sub_8E80(v41, &qword_31B578, &qword_270C30);
  v43 = sub_261E50();
  v44 = v53;
  *v53 = v43;
  *(v44 + 1) = v42;
  *(v44 + 16) = 0;
  v45 = v44;
  v46 = sub_2EF0(&qword_320270, &qword_27C038);
  return sub_14A464(v50, v45 + *(v46 + 44));
}

uint64_t sub_14A230()
{
  v1 = type metadata accessor for ThumbOpinionButton();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v3[1];

  sub_3080(v3 + 3);
  v6 = v3 + v1[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v8 = sub_261690();
    (*(*(v8 - 8) + 8))(&v6[v7], v8);
  }

  else
  {
    v9 = *v6;
  }

  v10 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
    v12 = *(v3 + v10);
  }

  sub_3080((v3 + v1[7]));

  return swift_deallocObject();
}

uint64_t sub_14A3F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ThumbOpinionButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_149DD4(v4, a1);
}

uint64_t sub_14A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = sub_260290();
  v59 = *(v65 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v65);
  v62 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = v55 - v6;
  v63 = sub_264410();
  v58 = *(v63 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v63);
  v60 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = v55 - v10;
  v11 = sub_2EF0(&qword_320278, &qword_27C040);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v14 = v55 - v13;
  v15 = sub_2EF0(&qword_320280, &qword_27C048);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v66 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v55 - v20;
  __chkstk_darwin(v22);
  v24 = v55 - v23;
  v55[3] = *(a1 + 64);
  v25 = sub_2630B0();
  v26 = sub_262570();
  KeyPath = swift_getKeyPath();
  v69 = v25;
  v70 = KeyPath;
  v71 = v26;
  sub_2EF0(&qword_317578, &unk_269A20);
  sub_3076C();
  sub_262D70();

  v28 = v24;

  v61 = a1;
  v29 = sub_14AB3C();
  (*(v56 + 32))(v21, v14, v57);
  *&v21[*(v16 + 44)] = v29;
  v30 = v21;
  v32 = v58;
  v31 = v59;
  sub_14B510(v30, v24);
  v33 = v68;
  sub_2643A0();
  v34 = v64;
  sub_260260();
  v35 = v63;
  (*(v32 + 16))(v60, v33, v63);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v37 = v65;
  (*(v31 + 16))(v62, v34, v65);
  sub_264490();
  (*(v31 + 8))(v34, v37);
  (*(v32 + 8))(v68, v35);
  sub_262580();
  v38 = sub_262840();
  v40 = v39;
  v42 = v41;

  if (sub_14ADC8())
  {
    v43 = sub_262120();
  }

  else
  {
    v43 = sub_262140();
  }

  LODWORD(v69) = v43;
  v44 = sub_2627F0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_39DBC(v38, v40, v42 & 1);

  v51 = v66;
  sub_14B580(v28, v66);
  v52 = v67;
  sub_14B580(v51, v67);
  v53 = v52 + *(sub_2EF0(&qword_320288, &qword_27C080) + 48);
  *v53 = v44;
  *(v53 + 8) = v46;
  *(v53 + 16) = v48 & 1;
  *(v53 + 24) = v50;
  sub_43B58(v44, v46, v48 & 1);

  sub_8E80(v28, &qword_320280, &qword_27C048);
  sub_39DBC(v44, v46, v48 & 1);

  return sub_8E80(v51, &qword_320280, &qword_27C048);
}

uint64_t sub_14AB3C()
{
  v0 = sub_261180();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants.Environment(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_14ADC8())
  {
    sub_1488FC(v12);
    sub_14B5F0(v12, v8, type metadata accessor for ColorConstants.Environment);
    (*(v1 + 104))(v4, enum case for ColorScheme.dark(_:), v0);
    sub_14B658(&qword_3183A0, &type metadata accessor for ColorScheme);
    v13 = sub_264390();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v8, v0);
    if (v13)
    {
      v15 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v15 = sub_262F80();
    }

    v18 = v15;
    sub_14B6A0(v12, type metadata accessor for ColorConstants);
    return v18;
  }

  else
  {
    v16 = [objc_opt_self() systemFillColor];

    return sub_262EE0();
  }
}

BOOL sub_14ADC8()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  if (*(v0 + 64) == 1)
  {
    sub_2EF0(&qword_320290, &qword_27C088);
    sub_263320();
    return v6 == 0;
  }

  else
  {
    sub_2EF0(&qword_320290, &qword_27C088);
    sub_263320();
    return v6 == 1;
  }
}

unint64_t sub_14AE90()
{
  result = qword_3201C8;
  if (!qword_3201C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3201C8);
  }

  return result;
}

__n128 sub_14AF10(uint64_t a1, uint64_t a2)
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

uint64_t sub_14AF34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_14AF7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_14AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
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
      v13 = sub_2EF0(&qword_316F68, &unk_269C50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_14B144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
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
      v13 = sub_2EF0(&qword_316F68, &unk_269C50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_14B280()
{
  sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v0 <= 0x3F)
  {
    sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      sub_134888();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_14B364(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_14B3BC()
{
  result = qword_320268;
  if (!qword_320268)
  {
    sub_2F9C(&qword_3201C0, &qword_27BE88);
    sub_2F9C(&qword_3201A0, &qword_27BDE0);
    sub_261760();
    sub_8E38(&qword_3201B8, &qword_3201A0, &qword_27BDE0);
    sub_14B658(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320268);
  }

  return result;
}

uint64_t sub_14B510(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320280, &qword_27C048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B580(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320280, &qword_27C048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_14B658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14B6A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14B700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall ListItemThumbnailViewModel.isSmallGenreStyle(isCompact:)(Swift::Bool isCompact)
{
  sub_3F27C(v1, v7);
  if (v10)
  {
    goto LABEL_5;
  }

  v3 = v8;
  if (!isCompact && v9 != -1)
  {
    v3 = v9;
  }

  if (v3)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v6 = 7;
    if (isCompact || v9 == -1)
    {
      v6 = 5;
    }

    v4 = LOBYTE(v7[v6]) == 1;
  }

  sub_3080(v7);
  return v4;
}

uint64_t ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(char a1)
{
  sub_3F27C(v1, v6);
  if ((v8[9] & 1) == 0)
  {
    v4 = &v7;
    if (!(a1 & 1 | (v8[8] == 0xFF)))
    {
      v4 = v8;
    }

    v5 = *v4;
  }

  return sub_3080(v6);
}

uint64_t static ListItemThumbnailStyle.single(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  result = sub_30CC(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = 0;
  *(a3 + 64) = 255;
  return result;
}

__n128 ListItemThumbnailViewModel.init(style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(char a1)
{
  sub_3F27C(v1, v6);
  if ((v10 & 1) == 0)
  {
    v5 = v8;
    if (!(a1 & 1 | (v9 == 0xFF)))
    {
      v5 = v9;
    }

    if (v5 <= 1u)
    {
      if (v5)
      {
        sub_3080(v6);
        return 12.0;
      }
    }

    else if (v5 - 2 < 2)
    {
      sub_3080(v6);
      return 16.0;
    }

    sub_3080(v6);
    return 10.0;
  }

  v3 = v7;
  sub_3080(v6);
  result = 10.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

unint64_t sub_14BB30()
{
  result = qword_320298;
  if (!qword_320298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320298);
  }

  return result;
}

unint64_t sub_14BB88()
{
  result = qword_3202A0;
  if (!qword_3202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3202A0);
  }

  return result;
}

uint64_t sub_14BBE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
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

uint64_t sub_14BC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_14BC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_14BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_14BD24(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 65) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SingleThumbnailStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SingleThumbnailStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_14BDEC(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_14BE04(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t Metrics.NavigationType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_300CF8;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  v8 = 6;
  if (v6 < 6)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Metrics.NavigationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 1801675106;
  v3 = 7368560;
  v4 = 1952867692;
  if (v1 != 4)
  {
    v4 = 0x7468676972;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64726177726F66;
  if (v1 != 1)
  {
    v5 = 1752397168;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_14BF78()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

void sub_14C058(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1801675106;
  v5 = 0xE300000000000000;
  v6 = 7368560;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (v2 != 4)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64726177726F66;
  if (v2 != 1)
  {
    v10 = 1752397168;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t static Metrics.createPageMetrics(pageType:pageId:navigationType:networkPerformance:includePageInstruction:includeImpressionsInstruction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v80 = a8;
  v77 = a7;
  v89 = a4;
  v87 = a3;
  v88 = a2;
  v86 = a1;
  v91 = a9;
  v11 = sub_263DD0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_263A30();
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  __chkstk_darwin(v85);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v72 - v17;
  v74 = sub_2601E0();
  v73 = *(v74 - 8);
  v18 = *(v73 + 64);
  __chkstk_darwin(v74);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_320358, &qword_27C330);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v72 - v23;
  v25 = sub_2640D0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_263A10();
  v82 = *(v83 - 8);
  v30 = *(v82 + 64);
  __chkstk_darwin(v83);
  v78 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v81 = &v72 - v33;
  __chkstk_darwin(v34);
  v92 = &v72 - v35;
  v36 = *a5;
  v79 = sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x697461676976616ELL;
  v38 = inited + 32;
  *(inited + 40) = 0xEA00000000006E6FLL;
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      v39 = 0xE300000000000000;
      v40 = 7368560;
    }

    else if (v36 == 4)
    {
      v39 = 0xE400000000000000;
      v40 = 1952867692;
    }

    else
    {
      v39 = 0xE500000000000000;
      v40 = 0x7468676972;
    }
  }

  else if (v36)
  {
    if (v36 == 1)
    {
      v39 = 0xE700000000000000;
      v40 = 0x64726177726F66;
    }

    else
    {
      v39 = 0xE400000000000000;
      v40 = 1752397168;
    }
  }

  else
  {
    v39 = 0xE400000000000000;
    v40 = 1801675106;
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v40;
  *(inited + 56) = v39;
  sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(v38, &qword_3160C8, &unk_267D50);
  sub_14CEE0(a6, v24);
  v41 = *(v26 + 48);
  if (v41(v24, 1, v25) == 1)
  {
    sub_2601D0();
    v72 = sub_2601C0();
    (*(v73 + 8))(v20, v74);
    sub_2640C0();
    v42 = v41(v24, 1, v25);
    v43 = v82;
    v44 = v92;
    if (v42 != 1)
    {
      sub_8E80(v24, &qword_320358, &qword_27C330);
    }
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v43 = v82;
    v44 = v92;
  }

  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v45 = sub_2639E0();
  sub_B080(v45, qword_353F10);
  sub_2639B0();

  (*(v26 + 8))(v29, v25);
  v46 = _swiftEmptyArrayStorage;
  sub_E678(_swiftEmptyArrayStorage);
  v47 = v81;
  sub_2639A0();

  v48 = v83;
  v49 = v78;
  if (v77)
  {
    (*(v43 + 16))(v78, v44, v83);
    sub_2EF0(&qword_320360, &qword_27C338);
    v50 = sub_263A90();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_269100;
    v55 = v54 + v53;
    sub_263A80();
    if (qword_315A50 != -1)
    {
      swift_once();
    }

    v56 = sub_B080(v50, qword_320340);
    (*(v51 + 16))(v55 + v52, v56, v50);
    sub_39E3C(v54);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v75;
    sub_263A20();
    v46 = sub_E9564(0, 1, 1, _swiftEmptyArrayStorage);
    v59 = v46[2];
    v58 = v46[3];
    if (v59 >= v58 >> 1)
    {
      v46 = sub_E9564(v58 > 1, v59 + 1, 1, v46);
    }

    v46[2] = v59 + 1;
    (*(v84 + 32))(v46 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v59, v57, v85);
  }

  if (v80)
  {
    (*(v43 + 16))(v49, v47, v48);
    sub_2EF0(&qword_320360, &qword_27C338);
    v60 = *(sub_263A90() - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_269100;
    sub_263A60();
    sub_263A50();
    sub_39E3C(v63);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v64 = v76;
    sub_263A20();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_E9564(0, v46[2] + 1, 1, v46);
    }

    v66 = v46[2];
    v65 = v46[3];
    v44 = v92;
    if (v66 >= v65 >> 1)
    {
      v46 = sub_E9564(v65 > 1, v66 + 1, 1, v46);
    }

    v46[2] = v66 + 1;
    (*(v84 + 32))(v46 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v66, v64, v85);
  }

  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_269100;
  *(v67 + 32) = 0x6570795465676170;
  v68 = v86;
  *(v67 + 40) = 0xE800000000000000;
  *(v67 + 48) = v68;
  *(v67 + 56) = v88;
  *(v67 + 72) = &type metadata for String;
  *(v67 + 80) = 0x644965676170;
  *(v67 + 120) = &type metadata for String;
  v69 = v87;
  *(v67 + 88) = 0xE600000000000000;
  *(v67 + 96) = v69;
  *(v67 + 104) = v89;

  sub_E678(v67);
  swift_setDeallocating();
  sub_2EF0(&qword_3160C8, &unk_267D50);
  swift_arrayDestroy();
  sub_263DC0();
  sub_D0B04(_swiftEmptyArrayStorage);
  sub_263A40();
  v70 = *(v43 + 8);
  v70(v47, v48);
  return (v70)(v44, v48);
}

uint64_t sub_14CDC8()
{
  v0 = sub_263A90();
  sub_B600(v0, qword_320340);
  sub_B080(v0, qword_320340);
  return sub_263A70();
}

uint64_t static PageMetrics.InvocationPoint.cardDidAppear.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A50 != -1)
  {
    swift_once();
  }

  v2 = sub_263A90();
  v3 = sub_B080(v2, qword_320340);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_14CEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320358, &qword_27C330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_14CF54()
{
  result = qword_320368;
  if (!qword_320368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320368);
  }

  return result;
}

unint64_t sub_14CFB8()
{
  result = qword_320370;
  if (!qword_320370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320370);
  }

  return result;
}

unint64_t static SynchronousNativeIntentDispatcher.Builder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  sub_8E80(a2 + 8, &qword_320378, &qword_28A310);
  *v4 = 0u;
  *(v3 + 3) = 0u;
  v3[5] = 0;
  result = sub_F484(_swiftEmptyArrayStorage);
  *v3 = result;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return result;
  }

  v6 = 0;
  v44 = a1 + 32;
  v42 = v3;
LABEL_5:
  v45 = v6;
  sub_14FE2C(v44 + 48 * v6, v58);
  v7 = v58[0];

  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v57 = *v3;
  v11 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = v7;

  v16 = 0;
  while (v14)
  {
    v18 = v16;
LABEL_21:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v46 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_30CC(*(v46 + 56) + 40 * v22, &v47);
    *&v50 = v25;
    *(&v50 + 1) = v24;
    sub_F7CC(&v47, &v51);

LABEL_22:
    v47 = v50;
    v48[0] = v51;
    v48[1] = v52;
    v49 = v53;
    v26 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {
      v56 = 0;
      memset(v55, 0, sizeof(v55));
      v54 = 0u;
LABEL_4:

      v6 = v45 + 1;
      v3 = v42;
      *v42 = v10;
      result = sub_14FE88(v58);
      if (v45 + 1 == v43)
      {
        return result;
      }

      goto LABEL_5;
    }

    v27 = v47;
    sub_30CC(v48, v55);
    *&v54 = v27;
    *(&v54 + 1) = v26;

    sub_8E80(&v47, &qword_320380, &qword_27C460);
    v28 = *(&v54 + 1);
    if (!*(&v54 + 1))
    {
      goto LABEL_4;
    }

    v29 = v54;
    sub_F7CC(v55, &v50);
    v31 = sub_D410(v29, v28);
    v32 = v10[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_38;
    }

    v35 = v30;
    if (v10[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v10 = v57;
        if (v30)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_14F5C4(&qword_316150, &qword_267F40, sub_FBD4);
        v10 = v57;
        if (v35)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_14E67C(v34, isUniquelyReferenced_nonNull_native & 1, &qword_316150, &qword_267F40, sub_FBD4);
      v36 = sub_D410(v29, v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }

      v31 = v36;
      v10 = v57;
      if (v35)
      {
LABEL_9:

        v17 = (v10[7] + 40 * v31);
        sub_3080(v17);
        sub_F7CC(&v50, v17);
        goto LABEL_10;
      }
    }

    v10[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v10[6] + 16 * v31);
    *v38 = v29;
    v38[1] = v28;
    sub_F7CC(&v50, v10[7] + 40 * v31);
    v39 = v10[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_39;
    }

    v10[2] = v41;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v15 <= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v15;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      v14 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v16 = v20;
      v50 = 0u;
      goto LABEL_22;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_264FB0();
  __break(1u);
  return result;
}

uint64_t static SynchronousNativeIntentDispatcher.Builder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v11 = 0u;
  v10 = 0u;
  sub_8E80(&v10, &qword_320378, &qword_28A310);
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v9 = sub_F484(_swiftEmptyArrayStorage);
  SynchronousNativeIntentDispatcher.registering<A>(_:)(a1, a2, a3, a4);
  return sub_14FE88(&v9);
}

uint64_t static SynchronousNativeIntentDispatcher.Builder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_14FEDC(a1, v5);
  if (*&v5[0])
  {
    v4 = v5[1];
    *a2 = v5[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v5[2];
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    sub_8E80(a2 + 8, &qword_320378, &qword_28A310);
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    result = sub_F484(_swiftEmptyArrayStorage);
    *a2 = result;
    if (*&v5[0])
    {
      return sub_8E80(v5, &qword_320388, &qword_27C468);
    }
  }

  return result;
}

uint64_t sub_14D604(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_2EF0(a3, a4);
  v39 = a2;
  result = sub_264D00();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_A7C18(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_14D8C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2EF0(&qword_3161A8, &qword_267F88);
  result = sub_264D00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 48) + 40 * v24;
      if (a2)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v40 = *(v25 + 32);
        v38 = v26;
        v39 = v27;
        sub_F7CC((*(v5 + 56) + 40 * v24), v37);
      }

      else
      {
        sub_F7E4(v25, &v38);
        sub_30CC(*(v5 + 56) + 40 * v24, v37);
      }

      result = sub_264B40(*(v8 + 40));
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 40 * v16;
      v18 = *(v8 + 48) + v17;
      v19 = v38;
      v20 = v39;
      *(v18 + 32) = v40;
      *v18 = v19;
      *(v18 + 16) = v20;
      result = sub_F7CC(v37, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_14DB8C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s8RatioKeyVMa();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_2EF0(&qword_3161A0, &qword_267F80);
  v44 = a2;
  result = sub_264D00();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v45 = *(v42 + 72);
      v27 = v26 + v45 * v25;
      if (v44)
      {
        sub_FB18(v27, v9);
      }

      else
      {
        sub_FA58(v27, v9);
      }

      v28 = *(*(v10 + 56) + 8 * v25);
      v29 = *(v13 + 40);
      sub_265050();
      sub_262730();
      sub_14FFB8(&qword_316188, &type metadata accessor for Font.TextStyle);
      sub_264330();
      v30 = *(v43 + 20);
      sub_261690();
      sub_14FFB8(&qword_316190, &type metadata accessor for DynamicTypeSize);
      sub_264330();
      result = sub_265080();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v10 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_FB18(v9, *(v13 + 48) + v45 * v21);
      *(*(v13 + 56) + 8 * v21) = v28;
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_14DF7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2EF0(&qword_31E960, &qword_278FD8);
  v48 = a2;
  result = sub_264D00();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
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
    v47 = result;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v52 = *v26;
      v28 = (*(v5 + 56) + 48 * v25);
      v29 = v28[1];
      v50 = *v28;
      v31 = v28[2];
      v30 = v28[3];
      v33 = v28[4];
      v32 = v28[5];
      if ((v48 & 1) == 0)
      {
      }

      v51 = v30;
      v34 = v31;
      v35 = v29;
      v36 = *(v47 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v8 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v51;
        v18 = v32;
        v19 = v33;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v51;
      v18 = v32;
      v19 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (*(v47 + 48) + 16 * v16);
      *v20 = v52;
      v20[1] = v27;
      v21 = (*(v47 + 56) + 48 * v16);
      v13 = v49;
      *v21 = v50;
      v21[1] = v35;
      v21[2] = v34;
      v21[3] = v17;
      v21[4] = v19;
      v21[5] = v18;
      ++*(v47 + 16);
      v5 = v46;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_14E2B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2EF0(&qword_3160F0, &unk_267EE0);
  v40 = a2;
  result = sub_264D00();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 72 * v22;
      if (v40)
      {
        v47 = *(v26 + 16);
        v48 = *(v26 + 32);
        v49 = *(v26 + 48);
        v50 = *(v26 + 64);
        v46 = *v26;
      }

      else
      {
        v41 = *v26;
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *(v26 + 16);
        v45 = *(v26 + 64);
        v43 = v28;
        v44 = v27;
        v42 = v29;

        sub_14FF5C(&v41, &v46);
        v48 = v43;
        v49 = v44;
        v50 = v45;
        v46 = v41;
        v47 = v42;
      }

      v30 = *(v8 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *(v18 + 16) = v47;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v50;
      *v18 = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_14E67C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_2EF0(a3, a4);
  v39 = a2;
  result = sub_264D00();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_30CC(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_14E960(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2EF0(a3, a4);
  v38 = a2;
  result = sub_264D00();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = 16 * (v21 | (v11 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v39 = *(*(v7 + 56) + v24);
      if ((v38 & 1) == 0)
      {
      }

      v28 = *(v10 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = 16 * v18;
      v20 = (*(v10 + 48) + v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v10 + 56) + v19) = v39;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}
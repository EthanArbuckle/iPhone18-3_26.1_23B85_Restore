uint64_t WidgetContentLayerTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1440, &qword_19223B458);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  KeyPath = swift_getKeyPath();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205EBC4();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v15;
    sub_192069F84();
    sub_1922287C0();
    (*(v5 + 8))(v8, v4);
    v12 = v16;
    *v11 = KeyPath;
    *(v11 + 8) = 0;
    *(v11 + 9) = v12;
    sub_19206A08C(KeyPath, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_19206A098(KeyPath, 0);
  }
}

unint64_t sub_192069F84()
{
  result = qword_1EADECBE0;
  if (!qword_1EADECBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECBE0);
  }

  return result;
}

unint64_t sub_19206A038()
{
  result = qword_1ED74A088[0];
  if (!qword_1ED74A088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74A088);
  }

  return result;
}

uint64_t sub_19206A08C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_19206A098(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t WidgetURLModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0840, &qword_192235408);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for WidgetURLModifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B70();
  if (!v2)
  {
    v17 = v20;
    sub_192225020();
    sub_19203F924(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
    sub_192228750();
    (*(v21 + 8))(v11, v8);
    sub_19205EC64(v7, v15);
    sub_19206A384(v15, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19206A320()
{
  result = qword_1ED74AA58;
  if (!qword_1ED74AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA58);
  }

  return result;
}

uint64_t sub_19206A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1922261D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

_BYTE *sub_19206A73C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19206A874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1920367C8(a1, a2);
  }

  return a1;
}

uint64_t sub_19206A888()
{
  v1 = *v0;
  v2 = WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90](v2);
}

uint64_t CommonServerEnvironmentModifier.init(widget:metrics:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v8 = a4 + *(type metadata accessor for CommonServerEnvironmentModifier() + 28);

  return sub_19206A930(a3, v8);
}

uint64_t sub_19206A930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TimelineViewCollection.staleDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_192055D08(a1, a2, &v14 - v8);
  v10 = sub_192225150();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1920418D4(v9);
    v12 = 1;
  }

  else
  {
    sub_1922250E0();
    (*(v11 + 8))(v9, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

unint64_t sub_19206AB18()
{
  result = qword_1EADECDA8;
  if (!qword_1EADECDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0020, &qword_1922321F8);
    sub_19206C5AC();
    sub_192031E74(&qword_1EADED2B8, &qword_1EADF00E0, &qword_1922322F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDA8);
  }

  return result;
}

unint64_t sub_19206ABD0()
{
  result = qword_1ED74A6A0[0];
  if (!qword_1ED74A6A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74A6A0);
  }

  return result;
}

uint64_t CommonServerEnvironmentModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v96 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0018, &qword_1922321F0);
  v3 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v84 - v4;
  v5 = sub_192225D50();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0020, &qword_1922321F8);
  v8 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v10 = &v84 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  v11 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v84 - v15;
  v17 = sub_1922261D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0030, &qword_192232208);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v84 - v23;
  v25 = *(v2 + 24);
  v85 = *(v2 + 16);
  InternalWidgetFamily.init(_:)([v85 family], &v102);

  v26 = sub_19206B9B0(v25, &v102);
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0038, &qword_192232240);
  (*(*(v30 - 8) + 16))(v24, v92, v30);
  v92 = v21;
  v31 = &v24[*(v21 + 36)];
  *v31 = KeyPath;
  v31[1] = v26;
  v32 = v17;
  v31[2] = v28;
  v33 = type metadata accessor for CommonServerEnvironmentModifier();
  sub_19202CFFC(v2 + *(v33 + 28), v16, &qword_1EADEF250, &qword_19222C6C0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_192033970(v16, &qword_1EADEF250, &qword_19222C6C0);
    sub_19202CFFC(v24, v95, &qword_1EADF0030, &qword_192232208);
    swift_storeEnumTagMultiPayload();
    sub_192102224();
    sub_19206D79C();
    sub_1922266E0();
  }

  else
  {
    v34 = v90;
    (*(v18 + 32))(v90, v16, v32);
    v35 = swift_getKeyPath();
    sub_19202CFFC(v24, v10, &qword_1EADF0030, &qword_192232208);
    v36 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00B8, &unk_1922322C0) + 36)];
    *v36 = v35;
    v36[8] = 0;
    v37 = swift_getKeyPath();
    v38 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00B0, &qword_1922322B8) + 36)];
    *v38 = v37;
    v38[8] = 0;
    v39 = swift_getKeyPath();
    v40 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00A8, &qword_1922322B0) + 36)];
    v41 = v85;
    *v40 = v39;
    v40[1] = v41;
    v42 = swift_getKeyPath();
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00A0, &qword_1922322A8) + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00C8, &unk_1922322D8) + 28);
    v45 = v41;
    sub_192225E50();
    *v43 = v42;
    v46 = swift_getKeyPath();
    LOBYTE(v44) = sub_192226090();
    v47 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0098, &qword_1922322A0) + 36)];
    *v47 = v46;
    v47[8] = v44 & 1;
    v48 = swift_getKeyPath();
    LOBYTE(v44) = sub_192226000();
    v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0090, &qword_192232298) + 36)];
    *v49 = v48;
    v49[8] = v44 & 1;
    v50 = swift_getKeyPath();
    LOBYTE(v44) = sub_192226010();
    v51 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0088, &qword_192232290) + 36)];
    *v51 = v50;
    v51[8] = v44 & 1;
    v52 = swift_getKeyPath();
    LOBYTE(v44) = sub_192226060();
    v53 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0080, &qword_192232288) + 36)];
    *v53 = v52;
    v53[8] = v44 & 1;
    v54 = swift_getKeyPath();
    v55 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0078, &qword_192232280) + 36)];
    v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00D0, &qword_1922322E8) + 28);
    sub_192225FD0();
    *v55 = v54;
    v57 = swift_getKeyPath();
    v58 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0070, &qword_192232278) + 36)];
    v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00D8, &qword_1922322F0) + 28);
    sub_192225E80();
    *v58 = v57;
    v60 = swift_getKeyPath();
    sub_192225EA0();
    v61 = &v10[*(v86 + 36)];
    *v61 = v60;
    v61[1] = v62;
    v63 = v87;
    sub_192225F60();
    sub_19206AB18();
    v64 = v91;
    sub_192227200();
    (*(v88 + 8))(v63, v89);
    sub_192033970(v10, &qword_1EADF0020, &qword_1922321F8);
    v65 = swift_getKeyPath();
    v66 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0068, &qword_192232270) + 36));
    v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00E8, &qword_192232300) + 28);
    sub_192225EC0();
    *v66 = v65;
    v68 = swift_getKeyPath();
    v69 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0060, &qword_192232268) + 36));
    v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF00F0, &qword_192232308) + 28);
    sub_192225F40();
    *v69 = v68;
    v71 = swift_getKeyPath();
    sub_1920412C8();
    sub_1922261E0();
    LOBYTE(v44) = v101;
    v72 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0058, &qword_192232260) + 36);
    *v72 = v71;
    *(v72 + 8) = v44;
    v73 = swift_getKeyPath();
    sub_19202F774();
    sub_1922261E0();
    LOBYTE(v44) = v100;
    v74 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0050, &qword_192232258) + 36);
    *v74 = v73;
    *(v74 + 8) = v44;
    v75 = swift_getKeyPath();
    sub_19206D8D8();
    sub_1922261E0();
    LOBYTE(v44) = v99;
    v76 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0048, &qword_192232250) + 36);
    *v76 = v75;
    *(v76 + 8) = v44;
    v77 = swift_getKeyPath();
    sub_192040FB0();
    sub_1922261E0();
    v78 = v98;
    v79 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0040, &qword_192232248) + 36));
    *v79 = v77;
    v79[1] = v78;
    v80 = swift_getKeyPath();
    sub_19205337C();
    sub_1922261E0();
    v81 = v97;
    v82 = v64 + *(v93 + 36);
    *v82 = v80;
    *(v82 + 8) = v81;
    sub_19206B8D8(v64, v95);
    swift_storeEnumTagMultiPayload();
    sub_192102224();
    sub_19206D79C();
    sub_1922266E0();
    sub_19206B948(v64);
    (*(v18 + 8))(v34, v32);
  }

  return sub_192033970(v24, &qword_1EADF0030, &qword_192232208);
}

uint64_t sub_19206B6AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225EE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19206B6D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_192225EF0();
}

uint64_t sub_19206B708@<X0>(_BYTE *a1@<X8>)
{
  sub_19202F774();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19206B758(char *a1)
{
  v2 = *a1;
  sub_19202F774();
  return sub_1922261F0();
}

uint64_t sub_19206B7A4@<X0>(void *a1@<X8>)
{
  sub_192050FFC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19206B8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19206B948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0028, &qword_192232200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19206B9B0(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [a1 fontStyle];
  if (v3 <= 6)
  {
    switch(v3)
    {
      case 1:
        v4 = type metadata accessor for ContentSizeCategoryIncrementingFontDefinition();
        v5 = &unk_1ED749A38;
        v6 = type metadata accessor for ContentSizeCategoryIncrementingFontDefinition;
        goto LABEL_21;
      case 2:
        v4 = type metadata accessor for ContentSizeCategoryDecrementingFontDefinition();
        v5 = &unk_1ED749800;
        v6 = type metadata accessor for ContentSizeCategoryDecrementingFontDefinition;
        goto LABEL_21;
      case 6:
        if (v2 == 7)
        {
          v4 = type metadata accessor for CompactCircularFontDefinition();
          v5 = &unk_1EADF2568;
          v6 = type metadata accessor for CompactCircularFontDefinition;
        }

        else
        {
          v4 = type metadata accessor for CompactRectangularFontDefinition();
          v5 = &unk_1EADF2560;
          v6 = type metadata accessor for CompactRectangularFontDefinition;
        }

        goto LABEL_21;
    }

LABEL_14:
    v4 = type metadata accessor for TightLeadingFontDefinition();
    v5 = &unk_1ED749C28;
    v6 = type metadata accessor for TightLeadingFontDefinition;
    goto LABEL_21;
  }

  switch(v3)
  {
    case 7:
      if (v2 == 7)
      {
        v4 = type metadata accessor for RegularCircularFontDefinition();
        v5 = &unk_1ED749548;
        v6 = type metadata accessor for RegularCircularFontDefinition;
      }

      else
      {
        v4 = type metadata accessor for RegularRectangularFontDefinition();
        v5 = &unk_1ED749288;
        v6 = type metadata accessor for RegularRectangularFontDefinition;
      }

      break;
    case 8:
      if (v2 == 7)
      {
        v4 = type metadata accessor for LargeCircularFontDefinition();
        v5 = &unk_1ED7497E0;
        v6 = type metadata accessor for LargeCircularFontDefinition;
      }

      else
      {
        v4 = type metadata accessor for LargeRectangularFontDefinition();
        v5 = &unk_1ED749290;
        v6 = type metadata accessor for LargeRectangularFontDefinition;
      }

      break;
    case 11:
      v4 = type metadata accessor for iOSLikeFontDefinition();
      v5 = &unk_1EADF2558;
      v6 = type metadata accessor for iOSLikeFontDefinition;
      break;
    default:
      goto LABEL_14;
  }

LABEL_21:
  sub_19206C688(v5, v6);
  return v4;
}

uint64_t sub_19206BBD0(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_19205EC64(a1, v8);
  v11 = sub_192225020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v8, 1, v11) == 1)
  {
    a2();
    if (v13(v8, 1, v11) != 1)
    {
      sub_1921331E8(v8);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  return sub_19205EC64(v10, a1);
}

uint64_t sub_19206BD78(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_28:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        v10 = MEMORY[0x1E6969080];
        do
        {
          v22 = v9;
          v11 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x193B0B410](v11, v6);
              v8 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v12 = *(v6 + 8 * v11 + 32);

              v8 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            (*(**(v2 + 16) + 120))(&v23, *(v12 + 24), v10, v10);

            if (v24 >> 60 != 15)
            {
              break;
            }

            sub_192046ED4(v23, v24);
            ++v11;
            if (v8 == v7)
            {
              goto LABEL_31;
            }
          }

          v13 = v24;
          v14 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_192072CD4(0, *(v22 + 2) + 1, 1, v22);
          }

          v17 = *(v22 + 2);
          v16 = *(v22 + 3);
          if (v17 >= v16 >> 1)
          {
            v20 = sub_192072CD4((v16 > 1), v17 + 1, 1, v22);
            v18 = v13;
            v22 = v20;
          }

          else
          {
            v18 = v13;
          }

          *(v22 + 2) = v17 + 1;
          v19 = &v22[16 * v17];
          *(v19 + 4) = v14;
          *(v19 + 5) = v18;
          v9 = v22;
        }

        while (v8 != v7);
        goto LABEL_31;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_31:

    return v9;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF510, &qword_19222B018);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19206C134(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v19 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(&v20, *(v10 + 24), &type metadata for WidgetRenderScheme, &type metadata for WidgetRenderScheme);

            v11 = v20;
            if (v20 != 3)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          v12 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v14 = v19;
          }

          else
          {
            v14 = sub_192072DE0(0, *(v19 + 2) + 1, 1, v19);
          }

          v16 = *(v14 + 2);
          v15 = *(v14 + 3);
          if (v16 >= v15 >> 1)
          {
            v14 = sub_192072DE0((v15 > 1), v16 + 1, 1, v14);
          }

          *(v14 + 2) = v16 + 1;
          v19 = v14;
          v17 = &v14[16 * v16];
          v17[32] = v11;
          *(v17 + 5) = v12;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v19;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC20, &qword_19222B010);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

unint64_t sub_19206C4B8()
{
  result = qword_1EADECE40;
  if (!qword_1EADECE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0068, &qword_192232270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0020, &qword_1922321F8);
    sub_19206AB18();
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1EADED290, &qword_1EADF00E8, &qword_192232300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE40);
  }

  return result;
}

unint64_t sub_19206C5AC()
{
  result = qword_1EADECDB0;
  if (!qword_1EADECDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0070, &qword_192232278);
    sub_19206D208();
    sub_192031E74(&qword_1EADED2A8, &qword_1EADF00D8, &qword_1922322F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDB0);
  }

  return result;
}

uint64_t sub_19206C688(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19206C6DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_19206C728(char *a1)
{
  v2 = *a1;
  sub_19205337C();
  return sub_1922261F0();
}

uint64_t sub_19206C774@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1AD0;
  return result;
}

unint64_t sub_19206C7C0()
{
  result = qword_1EADECA40;
  if (!qword_1EADECA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0838, &qword_192235400);
    sub_19206C8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA40);
  }

  return result;
}

uint64_t sub_19206C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19206C7C0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19206C8A8()
{
  result = qword_1EADECA38;
  if (!qword_1EADECA38)
  {
    sub_19206C900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA38);
  }

  return result;
}

unint64_t sub_19206C900()
{
  result = qword_1ED74BB40;
  if (!qword_1ED74BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74BB40);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ControlTemplateButton.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19206C9FC()
{
  result = qword_1ED74A740;
  if (!qword_1ED74A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1398, &qword_19223ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A740);
  }

  return result;
}

unsigned __int8 *sub_19206CA60@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  sub_1922261E0();
  v3[0] = v3[1];
  result = sub_19206E384(v3, &v4);
  *a1 = v4;
  return result;
}

unint64_t sub_19206CAC8()
{
  result = qword_1EADECDA0;
  if (!qword_1EADECDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDA0);
  }

  return result;
}

BOOL sub_19206CB20(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_19206CB50(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1428, &qword_19223B440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1430, &qword_19223B448);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1438, &qword_19223B450);
  v13 = *(*(v12 - 8) + 16);
  if (a1)
  {
    v13(v11, v2, v12);
    sub_19202CFFC(v11, v7, &qword_1EADF1430, &qword_19223B448);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    sub_1922266E0();
    return sub_192033970(v11, &qword_1EADF1430, &qword_19223B448);
  }

  else
  {
    v13(v7, v2, v12);
    swift_storeEnumTagMultiPayload();
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    return sub_1922266E0();
  }
}

uint64_t sub_19206CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203F924(&qword_1ED74AB88, type metadata accessor for WidgetURLModifier);

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206CE70()
{
  result = qword_1EADECDE0;
  if (!qword_1EADECDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0040, &qword_192232248);
    sub_19206CF28();
    sub_192031E74(&qword_1EADECD08, &qword_1EADF0100, &qword_192232318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDE0);
  }

  return result;
}

unint64_t sub_19206CF28()
{
  result = qword_1EADECDF0;
  if (!qword_1EADECDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0048, &qword_192232250);
    sub_19206CFE0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDF0);
  }

  return result;
}

unint64_t sub_19206CFE0()
{
  result = qword_1EADECE08;
  if (!qword_1EADECE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0050, &qword_192232258);
    sub_19206D098();
    sub_192031E74(&qword_1ED7494B8, &qword_1EADF00F8, &qword_192232310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE08);
  }

  return result;
}

unint64_t sub_19206D098()
{
  result = qword_1EADECE20;
  if (!qword_1EADECE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0058, &qword_192232260);
    sub_19206D150();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE20);
  }

  return result;
}

unint64_t sub_19206D150()
{
  result = qword_1EADECE30;
  if (!qword_1EADECE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0060, &qword_192232268);
    sub_19206C4B8();
    sub_192031E74(&qword_1EADED2A0, &qword_1EADF00F0, &qword_192232308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE30);
  }

  return result;
}

unint64_t sub_19206D208()
{
  result = qword_1EADECDB8;
  if (!qword_1EADECDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0078, &qword_192232280);
    sub_19206D2C0();
    sub_192031E74(&qword_1EADED298, &qword_1EADF00D0, &qword_1922322E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDB8);
  }

  return result;
}

unint64_t sub_19206D2C0()
{
  result = qword_1EADECDC0;
  if (!qword_1EADECDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0080, &qword_192232288);
    sub_19206D378();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDC0);
  }

  return result;
}

unint64_t sub_19206D378()
{
  result = qword_1EADECDC8;
  if (!qword_1EADECDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0088, &qword_192232290);
    sub_19206D430();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDC8);
  }

  return result;
}

unint64_t sub_19206D430()
{
  result = qword_1EADECDD8;
  if (!qword_1EADECDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0090, &qword_192232298);
    sub_19206D4E8();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDD8);
  }

  return result;
}

unint64_t sub_19206D4E8()
{
  result = qword_1EADECDE8;
  if (!qword_1EADECDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0098, &qword_1922322A0);
    sub_19206D5A0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDE8);
  }

  return result;
}

unint64_t sub_19206D5A0()
{
  result = qword_1EADECE00;
  if (!qword_1EADECE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00A0, &qword_1922322A8);
    sub_19206D658();
    sub_192031E74(&qword_1EADED2B0, &qword_1EADF00C8, &unk_1922322D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE00);
  }

  return result;
}

unint64_t sub_19206D658()
{
  result = qword_1EADECE18;
  if (!qword_1EADECE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00A8, &qword_1922322B0);
    sub_1921022DC();
    sub_192031E74(&qword_1ED74A1B8, &qword_1EADF00C0, &qword_1922322D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE18);
  }

  return result;
}

unint64_t sub_19206D710()
{
  result = qword_1EADED310;
  if (!qword_1EADED310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00B8, &unk_1922322C0);
    sub_19206D79C();
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED310);
  }

  return result;
}

unint64_t sub_19206D79C()
{
  result = qword_1EADED328;
  if (!qword_1EADED328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0030, &qword_192232208);
    sub_192031E74(&qword_1EADED2C8, &qword_1EADF0038, &qword_192232240);
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED328);
  }

  return result;
}

unint64_t sub_19206D880()
{
  result = qword_1ED74A508;
  if (!qword_1ED74A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A508);
  }

  return result;
}

unint64_t sub_19206D8D8()
{
  result = qword_1EADED250;
  if (!qword_1EADED250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED250);
  }

  return result;
}

unint64_t sub_19206D94C()
{
  result = qword_1ED74A648;
  if (!qword_1ED74A648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19E0, &qword_19223E848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19D8, &qword_19223E840);
    sub_19206DA18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A648);
  }

  return result;
}

unint64_t sub_19206DA18()
{
  result = qword_1ED74A560;
  if (!qword_1ED74A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF19D8, &qword_19223E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A560);
  }

  return result;
}

unint64_t sub_19206DA7C()
{
  result = qword_1ED74A108;
  if (!qword_1ED74A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A108);
  }

  return result;
}

uint64_t sub_19206DAE0(uint64_t *a1)
{
  v2 = *a1;
  sub_19206DA7C();

  return sub_1922261F0();
}

uint64_t sub_19206DB40@<X0>(void *a1@<X8>)
{
  sub_19206DB90();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19206DB90()
{
  result = qword_1EADECB50;
  if (!qword_1EADECB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB50);
  }

  return result;
}

uint64_t sub_19206DBF8(uint64_t *a1)
{
  v2 = *a1;
  sub_19206DB90();
  return sub_1922261F0();
}

uint64_t keypath_get_58Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a2 = v4;
  return result;
}

uint64_t keypath_set_59Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_1922261F0();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_19206DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C8, &qword_19223E830);
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v33 - v4;
  v6 = sub_192227220();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D0, &qword_19223E838);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = sub_1922261D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (*v2 != 2)
    {
LABEL_3:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D8, &qword_19223E840);
      (*(*(v20 - 8) + 16))(v5, v36, v20);
      swift_storeEnumTagMultiPayload();
      v21 = sub_19206DA18();
      v39 = v20;
      v40 = v21;
      swift_getOpaqueTypeConformance2();
      return sub_1922266E0();
    }
  }

  else
  {
    v23 = *v2;

    sub_192227FA0();
    v24 = sub_192226D00();
    v33 = v7;
    v25 = v5;
    v26 = v13;
    v27 = v10;
    v28 = v6;
    v29 = v24;
    sub_1922257A0();

    v6 = v28;
    v10 = v27;
    v13 = v26;
    v5 = v25;
    v7 = v33;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19216E594(v19, 0);
    (*(v15 + 8))(v18, v14);
    if (v39 != 2)
    {
      goto LABEL_3;
    }
  }

  sub_192227250();
  (*(v7 + 104))(v34, *MEMORY[0x1E69814D8], v6);
  sub_1922272F0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19D8, &qword_19223E840);
  v31 = sub_19206DA18();
  sub_192227100();

  v32 = v35;
  (*(v35 + 16))(v5, v13, v10);
  swift_storeEnumTagMultiPayload();
  v39 = v30;
  v40 = v31;
  swift_getOpaqueTypeConformance2();
  sub_1922266E0();
  return (*(v32 + 8))(v13, v10);
}

uint64_t getEnumTagSinglePayload for ControlTemplateButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_19206E290()
{
  result = qword_1ED74A748;
  if (!qword_1ED74A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF13A0, &unk_19223ABB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1398, &qword_19223ABB0);
    sub_19206C9FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A748);
  }

  return result;
}

unsigned __int8 *sub_19206E384@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0xD)
  {
    result = sub_192228990();
    __break(1u);
  }

  else
  {
    *a2 = byte_19223F13C[v2];
  }

  return result;
}

uint64_t sub_19206E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1380, &qword_19223AB98);
  v30 = *(v34 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1388, &qword_19223ABA0);
  v6 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1390, &qword_19223ABA8);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = sub_1922261D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  if (*(v2 + 8) == 1)
  {
    LOBYTE(v35) = *v2;
  }

  else
  {
    v19 = *v2;

    sub_192227FA0();
    v20 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v18, 0);
    (*(v14 + 8))(v17, v13);
    LOBYTE(v18) = v35;
  }

  v21 = qword_19223ABC8[v18];
  IsAccessory = CHSWidgetFamilyIsAccessory();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1398, &qword_19223ABB0);
  v24 = sub_19206C9FC();
  if (IsAccessory)
  {
    sub_1922270F0();
    v25 = v29;
    (*(v29 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    v35 = v23;
    v36 = v24;
    swift_getOpaqueTypeConformance2();
    v35 = v23;
    v36 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v25 + 8))(v12, v9);
  }

  else
  {
    sub_192227050();
    v27 = v30;
    v28 = v34;
    (*(v30 + 16))(v8, v5, v34);
    swift_storeEnumTagMultiPayload();
    v35 = v23;
    v36 = v24;
    swift_getOpaqueTypeConformance2();
    v35 = v23;
    v36 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v27 + 8))(v5, v28);
  }
}

uint64_t sub_19206E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206E8C4();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206E8C4()
{
  result = qword_1ED74A1A0;
  if (!qword_1ED74A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1A0);
  }

  return result;
}

unint64_t sub_19206E938()
{
  result = qword_1EADECD68;
  if (!qword_1EADECD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1468, &qword_19223B6F0);
    sub_19206E9F0();
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD68);
  }

  return result;
}

unint64_t sub_19206E9F0()
{
  result = qword_1EADECE58;
  if (!qword_1EADECE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1430, &qword_19223B448);
    sub_192031E74(&qword_1EADECD28, &qword_1EADF1438, &qword_19223B450);
    sub_19206CAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE58);
  }

  return result;
}

uint64_t sub_19206EAA8()
{
  v1 = *(v0 + 9);
  v4 = *v0;
  v5 = *(v0 + 8);
  v2 = sub_19217AB64();
  LOBYTE(v1) = sub_19206CB1C(v1, v2);

  return sub_19206CB50((v1 & 1) == 0);
}

unint64_t sub_19206EB4C()
{
  result = qword_1EADED320;
  if (!qword_1EADED320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0850, &qword_192235418);
    sub_192031E74(&qword_1EADEDD20, &qword_1EADF0858, &qword_192235420);
    sub_192031E74(qword_1ED749BA0, &qword_1EADF0860, &qword_1922355B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED320);
  }

  return result;
}

uint64_t sub_19206EC30(uint64_t a1)
{
  v2 = sub_19206EC6C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_19206EC6C()
{
  result = qword_1ED74A180;
  if (!qword_1ED74A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A180);
  }

  return result;
}

unint64_t sub_19206ECC4()
{
  result = qword_1ED74A188;
  if (!qword_1ED74A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A188);
  }

  return result;
}

uint64_t sub_19206ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0850, &qword_192235418);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0858, &qword_192235420);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t WidgetAccentedDesaturatedViewModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF12F0, &qword_192239EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206F028();
  sub_192228B70();
  if (!v2)
  {
    v11 = sub_192228770();
    (*(v6 + 8))(v9, v5);
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    *a2 = KeyPath;
    *(a2 + 8) = 0;
    *(a2 + 16) = v13;
    *(a2 + 24) = 0;
    *(a2 + 25) = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19206EF7C()
{
  result = qword_1EADEE480;
  if (!qword_1EADEE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE480);
  }

  return result;
}

unint64_t sub_19206EFD4()
{
  result = qword_1EADEE488;
  if (!qword_1EADEE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE488);
  }

  return result;
}

unint64_t sub_19206F028()
{
  result = qword_1EADEE490;
  if (!qword_1EADEE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE490);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_19206F0AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_19206F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19206F194();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_19206F194()
{
  result = qword_1EADEE700[0];
  if (!qword_1EADEE700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEE700);
  }

  return result;
}

unint64_t sub_19206F208()
{
  result = qword_1EADECD70;
  if (!qword_1EADECD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1318, &qword_19223A128);
    sub_19206F294();
    sub_19206F320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD70);
  }

  return result;
}

unint64_t sub_19206F294()
{
  result = qword_1EADECE60;
  if (!qword_1EADECE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1308, &qword_192239F48);
    sub_19206F320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE60);
  }

  return result;
}

unint64_t sub_19206F320()
{
  result = qword_1EADECD30;
  if (!qword_1EADECD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1310, &qword_192239F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD30);
  }

  return result;
}

uint64_t WidgetAccentedDesaturatedViewModifier.body(content:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1300, &qword_192239F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1308, &qword_192239F48);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1922261D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = v1[2];
  v20 = *(v1 + 24);
  v21 = *(v1 + 25);
  if (v20 == 1)
  {
    v48 = v1[2];
    if (v19 != 1)
    {
LABEL_3:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1310, &qword_192239F50);
      (*(*(v22 - 8) + 16))(v6, a1, v22);
      swift_storeEnumTagMultiPayload();
      sub_19206F294();
      sub_19206F320();
      return sub_1922266E0();
    }
  }

  else
  {
    v24 = v1[2];
    v39 = *(v1 + 24);
    v38 = v17;
    v36 = v21;
    v37 = v18;
    sub_19216E0E0(v24, 0);
    sub_192227FA0();
    v25 = sub_192226D00();
    v40 = a1;
    v26 = v25;
    sub_1922257A0();

    a1 = v40;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v19, 0);
    (*(v13 + 8))(v16, v12);
    LOBYTE(v21) = v36;
    LOBYTE(v18) = v37;
    v17 = v38;
    LOBYTE(v20) = v39;
    if (v48 != 1)
    {
      goto LABEL_3;
    }
  }

  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v27 = sub_19216DF74();
  if (v27)
  {
    v28 = -0.21265;
  }

  else
  {
    v28 = 0.21265;
  }

  if (v27)
  {
    v29 = -0.71533;
  }

  else
  {
    v29 = 0.71533;
  }

  if (v27)
  {
    v30 = -0.072205;
  }

  else
  {
    v30 = 0.072205;
  }

  if (v27)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1310, &qword_192239F50);
  v33 = v41;
  (*(*(v32 - 8) + 16))(v41, a1, v32);
  v34 = v33 + *(v7 + 36);
  *(v34 + 44) = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *v34 = 0u;
  *(v34 + 60) = v28;
  *(v34 + 64) = v29;
  *(v34 + 68) = v30;
  *(v34 + 72) = v31;
  *(v34 + 76) = 0;
  v35 = v42;
  sub_19216E344(v33, v42);
  sub_19216E3B4(v35, v6);
  swift_storeEnumTagMultiPayload();
  sub_19206F294();
  sub_19206F320();
  sub_1922266E0();
  return sub_19216E424(v35);
}

uint64_t sub_19206F820(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for WidgetBackgroundStyle, &type metadata for WidgetBackgroundStyle);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 3)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192072EE4(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192072EE4((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC18, &qword_19222D9E0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19206FBC4(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(BOOL, unint64_t, uint64_t, uint64_t))
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v10 = sub_192046E20(a1, off_1ED74BF08);
  v11 = swift_endAccess();
  if (v10)
  {
    (*(**(v10 + 16) + 80))(v11);
    a2 = sub_1920702EC(v12, v13);

    if (!a2)
    {

      return 0;
    }

    a1 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v14 = sub_192228340();
      if (v14)
      {
LABEL_6:
        v23 = a5;
        a5 = 0;
        a3 = 0;
        v24 = MEMORY[0x1E69E7CC0];
        do
        {
          v15 = a5;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x193B0B410](v15, a2);
              a5 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v16 = *(a2 + 8 * v15 + 32);

              a5 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v10 + 16) + 120))(v25, *(v16 + 24), a4, a4);

            v17 = v25[0];
            if (LOBYTE(v25[0]) != 2)
            {
              break;
            }

            ++v15;
            if (a5 == v14)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v19 = v24;
          }

          else
          {
            v19 = (v23)(0, *(v24 + 16) + 1, 1);
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            v19 = v23(v20 > 1, v21 + 1, 1, v19);
          }

          *(v19 + 16) = v21 + 1;
          v24 = v19;
          *(v19 + v21 + 32) = v17 & 1;
        }

        while (a5 != v14);
        goto LABEL_30;
      }
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_6;
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v24;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19206FF74(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for LevelOfDetail, &type metadata for LevelOfDetail);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 2)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192073DA4(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192073DA4((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11 & 1;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC08, &qword_19222D9A0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920702EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_192224FC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16) && (v12 = sub_19204437C(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v16 = v14;
    sub_192227F60();
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0]);
    sub_192228270();
    while (v24)
    {
      sub_19203BEDC(&v23, &v22);
      v17 = swift_dynamicCast();
      MEMORY[0x193B0AB00](v17);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v15 = v25;
      sub_192228270();
    }

    (*(v6 + 8))(v9, v5);
    v20 = sub_192070550(v15);

    return v20;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_192070550(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_192228340();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1920C3AF0(v3, 0);
  sub_192068A58((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1920705E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a1;
  v36 = a3;
  v4 = *v3;
  v39 = a2;
  v5 = sub_192228240();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - v7;
  v8 = *(v4 + 152);
  v9 = *(v4 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v34 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_192228240();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  v19 = *(v12 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v34 - v22;
  (*(**(v43 + 16) + 88))(v42, v21);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v25(v18, 0, 1, v12);
    (*(v19 + 32))(v23, v18, v12);
    v26 = v41;
    (*(v8 + 56))(v23, v9, v8);
    if (!v26)
    {
      v28 = AssociatedTypeWitness;
      v27 = v38;
      v29 = v39;
      if (swift_dynamicCast())
      {
        (*(v19 + 8))(v23, v12);
        v30 = *(v29 - 8);
        (*(v30 + 56))(v27, 0, 1, v29);
        return (*(v30 + 32))(v36, v27, v29);
      }

      (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
      (*(v34 + 8))(v27, v35);
      sub_1922284A0();
      swift_allocError();
      sub_1920BD250(v28, v33);
      swift_willThrow();
    }

    return (*(v19 + 8))(v23, v12);
  }

  else
  {
    v25(v18, 1, 1, v12);
    (*(v14 + 8))(v18, v13);
    sub_1922284A0();
    swift_allocError();
    sub_1920BD250(v12, v32);
    return swift_willThrow();
  }
}

uint64_t sub_192070B0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 128);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

unint64_t sub_192070BA4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_192228340();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193B0B410](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
    v8 = sub_1922281D0();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_192070CB4@<X0>(void *a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(v3 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  *a1 = v4;

  return v4;
}

void *sub_192070D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v31 - v4;
  v5 = sub_1922259F0();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v42 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF560, &qword_19222B098);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v39 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v37 = (v33 + 56);
    v38 = v15 & 0xC000000000000001;
    v35 = (v33 + 32);
    v36 = (v33 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = v17;
    while (v38)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v39 + 16) + 120))(*(v19 + 24), v5, v5);
      v22 = v41;
      (*v37)(v41, 0, 1, v5);

      if ((*v36)(v22, 1, v5) == 1)
      {
        sub_192033970(v22, &unk_1EADEECA0, &qword_19222B090);
      }

      else
      {
        v23 = *v35;
        v24 = v22;
        v25 = v32;
        (*v35)(v32, v24, v5);
        v23(v9, v25, v5);
        v26 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_19207144C(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        v40 = v26;
        if (v28 >= v27 >> 1)
        {
          v40 = sub_19207144C(v27 > 1, v28 + 1, 1, v40);
        }

        v29 = v40;
        v40[2] = v28 + 1;
        v9 = v31;
        v23(&v29[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v31, v5);
      }

      v15 = v21;
      ++v18;
      if (v20 == v34)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v40;
}

size_t sub_192071270(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_192071474(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x193B0B410](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_192228340();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1920715CC(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;
  sub_1922282D0();
  return sub_192227910() & 1;
}

void *sub_192071630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC90, &qword_19222B080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v31 - v4;
  v5 = sub_192226580();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v42 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF570, &qword_19222B088);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v39 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v37 = (v33 + 56);
    v38 = v15 & 0xC000000000000001;
    v35 = (v33 + 32);
    v36 = (v33 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = v17;
    while (v38)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v39 + 16) + 120))(*(v19 + 24), v5, v5);
      v22 = v41;
      (*v37)(v41, 0, 1, v5);

      if ((*v36)(v22, 1, v5) == 1)
      {
        sub_192033970(v22, &unk_1EADEEC90, &qword_19222B080);
      }

      else
      {
        v23 = *v35;
        v24 = v22;
        v25 = v32;
        (*v35)(v32, v24, v5);
        v23(v9, v25, v5);
        v26 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_192071B84(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        v40 = v26;
        if (v28 >= v27 >> 1)
        {
          v40 = sub_192071B84(v27 > 1, v28 + 1, 1, v40);
        }

        v29 = v40;
        v40[2] = v28 + 1;
        v9 = v31;
        v23(&v29[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v31, v5);
      }

      v15 = v21;
      ++v18;
      if (v20 == v34)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v40;
}

char *sub_192071BEC(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_192071C64(result, v5, 0);
  }

  return result;
}

char *sub_192071C64(char *a1, int64_t a2, char a3)
{
  result = sub_19205D64C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_192071C84()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_192071CD0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_192071CD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_192071DDC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_192071CD0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_192071E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v31 - v4;
  v5 = sub_1922265A0();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v42 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF540, &qword_19222B048);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v39 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v37 = (v33 + 56);
    v38 = v15 & 0xC000000000000001;
    v35 = (v33 + 32);
    v36 = (v33 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = v17;
    while (v38)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v39 + 16) + 120))(*(v19 + 24), v5, v5);
      v22 = v41;
      (*v37)(v41, 0, 1, v5);

      if ((*v36)(v22, 1, v5) == 1)
      {
        sub_192033970(v22, &unk_1EADEEC50, &qword_19222B040);
      }

      else
      {
        v23 = *v35;
        v24 = v22;
        v25 = v32;
        (*v35)(v32, v24, v5);
        v23(v9, v25, v5);
        v26 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_192072424(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        v40 = v26;
        if (v28 >= v27 >> 1)
        {
          v40 = sub_192072424(v27 > 1, v28 + 1, 1, v40);
        }

        v29 = v40;
        v40[2] = v28 + 1;
        v9 = v31;
        v23(&v29[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v31, v5);
      }

      v15 = v21;
      ++v18;
      if (v20 == v34)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v40;
}

uint64_t storeEnumTagSinglePayload for ContentSizeCategoryKey.CodableContentSizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_19207244C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC40, &qword_19222B030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v31 - v4;
  v5 = sub_192225D50();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v42 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF530, &qword_19222B038);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v39 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v37 = (v33 + 56);
    v38 = v15 & 0xC000000000000001;
    v35 = (v33 + 32);
    v36 = (v33 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = v17;
    while (v38)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v39 + 16) + 120))(*(v19 + 24), v5, v5);
      v22 = v41;
      (*v37)(v41, 0, 1, v5);

      if ((*v36)(v22, 1, v5) == 1)
      {
        sub_192033970(v22, &unk_1EADEEC40, &qword_19222B030);
      }

      else
      {
        v23 = *v35;
        v24 = v22;
        v25 = v32;
        (*v35)(v32, v24, v5);
        v23(v9, v25, v5);
        v26 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1920729A0(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        v40 = v26;
        if (v28 >= v27 >> 1)
        {
          v40 = sub_1920729A0(v27 > 1, v28 + 1, 1, v40);
        }

        v29 = v40;
        v40[2] = v28 + 1;
        v9 = v31;
        v23(&v29[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v31, v5);
      }

      v15 = v21;
      ++v18;
      if (v20 == v34)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v40;
}

char *sub_1920729C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_192072AC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x193B0B410](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_192228340();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_192072BF0(uint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(v3 + 16);
  v5 = *a1;
  v6 = *v4;
  sub_19202A7A8(0, a2, a3);
  return sub_1922281D0() & 1;
}

uint64_t sub_192072C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

char *sub_192072CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF2C0, &qword_19222CB50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_192072DE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2D8, &qword_19222CBB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_192072EF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8)
{
  v49 = a3;
  v48 = &v49;
  result = sub_192071474(sub_192071BAC, v47, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v15 = 0;
  v16 = *(a4 + 16);
  v17 = (a4 + 32);
  while (v16 != v15)
  {
    v18 = v17[v15++];
    if (v18 == (a5 & 1))
    {
      return result;
    }
  }

  if (v16)
  {
    v45 = a2;
    v46 = a5;
    v52 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v16, 0);
    v19 = v52;
    do
    {
      v20 = *v17;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v20;
      result = sub_1922285A0();
      v21 = v49;
      v22 = v50;
      v52 = v19;
      v24 = v19[2];
      v23 = v19[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        result = sub_192071C64((v23 > 1), v24 + 1, 1);
        v19 = v52;
      }

      v19[2] = v25;
      v26 = &v19[2 * v24];
      v26[4] = v21;
      v26[5] = v22;
      ++v17;
      --v16;
    }

    while (v16);
    a5 = v46;
    a2 = v45;
    if (v25 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v25)
    {
      __break(1u);
      return result;
    }

    v32 = v19[4];
    v31 = v19[5];

    goto LABEL_17;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v25 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v49 = 91;
  v50 = 0xE100000000000000;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  v27 = a7;
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v28 = sub_1922278A0();
  v30 = v29;

  MEMORY[0x193B0A990](v28, v30);
  a7 = v27;

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v32 = v49;
  v31 = v50;
LABEL_17:
  if (a7)
  {
    v33 = 0x64657269736564;
  }

  else
  {
    v33 = 7824750;
  }

  if (a7)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v34 = 0xE300000000000000;
  }

  if (a7)
  {
    v35 = 0x6C62616C69617661;
  }

  else
  {
    v35 = 6581359;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  if (a7)
  {
    v36 = 0xE900000000000065;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  sub_192228400();

  v49 = a1;
  v50 = a2;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v35, v36);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v32, v31);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v33, v34);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v52) = a5 & 1;
  v37 = sub_192227990();
  MEMORY[0x193B0A990](v37);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v38 = v49;
  v39 = v50;
  swift_beginAccess();
  v40 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_192071CD0(0, *(v40 + 2) + 1, 1, v40);
    *(a8 + 16) = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = sub_192071CD0((v42 > 1), v43 + 1, 1, v40);
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[16 * v43];
  *(v44 + 4) = v38;
  *(v44 + 5) = v39;
  *(a8 + 16) = v40;
  return swift_endAccess();
}

uint64_t sub_192073380(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8)
{
  v50 = a3;
  v49 = &v50;
  result = sub_192071474(sub_192071BAC, v48, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v15 = 0;
  v16 = a5 & 1;
  v17 = *(a4 + 16);
  v18 = (a4 + 32);
  while (v17 != v15)
  {
    v19 = v18[v15++];
    if (v19 == (a5 & 1))
    {
      return result;
    }
  }

  v47 = a1;
  if (v17)
  {
    v46 = a2;
    v53 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v17, 0);
    v20 = v53;
    do
    {
      v21 = *v18;
      v50 = 0;
      v51 = 0xE000000000000000;
      v52 = v21;
      result = sub_1922285A0();
      v22 = v50;
      v23 = v51;
      v53 = v20;
      v25 = v20[2];
      v24 = v20[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        result = sub_192071C64((v24 > 1), v25 + 1, 1);
        v20 = v53;
      }

      v20[2] = v26;
      v27 = &v20[2 * v25];
      v27[4] = v22;
      v27[5] = v23;
      ++v18;
      --v17;
    }

    while (v17);
    v16 = a5 & 1;
    a2 = v46;
    if (v26 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v26)
    {
      __break(1u);
      return result;
    }

    v28 = a2;
    v33 = v20[4];
    v32 = v20[5];

    goto LABEL_17;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v26 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v26 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v28 = a2;
  v50 = 91;
  v51 = 0xE100000000000000;
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v29 = sub_1922278A0();
  v31 = v30;

  MEMORY[0x193B0A990](v29, v31);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v33 = v50;
  v32 = v51;
LABEL_17:
  if (a7)
  {
    v34 = 0x64657269736564;
  }

  else
  {
    v34 = 7824750;
  }

  if (a7)
  {
    v35 = 0xE700000000000000;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  if (a7)
  {
    v36 = 0x6C62616C69617661;
  }

  else
  {
    v36 = 6581359;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  if (a7)
  {
    v37 = 0xE900000000000065;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  sub_192228400();

  v50 = v47;
  v51 = v28;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v36, v37);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v33, v32);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v53) = v16;
  v38 = sub_192227990();
  MEMORY[0x193B0A990](v38);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v39 = v50;
  v40 = v51;
  swift_beginAccess();
  v41 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_192071CD0(0, *(v41 + 2) + 1, 1, v41);
    *(a8 + 16) = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_192071CD0((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[16 * v44];
  *(v45 + 4) = v39;
  *(v45 + 5) = v40;
  *(a8 + 16) = v41;
  return swift_endAccess();
}

uint64_t sub_1920737F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, int a7, uint64_t a8)
{
  v59 = a3;
  v58 = &v59;
  result = sub_192071474(sub_192071BAC, v57, a6);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  v59 = a5;
  MEMORY[0x1EEE9AC00](result);
  v51[2] = &v59;
  result = sub_192072AC8(sub_192073D64, v51, a4);
  if (result)
  {
    return result;
  }

  v56 = a1;
  if (a4 >> 62)
  {
    result = sub_192228340();
    v15 = result;
  }

  else
  {
    v15 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v62 = MEMORY[0x1E69E7CC0];
    result = sub_192071C64(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    v52 = a7;
    v53 = a2;
    v54 = a5;
    v55 = a8;
    v16 = v62;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = MEMORY[0x193B0B410](v17, a4);
        v59 = 0;
        v60 = 0xE000000000000000;
        v61 = v18;
        sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
        sub_1922285A0();
        result = swift_unknownObjectRelease();
        v19 = v59;
        v20 = v60;
        v62 = v16;
        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_192071C64((v21 > 1), v22 + 1, 1);
          v16 = v62;
        }

        ++v17;
        v16[2] = v22 + 1;
        v23 = &v16[2 * v22];
        v23[4] = v19;
        v23[5] = v20;
      }

      while (v15 != v17);
    }

    else
    {
      v24 = (a4 + 32);
      sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
      do
      {
        v25 = *v24;
        v59 = 0;
        v60 = 0xE000000000000000;
        v61 = v25;
        result = sub_1922285A0();
        v27 = v59;
        v26 = v60;
        v62 = v16;
        v29 = v16[2];
        v28 = v16[3];
        if (v29 >= v28 >> 1)
        {
          result = sub_192071C64((v28 > 1), v29 + 1, 1);
          v16 = v62;
        }

        v16[2] = v29 + 1;
        v30 = &v16[2 * v29];
        v30[4] = v27;
        v30[5] = v26;
        ++v24;
        --v15;
      }

      while (v15);
    }

    a5 = v54;
    a8 = v55;
    a2 = v53;
    LOBYTE(a7) = v52;
  }

  v31 = v16[2];
  if (v31 <= 1)
  {
    if (v31)
    {
      v36 = v16[4];
      v35 = v16[5];

      goto LABEL_23;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  v59 = 91;
  v60 = 0xE100000000000000;
  v62 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v32 = sub_1922278A0();
  v34 = v33;

  MEMORY[0x193B0A990](v32, v34);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v36 = v59;
  v35 = v60;
LABEL_23:
  v37 = (a7 & 1) == 0;
  if (a7)
  {
    v38 = 0x64657269736564;
  }

  else
  {
    v38 = 7824750;
  }

  if (v37)
  {
    v39 = 0xE300000000000000;
  }

  else
  {
    v39 = 0xE700000000000000;
  }

  if (v37)
  {
    v40 = 6581359;
  }

  else
  {
    v40 = 0x6C62616C69617661;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  if (v37)
  {
    v41 = 0xE300000000000000;
  }

  else
  {
    v41 = 0xE900000000000065;
  }

  sub_192228400();

  v59 = v56;
  v60 = a2;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v40, v41);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v36, v35);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v38, v39);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v62 = a5;
  sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
  v42 = a5;
  v43 = sub_192227990();
  MEMORY[0x193B0A990](v43);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v44 = v59;
  v45 = v60;
  swift_beginAccess();
  v46 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_192071CD0(0, *(v46 + 2) + 1, 1, v46);
    *(a8 + 16) = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_192071CD0((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[16 * v49];
  *(v50 + 4) = v44;
  *(v50 + 5) = v45;
  *(a8 + 16) = v46;
  return swift_endAccess();
}

unint64_t sub_192073DBC()
{
  result = qword_1EADED278;
  if (!qword_1EADED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED278);
  }

  return result;
}

unint64_t sub_192073E24()
{
  result = qword_1ED74A070;
  if (!qword_1ED74A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A070);
  }

  return result;
}

unint64_t sub_192073E7C()
{
  result = qword_1ED74A078;
  if (!qword_1ED74A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A078);
  }

  return result;
}

uint64_t sub_192073ED0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  return sub_1922281D0() & 1;
}

uint64_t WidgetEnvironment.Storage.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19202CFFC(a1, v10, &unk_1EADEF330, &unk_19222CD40);
  if (!v11)
  {
    sub_192033970(v10, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v6 = *&v9[v5];

  v7 = sub_1920740C8(v4, v6);

  return v7 & 1;
}

uint64_t sub_1920740C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v24 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(*(result + 56) + 8 * v12);

    v18 = v17;
    v19 = sub_19204437C(v14, v16);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    sub_19202A7A8(0, &qword_1ED749A88, 0x1E695DFB8);
    v22 = *(*(a2 + 56) + 8 * v19);
    v23 = sub_1922281D0();

    result = v24;
    v7 = v25;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_192074274(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_192074324(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(v2, v3) & 1;
  }
}

uint64_t sub_19207437C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_192074428(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1922289A0() & 1;
  }
}

unint64_t sub_1920744D4()
{
  result = qword_1ED74AA60;
  if (!qword_1ED74AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA60);
  }

  return result;
}

unint64_t sub_19207452C()
{
  result = qword_1ED74AA68;
  if (!qword_1ED74AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA68);
  }

  return result;
}

uint64_t sub_192074584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v59 = a2;
  v60 = a4;
  v61 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v48 - v8;
  v9 = sub_192226F10();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1922265A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v50 = a3;
  sub_192226E80();
  v58 = v21;
  sub_192074964(v19, v21);
  v22 = *(v13 + 8);
  v54 = v12;
  v22(v19, v12);
  v55 = v22;
  v56 = v13 + 8;
  v48 = *(v4 + 160);
  v23 = v61;
  v48(v61, v21);
  sub_192226E80();
  v24 = v49;
  sub_192074964(v19, v49);
  v22(v19, v12);
  v25 = v51;
  (*(v52 + 16))(v51, v23, v53);
  v26 = sub_19207583C(v25);
  v27 = (*(v4 + 152))(v26, v24);
  v29 = v28;
  v31 = v30;
  v32 = v24;
  v33 = (v48)(v23, v24);
  v35 = v34;
  v36 = v31 & 0x100;
  if ((v31 & 0x100) != 0)
  {
    v29 = 0;
  }

  v37 = v36 >> 8;
  v38 = BYTE1(v36) | v31;
  if (v36)
  {
    v27 = 0;
  }

  v39 = v57;
  sub_192226EA0();
  v40 = sub_192075A34(v27, v37, v29, v38 & 1, v59, v33, v35 & 1, v39);
  sub_192033970(v39, &qword_1EADEF290, &qword_19222CA80);
  v41 = sub_192076CDC();
  v42 = sub_192076F7C();
  v43 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v44 = sub_19207723C();
  v46 = v54;
  v45 = v55;
  v55(v32, v54);
  sub_19207723C();

  sub_192226D70();
  return v45(v58, v46);
}

uint64_t sub_192074964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1922265A0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v22 = (*(v2 + 144))(a1);
  (*(v2 + 128))(v22);
  v23 = v13[6];
  if (v23(v11, 1, v12) == 1)
  {
    v24 = sub_192033970(v11, &unk_1EADEEC50, &qword_19222B040);
  }

  else
  {
    v34 = a2;
    v25 = v11;
    v26 = v13[4];
    v26(v19, v25, v12);
    v27 = sub_192074FF4(v21, v19);
    v28 = v13[1];
    if (v27)
    {
      v28(v21, v12);
      return (v26)(v34, v19, v12);
    }

    v24 = (v28)(v19, v12);
    a2 = v34;
  }

  (*(v2 + 136))(v24);
  if (v23(v9, 1, v12) == 1)
  {
    sub_192033970(v9, &unk_1EADEEC50, &qword_19222B040);
    return (v13[4])(a2, v21, v12);
  }

  else
  {
    v30 = v13[4];
    v31 = v35;
    v30(v35, v9, v12);
    v32 = sub_192075418(v21, v31);
    v33 = v13[1];
    if (v32)
    {
      v33(v21, v12);
      return (v30)(a2, v31, v12);
    }

    else
    {
      v33(v31, v12);
      return (v30)(a2, v21, v12);
    }
  }
}

uint64_t sub_192074CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226590();
  result = sub_192074DF4(a1, v4);
  if ((v6 & 1) != 0 || ((v7 = *(v4 + 16), v8 = result + 1, result < v7) ? (v9 = v8 == v7) : (v9 = 1), v9))
  {

    v10 = sub_1922265A0();
    v11 = *(*(v10 - 8) + 16);

    return v11(a2, a1, v10);
  }

  else if (v8 >= v7)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1922265A0();
    (*(*(v12 - 8) + 16))(a2, v4 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v8, v12);
  }

  return result;
}

uint64_t sub_192074DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1922265A0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1920C80A8(&qword_1ED749B80, 255, MEMORY[0x1E697F6A0]);
  v7 = 0;
  while ((sub_192227910() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_192074F18@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1922265A0();
  v7 = *(v4 - 8);
  (*(v7 + 104))(a2, v3, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

BOOL sub_192074FF4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

BOOL sub_192075418(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_19207583C(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E6980EE8])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x1E6980F00])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E6980F08])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E6980F10])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x1E6980F38])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x1E6980EF0])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x1E6980EF8])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x1E6980F18])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x1E6980F30])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x1E6980F20])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x1E6980F28])
  {
    return 10;
  }

  (*(v3 + 8))(a1, v2);
  return 12;
}

uint64_t sub_192075A34(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v67 = a8;
  v65 = a7;
  v66 = a2;
  v59 = a3;
  v60 = a6;
  v62 = a4;
  v61 = a1;
  v11 = sub_192225D00();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v58 - v19;
  v21 = sub_192226DA0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(v8 + 176))(v24);
  sub_19202CFFC(a5, v20, &qword_1EADEFEC8, &qword_192242DC0);
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    (*(v22 + 104))(v26, *MEMORY[0x1E6980E20], v21);
    result = v28(v20, 1, v21);
    v30 = v26;
    if (result != 1)
    {
      result = sub_192033970(v20, &qword_1EADEFEC8, &qword_192242DC0);
    }
  }

  else
  {
    result = (*(v22 + 32))(v26, v20, v21);
    v30 = v26;
  }

  if (*MEMORY[0x1E69658E0])
  {
    v31 = v21;
    v32 = *MEMORY[0x1E69658E0];
    v64 = v30;
    v33 = sub_1920765C0();
    type metadata accessor for CFString(0);
    v74 = v34;
    *&v73 = v33;
    sub_19203BEDC(&v73, v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v27;
    sub_1920767A8(v72, v32, isUniquelyReferenced_nonNull_native);

    v36 = v71;
    v37 = MEMORY[0x1E69E7DE0];
    if ((v65 & 1) == 0)
    {
      v38 = sub_192198CD8();
      v39 = *MEMORY[0x1E6965970];
      v74 = v37;
      *&v73 = v38;
      sub_19203BEDC(&v73, v72);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v36;
      sub_1920767A8(v72, v39, v40);
      v36 = v71;
    }

    v41 = (*(v9 + 168))();
    v42 = *MEMORY[0x1E6965898];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
    *&v73 = v36;
    sub_19203BEDC(&v73, v72);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v41;
    sub_1920767A8(v72, v42, v43);
    v44 = v71;
    if (v66)
    {
      v45 = v68;
    }

    else
    {
      v46 = *MEMORY[0x1E6965848];
      v74 = v37;
      *&v73 = v61;
      sub_19203BEDC(&v73, v72);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v71 = v44;
      sub_1920767A8(v72, v46, v47);
      v44 = v71;
      v45 = v68;
      if ((v62 & 1) == 0)
      {
        v48 = *MEMORY[0x1E69657F8];
        v74 = v37;
        *&v73 = v59;
        sub_19203BEDC(&v73, v72);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v44;
        sub_1920767A8(v72, v48, v49);
        v44 = v71;
      }
    }

    sub_19202CFFC(v67, v45, &qword_1EADEF290, &qword_19222CA80);
    v51 = v69;
    v50 = v70;
    if ((*(v69 + 48))(v45, 1, v70) == 1)
    {
      sub_192033970(v45, &qword_1EADEF290, &qword_19222CA80);
LABEL_20:
      sub_192076C84();
      v57 = sub_192227830();

      (*(v22 + 8))(v64, v31);
      return v57;
    }

    v52 = v63;
    (*(v51 + 16))(v63, v45, v50);
    v53 = (*(v51 + 88))(v52, v50);
    if (v53 != *MEMORY[0x1E697E9F8])
    {
      if (v53 == *MEMORY[0x1E697E9F0])
      {
        v54 = 1;
LABEL_19:
        (*(v51 + 8))(v45, v50);
        v55 = *MEMORY[0x1E69657F0];
        v74 = MEMORY[0x1E69E6530];
        *&v73 = v54;
        sub_19203BEDC(&v73, v72);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v44;
        sub_1920767A8(v72, v55, v56);
        goto LABEL_20;
      }

      (*(v51 + 8))(v63, v50);
    }

    v54 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_192076094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E6965870];
  *(inited + 32) = *MEMORY[0x1E6965870];
  *(inited + 16) = xmmword_19222B480;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x8000;
  v2 = v1;
  v3 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v3;
}

unint64_t sub_19207614C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
    v3 = sub_1922286C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_19202CFFC(v4, &v11, &qword_1EADEF190, &qword_19222C030);
      v5 = v11;
      result = sub_192076274(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_19203BEDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192076274(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  type metadata accessor for CFString(0);
  sub_19205E134(&qword_1ED74B7C0, type metadata accessor for CFString);
  sub_192225580();
  v4 = sub_192228B30();

  return sub_19207644C(a1, v4);
}

uint64_t sub_192076370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_192076400()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_192225590();
}

unint64_t sub_19207644C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_19205E134(&qword_1ED74B7C0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_192225570();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_192076558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1920765C0()
{
  v1 = v0;
  v2 = sub_192226DA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E6980E20])
  {
    result = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x1E6980E10])
  {
    result = *MEMORY[0x1E69658D0];
    if (*MEMORY[0x1E69658D0])
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x1E6980E28])
  {
    goto LABEL_10;
  }

  result = *MEMORY[0x1E69658C8];
  if (!*MEMORY[0x1E69658C8])
  {
    __break(1u);
LABEL_10:
    if (result == *MEMORY[0x1E6980E08])
    {
      result = *MEMORY[0x1E69658C0];
      if (*MEMORY[0x1E69658C0])
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (*MEMORY[0x1E69658B8])
    {
      v8 = *(v3 + 8);
      v9 = *MEMORY[0x1E69658B8];
      v8(v6, v2);
      return v9;
    }

    __break(1u);
    return result;
  }

LABEL_12:

  return result;
}

_OWORD *sub_1920767A8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_192076274(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_19213EF6C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1920768E8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_192076274(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_192228A40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_19203BEDC(a1, v20);
  }

  else
  {
    sub_192076C10(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1920768E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_19203BEDC(v22, v34);
      }

      else
      {
        sub_19202A98C(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_192228AD0();
      type metadata accessor for CFString(0);
      sub_192076BC8(&qword_1ED74B7C0, type metadata accessor for CFString);
      sub_192225580();
      result = sub_192228B30();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_19203BEDC(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_192076BC8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_192076C10(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_19203BEDC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_192076C84()
{
  result = qword_1ED74B7B8;
  if (!qword_1ED74B7B8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B7B8);
  }

  return result;
}

id sub_192076CDC()
{
  v1 = v0;
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8])
  {
    v8 = MEMORY[0x1E6965B20];
  }

  else if (v7 == *MEMORY[0x1E6980F00])
  {
    v8 = MEMORY[0x1E6965B28];
  }

  else if (v7 == *MEMORY[0x1E6980F08])
  {
    v8 = MEMORY[0x1E6965B30];
  }

  else if (v7 == *MEMORY[0x1E6980F10])
  {
    v8 = MEMORY[0x1E6965B38];
  }

  else if (v7 == *MEMORY[0x1E6980F38])
  {
    v8 = MEMORY[0x1E6965AE0];
  }

  else if (v7 == *MEMORY[0x1E6980EF0])
  {
    v8 = MEMORY[0x1E6965B18];
  }

  else if (v7 == *MEMORY[0x1E6980EF8])
  {
    v8 = MEMORY[0x1E6965AB0];
  }

  else if (v7 == *MEMORY[0x1E6980F18])
  {
    v8 = MEMORY[0x1E6965AB8];
  }

  else if (v7 == *MEMORY[0x1E6980F30])
  {
    v8 = MEMORY[0x1E6965AD0];
  }

  else if (v7 == *MEMORY[0x1E6980F20])
  {
    v8 = MEMORY[0x1E6965AC0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E6980F28])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E6965AB0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E6965AC8];
  }

  v9 = *v8;

  return v9;
}

id sub_192076F7C()
{
  v1 = v0;
  v2 = sub_1922265A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697F658])
  {
    v8 = MEMORY[0x1E69656D0];
  }

  else if (v7 == *MEMORY[0x1E697F690])
  {
    v8 = MEMORY[0x1E69656C0];
  }

  else if (v7 == *MEMORY[0x1E697F698])
  {
    v8 = MEMORY[0x1E69656B8];
  }

  else if (v7 == *MEMORY[0x1E697F680])
  {
    v8 = MEMORY[0x1E69656B0];
  }

  else if (v7 == *MEMORY[0x1E697F650])
  {
    v8 = MEMORY[0x1E69656C8];
  }

  else if (v7 == *MEMORY[0x1E697F660])
  {
    v8 = MEMORY[0x1E69656D8];
  }

  else if (v7 == *MEMORY[0x1E697F630])
  {
    v8 = MEMORY[0x1E69656E0];
  }

  else if (v7 == *MEMORY[0x1E697F670])
  {
    v8 = MEMORY[0x1E6965690];
  }

  else if (v7 == *MEMORY[0x1E697F668])
  {
    v8 = MEMORY[0x1E6965688];
  }

  else if (v7 == *MEMORY[0x1E697F678])
  {
    v8 = MEMORY[0x1E6965698];
  }

  else if (v7 == *MEMORY[0x1E697F640])
  {
    v8 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v7 != *MEMORY[0x1E697F648])
    {
      v11 = *(v3 + 8);
      v12 = *MEMORY[0x1E69656B0];
      v11(v6, v2);
      return v12;
    }

    v8 = MEMORY[0x1E69656A8];
  }

  v9 = *v8;

  return v9;
}

CTFontDescriptorRef sub_19207723C()
{
  v1 = v0;
  if (qword_1ED74A010 != -1)
  {
    swift_once();
    v1 = v0;
  }

  if (byte_1ED74C7A8 == 2 || (byte_1ED74C7A8 & 1) == 0)
  {

    return v1;
  }

  else
  {
    original = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v3 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v4 = v3;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v5 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, v5);

    return CopyWithAttributes;
  }
}

uint64_t sub_1920773C0()
{
  if (sub_192077438())
  {
    goto LABEL_6;
  }

  if (qword_1ED74BAE8 != -1)
  {
    swift_once();
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_6:
    result = CTFontHasExuberatedLineHeight();
  }

  else
  {
    result = 2;
  }

  byte_1ED74C7A8 = result;
  return result;
}

id sub_192077438()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_192227930();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
    v4 = [v0 standardUserDefaults];
    v5 = sub_192227930();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
    if (qword_1ED74BAE8 != -1)
    {
      swift_once();
    }

    return (dyld_program_sdk_at_least() ^ 1);
  }

  return v6;
}

uint64_t sub_1920775C4()
{
  result = getWKSystemVersionSDK_Dawn();
  qword_1ED74BAF0 = result;
  return result;
}

uint64_t WidgetEnvironment.subscript.setter(uint64_t a1, uint64_t *a2)
{
  sub_19207762C(a1, a2);
}

uint64_t sub_19207762C(uint64_t a1, uint64_t *a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v8 = type metadata accessor for WidgetEnvironment.Storage();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v9[v10] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v11 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v12 = *&v7[v11];
    swift_beginAccess();
    *&v9[v10] = v12;

    v15.receiver = v9;
    v15.super_class = v8;
    v13 = objc_msgSendSuper2(&v15, sel_init);

    *v2 = v13;
  }

  return sub_19207772C(a1, a2);
}

uint64_t sub_19207772C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_1ED74BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_192046E20(a2, off_1ED74BF08);
  v6 = swift_endAccess();
  if (v5)
  {
    v7 = (*(**(v5 + 16) + 80))(v6);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (a1)
    {
      MEMORY[0x1EEE9AC00](v7);
      v13 = *(v4 + *MEMORY[0x1E69E6CE8] + 8);
      sub_192227C40();
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      swift_getWitnessTable();
      v14 = sub_192227A90();
    }

    else
    {
      v14 = 0;
    }

    sub_192047008(v14, v8, v10, v12);
  }

  else
  {
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
    v16 = (v4 + *MEMORY[0x1E69E6CE8]);
    v17 = *v16;
    v18 = v16[1];
    sub_192228580();
    sub_192228970();
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

void sub_1920779C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = MEMORY[0x1E69E6CE8];
  v10 = *a3;
  v19 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v11 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1, v11);
  v13 = (*(**(a2 + 16) + 128))(v18);
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
    *a4 = 0;
  }

  else
  {
    v14 = v13;
    v20 = a4;
    __swift_destroy_boxed_opaque_existential_1(v18);
    type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
    v15 = *(v10 + *v9);
    v16 = sub_192228580();
    swift_allocObject();
    v17 = sub_192042954(a3, a1, v14, a2, v16);
    *v20 = v17;
  }
}

uint64_t getEnumTagSinglePayload for WidgetRenderScheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_192077C0C(char a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  if ((a1 & 1) == 0)
  {
    result = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = a2(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(result + 16);
  v5 = *(result + 24);
  if (v6 >= v5 >> 1)
  {
    result = a2(v5 > 1, v6 + 1, 1, result);
  }

  *(result + 16) = v6 + 1;
  *(result + v6 + 32) = 0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    v7 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
      result = a2(0, *(v7 + 16) + 1, 1, v7);
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    if (v9 >= v8 >> 1)
    {
      result = a2(v8 > 1, v9 + 1, 1, result);
    }

    *(result + 16) = v9 + 1;
    *(result + v9 + 32) = 1;
  }

  return result;
}

unsigned __int8 *sub_192077D38@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (v2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *a2 = v3;
  return result;
}

id TimelineRequest.__allocating_init(widget:environment:fileHandle:)(void *a1, void **a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_192077DB8(a1, a2, a3);

  return v8;
}

id sub_192077DB8(void *a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget] = a1;
  KeyPath = swift_getKeyPath();
  v8 = a1;
  v9 = v6;
  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v11 = type metadata accessor for WidgetEnvironment.Storage();
    v12 = objc_allocWithZone(v11);
    v13 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v12[v13] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v14 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v15 = *&v9[v14];
    swift_beginAccess();
    *&v12[v13] = v15;

    v27.receiver = v12;
    v27.super_class = v11;
    v10 = objc_msgSendSuper2(&v27, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v16 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v17 = type metadata accessor for WidgetEnvironment.Storage();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v18[v19] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v21 = *&v10[v20];
    swift_beginAccess();
    *&v18[v19] = v21;

    v26.receiver = v18;
    v26.super_class = v17;
    v22 = objc_msgSendSuper2(&v26, sel_init);

    v10 = v22;
  }

  sub_19204C8C0(0, v16);

  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment] = v10;
  *&v4[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle] = a3;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for TimelineRequest();
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t ViewableTimelineEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_192225150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_19207804C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A70, &qword_192236280);
  v2 = *v0;
  v3 = sub_192228690();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        result = v21;
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

uint64_t sub_1920781D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 24 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      sub_192228AD0();

      sub_1922279B0();
      v14 = sub_192228B30();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_192078470(unint64_t a1, char a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v8 = sub_192228340();
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v12 = v8;
      v13 = 2;
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2 & 1;
      *(v9 + 32) = sub_1920B3B6C;
      *(v9 + 40) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1920B3B6C;
      *(v10 + 24) = v7;

      _Block_copy(a4);

      sub_192031418(&v12, sub_192078A98, v9, sub_1921C940C, v10);

      goto LABEL_7;
    }
  }

  _Block_copy(a4);
  a4[2](a4, 0);
LABEL_7:
}

uint64_t sub_192078614()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19207866C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19207879C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1922284E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_192227A00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19207879C(v10, 0);
        result = sub_1922283F0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_19207879C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0540, &qword_192234A98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_192078810(uint64_t a1, unint64_t a2)
{
  v4 = sub_19207866C(a1, a2);
  sub_19207885C(&unk_1F06A7760);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19207885C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_19212A8C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_192078948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TimelineRequest();
  v13 = sub_192227B60();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a6;
  v14[5] = a7;
  v16[4] = sub_1921C8CEC;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1921C9404;
  v16[3] = &block_descriptor_240;
  v15 = _Block_copy(v16);

  [a1 getTimelinesWithRequests:v13 isPreview:a5 & 1 completion:v15];
  _Block_release(v15);
}

void sub_192078B10(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
}

Swift::Void __swiftcall WidgetEnvironment.Storage.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1920C80A8(&qword_1ED74B598, v2, type metadata accessor for WidgetEnvironment.Storage);
    v3 = with.super.isa;
    sub_192227FF0();
  }

  else
  {
    v4 = sub_192224F70();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_192224F60();
    sub_192224F40();
    sub_1920C80A8(&qword_1ED74B598, v7, type metadata accessor for WidgetEnvironment.Storage);
    v8 = sub_192224F50();
    v10 = v9;
    v11 = sub_192225050();
    v12 = sub_192227930();
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

    sub_192039140(v8, v10);
  }
}

uint64_t sub_192078E78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF1218, &qword_192239710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046078();
  sub_192228B90();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_1920460CC(&qword_1ED74A658);
  sub_1922288C0();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_19204611C(&qword_1ED74BB10);
    sub_1922288C0();
    v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
    v13[14] = 2;
    sub_192228870();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1920790E8()
{
  result = qword_1ED74A8D8;
  if (!qword_1ED74A8D8)
  {
    type metadata accessor for WidgetDescriptorConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A8D8);
  }

  return result;
}

uint64_t sub_192079140()
{
  result = type metadata accessor for WidgetDescriptor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1920791AC()
{
  result = qword_1ED74C608;
  if (!qword_1ED74C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74C608);
  }

  return result;
}

uint64_t type metadata accessor for WidgetDescriptorConfiguration()
{
  result = qword_1ED74A8A0;
  if (!qword_1ED74A8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192079348()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t WidgetConfiguration.preferredBackgroundStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  sub_1920793F8(KeyPath, &v8, a2, a3);
}

uint64_t sub_1920793F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10);
  v12 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = v7;
  *(v13 + 4) = a4;
  *(v13 + 5) = a1;
  (*(v8 + 32))(&v13[v12], v11, v7);

  sub_1920797E8(sub_19207F4BC, v13);
}

uint64_t sub_192079588()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t WidgetConfiguration.configurationDisplayName(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_192079D80(0xD000000000000018, 0x800000019224EE60);
  sub_19207A2A8(v8, v9, a5, a6);
}

{
  return sub_1920796E4(a1, a2, a3, a4, a5, a6, WidgetConfiguration.configurationDisplayName(_:));
}

uint64_t sub_1920796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{

  v8 = sub_192226FC0();
  v10 = v9;
  v12 = v11;
  a7(v8, v9);
  sub_19207A338(v8, v10, v12 & 1);
}

uint64_t sub_1920797E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1920791AC();

  sub_192226630();
}

uint64_t sub_1920798A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t WidgetConfiguration.privateSupportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1920793F8(KeyPath, &v8, a2, a3);
}

uint64_t WidgetConfiguration.supportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = a2;
    v6 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    sub_19207A250(0, v3, 0);
    v4 = v14;
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = qword_192246938[v8];
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19207A250((v10 > 1), v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v9;
      --v3;
    }

    while (v3);
    a3 = v6;
    a2 = v13;
  }

  WidgetConfiguration.privateSupportedFamilies(_:)(v4, a2, a3);
}

char *sub_192079A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF480, &qword_19222D870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t StaticConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t (*a1)@<X0>(char **a1@<X8>)@<X0>, uint64_t (*a2)@<X0>(char **a1@<X8>)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(char **a1@<X8>)@<X8>, uint64_t a10)
{
  v15 = *(a7 - 8);
  v16 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = a6;
  *(v18 + 3) = a7;
  *(v18 + 4) = a8;
  *(v18 + 5) = a10;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  *(v18 + 8) = 0;
  *(v18 + 9) = 0;
  (*(v15 + 32))(&v18[v16], a3, a7);
  v19 = &v18[v17];
  *v19 = a4;
  *(v19 + 1) = a5;
  *a9 = sub_1920DAD98;
  a9[1] = v18;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = 0;
  a9[5] = 0;
}

uint64_t sub_192079CA4()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 7);

  v6 = *(v0 + 9);

  (*(v2 + 8))(&v0[v3], v1);
  v7 = *&v0[v4 + 8];

  return swift_deallocObject();
}

uint64_t sub_192079D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1922264E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_192226F80();
  (*(v5 + 16))(v9, v11, v4);
  v12 = (*(v5 + 88))(v9, v4);
  if (v12 == *MEMORY[0x1E697F338])
  {
    (*(v5 + 8))(v11, v4);
    (*(v5 + 96))(v9, v4);
    result = *v9;
    v14 = *(v9 + 1);
    return result;
  }

  if (v12 != *MEMORY[0x1E697F340])
  {
    if (v12 != *MEMORY[0x1E697F330])
    {
      (*(v5 + 8))(v9, v4);
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_192228400();

    v24 = 0xD000000000000022;
    v25 = 0x800000019224BAB0;
    MEMORY[0x193B0A990](a1, a2);
    goto LABEL_14;
  }

  (*(v5 + 96))(v9, v4);
  if (v9[40])
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_192228400();

    v24 = 0xD000000000000014;
    v25 = 0x800000019224BB10;
    MEMORY[0x193B0A990](a1, a2);
    MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224BB30);
LABEL_14:
    result = sub_192228620();
    __break(1u);
    return result;
  }

  v16 = *v9;
  v15 = *(v9 + 1);
  v18 = *(v9 + 2);
  v17 = *(v9 + 3);
  v19 = *(v9 + 4);
  if (v19)
  {
    v20 = *(v9 + 4);
  }

  else
  {
    v20 = [objc_opt_self() mainBundle];
    v19 = 0;
  }

  v21 = v19;
  v22 = sub_192224EF0();

  (*(v5 + 8))(v11, v4);
  return v22;
}

uint64_t sub_19207A148(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1920793F8(KeyPath, &v8, a2, a3);
}

uint64_t WidgetConfiguration.enableContentMarginsForFirstParty(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_1920793F8(KeyPath, &v8, a2, a3);
}

char *sub_19207A250(char *a1, int64_t a2, char a3)
{
  result = sub_192079A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_19207A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;

  sub_1920793F8(KeyPath, v10, a3, a4);
}

uint64_t sub_19207A338(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_19207A364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09C0, &unk_192235EE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B8, &qword_192235EE0);
  sub_19207A51C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_19207A464()
{
  result = qword_1ED749F80;
  if (!qword_1ED749F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B0, &qword_192235ED8);
    sub_19213ADD0();
    sub_192031E74(&qword_1ED74A1B8, &qword_1EADF00C0, &qword_1922322D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F80);
  }

  return result;
}

unint64_t sub_19207A51C()
{
  result = qword_1ED749F78;
  if (!qword_1ED749F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09B8, &qword_192235EE0);
    sub_19207A464();
    sub_192031E74(&qword_1ED74A0B8, &qword_1EADF09D8, &qword_1922360B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F78);
  }

  return result;
}

unint64_t sub_19207A5D4()
{
  result = qword_1ED749F90;
  if (!qword_1ED749F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09A0, &qword_192235EC8);
    sub_19207A660();
    sub_19206D880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F90);
  }

  return result;
}

unint64_t sub_19207A660()
{
  result = qword_1ED749F98;
  if (!qword_1ED749F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0998, &qword_192235EC0);
    sub_19207A6EC();
    sub_19207ACE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F98);
  }

  return result;
}

unint64_t sub_19207A6EC()
{
  result = qword_1ED749FA0;
  if (!qword_1ED749FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0990, &qword_192235EB8);
    sub_19207A778();
    sub_19207AC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FA0);
  }

  return result;
}

unint64_t sub_19207A778()
{
  result = qword_1ED749FA8;
  if (!qword_1ED749FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0988, &qword_192235EB0);
    sub_19207A804();
    sub_19207AC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FA8);
  }

  return result;
}

unint64_t sub_19207A804()
{
  result = qword_1ED749FB0;
  if (!qword_1ED749FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0980, &qword_192235EA8);
    sub_19207A890();
    sub_19207ABEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FB0);
  }

  return result;
}

unint64_t sub_19207A890()
{
  result = qword_1ED749FB8;
  if (!qword_1ED749FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0978, &qword_192235EA0);
    sub_19207A91C();
    sub_19207AB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FB8);
  }

  return result;
}

unint64_t sub_19207A91C()
{
  result = qword_1ED749FC8;
  if (!qword_1ED749FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0970, &qword_192235E98);
    sub_19207A9A8();
    sub_19207AB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FC8);
  }

  return result;
}

unint64_t sub_19207A9A8()
{
  result = qword_1ED749FE8;
  if (!qword_1ED749FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0968, &qword_192235E90);
    sub_19207AA60();
    sub_192031E74(&qword_1ED74AF18, &qword_1EADF09D0, &qword_192235F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FE8);
  }

  return result;
}

unint64_t sub_19207AA60()
{
  result = qword_1ED749FF0;
  if (!qword_1ED749FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0960, &qword_192235E88);
    sub_192031E74(&qword_1ED74A4A0, &qword_1EADF09C8, &qword_192235F28);
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FF0);
  }

  return result;
}

unint64_t sub_19207AB44()
{
  result = qword_1ED74AE88;
  if (!qword_1ED74AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AE88);
  }

  return result;
}

unint64_t sub_19207AB98()
{
  result = qword_1ED74A048;
  if (!qword_1ED74A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A048);
  }

  return result;
}

unint64_t sub_19207ABEC()
{
  result = qword_1ED74A060;
  if (!qword_1ED74A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A060);
  }

  return result;
}

unint64_t sub_19207AC40()
{
  result = qword_1ED74A050;
  if (!qword_1ED74A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A050);
  }

  return result;
}

unint64_t sub_19207AC94()
{
  result = qword_1ED74A058;
  if (!qword_1ED74A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A058);
  }

  return result;
}

unint64_t sub_19207ACE8()
{
  result = qword_1ED74AE20[0];
  if (!qword_1ED74AE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74AE20);
  }

  return result;
}

unint64_t sub_19207AD50()
{
  result = qword_1ED74A0D0;
  if (!qword_1ED74A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0D0);
  }

  return result;
}

uint64_t sub_19207ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B60, &qword_192236FC8);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v64 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B68, &unk_192236FD0);
  v8 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v64 - v9;
  v70 = type metadata accessor for ContentMarginsContext();
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1922261D0();
  v75 = *(v14 - 8);
  *&v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  *&v77 = &v64 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v78 = &v64 - v25;
  if (xmmword_1ED74CC80)
  {
    v68 = v10;
    v26 = qword_1ED74CC90;
    v66 = *xmmword_1ED74CC80;
    v84 = xmmword_1ED74CC80;
    v87 = *(v3 + 8);
    v27 = *v3;
    v86 = *v3;
    v28 = v87;
    v69 = a2;
    v67 = v7;
    if (v87 == 1)
    {

      sub_19202CFFC(&v86, &v79, &qword_1EADF0B70, &qword_192236FE0);
      v29 = v27;
    }

    else
    {

      sub_19202CFFC(&v86, &v79, &qword_1EADF0B70, &qword_192236FE0);
      sub_192227FA0();
      v30 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      v29 = v27;
      swift_getAtKeyPath();
      sub_192033970(&v86, &qword_1EADF0B70, &qword_192236FE0);
      (*(v75 + 8))(v17, v76);
      v27 = v79;
    }

    v31 = v78;
    (*(*(v26 + 8) + 8))(v27, v66);

    sub_19202CFFC(v31, v77, &qword_1EADEEE20, &qword_19222B670);
    if (v28)
    {
      v32 = v29;
    }

    else
    {

      sub_192227FA0();
      v33 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v86, &qword_1EADF0B70, &qword_192236FE0);
      (*(v75 + 8))(v17, v76);
      v29 = v79;
    }

    v85 = *(v3 + 24);
    v34 = *(v3 + 16);
    v84 = v34;
    v66 = v29;
    if (v85 == 1)
    {
      v65 = v34;
    }

    else
    {

      sub_192227FA0();
      v35 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v84, &qword_1EADF0B78, &qword_192236FE8);
      (*(v75 + 8))(v17, v76);
      v65 = v79;
    }

    v83 = *(v3 + 40);
    v36 = *(v3 + 32);
    v82 = v36;
    if (v83 != 1)
    {

      sub_192227FA0();
      v37 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v82, &qword_1EADF0B80, &qword_192236FF0);
      (*(v75 + 8))(v17, v76);
      LOBYTE(v36) = v79;
    }

    v38 = type metadata accessor for WidgetDescriptor(0);
    v39 = *(v38 - 8);
    (*(v39 + 56))(v13, 1, 1, v38);
    v40 = v70;
    v41 = *(v70 + 20);
    v42 = *(v70 + 32);
    *(&v80 + 1) = &type metadata for FeatureFlags.Widgets;
    v43 = sub_19202DBA4();
    v81 = v43;
    LOBYTE(v79) = 5;
    v44 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    v13[v42] = v44 & 1;
    v45 = v40[9];
    *(&v80 + 1) = &type metadata for FeatureFlags.Widgets;
    v81 = v43;
    LOBYTE(v79) = 15;
    LOBYTE(v43) = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    v13[v45] = v43 & 1;
    sub_19207C51C(v77, v13);
    *&v13[v41] = v66;
    *&v13[v40[6]] = v65;
    v13[v40[7]] = v36 & 1;
    sub_19207C58C(v13, &v79);
    if (v81)
    {
      v46 = v79;
      v76 = v79;
      v77 = v80;
      v47 = *(&v79 + 1);
      v49 = *(&v80 + 1);
      v48 = v80;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v76 = v79;
      v77 = v80;
    }

    v50 = sub_192226D10();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B88, &qword_192236FF8);
    v52 = v67;
    (*(*(v51 - 8) + 16))(v67, v74, v51);
    v53 = v52 + *(v72 + 36);
    *v53 = v50;
    *(v53 + 8) = v46;
    *(v53 + 16) = v47;
    *(v53 + 24) = v48;
    *(v53 + 32) = v49;
    *(v53 + 40) = 0;
    KeyPath = swift_getKeyPath();
    v55 = v68;
    sub_19204E300(v52, v68, &qword_1EADF0B60, &qword_192236FC8);
    v56 = v55 + *(v73 + 36);
    *v56 = KeyPath;
    v57 = v76;
    *(v56 + 24) = v77;
    *(v56 + 8) = v57;
    v58 = swift_getKeyPath();
    v59 = v71;
    sub_19204E300(v78, v71, &qword_1EADEEE20, &qword_19222B670);
    if ((*(v39 + 48))(v59, 1, v38) == 1)
    {
      sub_192033970(v59, &qword_1EADEEE20, &qword_19222B670);
      v60 = 0;
    }

    else
    {
      v60 = *(v59 + *(v38 + 100));
      sub_19207D490(v59, type metadata accessor for WidgetDescriptor);
    }

    v61 = v55;
    v62 = v69;
    sub_19204E300(v61, v69, &qword_1EADF0B68, &unk_192236FD0);
    v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B90, &qword_192237050) + 36);
    *v63 = v58;
    *(v63 + 8) = v60;
    return sub_19207D490(v13, type metadata accessor for ContentMarginsContext);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ContentMarginsContext()
{
  result = qword_1ED749EA8;
  if (!qword_1ED749EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19207B79C()
{
  if (!qword_1ED749F40)
  {
    type metadata accessor for WidgetDescriptor(255);
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED749F40);
    }
  }
}

void sub_19207B7F4()
{
  sub_19207B79C();
  if (v0 <= 0x3F)
  {
    sub_19207B8AC();
    if (v1 <= 0x3F)
    {
      sub_19202A7A8(319, &qword_1ED74BD10, 0x1E69943F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19207B8AC()
{
  if (!qword_1ED749DC8[0])
  {
    sub_19202A7A8(255, &qword_1ED74BB40, 0x1E6994370);
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, qword_1ED749DC8);
    }
  }
}

uint64_t sub_19207B920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = type metadata accessor for ViewSource(0);
  v8 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WidgetDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = (*(a3 + 24))(a2, a3);
  v19 = *(v18 + 16);
  if (v19)
  {
    v61 = a4;
    v20 = 0;
    v62 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v77 = v18 + v62;
    v66 = a1;
    v67 = MEMORY[0x1E69E7CC0];
    v21 = v12;
    v22 = v18;
    v75 = v19;
    v63 = v11;
    v65 = v21;
    v69 = v18;
    while (1)
    {
      if (v20 >= *(v22 + 16))
      {
        __break(1u);
LABEL_43:
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v57 = sub_1922258B0();
        __swift_project_value_buffer(v57, qword_1ED74CCC8);
        v58 = sub_192225890();
        v59 = sub_192227F90();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 134349056;
          *(v60 + 4) = v22;
          _os_log_impl(&dword_192028000, v58, v59, "Unrecognized family: %{public}ld", v60, 0xCu);
          MEMORY[0x193B0C7F0](v60, -1, -1);
        }

        sub_192228620();
        __break(1u);
LABEL_48:
        result = sub_192228990();
        __break(1u);
        return result;
      }

      v23 = *(v21 + 72);
      sub_19207C0C0(v77 + v23 * v20, v17, type metadata accessor for WidgetDescriptor);
      if (a1)
      {
        sub_19207C0C0(v17, v10, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_192036A20(v10, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v25 = v11;
            v26 = *v10;
            v27 = v10[1];
            v28 = v10[4];
            v71 = v10[3];
            v72 = v28;
            v29 = v10[7];
            v73 = v10[5];
            v74 = v29;
            v76 = a1;
            v30 = [v76 kind];
            v31 = sub_192227960();
            v33 = v32;

            v70 = v27;
            if (v26 == v31 && v27 == v33)
            {

              v22 = v69;
              v11 = v25;
              goto LABEL_15;
            }

            v38 = sub_1922289A0();

            v22 = v69;
            v11 = v25;
            if (v38)
            {
LABEL_15:
              v39 = *&v17[*(v11 + 28)];
              v40 = *(v39 + 16);
              if (v40)
              {
                v79 = MEMORY[0x1E69E7CC0];
                sub_19207C250(0, v40, 0);
                v41 = v79;
                v42 = (v39 + 32);
                while (1)
                {
                  v43 = *v42++;
                  v22 = v43;
                  v44 = v43 - 1;
                  if ((v43 - 1) >= 0xE || ((0x2FFFu >> v44) & 1) == 0)
                  {
                    goto LABEL_43;
                  }

                  v45 = byte_1922432A0[v44];
                  v79 = v41;
                  v47 = *(v41 + 16);
                  v46 = *(v41 + 24);
                  if (v47 >= v46 >> 1)
                  {
                    sub_19207C250((v46 > 1), v47 + 1, 1);
                    v41 = v79;
                  }

                  *(v41 + 16) = v47 + 1;
                  *(v41 + v47 + 32) = v45;
                  if (!--v40)
                  {
                    v11 = v63;
                    v22 = v69;
                    goto LABEL_24;
                  }
                }
              }

              v41 = MEMORY[0x1E69E7CC0];
LABEL_24:
              v19 = v75;
              InternalWidgetFamily.init(_:)([v76 family], &v78);
              a1 = v66;
              if (v78 > 0xCuLL)
              {
                goto LABEL_48;
              }

              v48 = *(v41 + 16);
              v49 = (v41 + 32);
              do
              {
                if (!v48)
                {

                  sub_19207C280(v72, v73);

                  sub_192036A20(v17, type metadata accessor for WidgetDescriptor);
                  v21 = v65;
                  goto LABEL_5;
                }

                v50 = *v49++;
                --v48;
              }

              while (qword_192243238[v78] != v50);

              sub_19207C280(v72, v73);

              sub_19207C284(v17, v64);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v51 = v67;
              }

              else
              {
                v51 = sub_19207C2E8(0, v67[2] + 1, 1, v67);
              }

              v53 = v51[2];
              v52 = v51[3];
              if (v53 >= v52 >> 1)
              {
                v51 = sub_19207C2E8(v52 > 1, v53 + 1, 1, v51);
              }

              v51[2] = v53 + 1;
              v67 = v51;
              sub_19207C284(v64, v51 + v62 + v53 * v23);
              v21 = v65;
            }

            else
            {
              sub_192036A20(v17, type metadata accessor for WidgetDescriptor);

              sub_19207C280(v72, v73);

              v21 = v65;
              a1 = v66;
            }

            v19 = v75;
            goto LABEL_5;
          }

          v34 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
          v35 = *(v34 + 1);
          v36 = *(v34 + 3);

          v19 = v75;

          v37 = sub_1922253B0();
          (*(*(v37 - 8) + 8))(v10, v37);
        }
      }

      sub_192036A20(v17, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (++v20 == v19)
      {

        a4 = v61;
        v54 = v67;
        if (!v67[2])
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_19207C0C0(v54 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), a4, type metadata accessor for WidgetDescriptor);
        v55 = 0;
        goto LABEL_41;
      }
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
  v21 = v12;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_40:
  v55 = 1;
LABEL_41:

  return (*(v21 + 56))(a4, v55, 1, v11);
}

uint64_t sub_19207C0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_Say9WidgetKit20IntentRecommendationVySo8INIntentCGGIego_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_19207C164(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_19207C250(char *a1, int64_t a2, char a3)
{
  result = sub_19207C164(a1, a2, a3, *v3, &qword_1EADEEAF8, &qword_19222AF38);
  *v3 = result;
  return result;
}

uint64_t sub_19207C284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ViewSource(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19207C3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19207C51C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207C58C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for ContentMarginsContext();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v90 - v15;
  v17 = sub_19207CFF0();
  v90 = v11;
  if (v17)
  {
    sub_19207C3DC(a1, v16);
    v18 = type metadata accessor for WidgetDescriptor(0);
    if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
    {
      sub_192033970(v16, &qword_1EADEEE20, &qword_19222B670);
      v19 = 1;
    }

    else
    {
      v20 = v16[*(v18 + 100)];
      sub_1920369C0(v16, type metadata accessor for WidgetDescriptor);
      v19 = v20 ^ 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + v3[7]))
  {
    v21 = &selRef_contentMargins;
  }

  else
  {
    v21 = &selRef_backgroundRemovedContentMargins;
  }

  v22 = *(a1 + v3[6]);
  v23 = [v22 margins];
  [v23 *v21];
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = *(a1 + v3[5]);
  if (!v30)
  {
    result = sub_19207D258();
    if ((result & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_16:
    v36 = v27;
    goto LABEL_48;
  }

  v31 = [v30 extensionIdentity];
  v32 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();

  v33 = sub_192227A10();

  result = sub_19207D258();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v33 & 1) == 0 || (*(a1 + v3[8]))
  {
    goto LABEL_16;
  }

  sub_19207C3DC(a1, v14);
  v35 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
  {
    sub_192033970(v14, &qword_1EADEEE20, &qword_19222B670);
    goto LABEL_19;
  }

  v37 = v14[*(v35 + 104)];
  result = sub_1920369C0(v14, type metadata accessor for WidgetDescriptor);
  if (v37 != 2 && (v37 & 1) != 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = sub_192192560(v30, a1);
  v39 = v38;
  if ((v19 & 1) == 0)
  {
    v97 = 0;
    v41 = v6;
    if (*(a1 + v3[8]))
    {
LABEL_27:
      v42 = 0;
      v40 = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (*(a1 + v3[9]))
    {
      goto LABEL_27;
    }

    if (qword_1EADECBD0 != -1)
    {
      swift_once();
    }

    v43 = qword_1EADECBD8;

    v44 = sub_192191CEC();
    v46 = sub_1921B01A8(v44, v45, v43);

    if (v46)
    {
      goto LABEL_27;
    }

    if (v39)
    {
LABEL_50:
      [v22 scaleFactor];
      v40 = 0;
      v25 = v25 * v86;
      v42 = 1;
      goto LABEL_28;
    }

    v87 = v90;
    sub_19207C3DC(a1, v90);
    v88 = type metadata accessor for WidgetDescriptor(0);
    if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
    {
      sub_192033970(v87, &qword_1EADEEE20, &qword_19222B670);
    }

    else
    {
      v89 = *(v87 + *(v88 + 104));
      sub_1920369C0(v87, type metadata accessor for WidgetDescriptor);
      if (v89 != 2 && (v89 & 1) != 0)
      {
        goto LABEL_50;
      }
    }

    v40 = 0;
    v42 = 0;
    goto LABEL_28;
  }

  v40 = 1;
  v97 = (v38 & 1) == 0;
  v41 = v6;
  if ((*(a1 + v3[8]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v42 = 0;
LABEL_28:
  v94.f64[0] = sub_192192EB4(a1, &v97, v40, v25);
  v94.f64[1] = v47;
  v95 = v48;
  v96 = v49;
  *&v25 = *&sub_1921931A0(a1, &v94);
  v27 = v50;
  v36 = v51;
  v29 = v52;
  if (qword_1ED749978 != -1)
  {
    swift_once();
  }

  v53 = qword_1ED74C728;
  v54 = sub_192227F80();
  if (os_log_type_enabled(v53, v54))
  {
    if (qword_1ED7497F8 != -1)
    {
      swift_once();
    }

    v55 = sub_1922258B0();
    __swift_project_value_buffer(v55, qword_1ED74C6F0);
    sub_192193564(a1, v41, type metadata accessor for ContentMarginsContext);
    v56 = sub_192225890();
    v57 = sub_192227F80();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v92[0] = v59;
      *v58 = 136446210;
      v60 = sub_192191E04();
      v61 = v41;
      v63 = v62;
      sub_1920369C0(v61, type metadata accessor for ContentMarginsContext);
      v64 = sub_19202B8CC(v60, v63, v92);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_192028000, v56, v57, "Margins input: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x193B0C7F0](v59, -1, -1);
      MEMORY[0x193B0C7F0](v58, -1, -1);
    }

    else
    {

      sub_1920369C0(v41, type metadata accessor for ContentMarginsContext);
    }

    v65 = sub_192225890();
    v66 = sub_192227F80();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 67240192;
      *(v67 + 4) = v39 & 1;
      _os_log_impl(&dword_192028000, v65, v66, "needsLegacyBackgroundAndContentMargins: %{BOOL,public}d", v67, 8u);
      MEMORY[0x193B0C7F0](v67, -1, -1);
    }

    v68 = sub_192225890();
    v69 = sub_192227F80();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 67240192;
      *(v70 + 4) = v40;
      _os_log_impl(&dword_192028000, v68, v69, "exemptFromLegacyScaledContentMargins: %{BOOL,public}d", v70, 8u);
      MEMORY[0x193B0C7F0](v70, -1, -1);
    }

    v71 = sub_192225890();
    v72 = sub_192227F80();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67240192;
      *(v73 + 4) = v42;
      _os_log_impl(&dword_192028000, v71, v72, "needsLegacyScaledMargins: %{BOOL,public}d", v73, 8u);
      MEMORY[0x193B0C7F0](v73, -1, -1);
    }

    v74 = sub_192225890();
    v75 = sub_192227F80();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v93 = v77;
      *v76 = 136446210;
      *v92 = v25;
      v92[1] = v27;
      v92[2] = v36;
      v92[3] = v29;
      v78 = sub_192227990();
      v80 = sub_19202B8CC(v78, v79, &v93);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_192028000, v74, v75, "finalEffectiveMargins: %{public}s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x193B0C7F0](v77, -1, -1);
      MEMORY[0x193B0C7F0](v76, -1, -1);
    }

    v81 = v97;
    v82 = sub_192225890();
    v83 = sub_192227F80();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 67240192;
      *(v84 + 4) = v81;
      _os_log_impl(&dword_192028000, v82, v83, "applyContentMargins: %{BOOL,public}d", v84, 8u);
      MEMORY[0x193B0C7F0](v84, -1, -1);
    }
  }

  result = swift_beginAccess();
  v19 = v97;
LABEL_48:
  v85 = v91;
  *v91 = v25;
  *(v85 + 1) = v27;
  *(v85 + 2) = v36;
  *(v85 + 3) = v29;
  *(v85 + 32) = v19 & 1;
  return result;
}

uint64_t sub_19207CFF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1ED74BAE8 != -1)
    {
      swift_once();
    }

    LOBYTE(v11) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v5, v10);
    v11 = v10[*(v6 + 172)];
    if (v11 == 2)
    {
      if (qword_1ED74BAE8 != -1)
      {
        swift_once();
      }

      LOBYTE(v11) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v10, type metadata accessor for WidgetDescriptor);
  }

  return v11 & 1;
}

uint64_t sub_19207D1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19207D258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1ED749EF8 != -1)
    {
      swift_once();
    }

    LOBYTE(v11) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v5, v10);
    v11 = v10[*(v6 + 180)];
    if (v11 == 2)
    {
      if (qword_1ED749EF8 != -1)
      {
        swift_once();
      }

      LOBYTE(v11) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v10, type metadata accessor for WidgetDescriptor);
  }

  return v11 & 1;
}

uint64_t sub_19207D460()
{
  result = getWKSystemVersionSDK_Luck();
  qword_1ED749F00 = result;
  return result;
}

uint64_t sub_19207D490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t keypath_get_5Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a2 = v4;
  return result;
}

unint64_t sub_19207D56C()
{
  result = qword_1ED749F70;
  if (!qword_1ED749F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F70);
  }

  return result;
}

uint64_t sub_19207D5C0(char *a1)
{
  v2 = *a1;
  sub_19207D56C();
  return sub_1922261F0();
}

double sub_19207D60C@<D0>(_OWORD *a1@<X8>)
{
  sub_19207D65C();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_19207D65C()
{
  result = qword_1ED74A0F8;
  if (!qword_1ED74A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A0F8);
  }

  return result;
}

double sub_19207D6B0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_19207D6BC(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_19207D65C();
  return sub_1922261F0();
}

uint64_t sub_19207D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2638, &qword_192245520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - v9);
  v11 = sub_1922261D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (*(v2 + 8) == 1)
  {
    v25 = *v2;
    if (v16 != 8)
    {
LABEL_3:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
      (*(*(v17 - 8) + 16))(v6, v23, v17);
      swift_storeEnumTagMultiPayload();
      sub_19207DAD8();
      sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530);
      return sub_1922266E0();
    }
  }

  else
  {
    v19 = *v2;

    sub_192227FA0();
    v20 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v16, 0);
    (*(v12 + 8))(v15, v11);
    if (v25 != 8)
    {
      goto LABEL_3;
    }
  }

  v22 = sub_192227240();
  MEMORY[0x1EEE9AC00](v22);
  *(&v22 - 2) = v23;
  v21 = *(v7 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
  sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530);
  sub_192226CE0();
  *v10 = v22;
  sub_19220535C(v10, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207DAD8();
  sub_1922266E0();
  return sub_1922053CC(v10);
}

unint64_t sub_19207DAD8()
{
  result = qword_1ED74AEC8;
  if (!qword_1ED74AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2640, &qword_192245528);
    sub_192031E74(&qword_1ED74AE90, &qword_1EADF2650, &qword_192245538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEC8);
  }

  return result;
}

id sub_19207DB90(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_192224FE0();
  v14[0] = 0;
  v5 = [v2 initWithURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_192225020();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_192224F90();

    swift_willThrow();
    v11 = sub_192225020();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_19207DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = sub_192225020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  sub_192051870(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_192033970(v10, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    (*(v12 + 16))(v16, v18, v11);
    v19 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v26 = sub_19207DB90(v16);
    (*(v12 + 8))(v18, v11);
    v23 = v26;
    if (v26)
    {
      goto LABEL_9;
    }
  }

  v20 = *(a1 + *(type metadata accessor for BundleStub() + 20));
  v21 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();
  v22 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v23 = sub_192034E34();
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_9:
  v27 = v23;
  v28 = [v27 bundleIdentifier];
  if (!v28)
  {

LABEL_5:
    v24 = type metadata accessor for BundleStub();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  v29 = type metadata accessor for BundleStub();
  v30 = *(a1 + *(v29 + 20));
  v31 = LSBundleRecord.safeBundleVersion.getter();
  v33 = v32;
  v34 = [v27 URL];

  sub_192224FF0();
  v35 = *(v12 + 56);
  v35(v8, 0, 1, v11);
  v35(a2, 1, 1, v11);
  *(a2 + *(v29 + 20)) = v30;
  sub_19203CF50(v8, a2);
  v36 = (a2 + *(v29 + 24));
  *v36 = v31;
  v36[1] = v33;
  return (*(*(v29 - 8) + 56))(a2, 0, 1, v29);
}

uint64_t LSBundleRecord.safeBundleVersion.getter()
{
  v1 = [v0 infoDictionary];
  v2 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_19207E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for BundleStub();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_19207DCDC(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) != 1)
  {
    sub_19207E490(v10, v18);
    v21 = v18;
LABEL_6:
    sub_19207E490(v21, a2);
    v20 = 0;
    return (*(v12 + 56))(a2, v20, 1, v11);
  }

  sub_192033970(v10, &qword_1EADEFBE8, &qword_192230900);
  sub_192184380(a1, v8);
  if (v19(v8, 1, v11) != 1)
  {
    sub_19207E490(v8, v16);
    v21 = v16;
    goto LABEL_6;
  }

  sub_192033970(v8, &qword_1EADEFBE8, &qword_192230900);
  v20 = 1;
  return (*(v12 + 56))(a2, v20, 1, v11);
}

uint64_t sub_19207E490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleStub();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19207E4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for BundleStub();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207E25C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_192033970(v5, &qword_1EADEFBE8, &qword_192230900);
    sub_1921BAABC();
    result = swift_allocError();
    *v12 = 0xD00000000000001DLL;
    v12[1] = 0x800000019224D780;
  }

  else
  {
    sub_19205573C(v5, v10, type metadata accessor for BundleStub);
    v13 = *(v6 + 24);
    v14 = *&v10[v13];
    v15 = *&v10[v13 + 8];
    v16 = (a1 + v13);
    v17 = v14 == *v16 && v15 == v16[1];
    if (v17 || (sub_1922289A0() & 1) != 0)
    {
      sub_192055674(v10, type metadata accessor for BundleStub);
      return 0;
    }

    else
    {
      sub_1921BAABC();
      v18 = swift_allocError();
      *v19 = 0xD000000000000046;
      v19[1] = 0x800000019224D7A0;
      sub_192055674(v10, type metadata accessor for BundleStub);
      return v18;
    }
  }

  return result;
}

uint64_t IntentConfiguration.init<A>(kind:intent:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t (**a7)@<X0>(char **a1@<X8>)@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = sub_19207EA6C(a5, a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(a8 - 8);
  v19 = (*(v18 + 80) + 88) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  *(v21 + 4) = a8;
  *(v21 + 5) = a9;
  *(v21 + 6) = a10;
  *(v21 + 7) = v24;
  *(v21 + 8) = v13;
  *(v21 + 9) = v15;
  *(v21 + 10) = v17;
  (*(v18 + 32))(&v21[v19], a2, a8);
  v22 = &v21[v20];
  *v22 = a3;
  *(v22 + 1) = a4;
  *a7 = sub_1920845E0;
  a7[1] = v21;
  a7[2] = v24;
  a7[3] = v13;
  a7[4] = v15;
  a7[5] = v17;
}

uint64_t sub_19207E8C4()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 8);

  v6 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);
  v7 = *&v0[v4 + 8];

  return swift_deallocObject();
}

uint64_t WidgetConfiguration.description(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_192079D80(0x7470697263736564, 0xEB000000006E6F69);
  sub_19207A2A8(v8, v9, a5, a6);
}

{
  return sub_1920796E4(a1, a2, a3, a4, a5, a6, WidgetConfiguration.description(_:));
}

uint64_t sub_19207EA6C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [v3 _className];

  sub_192227960();
  return a2;
}

uint64_t IntentConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[2];
  v20 = v2[1];
  v21 = v8;
  v19 = *v2;
  v9 = v20;
  v10 = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  *(v11 + 32) = *(a1 + 32);
  v12 = v2[1];
  *(v11 + 40) = *v2;
  *(v11 + 56) = v12;
  *(v11 + 72) = v2[2];
  v13 = v19;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *v7 = v9;
  *(v7 + 1) = v10;
  *(v7 + 4) = sub_1921EF7F8;
  *(v7 + 5) = v11;
  *(v7 + 6) = sub_192084724;
  *(v7 + 7) = v14;
  swift_storeEnumTagMultiPayload();

  (*(*(a1 - 8) + 16))(v18, &v19, a1);

  return sub_19207ED1C(v7, v17);
}

uint64_t sub_19207EC9C()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  return swift_deallocObject();
}

uint64_t sub_19207ECE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19207ED1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetDescriptor(0);
  v9 = (a2 + v8[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = v8[7];
  if (qword_1ED74C448 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_1ED74ABB8;
  *(a2 + v8[8]) = &unk_1F06A78B0;
  v12 = v8[9];
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + v12) = sub_19207F034(MEMORY[0x1E69E7CC0]);
  v14 = MEMORY[0x1E69E7CD0];
  *(a2 + v8[10]) = MEMORY[0x1E69E7CD0];
  *(a2 + v8[11]) = 0;
  v15 = (a2 + v8[12]);
  *v15 = 0;
  v15[1] = 0;
  *(a2 + v8[13]) = 0;
  v16 = (a2 + v8[14]);
  *v16 = 0;
  v16[1] = 0;
  *(a2 + v8[15]) = 0;
  *(a2 + v8[16]) = v14;
  *(a2 + v8[17]) = 0;
  *(a2 + v8[18]) = 0;
  *(a2 + v8[19]) = 1;
  *(a2 + v8[20]) = 0;
  *(a2 + v8[21]) = v13;
  *(a2 + v8[23]) = 0;
  *(a2 + v8[26]) = 2;
  v17 = (a2 + v8[27]);

  *v17 = sub_19207F13C();
  v17[1] = v18;
  *(a2 + v8[28]) = 0;
  *(a2 + v8[29]) = 0;
  *(a2 + v8[30]) = 0;
  *(a2 + v8[31]) = 0;
  *(a2 + v8[32]) = 0;
  *(a2 + v8[33]) = 0;
  *(a2 + v8[34]) = 0;
  *(a2 + v8[35]) = 0;
  *(a2 + v8[36]) = 0;
  *(a2 + v8[37]) = 0;
  v19 = (a2 + v8[38]);
  *v19 = 0;
  v19[1] = 0;
  *(a2 + v8[39]) = 0;
  v20 = (a2 + v8[40]);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v8[41]) = 0;
  v21 = (a2 + v8[42]);
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v8[43]) = 2;
  *(a2 + v8[44]) = 2;
  *(a2 + v8[45]) = 2;
  sub_192038FB8(a1, a2);
  if (qword_1ED74BAE8 != -1)
  {
    swift_once();
  }

  *(a2 + v8[22]) = dyld_program_sdk_at_least();
  sub_192038FB8(a1, v7);
  v22 = swift_getEnumCaseMultiPayload() == 3;
  v23 = v8[24];
  sub_19207D1F8(v7, type metadata accessor for ViewSource);
  *(a2 + v23) = v22;
  v24 = dyld_program_sdk_at_least();
  result = sub_19207D1F8(a1, type metadata accessor for ViewSource);
  *(a2 + v8[25]) = v24 ^ 1;
  return result;
}
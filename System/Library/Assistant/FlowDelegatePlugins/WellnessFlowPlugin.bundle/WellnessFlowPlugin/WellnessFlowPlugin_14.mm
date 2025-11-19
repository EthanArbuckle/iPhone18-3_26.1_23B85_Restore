uint64_t sub_148670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_147F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_148698(uint64_t a1)
{
  v2 = sub_148A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1486D4(uint64_t a1)
{
  v2 = sub_148A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SpecificMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB2E8, &qword_178458);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_148A70();
  sub_16E77C();
  v14 = *v3;
  v35 = 0;
  sub_149AD0();
  sub_BC0B8();
  sub_16E65C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    sub_153FC(1);
    sub_16E64C();
    v17 = v3[3];
    v18 = v3[4];
    sub_153FC(2);
    sub_16E61C();
    v19 = v3[5];
    v20 = v3[6];
    sub_153FC(3);
    sub_16E61C();
    v21 = type metadata accessor for SpecificMedCompletedLogModel();
    v22 = v21[8];
    v35 = 4;
    sub_16C11C();
    sub_149A4C();
    sub_149418(v23, v24);
    sub_149AD0();
    sub_BC0B8();
    sub_16E63C();
    v25 = v3 + v21[9];
    v26 = *v25;
    v27 = v25[8];
    sub_153FC(5);
    sub_16E62C();
    sub_66A40(v21[10]);
    sub_153FC(6);
    sub_16E64C();
    sub_66A40(v21[11]);
    sub_153FC(7);
    sub_16E61C();
    sub_66A40(v21[12]);
    sub_153FC(8);
    sub_16E64C();
    sub_66A40(v21[13]);
    sub_153FC(9);
    sub_16E64C();
    v28 = *(v3 + v21[14]);
    v35 = 10;
    sub_149AD0();
    sub_BC0B8();
    sub_16E65C();
    v29 = *(v3 + v21[15]);
    v35 = 11;
    sub_149AD0();
    sub_BC0B8();
    sub_16E65C();
    sub_66A40(v21[16]);
    sub_153FC(12);
    sub_16E61C();
    sub_66A40(v21[17]);
    sub_153FC(13);
    sub_16E61C();
    sub_66A40(v21[18]);
    sub_153FC(14);
    sub_16E61C();
    v30 = v21[19];
    v35 = 15;
    type metadata accessor for SnippetHeaderModel();
    sub_149A64();
    sub_149418(v31, v32);
    sub_149AD0();
    sub_BC0B8();
    sub_16E63C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_148A70()
{
  result = qword_1CB2F0;
  if (!qword_1CB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB2F0);
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v99 = &v90 - v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v102 = sub_2440(&qword_1CB2F8, &qword_178460);
  sub_42F0(v102);
  v100 = v14;
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v19 = &v90 - v18;
  v20 = type metadata accessor for SpecificMedCompletedLogModel();
  v21 = sub_8B38(v20);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v24 + 32);
  v28 = sub_16C11C();
  v108 = v27;
  sub_8AB4();
  sub_214C(v29, v30, v31, v28);
  v32 = v20[19];
  v110 = v26;
  v33 = &v26[v32];
  v34 = type metadata accessor for SnippetHeaderModel();
  v103 = v33;
  sub_8AB4();
  sub_214C(v35, v36, v37, v34);
  v39 = a1[3];
  v38 = a1[4];
  v104 = a1;
  sub_2D20(a1, v39);
  sub_148A70();
  v101 = v19;
  v40 = v109;
  sub_16E76C();
  if (v40)
  {
    v109 = v40;
    sub_1499E0();
    v41 = v108;
    v44 = v110;
LABEL_4:
    sub_2D64(v104);

    sub_8748(&v44[v41], &qword_1C63F0, &unk_1717F0);

    return sub_8748(v103, &dword_1C63F8, &qword_171800);
  }

  v96 = v34;
  v97 = 0x800000000017A2C0;
  v111 = 0;
  v42 = sub_16E5CC();
  v43 = v108;
  v46 = v110;
  *v110 = v42 & 1;
  v111 = 1;
  v46[1] = sub_16E5BC();
  v46[2] = v47;
  v95 = v47;
  v111 = 2;
  v46[3] = sub_16E58C();
  v46[4] = v48;
  v94 = v48;
  sub_149A0C(3);
  v46[5] = sub_16E58C();
  v46[6] = v49;
  v93 = v49;
  v111 = 4;
  sub_149A4C();
  sub_149418(v50, v51);
  sub_16E5AC();
  sub_1E634(v13, v46 + v43, &qword_1C63F0, &unk_1717F0);
  sub_149A0C(5);
  v52 = sub_16E59C();
  v53 = v46 + v20[9];
  *v53 = v52;
  v53[8] = v54 & 1;
  sub_149A0C(6);
  v55 = sub_16E5BC();
  v56 = (v46 + v20[10]);
  *v56 = v55;
  v56[1] = v57;
  sub_149A0C(7);
  v58 = sub_16E58C();
  v59 = &v110[v20[11]];
  *v59 = v58;
  v59[1] = v60;
  v92 = v60;
  sub_149A0C(8);
  sub_16E5BC();
  v109 = 0;
  sub_149ADC(v20[12]);
  *v63 = v61;
  v63[1] = v62;
  sub_149A0C(9);
  sub_16E5BC();
  v91 = v64;
  v109 = 0;
  sub_149ADC(v20[13]);
  v65 = v91;
  *v67 = v66;
  v67[1] = v65;
  sub_149A2C(10);
  v68 = sub_16E5CC();
  v109 = 0;
  v110[v20[14]] = v68 & 1;
  sub_149A2C(11);
  v69 = sub_16E5CC();
  v109 = 0;
  v110[v20[15]] = v69 & 1;
  sub_149A2C(12);
  sub_16E58C();
  v107 = v70;
  v109 = 0;
  sub_149ADC(v20[16]);
  v71 = v107;
  *v73 = v72;
  v73[1] = v71;
  sub_149A2C(13);
  sub_16E58C();
  v106 = v74;
  v109 = 0;
  sub_149ADC(v20[17]);
  v75 = v106;
  *v77 = v76;
  v77[1] = v75;
  sub_149A2C(14);
  v78 = sub_16E58C();
  v105 = v79;
  v109 = 0;
  v80 = &v110[v20[18]];
  v81 = v105;
  *v80 = v78;
  v80[1] = v81;
  v111 = 15;
  sub_149A64();
  sub_149418(v82, v83);
  v84 = v109;
  sub_16E5AC();
  v109 = v84;
  if (v84)
  {
    v85 = sub_149A1C();
    v86(v85);
    v41 = v108;
    v44 = v110;
    goto LABEL_4;
  }

  v87 = sub_149A1C();
  v88(v87);
  sub_1E634(v99, v103, &dword_1C63F8, &qword_171800);
  v89 = v110;
  sub_1492C8(v110, v98);
  sub_2D64(v104);
  return sub_14932C(v89);
}

uint64_t sub_1492C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14932C(uint64_t a1)
{
  v2 = type metadata accessor for SpecificMedCompletedLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_149418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1494A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a3 + 76);
    }

    return sub_369C(a1 + v10, a2, v9);
  }
}

uint64_t sub_14959C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v10 = *(a4 + 76);
    }

    return sub_214C(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_14967C()
{
  sub_3A10(319, &qword_1C64C8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_3A10(319, &qword_1C5720);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for SpecificMedCompletedLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1498A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1498DC()
{
  result = qword_1CB3C8;
  if (!qword_1CB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3C8);
  }

  return result;
}

unint64_t sub_149934()
{
  result = qword_1CB3D0;
  if (!qword_1CB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3D0);
  }

  return result;
}

unint64_t sub_14998C()
{
  result = qword_1CB3D8;
  if (!qword_1CB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3D8);
  }

  return result;
}

void sub_1499E0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

void sub_1499FC()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t sub_149A0C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_149A1C()
{
  result = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 160);
  return result;
}

uint64_t sub_149A2C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  result = v1 - 65;
  v4 = *(v1 - 168);
  v3 = *(v1 - 160);
  return result;
}

uint64_t sub_149A7C()
{

  return type metadata accessor for SpecificMedCompletedLogModel();
}

uint64_t sub_149A98()
{

  return type metadata accessor for SpecificMedCompletedLogModel();
}

uint64_t sub_149AB0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 160);
  return result;
}

uint64_t HealthDataLogModel.init(snippetHeaderModel:date:unitLabel:dataValue:url:loggedButtonLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a7;
  v63 = a6;
  v64 = a5;
  v61 = a3;
  v62 = a4;
  v69 = a10;
  v70 = a8;
  v13 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v13);
  v15 = *(v14 + 64);
  sub_433C();
  __chkstk_darwin(v16);
  sub_13088();
  v66 = v17;
  v18 = sub_2440(&qword_1C5800, &unk_16F510);
  v19 = sub_4348(v18);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v61 - v25;
  type metadata accessor for SnippetHeaderModel();
  sub_8AB4();
  sub_214C(v27, v28, v29, v30);
  v31 = type metadata accessor for HealthDataLogModel();
  v32 = v31[5];
  v33 = (a9 + v31[8]);
  v34 = (a9 + v31[9]);
  v35 = v31[10];
  v36 = sub_16C11C();
  v65 = v35;
  v37 = v36;
  sub_8AB4();
  sub_214C(v38, v39, v40, v37);
  v68 = a1;
  sub_5FF8C(a1, a9);
  *(a9 + v32) = a2;
  v41 = v62;
  *v33 = v61;
  v33[1] = v41;
  *v34 = sub_94294(v64, v63 & 1);
  v34[1] = v42;
  if (a2)
  {
    sub_16D45C();
    v43 = sub_16D5CC();
    if (sub_369C(v26, 1, v43) == 1)
    {
      sub_8748(v26, &qword_1C5800, &unk_16F510);
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v49 = sub_16D5BC();
      v51 = v50;
      (*(*(v43 - 8) + 8))(v26, v43);
      v71 = v49;
      v72 = v51;
      sub_9854();
      v44 = sub_16E3FC();
      v45 = v52;
    }

    v53 = (a9 + v31[6]);
    *v53 = v44;
    v53[1] = v45;
    sub_16D46C();
    if (sub_369C(v24, 1, v43) == 1)
    {
      sub_8748(v24, &qword_1C5800, &unk_16F510);
      v46 = 0;
      v47 = 0;
    }

    else
    {
      v46 = sub_16D5BC();
      v47 = v54;
      (*(*(v43 - 8) + 8))(v24, v43);
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = (a9 + v31[6]);
    *v48 = 0;
    v48[1] = 0;
  }

  v55 = (a9 + v31[7]);
  v56 = (a9 + v31[11]);
  *v55 = v46;
  v55[1] = v47;
  v58 = v66;
  v57 = v67;
  sub_14A3C8(v67);
  sub_8748(v57, &qword_1C57F8, &unk_172510);
  sub_8748(v68, &dword_1C63F8, &qword_171800);
  sub_214C(v58, 0, 1, v37);
  result = sub_1E634(v58, a9 + v65, &qword_1C63F0, &unk_1717F0);
  v60 = v69;
  *v56 = v70;
  v56[1] = v60;
  return result;
}

uint64_t type metadata accessor for HealthDataLogModel()
{
  result = qword_1CB450;
  if (!qword_1CB450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthDataLogModel.date.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel() + 20));
}

uint64_t HealthDataLogModel.date.setter()
{
  v2 = *(sub_14B93C() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t HealthDataLogModel.dateLabel.getter()
{
  v0 = type metadata accessor for HealthDataLogModel();
  sub_20658(*(v0 + 24));
  return sub_8B9C();
}

uint64_t HealthDataLogModel.dateLabel.setter()
{
  v3 = sub_14B910();
  result = sub_66A6C(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.timeLabel.getter()
{
  v0 = type metadata accessor for HealthDataLogModel();
  sub_20658(*(v0 + 28));
  return sub_8B9C();
}

uint64_t HealthDataLogModel.timeLabel.setter()
{
  v3 = sub_14B910();
  result = sub_66A6C(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.unitLabel.getter()
{
  v0 = type metadata accessor for HealthDataLogModel();
  sub_20658(*(v0 + 32));
  return sub_8B9C();
}

uint64_t HealthDataLogModel.unitLabel.setter()
{
  v3 = sub_14B910();
  result = sub_66A6C(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.dataLabel.getter()
{
  v0 = type metadata accessor for HealthDataLogModel();
  sub_20658(*(v0 + 36));
  return sub_8B9C();
}

uint64_t HealthDataLogModel.dataLabel.setter()
{
  v3 = sub_14B910();
  result = sub_66A6C(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HealthDataLogModel.loggedLabel.getter()
{
  v0 = type metadata accessor for HealthDataLogModel();
  sub_20658(*(v0 + 44));
  return sub_8B9C();
}

uint64_t HealthDataLogModel.loggedLabel.setter()
{
  v3 = sub_14B910();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_14A3C8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_14A570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562)
              {

                return 7;
              }

              else
              {
                v13 = sub_16E6BC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_14A808(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      v3 = 1702125924;
      goto LABEL_8;
    case 3:
      v3 = 1701669236;
      goto LABEL_8;
    case 4:
      v3 = 1953066613;
      goto LABEL_8;
    case 5:
      v3 = 1635017060;
LABEL_8:
      result = v3 | 0x6562614C00000000;
      break;
    case 6:
      result = 0x68636E7550707061;
      break;
    case 7:
      result = 0x614C646567676F6CLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_14A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14A570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14A928(uint64_t a1)
{
  v2 = sub_14AC28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14A964(uint64_t a1)
{
  v2 = sub_14AC28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HealthDataLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB3E0, &qword_178640);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_14AC28();
  sub_16E77C();
  LOBYTE(v24) = 0;
  type metadata accessor for SnippetHeaderModel();
  sub_14B8C8();
  sub_14B284(v14, v15);
  sub_12C630();
  if (!v2)
  {
    v16 = type metadata accessor for HealthDataLogModel();
    v24 = *(v3 + v16[5]);
    v23[7] = 1;
    sub_16D4EC();
    sub_14B8F8();
    sub_14B284(v17, v18);
    sub_12C630();
    sub_66A40(v16[6]);
    sub_14B884(2);
    sub_66A40(v16[7]);
    sub_14B884(3);
    sub_66A40(v16[8]);
    sub_14B884(4);
    sub_66A40(v16[9]);
    sub_14B884(5);
    v19 = v16[10];
    LOBYTE(v24) = 6;
    sub_16C11C();
    sub_14B8E0();
    sub_14B284(v20, v21);
    sub_12C630();
    sub_66A40(v16[11]);
    sub_14B884(7);
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_14AC28()
{
  result = qword_1CB3E8;
  if (!qword_1CB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB3E8);
  }

  return result;
}

uint64_t HealthDataLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v78 = v7;
  v8 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  sub_13088();
  v82 = v12;
  v83 = sub_2440(&qword_1CB3F0, &qword_178648);
  sub_42F0(v83);
  v81 = v13;
  v15 = *(v14 + 64);
  sub_433C();
  __chkstk_darwin(v16);
  sub_13088();
  v87 = v17;
  v18 = type metadata accessor for HealthDataLogModel();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SnippetHeaderModel();
  sub_8AB4();
  v80 = v23;
  sub_214C(v24, v25, v26, v23);
  v79 = v19[7];
  *&v22[v79] = 0;
  v27 = &v22[v19[8]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v22[v19[9]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v22[v19[10]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v22[v19[11]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v19[12];
  v32 = sub_16C11C();
  v77 = v31;
  sub_8AB4();
  sub_214C(v33, v34, v35, v32);
  v36 = v19[13];
  v85 = v22;
  v37 = &v22[v36];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = a1;
  v39 = a1[3];
  v40 = v38[4];
  v86 = v38;
  sub_2D20(v38, v39);
  sub_14AC28();
  v41 = v84;
  sub_16E76C();
  if (v41)
  {
    v47 = v85;
  }

  else
  {
    v42 = v79;
    v84 = v27;
    v74 = v29;
    v75 = v28;
    v72 = v37;
    v73 = v30;
    LOBYTE(v89) = 0;
    sub_14B8C8();
    sub_14B284(v43, v44);
    v45 = v82;
    sub_16E5AC();
    v47 = v85;
    sub_1E634(v45, v85, &dword_1C63F8, &qword_171800);
    sub_16D4EC();
    v88 = 1;
    sub_14B8F8();
    sub_14B284(v48, v49);
    sub_16E5AC();
    *(v47 + v42) = v89;
    v50 = sub_14B8A8(2);
    v51 = v84;
    *v84 = v50;
    v51[1] = v52;
    v53 = sub_14B8A8(3);
    v54 = v75;
    *v75 = v53;
    v54[1] = v55;
    v56 = sub_14B8A8(4);
    v57 = v74;
    *v74 = v56;
    v57[1] = v58;
    v59 = sub_14B8A8(5);
    v60 = v73;
    *v73 = v59;
    v60[1] = v61;
    LOBYTE(v89) = 6;
    sub_14B8E0();
    sub_14B284(v62, v63);
    v64 = v78;
    sub_16E5AC();
    sub_1E634(v64, v47 + v77, &qword_1C63F0, &unk_1717F0);
    v65 = sub_14B8A8(7);
    v67 = v66;
    v68 = sub_14B92C();
    v69(v68);
    v70 = v72;
    *v72 = v65;
    v70[1] = v67;
    sub_14B190(v47, v76);
  }

  sub_2D64(v86);
  return sub_14B134(v47);
}

uint64_t sub_14B134(uint64_t a1)
{
  v2 = type metadata accessor for HealthDataLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14B190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDataLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14B310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&dword_1C63F8, &qword_171800);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_369C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2440(&qword_1C63F0, &unk_1717F0);
    v8 = a1 + *(a3 + 40);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_14B418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&dword_1C63F8, &qword_171800);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
    v10 = a1 + *(a4 + 40);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_14B4FC()
{
  sub_14B624(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_14B624(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_BBD1C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_14B624(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_14B624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HealthDataLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14B744);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_14B780()
{
  result = qword_1CB4A0;
  if (!qword_1CB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4A0);
  }

  return result;
}

unint64_t sub_14B7D8()
{
  result = qword_1CB4A8;
  if (!qword_1CB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4A8);
  }

  return result;
}

unint64_t sub_14B830()
{
  result = qword_1CB4B0;
  if (!qword_1CB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4B0);
  }

  return result;
}

uint64_t sub_14B884@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_16E61C();
}

uint64_t sub_14B8A8@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 128);

  return sub_16E58C();
}

uint64_t sub_14B910()
{

  return type metadata accessor for HealthDataLogModel();
}

uint64_t sub_14B92C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_14B93C()
{

  return type metadata accessor for HealthDataLogModel();
}

uint64_t sub_14B964()
{
  sub_3BC6C();

  return sub_16C33C();
}

uint64_t sub_14B9B8(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v3 = sub_16DBEC();
  v2[79] = v3;
  v4 = *(v3 - 8);
  v2[80] = v4;
  v5 = *(v4 + 64) + 15;
  v2[81] = swift_task_alloc();

  return _swift_task_switch(sub_14BA7C, 0, 0);
}

uint64_t sub_14BA7C()
{
  v44 = v0;
  v1 = *(v0[78] + 248);
  sub_16D78C();
  sub_14D2EC();
  v2 = sub_17970();
  v3(v2);
  v4 = v0[58];
  sub_2D20(v0 + 54, v0[57]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 54);
LABEL_4:
    v9 = v0[78];
    v10 = v0[77];
    sub_14BDE4();
    goto LABEL_5;
  }

  sub_14D2EC();
  v5 = sub_17970();
  v6(v5);
  v7 = v0[63];
  sub_2D20(v0 + 59, v0[62]);
  sub_17970();
  v8 = sub_16C3FC();
  sub_2D64(v0 + 59);
  sub_2D64(v0 + 54);
  if (v8)
  {
    goto LABEL_4;
  }

  sub_14D2EC();
  v14 = sub_17970();
  v15(v14);
  v16 = v0[68];
  sub_2D20(v0 + 64, v0[67]);
  sub_17970();
  v17 = sub_16C41C();
  sub_2D64(v0 + 64);
  if ((v17 & 1) == 0)
  {
    v20 = v0[81];
    v21 = v0[80];
    v22 = v0[79];
    v23 = v0[78];
    v24 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v26 = *(v21 + 16);
    v25 = v21 + 16;
    v26(v20, v24, v22);
    sub_14D1D8(v23, (v0 + 2));
    v27 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[81];
    v31 = v0[80];
    v32 = v0[79];
    if (v29)
    {
      v33 = sub_8BD8();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      v35 = v0[6];
      v36 = v0[7];
      sub_2D20(v0 + 3, v35);
      v42 = v30;
      (*(v36 + 8))(v35, v36);
      sub_2440(&qword_1C8B08, &unk_1744B0);
      v37 = sub_16E1EC();
      v39 = v38;
      sub_3BCC0((v0 + 2));
      v40 = sub_3AB7C(v37, v39, &v43);

      *(v33 + 4) = v40;
      _os_log_impl(&def_259DC, v27, v25, "Failed to execute PunchoutFlow (unsupported device: %s.", v33, 0xCu);
      sub_2D64(v34);
      sub_8A2C();
      sub_8A2C();

      (*(v31 + 8))(v42, v32);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      sub_3BCC0((v0 + 2));
    }

    v41 = v0[77];
    sub_8284(v0[78] + 88, (v0 + 34));
    sub_82E0();
    sub_16C4EC();
    sub_8334((v0 + 34));
    goto LABEL_6;
  }

  v18 = v0[78];
  v19 = v0[77];
  sub_14C6E8();
LABEL_5:
  sub_16C4FC();

LABEL_6:
  v11 = v0[81];

  v12 = v0[1];

  return v12();
}

uint64_t sub_14BDE4()
{
  v1 = v0;
  v2 = sub_16DBEC();
  v3 = sub_42F0(v2);
  v107 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_887C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v103 = &v97 - v11;
  v102 = sub_16D7AC();
  v12 = sub_8B38(v102);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_4304();
  v101 = v16 - v15;
  v100 = sub_16D6BC();
  v17 = sub_8B38(v100);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_4304();
  v99 = v21 - v20;
  v22 = sub_2440(&qword_1C5800, &unk_16F510);
  v23 = sub_4348(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v97 - v26;
  v28 = sub_2440(&qword_1C6850, &unk_172440);
  v29 = sub_4348(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_887C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v104 = &v97 - v36;
  v37 = sub_2440(&qword_1C57F8, &unk_172510);
  v38 = sub_4348(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v97 - v41;
  v43 = sub_16BE9C();
  v44 = sub_42F0(v43);
  v106 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_887C();
  v98 = v48 - v49;
  __chkstk_darwin(v50);
  v52 = &v97 - v51;
  v53 = *v1;
  sub_160744(*v1, v42);
  if (sub_369C(v42, 1, v43) == 1)
  {
    sub_8748(v42, &qword_1C57F8, &unk_172510);
LABEL_5:
    v55 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v107 + 16))(v9, v55, v2);
    sub_14D1D8(v1, v110);
    v56 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    if (os_log_type_enabled(v56, v57))
    {
      sub_8BD8();
      v58 = sub_4B33C();
      v109 = v58;
      *v42 = 136315138;
      sub_140650(v110[0]);
      v60 = v59;
      v105 = v2;
      v62 = v61;
      sub_3BCC0(v110);
      v63 = sub_3AB7C(v60, v62, &v109);

      *(v42 + 4) = v63;
      sub_14D344(&def_259DC, v56, v34, "Failed to create deepLink for dataType: %s.");
      sub_2D64(v58);
      sub_8A2C();
      sub_8A2C();

      v64 = sub_14D314();
      v66 = v105;
    }

    else
    {

      sub_3BCC0(v110);
      v64 = sub_14D314();
      v66 = v2;
    }

    v65(v64, v66);
    sub_8284(v1 + 88, v110);
    sub_82E0();
    v67 = sub_16C32C();
    sub_8334(v110);
    return v67;
  }

  v105 = v2;
  (*(v106 + 32))(v52, v42, v43);
  sub_16D74();
  v54 = sub_16E14C();
  v42 = sub_1730C(v53, v54);

  if (v42 == 205)
  {
    (*(v106 + 8))(v52, v43);
    v2 = v105;
    goto LABEL_5;
  }

  v68 = sub_2D20((v1 + 48), *(v1 + 72));
  v69 = v68[1];
  v70 = v68[2];
  v71 = v68[3];
  sub_15081C(*v68);
  sub_208C0(v42);
  sub_16E23C();

  v72 = sub_16D5CC();
  sub_214C(v27, 0, 1, v72);
  v73 = sub_16D66C();
  v74 = v104;
  sub_1913C(v27, v73);

  sub_8748(v27, &qword_1C5800, &unk_16F510);
  v75 = *(v1 + 32);
  v76 = *(v1 + 40);
  sub_2D20((v1 + 8), v75);
  (*(v76 + 16))(v110, v75, v76);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_172320;
  sub_3DE54(v74, v34);
  sub_8388(v1 + 8, v108);
  v78 = v99;
  sub_16D6AC();
  sub_AABBC(&qword_1C6860, &type metadata accessor for OutputFlow);
  v79 = sub_16C32C();
  sub_AAB64(v78, &type metadata accessor for OutputFlow);
  *(v77 + 32) = v79;
  v80 = *(v1 + 32);
  v81 = *(v1 + 40);
  sub_2D20((v1 + 8), v80);
  (*(v81 + 16))(v108, v80, v81);
  v82 = v106;
  v83 = *(v106 + 16);
  v100 = v52;
  v83(v98, v52, v43);
  v84 = v101;
  sub_385D8();
  sub_16D79C();
  sub_AABBC(&qword_1C6858, &type metadata accessor for AppPunchOutFlow);
  v85 = sub_16C32C();
  sub_AAB64(v84, &type metadata accessor for AppPunchOutFlow);
  *(v77 + 40) = v85;
  v86 = sub_16D6DC();
  swift_allocObject();
  v87 = sub_16D6CC();
  v88 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v89 = v107;
  sub_14D338();
  v90 = v103;
  v91 = v105;
  v92(v103, v88, v105);
  v93 = sub_16DBDC();
  v94 = sub_16E36C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v102 = v86;
    *v95 = 0;
    _os_log_impl(&def_259DC, v93, v94, "Preparing SequenceFlow for Output and AppPunchOut.", v95, 2u);
    sub_8A2C();
  }

  (*(v89 + 8))(v90, v91);
  v108[0] = v87;
  sub_AABBC(&qword_1C6868, &type metadata accessor for SequenceFlow);
  v67 = sub_16C32C();
  sub_8748(v104, &qword_1C6850, &unk_172440);
  (*(v82 + 8))(v100, v43);

  return v67;
}

uint64_t *sub_14C6E8()
{
  v1 = v0;
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v96 = v7 - v6;
  v8 = sub_16DBEC();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_887C();
  v16 = v14 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v21 = __chkstk_darwin(v18);
  v95 = &v93 - v22;
  __chkstk_darwin(v21);
  v24 = &v93 - v23;
  v25 = *v1;
  sub_16D74();
  v26 = sub_16E14C();
  LODWORD(v97) = v25;
  v27 = sub_1730C(v25, v26);

  if (v27 == 205)
  {
    v28 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_14D338();
    v29(v16, v28, v8);
    sub_14D1D8(v1, &v100);
    v30 = sub_16DBDC();
    sub_16E37C();
    sub_14D32C();
    v32 = v11;
    if (os_log_type_enabled(v30, v31))
    {
      sub_8BD8();
      v33 = sub_4B33C();
      v94 = v8;
      v99[0] = v33;
      *v1 = 136315138;
      sub_140650(v100);
      v35 = v34;
      v37 = v36;
      sub_3BCC0(&v100);
      v38 = sub_3AB7C(v35, v37, v99);

      *(v1 + 2) = v38;
      sub_14D344(&def_259DC, v30, v20, "%s does not have a HealthKitIdentifier - cannot launch Watch app.");
      sub_14D2B8();
      sub_8A2C();

      (*(v32 + 8))(v16, v94);
    }

    else
    {

      sub_3BCC0(&v100);
      (*(v11 + 8))(v16, v8);
    }

    sub_8284((v1 + 44), &v100);
    sub_82E0();
    sub_16C32C();
    v52 = sub_14D320();
    sub_8334(v52);
  }

  else
  {
    v39 = v8;
    if (sub_14CEE4(v27) == 14)
    {
      v40 = sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      v41 = v11;
      sub_14D338();
      v42(v20, v40, v8);
      sub_14D1D8(v1, &v100);
      v43 = sub_16DBDC();
      v44 = sub_16E37C();
      if (os_log_type_enabled(v43, v44))
      {
        sub_8BD8();
        v45 = sub_4B33C();
        v94 = v8;
        v99[0] = v45;
        *v1 = 136315138;
        sub_140650(v100);
        v47 = v46;
        v48 = v41;
        v50 = v49;
        sub_3BCC0(&v100);
        v51 = sub_3AB7C(v47, v50, v99);

        *(v1 + 2) = v51;
        sub_14D344(&def_259DC, v43, v44, "Failed to determine watch app for dataType: %s - it's an unsupported datatype on Watch. Returning DataTypePunchoutFlow.");
        sub_14D2B8();
        sub_8A2C();

        (*(v48 + 8))(v20, v94);
      }

      else
      {

        sub_3BCC0(&v100);
        (*(v11 + 8))(v20, v8);
      }

      sub_8388((v1 + 4), v101);
      sub_8388((v1 + 24), v102);
      sub_8284((v1 + 44), v103);
      LOWORD(v100) = v97;
      v104 = 0;
      sub_3DF60();
      sub_16C32C();
      v64 = sub_14D320();
      sub_92798(v64);
    }

    else
    {
      v53 = sub_16D67C();
      v54 = sub_16DBBC();
      v55 = v11;
      v56 = (v11 + 16);
      if (v53)
      {
        sub_385D8();
        swift_beginAccess();
        (*v56)(v24, v54, v39);
        v57 = sub_16DBDC();
        sub_16E36C();
        sub_14D32C();
        if (os_log_type_enabled(v57, v58))
        {
          sub_8BD8();
          v97 = v1;
          v59 = sub_4B33C();
          v94 = v39;
          v100 = v59;
          *v1 = 136315138;
          v60 = sub_16D69C();
          v62 = v55;
          v63 = sub_3AB7C(v60, v61, &v100);

          *(v1 + 2) = v63;
          sub_14D344(&def_259DC, v57, v54, "Will punch out to app: %s.");
          sub_14D2B8();
          v1 = v97;
          sub_8A2C();

          (*(v62 + 8))(v24, v94);
        }

        else
        {

          v77 = sub_14D314();
          v78(v77, v39);
        }

        v79 = v1;
        v80 = *(v1 + 4);
        v81 = *(v1 + 5);
        sub_2D20(v79 + 1, v80);
        (*(v81 + 24))(v98, v80, v81);
        sub_16D6EC();
        sub_14D210();
        sub_16C32C();
        v82 = sub_14D320();
        sub_14D264(v82);
      }

      else
      {
        sub_385D8();
        swift_beginAccess();
        v65 = v95;
        (*v56)(v95, v54, v39);
        sub_14D1D8(v1, &v100);
        v66 = sub_16DBDC();
        v67 = sub_16E37C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = sub_8BD8();
          v69 = swift_slowAlloc();
          v94 = v39;
          v70 = v65;
          v99[0] = v69;
          *v68 = 136315138;
          sub_140650(v100);
          v72 = v71;
          v73 = v55;
          v75 = v74;
          sub_3BCC0(&v100);
          v76 = sub_3AB7C(v72, v75, v99);

          *(v68 + 4) = v76;
          _os_log_impl(&def_259DC, v66, v67, "%s doesn't have the appropriate Watch app installed.", v68, 0xCu);
          sub_14D2B8();
          sub_8A2C();

          (*(v73 + 8))(v70, v94);
        }

        else
        {

          sub_3BCC0(&v100);
          v83 = sub_14D314();
          v84(v83, v39);
        }

        sub_8388((v1 + 4), &v100);
        v85 = sub_16C58C();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        v88 = sub_16C57C();
        v102[2] = v85;
        v102[3] = &protocol witness table for ResponseFactory;
        v101[4] = v88;
        type metadata accessor for WellnessCATsSimple();
        sub_16D62C();
        v89 = sub_16D5FC();
        type metadata accessor for WellnessCATs();
        sub_16D62C();
        v90 = sub_16D58C();
        v102[4] = v89;
        v103[0] = v90;
        sub_89600();
        sub_16C32C();
        v91 = sub_14D320();
        sub_9256C(v91);
      }
    }
  }

  return &v100;
}

uint64_t sub_14CEE4(unsigned __int8 a1)
{
  v2 = sub_16DBEC();
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v10 = v9 - v8;
  if (a1 - 69 <= 0x18)
  {
    v13 = 1 << (a1 - 69);
    if ((v13 & 0x1700000) != 0)
    {
      return 6;
    }

    if ((v13 & 0x80401) != 0)
    {
      return 9;
    }
  }

  v11 = a1 - 155;
  if (v11 > 0x2C)
  {
    goto LABEL_11;
  }

  if (((1 << (a1 + 101)) & 0x100020000001) != 0)
  {
    return 6;
  }

  if (((1 << (a1 + 101)) & 0x100010) != 0)
  {
    return 2;
  }

  if (v11 == 15)
  {
    return 0;
  }

LABEL_11:
  if (!a1 || a1 == 4)
  {
    return 6;
  }

  if (a1 == 60)
  {
    return 4;
  }

  v14 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_14D338();
  v15(v10, v14, v2);
  v16 = sub_16DBDC();
  v17 = sub_16E37C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_8BD8();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    v20 = sub_208C0(a1);
    v22 = sub_3AB7C(v20, v21, &v23);

    *(v18 + 4) = v22;
    _os_log_impl(&def_259DC, v16, v17, "No known watch app for dataType: %s.", v18, 0xCu);
    sub_2D64(v19);
    sub_8A2C();
    sub_8A2C();
  }

  (*(v5 + 8))(v10, v2);
  return 14;
}

uint64_t sub_14D140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_14B9B8(a1);
}

unint64_t sub_14D210()
{
  result = qword_1CB4B8;
  if (!qword_1CB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4B8);
  }

  return result;
}

uint64_t sub_14D2B8()
{
  sub_2D64(v0);
}

void *sub_14D2EC()
{
  v1 = v0[5];
  result = sub_2D20(v0 + 1, v0[4]);
  v3 = *(v1 + 8);
  return result;
}

void sub_14D344(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_14D35C()
{
  v2[3] = &type metadata for WellnessFeatureFlagsKey;
  v2[4] = sub_3736C();
  LOBYTE(v2[0]) = 4;
  v0 = sub_16C86C();
  sub_2D64(v2);
  return v0 & 1;
}

_BYTE *storeEnumTagSinglePayload for WellnessFeatureFlagsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14D480);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_14D4BC()
{
  result = qword_1CB4C0;
  if (!qword_1CB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB4C0);
  }

  return result;
}

const char *sub_14D524(char a1)
{
  result = "wellness_scribe";
  switch(a1)
  {
    case 1:
      result = "wellness_medications";
      break;
    case 2:
      result = "wellness_serverFallback";
      break;
    case 3:
      result = "overrideOnDeviceCheck";
      break;
    case 4:
      result = "wellness_smart";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14D5F0(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_16C80C();
  v7 = (*(*(v6 - 8) + 16))(v5, a1, v6);
  v8 = &v5[v2[5]];
  sub_92E0C(v7);
  v9 = &v5[v2[6]];
  v9[3] = &type metadata for WellnessCATProvider;
  v9[4] = &off_1BD5D8;
  v10 = swift_allocObject();
  *v9 = v10;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  v11 = &v5[v2[7]];
  sub_92E10();
  sub_14D7EC();
  v12 = sub_16C32C();
  sub_14D844(v5);
  return v12;
}

uint64_t sub_14D74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14D5E0();
  *a1 = result;
  return result;
}

uint64_t sub_14D79C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_14D7EC()
{
  result = qword_1C8B50;
  if (!qword_1C8B50)
  {
    type metadata accessor for MainFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B50);
  }

  return result;
}

uint64_t sub_14D844(uint64_t a1)
{
  v2 = type metadata accessor for MainFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14D8B0()
{
  sub_92614();

  return sub_16C33C();
}

uint64_t sub_14D904()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[10] = v7;
  sub_888C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[14] = v11;
  sub_888C(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_14DA6C, 0, 0);
}

uint64_t sub_14DA6C()
{
  sub_8A88();
  v1 = *sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_14DB08;

  return sub_7ADE8();
}

uint64_t sub_14DB08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_14DC2C;
  }

  else
  {
    *(v4 + 144) = a1;
    v8 = sub_1BE20;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_14DC2C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_16DBBC();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E37C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Failed to get unsupportedDevice pattern result", v7, 2u);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v11 = v0[5];

  (*(v9 + 8))(v8, v10);
  sub_16C50C();
  v12 = v0[16];
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_14DD94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_14D904();
}

uint64_t GenericButtonSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s18WellnessFlowPlugin20GenericButtonSnippetV14_actionHandler33_C4F64AB2145C6C08CB305FFD78E00F710F2UI06ActionH0Vvpfi_0();
  v4 = type metadata accessor for GenericButtonSnippet();
  return sub_14E7D4(a1, a2 + *(v4 + 20), type metadata accessor for GenericButtonModel);
}

uint64_t type metadata accessor for GenericButtonSnippet()
{
  result = qword_1CB5C8;
  if (!qword_1CB5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_14DECC()
{
  v2 = sub_16BFAC();
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_3E204();
  v8 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v9 = v0 + *(type metadata accessor for GenericButtonSnippet() + 20);
  v10 = type metadata accessor for GenericButtonModel();
  sub_16BE6C(*(v10 + 20));
  v12 = v11;
  [v8 setPunchOutUri:v11];

  v13 = v8;
  sub_16BF9C();
  v14 = sub_16BF6C();
  v16 = v15;
  (*(v5 + 8))(v1, v2);
  sub_613B8(v14, v16, v13);

  return v13;
}

uint64_t GenericButtonSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v24[1] = a1;
  v24[0] = sub_16E07C();
  v4 = sub_42F0(v24[0]);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_3E204();
  v9 = type metadata accessor for GenericButtonSnippet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_2440(&qword_1C5830, &qword_178B90);
  v13 = sub_42F0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = v24 - v18;
  sub_14E658(v1, v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_14E7D4(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for GenericButtonSnippet);
  v24[4] = v3;
  sub_16DFEC();
  sub_16DDDC();
  sub_14E924();
  sub_14E988();
  v22 = v24[0];
  sub_16DF7C();
  (*(v6 + 8))(v2, v22);
  return (*(v15 + 8))(v19, v12);
}

uint64_t sub_14E290()
{
  v0 = sub_2440(&qword_1CB600, &qword_178C28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_2440(&qword_1CB608, &qword_178C30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_2440(&qword_1CB610, &qword_178C38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_16C15C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440(&qword_1CB618, &unk_178C40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_16F530;
  v18 = sub_16C19C();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for Command;
  v19 = sub_9910((v17 + 32));
  *v19 = sub_14DECC();
  *(v19 + 8) = 1;
  (*(*(v18 - 8) + 104))(v19, enum case for Command.aceCommand(_:), v18);
  sub_16C16C();
  sub_16E04C();
  v20 = sub_16E0FC();
  if (sub_369C(v11, 1, v20) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_1B918(v11, &qword_1CB610, &qword_178C38);
  }

  else
  {
    (*(v13 + 16))(v7, v16, v12);
    sub_214C(v7, 0, 1, v12);
    v22 = enum case for InteractionType.buttonTapped(_:);
    v23 = sub_16E09C();
    (*(*(v23 - 8) + 104))(v3, v22, v23);
    sub_214C(v3, 0, 1, v23);
    sub_16E0EC();
    sub_1B918(v3, &qword_1CB600, &qword_178C28);
    sub_1B918(v7, &qword_1CB608, &qword_178C30);
    (*(v13 + 8))(v16, v12);
    return (*(*(v20 - 8) + 8))(v11, v20);
  }
}

uint64_t sub_14E658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericButtonSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14E6BC()
{
  v1 = (type metadata accessor for GenericButtonSnippet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_16E06C();
  sub_1BA5C(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[7];
  v8 = *(v7 + 8);

  v9 = *(type metadata accessor for GenericButtonModel() + 20);
  v10 = sub_16BE9C();
  sub_1BA5C(v10);
  (*(v11 + 8))(v7 + v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_14E7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14E83C()
{
  v0 = *(*(type metadata accessor for GenericButtonSnippet() - 8) + 80);

  return sub_14E290();
}

uint64_t sub_14E89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenericButtonSnippet() + 20));
  v8 = *v3;
  v9 = v3[1];
  sub_9854();

  result = sub_16DF0C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_14E924()
{
  result = qword_1C5848;
  if (!qword_1C5848)
  {
    sub_9790(&qword_1C5830, &qword_178B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5848);
  }

  return result;
}

unint64_t sub_14E988()
{
  result = qword_1CB568;
  if (!qword_1CB568)
  {
    sub_16E07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB568);
  }

  return result;
}

uint64_t sub_14EA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16E06C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for GenericButtonModel();
    v8 = a1 + *(a3 + 20);
  }

  return sub_369C(v8, a2, v7);
}

uint64_t sub_14EAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_16E06C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for GenericButtonModel();
    v10 = a1 + *(a4 + 20);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_14EB68()
{
  result = sub_16E06C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GenericButtonModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_14EBEC()
{
  sub_9790(&qword_1C5830, &qword_178B90);
  sub_16E07C();
  sub_14E924();
  sub_14E988();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CycleTrackingLogModel.init(date:loggedLabel:cycleTrackingType:snippetHeaderModel:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a2;
  v42 = a3;
  v14 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v14);
  v16 = *(v15 + 64);
  sub_433C();
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v20);
  v22 = *(v21 + 64);
  sub_433C();
  __chkstk_darwin(v23);
  v25 = &v40 - v24;
  v43 = sub_16C11C();
  sub_214C(a8, 1, 1, v43);
  if (a1)
  {
    v40 = a5;
    v26 = a4;
    sub_16D45C();
    v27 = sub_16D5CC();
    if (sub_369C(v25, 1, v27) == 1)
    {
      sub_8748(v25, &qword_1C5800, &unk_16F510);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v30 = sub_16D5BC();
      v32 = v31;
      (*(*(v27 - 8) + 8))(v25, v27);
      v44 = v30;
      v45 = v32;
      sub_9854();
      v28 = sub_16E3FC();
      v29 = v33;
    }

    a4 = v26;
    a5 = v40;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v34 = type metadata accessor for CycleTrackingLogModel();
  v35 = (a8 + v34[5]);
  *v35 = v28;
  v35[1] = v29;
  v36 = (a8 + v34[6]);
  v37 = v42;
  *v36 = v41;
  v36[1] = v37;
  v38 = (a8 + v34[7]);
  *v38 = a4;
  v38[1] = a5;
  sub_86B0(a6, a8 + v34[8], &dword_1C63F8, &qword_171800);
  sub_86B0(a7, a8 + v34[9], &qword_1C57F8, &unk_172510);
  sub_14F138(a7);

  sub_8748(a7, &qword_1C57F8, &unk_172510);
  sub_8748(a6, &dword_1C63F8, &qword_171800);
  sub_214C(v19, 0, 1, v43);
  return sub_5FFFC(v19, a8);
}

uint64_t type metadata accessor for CycleTrackingLogModel()
{
  result = qword_1CB690;
  if (!qword_1CB690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CycleTrackingLogModel.dateLabel.getter()
{
  v0 = type metadata accessor for CycleTrackingLogModel();
  sub_20658(*(v0 + 20));
  return sub_8B9C();
}

uint64_t CycleTrackingLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CycleTrackingLogModel() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CycleTrackingLogModel.loggedLabel.getter()
{
  v0 = type metadata accessor for CycleTrackingLogModel();
  sub_20658(*(v0 + 24));
  return sub_8B9C();
}

uint64_t CycleTrackingLogModel.cycleTrackingType.getter()
{
  v0 = type metadata accessor for CycleTrackingLogModel();
  sub_20658(*(v0 + 28));
  return sub_8B9C();
}

uint64_t sub_14F138(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_14F2E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000000181450 == a2;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_16E6BC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_14F4EC(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      result = 0x6562614C65746164;
      break;
    case 2:
      result = 0x614C646567676F6CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14F5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14F2E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14F600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14F4E4();
  *a1 = result;
  return result;
}

uint64_t sub_14F628(uint64_t a1)
{
  v2 = sub_14F914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14F664(uint64_t a1)
{
  v2 = sub_14F914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CycleTrackingLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB620, &qword_178C50);
  sub_42F0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_14F914();
  sub_16E77C();
  v33[15] = 0;
  sub_16C11C();
  sub_150708();
  sub_150048(v14, v15);
  sub_12E550();
  if (!v2)
  {
    v16 = type metadata accessor for CycleTrackingLogModel();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v33[14] = 1;
    sub_12E500();
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    v33[13] = 2;
    sub_12E500();
    v23 = (v3 + v16[7]);
    v24 = *v23;
    v25 = v23[1];
    v33[12] = 3;
    sub_12E500();
    v26 = v16[8];
    v33[11] = 4;
    type metadata accessor for SnippetHeaderModel();
    sub_1506F0();
    sub_150048(v27, v28);
    sub_12E550();
    v29 = v16[9];
    v33[10] = 5;
    sub_16BE9C();
    sub_1506D8();
    sub_150048(v30, v31);
    sub_12E550();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_14F914()
{
  result = qword_1CB628;
  if (!qword_1CB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB628);
  }

  return result;
}

uint64_t CycleTrackingLogModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v65 - v7;
  v9 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v9);
  v11 = *(v10 + 64);
  sub_433C();
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v15);
  v17 = *(v16 + 64);
  sub_433C();
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_2440(&qword_1CB630, &qword_178C58);
  v22 = sub_42F0(v21);
  v67 = v23;
  v68 = v22;
  v25 = *(v24 + 64);
  sub_433C();
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  v71 = type metadata accessor for CycleTrackingLogModel();
  v29 = sub_8B38(v71);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_16C11C();
  v35 = v34;
  v36 = v33;
  sub_214C(v33, 1, 1, v34);
  v37 = a1[3];
  v38 = a1[4];
  v72 = a1;
  v39 = sub_2D20(a1, v37);
  sub_14F914();
  v69 = v28;
  v40 = v70;
  sub_16E76C();
  if (!v40)
  {
    v70 = v14;
    v65 = v8;
    v78 = 0;
    sub_150708();
    sub_150048(v41, v42);
    sub_16E5AC();
    sub_5FFFC(v20, v36);
    v77 = 1;
    v46 = sub_16E58C();
    v47 = v71;
    v48 = (v36 + v71[5]);
    *v48 = v46;
    v48[1] = v49;
    v76 = 2;
    v50 = sub_16E58C();
    v51 = (v36 + v47[6]);
    *v51 = v50;
    v51[1] = v52;
    v75 = 3;
    v53 = sub_16E58C();
    v54 = (v36 + v47[7]);
    *v54 = v53;
    v54[1] = v55;
    type metadata accessor for SnippetHeaderModel();
    v74 = 4;
    sub_1506F0();
    sub_150048(v56, v57);
    v58 = v70;
    sub_150730();
    sub_86FC(v58, v36 + v47[8], &dword_1C63F8, &qword_171800);
    sub_16BE9C();
    v73 = 5;
    sub_1506D8();
    sub_150048(v59, v60);
    v61 = v65;
    sub_150730();
    v62 = sub_1506C8();
    v63(v62);
    sub_86FC(v61, v36 + v47[9], &qword_1C57F8, &unk_172510);
    sub_14FEF8(v36, v66);
    sub_2D64(v72);
    return sub_14FF5C(v36);
  }

  sub_150720();
  v43 = v71;
  sub_2D64(v72);
  sub_8748(v36, &qword_1C63F0, &unk_1717F0);

  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_5;
    }

LABEL_8:
    v45 = *(v36 + v43[7] + 8);

    if (!v39)
    {
      return result;
    }

    return sub_8748(v36 + v43[8], &dword_1C63F8, &qword_171800);
  }

  v44 = *(v36 + v43[6] + 8);

  if (v37)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v39)
  {
    return sub_8748(v36 + v43[8], &dword_1C63F8, &qword_171800);
  }

  return result;
}

uint64_t sub_14FEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleTrackingLogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FF5C(uint64_t a1)
{
  v2 = type metadata accessor for CycleTrackingLogModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_150048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1500D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_369C(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v14 = sub_2440(&dword_1C63F8, &qword_171800);
    v15 = sub_436C(v14);
    if (*(v16 + 84) == a2)
    {
      v9 = v15;
      v17 = a3[8];
    }

    else
    {
      v9 = sub_2440(&qword_1C57F8, &unk_172510);
      v17 = a3[9];
    }

    v10 = a1 + v17;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[5] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_150228(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  result = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[5] + 8) = a2;
      return result;
    }

    v13 = sub_2440(&dword_1C63F8, &qword_171800);
    v14 = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[8];
    }

    else
    {
      v11 = sub_2440(&qword_1C57F8, &unk_172510);
      v16 = a4[9];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

void sub_150358()
{
  sub_150468(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v0 <= 0x3F)
  {
    sub_BBD1C();
    if (v1 <= 0x3F)
    {
      sub_150468(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v2 <= 0x3F)
      {
        sub_150468(319, &unk_1C8BE8, &type metadata accessor for URL);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_150468(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CycleTrackingLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x150588);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1505C4()
{
  result = qword_1CB6D8;
  if (!qword_1CB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6D8);
  }

  return result;
}

unint64_t sub_15061C()
{
  result = qword_1CB6E0;
  if (!qword_1CB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6E0);
  }

  return result;
}

unint64_t sub_150674()
{
  result = qword_1CB6E8;
  if (!qword_1CB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6E8);
  }

  return result;
}

uint64_t sub_150730()
{
  v2 = *(v0 - 112);

  return sub_16E5AC();
}

__n128 sub_150758(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_150764(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1507B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_15081C(uint64_t a1)
{
  v2 = sub_16D63C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_15095C();
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v4 = sub_16D58C();
  }

  return v4;
}

uint64_t sub_1508BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_16D63C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_15095C();
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    type metadata accessor for WellnessUnsupportedCATs();
    sub_16D62C();
    v7 = sub_16D58C();
  }

  return v7;
}

uint64_t sub_15097C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1509BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_150A24()
{
  sub_83FC8();

  return sub_16C33C();
}

uint64_t sub_150A78()
{
  sub_8A88();
  v1[27] = v2;
  v1[28] = v0;
  v3 = type metadata accessor for GenericButtonModel();
  v1[29] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[30] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[31] = sub_8BC0();
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v9);
  v11 = *(v10 + 64);
  v1[32] = sub_8BC0();
  v12 = sub_16BE9C();
  v1[33] = v12;
  sub_888C(v12);
  v1[34] = v13;
  v15 = *(v14 + 64);
  v1[35] = sub_8BC0();
  v16 = sub_16C46C();
  v1[36] = v16;
  sub_888C(v16);
  v1[37] = v17;
  v19 = *(v18 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v20 = sub_16C7BC();
  v1[40] = v20;
  sub_888C(v20);
  v1[41] = v21;
  v23 = *(v22 + 64);
  v1[42] = sub_8BC0();
  v24 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v1[43] = sub_8BC0();
  v27 = sub_17960();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_150C70()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 224);
  v3 = *(v2 + 88);
  v4 = *v2;
  *(v0 + 408) = *v2;
  sub_208C0(v4);
  sub_16E23C();

  v5 = sub_16D5CC();
  sub_214C(v1, 0, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 352) = v6;
  *v6 = v0;
  v6[1] = sub_150D54;
  v7 = *(v0 + 344);

  return sub_166098();
}

uint64_t sub_150D54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 352);
  *v6 = *v2;

  v8 = *(v4 + 344);
  if (v1)
  {

    sub_C878(v8, &qword_1C5800, &unk_16F510);
    v9 = sub_151760;
  }

  else
  {
    *(v5 + 360) = a1;
    sub_C878(v8, &qword_1C5800, &unk_16F510);
    v9 = sub_150EC0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_150EC0()
{
  v1 = *(v0 + 360);
  *(v0 + 368) = v1;
  v2 = *(v0 + 336);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  if (v1)
  {
    v7 = [v1 catId];
    sub_16E1BC();
  }

  v8 = *(v0 + 336);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 248);
  v12 = *(v0 + 408);
  sub_16C76C();
  v13 = sub_16BD9C();
  sub_214C(v11, 1, 1, v13);
  sub_12093C(v12, v11, v10);
  sub_C878(v11, &qword_1C5690, &dword_16F320);
  if (sub_369C(v10, 1, v9) == 1)
  {
    sub_C878(*(v0 + 256), &qword_1C57F8, &unk_172510);
    goto LABEL_5;
  }

  v29 = *(v0 + 224);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v30 = v29[5];
  sub_2D20(v29 + 1, v29[4]);
  v31 = *(v30 + 8);
  v32 = sub_42BC();
  v33(v32);
  v34 = *(v0 + 88);
  sub_2D20((v0 + 56), *(v0 + 80));
  sub_42BC();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 56));
    goto LABEL_12;
  }

  v35 = v29[5];
  sub_2D20(v29 + 1, v29[4]);
  v36 = *(v35 + 8);
  v37 = sub_42BC();
  v38(v37);
  v39 = *(v0 + 128);
  sub_2D20((v0 + 96), *(v0 + 120));
  sub_42BC();
  v40 = sub_16C3FC();
  sub_2D64((v0 + 96));
  sub_2D64((v0 + 56));
  if (v40)
  {
LABEL_12:
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 264);
    v45 = *(v0 + 232);
    v44 = *(v0 + 240);
    v46 = *(v0 + 224);
    v47 = *(v46 + 96);
    v48 = sub_151E90();
    v50 = v49;
    (*(v42 + 16))(v44 + *(v45 + 20), v41, v43);
    *v44 = v48;
    v44[1] = v50;
    sub_8388(v46 + 48, v0 + 136);
    v51 = *(v0 + 160);
    v52 = *(v0 + 168);
    sub_2D20((v0 + 136), v51);
    *(v0 + 200) = type metadata accessor for WellnessSnippets();
    *(v0 + 208) = sub_17548();
    v53 = sub_9910((v0 + 176));
    sub_175A0(v44, v53);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v16 = sub_38DA0();
    *(v0 + 376) = v16;
    *(v16 + 16) = xmmword_170F70;
    if (v1)
    {
      v54 = v16;
      *(v16 + 32) = v1;
      v55 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
      v56 = v1;
      swift_task_alloc();
      sub_179E8();
      *(v0 + 384) = v57;
      *v57 = v58;
      v57[1] = sub_15137C;
      v19 = *(v0 + 336);
      v16 = *(v0 + 216);
      v17 = v0 + 176;
      v18 = v54;
      v20 = v51;
      v21 = v52;

      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
    }

LABEL_18:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_5:
  sub_8388(*(v0 + 224) + 48, v0 + 16);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  sub_2D20((v0 + 16), v14);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = sub_38DA0();
  *(v0 + 392) = v16;
  *(v16 + 16) = xmmword_170F70;
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v16;
  *(v16 + 32) = v1;
  v23 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v24 = v1;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 400) = v25;
  *v25 = v26;
  v25[1] = sub_151588;
  v27 = *(v0 + 336);
  v28 = *(v0 + 216);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v28, v22, v27, v14, v15);
}

uint64_t sub_15137C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 176));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_151484()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 136));
  sub_151EDC();

  sub_C9BC();

  return v8();
}

uint64_t sub_151588()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 400);
  v3 = *(v1 + 392);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_151688()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));
  sub_151EDC();

  sub_C9BC();

  return v4();
}

void sub_151760()
{
  *(v0 + 368) = 0;
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  sub_16C43C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C7AC();
  v6 = *(v0 + 336);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 248);
  LOBYTE(v5) = *(v0 + 408);
  sub_16C76C();
  v10 = sub_16BD9C();
  sub_214C(v9, 1, 1, v10);
  sub_12093C(v5, v9, v8);
  sub_C878(v9, &qword_1C5690, &dword_16F320);
  if (sub_369C(v8, 1, v7) != 1)
  {
    goto LABEL_4;
  }

  sub_C878(*(v0 + 256), &qword_1C57F8, &unk_172510);
  while (1)
  {
    sub_8388(*(v0 + 224) + 48, v0 + 16);
    sub_2D20((v0 + 16), *(v0 + 40));
    sub_2440(&qword_1C5ED8, &unk_173090);
    v11 = sub_38DA0();
    *(v0 + 392) = v11;
    *(v11 + 16) = xmmword_170F70;
    __break(1u);
LABEL_4:
    v12 = *(v0 + 224);
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
    v13 = v12[4];
    v14 = v12[5];
    sub_2D20(v12 + 1, v13);
    (*(v14 + 8))(v13, v14);
    v15 = *(v0 + 88);
    sub_2D20((v0 + 56), *(v0 + 80));
    if (sub_16C40C())
    {
      sub_2D64((v0 + 56));
    }

    else
    {
      v16 = v12[4];
      v17 = v12[5];
      sub_2D20(v12 + 1, v16);
      (*(v17 + 8))(v16, v17);
      v18 = *(v0 + 128);
      sub_2D20((v0 + 96), *(v0 + 120));
      v19 = sub_16C3FC();
      sub_2D64((v0 + 96));
      sub_2D64((v0 + 56));
      if ((v19 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 224);
    v26 = *(v25 + 96);
    v27 = sub_151E90();
    v29 = v28;
    (*(v21 + 16))(v23 + *(v24 + 20), v20, v22);
    *v23 = v27;
    v23[1] = v29;
    sub_8388(v25 + 48, v0 + 136);
    sub_2D20((v0 + 136), *(v0 + 160));
    *(v0 + 200) = type metadata accessor for WellnessSnippets();
    *(v0 + 208) = sub_17548();
    v30 = sub_9910((v0 + 176));
    sub_175A0(v23, v30);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v31 = sub_38DA0();
    *(v0 + 376) = v31;
    *(v31 + 16) = xmmword_170F70;
    __break(1u);
LABEL_8:
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  }
}

uint64_t sub_151AAC()
{
  sub_8A88();
  *(v0 + 104) = v1;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_151B3C;

  return sub_150A78();
}

uint64_t sub_151B3C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_151C20()
{
  v1 = *(v0 + 104);
  sub_8388(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  sub_17464((v0 + 56), v2 + 16);
  sub_16C73C();
  v3 = sub_16C1DC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v6();
}

uint64_t sub_151D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_151AAC();
}

uint64_t sub_151DC4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_151DFC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_151E90()
{

  return sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
}

uint64_t sub_151EDC()
{
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
}

uint64_t SleepQueryModel.init(snippetHeaderModel:dateLabel:sleepTypeLabel:dataLabel:avgTimeAsleepLabel:avgTimeInBedLabel:avgTimeAsleep:avgTimeInBed:totalTimeAsleep:totalTimeInBed:url:sleepDuration:avgTimeAsleepData:avgTimeInBedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v76 = a7;
  v77 = a8;
  v74 = a15;
  v75 = a6;
  v72 = a14;
  v73 = a5;
  v70 = a13;
  v71 = a4;
  v67 = a12;
  v68 = a3;
  v65 = a11;
  v66 = a2;
  v63 = a1;
  v64 = a10;
  v69 = a16;
  v62 = a17;
  v18 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v18);
  v20 = *(v19 + 64);
  sub_433C();
  __chkstk_darwin(v21);
  v23 = &v57 - v22;

  v24 = sub_16C11C();
  sub_8AB4();
  sub_214C(v25, v26, v27, v24);
  Model = type metadata accessor for SleepQueryModel();
  v29 = Model[5];
  type metadata accessor for SnippetHeaderModel();
  sub_8AB4();
  sub_214C(v30, v31, v32, v33);
  v34 = (a9 + Model[6]);
  v35 = (a9 + Model[7]);
  v36 = (a9 + Model[8]);
  v37 = (a9 + Model[9]);
  v38 = Model[11];
  v39 = (a9 + Model[10]);
  v40 = Model[13];
  v60 = Model[12];
  v61 = v38;
  v41 = Model[15];
  v58 = Model[14];
  v59 = v40;
  v42 = (a9 + v41);
  *v42 = 0;
  v42[1] = 0;
  v43 = (a9 + Model[16]);
  *v43 = 0;
  v43[1] = 0;
  v44 = (a9 + Model[17]);
  *v44 = 0;
  v44[1] = 0;
  v45 = v62;
  sub_152BF0(v62);
  sub_8748(v45, &qword_1C57F8, &unk_172510);
  sub_214C(v23, 0, 1, v24);
  v46 = sub_8B9C();
  sub_1E634(v46, v47, &qword_1C63F0, &unk_1717F0);
  result = sub_1E634(v63, a9 + v29, &dword_1C63F8, &qword_171800);
  v49 = v68;
  *v34 = v66;
  v34[1] = v49;
  v50 = v73;
  *v35 = v71;
  v35[1] = v50;
  v51 = v76;
  *v36 = v75;
  v36[1] = v51;
  v52 = v64;
  v53 = v65;
  *v37 = v77;
  v37[1] = v52;
  v54 = v67;
  *v39 = v53;
  v39[1] = v54;
  v55 = v60;
  *(a9 + v61) = v70;
  *(a9 + v55) = v72;
  v56 = v58;
  *(a9 + v59) = v74;
  *(a9 + v56) = v69;
  return result;
}

uint64_t type metadata accessor for SleepQueryModel()
{
  result = qword_1CB770;
  if (!qword_1CB770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String_optional __swiftcall SleepQueryModel.fetchSleepDuration()()
{
  Model = type metadata accessor for SleepQueryModel();
  if (*(v0 + Model[11]) || *(v0 + Model[12]) || *(v0 + Model[13]) || *(v0 + Model[14]))
  {

    v2 = SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)()
{
  v0 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v0);
  v2 = *(v1 + 64);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = sub_16D5CC();
  v7 = sub_42F0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_4304();
  v14 = v13 - v12;
  sub_16D4FC();
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C5800, &unk_16F510);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    v15 = sub_16D5BC();
    (*(v9 + 8))(v14, v6);
  }

  return v15;
}

uint64_t SleepQueryModel.dateLabel.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 24));
  return sub_8B9C();
}

uint64_t SleepQueryModel.dateLabel.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.sleepTypeLabel.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 28));
  return sub_8B9C();
}

uint64_t SleepQueryModel.sleepTypeLabel.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.dataLabel.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 32));
  return sub_8B9C();
}

uint64_t SleepQueryModel.dataLabel.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 36));
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedLabel.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 40));
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeInBedLabel.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleep.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel() + 44));
}

uint64_t SleepQueryModel.avgTimeAsleep.setter()
{
  v2 = *(sub_154758() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBed.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel() + 48));
}

uint64_t SleepQueryModel.avgTimeInBed.setter()
{
  v2 = *(sub_154758() + 48);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.totalTimeAsleep.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel() + 52));
}

uint64_t SleepQueryModel.totalTimeAsleep.setter()
{
  v2 = *(sub_154758() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.totalTimeInBed.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel() + 56));
}

uint64_t SleepQueryModel.totalTimeInBed.setter()
{
  v2 = *(sub_154758() + 56);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SleepQueryModel.sleepDuration.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 60));
  return sub_8B9C();
}

uint64_t SleepQueryModel.sleepDuration.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepData.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 64));
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeAsleepData.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedData.getter()
{
  Model = type metadata accessor for SleepQueryModel();
  sub_20658(*(Model + 68));
  return sub_8B9C();
}

uint64_t SleepQueryModel.avgTimeInBedData.setter()
{
  v3 = sub_1546F4();
  result = sub_66A6C(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_152BF0(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_4304();
  v16 = v15 - v14;
  sub_86B0(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_8748(v7, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v18 = sub_16BE5C();
    sub_2068C(v18, v19);
    return (*(v11 + 8))(v16, v8);
  }
}

uint64_t sub_152D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7079547065656C73 && a2 == 0xEE006C6562614C65;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000000181470 == a2;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000000181490 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x41656D6954677661 && a2 == 0xED00007065656C73;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x49656D6954677661 && a2 == 0xEC0000006465426ELL;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D69546C61746F74 && a2 == 0xEF7065656C734165;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D69546C61746F74 && a2 == 0xEE006465426E4965;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7275447065656C73 && a2 == 0xED00006E6F697461;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000000001814B0 == a2;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0xD000000000000010 && 0x80000000001814D0 == a2)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_16E6BC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_153200(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 1702125924;
      goto LABEL_6;
    case 3:
      result = 0x7079547065656C73;
      break;
    case 4:
      v3 = 1635017060;
LABEL_6:
      result = v3 | 0x6562614C00000000;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x41656D6954677661;
      break;
    case 8:
      result = 0x49656D6954677661;
      break;
    case 9:
    case 10:
      result = 0x6D69546C61746F74;
      break;
    case 11:
      result = 0x7275447065656C73;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1533EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_152D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_153414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1531F8();
  *a1 = result;
  return result;
}

uint64_t sub_15343C(uint64_t a1)
{
  v2 = sub_1537D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_153478(uint64_t a1)
{
  v2 = sub_1537D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SleepQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CB6F0, &qword_179010);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_1537D4();
  sub_16E77C();
  v23 = 0;
  sub_16C11C();
  sub_154710();
  sub_153FB8(v12, v13);
  sub_12C630();
  if (!v1)
  {
    Model = type metadata accessor for SleepQueryModel();
    v15 = Model[5];
    v23 = 1;
    type metadata accessor for SnippetHeaderModel();
    sub_154740();
    sub_153FB8(v16, v17);
    sub_12C630();
    sub_66A40(Model[6]);
    sub_14B884(2);
    sub_66A40(Model[7]);
    sub_14B884(3);
    sub_66A40(Model[8]);
    sub_14B884(4);
    sub_66A40(Model[9]);
    sub_14B884(5);
    sub_66A40(Model[10]);
    sub_14B884(6);
    sub_15477C(Model[11]);
    v22 = 7;
    sub_16D54C();
    sub_154728();
    sub_153FB8(v18, v19);
    sub_15469C();
    sub_15477C(Model[12]);
    v22 = 8;
    sub_15469C();
    sub_15477C(Model[13]);
    v22 = 9;
    sub_15469C();
    sub_15477C(Model[14]);
    v22 = 10;
    sub_15469C();
    sub_66A40(Model[15]);
    sub_14B884(11);
    sub_66A40(Model[16]);
    sub_14B884(12);
    sub_66A40(Model[17]);
    sub_14B884(13);
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1537D4()
{
  result = qword_1CB6F8;
  if (!qword_1CB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB6F8);
  }

  return result;
}

uint64_t SleepQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  v99 = &v84 - v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  v100 = &v84 - v12;
  v101 = sub_2440(&qword_1CB708, &qword_179018);
  sub_42F0(v101);
  v98 = v13;
  v15 = *(v14 + 64);
  sub_433C();
  __chkstk_darwin(v16);
  v105 = &v84 - v17;
  Model = type metadata accessor for SleepQueryModel();
  v19 = (Model - 8);
  v20 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  sub_4304();
  v23 = v22 - v21;
  sub_16C11C();
  sub_8AB4();
  v97 = v24;
  sub_214C(v25, v26, v27, v24);
  v28 = v19[7];
  v29 = type metadata accessor for SnippetHeaderModel();
  v94 = v28;
  v95 = v29;
  sub_8AB4();
  sub_214C(v30, v31, v32, v33);
  v34 = (v23 + v19[8]);
  *v34 = 0;
  v34[1] = 0;
  v93 = v34;
  v35 = (v23 + v19[9]);
  *v35 = 0;
  v35[1] = 0;
  v92 = v35;
  v36 = (v23 + v19[10]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v23 + v19[11]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v23 + v19[12]);
  *v38 = 0;
  v38[1] = 0;
  v91 = v19[13];
  *(v23 + v91) = 0;
  v90 = v19[14];
  *(v23 + v90) = 0;
  v89 = v19[15];
  *(v23 + v89) = 0;
  v96 = v19[16];
  *(v23 + v96) = 0;
  v39 = (v23 + v19[17]);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v23 + v19[18]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v19[19];
  v104 = v23;
  v42 = (v23 + v41);
  *v42 = 0;
  v42[1] = 0;
  v43 = a1;
  v44 = a1[3];
  v45 = a1[4];
  v103 = v43;
  sub_2D20(v43, v44);
  sub_1537D4();
  v46 = v102;
  sub_16E76C();
  if (v46)
  {
    v53 = v104;
    sub_2D64(v103);
    v83 = v53;
  }

  else
  {
    v102 = v36;
    v86 = v38;
    v87 = v37;
    v47 = v99;
    v48 = v96;
    v85 = v42;
    v49 = v98;
    LOBYTE(v107) = 0;
    sub_154710();
    sub_153FB8(v50, v51);
    v52 = v100;
    sub_154770();
    sub_16E5AC();
    v55 = v52;
    v56 = v104;
    sub_1E634(v55, v104, &qword_1C63F0, &unk_1717F0);
    LOBYTE(v107) = 1;
    sub_154740();
    sub_153FB8(v57, v58);
    sub_16E5AC();
    sub_1E634(v47, v56 + v94, &dword_1C63F8, &qword_171800);
    sub_1546C8(2);
    v59 = sub_16E58C();
    v60 = v93;
    *v93 = v59;
    v60[1] = v61;
    sub_1546C8(3);
    v62 = sub_16E58C();
    v63 = v92;
    *v92 = v62;
    v63[1] = v64;
    sub_1546C8(4);
    v65 = sub_16E58C();
    v66 = v102;
    *v102 = v65;
    v66[1] = v67;
    sub_1546C8(5);
    v68 = sub_16E58C();
    v69 = v87;
    *v87 = v68;
    v69[1] = v70;
    sub_1546C8(6);
    v71 = sub_16E58C();
    v72 = v86;
    *v86 = v71;
    v72[1] = v73;
    sub_16D54C();
    v106 = 7;
    sub_154728();
    v102 = sub_153FB8(v74, v75);
    sub_16E5AC();
    *(v56 + v91) = v107;
    sub_1546D8(8);
    sub_154770();
    sub_16E5AC();
    *(v56 + v90) = v107;
    sub_1546D8(9);
    sub_154770();
    sub_16E5AC();
    *(v104 + v89) = v107;
    sub_1546D8(10);
    sub_16E5AC();
    *(v104 + v48) = v107;
    sub_1546C8(11);
    *v39 = sub_16E58C();
    v39[1] = v76;
    sub_1546C8(12);
    sub_154770();
    *v40 = sub_16E58C();
    v40[1] = v77;
    sub_1546C8(13);
    sub_154770();
    v78 = sub_16E58C();
    v80 = v79;
    (*(v49 + 8))(v105, v101);
    v81 = v85;
    *v85 = v78;
    v81[1] = v80;
    v82 = v104;
    sub_153EC4(v104, v88);
    sub_2D64(v103);
    v83 = v82;
  }

  return sub_153E68(v83);
}

uint64_t sub_153E68(uint64_t a1)
{
  Model = type metadata accessor for SleepQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_153EC4(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for SleepQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_153FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_154044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_369C(v10, a2, v9);
  }

  v11 = sub_2440(&dword_1C63F8, &qword_171800);
  v12 = sub_436C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_15416C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v9 = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2440(&dword_1C63F8, &qword_171800);
    result = sub_436C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_214C(v12, a2, a2, v11);
}

uint64_t sub_154270()
{
  sub_1543B4(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1543B4(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_BBD1C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1543B4(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1543B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SleepQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x15455CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_154598()
{
  result = qword_1CB7D8;
  if (!qword_1CB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7D8);
  }

  return result;
}

unint64_t sub_1545F0()
{
  result = qword_1CB7E0;
  if (!qword_1CB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7E0);
  }

  return result;
}

unint64_t sub_154648()
{
  result = qword_1CB7E8;
  if (!qword_1CB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7E8);
  }

  return result;
}

uint64_t sub_15469C()
{

  return sub_16E63C();
}

uint64_t sub_1546C8@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1546D8@<X0>(char a1@<W8>)
{
  *(v2 - 89) = a1;
  result = v1;
  v4 = *(v2 - 136);
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1546F4()
{

  return type metadata accessor for SleepQueryModel();
}

uint64_t sub_154758()
{

  return type metadata accessor for SleepQueryModel();
}

uint64_t sub_154788()
{
  sub_8A88();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 152) = v3;
  v4 = sub_16DBEC();
  *(v0 + 56) = v4;
  v5 = *(v4 - 8);
  *(v0 + 64) = v5;
  v6 = *(v5 + 64);
  *(v0 + 72) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_154838()
{
  v51 = v0;
  v1 = *(v0 + 152);
  v2 = v1 - 89;
  v3 = (v1 - 89) > 0x12;
  if ((v1 - 89) > 0x12)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x44181) != 0)
  {
LABEL_20:
    v23 = swift_task_alloc();
    *(v0 + 80) = v23;
    *v23 = v0;
    v23[1] = sub_154E1C;
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 152);
    sub_8CC0();

    return sub_156AE4(v27, v28, v29);
  }

  v3 = v2 > 0x10;
  if (v1 != 105)
  {
LABEL_2:
    if (!v3)
    {
      switch(*(v0 + 152))
      {
        case 0x93:
          v32 = swift_task_alloc();
          *(v0 + 96) = v32;
          *v32 = v0;
          sub_1588B4(v32);
          sub_8CC0();

          return sub_1559AC();
        case 0x94:
        case 0x95:
        case 0x98:
        case 0x99:
        case 0x9A:
          goto LABEL_14;
        case 0x96:
          v38 = swift_task_alloc();
          *(v0 + 104) = v38;
          *v38 = v0;
          sub_1588B4(v38);
          sub_8CC0();

          return sub_155B38();
        case 0x97:
          v40 = swift_task_alloc();
          *(v0 + 112) = v40;
          *v40 = v0;
          sub_1588B4(v40);
          sub_8CC0();

          return sub_155CC4();
        case 0x9B:
          v36 = swift_task_alloc();
          *(v0 + 120) = v36;
          *v36 = v0;
          sub_1588B4(v36);
          sub_8CC0();

          return sub_155E50();
        default:
          JUMPOUT(0);
      }
    }

    if (v1 != 159)
    {
      switch(v1)
      {
        case 162:
          v48 = swift_task_alloc();
          *(v0 + 128) = v48;
          *v48 = v0;
          sub_1588B4(v48);
          sub_8CC0();

          return sub_15620C();
        case 170:
          v44 = swift_task_alloc();
          *(v0 + 136) = v44;
          *v44 = v0;
          sub_1588B4(v44);
          sub_8CC0();

          return sub_15677C(v45, v46);
        case 173:
          v42 = swift_task_alloc();
          *(v0 + 144) = v42;
          *v42 = v0;
          sub_1588B4(v42);
          sub_8CC0();

          return sub_156958();
      }

      if (v1 != 174 && v1 != 189 && v1 != 184)
      {
LABEL_14:
        v5 = *(v0 + 64);
        v4 = *(v0 + 72);
        v6 = *(v0 + 56);
        v7 = sub_16DBBC();
        swift_beginAccess();
        (*(v5 + 16))(v4, v7, v6);
        v8 = sub_16DBDC();
        v9 = sub_16E37C();
        v10 = os_log_type_enabled(v8, v9);
        v12 = *(v0 + 64);
        v11 = *(v0 + 72);
        v13 = *(v0 + 56);
        if (v10)
        {
          v14 = *(v0 + 152);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v50 = v16;
          *v15 = 136315138;
          v17 = sub_208C0(v14);
          v19 = sub_3AB7C(v17, v18, &v50);

          *(v15 + 4) = v19;
          _os_log_impl(&def_259DC, v8, v9, "No pattern implemented for %s", v15, 0xCu);
          sub_2D64(v16);
        }

        (*(v12 + 8))(v11, v13);
        v20 = *(v0 + 72);

        sub_5D948();
        sub_8CC0();

        __asm { BRAA            X2, X16 }
      }
    }

    goto LABEL_20;
  }

  v34 = swift_task_alloc();
  *(v0 + 88) = v34;
  *v34 = v0;
  sub_1588B4(v34);
  sub_8CC0();

  return sub_1556F8();
}

uint64_t sub_154E1C()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 80);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_154F18()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 88);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_155014()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 96);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_155110()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 104);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_15520C()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 112);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_155308()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 120);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_155404()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 128);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_155500()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 136);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_1555FC()
{
  sub_386A8();
  sub_1588C8();
  v2 = *(v0 + 144);
  v3 = *v1;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 72);

  v7 = sub_158888();

  return v8(v7);
}

uint64_t sub_1556F8()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1557A8()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(105, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_38F74();

  return sub_10C1E8();
}

uint64_t sub_155888()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 56);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 48);
  if (v0)
  {
  }

  else
  {
    sub_158A18();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1559AC()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_155A5C()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(147, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_109C1C();
}

uint64_t sub_155B38()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_155BE8()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(150, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_109F38();
}

uint64_t sub_155CC4()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_155D74()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(151, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_10A254();
}

uint64_t sub_155E50()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_155F00()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(155, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155FDC;
  sub_158948();
  sub_38F74();

  return sub_10A570();
}

uint64_t sub_155FDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 56);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 48);
  if (v0)
  {
  }

  else
  {
    sub_158A18();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_156100()
{
  sub_386A8();
  v1 = v0[8];
  v2 = v0[4];
  sub_C878(v0[5], &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v3(v1);
}

uint64_t sub_15618C()
{
  sub_8A88();
  v1 = *(v0 + 32);
  sub_C878(*(v0 + 40), &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v2(0);
}

uint64_t sub_15620C()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v9);
  v11 = *(v10 + 64);
  v0[6] = sub_8BC0();
  v12 = sub_17960();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1562E8()
{
  sub_C9EC();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_16BD9C();
  v4 = 1;
  sub_8AB4();
  sub_214C(v5, v6, v7, v8);
  sub_12093C(162, v2, v1);
  sub_C878(v2, &qword_1C5690, &dword_16F320);
  v9 = sub_5FF28(v3);
  sub_13A5C4(v9, v10);
  v12 = v11;

  if (v12)
  {
    v13 = v0[4];
    sub_16E23C();

    v4 = 0;
  }

  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];
  v17 = v0[2];
  v18 = sub_16D5CC();
  sub_214C(v15, v4, 1, v18);
  v19 = sub_16D2DC();
  sub_8D14(v19);
  sub_16D2CC();
  [v17 doubleValue];
  sub_16D40C();

  sub_16D3FC();

  v20 = sub_16D3EC();
  v0[7] = v20;

  v21 = sub_2D20((v16 + 80), *(v16 + 104));
  v22 = swift_task_alloc();
  v0[8] = v22;
  v22[2] = v20;
  v22[3] = v17;
  v22[4] = v14;
  v23 = *v21;
  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = sub_1564E4;

  return sub_10AEC8();
}

uint64_t sub_1564E4()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  v4 = v3;
  sub_C990();
  *v5 = v3;
  v6 = *(v3 + 72);
  *v5 = *v2;

  sub_5DA54();
  v8 = *(v7 + 64);
  if (v1)
  {
  }

  else
  {
    *(v4 + 80) = v0;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_156610()
{
  sub_386A8();
  v1 = v0[10];
  v2 = v0[7];

  v4 = v0[5];
  v3 = v0[6];
  sub_C878(v0[4], &qword_1C5800, &unk_16F510);
  sub_C878(v3, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v5(v1);
}

uint64_t sub_1566C8()
{
  sub_386A8();
  v1 = v0[7];

  v2 = v0[5];
  v3 = v0[6];
  sub_C878(v0[4], &qword_1C5800, &unk_16F510);
  sub_C878(v3, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v4(0);
}

uint64_t sub_15677C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_17960();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1567A4()
{
  sub_386A8();
  v1 = v0[2];
  v2 = *sub_2D20((v0[3] + 80), *(v0[3] + 104));
  sub_158AE4(&unk_176A60);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_15685C;
  v4 = v0[2];
  v5 = sub_158A0C();

  return v7(v5, 170);
}

uint64_t sub_15685C()
{
  sub_8A88();
  v3 = v2;
  v4 = *(*v1 + 32);
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  if (v0)
  {

    v3 = 0;
  }

  sub_5D948();

  return v7(v3);
}

uint64_t sub_156958()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_156A08()
{
  sub_5E06C();
  sub_C9EC();
  v2 = sub_158978();
  sub_158928(v2);
  sub_12093C(173, v0, v1);
  sub_C878(v0, &qword_1C5690, &dword_16F320);
  v3 = sub_1588D8();
  sub_15889C(v3);
  v4 = swift_task_alloc();
  v5 = sub_10E364(v4);
  *v5 = v6;
  v5[1] = sub_155888;
  sub_158948();
  sub_38F74();

  return sub_10BD24();
}

uint64_t sub_156AE4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 40) = a1;
  v4 = sub_17960();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_156B10()
{
  sub_386A8();
  v1 = *(v0 + 16);
  v2 = *sub_2D20((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  sub_158AE4(&unk_176A58);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_158884;
  v4 = *(v0 + 16);
  v5 = *(v0 + 40);
  v6 = sub_158A0C();

  return v8(v6);
}

void sub_156BC8()
{
  sub_5DF60();
  sub_1589B0(v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  sub_13088();
  v74 = v12;
  v13 = sub_158B10();
  v14 = sub_42F0(v13);
  v70 = v15;
  v71 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v69 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2440(&qword_1C57E0, &unk_171C60);
  v20 = sub_4348(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_887C();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  v29 = sub_2440(&qword_1C5800, &unk_16F510);
  v30 = sub_4348(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_887C();
  v72 = v33 - v34;
  sub_89B4();
  v36 = __chkstk_darwin(v35);
  v38 = &v69 - v37;
  __chkstk_darwin(v36);
  v40 = &v69 - v39;
  sub_208C0(v1);
  sub_16E23C();

  v41 = 1;
  v42 = sub_16D5CC();
  sub_214C(v40, 0, 1, v42);
  v43 = v2(0);
  sub_8640(v40, v0 + v43[6]);
  [v3 doubleValue];
  v45 = v44;
  v46 = sub_5FF28(v3);
  sub_99F0C(v46, v47, v1, v45);

  sub_158958(v43[10]);
  sub_5FF28(v3);
  if (v48)
  {
    sub_16E23C();

    v41 = 0;
  }

  v49 = 1;
  v50 = v41;
  v51 = v42;
  sub_214C(v38, v50, 1, v42);
  sub_8640(v38, v0 + v43[9]);
  v52 = sub_16D4CC();
  sub_8D14(v52);
  sub_16D4BC();
  v53 = [v3 start];
  if (v53)
  {
    v54 = v53;
    sub_16BF3C();

    v49 = 0;
  }

  v55 = v71;
  sub_214C(v25, v49, 1, v71);
  sub_1586E0(v25, v28);
  if (sub_369C(v28, 1, v55))
  {
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v56 = v69;
    v57 = v70;
    v58 = sub_158A9C(v70);
    v59(v58);
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v57 + 8))(v56, v55);
  }

  sub_16D4AC();

  v60 = sub_16D49C();

  v61 = v43[7];
  v62 = *(v0 + v61);

  *(v0 + v61) = v60;
  v63 = v74;
  sub_372FC(v73, v74);
  v64 = sub_16BE9C();
  if (sub_369C(v63, 1, v64) == 1)
  {
    sub_C878(v63, &qword_1C57F8, &unk_172510);
    v65 = v72;
    sub_8AB4();
    sub_214C(v66, v67, v68, v51);
  }

  else
  {
    v65 = v72;
    sub_61120(v72);
    (*(*(v64 - 8) + 8))(v63, v64);
  }

  sub_8640(v65, v0);
  sub_5DFAC();
}

void sub_15705C()
{
  sub_5DF60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v69 = v10;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v11);
  v13 = *(v12 + 64);
  sub_433C();
  __chkstk_darwin(v14);
  sub_13088();
  v70 = v15;
  v16 = sub_158B10();
  v17 = sub_42F0(v16);
  v67[2] = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_15890C(v21, v67[0]);
  v22 = sub_2440(&qword_1C57E0, &unk_171C60);
  v23 = sub_4348(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_887C();
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = sub_2440(&qword_1C5800, &unk_16F510);
  v30 = sub_4348(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_887C();
  v68 = v33 - v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_158AB0();
  __chkstk_darwin(v36);
  sub_76CCC();
  sub_208C0(v3);
  sub_16E23C();

  sub_16D5CC();
  v37 = sub_158968();
  v72 = v38;
  sub_214C(v37, v39, v40, v38);
  v41 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  sub_158A30(v41);
  [v1 doubleValue];
  v42 = sub_5FF28(v1);
  sub_158AC4(v42, v43);

  sub_158958(*(v41 + 36));
  sub_5FF28(v1);
  if (v44)
  {
    sub_16E23C();
  }

  sub_1589C8();
  v45 = sub_16D4CC();
  sub_8D14(v45);
  sub_16D4BC();
  v46 = [v1 start];
  v47 = v70;
  if (v46)
  {
    v48 = v46;
    sub_16BF3C();
  }

  sub_158A60();
  if (sub_369C(v28, 1, v16))
  {
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v49 = sub_158994();
    v50(v49);
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v51 = sub_158A4C();
    v52(v51);
  }

  sub_16D4AC();

  sub_16D49C();
  sub_158A0C();

  v53 = *(v41 + 28);
  v54 = *(v5 + v53);

  *(v5 + v53) = v28;
  sub_16BD9C();
  v55 = v69;
  sub_8AB4();
  sub_214C(v56, v57, v58, v59);
  sub_12093C(v71, v55, v47);
  sub_C878(v55, &qword_1C5690, &dword_16F320);
  v60 = sub_16BE9C();
  sub_76A04(v47);
  if (v61)
  {
    sub_C878(v47, &qword_1C57F8, &unk_172510);
    v65 = v68;
    sub_8AB4();
    sub_214C(v62, v63, v64, v72);
  }

  else
  {
    v65 = v68;
    sub_61120(v68);
    sub_76AEC();
    (*(v66 + 8))(v47, v60);
  }

  sub_8640(v65, v5);
  sub_5DFAC();
}

void sub_1574C8()
{
  sub_5DF60();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v6);
  v8 = *(v7 + 64);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v69 = v10;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v11);
  v13 = *(v12 + 64);
  sub_433C();
  __chkstk_darwin(v14);
  sub_13088();
  v70 = v15;
  v16 = sub_158B10();
  v17 = sub_42F0(v16);
  v67[2] = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_15890C(v21, v67[0]);
  v22 = sub_2440(&qword_1C57E0, &unk_171C60);
  v23 = sub_4348(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_887C();
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = sub_2440(&qword_1C5800, &unk_16F510);
  v30 = sub_4348(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_887C();
  v68 = v33 - v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_158AB0();
  __chkstk_darwin(v36);
  sub_76CCC();
  sub_208C0(v3);
  sub_16E23C();

  sub_16D5CC();
  v37 = sub_158968();
  v72 = v38;
  sub_214C(v37, v39, v40, v38);
  v41 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  sub_158A30(v41);
  [v1 doubleValue];
  v42 = sub_5FF28(v1);
  sub_158AC4(v42, v43);

  sub_158958(*(v41 + 36));
  sub_5FF28(v1);
  if (v44)
  {
    sub_16E23C();
  }

  sub_1589C8();
  v45 = sub_16D4CC();
  sub_8D14(v45);
  sub_16D4BC();
  v46 = [v1 start];
  v47 = v70;
  if (v46)
  {
    v48 = v46;
    sub_16BF3C();
  }

  sub_158A60();
  if (sub_369C(v28, 1, v16))
  {
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v49 = sub_158994();
    v50(v49);
    sub_C878(v28, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v51 = sub_158A4C();
    v52(v51);
  }

  sub_16D4AC();

  sub_16D49C();
  sub_158A0C();

  v53 = *(v41 + 28);
  v54 = *(v5 + v53);

  *(v5 + v53) = v28;
  sub_16BD9C();
  v55 = v69;
  sub_8AB4();
  sub_214C(v56, v57, v58, v59);
  sub_12093C(v71, v55, v47);
  sub_C878(v55, &qword_1C5690, &dword_16F320);
  v60 = sub_16BE9C();
  sub_76A04(v47);
  if (v61)
  {
    sub_C878(v47, &qword_1C57F8, &unk_172510);
    v65 = v68;
    sub_8AB4();
    sub_214C(v62, v63, v64, v72);
  }

  else
  {
    v65 = v68;
    sub_61120(v68);
    sub_76AEC();
    (*(v66 + 8))(v47, v60);
  }

  sub_8640(v65, v5);
  sub_5DFAC();
}

uint64_t sub_15792C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v51 = a3;
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_16BF5C();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = sub_2440(&qword_1C5800, &unk_16F510);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v52 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v48 - v24;
  v26 = type metadata accessor for WellnessLoggingHeightParameters(0);
  v27 = v26[7];
  v28 = *(a1 + v27);

  *(a1 + v27) = a2;
  v29 = v51;
  sub_5FF28(v51);
  if (v30)
  {
    sub_16E23C();

    v31 = sub_16D5CC();
    v32 = 0;
  }

  else
  {
    v31 = sub_16D5CC();
    v32 = 1;
  }

  v33 = 1;
  sub_214C(v25, v32, 1, v31);
  sub_8640(v25, a1 + v26[9]);
  v34 = sub_16D4CC();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_16D4BC();
  v37 = [v29 start];
  if (v37)
  {
    v38 = v37;
    sub_16BF3C();

    v33 = 0;
  }

  sub_214C(v17, v33, 1, v10);
  sub_1586E0(v17, v19);
  if (sub_369C(v19, 1, v10))
  {
    sub_C878(v19, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v39 = v49;
    v40 = v50;
    (*(v50 + 16))(v49, v19, v10);
    sub_C878(v19, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v40 + 8))(v39, v10);
  }

  v41 = v52;
  sub_16D4AC();

  v42 = sub_16D49C();

  v43 = v26[8];
  v44 = *(a1 + v43);

  *(a1 + v43) = v42;
  sub_372FC(v53, v9);
  v45 = sub_16BE9C();
  if (sub_369C(v9, 1, v45) == 1)
  {
    sub_C878(v9, &qword_1C57F8, &unk_172510);
    v46 = sub_16D5CC();
    sub_214C(v41, 1, 1, v46);
  }

  else
  {
    sub_61120(v41);
    (*(*(v45 - 8) + 8))(v9, v45);
  }

  return sub_8640(v41, a1);
}

void sub_157DBC()
{
  sub_5DF60();
  v71 = v5;
  sub_1589B0(v6, v7, v8, v9);
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  sub_433C();
  __chkstk_darwin(v13);
  sub_13088();
  v75 = v14;
  v72 = sub_158B10();
  v15 = sub_42F0(v72);
  v70 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_15890C(v19, v69[0]);
  v20 = sub_2440(&qword_1C57E0, &unk_171C60);
  v21 = sub_4348(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_887C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = v69 - v28;
  v30 = sub_2440(&qword_1C5800, &unk_16F510);
  v31 = sub_4348(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_887C();
  v73 = v34 - v35;
  sub_89B4();
  __chkstk_darwin(v36);
  sub_76CCC();
  sub_208C0(v1);
  sub_16E23C();

  v37 = sub_16D5CC();
  v38 = 1;
  v39 = sub_158968();
  sub_214C(v39, v40, v41, v37);
  v42 = v2(0);
  sub_158A30(v42);
  [v4 doubleValue];
  v44 = v43;
  v45 = sub_5FF28(v4);
  sub_99F0C(v45, v46, v1, v44);

  sub_158958(v42[10]);
  sub_16E23C();
  v47 = sub_158968();
  v71 = v37;
  sub_214C(v47, v48, v49, v37);
  sub_8640(v3, v0 + v42[9]);
  v50 = sub_16D4CC();
  sub_8D14(v50);
  sub_16D4BC();
  v51 = [v4 start];
  if (v51)
  {
    v52 = v51;
    sub_16BF3C();

    v38 = 0;
  }

  v53 = v72;
  sub_214C(v26, v38, 1, v72);
  sub_1586E0(v26, v29);
  if (sub_369C(v29, 1, v53))
  {
    sub_C878(v29, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v54 = v69[1];
    v55 = v70;
    v56 = sub_158A9C(v70);
    v57(v56);
    sub_C878(v29, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v55 + 8))(v54, v53);
  }

  sub_16D4AC();

  v58 = sub_16D49C();

  v59 = v42[7];
  v60 = *(v0 + v59);

  *(v0 + v59) = v58;
  v61 = v75;
  sub_372FC(v74, v75);
  sub_16BE9C();
  v62 = sub_158A0C();
  sub_76A04(v62);
  if (v63)
  {
    sub_C878(v61, &qword_1C57F8, &unk_172510);
    v67 = v73;
    sub_8AB4();
    sub_214C(v64, v65, v66, v71);
  }

  else
  {
    v67 = v73;
    sub_61120(v73);
    sub_76AEC();
    (*(v68 + 8))(v61, v42);
  }

  sub_8640(v67, v0);
  sub_5DFAC();
}

uint64_t sub_1581D0(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v61 = a4;
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v62 = &v57 - v9;
  v10 = sub_16BF5C();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = sub_2440(&qword_1C5800, &unk_16F510);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v60 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v57 - v25;
  __chkstk_darwin(v24);
  v28 = &v57 - v27;
  sub_208C0(a2);
  sub_16E23C();

  v29 = 1;
  v30 = sub_16D5CC();
  sub_214C(v28, 0, 1, v30);
  v31 = type metadata accessor for WellnessLoggingWeightParameters(0);
  sub_8640(v28, a1 + v31[6]);
  [a3 doubleValue];
  v33 = v32;
  v34 = sub_5FF28(a3);
  v36 = sub_99F0C(v34, v35, a2, v33);

  v37 = a1 + v31[9];
  *v37 = v36;
  *(v37 + 8) = 0;
  sub_5FF28(a3);
  if (v38)
  {
    sub_16E23C();

    v29 = 0;
  }

  v39 = 1;
  v40 = v29;
  v41 = v30;
  sub_214C(v26, v40, 1, v30);
  sub_8640(v26, a1 + v31[8]);
  v42 = sub_16D4CC();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_16D4BC();
  v45 = [a3 start];
  if (v45)
  {
    v46 = v45;
    sub_16BF3C();

    v39 = 0;
  }

  v47 = v59;
  sub_214C(v17, v39, 1, v59);
  sub_1586E0(v17, v19);
  if (sub_369C(v19, 1, v47))
  {
    sub_C878(v19, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v48 = v57;
    v49 = v58;
    (*(v58 + 16))(v57, v19, v47);
    sub_C878(v19, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v49 + 8))(v48, v47);
  }

  sub_16D4AC();

  v50 = sub_16D49C();

  v51 = v31[7];
  v52 = *(a1 + v51);

  *(a1 + v51) = v50;
  v53 = v62;
  sub_372FC(v61, v62);
  v54 = sub_16BE9C();
  if (sub_369C(v53, 1, v54) == 1)
  {
    sub_C878(v53, &qword_1C57F8, &unk_172510);
    v55 = v60;
    sub_214C(v60, 1, 1, v41);
  }

  else
  {
    v55 = v60;
    sub_61120(v60);
    (*(*(v54 - 8) + 8))(v53, v54);
  }

  return sub_8640(v55, a1);
}

uint64_t sub_1586E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15889C(uint64_t result)
{
  *(v3 + 48) = result;
  *(result + 16) = v5;
  *(result + 24) = v4;
  *(result + 32) = v2;
  v6 = *v1;
  return result;
}

uint64_t sub_1588B4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 40);
}

uint64_t sub_1588D8()
{
  sub_2D20((v0 + 80), *(v0 + 104));

  return swift_task_alloc();
}

uint64_t sub_158928(uint64_t a1)
{

  return sub_214C(v1, 1, 1, a1);
}

void sub_158958(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t sub_158978()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_16BD9C();
}

uint64_t sub_1589C8()
{
  sub_214C(v1, v2, 1, *(v4 - 104));
  v5 = v0 + *(v3 + 32);

  return sub_8640(v1, v5);
}

uint64_t sub_158A18()
{
  *(v1 + 64) = v0;
}

uint64_t sub_158A30(uint64_t a1)
{
  v4 = v1 + *(a1 + 24);

  return sub_8640(v2, v4);
}

uint64_t sub_158A60()
{
  sub_214C(v2, v1, 1, v3);

  return sub_1586E0(v2, v0);
}

double sub_158AC4(uint64_t a1, uint64_t a2)
{
  *(v3 - 108) = v2;

  return sub_99F0C(a1, a2, v2, v5);
}

id sub_158AE4@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

void sub_158B04()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
}

uint64_t sub_158B10()
{

  return sub_16BF5C();
}

unint64_t sub_158B28(char a1)
{
  result = 0x6978456B63656863;
  switch(a1)
  {
    case 1:
      v3 = 1634038371;
      goto LABEL_8;
    case 2:
      v3 = 1701602660;
      goto LABEL_8;
    case 3:
      return 0x627265566F6ELL;
    case 4:
      return 1852141679;
    case 5:
      v3 = 1633972341;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      result = 0x4C74736575716572;
      break;
    case 7:
      result = 0x736972616D6D7573;
      break;
    case 8:
      result = 0x74736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_158C3C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B7678;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_158CB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_158C3C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_158CE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_158B28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x158E78);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_158EB4()
{
  result = qword_1CB7F0;
  if (!qword_1CB7F0)
  {
    sub_9790(&qword_1CB7F8, qword_179258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB7F0);
  }

  return result;
}

unint64_t sub_158F1C()
{
  result = qword_1CB800;
  if (!qword_1CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB800);
  }

  return result;
}

uint64_t sub_158F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C5690, &dword_16F320);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_369C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_159058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C5690, &dword_16F320);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_214C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UnavailableDataFlow()
{
  result = qword_1CB860;
  if (!qword_1CB860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_159160()
{
  sub_159264();
  if (v0 <= 0x3F)
  {
    sub_8E16C(319, &qword_1C8A68);
    if (v1 <= 0x3F)
    {
      sub_8E16C(319, &unk_1CB870);
      if (v2 <= 0x3F)
      {
        type metadata accessor for WellnessCATsSimple();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WellnessCATs();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_159264()
{
  if (!qword_1C5708)
  {
    sub_16BD9C();
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5708);
    }
  }
}

uint64_t sub_1592BC()
{
  type metadata accessor for UnavailableDataFlow();
  sub_15AD44(&qword_1C57C8, type metadata accessor for UnavailableDataFlow);

  return sub_16C33C();
}

uint64_t sub_159348()
{
  sub_8A88();
  v1[17] = v2;
  v1[18] = v0;
  v3 = type metadata accessor for GenericButtonModel();
  v1[19] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[20] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[21] = sub_8BC0();
  v9 = sub_16BE9C();
  v1[22] = v9;
  sub_888C(v9);
  v1[23] = v10;
  v12 = *(v11 + 64);
  v1[24] = sub_8BC0();
  v13 = sub_16C46C();
  v1[25] = v13;
  sub_888C(v13);
  v1[26] = v14;
  v16 = *(v15 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v17 = sub_16C7BC();
  v1[29] = v17;
  sub_888C(v17);
  v1[30] = v18;
  v20 = *(v19 + 64);
  v1[31] = sub_8BC0();
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[32] = sub_8BC0();
  v24 = sub_16BF5C();
  v1[33] = v24;
  sub_888C(v24);
  v1[34] = v25;
  v27 = *(v26 + 64);
  v1[35] = sub_8BC0();
  v28 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v28);
  v30 = *(v29 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v31 = sub_16BD9C();
  v1[38] = v31;
  sub_888C(v31);
  v1[39] = v32;
  v34 = *(v33 + 64);
  v1[40] = sub_8BC0();
  v35 = sub_17960();

  return _swift_task_switch(v35, v36, v37);
}

uint64_t sub_1595EC()
{
  sub_D4EA4();
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 144);
  v4 = type metadata accessor for UnavailableDataFlow();
  *(v0 + 328) = v4;
  sub_15AC1C(v3 + *(v4 + 20), v2);
  if (sub_369C(v2, 1, v1) == 1)
  {
    sub_8748(*(v0 + 296), &qword_1C5690, &dword_16F320);
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 320);
    v22 = *(v0 + 312);
    v23 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    (*(v22 + 32))(v6, *(v0 + 296));
    v10 = sub_16D38C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_16D37C();
    sub_16BD7C();
    sub_16BF2C();
    v13 = *(v7 + 8);
    v13(v8, v9);
    sub_16D35C();

    sub_16BD4C();
    sub_16BF2C();
    v13(v8, v9);
    sub_16D34C();

    v5 = sub_16D36C();

    (*(v22 + 8))(v6, v23);
  }

  *(v0 + 336) = v5;
  v14 = *(v0 + 256);
  v15 = *(v0 + 144);
  v16 = *&v15[*(v4 + 36)];
  v17 = *v15;
  *(v0 + 400) = *v15;
  sub_208C0(v17);
  sub_16E23C();

  v18 = sub_16D5CC();
  sub_214C(v14, 0, 1, v18);
  v19 = swift_task_alloc();
  *(v0 + 344) = v19;
  *v19 = v0;
  v19[1] = sub_15985C;
  v20 = *(v0 + 256);

  return sub_3EC8C();
}

uint64_t sub_15985C()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 344);
  v4 = *(v2 + 256);
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v8 + 352) = v7;
  *(v8 + 360) = v0;

  sub_8748(v4, &qword_1C5800, &unk_16F510);
  if (v0)
  {
    v9 = sub_15A2A8;
  }

  else
  {
    v9 = sub_159990;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_159990()
{
  sub_8430C();
  sub_D4EA4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = *(v0 + 168);
  v76 = *(v0 + 304);
  v77 = *(v0 + 176);
  v9 = *(v0 + 400);
  sub_16C43C();
  (*(v7 + 16))(v5, v4, v6);
  sub_16C75C();
  (*(v7 + 8))(v4, v6);
  sub_16C7AC();
  v10 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_214C(v2, 1, 1, v76);
  sub_12093C(v9, v2, v8);
  sub_8748(v2, &qword_1C5690, &dword_16F320);
  if (sub_369C(v8, 1, v77) == 1)
  {
    sub_8748(*(v0 + 168), &qword_1C57F8, &unk_172510);
LABEL_3:
    v11 = *(v0 + 352);
    v12 = (*(v0 + 144) + *(*(v0 + 328) + 32));
    v13 = v12[4];
    sub_2D20(v12, v12[3]);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v14 = swift_allocObject();
    *(v0 + 384) = v14;
    *(v14 + 16) = xmmword_170F70;
    *(v14 + 32) = v11;
    v15 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v16 = v11;
    swift_task_alloc();
    sub_179E8();
    *(v0 + 392) = v17;
    *v17 = v18;
    v17[1] = sub_15A0D0;
    v19 = *(v0 + 248);
    v20 = *(v0 + 136);
    sub_841E0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v21, v22, v23, v24, v25);
  }

  v27 = *(v0 + 328);
  v28 = *(v0 + 144);
  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  v29 = v28 + *(v27 + 24);
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  v32 = sub_C9F8();
  sub_2D20(v32, v33);
  v34 = *(v31 + 8);
  v35 = sub_42BC();
  v36(v35);
  v37 = *(v0 + 48);
  sub_2D20((v0 + 16), *(v0 + 40));
  sub_42BC();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
  }

  else
  {
    v38 = *(v29 + 24);
    v39 = *(v29 + 32);
    v40 = sub_C9F8();
    sub_2D20(v40, v41);
    v42 = *(v39 + 8);
    v43 = sub_42BC();
    v44(v43);
    v45 = *(v0 + 88);
    sub_2D20((v0 + 56), *(v0 + 80));
    sub_C9F8();
    v46 = sub_16C3FC();
    sub_2D64((v0 + 56));
    sub_2D64((v0 + 16));
    if ((v46 & 1) == 0)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      goto LABEL_3;
    }
  }

  v78 = *(v0 + 352);
  v47 = *(v0 + 328);
  v49 = *(v0 + 184);
  v48 = *(v0 + 192);
  v50 = *(v0 + 176);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 144);
  v54 = *(v53 + *(v47 + 40));
  v55 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
  v57 = v56;
  (*(v49 + 16))(v51 + *(v52 + 20), v48, v50);
  *v51 = v55;
  v51[1] = v57;
  v58 = (v53 + *(v47 + 32));
  v59 = v58[4];
  sub_2D20(v58, v58[3]);
  *(v0 + 120) = type metadata accessor for WellnessSnippets();
  *(v0 + 128) = sub_15AD44(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  v60 = sub_9910((v0 + 96));
  sub_15AC8C(v51, v60, type metadata accessor for GenericButtonModel);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v61 = swift_allocObject();
  *(v0 + 368) = v61;
  *(v61 + 16) = xmmword_170F70;
  *(v61 + 32) = v78;
  v62 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v63 = v78;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 376) = v64;
  *v64 = v65;
  v64[1] = sub_159EB4;
  v66 = *(v0 + 248);
  v67 = *(v0 + 136);
  sub_841E0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v68, v69, v70, v71, v72, v73);
}

uint64_t sub_159EB4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 96));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_159FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 336);
  v17 = *(v14 + 184);
  v16 = *(v14 + 192);
  v18 = *(v14 + 176);
  v19 = *(v14 + 160);

  sub_15ACEC(v19, type metadata accessor for GenericButtonModel);
  v20 = *(v17 + 8);
  v21 = sub_C9F8();
  v22(v21);
  v23 = sub_15AD8C();
  v24(v23);

  sub_C9BC();
  sub_841E0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_15A0D0()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_15A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = *(v14 + 336);

  v16 = sub_15AD8C();
  v17(v16);

  sub_C9BC();
  sub_841E0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_15A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  sub_D4EA4();
  v15 = v14[42];
  v16 = v14[40];
  v18 = v14[36];
  v17 = v14[37];
  v19 = v14[35];
  v21 = v14[31];
  v20 = v14[32];
  v23 = v14[27];
  v22 = v14[28];
  v24 = v14[24];
  v35 = v14[21];
  v36 = v14[20];

  sub_C9BC();
  v25 = v14[45];
  sub_841E0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, a12, a13, a14);
}

uint64_t sub_15A384()
{
  sub_8A88();
  v1[39] = v2;
  v1[40] = v0;
  v3 = type metadata accessor for UnavailableDataFlow();
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[41] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[42] = v6;
  sub_888C(v6);
  v1[43] = v7;
  v9 = *(v8 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_15A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_8430C();
  a21 = v23;
  a22 = v24;
  sub_D4EA4();
  a20 = v22;
  v25 = v22[45];
  v26 = v22[42];
  v27 = v22[43];
  v29 = v22[40];
  v28 = v22[41];
  v30 = sub_16DBBC();
  v22[46] = v30;
  swift_beginAccess();
  v31 = *(v27 + 16);
  v22[47] = v31;
  v22[48] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v25, v30, v26);
  sub_15AC8C(v29, v28, type metadata accessor for UnavailableDataFlow);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v22[45];
  v36 = v22[42];
  v37 = v22[43];
  v38 = v22[41];
  if (v34)
  {
    v50 = v22[45];
    v39 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3AB7C(0xD000000000000013, 0x8000000000179340, &a11);
    *(v39 + 12) = 2080;
    v40 = sub_208C0(*v38);
    v42 = v41;
    sub_15ADBC();
    v43 = sub_3AB7C(v40, v42, &a11);

    *(v39 + 14) = v43;
    _os_log_impl(&def_259DC, v32, v33, "%s for %s", v39, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v44 = *(v37 + 8);
    v44(v50, v36);
  }

  else
  {

    sub_15ADBC();
    v44 = *(v37 + 8);
    v44(v35, v36);
  }

  v22[49] = v44;
  swift_task_alloc();
  sub_179E8();
  v22[50] = v45;
  *v45 = v46;
  v45[1] = sub_15A6A4;
  v47 = v22[40];
  sub_841E0();

  return sub_159348();
}

uint64_t sub_15A6A4()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 400);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 408) = v0;

  if (v0)
  {
    v7 = sub_15A8CC;
  }

  else
  {
    v7 = sub_15A7A8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_15A7A8()
{
  v1 = *(v0 + 312);
  sub_8388(v0 + 176, v0 + 216);
  v2 = swift_allocObject();
  sub_17464((v0 + 216), v2 + 16);
  sub_16C73C();
  v3 = sub_16C1DC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 304) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 176));

  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 328);

  sub_C9BC();

  return v9();
}

uint64_t sub_15A8CC()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  v6 = *(v0 + 336);
  swift_beginAccess();
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = sub_16DBDC();
  v8 = sub_16E37C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 408);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&def_259DC, v7, v8, "%@", v11, 0xCu);
    sub_8748(v12, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  else
  {
    v14 = *(v0 + 408);
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 344) + 8;
  (*(v0 + 392))(*(v0 + 352), *(v0 + 336));
  sub_6362C((v0 + 16));
  sub_82E0();
  sub_16C4EC();
  sub_8334(v0 + 16);
  v18 = *(v0 + 352);
  v17 = *(v0 + 360);
  v19 = *(v0 + 328);

  sub_C9BC();

  return v20();
}

uint64_t sub_15AAB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_15A384();
}

uint64_t sub_15AB50()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15AB88()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_15AC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15AC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_8B38(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_15ACEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_15AD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15AD8C()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v12 = v0[21];
  v13 = v0[20];
  v10 = *(v0[30] + 8);
  return v0[31];
}

uint64_t sub_15ADBC()
{

  return sub_15ACEC(v0, type metadata accessor for UnavailableDataFlow);
}

uint64_t sub_15ADE4(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_16DBEC();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_2440(&qword_1C5690, &dword_16F320) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_15AEE8, 0, 0);
}

uint64_t sub_15AEE8()
{
  v53 = v0;
  v1 = v0[8];
  if (isMedicationRequest(from:)())
  {
    v2 = 122;
  }

  else
  {
    v3 = v0[8];
    sub_B2EA4();
    v2 = v4;
    if (v4 == 270)
    {
      v6 = v0[10];
      v5 = v0[11];
      v7 = v0[9];
      v8 = sub_16DBBC();
      swift_beginAccess();
      (*(v6 + 16))(v5, v8, v7);
      v9 = sub_16DBDC();
      v10 = sub_16E37C();
      v11 = os_log_type_enabled(v9, v10);
      v13 = v0[10];
      v12 = v0[11];
      v14 = v0[9];
      if (v11)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&def_259DC, v9, v10, "Unable to log analytics event - nil datatype", v15, 2u);
      }

      (*(v13 + 8))(v12, v14);
LABEL_15:
      v46 = v0[12];
      v45 = v0[13];
      v47 = v0[11];

      v48 = v0[1];
      sub_8CC0();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_16D74();
  v16 = sub_16E14C();
  v17 = sub_1730C(v2, v16);

  if (v17 == 205 || (v18 = sub_23324(v17), (v0[14] = v18) == 0))
  {
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[10];
    v33 = sub_16DBBC();
    swift_beginAccess();
    (*(v32 + 16))(v30, v33, v31);
    v34 = sub_16DBDC();
    v35 = sub_16E37C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[12];
    v38 = v0[9];
    v39 = v0[10];
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315138;
      sub_140650(v2);
      v44 = sub_3AB7C(v42, v43, &v52);

      *(v40 + 4) = v44;
      _os_log_impl(&def_259DC, v34, v35, "Unable to log analytics event - %s cannot be converted to HKObjectType", v40, 0xCu);
      sub_2D64(v41);
    }

    (*(v39 + 8))(v37, v38);
    goto LABEL_15;
  }

  v19 = v0[8];
  v0[15] = [objc_allocWithZone(HKHealthStore) init];
  v0[16] = [objc_allocWithZone(HealthAppScribeAnalyticEventManager) init];
  v0[17] = sub_16E1AC();
  v20 = sub_16CF4C();
  v0[18] = qword_179418[sub_158C3C(v20, v21)];
  v22 = v0[13];
  v23 = v0[8];
  sub_B379C();
  sub_15B77C(v22);
  sub_4208(v22);
  v0[19] = sub_16E1AC();

  v24 = sub_15B520();
  v25 = HAScribeAnalyticUserActionAssistantService;
  v0[20] = v24;
  v0[21] = v25;
  v26 = async function pointer to isSiriAuthorizedToAccessHealthData(store:)[1];
  v27 = v25;
  v28 = swift_task_alloc();
  v0[22] = v28;
  *v28 = v0;
  v28[1] = sub_15B330;
  sub_8CC0();

  return isSiriAuthorizedToAccessHealthData(store:)();
}

uint64_t sub_15B330(char a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_15B430, 0, 0);
}

void sub_15B430()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  BYTE1(v16) = sub_ACD38();
  LOBYTE(v16) = v1;
  [v7 submitEventWithDataType:v8 requestCategory:v6 requestType:v5 requestInterval:v4 hourOfDay:v2 userAction:v3 hasHealthDataAuthorization:v16 isFirstInvocation:?];

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);

  v13 = *(v0 + 8);
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

id sub_15B520()
{
  v0 = sub_16C09C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_16C0BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_16BF5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16BF4C();
  sub_16C08C();
  (*(v1 + 104))(v4, enum case for Calendar.Component.hour(_:), v0);
  v15 = sub_16C0AC();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  v16 = [objc_allocWithZone(NSNumber) initWithInteger:v15];
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_15B77C(uint64_t a1)
{
  v2 = sub_16BF5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v14 = sub_16BD9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15AC1C(a1, v13);
  if (sub_369C(v13, 1, v14) == 1)
  {
    sub_4208(v13);
    return 0;
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_16BD4C();
  sub_16BECC();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v9, v2);
  sub_16BD7C();
  sub_16BECC();
  v24 = v23;
  result = (v22)(v7, v2);
  v26 = round((v21 - v24) / 3600.0);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v26 < 9.22337204e18)
  {
    v27[1] = v26;
    v19 = sub_16E68C();
    (*(v15 + 8))(v18, v14);
    return v19;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t WatchRingsSnippet.body.getter()
{
  v0 = sub_2440(&qword_1CB8B8, &qword_179470);
  v1 = sub_15BB80();

  return SnippetBody.init(content:)(sub_15BAF8, 0, v0, v1);
}

double sub_15BAF8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_16DFAC();
  KeyPath = swift_getKeyPath();
  sub_16E01C();
  sub_16DC2C();
  *a1 = KeyPath;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_15BB80()
{
  result = qword_1CB8C0;
  if (!qword_1CB8C0)
  {
    sub_9790(&qword_1CB8B8, &qword_179470);
    sub_15BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8C0);
  }

  return result;
}

unint64_t sub_15BC0C()
{
  result = qword_1CB8C8;
  if (!qword_1CB8C8)
  {
    sub_9790(&qword_1CB8D0, &qword_179478);
    sub_15BCC4();
    sub_98C8(&qword_1CB8E0, &qword_1CB8E8, &qword_179480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8C8);
  }

  return result;
}

unint64_t sub_15BCC4()
{
  result = qword_1CB8D8;
  if (!qword_1CB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB8D8);
  }

  return result;
}

uint64_t sub_15BD54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_15BD74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_15BE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_16DC9C();
  *a1 = result;
  return result;
}

uint64_t sub_15BE38(uint64_t *a1)
{
  v1 = *a1;

  return sub_16DCAC();
}

uint64_t static UsoEntity_common_MedicationEvent.builder(dateTime:completionStatus:medSchedule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16CEAC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_16CE9C();
  if (a1)
  {

    sub_16CE7C();
  }

  if (a2)
  {

    sub_16CE8C();
  }

  if (a3)
  {

    sub_16CE6C();
  }

  return v9;
}

uint64_t static UsoEntity_common_MedicationEvent.with(dateTime:completionStatus:medSchedule:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static UsoEntity_common_MedicationEvent.builder(dateTime:completionStatus:medSchedule:)(a1, a2, a3);
  sub_16CB4C();
  sub_16CD0C();
  sub_16CBBC();

  return v4;
}

void sub_15BF80()
{
  sub_4597C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2440(&qword_1C57E0, &unk_171C60);
  v10 = sub_4348(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  v15 = v13 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - v21;
  __chkstk_darwin(v20);
  sub_15F484();
  v23 = sub_16BF5C();
  v49 = v8;
  v24 = 0;
  if (sub_369C(v8, 1, v23) != 1)
  {
    sub_1955C(v49, v0, &qword_1C57E0, &unk_171C60);
    sub_BFA18(v0);
    if (v25)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_16D4EC();
    v24 = sub_16D47C();
    sub_15F51C();
    (*(v26 + 8))(v0, v23);
  }

  sub_BFA18(v6);
  if (v25)
  {
    v27 = 0;
    goto LABEL_9;
  }

  v28 = sub_8427C();
  sub_1955C(v28, v29, v30, v31);
  sub_BFA18(v22);
  if (v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_16D4EC();
  v27 = sub_16D47C();
  sub_15F51C();
  (*(v32 + 8))(v22, v23);
LABEL_9:
  sub_BFA18(v4);
  if (!v25)
  {
    sub_1955C(v4, v19, &qword_1C57E0, &unk_171C60);
    sub_BFA18(v19);
    if (!v25)
    {
      sub_16D4EC();
      v33 = sub_16D47C();
      sub_15F51C();
      (*(v34 + 8))(v19, v23);
      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = 0;
LABEL_14:
  sub_BFA18(v2);
  if (v25)
  {
    v35 = 0;
LABEL_19:
    v37 = type metadata accessor for WellnessTime.Builder(0);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_1261D0();
    sub_12621C(v24);

    sub_126260(v27);

    sub_1262A4(v33);

    v40 = sub_1262E8(v35);

    v41 = type metadata accessor for WellnessTime(0);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    sub_1263B0(v40);

    v44 = sub_9A808();
    sub_C878(v44, v45, &unk_171C60);
    sub_C878(v4, &qword_1C57E0, &unk_171C60);
    v46 = sub_8427C();
    sub_C878(v46, v47, &unk_171C60);
    sub_C878(v49, &qword_1C57E0, &unk_171C60);
    sub_45924();
    return;
  }

  sub_1955C(v2, v15, &qword_1C57E0, &unk_171C60);
  sub_BFA18(v15);
  if (!v25)
  {
    sub_16D4EC();
    v35 = sub_16D47C();
    sub_15F51C();
    (*(v36 + 8))(v15, v23);
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_15C3B4()
{
  *&result = COERCE_DOUBLE(sub_15E0F4());
  if ((v1 & 1) == 0)
  {
    *&result = fabs(*&result / 60.0);
  }

  return result;
}

uint64_t sub_15C3EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_15EE1C();
  if (v2 == 6)
  {
    v3 = 1;
  }

  else
  {
    sub_C9934(v2);
    sub_16E23C();

    v3 = 0;
  }

  v4 = sub_16D5CC();

  return sub_214C(a1, v3, 1, v4);
}

void sub_15C468()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v8);
  v9 = sub_15F56C();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v15);
  sub_10E258();
  __chkstk_darwin(v16);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_C878(v17, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v18 = sub_15F3F4();
  v3(v18);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_8427C();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_15F5D4();
  v3(v23);
  v24 = sub_C9E0();
  v26 = sub_15E55C(v24, v25);
  if ((v27 & 1) != 0 || v26 != 6)
  {
    v33 = *(v12 + 8);
    v34 = sub_9A808();
    v33(v34);
    v35 = sub_8427C();
    v33(v35);
  }

  else
  {
    sub_15E7C0(v1);
    v28 = sub_C9E0();
    sub_15EB20(v28, v29);
    v30 = sub_15F470();
    v0(v30);
    v31 = sub_9A808();
    v0(v31);
    v32 = sub_8427C();
    v0(v32);
  }

LABEL_8:
  sub_45924();
}

void sub_15C678()
{
  sub_4597C();
  v3 = sub_16C0BC();
  v4 = sub_42F0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_12FD4();
  v7 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_15F494(v11, v81);
  v12 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  v17 = sub_15F4A8(v16, v82);
  v18 = sub_42F0(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_12FD4();
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  v22 = sub_4348(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_887C();
  sub_15F508();
  v26 = __chkstk_darwin(v25);
  sub_15F40C(v26, v27, v28, v29, v30, v31, v32, v33, v83);
  __chkstk_darwin(v34);
  sub_10E258();
  __chkstk_darwin(v35);
  v36 = sub_15F54C();
  v37 = sub_42F0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_15F328();
  __chkstk_darwin(v42);
  sub_B62E8();
  __chkstk_darwin(v43);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v48)
  {
    v44 = &qword_1C57E0;
    v45 = &unk_171C60;
    v46 = v2;
  }

  else
  {
    v47 = sub_15F3BC();
    v3(v47);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v48)
    {
      v49 = *(v39 + 8);
      v50 = sub_15F44C();
      v51(v50);
      v44 = &qword_1C57E0;
      v45 = &unk_171C60;
      v46 = v1;
    }

    else
    {
      v52 = sub_C9E0();
      v3(v52);
      v53 = sub_15F58C();
      v55 = sub_15E55C(v53, v54);
      if ((v56 & 1) != 0 || v55 != 6)
      {
        v71 = *(v39 + 8);
        v72 = sub_1064C0();
        v71(v72);
        v73 = sub_15F44C();
        v71(v73);
        goto LABEL_8;
      }

      v57 = sub_15F4CC();
      sub_214C(v84, 1, 1, v57);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v58 = *(v39 + 8);
      v59 = sub_15F598();
      v58(v59);
      v60 = sub_15F5C4();
      v62 = v61(v60);
      sub_15F5F4(v62, v63, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v48)
      {
        v74 = sub_15F58C();
        sub_15EB20(v74, v75);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v76 = sub_15F3AC();
        v77(v76);
        v78 = sub_1064C0();
        v58(v78);
        v79 = sub_15F44C();
        v58(v79);
        v80 = sub_15F598();
        v58(v80);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v64, v65, v66);
      v67 = sub_15F3AC();
      v68(v67);
      v69 = sub_1064C0();
      v58(v69);
      v70 = sub_15F44C();
      v58(v70);
      sub_45624();
    }
  }

  sub_C878(v46, v44, v45);
LABEL_8:
  sub_45924();
}

void sub_15CB0C()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v8);
  v9 = sub_15F56C();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v15);
  sub_10E258();
  __chkstk_darwin(v16);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_C878(v17, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v18 = sub_15F3F4();
  v3(v18);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_8427C();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_15F5D4();
  v3(v23);
  v24 = sub_C9E0();
  v26 = sub_15E55C(v24, v25);
  if ((v27 & 1) != 0 || (v26 - 31) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v33 = *(v12 + 8);
    v34 = sub_9A808();
    v33(v34);
    v35 = sub_8427C();
    v33(v35);
  }

  else
  {
    sub_15E7C0(v1);
    v28 = sub_C9E0();
    sub_15EB20(v28, v29);
    v30 = sub_15F470();
    v0(v30);
    v31 = sub_9A808();
    v0(v31);
    v32 = sub_8427C();
    v0(v32);
  }

LABEL_8:
  sub_45924();
}

void sub_15CD20()
{
  sub_4597C();
  v3 = sub_16C0BC();
  v4 = sub_42F0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_12FD4();
  v7 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_15F494(v11, v81);
  v12 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  v17 = sub_15F4A8(v16, v82);
  v18 = sub_42F0(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_12FD4();
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  v22 = sub_4348(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_887C();
  sub_15F508();
  v26 = __chkstk_darwin(v25);
  sub_15F40C(v26, v27, v28, v29, v30, v31, v32, v33, v83);
  __chkstk_darwin(v34);
  sub_10E258();
  __chkstk_darwin(v35);
  v36 = sub_15F54C();
  v37 = sub_42F0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_15F328();
  __chkstk_darwin(v42);
  sub_B62E8();
  __chkstk_darwin(v43);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v48)
  {
    v44 = &qword_1C57E0;
    v45 = &unk_171C60;
    v46 = v2;
  }

  else
  {
    v47 = sub_15F3BC();
    v3(v47);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v48)
    {
      v49 = *(v39 + 8);
      v50 = sub_15F44C();
      v51(v50);
      v44 = &qword_1C57E0;
      v45 = &unk_171C60;
      v46 = v1;
    }

    else
    {
      v52 = sub_C9E0();
      v3(v52);
      v53 = sub_15F58C();
      v55 = sub_15E55C(v53, v54);
      if ((v56 & 1) != 0 || (v55 - 31) < 0xFFFFFFFFFFFFFFFCLL)
      {
        v71 = *(v39 + 8);
        v72 = sub_1064C0();
        v71(v72);
        v73 = sub_15F44C();
        v71(v73);
        goto LABEL_8;
      }

      v57 = sub_15F4CC();
      sub_214C(v84, 1, 1, v57);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v58 = *(v39 + 8);
      v59 = sub_15F598();
      v58(v59);
      v60 = sub_15F5C4();
      v62 = v61(v60);
      sub_15F5F4(v62, v63, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v48)
      {
        v74 = sub_15F58C();
        sub_15EB20(v74, v75);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v76 = sub_15F3AC();
        v77(v76);
        v78 = sub_1064C0();
        v58(v78);
        v79 = sub_15F44C();
        v58(v79);
        v80 = sub_15F598();
        v58(v80);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v64, v65, v66);
      v67 = sub_15F3AC();
      v68(v67);
      v69 = sub_1064C0();
      v58(v69);
      v70 = sub_15F44C();
      v58(v70);
      sub_45624();
    }
  }

  sub_C878(v46, v44, v45);
LABEL_8:
  sub_45924();
}

void sub_15D1B4()
{
  sub_4597C();
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_15F328();
  __chkstk_darwin(v8);
  v9 = sub_15F56C();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_887C();
  sub_15F5B4();
  __chkstk_darwin(v15);
  sub_10E258();
  __chkstk_darwin(v16);
  sub_15F52C();
  sub_BFAD8(v2);
  if (v19)
  {
    v17 = v2;
LABEL_7:
    sub_C878(v17, &qword_1C57E0, &unk_171C60);
    goto LABEL_8;
  }

  v18 = sub_15F3F4();
  v3(v18);
  sub_15E4EC(v0);
  sub_BFAD8(v0);
  if (v19)
  {
    v20 = *(v12 + 8);
    v21 = sub_8427C();
    v22(v21);
    v17 = v0;
    goto LABEL_7;
  }

  v23 = sub_15F5D4();
  v3(v23);
  v24 = sub_C9E0();
  v26 = sub_15E55C(v24, v25);
  if ((v27 & 1) != 0 || (v26 & 0xFFFFFFFFFFFFFFFELL) != 0x16C)
  {
    v33 = *(v12 + 8);
    v34 = sub_9A808();
    v33(v34);
    v35 = sub_8427C();
    v33(v35);
  }

  else
  {
    sub_15E7C0(v1);
    v28 = sub_C9E0();
    sub_15EB20(v28, v29);
    v30 = sub_15F470();
    v0(v30);
    v31 = sub_9A808();
    v0(v31);
    v32 = sub_8427C();
    v0(v32);
  }

LABEL_8:
  sub_45924();
}

void sub_15D3C8()
{
  sub_4597C();
  v3 = sub_16C0BC();
  v4 = sub_42F0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_12FD4();
  v7 = sub_2440(&qword_1C8480, &unk_1742D0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_15F494(v11, v81);
  v12 = sub_2440(&qword_1C8488, &unk_173C60);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  v17 = sub_15F4A8(v16, v82);
  v18 = sub_42F0(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_12FD4();
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  v22 = sub_4348(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_887C();
  sub_15F508();
  v26 = __chkstk_darwin(v25);
  sub_15F40C(v26, v27, v28, v29, v30, v31, v32, v33, v83);
  __chkstk_darwin(v34);
  sub_10E258();
  __chkstk_darwin(v35);
  v36 = sub_15F54C();
  v37 = sub_42F0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_15F328();
  __chkstk_darwin(v42);
  sub_B62E8();
  __chkstk_darwin(v43);
  sub_15F484();
  sub_15E47C(v2);
  sub_BFAB8(v2);
  if (v48)
  {
    v44 = &qword_1C57E0;
    v45 = &unk_171C60;
    v46 = v2;
  }

  else
  {
    v47 = sub_15F3BC();
    v3(v47);
    sub_15E4EC(v1);
    sub_BFAB8(v1);
    if (v48)
    {
      v49 = *(v39 + 8);
      v50 = sub_15F44C();
      v51(v50);
      v44 = &qword_1C57E0;
      v45 = &unk_171C60;
      v46 = v1;
    }

    else
    {
      v52 = sub_C9E0();
      v3(v52);
      v53 = sub_15F58C();
      v55 = sub_15E55C(v53, v54);
      if ((v56 & 1) != 0 || (v55 & 0xFFFFFFFFFFFFFFFELL) != 0x16C)
      {
        v71 = *(v39 + 8);
        v72 = sub_1064C0();
        v71(v72);
        v73 = sub_15F44C();
        v71(v73);
        goto LABEL_8;
      }

      v57 = sub_15F4CC();
      sub_214C(v84, 1, 1, v57);
      sub_15F344();
      sub_15F5A4();
      sub_15F390();
      sub_16BE1C();
      sub_15F610();
      sub_15E7C0(v0);
      sub_15F424();
      v58 = *(v39 + 8);
      v59 = sub_15F598();
      v58(v59);
      v60 = sub_15F5C4();
      v62 = v61(v60);
      sub_15F5F4(v62, v63, &qword_1C57E0, &unk_171C60);
      sub_BFAB8(v0);
      if (!v48)
      {
        v74 = sub_15F58C();
        sub_15EB20(v74, v75);
        sub_C878(v2, &qword_1C57E0, &unk_171C60);
        v76 = sub_15F3AC();
        v77(v76);
        v78 = sub_1064C0();
        v58(v78);
        v79 = sub_15F44C();
        v58(v79);
        v80 = sub_15F598();
        v58(v80);
        goto LABEL_8;
      }

      sub_45624();
      sub_C878(v64, v65, v66);
      v67 = sub_15F3AC();
      v68(v67);
      v69 = sub_1064C0();
      v58(v69);
      v70 = sub_15F44C();
      v58(v70);
      sub_45624();
    }
  }

  sub_C878(v46, v44, v45);
LABEL_8:
  sub_45924();
}

uint64_t sub_15D85C()
{
  v0 = sub_16D53C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_16D52C();
  sub_15E0F4();
  sub_16D51C();

  v3 = sub_16D50C();

  return v3;
}

void sub_15D8D8()
{
  sub_4597C();
  v1 = v0;
  v3 = v2;
  v4 = sub_16DBEC();
  v5 = sub_42F0(v4);
  v68 = v6;
  v69 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_12FD4();
  v67 = v9;
  v72 = sub_16C00C();
  v10 = sub_42F0(v72);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  v18 = sub_4348(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_887C();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  v27 = OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier;
  sub_1955C(v1 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier, &v65 - v25, &qword_1C5800, &unk_16F510);
  v28 = sub_16D5CC();
  if (sub_369C(v26, 1, v28) != 1)
  {
    v70 = v12;
    v71 = v3;
    v29 = sub_16D5BC();
    v31 = v30;
    v32 = *(v28 - 8);
    v33 = *(v32 + 8);
    v65 = v32 + 8;
    v66 = v33;
    v33(v26, v28);
    v34 = v29 == 0x6169726F67657267 && v31 == 0xE90000000000006ELL;
    if (v34 || (sub_15F3D8() & 1) != 0)
    {

      v35 = &enum case for Calendar.Identifier.gregorian(_:);
    }

    else
    {
      v38 = v29 == 0x7473696864647562 && v31 == 0xE800000000000000;
      if (v38 || (sub_15F3D8() & 1) != 0)
      {

        v35 = &enum case for Calendar.Identifier.buddhist(_:);
      }

      else
      {
        v39 = v29 == 0x6573656E696863 && v31 == 0xE700000000000000;
        if (v39 || (sub_15F3D8() & 1) != 0)
        {

          v35 = &enum case for Calendar.Identifier.chinese(_:);
        }

        else
        {
          v40 = v29 == 0x636974706F63 && v31 == 0xE600000000000000;
          if (v40 || (sub_15F3D8() & 1) != 0)
          {

            v35 = &enum case for Calendar.Identifier.coptic(_:);
          }

          else
          {
            v41 = v29 == 0xD000000000000013 && 0x8000000000181510 == v31;
            if (v41 || (sub_15F3D8() & 1) != 0)
            {

              v35 = &enum case for Calendar.Identifier.ethiopicAmeteMihret(_:);
            }

            else
            {
              v42 = v29 == 0xD000000000000011 && 0x8000000000181530 == v31;
              if (v42 || (sub_15F3D8() & 1) != 0)
              {

                v35 = &enum case for Calendar.Identifier.ethiopicAmeteAlem(_:);
              }

              else
              {
                v43 = v29 == 0x776572626568 && v31 == 0xE600000000000000;
                if (v43 || (sub_15F3D8() & 1) != 0)
                {

                  v35 = &enum case for Calendar.Identifier.hebrew(_:);
                }

                else
                {
                  v44 = v29 == 0x313036386F7369 && v31 == 0xE700000000000000;
                  if (v44 || (sub_15F3D8() & 1) != 0)
                  {

                    v35 = &enum case for Calendar.Identifier.iso8601(_:);
                  }

                  else
                  {
                    v45 = v29 == 0x6E6169646E69 && v31 == 0xE600000000000000;
                    if (v45 || (sub_15F3D8() & 1) != 0)
                    {

                      v35 = &enum case for Calendar.Identifier.indian(_:);
                    }

                    else
                    {
                      v46 = v29 == (sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x63000000000000) && v31 == 0xE700000000000000;
                      if (v46 || (sub_15F3D8() & 1) != 0)
                      {

                        v35 = &enum case for Calendar.Identifier.islamic(_:);
                      }

                      else
                      {
                        v48 = v29 == (sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x4363000000000000) && v31 == v47;
                        if (v48 || (sub_15F3D8() & 1) != 0)
                        {

                          v35 = &enum case for Calendar.Identifier.islamicCivil(_:);
                        }

                        else
                        {
                          v49 = v29 == 0x6573656E6170616ALL && v31 == 0xE800000000000000;
                          if (v49 || (sub_15F3D8() & 1) != 0)
                          {

                            v35 = &enum case for Calendar.Identifier.japanese(_:);
                          }

                          else
                          {
                            v50 = v29 == 0x6E616973726570 && v31 == 0xE700000000000000;
                            if (v50 || (sub_15F3D8() & 1) != 0)
                            {

                              v35 = &enum case for Calendar.Identifier.persian(_:);
                            }

                            else
                            {
                              v51 = v29 == 0x63696C6275706572 && v31 == 0xEF616E696843664FLL;
                              if (v51 || (sub_15F3D8() & 1) != 0)
                              {

                                v35 = &enum case for Calendar.Identifier.republicOfChina(_:);
                              }

                              else
                              {
                                v53 = v29 == (sub_15F5E4() & 0xFFFFFFFFFFFFLL | 0x5463000000000000) && v31 == v52;
                                if (v53 || (sub_15F3D8() & 1) != 0)
                                {

                                  v35 = &enum case for Calendar.Identifier.islamicTabular(_:);
                                }

                                else
                                {
                                  if (v29 == 0xD000000000000010 && 0x8000000000181550 == v31)
                                  {
                                  }

                                  else
                                  {
                                    v55 = sub_15F3D8();

                                    if ((v55 & 1) == 0)
                                    {
                                      v56 = sub_16DBBC();
                                      swift_beginAccess();
                                      (*(v68 + 16))(v67, v56, v69);

                                      v57 = sub_16DBDC();
                                      v58 = sub_16E37C();

                                      if (os_log_type_enabled(v57, v58))
                                      {
                                        v59 = swift_slowAlloc();
                                        v60 = swift_slowAlloc();
                                        v73 = v60;
                                        *v59 = 136315138;
                                        sub_1955C(v1 + v27, v23, &qword_1C5800, &unk_16F510);
                                        if (sub_369C(v23, 1, v28) == 1)
                                        {
                                          sub_C878(v23, &qword_1C5800, &unk_16F510);
                                          v61 = 0;
                                          v62 = 0xE000000000000000;
                                        }

                                        else
                                        {
                                          v61 = sub_16D5BC();
                                          v62 = v63;
                                          v66(v23, v28);
                                        }

                                        v64 = sub_3AB7C(v61, v62, &v73);

                                        *(v59 + 4) = v64;
                                        _os_log_impl(&def_259DC, v57, v58, "Unknown calendar identifier: %s", v59, 0xCu);
                                        sub_2D64(v60);
                                      }

                                      (*(v68 + 8))(v67, v69);
                                      goto LABEL_3;
                                    }
                                  }

                                  v35 = &enum case for Calendar.Identifier.islamicUmmAlQura(_:);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v36 = v70;
    v37 = v72;
    (*(v70 + 104))(v16, *v35, v72);
    sub_16C01C();
    (*(v36 + 8))(v16, v37);
    goto LABEL_11;
  }

  sub_C878(v26, &qword_1C5800, &unk_16F510);
LABEL_3:
  sub_16C08C();
LABEL_11:
  sub_45924();
}

uint64_t sub_15E0F4()
{
  v1 = sub_16BF5C();
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  sub_2440(&qword_1CB900, &qword_179570);
  v12 = *(v5 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1712E0;
  v30 = v14;
  v15 = v14 + v13;
  sub_15EF00(v15);
  v35 = v0;
  sub_15EE90(v15 + v12);
  v16 = 0;
  v17 = 0;
  v31 += 8;
  v18 = _swiftEmptyArrayStorage;
  v32 = v15;
  v33 = v12;
  do
  {
    v19 = v16;
    sub_1955C(v15 + v17 * v12, v11, &qword_1C57E0, &unk_171C60);
    sub_1955C(v11, v9, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v9, 1, v1) == 1)
    {
      sub_C878(v11, &qword_1C57E0, &unk_171C60);
      sub_C878(v9, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v20 = v34;
      sub_15E7C0(v34);
      sub_16BEDC();
      v22 = v21;
      v23 = *v31;
      (*v31)(v20, v1);
      sub_C878(v11, &qword_1C57E0, &unk_171C60);
      v23(v9, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_3A934(0, *(v18 + 2) + 1, 1, v18);
        v18 = v26;
      }

      v25 = *(v18 + 2);
      v24 = *(v18 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_3A934(v24 > 1, v25 + 1, 1, v18);
        v18 = v27;
      }

      *(v18 + 2) = v25 + 1;
      *&v18[8 * v25 + 32] = v22;
      v15 = v32;
      v12 = v33;
    }

    v16 = 1;
    v17 = 1;
  }

  while ((v19 & 1) == 0);
  swift_setDeallocating();
  sub_60D40();
  if (*(v18 + 2))
  {
    v28 = *(v18 + 4);

    return v28 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_15E47C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15E4EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15E55C(uint64_t a1, uint64_t a2)
{
  v19[0] = a1;
  v19[1] = a2;
  v2 = sub_16C0BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_16BE2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15D8D8();
  sub_2440(&qword_1C96C0, &qword_175E28);
  v12 = sub_16C09C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_16F530;
  (*(v13 + 104))(v16 + v15, enum case for Calendar.Component.day(_:), v12);
  sub_15EFE0();
  sub_16C04C();

  (*(v3 + 8))(v6, v2);
  v17 = sub_16BDAC();
  (*(v8 + 8))(v11, v7);
  return v17;
}

uint64_t sub_15E7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  swift_beginAccess();
  v10 = *(v1 + 16);
  if (!v10)
  {
    v17 = 0u;
    v18 = 0u;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = sub_16D55C();

  sub_17400(0xD000000000000010, 0x80000000001814F0, v12, &v17);

  if (!*(&v18 + 1))
  {
LABEL_12:
    sub_C878(&v17, &qword_1C63E0, &unk_1717D0);
LABEL_13:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_14;
  }

  sub_2440(&qword_1CB908, &qword_179578);
  if ((swift_dynamicCast() & 1) == 0 || !v16)
  {
    goto LABEL_13;
  }

  sub_17400(7827310, 0xE300000000000000, v16, &v17);

  if (!*(&v18 + 1))
  {
LABEL_14:
    sub_C878(&v17, &qword_1C63E0, &unk_1717D0);
LABEL_15:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_16;
  }

  sub_2440(&qword_1CB908, &qword_179578);
  if ((swift_dynamicCast() & 1) == 0 || !v16)
  {
    goto LABEL_15;
  }

  sub_17400(1935893875, 0xE400000000000000, v16, &v17);

  if (!*(&v18 + 1))
  {
LABEL_16:
    sub_C878(&v17, &qword_1C63E0, &unk_1717D0);
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    sub_16BF1C();
    v13 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v13 = 1;
LABEL_18:
  v14 = sub_16BF5C();
  sub_214C(v9, v13, 1, v14);
  sub_1955C(v9, v7, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v7, 1, v14) == 1)
  {
    sub_16BF4C();
    sub_C878(v9, &qword_1C57E0, &unk_171C60);
    result = sub_369C(v7, 1, v14);
    if (result != 1)
    {
      return sub_C878(v7, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_C878(v9, &qword_1C57E0, &unk_171C60);
    return (*(*(v14 - 8) + 32))(a1, v7, v14);
  }

  return result;
}

uint64_t sub_15EB20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2440(&qword_1CB910, &qword_179580);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_2440(&qword_1CB918, &qword_179588);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = sub_16BF5C();
  v18 = sub_15F2E0(&qword_1C57E8, &type metadata accessor for Date);
  result = sub_16E18C();
  if (result)
  {
    v20 = *(v17 - 8);
    v30 = v3;
    v21 = v20;
    v28 = v13;
    v22 = *(v20 + 16);
    v29 = v18;
    v22(v12, a1, v17);
    v22(&v12[*(v6 + 48)], a2, v17);
    sub_1955C(v12, v10, &qword_1CB910, &qword_179580);
    v23 = *(v6 + 48);
    v24 = *(v21 + 32);
    v24(v16, v10, v17);
    v25 = *(v21 + 8);
    v25(&v10[v23], v17);
    sub_15EF70(v12, v10);
    v24(&v16[*(v28 + 36)], &v10[*(v6 + 48)], v17);
    v25(v10, v17);
    if (sub_16E17C())
    {
      v26 = sub_16E18C();
    }

    else
    {
      v26 = 0;
    }

    sub_C878(v16, &qword_1CB918, &qword_179588);
    return v26 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_15EE1C()
{
  sub_15C468();
  if (v0)
  {
    return 0;
  }

  sub_15CB0C();
  if (v2)
  {
    return 1;
  }

  sub_15D1B4();
  if (v3)
  {
    return 2;
  }

  sub_15C678();
  if (v4)
  {
    return 3;
  }

  sub_15CD20();
  if (v5)
  {
    return 4;
  }

  sub_15D3C8();
  if (v6)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_15EE90@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15EF00@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 48) && (sub_16D48C(), (v3 & 1) == 0))
  {
    sub_16BF1C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16BF5C();

  return sub_214C(a1, v4, 1, v5);
}

uint64_t sub_15EF70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CB910, &qword_179580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_15EFE0()
{
  sub_4597C();
  v1 = v0;
  v2 = sub_16C09C();
  v3 = sub_42F0(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_887C();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v44 = &v35 - v11;
  if (*(v1 + 16) && (sub_2440(&qword_1CB920, &unk_179590), v12 = sub_16E44C(), v13 = v12, (v39 = *(v1 + 16)) != 0))
  {
    v14 = 0;
    v43 = v12 + 56;
    v15 = *(v40 + 80);
    v37 = v1;
    v38 = v1 + ((v15 + 32) & ~v15);
    v42 = v40 + 16;
    v16 = (v40 + 8);
    v36 = (v40 + 32);
    while (v14 < *(v1 + 16))
    {
      v17 = *(v40 + 72);
      v41 = v14 + 1;
      v18 = *(v40 + 16);
      v18(v44, v38 + v17 * v14, v2);
      v19 = *(v13 + 40);
      sub_15F458();
      sub_15F2E0(&qword_1CB928, v20);
      v21 = sub_16E15C();
      v22 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v23 = v21 & v22;
        v24 = (v21 & v22) >> 6;
        v25 = *(v43 + 8 * v24);
        v26 = 1 << (v21 & v22);
        if ((v26 & v25) == 0)
        {
          break;
        }

        v27 = v13;
        v18(v9, *(v13 + 48) + v23 * v17, v2);
        sub_15F458();
        sub_15F2E0(&qword_1CB930, v28);
        v29 = sub_16E19C();
        v30 = *v16;
        (*v16)(v9, v2);
        if (v29)
        {
          v30(v44, v2);
          v13 = v27;
          goto LABEL_12;
        }

        v21 = v23 + 1;
        v13 = v27;
      }

      v31 = v44;
      *(v43 + 8 * v24) = v26 | v25;
      (*v36)(*(v13 + 48) + v23 * v17, v31, v2);
      v32 = *(v13 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_15;
      }

      *(v13 + 16) = v34;
LABEL_12:
      v14 = v41;
      v1 = v37;
      if (v41 == v39)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_45924();
  }
}

uint64_t sub_15F2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15F3AC()
{
  v2 = *(v1 - 88);
  v3 = *(*(v1 - 96) + 8);
  return v0;
}

uint64_t sub_15F3BC()
{
  *(v4 - 160) = v3;
  *(v4 - 152) = v0;
  v5 = *(v1 + 32);
  return v2;
}

uint64_t sub_15F3D8()
{

  return sub_16E6BC();
}

uint64_t sub_15F424()
{
  v2 = *(v0 - 128);

  return sub_16C05C();
}

uint64_t sub_15F4A8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 144) = &a2 - a1;

  return sub_16BE2C();
}

uint64_t sub_15F4CC()
{
  sub_214C(*(v0 - 144), 1, 1, *(v0 - 152));

  return sub_16C0EC();
}

uint64_t sub_15F52C()
{

  return sub_15E47C(v0);
}

uint64_t sub_15F54C()
{

  return sub_16BF5C();
}

uint64_t sub_15F56C()
{

  return sub_16BF5C();
}

uint64_t sub_15F5C4()
{
  v2 = *(v1 - 152);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t sub_15F5F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 112);

  return sub_1955C(v4, v7, a3, a4);
}

void sub_15F610()
{
  v2 = *(v0 - 104);

  sub_15D8D8();
}

uint64_t sub_15F63C()
{
  sub_83EC();

  return sub_16C33C();
}

uint64_t sub_15F690()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_16C46C();
  v1[4] = v3;
  sub_888C(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[8] = v7;
  sub_888C(v7);
  v1[9] = v8;
  v10 = *(v9 + 64) + 15;
  v1[10] = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_15F79C()
{
  sub_8A88();
  v1 = *(*(v0 + 24) + 240);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_15F82C;

  return sub_3E880();
}

uint64_t sub_15F82C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *(v4 + 88);
  v7 = *v2;
  sub_C990();
  *v8 = v7;

  if (v1)
  {

    v9 = sub_15FCB8;
  }

  else
  {
    *(v5 + 96) = a1;
    v9 = sub_15F94C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_15F94C()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  v9 = v7[28];
  v10 = v7[29];
  sub_2D20(v7 + 25, v9);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = xmmword_170F70;
  *(v11 + 32) = v1;
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v13 = v1;
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_15FB18;
  v15 = v0[10];
  v16 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v11, v15, v9, v10);
}

uint64_t sub_15FB18()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_15FC18()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  sub_C9BC();

  return v7();
}

uint64_t sub_15FCB8()
{
  sub_8A88();
  v1 = v0[2];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];

  sub_C9BC();

  return v5();
}

uint64_t sub_15FD34()
{
  sub_8A88();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_16DBEC();
  v1[43] = v3;
  sub_888C(v3);
  v1[44] = v4;
  v6 = *(v5 + 64) + 15;
  v1[45] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[46] = v7;
  *v7 = v1;
  v7[1] = sub_15FE1C;

  return sub_15F690();
}

uint64_t sub_15FE1C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 368);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_15FF00()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 328);
    sub_17464((v0 + 216), v0 + 176);
    sub_8388(v0 + 176, v0 + 256);
    v2 = swift_allocObject();
    sub_17464((v0 + 256), v2 + 16);
    sub_16C73C();
    v3 = sub_16C1DC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 320) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 176));
  }

  else
  {
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    sub_7874C(v0 + 216);
    v9 = sub_16DBBC();
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_16DBDC();
    v11 = sub_16E37C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&def_259DC, v10, v11, "Failed to create output for onboarding required flow", v12, 2u);
    }

    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 328);

    (*(v14 + 8))(v13, v15);
    sub_8284(v16 + 40, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  v18 = *(v0 + 360);

  sub_C9BC();

  return v19();
}

uint64_t sub_160140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_15FD34();
}

uint64_t sub_1601D8()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_160210()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_1602A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_2D20(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  if (v10 == 270 || (v11 = v10, sub_16D74(), v12 = sub_16E14C(), v13 = sub_1730C(v11, v12), , v13 == 205))
  {
    sub_16BE9C();
    v14 = sub_2564();

    return sub_214C(v14, v15, v16, v17);
  }

  else
  {
    v19 = a1[3];
    v20 = a1[4];
    sub_2D20(a1, v19);
    (*(v20 + 32))(v19, v20);
    sub_12093C(v13, v7, a2);
    return sub_4208(v7);
  }
}

uint64_t sub_160444(uint64_t a1, void *a2, char a3)
{
  if (!a2)
  {
    v6 = sub_1608B8(a3);
    v8 = v7;
    if (v6 == 0xD000000000000010 && 0x80000000001815F0 == v7)
    {
      goto LABEL_15;
    }

    v10 = v6;
    v11 = sub_16E6BC();

    if (v11)
    {
      goto LABEL_16;
    }

    if (v10 == 0xD000000000000012 && 0x8000000000181690 == v8)
    {
LABEL_15:
    }

    else
    {
      v13 = sub_16E6BC();

      if ((v13 & 1) == 0)
      {
        sub_16BE9C();
        v14 = sub_2564();

        return sub_214C(v14, v15, v16, v17);
      }
    }
  }

LABEL_16:
  switch(a3)
  {
    case 1:
      goto LABEL_26;
    case 2:
      sub_1609CC();
      sub_16E47C(63);
      sub_1609DC();
      v19._countAndFlagsBits = 0xD00000000000003DLL;
      sub_1609E8(v19, "ation=1&scheduleItemIdentifier=");
      if (a2)
      {
        goto LABEL_31;
      }

      __break(1u);
LABEL_22:
      sub_1609CC();
      sub_16E47C(71);
      sub_1609DC();
      v20._countAndFlagsBits = 0xD000000000000045;
      sub_1609E8(v20, "openMedicationsApp");
      if (!a2)
      {
        __break(1u);
LABEL_24:
        sub_1609CC();
        sub_16E47C(113);
        sub_1609DC();
        v21._countAndFlagsBits = 0xD00000000000006FLL;
        sub_1609E8(v21, "heduleItemIdentifier=");
        if (!a2)
        {
          __break(1u);
LABEL_26:
          sub_1609CC();
          sub_16E47C(70);
          sub_1609DC();
          v22._countAndFlagsBits = 0xD000000000000044;
          sub_1609E8(v22, "ation=1&medicationName=");
          if (!a2)
          {
            __break(1u);
LABEL_28:
            sub_1609CC();
            sub_16E47C(112);
            sub_1609DC();
            v23._countAndFlagsBits = 0xD00000000000006ELL;
            sub_1609E8(v23, "watchMedicationQueryingError");
            if (!a2)
            {
              __break(1u);
LABEL_30:
              sub_1609CC();
              sub_16E47C(105);
              sub_1609DC();
              v24._countAndFlagsBits = 0xD000000000000067;
              sub_1609E8(v24, "s.app/logDose?medicationName=");
              if (!a2)
              {
                __break(1u);
                JUMPOUT(0x160724);
              }
            }
          }
        }
      }

LABEL_31:
      v26._countAndFlagsBits = a1;
      v26._object = a2;
      sub_16E26C(v26);
      sub_16BE8C();

      break;
    case 3:
      goto LABEL_22;
    case 5:
      goto LABEL_28;
    case 6:
      goto LABEL_30;
    case 7:
      goto LABEL_24;
    default:

      return sub_16BE8C();
  }

  return result;
}

uint64_t sub_160744@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  if (sub_C1AF4(a1, &off_1B8920))
  {
    v8 = sub_16BD9C();
    sub_214C(v7, 1, 1, v8);
    v9 = a2;
    v10 = 42;
LABEL_8:
    sub_12093C(v10, v7, v9);
    return sub_4208(v7);
  }

  sub_16D74();
  v11 = sub_16E14C();
  v12 = sub_1730C(a1, v11);

  if (v12 != 205)
  {
    v18 = sub_16BD9C();
    sub_214C(v7, 1, 1, v18);
    v9 = a2;
    v10 = v12;
    goto LABEL_8;
  }

  sub_16BE9C();
  v13 = sub_2564();

  return sub_214C(v13, v14, v15, v16);
}

unint64_t sub_1608B8(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000018;
      break;
    case 2:
    case 6:
      result = 0xD000000000000020;
      break;
    case 3:
    case 7:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1609A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1608B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1609E8(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16E26C(a1);
}

uint64_t type metadata accessor for WellnessLoggingCATs()
{
  result = qword_1CB938;
  if (!qword_1CB938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160A8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_160AE0(a1, a2);
}

uint64_t sub_160AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_372FC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_45D08(a1);
  return v12;
}

void __swiftcall WatchRingsModel.init(exerciseGoalValue:exerciseTotalValue:moveGoalValue:moveTotalValue:standGoalValue:standTotalValue:)(WellnessFlowPlugin::WatchRingsModel *__return_ptr retstr, Swift::Double exerciseGoalValue, Swift::Double exerciseTotalValue, Swift::Double moveGoalValue, Swift::Double moveTotalValue, Swift::Double standGoalValue, Swift::Double standTotalValue)
{
  retstr->exerciseGoalValue.value = exerciseGoalValue;
  retstr->exerciseGoalValue.is_nil = 0;
  *(&retstr->exerciseTotalValue.value + 7) = exerciseTotalValue;
  BYTE6(retstr->moveGoalValue.value) = 0;
  *(&retstr->moveTotalValue.value + 5) = moveGoalValue;
  BYTE4(retstr->standGoalValue.value) = 0;
  *(&retstr->standTotalValue.value + 3) = moveTotalValue;
  BYTE2(retstr[1].exerciseGoalValue.value) = 0;
  *(&retstr[1].exerciseTotalValue.value + 1) = standGoalValue;
  LOBYTE(retstr[1].moveGoalValue.value) = 0;
  *&retstr[1].moveGoalValue.is_nil = standTotalValue;
  HIBYTE(retstr[1].moveTotalValue.value) = 0;
}

uint64_t sub_160CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000017AB80 == a2;
  if (v3 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000017ABA0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616F4765766F6DLL && a2 == 0xED000065756C6156;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61746F5465766F6DLL && a2 == 0xEE0065756C61566CLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616F47646E617473 && a2 == 0xEE0065756C61566CLL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746F54646E617473 && a2 == 0xEF65756C61566C61)
          {

            return 5;
          }

          else
          {
            v11 = sub_16E6BC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_160EB4(char a1)
{
  result = 0x6C616F4765766F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x61746F5465766F6DLL;
      break;
    case 4:
      result = 0x616F47646E617473;
      break;
    case 5:
      result = 0x746F54646E617473;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_160FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_160CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_160FDC(uint64_t a1)
{
  v2 = sub_16121C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_161018(uint64_t a1)
{
  v2 = sub_16121C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WatchRingsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CB988, &qword_179720);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v27[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_16121C();
  sub_16E77C();
  v14 = *v3;
  v15 = *(v3 + 8);
  v27[15] = 0;
  sub_1617BC();
  if (!v2)
  {
    v16 = v3[2];
    v17 = *(v3 + 24);
    v27[14] = 1;
    sub_1617BC();
    v18 = v3[4];
    v19 = *(v3 + 40);
    v27[13] = 2;
    sub_1617BC();
    v20 = v3[6];
    v21 = *(v3 + 56);
    v27[12] = 3;
    sub_1617BC();
    v22 = v3[8];
    v23 = *(v3 + 72);
    v27[11] = 4;
    sub_1617BC();
    v24 = v3[10];
    v25 = *(v3 + 88);
    v27[10] = 5;
    sub_1617BC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_16121C()
{
  result = qword_1CB990;
  if (!qword_1CB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB990);
  }

  return result;
}

uint64_t WatchRingsModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2440(&qword_1CB998, &qword_179728);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_16121C();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v50 = 0;
  v14 = sub_1617A0();
  v16 = v15;
  v49 = 1;
  v17 = sub_1617A0();
  v37 = v18;
  v38 = v17;
  v48 = 2;
  v19 = sub_1617A0();
  v35 = v20;
  v36 = v19;
  v47 = 3;
  v21 = sub_1617A0();
  v33 = v22;
  v34 = v21;
  v46 = 4;
  v23 = sub_1617A0();
  v31 = v24;
  v32 = v23;
  v45 = 5;
  v25 = sub_1617A0();
  v27 = v26;
  v28 = *(v8 + 8);
  v30 = v25;
  v28(v12, v5);
  v44 = v16 & 1;
  v43 = v37 & 1;
  v42 = v35 & 1;
  v41 = v33 & 1;
  v40 = v31 & 1;
  v39 = v27 & 1;
  result = sub_2D64(a1);
  *a2 = v14;
  *(a2 + 8) = v44;
  *(a2 + 16) = v38;
  *(a2 + 24) = v43;
  *(a2 + 32) = v36;
  *(a2 + 40) = v42;
  *(a2 + 48) = v34;
  *(a2 + 56) = v41;
  *(a2 + 64) = v32;
  *(a2 + 72) = v40;
  *(a2 + 80) = v30;
  *(a2 + 88) = v39;
  return result;
}

void *sub_161520@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = WatchRingsModel.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x59uLL);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WatchRingsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x161660);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_16169C()
{
  result = qword_1CB9A0;
  if (!qword_1CB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9A0);
  }

  return result;
}

unint64_t sub_1616F4()
{
  result = qword_1CB9A8;
  if (!qword_1CB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9A8);
  }

  return result;
}

unint64_t sub_16174C()
{
  result = qword_1CB9B0;
  if (!qword_1CB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9B0);
  }

  return result;
}

uint64_t sub_1617A0()
{

  return sub_16E59C();
}

uint64_t sub_1617BC()
{

  return sub_16E62C();
}

uint64_t type metadata accessor for OxygenSaturationQueryModel()
{
  result = qword_1CBA28;
  if (!qword_1CBA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.averageValueString.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 40));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.averageValueString.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.maxValueString.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.maxValueString.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.minValueString.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.minValueString.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.mostRecentValueString.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.unit.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 56));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.unit.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OxygenSaturationQueryModel.averageLabelString.getter()
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  sub_20658(*(Model + 60));
  return sub_8B9C();
}

uint64_t OxygenSaturationQueryModel.averageLabelString.setter()
{
  v3 = sub_163BE0();
  result = sub_66A6C(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_161FAC(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_16BE9C();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_64F0C(a1, v7, &qword_1C57F8, &unk_172510);
  if (sub_369C(v7, 1, v8) == 1)
  {
    sub_45D08(v7);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v11 + 32))(v15, v7, v8);
    v17 = sub_16BE5C();
    sub_2068C(v17, v18);
    return (*(v11 + 8))(v15, v8);
  }
}

uint64_t sub_162144(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_11;
  }

  v2 = result;
  if (*&result <= 0.0)
  {
    goto LABEL_11;
  }

  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_11:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_162260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1953066613 && a2 == 0xE400000000000000;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_16E6BC();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_162684(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v3 = 1450729837;
      return v3 | 0x65756C6100000000;
    case 3:
      v3 = 1450076525;
      return v3 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6562614C65746164;
    case 6:
      return 0xD000000000000012;
    case 7:
      v4 = 1450729837;
      goto LABEL_16;
    case 8:
      v4 = 1450076525;
LABEL_16:
      result = v4 | 0x65756C6100000000;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 1953066613;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_162830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_162260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_162858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_16267C();
  *a1 = result;
  return result;
}

uint64_t sub_162880(uint64_t a1)
{
  v2 = sub_162C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1628BC(uint64_t a1)
{
  v2 = sub_162C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OxygenSaturationQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CB9B8, &qword_179908);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_162C68();
  sub_16E77C();
  v22[15] = 0;
  sub_16C11C();
  sub_163BC8();
  sub_1634A4(v12, v13);
  sub_12C630();
  if (!v1)
  {
    Model = type metadata accessor for OxygenSaturationQueryModel();
    sub_669D0(Model[5]);
    v22[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v22[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v22[12] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v22[11] = 4;
    sub_20584();
    sub_16E62C();
    v15 = Model[9];
    v22[10] = 5;
    sub_16D5CC();
    sub_163B98();
    sub_1634A4(v16, v17);
    sub_12C630();
    sub_66A40(Model[10]);
    v22[9] = 6;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[11]);
    v22[8] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v22[7] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v22[6] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v22[5] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v22[4] = 11;
    sub_20584();
    sub_16E61C();
    v18 = Model[16];
    v22[3] = 12;
    type metadata accessor for SnippetHeaderModel();
    sub_163BB0();
    sub_1634A4(v19, v20);
    sub_12C630();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_162C68()
{
  result = qword_1CB9C0;
  if (!qword_1CB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB9C0);
  }

  return result;
}

uint64_t OxygenSaturationQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v86 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_13088();
  v87 = v6;
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v97 = v11;
  v12 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v98 = v16;
  v99 = sub_2440(&qword_1CB9C8, &qword_179910);
  sub_42F0(v99);
  v96 = v17;
  v19 = *(v18 + 64);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v102 = v21;
  Model = type metadata accessor for OxygenSaturationQueryModel();
  v23 = (Model - 8);
  v24 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_16C11C();
  sub_214C(v26, 1, 1, v95);
  sub_12C650(v23[7]);
  v94 = v27;
  *(v27 + 8) = 1;
  sub_12C650(v23[8]);
  v93 = v28;
  *(v28 + 8) = 1;
  sub_12C650(v23[9]);
  v92 = v29;
  *(v29 + 8) = 1;
  sub_12C650(v23[10]);
  v90 = v30;
  *(v30 + 8) = 1;
  v31 = v23[11];
  v32 = sub_16D5CC();
  v89 = v31;
  v91 = v32;
  sub_214C(&v26[v31], 1, 1, v32);
  v33 = &v26[v23[12]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v88 = v33;
  v34 = &v26[v23[13]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v26[v23[14]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v26[v23[15]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v26[v23[16]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v26[v23[17]];
  *v38 = 0;
  v38[1] = 0;
  v39 = v23[18];
  v40 = type metadata accessor for SnippetHeaderModel();
  v101 = v26;
  v85 = v39;
  sub_214C(&v26[v39], 1, 1, v40);
  v41 = v103[4];
  sub_2D20(v103, v103[3]);
  sub_162C68();
  v42 = v100;
  sub_16E76C();
  if (v42)
  {
    v81 = v101;
  }

  else
  {
    v100 = v34;
    v84 = v35;
    v83 = v36;
    v82 = v37;
    v43 = v96;
    v44 = v97;
    v116 = 0;
    sub_163BC8();
    sub_1634A4(v45, v46);
    v47 = v98;
    sub_16E5AC();
    v49 = v47;
    v50 = v101;
    sub_64F94(v49, v101, &qword_1C63F0, &unk_1717F0);
    v115 = 1;
    v51 = sub_16E59C();
    sub_12C5BC(v51, v52);
    v114 = 2;
    sub_D7848();
    v53 = sub_16E59C();
    sub_12C5BC(v53, v54);
    v113 = 3;
    sub_D7848();
    v55 = sub_16E59C();
    sub_12C5BC(v55, v56);
    v112 = 4;
    sub_D7848();
    v57 = sub_16E59C();
    sub_12C5BC(v57, v58);
    v111 = 5;
    sub_163B98();
    sub_1634A4(v59, v60);
    sub_16E5AC();
    sub_64F94(v44, v50 + v89, &qword_1C5800, &unk_16F510);
    v110 = 6;
    sub_D7848();
    v61 = sub_16E58C();
    v62 = v88;
    *v88 = v61;
    v62[1] = v63;
    v109 = 7;
    sub_D7848();
    v64 = sub_16E58C();
    v65 = v100;
    *v100 = v64;
    v65[1] = v66;
    v108 = 8;
    sub_D7848();
    v67 = sub_16E58C();
    v68 = v84;
    *v84 = v67;
    v68[1] = v69;
    v107 = 9;
    sub_D7848();
    v70 = sub_16E58C();
    v71 = v83;
    *v83 = v70;
    v71[1] = v72;
    v106 = 10;
    sub_D7848();
    v73 = sub_16E58C();
    v74 = v82;
    *v82 = v73;
    v74[1] = v75;
    v105 = 11;
    sub_D7848();
    *v38 = sub_16E58C();
    v38[1] = v76;
    v104 = 12;
    sub_163BB0();
    sub_1634A4(v77, v78);
    v79 = v99;
    v80 = v102;
    sub_16E5AC();
    (*(v43 + 8))(v80, v79);
    v81 = v101;
    sub_64F94(v87, &v101[v85], &dword_1C63F8, &qword_171800);
    sub_1633B0(v81, v86);
  }

  sub_2D64(v103);
  return sub_163354(v81);
}

uint64_t sub_163354(uint64_t a1)
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_1633B0(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for OxygenSaturationQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_1634A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_163530(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_369C(v10, a2, v9);
  }

  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  v12 = sub_436C(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[9];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v14 = a3[16];
    goto LABEL_12;
  }

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

uint64_t sub_163684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v9 = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_2440(&qword_1C5800, &unk_16F510);
    result = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[9];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v11 = sub_2440(&dword_1C63F8, &qword_171800);
      v16 = a4[16];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

void sub_1637B4()
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v0 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v1 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v2 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8);
        if (v3 <= 0x3F)
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OxygenSaturationQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x163A58);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_163A94()
{
  result = qword_1CBA90;
  if (!qword_1CBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA90);
  }

  return result;
}

unint64_t sub_163AEC()
{
  result = qword_1CBA98;
  if (!qword_1CBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA98);
  }

  return result;
}

unint64_t sub_163B44()
{
  result = qword_1CBAA0;
  if (!qword_1CBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBAA0);
  }

  return result;
}

uint64_t sub_163BE0()
{

  return type metadata accessor for OxygenSaturationQueryModel();
}

uint64_t sub_163BFC()
{

  return type metadata accessor for OxygenSaturationQueryModel();
}

uint64_t type metadata accessor for WellnessLoggingCATsSimple()
{
  result = qword_1CBAA8;
  if (!qword_1CBAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_163CA0()
{
  sub_8A88();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v7);
  v9 = *(v8 + 64);
  *(v1 + 48) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_163D30()
{
  sub_40240();
  v24 = v3;
  sub_C9EC();
  v4 = *(v1 + 80);
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_168C98();
  v6 = sub_168C74(v5);
  *(v6 + 16) = xmmword_16F2F0;
  *(v6 + 32) = 0x63696C6F74737973;
  *(v6 + 40) = 0xE800000000000000;
  if (v4)
  {
    sub_168B58();
  }

  else
  {
    v8 = *(v1 + 16);
    v7 = &type metadata for Double;
  }

  v9 = *(v1 + 81);
  v2[6] = v8;
  v2[9] = v7;
  v2[10] = 0x696C6F7473616964;
  v2[11] = 0xE900000000000063;
  if (v9)
  {
    v10 = 0;
    v2[13] = 0;
    v2[14] = 0;
  }

  else
  {
    v11 = *(v1 + 24);
    v10 = &type metadata for Double;
  }

  v12 = sub_168C44(v10);
  sub_1955C(v12, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v13)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    v15 = *(v14 + 32);
    sub_40154();
    v16();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = sub_76D0C(v17);
  *v18 = v19;
  v18[1] = sub_163EF4;
  v20 = *(v1 + 40);
  sub_40160();
  v21 = sub_40144(36);

  return v22(v21);
}

uint64_t sub_163EF4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_164024(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = sub_17960();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_164050()
{
  sub_40240();
  v12 = v1;
  sub_C9EC();
  v2 = *(v0 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  sub_38B4C();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = sub_164168;
  v9 = *(v0 + 16);

  return v11(0xD00000000000003BLL, 0x8000000000181D70, v3);
}

uint64_t sub_164168()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_164294()
{
  sub_8A88();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_164320()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_168C98();
  v4 = sub_168C74(v3);
  v5 = sub_400C8(v4, xmmword_16F2F0);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  v11 = *(v1 + 24);
  v2[10] = 1702125924;
  v2[11] = 0xE400000000000000;
  if (v11)
  {
    v12 = sub_16D4EC();
    v13 = v11;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v2[13] = 0;
    v2[14] = 0;
  }

  v14 = *(v1 + 80);
  v2[12] = v13;
  v2[15] = v12;
  v2[16] = 2003790950;
  v2[17] = 0xE400000000000000;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v2[19] = 0;
    v2[20] = 0;
  }

  else
  {
    v15 = *(v1 + 32);
    v16 = &type metadata for Double;
  }

  v2[18] = v15;
  v2[21] = v16;
  v17 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);

  v18 = swift_task_alloc();
  v19 = sub_76D0C(v18);
  *v19 = v20;
  v19[1] = sub_164500;
  v21 = *(v1 + 40);
  sub_38F74();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_164500()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_164630()
{
  sub_8A88();
  v2 = v0[6];
  v1 = v0[7];

  sub_C9BC();
  v4 = v0[9];

  return v3();
}

uint64_t sub_164694()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_164720()
{
  sub_40240();
  v22 = v2;
  sub_C9EC();
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = sub_40228();
  v6 = sub_168C38(v5);
  v7 = sub_400C8(v6, xmmword_1712E0);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v3, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v0 + 72);
  v1[10] = 2003790950;
  v1[11] = 0xE400000000000000;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v14 = *(v0 + 24);
    v15 = &type metadata for Double;
  }

  v1[12] = v14;
  v1[15] = v15;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = swift_task_alloc();
  v17 = sub_10E364(v16);
  *v17 = v18;
  sub_168B1C(v17);
  v19 = sub_40144(35);

  return v20(v19);
}

uint64_t sub_16489C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_1649CC()
{
  sub_8A88();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_164A54()
{
  sub_40240();
  v20 = v3;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v5 = sub_401F8(v4);
  v6 = sub_400C8(v5, xmmword_1712E0);
  sub_401C8(v6, v7, &qword_1C5800, &unk_16F510);
  v8 = sub_16D5CC();
  sub_40124(v8);
  sub_168D04();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 64);
  sub_38B4C();
  *(v2 + 80) = 0xD000000000000019;
  *(v2 + 88) = v14;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v15;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v1 + 48) = v16;
  *v16 = v17;
  sub_40210(v16);
  sub_168CDC();

  return v18();
}

uint64_t sub_164BC0()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_164CF0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_164D74()
{
  sub_40240();
  v21 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 73);
  sub_168AD4();
  sub_168C68(v14);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  v18 = sub_40144(38);

  return v19(v18);
}

uint64_t sub_164EE0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_164F64()
{
  sub_40240();
  v21 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 73);
  sub_168AD4();
  sub_168C68(v14);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  v18 = sub_40144(45);

  return v19(v18);
}

uint64_t sub_1650D0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_165154()
{
  sub_40240();
  v21 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 73);
  sub_168AD4();
  sub_168C68(v14);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  v18 = sub_40144(41);

  return v19(v18);
}

uint64_t sub_1652C0()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_165344()
{
  sub_40240();
  v21 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 73);
  sub_168AD4();
  sub_168C68(v14);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  v18 = sub_40144(37);

  return v19(v18);
}

uint64_t sub_1654B0()
{
  sub_8A88();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = sub_8C38();
  *(v1 + 56) = swift_task_alloc();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_165548()
{
  sub_40240();
  v26 = v1;
  sub_C9EC();
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  *(v0 + 64) = v4;
  v5 = sub_400C8(v4, xmmword_16F2F0);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  v8 = sub_40124(v7);
  v9 = *(v0 + 56);
  if (v8 == 1)
  {
    sub_C878(*(v0 + 56), &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v0 + 88);
  v4[5].n128_u64[0] = 0x65756C6176;
  v4[5].n128_u64[1] = 0xE500000000000000;
  if (v13)
  {
    v14 = 0;
    v4[6].n128_u64[1] = 0;
    v4[7].n128_u64[0] = 0;
  }

  else
  {
    v15 = *(v0 + 24);
    v14 = &type metadata for Double;
  }

  v16 = sub_168C44(v14);
  sub_1955C(v16, v9, &qword_1C5800, &unk_16F510);
  sub_168B30();
  if (v17)
  {
    sub_C878(v9, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    v19 = *(v18 + 32);
    sub_40154();
    v20();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_165740;
  v22 = *(v0 + 40);
  sub_40160();
  v23 = sub_40144(38);

  return v24(v23);
}

uint64_t sub_165740()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = sub_400A4();

    return v16(v15);
  }
}

uint64_t sub_16587C()
{
  sub_8A88();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_C9BC();
  v5 = v0[10];

  return v4();
}

uint64_t sub_1658EC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  v4 = sub_17960();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_16591C()
{
  sub_40240();
  v12 = v1;
  sub_C9EC();
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  *(v0 + 24) = v4;
  sub_168B68(v4, xmmword_1712E0)[3].n128_u8[0] = v3;
  sub_168CBC();
  *(v5 + 72) = v6;
  *(v5 + 80) = v7;
  *(v5 + 88) = 0xEA00000000006465;
  *(v5 + 120) = v6;
  *(v5 + 96) = v2;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_165A30;
  v9 = *(v0 + 16);

  return v11(0xD000000000000034, 0x8000000000181BA0, v4);
}

uint64_t sub_165A30()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_165B5C()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3EB98;
  sub_40160();

  return v3(0xD000000000000031);
}

uint64_t sub_165C0C()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4008C;
  sub_40160();

  return v3(0xD000000000000039);
}

uint64_t sub_165CBC()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_165D44()
{
  sub_5E06C();
  sub_C9EC();
  v2 = v1[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_40228();
  v1[6] = v3;
  *(v3 + 16) = xmmword_1712E0;
  *(v3 + 32) = 0x746867696568;
  *(v3 + 40) = 0xE600000000000000;
  v4 = 0;
  if (v2)
  {
    v4 = sub_16D2FC();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v1[5];
  v6 = v1[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 1953066613;
  *(v3 + 88) = 0xE400000000000000;
  sub_1955C(v6, v5, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  v8 = sub_40124(v7);
  v9 = v1[5];
  v10 = v1[2];
  if (v8 == 1)
  {
    v11 = v1[2];

    sub_C878(v9, &qword_1C5800, &unk_16F510);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    sub_9910((v3 + 96));
    sub_400B8();
    v13 = *(v12 + 32);
    sub_40154();
    v14();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  sub_38F74();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_165F04()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_166034()
{
  sub_8A88();
  v2 = v0[5];
  v1 = v0[6];

  sub_C9BC();
  v4 = v0[8];

  return v3();
}

uint64_t sub_166098()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_16611C()
{
  sub_40240();
  v16 = v2;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  v4 = sub_401F8(v3);
  v5 = sub_400C8(v4, xmmword_16F530);
  sub_401C8(v5, v6, &qword_1C5800, &unk_16F510);
  v7 = sub_16D5CC();
  sub_40124(v7);
  sub_168D04();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v10 = *(v9 + 32);
    sub_40154();
    v11();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  *(v1 + 48) = v12;
  *v12 = v1;
  sub_40210(v12);
  sub_40160();
  v13 = sub_40144(35);

  return v14(v13);
}

uint64_t sub_166268()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_166398()
{
  sub_8A88();
  v2 = v0[4];
  v1 = v0[5];

  sub_C9BC();
  v4 = v0[7];

  return v3();
}

uint64_t sub_1663FC()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  v8 = sub_8C38();
  *(v1 + 48) = sub_168D10(v8);
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_16648C()
{
  sub_40240();
  v23 = v3;
  sub_C9EC();
  sub_168CB0();
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C74(v4);
  v6 = sub_168BA0(v5, xmmword_16F2F0);
  sub_401C8(v6, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v10 = *(v9 + 32);
    sub_40154();
    v11();
  }

  v12 = sub_168BFC();
  sub_1955C(v12, v0, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v8)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v14 = *(v13 + 32);
    sub_40154();
    v15();
  }

  v16 = *(v1 + 80);
  *(v2 + 128) = 0x757461745364656DLL;
  *(v2 + 136) = 0xE900000000000073;
  sub_168C68(v16);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = sub_76D0C(v17);
  *v18 = v19;
  sub_168B1C(v18);
  v20 = sub_40144(49);

  return v21(v20);
}

uint64_t sub_166660()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_168D40();

    v12 = sub_400A4();

    return v13(v12);
  }
}

uint64_t sub_166794()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_166820()
{
  sub_5E06C();
  sub_C9EC();
  v2 = *(v0 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_40228();
  *(sub_168C38(v3) + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  if (v2)
  {
    sub_168B58();
  }

  else
  {
    v6 = *(v0 + 16);
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v1[6] = v6;
  sub_168CF0();
  v1[9] = v9;
  v1[10] = v10;
  v1[11] = 0xE700000000000000;
  sub_1955C(v11, v7, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v12)
  {
    sub_C878(v7, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v14 = *(v13 + 32);
    sub_40154();
    v15();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = swift_task_alloc();
  v17 = sub_10E364(v16);
  *v17 = v18;
  sub_168BF0(v17);
  sub_168BDC();
  sub_38F74();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1669B4(char a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *(v6 + 56) = a1;
  v7 = sub_17960();
  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1669EC()
{
  sub_40240();
  v21 = v1;
  sub_C9EC();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_172980;
  sub_38B4C();
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = v6;
  *(v5 + 48) = v3;
  sub_775F0();
  v7[9] = v8;
  v7[10] = 0xD000000000000016;
  v7[11] = v9;
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = &type metadata for Double;
  }

  v12 = *(v0 + 59);
  v13 = *(v0 + 58);
  *(v4 + 96) = v10;
  *(v4 + 120) = v11;
  *(v4 + 128) = 0xD000000000000018;
  *(v4 + 136) = 0x80000000001819D0;
  *(v4 + 144) = v13;
  sub_775F0();
  *(v4 + 168) = v14;
  *(v4 + 176) = 0xD000000000000016;
  *(v4 + 184) = v15;
  *(v4 + 216) = v14;
  *(v4 + 192) = v16;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v0 + 40) = v17;
  *v17 = v18;
  sub_40210(v17);

  return v20(0xD00000000000003BLL, 0x8000000000181A10, v4);
}

uint64_t sub_166B7C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_166CA8()
{
  sub_8A88();
  v1 = *(v0 + 32);

  sub_C9BC();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_166D04()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 75) = v3;
  *(v1 + 74) = v4;
  *(v1 + 73) = v5;
  *(v1 + 72) = v6;
  *(v1 + 16) = v7;
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v1 + 40) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_166D9C()
{
  sub_40240();
  v30 = v2;
  sub_C9EC();
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  v6 = sub_168C38(v5);
  v7 = sub_168BA0(v6, xmmword_172970);
  sub_401C8(v7, v8, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v3, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v0 + 73);
  v14 = *(v0 + 72);
  sub_38B4C();
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = v15;
  *(v1 + 96) = v16;
  *(v1 + 120) = &type metadata for Bool;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 136) = 0x8000000000181970;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v18 = *(v0 + 24);
    v19 = &type metadata for Double;
  }

  v20 = *(v0 + 75);
  v21 = *(v0 + 74);
  *(v1 + 144) = v18;
  *(v1 + 168) = v19;
  *(v1 + 176) = 0xD000000000000018;
  *(v1 + 184) = 0x80000000001819D0;
  *(v1 + 192) = v21;
  sub_775F0();
  *(v1 + 216) = v22;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = v23;
  *(v1 + 264) = v22;
  *(v1 + 240) = v24;
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v25 = swift_task_alloc();
  v26 = sub_10E364(v25);
  *v26 = v27;
  sub_168BF0(v26);
  sub_168CDC();

  return v28();
}

uint64_t sub_166F98()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v7 = sub_8C38();
  v1[6] = sub_168D10(v7);
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_167024()
{
  sub_40240();
  v20 = v1;
  sub_C9EC();
  sub_168CB0();
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = sub_40228();
  v3 = sub_168C74(v2);
  v4 = sub_168BA0(v3, xmmword_1712E0);
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v6)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v8 = *(v7 + 32);
    sub_40154();
    v9();
  }

  v10 = sub_168BFC();
  sub_1955C(v10, v0, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v6)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v12 = *(v11 + 32);
    sub_40154();
    v13();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = sub_76D0C(v14);
  *v15 = v16;
  sub_168B1C(v15);
  v17 = sub_40144(55);

  return v18(v17);
}

uint64_t sub_1671CC()
{
  sub_386A8();
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4008C;
  sub_40160();

  return v3(0xD000000000000037);
}

uint64_t sub_16727C()
{
  sub_8A88();
  sub_168B8C(v1, v2, v3, v4);
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v0 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_167300()
{
  sub_40240();
  v21 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_168C98();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_16F2F0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  v13 = *(v1 + 73);
  sub_168AD4();
  sub_168C68(v14);
  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  v16 = sub_10E364(v15);
  *v16 = v17;
  sub_168B1C(v16);
  v18 = sub_40144(32);

  return v19(v18);
}

uint64_t sub_16746C()
{
  sub_8A88();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 64) = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1674F4()
{
  sub_40240();
  v19 = v2;
  sub_C9EC();
  sub_40204();
  v3 = *(v1 + 64);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v5 = sub_401F8(v4);
  sub_168B68(v5, xmmword_1712E0)[3].n128_u8[0] = v3;
  sub_168CF0();
  v6[9] = v7;
  v6[10] = v8;
  v6[11] = 0xE700000000000000;
  sub_401C8(v6, v9, &qword_1C5800, &unk_16F510);
  v10 = sub_16D5CC();
  sub_40124(v10);
  sub_168D04();
  if (v11)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v13 = *(v12 + 32);
    sub_40154();
    v14();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  *(v1 + 48) = v15;
  *v15 = v1;
  sub_40210(v15);
  sub_40160();
  v16 = sub_40144(61);

  return v17(v16);
}

uint64_t sub_167658()
{
  sub_8A88();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v7 = sub_8C38();
  v1[6] = sub_168D10(v7);
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1676E4()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_40228();
  *(sub_168C74(v3) + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  sub_401C8(v4, v6, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  v11 = v1[5];
  v12 = v1[3];
  sub_38B4C();
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = v13;
  sub_1955C(v14, v11, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v7)
  {
    sub_C878(v11, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v16 = *(v15 + 32);
    sub_40154();
    v17();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  v1[8] = v18;
  *v18 = v19;
  sub_168BF0(v18);
  sub_168BDC();
  sub_38F74();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1678C4()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  v8 = sub_8C38();
  *(v1 + 48) = sub_168D10(v8);
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_167954()
{
  sub_5E06C();
  sub_C9EC();
  sub_168CB0();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_168C98();
  *(sub_168C74(v3) + 16) = xmmword_16F2F0;
  sub_38B4C();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  sub_401C8(v4, v6, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168B30();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  v11 = *(v1 + 40);
  v12 = *(v1 + 24);
  v13 = *(v1 + 80);
  sub_775F0();
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = v14;
  *(v2 + 96) = v15;
  sub_38B4C();
  *(v2 + 120) = v16;
  *(v2 + 128) = 0xD000000000000014;
  *(v2 + 136) = v17;
  sub_1955C(v18, v11, &qword_1C5800, &unk_16F510);
  sub_168A88();
  if (v7)
  {
    sub_C878(v11, &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    v20 = *(v19 + 32);
    sub_40154();
    v21();
  }

  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v1 + 64) = v22;
  *v22 = v23;
  sub_168BF0(v22);
  sub_168BDC();
  sub_38F74();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_167B5C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    sub_168D40();

    v12 = sub_400A4();

    return v13(v12);
  }
}

uint64_t sub_167C90()
{
  sub_8A88();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_C9BC();
  v5 = v0[9];

  return v4();
}

uint64_t sub_167D00()
{
  sub_8A88();
  *(v1 + 124) = v19;
  *(v1 + 48) = v18;
  *(v1 + 56) = v0;
  *(v1 + 123) = v2;
  *(v1 + 122) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  *(v1 + 121) = v8;
  *(v1 + 120) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  *(v1 + 64) = sub_8C38();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_167DD0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = *(v0 + 121);
  v4 = *(v0 + 120);
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  sub_168B68(v5, xmmword_173190)[3].n128_u8[0] = v4;
  sub_38B4C();
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0xD000000000000010;
  *(v6 + 88) = v7;
  *(v6 + 96) = v3;
  sub_38B4C();
  v8[15] = &type metadata for Bool;
  v8[16] = 0xD000000000000010;
  v8[17] = v9;
  sub_401C8(v8, v10, &qword_1C5800, &unk_16F510);
  v11 = sub_16D5CC();
  if (sub_40124(v11) == 1)
  {
    sub_C878(*(v0 + 88), &qword_1C5800, &unk_16F510);
    sub_168CD0();
  }

  else
  {
    sub_168D28();
    sub_400B8();
    v13 = *(v12 + 32);
    sub_40154();
    v14();
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 24);
  sub_38B4C();
  *(v5 + 176) = 0xD000000000000014;
  *(v5 + 184) = v17;
  sub_1955C(v18, v15, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 80), &qword_1C5800, &unk_16F510);
    *(v5 + 192) = 0u;
    *(v5 + 208) = 0u;
  }

  else
  {
    *(v5 + 216) = v2;
    sub_9910((v5 + 192));
    sub_400B8();
    v20 = *(v19 + 32);
    sub_40154();
    v21();
  }

  v22 = *(v0 + 122);
  strcpy((v5 + 224), "totalMedCount");
  *(v5 + 238) = -4864;
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  else
  {
    v23 = *(v0 + 32);
    v24 = &type metadata for Double;
  }

  v25 = *(v0 + 72);
  v26 = *(v0 + 40);
  v27 = *(v0 + 123);
  *(v5 + 240) = v23;
  *(v5 + 264) = v24;
  strcpy((v5 + 272), "hasDosageEdit");
  *(v5 + 286) = -4864;
  *(v5 + 288) = v27;
  *(v5 + 312) = &type metadata for Bool;
  *(v5 + 320) = 0x656761736F64;
  *(v5 + 328) = 0xE600000000000000;
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 72), &qword_1C5800, &unk_16F510);
    *(v5 + 336) = 0u;
    *(v5 + 352) = 0u;
  }

  else
  {
    *(v5 + 360) = v2;
    sub_9910((v5 + 336));
    sub_400B8();
    v29 = *(v28 + 32);
    sub_40154();
    v30();
  }

  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  *(v5 + 368) = 0x6E55656761736F64;
  *(v5 + 376) = 0xEA00000000007469;
  sub_1955C(v32, v31, &qword_1C5800, &unk_16F510);
  if (sub_168BC0() == 1)
  {
    sub_C878(*(v0 + 64), &qword_1C5800, &unk_16F510);
    *(v5 + 384) = 0u;
    *(v5 + 400) = 0u;
  }

  else
  {
    *(v5 + 408) = v2;
    sub_9910((v5 + 384));
    sub_400B8();
    v34 = *(v33 + 32);
    sub_40154();
    v35();
  }

  v36 = *(v0 + 124);
  sub_168CBC();
  *(v5 + 416) = v37;
  *(v5 + 424) = 0xEA00000000006465;
  *(v5 + 456) = &type metadata for Bool;
  *(v5 + 432) = v38;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v0 + 104) = v39;
  *v39 = v40;
  v39[1] = sub_1681F4;
  v41 = *(v0 + 56);
  sub_168BDC();

  return v42();
}

uint64_t sub_1681F4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    sub_8ACC();
    sub_38F74();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v14 = v3[11];
    v13 = v3[12];
    v16 = v3[9];
    v15 = v3[10];
    v17 = v3[8];

    sub_400A4();
    sub_38F74();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_168344()
{
  sub_386A8();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  sub_C9BC();
  v7 = v0[14];

  return v6();
}

uint64_t sub_1683D0()
{
  sub_8A88();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_168454()
{
  sub_40240();
  v15 = v2;
  sub_C9EC();
  sub_40204();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  v4 = sub_401F8(v3);
  *(v4 + 16) = xmmword_16F530;
  *(v4 + 32) = 0x6954646567676F6CLL;
  *(v4 + 40) = 0xEA0000000000656DLL;
  sub_401C8(v4, v5, &qword_1C5800, &unk_16F510);
  v6 = sub_16D5CC();
  sub_40124(v6);
  sub_168D04();
  if (v7)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_4018C();
  }

  else
  {
    sub_401E0();
    sub_400B8();
    v9 = *(v8 + 32);
    sub_40154();
    v10();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v1 + 48) = v11;
  *v11 = v1;
  sub_40210(v11);
  sub_40160();
  v12 = sub_40144(58);

  return v13(v12);
}

uint64_t sub_1685BC()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_168648()
{
  sub_40240();
  v19 = v2;
  sub_C9EC();
  v3 = *(v1 + 72);
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = sub_40228();
  v5 = sub_168C38(v4);
  sub_168B00(v5, xmmword_1712E0);
  if (v3)
  {
    sub_168B58();
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = &type metadata for Double;
  }

  v8 = sub_168AB0(v6);
  sub_1955C(v8, v0, &qword_1C5800, &unk_16F510);
  sub_16D5CC();
  sub_168A88();
  if (v9)
  {
    sub_C878(v0, &qword_1C5800, &unk_16F510);
    sub_168C2C();
  }

  else
  {
    sub_168C80();
    sub_400B8();
    v11 = *(v10 + 32);
    sub_40154();
    v12();
  }

  sub_40090(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = sub_10E364(v13);
  *v14 = v15;
  sub_168B1C(v14);
  v16 = sub_40144(29);

  return v17(v16);
}

uint64_t sub_1687A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_40154();
  return sub_1687F4(v3, v4);
}

uint64_t sub_1687F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  v14 = sub_4348(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1955C(a1, &v20 - v17, &qword_1C57F8, &unk_172510);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_16D5DC();
  (*(v8 + 8))(a2, v2);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v18;
}

uint64_t sub_16896C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16D5EC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_168A88()
{
  result = sub_369C(v1, 1, v0);
  v4 = *(v2 + 40);
  return result;
}

uint64_t sub_168AB0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 40);
  result = *(v2 + 24);
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = 1953066613;
  v3[11] = 0xE400000000000000;
  return result;
}

__n128 *sub_168B00(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x65756C6176;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_168B1C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_168B30()
{
  result = sub_369C(v1, 1, v0);
  v4 = *(v2 + 48);
  return result;
}

__n128 *sub_168B68(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x757461745364656DLL;
  result[2].n128_u64[1] = 0xE900000000000073;
  return result;
}

uint64_t sub_168B8C(uint64_t result, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 73) = a4;
  *(v5 + 72) = a2;
  *(v5 + 16) = result;
  return result;
}

__n128 *sub_168BA0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D695464656DLL;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_168BC0()
{

  return sub_369C(v1, 1, v0);
}

uint64_t sub_168BF0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_168BFC()
{
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  strcpy((v1 + 80), "medDisplayName");
  *(v1 + 95) = -18;
  return result;
}

double sub_168C2C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t sub_168C44@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 48);
  result = *(v2 + 32);
  v3[12] = v1;
  v3[15] = a1;
  v3[16] = 1953066613;
  v3[17] = 0xE400000000000000;
  return result;
}

uint64_t *sub_168C80()
{
  *(v1 + 120) = v0;

  return sub_9910((v1 + 96));
}

uint64_t sub_168C98()
{

  return swift_allocObject();
}

double sub_168CD0()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t sub_168D10(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_task_alloc();
}

uint64_t *sub_168D28()
{
  *(v1 + 168) = v0;

  return sub_9910((v1 + 144));
}

uint64_t sub_168D40()
{
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
}

uint64_t sub_168D58()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v6 = *(v5 + 64);
  v1[20] = sub_8BC0();
  v7 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[21] = sub_8BC0();
  v10 = sub_16C89C();
  v1[22] = v10;
  sub_888C(v10);
  v1[23] = v11;
  v13 = *(v12 + 64);
  v1[24] = sub_8BC0();
  v14 = sub_16C8FC();
  v1[25] = v14;
  sub_888C(v14);
  v1[26] = v15;
  v17 = *(v16 + 64);
  v1[27] = sub_8BC0();
  v18 = sub_16C80C();
  v1[28] = v18;
  sub_888C(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v22 = sub_16C83C();
  v1[32] = v22;
  sub_888C(v22);
  v1[33] = v23;
  v25 = *(v24 + 64);
  v1[34] = sub_8BC0();
  v26 = sub_16C7DC();
  v1[35] = v26;
  sub_888C(v26);
  v1[36] = v27;
  v29 = *(v28 + 64);
  v1[37] = sub_8BC0();
  v30 = sub_16DBEC();
  v1[38] = v30;
  sub_888C(v30);
  v1[39] = v31;
  v33 = *(v32 + 64);
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v34 = sub_17960();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_16903C()
{
  v130 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBAC();
  sub_8B48();
  v126 = *(v3 + 16);
  v126(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  if (v11)
  {
    v123 = *(v0 + 304);
    v18 = *(v0 + 136);
    v121 = *(v0 + 336);
    v19 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v129);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24);
    v25 = sub_16E68C();
    v27 = v26;
    v28 = sub_146E70();
    v29(v28, v17);
    v30 = sub_3AB7C(v25, v27, &v129);

    *(v19 + 14) = v30;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v31 = *(v13 + 8);
    v31(v121, v123);
  }

  else
  {

    v32 = sub_146E70();
    v33(v32, v17);
    v31 = *(v13 + 8);
    v31(v12, v14);
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v37 = *(v0 + 120);
  sub_16C7CC();
  v38 = *(v36 + 88);
  v39 = sub_C9F8();
  if (v38(v39) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_8:
    v51 = *(v0 + 240);
    v52 = *(v0 + 224);
    v53 = *(v0 + 120);
    sub_16C7CC();
    v54 = sub_C9F8();
    if (v38(v54) != enum case for Parse.directInvocation(_:))
    {
      v61 = *(v0 + 320);
      v62 = *(v0 + 304);
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      sub_16DBBC();
      sub_8B48();
      v63 = sub_6B5B8();
      (v126)(v63);
      v64 = sub_16DBDC();
      v65 = sub_16E37C();
      v66 = os_log_type_enabled(v64, v65);
      v68 = *(v0 + 312);
      v67 = *(v0 + 320);
      v69 = *(v0 + 304);
      if (v66)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&def_259DC, v64, v65, "Received unsupported type of input", v70, 2u);
        sub_8A2C();
      }

      v71 = sub_C9F8();
      (v31)(v71);
      goto LABEL_24;
    }

    v55 = *(v0 + 240);
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v58 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v55, *(v0 + 224));
    (*(v57 + 32))(v56, v55, v58);
    v59 = sub_16C7EC();
    if (v59)
    {
      sub_17400(0xD000000000000012, 0x800000000017A960, v59, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v60 = *(v0 + 128);
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v127 = *(v0 + 344);
          v128 = *(v60 + 16);

          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_21:
    v77 = *(v0 + 328);
    v78 = *(v0 + 304);
    sub_16DBBC();
    sub_8B48();
    v79 = sub_6B5B8();
    (v126)(v79);
    v80 = sub_16DBDC();
    v81 = sub_16E37C();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 328);
    v84 = *(v0 + 304);
    v85 = *(v0 + 312);
    v87 = *(v0 + 152);
    v86 = *(v0 + 160);
    v88 = *(v0 + 144);
    if (v82)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&def_259DC, v80, v81, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v89, 2u);
      sub_8A2C();
    }

    v90 = sub_387CC();
    (v31)(v90);
    (*(v87 + 8))(v86, v88);
LABEL_24:
    v127 = 0;
    v128 = 1;
    goto LABEL_25;
  }

  v41 = *(v0 + 264);
  v40 = *(v0 + 272);
  v42 = *(v0 + 256);
  v43 = *(v0 + 192);
  v122 = *(v0 + 200);
  v124 = v31;
  v44 = *(v0 + 184);
  v120 = *(v0 + 176);
  v45 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(*(v0 + 248), *(v0 + 224));
  v46 = *(v41 + 32);
  v47 = sub_6B5B8();
  v48(v47);
  sub_16C82C();
  v49 = sub_16C88C();
  (*(v44 + 8))(v43, v120);
  sub_9AD9C(v49, v45);

  if (sub_369C(v45, 1, v122) == 1)
  {
    v50 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v50, &qword_1C6FF0, &unk_1730A0);
    v31 = v124;
    goto LABEL_8;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if (sub_16C8CC())
  {
    v73 = *(v0 + 264);
    v72 = *(v0 + 272);
    v74 = *(v0 + 256);
    v75 = *(v0 + 128);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v73 + 8))(v72, v74);
    v128 = *(v75 + 16);

    v76 = 1;
LABEL_18:
    v127 = v76;
    goto LABEL_25;
  }

  v103 = *(v0 + 216);
  v104 = sub_16C8DC();
  v106 = *(v0 + 264);
  v105 = *(v0 + 272);
  v107 = *(v0 + 256);
  v109 = *(v0 + 208);
  v108 = *(v0 + 216);
  v110 = *(v0 + 200);
  if (v104)
  {
    v111 = sub_146E70();
    v112(v111, v110);
    v113 = sub_98BD8();
    v114(v113);
  }

  else
  {
    v115 = sub_16C8EC();
    v116 = sub_146E70();
    v117(v116, v110);
    v118 = sub_98BD8();
    v119(v118);
    if ((v115 & 1) == 0)
    {
      v128 = *(*(v0 + 128) + 16);

      v76 = 2;
      goto LABEL_18;
    }
  }

  v128 = *(*(v0 + 128) + 16);

  v127 = 0;
LABEL_25:
  v92 = *(v0 + 328);
  v91 = *(v0 + 336);
  v93 = *(v0 + 320);
  v94 = *(v0 + 296);
  v95 = *(v0 + 272);
  v97 = *(v0 + 240);
  v96 = *(v0 + 248);
  v98 = *(v0 + 216);
  v99 = *(v0 + 192);
  v100 = *(v0 + 168);
  v125 = *(v0 + 160);

  v101 = *(v0 + 8);

  return v101(v127, v128);
}

uint64_t sub_169870(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBAC();
  sub_8B48();
  v36 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v37);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v29, v30);
    v31 = sub_16E68C();
    v33 = v32;
    (*(v7 + 8))(v12, v4);
    v34 = sub_3AB7C(v31, v33, &v37);

    *(v25 + 14) = v34;
    _os_log_impl(&def_259DC, v23, v24, "%s Handling Input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v36);
  return sub_16C47C();
}

uint64_t sub_169B94()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64);
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_169D08()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 64), *(v0[12] + 88));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_169F58;

  return sub_7AA38();
}

uint64_t sub_169F58()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_16A0AC()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 200, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_16A234;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_16A234()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 208);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_16A334()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_8BC0();
  v7 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[25] = sub_8BC0();
  v10 = sub_16C46C();
  sub_4348(v10);
  v12 = *(v11 + 64);
  v1[26] = sub_8BC0();
  v13 = sub_16C7BC();
  v1[27] = v13;
  sub_888C(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = sub_8BC0();
  v17 = sub_16D5CC();
  v1[30] = v17;
  sub_888C(v17);
  v1[31] = v18;
  v20 = *(v19 + 64);
  v1[32] = sub_8BC0();
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[33] = sub_8C38();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v24 = sub_17960();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_16A500()
{
  sub_C9EC();
  v2 = v1[21];
  v3 = *(v2 + 16);
  if (sub_3B35C(v3))
  {
    sub_3B360(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = sub_16E48C();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = sub_16BA14(v4, &selRef_completionStatus);
    if (v6)
    {
      if (v5 != 0x6E656B6174 || v6 != 0xE500000000000000)
      {
        sub_16E6BC();
      }
    }
  }

  v8 = *(v2 + 16);
  if (!sub_3B35C(v8))
  {
    goto LABEL_17;
  }

  sub_16BCBC();
  if (v0)
  {

    v0 = sub_16E48C();
  }

  else
  {
    v0 = *(v8 + 32);
  }

  sub_16BA14(v0, &selRef_name);
  if (v9)
  {
    v10 = v1[35];
    sub_16E23C();

    v11 = 0;
  }

  else
  {
LABEL_17:
    v11 = 1;
  }

  sub_214C(v1[35], v11, 1, v1[30]);
  v12 = *(v2 + 16);
  if (!sub_3B35C(v12))
  {
    goto LABEL_23;
  }

  sub_16BCBC();
  if (v0)
  {

    v13 = sub_16E48C();
  }

  else
  {
    v13 = *(v12 + 32);
  }

  sub_16BA14(v13, &selRef_schedule);
  if (v14)
  {
    v15 = v1[34];
    v17 = v1[31];
    v16 = v1[32];
    v18 = v1[30];
    sub_16E23C();

    sub_214C(v15, 0, 1, v18);
    (*(v17 + 32))(v16, v15, v18);
  }

  else
  {
LABEL_23:
    v19 = v1[34];
    v20 = v1[32];
    v21 = v1[30];
    sub_214C(v19, 1, 1, v21);
    sub_16E23C();
    if (sub_369C(v19, 1, v21) != 1)
    {
      sub_C878(v1[34], &qword_1C5800, &unk_16F510);
    }
  }

  v22 = v1[32];
  v23 = v1[33];
  v25 = v1[30];
  v24 = v1[31];
  v1[36] = *(v1[21] + 184);
  (*(v24 + 16))(v23, v22, v25);
  sub_214C(v23, 0, 1, v25);

  v26 = swift_task_alloc();
  v1[37] = v26;
  *v26 = v1;
  v26[1] = sub_16A860;
  v27 = v1[35];
  v28 = v1[33];

  return sub_1663FC();
}

uint64_t sub_16A860()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[37];
  v8 = *v1;
  *v6 = *v1;

  v9 = v4[36];
  v10 = v4[33];
  if (v0)
  {

    sub_C878(v10, &qword_1C5800, &unk_16F510);
    sub_8ACC();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v5[38] = v3;
    sub_C878(v10, &qword_1C5800, &unk_16F510);

    v14 = swift_task_alloc();
    v5[39] = v14;
    *v14 = v8;
    v14[1] = sub_16AA58;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_16AA58()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v0;
  *v3 = v6;
  v2[40] = v7;
  v2[41] = v8;

  v9 = swift_task_alloc();
  v2[42] = v9;
  *v9 = v6;
  v9[1] = sub_16AB8C;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_16AB8C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 336);
  v10 = *v0;
  *(v2 + 344) = v4;
  *(v2 + 352) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_16AC7C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[21];
  v9 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v27 = v3;
  v10 = 0x6C65636E6143;
  if (!v9)
  {
    v10 = v0[40];
  }

  v26 = v10;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v25 = v2;
  if (v1)
  {
    v11 = v0[44];
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v12 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_16B5C0();
  v13 = sub_16C55C();
  sub_214C(v6, 0, 1, v13);
  sub_16C78C();
  sub_16C77C();
  v14 = [v4 catId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v8 + 200, (v0 + 7));
  v15 = v0[10];
  v16 = v0[11];
  sub_2D20(v0 + 7, v15);
  v0[15] = type metadata accessor for WellnessSnippets();
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  v17 = sub_9910(v0 + 12);
  *v17 = 0xD000000000000031;
  v17[1] = 0x800000000017DF40;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v25;
  v17[5] = v11;
  *(v17 + 48) = v12 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[45] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v4;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v20 = v4;
  v21 = swift_task_alloc();
  v0[46] = v21;
  *v21 = v0;
  v21[1] = sub_16AF60;
  v22 = v0[29];
  v23 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v23, v0 + 12, v18, v22, v15, v16);
}

uint64_t sub_16AF60()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *(v4 + 360);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 96));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_16B060()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  v8 = *(v7 + 8);
  v9 = sub_387CC();
  v10(v9);
  v11 = sub_98BD8();
  v12(v11);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_16BC98();

  sub_C9BC();

  return v13();
}

uint64_t sub_16B168()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_16DBBC();
  sub_8B48();
  v4 = *(v2 + 16);
  v5 = sub_6B5B8();
  v6(v5);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&def_259DC, v7, v8, "Couldn't create logMedAsNeededConfirmation_Dialog, returning generic error output.", v9, 2u);
    sub_8A2C();
  }

  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];

  v13 = *(v11 + 8);
  v14 = sub_C9F8();
  v15(v14);
  sub_16BB14();
  v0[47] = swift_allocError();
  v16 = swift_task_alloc();
  v0[48] = v16;
  *v16 = v0;
  v16[1] = sub_16B2D8;
  v17 = v0[20];
  v18 = v0[21];

  return sub_169B94();
}

uint64_t sub_16B2D8()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 392) = v0;

  if (!v0)
  {
    v9 = *(v3 + 376);
  }

  sub_8ACC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_16B3D8()
{
  v1 = v0[35];
  (*(v0[31] + 8))(v0[32], v0[30]);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_16BC98();

  sub_C9BC();

  return v2();
}

uint64_t sub_16B4B8()
{
  v1 = v0[47];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  (*(v0[31] + 8))(v0[32], v0[30]);
  sub_C878(v2, &qword_1C5800, &unk_16F510);

  sub_C9BC();
  v10 = v0[49];

  return v9();
}

uint64_t sub_16B5C0()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16C8BC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_16C8AC();
  sub_16C95C();
  (*(v10 + 16))(v15, v17, v7);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v18 = *(v1 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_16F530;
  (*(v2 + 16))(v20 + v19, v6, v0);
  sub_16C53C();
  (*(v2 + 8))(v6, v0);
  return (*(v10 + 8))(v17, v7);
}

uint64_t sub_16B818(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_B94A8;

  return sub_168D58();
}

uint64_t sub_16B8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_16A334();
}

uint64_t sub_16B948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_169B94();
}

uint64_t sub_16BA14(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_16E1BC();

  return v4;
}

void (*sub_16BA80(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_16B9F0(a3);
  sub_3B360(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_16E48C();
  }

  *a1 = v7;
  return sub_16BB0C;
}

unint64_t sub_16BB14()
{
  result = qword_1CBC60;
  if (!qword_1CBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogMedAsNeededConfirmationStrategyError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x16BC04);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_16BC40()
{
  result = qword_1CBC68;
  if (!qword_1CBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBC68);
  }

  return result;
}

uint64_t sub_16BC98()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
}

uint64_t sub_16BCBC()
{

  return sub_3B360(0, (v0 & 0xC000000000000001) == 0, v0);
}
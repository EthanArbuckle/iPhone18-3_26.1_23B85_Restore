unint64_t sub_100064438()
{
  v2 = qword_10009BEE0;
  if (!qword_10009BEE0)
  {
    sub_100009860(&qword_10009BED8, &qword_1000803B0);
    sub_1000644DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000644DC()
{
  v2 = qword_10009BEE8;
  if (!qword_10009BEE8)
  {
    sub_100009860(&qword_10009BEF0, &qword_1000803B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100064564()
{
  v2 = qword_10009BF00;
  if (!qword_10009BF00)
  {
    sub_100009860(&qword_10009BEF8, &qword_1000803C0);
    sub_100064438();
    sub_10003CDA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006460C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 40);

  return a1;
}

unint64_t sub_100064660()
{
  v2 = qword_10009BF10;
  if (!qword_10009BF10)
  {
    sub_100009860(&qword_10009BF08, &qword_1000803C8);
    sub_100064564();
    sub_10003C424();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100064708(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 40);

  v3 = *(a1 + 64);

  v4 = *(a1 + 72);

  return a1;
}

unint64_t sub_100064774()
{
  v2 = qword_10009BF20;
  if (!qword_10009BF20)
  {
    sub_100009860(&qword_10009BF18, &unk_1000803D0);
    sub_100064660();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006481C(uint64_t a1)
{
  sub_10003CCBC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 40);

  v3 = *(a1 + 64);

  v4 = *(a1 + 72);

  v5 = *(a1 + 80);

  v6 = *(a1 + 88);

  return a1;
}

void *sub_1000648A8(void *a1, void *a2)
{
  v23 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v23 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v11 = (a2 + *(v2 + 36));
    v12 = (a1 + *(v2 + 36));
    *v11 = *v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v14 = v11 + *(v3 + 28);
    v13 = v12 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v14, v13);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v15 = (a2 + *(v7 + 36));
    v16 = (a1 + *(v7 + 36));
    *v15 = *v16;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v15 + *(v8 + 28);
    v18 = v16 + *(v8 + 28);
    v19 = sub_10007D168();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, v18, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(__dst, v18, v19);
      (*(v20 + 56))(__dst, 0, 1, v19);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_100064BC8(uint64_t *a1, void *a2)
{
  v34 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v34 - 8) + 64));
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v13 = (a2 + *(v2 + 36));
    v14 = (a1 + *(v2 + 36));
    v12 = *v14;

    *v13 = v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v16 = v13 + *(v3 + 28);
    v15 = v14 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v16, v15);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v19 = (a2 + *(v5 + 36));
    v18 = (a1 + *(v5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v23 = (a2 + *(v6 + 36));
    v22 = (a1 + *(v6 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v26 = (a2 + *(v7 + 36));
    v27 = (a1 + *(v7 + 36));
    v25 = *v27;

    *v26 = v25;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v28 = v26 + *(v8 + 28);
    v29 = v27 + *(v8 + 28);
    v30 = sub_10007D168();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v28, v29, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v31 + 16))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_100064F8C()
{
  v2 = qword_10009BF38;
  if (!qword_10009BF38)
  {
    sub_100009860(&qword_10009BF28, &unk_1000803E0);
    sub_10003C8A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100065030(uint64_t *a1)
{
  sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = *a1;

    v10 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v2 = *v10;

    v11 = v10 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v3 = sub_10007D4D8();
    (*(*(v3 - 8) + 8))(v11);
    v12 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v4 = *v12;

    v5 = v12[1];

    v13 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v6 = *v13;

    v7 = v13[1];

    v14 = (a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v8 = *v14;

    v15 = v14 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v16 = sub_10007D168();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v15, 1))
    {
      (*(v17 + 8))(v15, v16);
    }
  }

  return a1;
}

unint64_t sub_100065268()
{
  v2 = qword_10009BF48;
  if (!qword_10009BF48)
  {
    sub_100009860(&qword_10009BF40, &qword_1000803F8);
    sub_100064328();
    sub_10003C648();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009BF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100065310(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_1000641BC(*a1, *(a1 + 8), *(a1 + 16));
  v3 = *(a1 + 40);

  v4 = *(a1 + 64);

  v5 = *(a1 + 72);

  v6 = *(a1 + 80);

  v7 = *(a1 + 88);

  return a1;
}

uint64_t sub_1000653B8(uint64_t a1, unsigned int a2, int *a3)
{
  v13 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a2 == *(*(v13 - 8) + 84))
  {
    return (*(*(v13 - 8) + 48))(a1, a2, v13);
  }

  else
  {
    v8 = type metadata accessor for Message();
    if (a2 == *(*(v8 - 8) + 84))
    {
      return (*(*(v8 - 8) + 48))(a1 + a3[5], a2, v8);
    }

    else
    {
      v7 = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
      if (a2 == *(*(v7 - 8) + 84))
      {
        return (*(*(v7 - 8) + 48))(a1 + a3[8], a2, v7);
      }

      else if (a2 == 2147483646)
      {
        v6 = -1;
        if (*(a1 + a3[9] + 8) < &_mh_execute_header)
        {
          v6 = *(a1 + a3[9] + 8);
        }

        v3 = v6 - 1;
        if (v6 - 1 < 0)
        {
          v3 = -1;
        }

        return (v3 + 1);
      }

      else
      {
        v5 = sub_1000094DC(&qword_10009BE60, &unk_100080348);
        if (a2 == *(*(v5 - 8) + 84))
        {
          return (*(*(v5 - 8) + 48))(a1 + a3[12], a2, v5);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1000656F4(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v10 = sub_1000094DC(&qword_10009B470, &qword_10007F880);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1, a2, a2, v10);
  }

  v5 = type metadata accessor for Message();
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + a4[5], a2, a2, v5);
  }

  result = sub_1000094DC(&qword_10009B818, &qword_10007FC98);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[8], a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    result = sub_1000094DC(&qword_10009BE60, &unk_100080348);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + a4[12], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000659D8()
{
  v6 = sub_10003BE48();
  if (v0 <= 0x3F)
  {
    v6 = type metadata accessor for Message();
    if (v1 <= 0x3F)
    {
      v6 = sub_100065B7C();
      if (v2 <= 0x3F)
      {
        v6 = sub_100048820();
        if (v3 <= 0x3F)
        {
          v6 = sub_100065C18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_100065B7C()
{
  v4 = qword_10009BFB8;
  if (!qword_10009BFB8)
  {
    sub_100063274();
    v3 = sub_10007CF58();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009BFB8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100065C18()
{
  v4 = qword_10009BFC0;
  if (!qword_10009BFC0)
  {
    sub_10007D118();
    v3 = sub_10007CF18();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_10009BFC0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100065CFC()
{
  sub_100009860(&qword_10009BEC8, &qword_1000803A8);
  sub_100064328();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065D6C()
{
  sub_100009860(&qword_10009BF40, &qword_1000803F8);
  sub_100065268();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065DDC()
{
  sub_100009860(&qword_10009BF18, &unk_1000803D0);
  sub_100064774();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100065EFC()
{
  v2 = qword_10009C018;
  if (!qword_10009C018)
  {
    sub_100009860(&qword_10009C010, &qword_100080818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C018);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100065F84(uint64_t a1)
{
  v130 = *(sub_1000094DC(&qword_10009C020, &qword_100080820) + 44);
  v131 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v132 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v130 + v131 + v132, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v116 = (a1 + v130 + v131 + v132);
      v10 = *v116;

      v112 = (v116 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v11 = *v112;

      v113 = v112 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 8))(v113);
      v114 = (v116 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v13 = *v114;

      v14 = v114[1];

      v115 = (v116 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v15 = *v115;

      v16 = v115[1];

      v117 = (v116 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v17 = *v117;

      v118 = v117 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v119 = sub_10007D168();
      v120 = *(v119 - 8);
      if (!(*(v120 + 48))(v118, 1))
      {
        (*(v120 + 8))(v118, v119);
      }
    }

    else
    {
      v125 = (a1 + v130 + v131 + v132);
      v2 = *v125;

      v121 = (v125 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v121;

      v122 = v121 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v122);
      v123 = (v125 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v123;

      v6 = v123[1];

      v124 = (v125 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v124;

      v8 = v124[1];

      v126 = (v125 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v126;

      v127 = v126 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v128 = sub_10007D168();
      v129 = *(v128 - 8);
      if (!(*(v129 + 48))(v127, 1))
      {
        (*(v129 + 8))(v127, v128);
      }
    }
  }

  v106 = a1 + v130 + v131;
  v103 = v106 + v132 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v104 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v105 = *(*(v104 - 8) + 8);
  v105(v103);
  v107 = v106 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v18 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v18 - 8) + 8))(v107);
  v108 = a1 + v130 + *(sub_1000094DC(&qword_10009C068, &qword_100080868) + 36);
  v19 = *(v108 + 8);

  v20 = *(v108 + 24);

  v109 = sub_1000094DC(&qword_10009C070, &qword_100080870);
  v110 = a1 + v130 + *(v109 + 48);
  v111 = (v110 + *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44));
  v21 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v21 - 8) + 48))(v111, 1))
  {
    v22 = *v111;

    v95 = (v111 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v23 = *v95;

    v96 = v95 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v24 = sub_10007D4D8();
    (*(*(v24 - 8) + 8))(v96);
    v97 = (v111 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v25 = *v97;

    v26 = v97[1];

    v98 = (v111 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v27 = *v98;

    v28 = v98[1];

    v99 = (v111 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v29 = *v99;

    v100 = v99 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v101 = sub_10007D168();
    v102 = *(v101 - 8);
    if (!(*(v102 + 48))(v100, 1))
    {
      (*(v102 + 8))(v100, v101);
    }
  }

  v91 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  (v105)(v111 + v91[12], v104);
  v92 = (v111 + v91[20]);
  v93 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v94 = *(*(v93 - 8) + 48);
  if (!(v94)(v92, 1))
  {
    v30 = *v92;

    v83 = (v92 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v31 = *v83;

    v84 = v83 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v32 = sub_10007D4D8();
    (*(*(v32 - 8) + 8))(v84);
    v85 = (v92 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v33 = *v85;

    v34 = v85[1];

    v86 = (v92 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v35 = *v86;

    v36 = v86[1];

    v87 = (v92 + *(v93 + 36));
    v37 = *v87;

    v88 = v87 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v89 = sub_10007D168();
    v90 = *(v89 - 8);
    if (!(*(v90 + 48))(v88, 1))
    {
      (*(v90 + 8))(v88, v89);
    }
  }

  v82 = (v111 + v91[24]);
  if (!v94())
  {
    v38 = *v82;

    v74 = (v82 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v39 = *v74;

    v75 = v74 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v40 = sub_10007D4D8();
    (*(*(v40 - 8) + 8))(v75);
    v76 = (v82 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v41 = *v76;

    v42 = v76[1];

    v77 = (v82 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v43 = *v77;

    v44 = v77[1];

    v78 = (v82 + *(v93 + 36));
    v45 = *v78;

    v79 = v78 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v80 = sub_10007D168();
    v81 = *(v80 - 8);
    if (!(*(v81 + 48))(v79, 1))
    {
      (*(v81 + 8))(v79, v80);
    }
  }

  v73 = (v111 + v91[28]);
  v46 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v46 - 8) + 48))(v73, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v47 = *v73;

      v65 = (v73 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v48 = *v65;

      v66 = v65 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v49 = sub_10007D4D8();
      (*(*(v49 - 8) + 8))(v66);
      v67 = (v73 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v50 = *v67;

      v51 = v67[1];

      v68 = (v73 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v52 = *v68;

      v53 = v68[1];

      v69 = (v73 + *(v93 + 36));
      v54 = *v69;

      v70 = v69 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v71 = sub_10007D168();
      v72 = *(v71 - 8);
      if (!(*(v72 + 48))(v70, 1))
      {
        (*(v72 + 8))(v70, v71);
      }
    }
  }

  v62 = v110 + *(sub_1000094DC(&qword_10009C090, &qword_100080890) + 36);
  v55 = *(v62 + 8);

  v56 = *(v62 + 24);

  v63 = a1 + v130 + *(v109 + 64);
  v64 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  if (!(*(*(v64 - 8) + 48))(v63, 1))
  {
    v57 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v57 - 8) + 8))(v63);
    v61 = v63 + *(v64 + 36);
    v58 = *(v61 + 8);

    v59 = *(v61 + 24);
  }

  return a1;
}

uint64_t sub_100067070(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v251 = *(sub_1000094DC(&qword_10009C020, &qword_100080820) + 44);
  v252 = a2 + v251;
  *v252 = *(a1 + v251);
  *(v252 + 16) = *(a1 + v251 + 16);
  v253 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v255 = a1 + v251 + v253;
  v2 = a2 + v251 + v253;
  *v2 = *v255;
  *(v2 + 16) = *(v255 + 16);
  v254 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v256 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v257 = *(v256 - 8);
  if ((*(v257 + 48))(v255 + v254, 1))
  {
    v20 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy((a2 + v251 + v253 + v254), (a1 + v251 + v253 + v254), *(*(v20 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v218 = (a1 + v251 + v253 + v254);
      v203 = *v218;

      v217 = (a2 + v251 + v253 + v254);
      *v217 = v203;
      v11 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v205 = (v217 + *(v11 + 36));
      v206 = (v218 + *(v11 + 36));
      v204 = *v206;

      *v205 = v204;
      v12 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v208 = v205 + *(v12 + 28);
      v207 = v206 + *(v12 + 28);
      v13 = sub_10007D4D8();
      (*(*(v13 - 8) + 16))(v208, v207);
      v14 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v211 = (v217 + *(v14 + 36));
      v210 = (v218 + *(v14 + 36));
      v209 = *v210;

      *v211 = v209;
      v212 = v210[1];

      v211[1] = v212;
      v15 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v215 = (v217 + *(v15 + 36));
      v214 = (v218 + *(v15 + 36));
      v213 = *v214;

      *v215 = v213;
      v216 = v214[1];

      v215[1] = v216;
      v16 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v220 = (v217 + *(v16 + 36));
      v221 = (v218 + *(v16 + 36));
      v219 = *v221;

      *v220 = v219;
      v17 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v220 + *(v17 + 28);
      __src = v221 + *(v17 + 28);
      v224 = sub_10007D168();
      v225 = *(v224 - 8);
      if ((*(v225 + 48))(__src, 1))
      {
        v18 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v225 + 16))(__dst, __src, v224);
        (*(v225 + 56))(__dst, 0, 1, v224);
      }
    }

    else
    {
      v241 = (a1 + v251 + v253 + v254);
      v226 = *v241;

      v240 = (a2 + v251 + v253 + v254);
      *v240 = v226;
      v3 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v228 = (v240 + *(v3 + 36));
      v229 = (v241 + *(v3 + 36));
      v227 = *v229;

      *v228 = v227;
      v4 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v231 = v228 + *(v4 + 28);
      v230 = v229 + *(v4 + 28);
      v5 = sub_10007D4D8();
      (*(*(v5 - 8) + 16))(v231, v230);
      v6 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v234 = (v240 + *(v6 + 36));
      v233 = (v241 + *(v6 + 36));
      v232 = *v233;

      *v234 = v232;
      v235 = v233[1];

      v234[1] = v235;
      v7 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v238 = (v240 + *(v7 + 36));
      v237 = (v241 + *(v7 + 36));
      v236 = *v237;

      *v238 = v236;
      v239 = v237[1];

      v238[1] = v239;
      v8 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v243 = (v240 + *(v8 + 36));
      v244 = (v241 + *(v8 + 36));
      v242 = *v244;

      *v243 = v242;
      v9 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v245 = v243 + *(v9 + 28);
      v246 = v244 + *(v9 + 28);
      v247 = sub_10007D168();
      v248 = *(v247 - 8);
      if ((*(v248 + 48))(v246, 1))
      {
        v10 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v245, v246, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v248 + 16))(v245, v246, v247);
        (*(v248 + 56))(v245, 0, 1, v247);
      }
    }

    v19 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy((a2 + v251 + v253 + v254 + *(v19 + 36)), (a1 + v251 + v253 + v254 + *(v19 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v257 + 56))(a2 + v251 + v253 + v254, 0, 1, v256);
  }

  v21 = sub_1000094DC(&qword_10009C048, &qword_100080848);
  v186 = a2 + v251 + v253;
  v183 = v186 + v254 + *(v21 + 48);
  v187 = a1 + v251 + v253;
  v182 = v187 + v254 + *(v21 + 48);
  v184 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  v185 = *(*(v184 - 8) + 16);
  v185(v183, v182);
  v22 = sub_1000094DC(&qword_10009C058, &qword_100080858);
  v23 = v186 + *(v22 + 48);
  v24 = v187 + *(v22 + 48);
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v189 = v186 + *(v22 + 64);
  v188 = v187 + *(v22 + 64);
  v25 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v25 - 8) + 16))(v189, v188);
  v26 = sub_1000094DC(&qword_10009C0B0, &qword_1000808B0);
  *(v189 + *(v26 + 36)) = *(v188 + *(v26 + 36));
  v27 = sub_1000094DC(&qword_10009C068, &qword_100080868);
  v195 = a2 + v251 + *(v27 + 36);
  v194 = (a1 + v251 + *(v27 + 36));
  v190 = *v194;
  v191 = v194[1];

  *v195 = v190;
  *(v195 + 8) = v191;
  v192 = v194[2];
  v193 = v194[3];

  *(v195 + 16) = v192;
  *(v195 + 24) = v193;
  *(v195 + 32) = *(v194 + 2);
  v196 = sub_1000094DC(&qword_10009C070, &qword_100080870);
  v197 = a2 + v251 + *(v196 + 48);
  v198 = a1 + v251 + *(v196 + 48);
  *v197 = *v198;
  *(v197 + 16) = *(v198 + 16);
  v28 = sub_1000094DC(&qword_10009C078, &qword_100080878);
  v199 = (v197 + *(v28 + 44));
  v200 = (v198 + *(v28 + 44));
  v201 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v202 = *(v201 - 8);
  if ((*(v202 + 48))(v200, 1))
  {
    v37 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
    memcpy(v199, v200, *(*(v37 - 8) + 64));
  }

  else
  {
    v161 = *v200;

    *v199 = v161;
    v29 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v163 = (v199 + *(v29 + 36));
    v164 = (v200 + *(v29 + 36));
    v162 = *v164;

    *v163 = v162;
    v30 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v166 = v163 + *(v30 + 28);
    v165 = v164 + *(v30 + 28);
    v31 = sub_10007D4D8();
    (*(*(v31 - 8) + 16))(v166, v165);
    v32 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v169 = (v199 + *(v32 + 36));
    v168 = (v200 + *(v32 + 36));
    v167 = *v168;

    *v169 = v167;
    v170 = v168[1];

    v169[1] = v170;
    v33 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v173 = (v199 + *(v33 + 36));
    v172 = (v200 + *(v33 + 36));
    v171 = *v172;

    *v173 = v171;
    v174 = v172[1];

    v173[1] = v174;
    v34 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v176 = (v199 + *(v34 + 36));
    v177 = (v200 + *(v34 + 36));
    v175 = *v177;

    *v176 = v175;
    v35 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v178 = v176 + *(v35 + 28);
    v179 = v177 + *(v35 + 28);
    v180 = sub_10007D168();
    v181 = *(v180 - 8);
    if ((*(v181 + 48))(v179, 1))
    {
      v36 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v178, v179, *(*(v36 - 8) + 64));
    }

    else
    {
      (*(v181 + 16))(v178, v179, v180);
      (*(v181 + 56))(v178, 0, 1, v180);
    }

    memcpy(v199 + *(v201 + 36), v200 + *(v201 + 36), 0x30uLL);
    (*(v202 + 56))(v199, 0, 1, v201);
  }

  v155 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  (v185)(v199 + v155[12], v200 + v155[12], v184);
  v38 = v199 + v155[16];
  v39 = v200 + v155[16];
  *v38 = *v39;
  v38[8] = v39[8];
  v156 = (v199 + v155[20]);
  v157 = (v200 + v155[20]);
  v158 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v159 = *(v158 - 8);
  v160 = *(v159 + 48);
  if ((v160)(v157, 1))
  {
    v47 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v156, v157, *(*(v47 - 8) + 64));
  }

  else
  {
    v134 = *v157;

    *v156 = v134;
    v40 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v136 = (v156 + *(v40 + 36));
    v137 = (v157 + *(v40 + 36));
    v135 = *v137;

    *v136 = v135;
    v41 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v139 = v136 + *(v41 + 28);
    v138 = v137 + *(v41 + 28);
    v42 = sub_10007D4D8();
    (*(*(v42 - 8) + 16))(v139, v138);
    v43 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v142 = (v156 + *(v43 + 36));
    v141 = (v157 + *(v43 + 36));
    v140 = *v141;

    *v142 = v140;
    v143 = v141[1];

    v142[1] = v143;
    v44 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v146 = (v156 + *(v44 + 36));
    v145 = (v157 + *(v44 + 36));
    v144 = *v145;

    *v146 = v144;
    v147 = v145[1];

    v146[1] = v147;
    v149 = (v156 + *(v158 + 36));
    v150 = (v157 + *(v158 + 36));
    v148 = *v150;

    *v149 = v148;
    v45 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v151 = v149 + *(v45 + 28);
    v152 = v150 + *(v45 + 28);
    v153 = sub_10007D168();
    v154 = *(v153 - 8);
    if ((*(v154 + 48))(v152, 1))
    {
      v46 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v151, v152, *(*(v46 - 8) + 64));
    }

    else
    {
      (*(v154 + 16))(v151, v152, v153);
      (*(v154 + 56))(v151, 0, 1, v153);
    }

    (*(v159 + 56))(v156, 0, 1, v158);
  }

  v132 = (v199 + v155[24]);
  v133 = (v200 + v155[24]);
  if (v160())
  {
    v55 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v132, v133, *(*(v55 - 8) + 64));
  }

  else
  {
    v111 = *v133;

    *v132 = v111;
    v48 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v113 = (v132 + *(v48 + 36));
    v114 = (v133 + *(v48 + 36));
    v112 = *v114;

    *v113 = v112;
    v49 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v116 = v113 + *(v49 + 28);
    v115 = v114 + *(v49 + 28);
    v50 = sub_10007D4D8();
    (*(*(v50 - 8) + 16))(v116, v115);
    v51 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v119 = (v132 + *(v51 + 36));
    v118 = (v133 + *(v51 + 36));
    v117 = *v118;

    *v119 = v117;
    v120 = v118[1];

    v119[1] = v120;
    v52 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v123 = (v132 + *(v52 + 36));
    v122 = (v133 + *(v52 + 36));
    v121 = *v122;

    *v123 = v121;
    v124 = v122[1];

    v123[1] = v124;
    v126 = (v132 + *(v158 + 36));
    v127 = (v133 + *(v158 + 36));
    v125 = *v127;

    *v126 = v125;
    v53 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v128 = v126 + *(v53 + 28);
    v129 = v127 + *(v53 + 28);
    v130 = sub_10007D168();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(v129, 1))
    {
      v54 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v128, v129, *(*(v54 - 8) + 64));
    }

    else
    {
      (*(v131 + 16))(v128, v129, v130);
      (*(v131 + 56))(v128, 0, 1, v130);
    }

    (*(v159 + 56))(v132, 0, 1, v158);
  }

  v107 = (v199 + v155[28]);
  v108 = (v200 + v155[28]);
  v109 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v110 = *(v109 - 8);
  if ((*(v110 + 48))(v108, 1))
  {
    v63 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
    memcpy(v107, v108, *(*(v63 - 8) + 64));
  }

  else
  {
    v106 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v107, v108, *(*(v106 - 8) + 64));
    }

    else
    {
      v85 = *v108;

      *v107 = v85;
      v56 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v87 = (v107 + *(v56 + 36));
      v88 = (v108 + *(v56 + 36));
      v86 = *v88;

      *v87 = v86;
      v57 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v90 = v87 + *(v57 + 28);
      v89 = v88 + *(v57 + 28);
      v58 = sub_10007D4D8();
      (*(*(v58 - 8) + 16))(v90, v89);
      v59 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v93 = (v107 + *(v59 + 36));
      v92 = (v108 + *(v59 + 36));
      v91 = *v92;

      *v93 = v91;
      v94 = v92[1];

      v93[1] = v94;
      v60 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v97 = (v107 + *(v60 + 36));
      v96 = (v108 + *(v60 + 36));
      v95 = *v96;

      *v97 = v95;
      v98 = v96[1];

      v97[1] = v98;
      v100 = (v107 + *(v158 + 36));
      v101 = (v108 + *(v158 + 36));
      v99 = *v101;

      *v100 = v99;
      v61 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v102 = v100 + *(v61 + 28);
      v103 = v101 + *(v61 + 28);
      v104 = sub_10007D168();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1))
      {
        v62 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v102, v103, *(*(v62 - 8) + 64));
      }

      else
      {
        (*(v105 + 16))(v102, v103, v104);
        (*(v105 + 56))(v102, 0, 1, v104);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v110 + 56))(v107, 0, 1, v109);
  }

  v64 = sub_1000094DC(&qword_10009C090, &qword_100080890);
  v80 = v197 + *(v64 + 36);
  v79 = (v198 + *(v64 + 36));
  v75 = *v79;
  v76 = v79[1];

  *v80 = v75;
  *(v80 + 8) = v76;
  v77 = v79[2];
  v78 = v79[3];

  *(v80 + 16) = v77;
  *(v80 + 24) = v78;
  *(v80 + 32) = *(v79 + 2);
  v81 = (a2 + v251 + *(v196 + 64));
  v82 = (a1 + v251 + *(v196 + 64));
  v83 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v82, 1))
  {
    v66 = sub_1000094DC(&qword_10009C0D0, &qword_1000808D0);
    memcpy(v81, v82, *(*(v66 - 8) + 64));
  }

  else
  {
    v65 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v65 - 8) + 16))(v81, v82);
    v74 = &v81[*(v83 + 36)];
    v73 = &v82[*(v83 + 36)];
    v69 = *v73;
    v70 = *(v73 + 1);

    *v74 = v69;
    *(v74 + 1) = v70;
    v71 = *(v73 + 2);
    v72 = *(v73 + 3);

    *(v74 + 2) = v71;
    *(v74 + 3) = v72;
    *(v74 + 2) = *(v73 + 2);
    (*(v84 + 56))(v81, 0, 1, v83);
  }

  v67 = sub_1000094DC(&qword_10009BE68, &qword_100080358);
  memcpy((a2 + *(v67 + 36)), (a1 + *(v67 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_100069138()
{
  v2 = qword_10009C0F0;
  if (!qword_10009C0F0)
  {
    sub_100009860(&qword_10009C0E8, &qword_1000808E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000691C0()
{
  v2 = qword_10009C0F8;
  if (!qword_10009C0F8)
  {
    sub_100009860(&qword_10009C0E0, &qword_1000808E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100069248(uint64_t a1)
{
  v41 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v42 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v41 + v42, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = (a1 + v41 + v42);
      v10 = *v27;

      v23 = (v27 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v11 = *v23;

      v24 = v23 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 8))(v24);
      v25 = (v27 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v13 = *v25;

      v14 = v25[1];

      v26 = (v27 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v15 = *v26;

      v16 = v26[1];

      v28 = (v27 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v17 = *v28;

      v29 = v28 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v30 = sub_10007D168();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(v29, 1))
      {
        (*(v31 + 8))(v29, v30);
      }
    }

    else
    {
      v36 = (a1 + v41 + v42);
      v2 = *v36;

      v32 = (v36 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v32;

      v33 = v32 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v33);
      v34 = (v36 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v34;

      v6 = v34[1];

      v35 = (v36 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v35;

      v8 = v35[1];

      v37 = (v36 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v37;

      v38 = v37 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v39 = sub_10007D168();
      v40 = *(v39 - 8);
      if (!(*(v40 + 48))(v38, 1))
      {
        (*(v40 + 8))(v38, v39);
      }
    }
  }

  v21 = a1 + v41 + v42 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v18 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v18 - 8) + 8))(v21);
  v22 = a1 + v41 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v19 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v19 - 8) + 8))(v22);
  return a1;
}

unint64_t sub_100069818()
{
  v2 = qword_10009C100;
  if (!qword_10009C100)
  {
    sub_100009860(&qword_10009C068, &qword_100080868);
    sub_1000691C0();
    sub_1000497DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000698C0(uint64_t a1)
{
  v44 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v45 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v44 + v45, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = (a1 + v44 + v45);
      v10 = *v30;

      v26 = (v30 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v11 = *v26;

      v27 = v26 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 8))(v27);
      v28 = (v30 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v13 = *v28;

      v14 = v28[1];

      v29 = (v30 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v15 = *v29;

      v16 = v29[1];

      v31 = (v30 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v17 = *v31;

      v32 = v31 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v33 = sub_10007D168();
      v34 = *(v33 - 8);
      if (!(*(v34 + 48))(v32, 1))
      {
        (*(v34 + 8))(v32, v33);
      }
    }

    else
    {
      v39 = (a1 + v44 + v45);
      v2 = *v39;

      v35 = (v39 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v35;

      v36 = v35 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v36);
      v37 = (v39 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v37;

      v6 = v37[1];

      v38 = (v39 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v38;

      v8 = v38[1];

      v40 = (v39 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v40;

      v41 = v40 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v42 = sub_10007D168();
      v43 = *(v42 - 8);
      if (!(*(v43 + 48))(v41, 1))
      {
        (*(v43 + 8))(v41, v42);
      }
    }
  }

  v23 = a1 + v44 + v45 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v18 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v18 - 8) + 8))(v23);
  v24 = a1 + v44 + *(sub_1000094DC(&qword_10009C058, &qword_100080858) + 64);
  v19 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v19 - 8) + 8))(v24);
  v25 = a1 + *(sub_1000094DC(&qword_10009C068, &qword_100080868) + 36);
  v20 = *(v25 + 8);

  v21 = *(v25 + 24);

  return a1;
}

unint64_t sub_100069ED8()
{
  v2 = qword_10009C110;
  if (!qword_10009C110)
  {
    sub_100009860(&qword_10009C108, &qword_100080918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100069F60()
{
  v2 = qword_10009C118;
  if (!qword_10009C118)
  {
    sub_100009860(&qword_10009C0D8, &qword_1000808D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100069FE8(uint64_t a1)
{
  v76 = *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44);
  v1 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v1 - 8) + 48))(a1 + v76, 1))
  {
    v2 = *(a1 + v76);

    v68 = (a1 + v76 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v3 = *v68;

    v69 = v68 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 8))(v69);
    v70 = (a1 + v76 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v5 = *v70;

    v6 = v70[1];

    v71 = (a1 + v76 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v7 = *v71;

    v8 = v71[1];

    v72 = (a1 + v76 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v9 = *v72;

    v73 = v72 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v74 = sub_10007D168();
    v75 = *(v74 - 8);
    if (!(*(v75 + 48))(v73, 1))
    {
      (*(v75 + 8))(v73, v74);
    }
  }

  v64 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  v63 = a1 + v76 + v64[12];
  v10 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v10 - 8) + 8))(v63);
  v65 = (a1 + v76 + v64[20]);
  v66 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v67 = *(*(v66 - 8) + 48);
  if (!(v67)(v65, 1))
  {
    v11 = *v65;

    v55 = (v65 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v12 = *v55;

    v56 = v55 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v13 = sub_10007D4D8();
    (*(*(v13 - 8) + 8))(v56);
    v57 = (v65 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v14 = *v57;

    v15 = v57[1];

    v58 = (v65 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v16 = *v58;

    v17 = v58[1];

    v59 = (v65 + *(v66 + 36));
    v18 = *v59;

    v60 = v59 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v61 = sub_10007D168();
    v62 = *(v61 - 8);
    if (!(*(v62 + 48))(v60, 1))
    {
      (*(v62 + 8))(v60, v61);
    }
  }

  v54 = (a1 + v76 + v64[24]);
  if (!v67())
  {
    v19 = *v54;

    v46 = (v54 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v20 = *v46;

    v47 = v46 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v21 = sub_10007D4D8();
    (*(*(v21 - 8) + 8))(v47);
    v48 = (v54 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v22 = *v48;

    v23 = v48[1];

    v49 = (v54 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v24 = *v49;

    v25 = v49[1];

    v50 = (v54 + *(v66 + 36));
    v26 = *v50;

    v51 = v50 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v52 = sub_10007D168();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v51, 1))
    {
      (*(v53 + 8))(v51, v52);
    }
  }

  v45 = (a1 + v76 + v64[28]);
  v27 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v27 - 8) + 48))(v45, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v45;

      v37 = (v45 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v29 = *v37;

      v38 = v37 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v30 = sub_10007D4D8();
      (*(*(v30 - 8) + 8))(v38);
      v39 = (v45 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v31 = *v39;

      v32 = v39[1];

      v40 = (v45 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v33 = *v40;

      v34 = v40[1];

      v41 = (v45 + *(v66 + 36));
      v35 = *v41;

      v42 = v41 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v43 = sub_10007D168();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v42, 1))
      {
        (*(v44 + 8))(v42, v43);
      }
    }
  }

  return a1;
}

unint64_t sub_10006A9B4()
{
  v2 = qword_10009C120;
  if (!qword_10009C120)
  {
    sub_100009860(&qword_10009C090, &qword_100080890);
    sub_100069F60();
    sub_1000497DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006AA5C(uint64_t a1)
{
  v79 = *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44);
  v1 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v1 - 8) + 48))(a1 + v79, 1))
  {
    v2 = *(a1 + v79);

    v71 = (a1 + v79 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v3 = *v71;

    v72 = v71 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 8))(v72);
    v73 = (a1 + v79 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v5 = *v73;

    v6 = v73[1];

    v74 = (a1 + v79 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v7 = *v74;

    v8 = v74[1];

    v75 = (a1 + v79 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v9 = *v75;

    v76 = v75 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v77 = sub_10007D168();
    v78 = *(v77 - 8);
    if (!(*(v78 + 48))(v76, 1))
    {
      (*(v78 + 8))(v76, v77);
    }
  }

  v67 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  v66 = a1 + v79 + v67[12];
  v10 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v10 - 8) + 8))(v66);
  v68 = (a1 + v79 + v67[20]);
  v69 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v70 = *(*(v69 - 8) + 48);
  if (!(v70)(v68, 1))
  {
    v11 = *v68;

    v58 = (v68 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v12 = *v58;

    v59 = v58 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v13 = sub_10007D4D8();
    (*(*(v13 - 8) + 8))(v59);
    v60 = (v68 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v14 = *v60;

    v15 = v60[1];

    v61 = (v68 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v16 = *v61;

    v17 = v61[1];

    v62 = (v68 + *(v69 + 36));
    v18 = *v62;

    v63 = v62 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v64 = sub_10007D168();
    v65 = *(v64 - 8);
    if (!(*(v65 + 48))(v63, 1))
    {
      (*(v65 + 8))(v63, v64);
    }
  }

  v57 = (a1 + v79 + v67[24]);
  if (!v70())
  {
    v19 = *v57;

    v49 = (v57 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v20 = *v49;

    v50 = v49 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v21 = sub_10007D4D8();
    (*(*(v21 - 8) + 8))(v50);
    v51 = (v57 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v22 = *v51;

    v23 = v51[1];

    v52 = (v57 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v24 = *v52;

    v25 = v52[1];

    v53 = (v57 + *(v69 + 36));
    v26 = *v53;

    v54 = v53 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v55 = sub_10007D168();
    v56 = *(v55 - 8);
    if (!(*(v56 + 48))(v54, 1))
    {
      (*(v56 + 8))(v54, v55);
    }
  }

  v48 = (a1 + v79 + v67[28]);
  v27 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v27 - 8) + 48))(v48, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v48;

      v40 = (v48 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v29 = *v40;

      v41 = v40 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v30 = sub_10007D4D8();
      (*(*(v30 - 8) + 8))(v41);
      v42 = (v48 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v31 = *v42;

      v32 = v42[1];

      v43 = (v48 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v33 = *v43;

      v34 = v43[1];

      v44 = (v48 + *(v69 + 36));
      v35 = *v44;

      v45 = v44 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v46 = sub_10007D168();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v45, 1))
      {
        (*(v47 + 8))(v45, v46);
      }
    }
  }

  v39 = a1 + *(sub_1000094DC(&qword_10009C090, &qword_100080890) + 36);
  v36 = *(v39 + 8);

  v37 = *(v39 + 24);

  return a1;
}

unint64_t sub_10006B460()
{
  v2 = qword_10009C128;
  if (!qword_10009C128)
  {
    sub_100009860(&qword_10009C098, &qword_100080898);
    sub_100009860(&qword_10009BF40, &qword_1000803F8);
    sub_100065268();
    swift_getOpaqueTypeConformance2();
    sub_1000497DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006B558(uint64_t a1)
{
  v7 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  if (!(*(*(v7 - 8) + 48))(a1, 1))
  {
    v1 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v1 - 8) + 8))(a1);
    v5 = a1 + *(v7 + 36);
    v2 = *(v5 + 8);

    v3 = *(v5 + 24);
  }

  return a1;
}

char *sub_10006B640(char *a1, char *a2)
{
  v7 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_1000094DC(&qword_10009C0D0, &qword_1000808D0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v2 - 8) + 32))(a2, a1);
    memcpy(&a2[*(v7 + 36)], &a1[*(v7 + 36)], 0x30uLL);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

__n128 sub_10006B7B0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v88 = *(sub_1000094DC(&qword_10009C028, &qword_100080828) + 44);
  v2 = a2 + v88;
  *v2 = *(a1 + v88);
  *(v2 + 16) = *(a1 + v88 + 16);
  v89 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v90 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v91 = *(v90 - 8);
  if ((*(v91 + 48))(a1 + v88 + v89, 1))
  {
    v20 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy((a2 + v88 + v89), (a1 + v88 + v89), *(*(v20 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = (a1 + v88 + v89);
      v40 = *v55;

      v54 = (a2 + v88 + v89);
      *v54 = v40;
      v11 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v42 = (v54 + *(v11 + 36));
      v43 = (v55 + *(v11 + 36));
      v41 = *v43;

      *v42 = v41;
      v12 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v45 = v42 + *(v12 + 28);
      v44 = v43 + *(v12 + 28);
      v13 = sub_10007D4D8();
      (*(*(v13 - 8) + 16))(v45, v44);
      v14 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v48 = (v54 + *(v14 + 36));
      v47 = (v55 + *(v14 + 36));
      v46 = *v47;

      *v48 = v46;
      v49 = v47[1];

      v48[1] = v49;
      v15 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v52 = (v54 + *(v15 + 36));
      v51 = (v55 + *(v15 + 36));
      v50 = *v51;

      *v52 = v50;
      v53 = v51[1];

      v52[1] = v53;
      v16 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v57 = (v54 + *(v16 + 36));
      v58 = (v55 + *(v16 + 36));
      v56 = *v58;

      *v57 = v56;
      v17 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v57 + *(v17 + 28);
      __src = v58 + *(v17 + 28);
      v61 = sub_10007D168();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(__src, 1))
      {
        v18 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v62 + 16))(__dst, __src, v61);
        (*(v62 + 56))(__dst, 0, 1, v61);
      }
    }

    else
    {
      v78 = (a1 + v88 + v89);
      v63 = *v78;

      v77 = (a2 + v88 + v89);
      *v77 = v63;
      v3 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v65 = (v77 + *(v3 + 36));
      v66 = (v78 + *(v3 + 36));
      v64 = *v66;

      *v65 = v64;
      v4 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v68 = v65 + *(v4 + 28);
      v67 = v66 + *(v4 + 28);
      v5 = sub_10007D4D8();
      (*(*(v5 - 8) + 16))(v68, v67);
      v6 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v71 = (v77 + *(v6 + 36));
      v70 = (v78 + *(v6 + 36));
      v69 = *v70;

      *v71 = v69;
      v72 = v70[1];

      v71[1] = v72;
      v7 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v75 = (v77 + *(v7 + 36));
      v74 = (v78 + *(v7 + 36));
      v73 = *v74;

      *v75 = v73;
      v76 = v74[1];

      v75[1] = v76;
      v8 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v80 = (v77 + *(v8 + 36));
      v81 = (v78 + *(v8 + 36));
      v79 = *v81;

      *v80 = v79;
      v9 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v82 = v80 + *(v9 + 28);
      v83 = v81 + *(v9 + 28);
      v84 = sub_10007D168();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(v83, 1))
      {
        v10 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v82, v83, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v85 + 16))(v82, v83, v84);
        (*(v85 + 56))(v82, 0, 1, v84);
      }
    }

    v19 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy((a2 + v88 + v89 + *(v19 + 36)), (a1 + v88 + v89 + *(v19 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v91 + 56))(a2 + v88 + v89, 0, 1, v90);
  }

  v21 = sub_1000094DC(&qword_10009C048, &qword_100080848);
  v31 = a2 + v88 + v89 + *(v21 + 48);
  v30 = a1 + v88 + v89 + *(v21 + 48);
  v22 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v22 - 8) + 16))(v31, v30);
  v23 = sub_1000094DC(&qword_10009C058, &qword_100080858);
  v24 = a2 + v88 + *(v23 + 48);
  v25 = a1 + v88 + *(v23 + 48);
  *v24 = *v25;
  *(v24 + 8) = *(v25 + 8);
  v33 = a2 + v88 + *(v23 + 64);
  v32 = a1 + v88 + *(v23 + 64);
  v26 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v26 - 8) + 16))(v33, v32);
  v27 = sub_1000094DC(&qword_10009C0B0, &qword_1000808B0);
  *(v33 + *(v27 + 36)) = *(v32 + *(v27 + 36));
  v28 = sub_1000094DC(&qword_10009C068, &qword_100080868);
  v39 = (a2 + *(v28 + 36));
  v38 = (a1 + *(v28 + 36));
  v34 = v38->n128_u64[0];
  v35 = v38->n128_u64[1];

  v39->n128_u64[0] = v34;
  v39->n128_u64[1] = v35;
  v36 = v38[1].n128_u64[0];
  v37 = v38[1].n128_u64[1];

  v39[1].n128_u64[0] = v36;
  v39[1].n128_u64[1] = v37;
  result = v38[2];
  v39[2] = result;
  return result;
}

__n128 sub_10006C344(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v146 = *(sub_1000094DC(&qword_10009C078, &qword_100080878) + 44);
  v148 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v149 = *(v148 - 8);
  if ((*(v149 + 48))(a1 + v146, 1))
  {
    v10 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
    memcpy((a2 + v146), (a1 + v146), *(*(v10 - 8) + 64));
  }

  else
  {
    v124 = *(a1 + v146);

    *(a2 + v146) = v124;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v126 = (a2 + v146 + *(v2 + 36));
    v127 = (a1 + v146 + *(v2 + 36));
    v125 = *v127;

    *v126 = v125;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v129 = v126 + *(v3 + 28);
    v128 = v127 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v129, v128);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v132 = (a2 + v146 + *(v5 + 36));
    v131 = (a1 + v146 + *(v5 + 36));
    v130 = *v131;

    *v132 = v130;
    v133 = v131[1];

    v132[1] = v133;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v136 = (a2 + v146 + *(v6 + 36));
    v135 = (a1 + v146 + *(v6 + 36));
    v134 = *v135;

    *v136 = v134;
    v137 = v135[1];

    v136[1] = v137;
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v139 = (a2 + v146 + *(v7 + 36));
    v140 = (a1 + v146 + *(v7 + 36));
    v138 = *v140;

    *v139 = v138;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v141 = v139 + *(v8 + 28);
    v142 = v140 + *(v8 + 28);
    v143 = sub_10007D168();
    v144 = *(v143 - 8);
    if ((*(v144 + 48))(v142, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v141, v142, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v144 + 16))(v141, v142, v143);
      (*(v144 + 56))(v141, 0, 1, v143);
    }

    memcpy((a2 + v146 + *(v148 + 36)), (a1 + v146 + *(v148 + 36)), 0x30uLL);
    (*(v149 + 56))(a2 + v146, 0, 1, v148);
  }

  v118 = sub_1000094DC(&qword_10009C088, &qword_100080888);
  v117 = a2 + v146 + v118[12];
  v116 = a1 + v146 + v118[12];
  v11 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v11 - 8) + 16))(v117, v116);
  v12 = a2 + v146 + v118[16];
  v13 = a1 + v146 + v118[16];
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v119 = (a2 + v146 + v118[20]);
  v120 = (a1 + v146 + v118[20]);
  v121 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v122 = *(v121 - 8);
  v123 = *(v122 + 48);
  if ((v123)(v120, 1))
  {
    v21 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v119, v120, *(*(v21 - 8) + 64));
  }

  else
  {
    v95 = *v120;

    *v119 = v95;
    v14 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v97 = (v119 + *(v14 + 36));
    v98 = (v120 + *(v14 + 36));
    v96 = *v98;

    *v97 = v96;
    v15 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v100 = v97 + *(v15 + 28);
    v99 = v98 + *(v15 + 28);
    v16 = sub_10007D4D8();
    (*(*(v16 - 8) + 16))(v100, v99);
    v17 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v103 = (v119 + *(v17 + 36));
    v102 = (v120 + *(v17 + 36));
    v101 = *v102;

    *v103 = v101;
    v104 = v102[1];

    v103[1] = v104;
    v18 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v107 = (v119 + *(v18 + 36));
    v106 = (v120 + *(v18 + 36));
    v105 = *v106;

    *v107 = v105;
    v108 = v106[1];

    v107[1] = v108;
    v110 = (v119 + *(v121 + 36));
    v111 = (v120 + *(v121 + 36));
    v109 = *v111;

    *v110 = v109;
    v19 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v110 + *(v19 + 28);
    __src = v111 + *(v19 + 28);
    v114 = sub_10007D168();
    v115 = *(v114 - 8);
    if ((*(v115 + 48))(__src, 1))
    {
      v20 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v115 + 16))(__dst, __src, v114);
      (*(v115 + 56))(__dst, 0, 1, v114);
    }

    (*(v122 + 56))(v119, 0, 1, v121);
  }

  v93 = (a2 + v146 + v118[24]);
  v94 = (a1 + v146 + v118[24]);
  if (v123())
  {
    v29 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(v93, v94, *(*(v29 - 8) + 64));
  }

  else
  {
    v72 = *v94;

    *v93 = v72;
    v22 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v74 = (v93 + *(v22 + 36));
    v75 = (v94 + *(v22 + 36));
    v73 = *v75;

    *v74 = v73;
    v23 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v77 = v74 + *(v23 + 28);
    v76 = v75 + *(v23 + 28);
    v24 = sub_10007D4D8();
    (*(*(v24 - 8) + 16))(v77, v76);
    v25 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v80 = (v93 + *(v25 + 36));
    v79 = (v94 + *(v25 + 36));
    v78 = *v79;

    *v80 = v78;
    v81 = v79[1];

    v80[1] = v81;
    v26 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v84 = (v93 + *(v26 + 36));
    v83 = (v94 + *(v26 + 36));
    v82 = *v83;

    *v84 = v82;
    v85 = v83[1];

    v84[1] = v85;
    v87 = (v93 + *(v121 + 36));
    v88 = (v94 + *(v121 + 36));
    v86 = *v88;

    *v87 = v86;
    v27 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v89 = v87 + *(v27 + 28);
    v90 = v88 + *(v27 + 28);
    v91 = sub_10007D168();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v90, 1))
    {
      v28 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v89, v90, *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v92 + 16))(v89, v90, v91);
      (*(v92 + 56))(v89, 0, 1, v91);
    }

    (*(v122 + 56))(v93, 0, 1, v121);
  }

  v68 = (a2 + v146 + v118[28]);
  v69 = (a1 + v146 + v118[28]);
  v70 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1))
  {
    v37 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
    memcpy(v68, v69, *(*(v37 - 8) + 64));
  }

  else
  {
    v67 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v68, v69, *(*(v67 - 8) + 64));
    }

    else
    {
      v46 = *v69;

      *v68 = v46;
      v30 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v48 = (v68 + *(v30 + 36));
      v49 = (v69 + *(v30 + 36));
      v47 = *v49;

      *v48 = v47;
      v31 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v51 = v48 + *(v31 + 28);
      v50 = v49 + *(v31 + 28);
      v32 = sub_10007D4D8();
      (*(*(v32 - 8) + 16))(v51, v50);
      v33 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v54 = (v68 + *(v33 + 36));
      v53 = (v69 + *(v33 + 36));
      v52 = *v53;

      *v54 = v52;
      v55 = v53[1];

      v54[1] = v55;
      v34 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v58 = (v68 + *(v34 + 36));
      v57 = (v69 + *(v34 + 36));
      v56 = *v57;

      *v58 = v56;
      v59 = v57[1];

      v58[1] = v59;
      v61 = (v68 + *(v121 + 36));
      v62 = (v69 + *(v121 + 36));
      v60 = *v62;

      *v61 = v60;
      v35 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v63 = v61 + *(v35 + 28);
      v64 = v62 + *(v35 + 28);
      v65 = sub_10007D168();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v64, 1))
      {
        v36 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v63, v64, *(*(v36 - 8) + 64));
      }

      else
      {
        (*(v66 + 16))(v63, v64, v65);
        (*(v66 + 56))(v63, 0, 1, v65);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v71 + 56))(v68, 0, 1, v70);
  }

  v38 = sub_1000094DC(&qword_10009C090, &qword_100080890);
  v45 = (a2 + *(v38 + 36));
  v44 = (a1 + *(v38 + 36));
  v40 = v44->n128_u64[0];
  v41 = v44->n128_u64[1];

  v45->n128_u64[0] = v40;
  v45->n128_u64[1] = v41;
  v42 = v44[1].n128_u64[0];
  v43 = v44[1].n128_u64[1];

  v45[1].n128_u64[0] = v42;
  v45[1].n128_u64[1] = v43;
  result = v44[2];
  v45[2] = result;
  return result;
}

char *sub_10006D614(char *a1, char *a2)
{
  v14 = sub_1000094DC(&qword_10009C098, &qword_100080898);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v4 = sub_1000094DC(&qword_10009C0D0, &qword_1000808D0);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = *(v14 + 36);
    v11 = &a2[v3];
    v10 = &a1[v3];
    v6 = *&a1[v3];
    v7 = *&a1[v3 + 8];

    *v11 = v6;
    *(v11 + 1) = v7;
    v8 = *(v10 + 2);
    v9 = *(v10 + 3);

    *(v11 + 2) = v8;
    *(v11 + 3) = v9;
    *(v11 + 2) = *(v10 + 2);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

unint64_t sub_10006D7E0()
{
  v2 = qword_10009C130;
  if (!qword_10009C130)
  {
    sub_100009860(&qword_10009C0D0, &qword_1000808D0);
    sub_10006B460();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10006D878(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
  (*(*(v1 - 8) + 8))(a1);
  v5 = a1 + *(sub_1000094DC(&qword_10009C098, &qword_100080898) + 36);
  v2 = *(v5 + 8);

  v3 = *(v5 + 24);

  return a1;
}

__n128 sub_10006D91C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000094DC(&qword_10009C0A0, &qword_1000808A0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_1000094DC(&qword_10009C098, &qword_100080898) + 36);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);

  v3 = (a2 + v6);
  v12 = (a2 + v6);
  *v3 = v7;
  v3[1] = v8;
  v10 = *(a1 + v6 + 16);
  v11 = *(a1 + v6 + 24);

  v12[1].n128_u64[0] = v10;
  v12[1].n128_u64[1] = v11;
  result = *(a1 + v6 + 32);
  v12[2] = result;
  return result;
}

void *sub_10006DA28(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

unint64_t sub_10006DB38()
{
  v2 = qword_10009C138;
  if (!qword_10009C138)
  {
    sub_100009860(&qword_10009C080, &qword_100080880);
    sub_10003C8A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C138);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10006DBDC(uint64_t *a1)
{
  v1 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = *a1;

    v11 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v3 = *v11;

    v12 = v11 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 8))(v12);
    v13 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v5 = *v13;

    v6 = v13[1];

    v14 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v7 = *v14;

    v8 = v14[1];

    v15 = (a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
    v9 = *v15;

    v16 = v15 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v17 = sub_10007D168();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v16, 1))
    {
      (*(v18 + 8))(v16, v17);
    }
  }

  return a1;
}

void *sub_10006DE34(void *a1, void *a2)
{
  v24 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v12 = (a2 + *(v2 + 36));
    v13 = (a1 + *(v2 + 36));
    *v12 = *v13;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v15 = v12 + *(v3 + 28);
    v14 = v13 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v15, v14);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v16 = (a2 + *(v7 + 36));
    v17 = (a1 + *(v7 + 36));
    *v16 = *v17;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v16 + *(v8 + 28);
    __src = v17 + *(v8 + 28);
    v20 = sub_10007D168();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(__dst, __src, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }

    memcpy(a2 + *(v24 + 36), a1 + *(v24 + 36), 0x30uLL);
    (*(v25 + 56))(a2, 0, 1, v24);
  }

  return a2;
}

uint64_t *sub_10006E1E8(uint64_t *a1)
{
  v19 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  if (!(*(*(v19 - 8) + 48))(a1, 1))
  {
    v1 = *a1;

    v10 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
    v2 = *v10;

    v11 = v10 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
    v3 = sub_10007D4D8();
    (*(*(v3 - 8) + 8))(v11);
    v12 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
    v4 = *v12;

    v5 = v12[1];

    v13 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
    v6 = *v13;

    v7 = v13[1];

    v14 = (a1 + *(v19 + 36));
    v8 = *v14;

    v15 = v14 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
    v16 = sub_10007D168();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v15, 1))
    {
      (*(v17 + 8))(v15, v16);
    }
  }

  return a1;
}

void *sub_10006E434(void *a1, void *a2)
{
  v23 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(a1, 1))
  {
    v9 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v11 = (a2 + *(v2 + 36));
    v12 = (a1 + *(v2 + 36));
    *v11 = *v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v14 = v11 + *(v3 + 28);
    v13 = v12 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 32))(v14, v13);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v15 = (a2 + *(v23 + 36));
    v16 = (a1 + *(v23 + 36));
    *v15 = *v16;
    v7 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    __dst = v15 + *(v7 + 28);
    __src = v16 + *(v7 + 28);
    v19 = sub_10007D168();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(__src, 1))
    {
      v8 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(__dst, __src, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v20 + 32))(__dst, __src, v19);
      (*(v20 + 56))(__dst, 0, 1, v19);
    }

    (*(v24 + 56))(a2, 0, 1, v23);
  }

  return a2;
}

uint64_t *sub_10006E7A8(uint64_t *a1)
{
  v1 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v2 = *a1;

      v11 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v11;

      v12 = v11 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v12);
      v13 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v13;

      v6 = v13[1];

      v14 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v14;

      v8 = v14[1];

      v15 = (a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v15;

      v16 = v15 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v17 = sub_10007D168();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v16, 1))
      {
        (*(v18 + 8))(v16, v17);
      }
    }
  }

  return a1;
}

void *sub_10006EA2C(void *a1, void *a2)
{
  v25 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v22 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v22 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v12 = (a2 + *(v2 + 36));
      v13 = (a1 + *(v2 + 36));
      *v12 = *v13;
      v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v15 = v12 + *(v3 + 28);
      v14 = v13 + *(v3 + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 32))(v15, v14);
      v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
      v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
      v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v16 = (a2 + *(v7 + 36));
      v17 = (a1 + *(v7 + 36));
      *v16 = *v17;
      v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v16 + *(v8 + 28);
      __src = v17 + *(v8 + 28);
      v20 = sub_10007D168();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(__src, 1))
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v21 + 32))(__dst, __src, v20);
        (*(v21 + 56))(__dst, 0, 1, v20);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v26 + 56))(a2, 0, 1, v25);
  }

  return a2;
}

void *sub_10006EE24(uint64_t *a1, void *a2)
{
  v35 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009C0B8, &qword_1000808B8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v12 = *a1;

    *a2 = v12;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v14 = (a2 + *(v2 + 36));
    v15 = (a1 + *(v2 + 36));
    v13 = *v15;

    *v14 = v13;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v17 = v14 + *(v3 + 28);
    v16 = v15 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v17, v16);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v20 = (a2 + *(v5 + 36));
    v19 = (a1 + *(v5 + 36));
    v18 = *v19;

    *v20 = v18;
    v21 = v19[1];

    v20[1] = v21;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v24 = (a2 + *(v6 + 36));
    v23 = (a1 + *(v6 + 36));
    v22 = *v23;

    *v24 = v22;
    v25 = v23[1];

    v24[1] = v25;
    v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
    v27 = (a2 + *(v7 + 36));
    v28 = (a1 + *(v7 + 36));
    v26 = *v28;

    *v27 = v26;
    v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v29 = v27 + *(v8 + 28);
    v30 = v28 + *(v8 + 28);
    v31 = sub_10007D168();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v30, 1))
    {
      v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v29, v30, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v32 + 16))(v29, v30, v31);
      (*(v32 + 56))(v29, 0, 1, v31);
    }

    memcpy(a2 + *(v35 + 36), a1 + *(v35 + 36), 0x30uLL);
    (*(v36 + 56))(a2, 0, 1, v35);
  }

  return a2;
}

void *sub_10006F27C(uint64_t *a1, void *a2)
{
  v34 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(a1, 1))
  {
    v9 = sub_1000094DC(&qword_10009C0C0, &qword_1000808C0);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
    v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
    v13 = (a2 + *(v2 + 36));
    v14 = (a1 + *(v2 + 36));
    v12 = *v14;

    *v13 = v12;
    v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
    v16 = v13 + *(v3 + 28);
    v15 = v14 + *(v3 + 28);
    v4 = sub_10007D4D8();
    (*(*(v4 - 8) + 16))(v16, v15);
    v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
    v19 = (a2 + *(v5 + 36));
    v18 = (a1 + *(v5 + 36));
    v17 = *v18;

    *v19 = v17;
    v20 = v18[1];

    v19[1] = v20;
    v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
    v23 = (a2 + *(v6 + 36));
    v22 = (a1 + *(v6 + 36));
    v21 = *v22;

    *v23 = v21;
    v24 = v22[1];

    v23[1] = v24;
    v26 = (a2 + *(v34 + 36));
    v27 = (a1 + *(v34 + 36));
    v25 = *v27;

    *v26 = v25;
    v7 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
    v28 = v26 + *(v7 + 28);
    v29 = v27 + *(v7 + 28);
    v30 = sub_10007D168();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1))
    {
      v8 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
      memcpy(v28, v29, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(v31 + 16))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
    }

    (*(v35 + 56))(a2, 0, 1, v34);
  }

  return a2;
}

void *sub_10006F69C(uint64_t *a1, void *a2)
{
  v36 = sub_1000094DC(&qword_10009BF28, &unk_1000803E0);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(a1, 1))
  {
    v10 = sub_1000094DC(&qword_10009C0C8, &qword_1000808C8);
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v33 = sub_1000094DC(&qword_10009BF30, &qword_1000803F0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v33 - 8) + 64));
    }

    else
    {
      v12 = *a1;

      *a2 = v12;
      v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v14 = (a2 + *(v2 + 36));
      v15 = (a1 + *(v2 + 36));
      v13 = *v15;

      *v14 = v13;
      v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v17 = v14 + *(v3 + 28);
      v16 = v15 + *(v3 + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 16))(v17, v16);
      v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v20 = (a2 + *(v5 + 36));
      v19 = (a1 + *(v5 + 36));
      v18 = *v19;

      *v20 = v18;
      v21 = v19[1];

      v20[1] = v21;
      v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v24 = (a2 + *(v6 + 36));
      v23 = (a1 + *(v6 + 36));
      v22 = *v23;

      *v24 = v22;
      v25 = v23[1];

      v24[1] = v25;
      v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v27 = (a2 + *(v7 + 36));
      v28 = (a1 + *(v7 + 36));
      v26 = *v28;

      *v27 = v26;
      v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v29 = v27 + *(v8 + 28);
      v30 = v28 + *(v8 + 28);
      v31 = sub_10007D168();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1))
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v29, v30, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v32 + 16))(v29, v30, v31);
        (*(v32 + 56))(v29, 0, 1, v31);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v37 + 56))(a2, 0, 1, v36);
  }

  return a2;
}

unint64_t sub_10006FB40()
{
  v2 = qword_10009C140;
  if (!qword_10009C140)
  {
    sub_100009860(&qword_10009C0B8, &qword_1000808B8);
    sub_10006DB38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10006FBD8()
{
  v2 = qword_10009C148;
  if (!qword_10009C148)
  {
    sub_100009860(&qword_10009C0C0, &qword_1000808C0);
    sub_10003C8A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10006FC70()
{
  v2 = qword_10009C150;
  if (!qword_10009C150)
  {
    sub_100009860(&qword_10009C0C8, &qword_1000808C8);
    sub_100064F8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C150);
    return WitnessTable;
  }

  return v2;
}

char *sub_10006FD08(char *a1, char *a2)
{
  v6 = *a1;

  *a2 = v6;
  v7 = *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36);
  v8 = *&a1[v7];

  *&a2[v7] = v8;
  v9 = *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
  v2 = sub_10007D4D8();
  (*(*(v2 - 8) + 16))(&a2[v7 + v9], &a1[v7 + v9]);
  v10 = *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36);
  v11 = *&a1[v10];

  *&a2[v10] = v11;
  v12 = *&a1[v10 + 8];

  *&a2[v10 + 8] = v12;
  v13 = *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36);
  v14 = *&a1[v13];

  *&a2[v13] = v14;
  v15 = *&a1[v13 + 8];

  *&a2[v13 + 8] = v15;
  v17 = *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36);
  v19 = *&a1[v17];

  *&a2[v17] = v19;
  v20 = *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
  v21 = sub_10007D168();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(&a1[v17 + v20], 1))
  {
    v3 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
    memcpy(&a2[v17 + v20], &a1[v17 + v20], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))();
    (*(v22 + 56))(&a2[v17 + v20], 0, 1, v21);
  }

  v4 = sub_1000094DC(&qword_10009C080, &qword_100080880);
  memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x30uLL);
  return a2;
}

unint64_t sub_1000700FC()
{
  v2 = qword_10009C168;
  if (!qword_10009C168)
  {
    sub_100009860(&qword_10009C160, &qword_100080928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100070184()
{
  v2 = qword_10009C170;
  if (!qword_10009C170)
  {
    sub_100009860(&qword_10009C158, &qword_100080920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10007020C(uint64_t a1)
{
  v37 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1 + v37, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *(a1 + v37);

      v21 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v11 = *v21;

      v22 = v21 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 8))(v22);
      v23 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v13 = *v23;

      v14 = v23[1];

      v24 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v15 = *v24;

      v16 = v24[1];

      v25 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v17 = *v25;

      v26 = v25 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v27 = sub_10007D168();
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(v26, 1))
      {
        (*(v28 + 8))(v26, v27);
      }
    }

    else
    {
      v2 = *(a1 + v37);

      v29 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v29;

      v30 = v29 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v30);
      v31 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v31;

      v6 = v31[1];

      v32 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v32;

      v8 = v32[1];

      v33 = (a1 + v37 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v33;

      v34 = v33 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v35 = sub_10007D168();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v34, 1))
      {
        (*(v36 + 8))(v34, v35);
      }
    }
  }

  v20 = a1 + v37 + *(sub_1000094DC(&qword_10009C048, &qword_100080848) + 48);
  v18 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v18 - 8) + 8))(v20);
  return a1;
}

unint64_t sub_10007072C()
{
  v2 = qword_10009C178;
  if (!qword_10009C178)
  {
    sub_100009860(&qword_10009C0B0, &qword_1000808B0);
    sub_100009860(&qword_10009BF18, &unk_1000803D0);
    sub_100064774();
    swift_getOpaqueTypeConformance2();
    sub_1000644DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100070824(uint64_t a1)
{
  v1 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_10007088C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v68 = *(sub_1000094DC(&qword_10009C030, &qword_100080830) + 44);
  v70 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(a1 + v68, 1))
  {
    v19 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy((a2 + v68), (a1 + v68), *(*(v19 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *(a1 + v68);

      *(a2 + v68) = v25;
      v10 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v27 = (a2 + v68 + *(v10 + 36));
      v28 = (a1 + v68 + *(v10 + 36));
      v26 = *v28;

      *v27 = v26;
      v11 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v30 = v27 + *(v11 + 28);
      v29 = v28 + *(v11 + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 16))(v30, v29);
      v13 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v33 = (a2 + v68 + *(v13 + 36));
      v32 = (a1 + v68 + *(v13 + 36));
      v31 = *v32;

      *v33 = v31;
      v34 = v32[1];

      v33[1] = v34;
      v14 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v37 = (a2 + v68 + *(v14 + 36));
      v36 = (a1 + v68 + *(v14 + 36));
      v35 = *v36;

      *v37 = v35;
      v38 = v36[1];

      v37[1] = v38;
      v15 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v40 = (a2 + v68 + *(v15 + 36));
      v41 = (a1 + v68 + *(v15 + 36));
      v39 = *v41;

      *v40 = v39;
      v16 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v40 + *(v16 + 28);
      __src = v41 + *(v16 + 28);
      v44 = sub_10007D168();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(__src, 1))
      {
        v17 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v45 + 16))(__dst, __src, v44);
        (*(v45 + 56))(__dst, 0, 1, v44);
      }
    }

    else
    {
      v46 = *(a1 + v68);

      *(a2 + v68) = v46;
      v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v48 = (a2 + v68 + *(v2 + 36));
      v49 = (a1 + v68 + *(v2 + 36));
      v47 = *v49;

      *v48 = v47;
      v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v51 = v48 + *(v3 + 28);
      v50 = v49 + *(v3 + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 16))(v51, v50);
      v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v54 = (a2 + v68 + *(v5 + 36));
      v53 = (a1 + v68 + *(v5 + 36));
      v52 = *v53;

      *v54 = v52;
      v55 = v53[1];

      v54[1] = v55;
      v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v58 = (a2 + v68 + *(v6 + 36));
      v57 = (a1 + v68 + *(v6 + 36));
      v56 = *v57;

      *v58 = v56;
      v59 = v57[1];

      v58[1] = v59;
      v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v61 = (a2 + v68 + *(v7 + 36));
      v62 = (a1 + v68 + *(v7 + 36));
      v60 = *v62;

      *v61 = v60;
      v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v63 = v61 + *(v8 + 28);
      v64 = v62 + *(v8 + 28);
      v65 = sub_10007D168();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v64, 1))
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v63, v64, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v66 + 16))(v63, v64, v65);
        (*(v66 + 56))(v63, 0, 1, v65);
      }
    }

    v18 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy((a2 + v68 + *(v18 + 36)), (a1 + v68 + *(v18 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v71 + 56))(a2 + v68, 0, 1, v70);
  }

  v20 = sub_1000094DC(&qword_10009C048, &qword_100080848);
  v24 = a2 + v68 + *(v20 + 48);
  v23 = a1 + v68 + *(v20 + 48);
  v21 = sub_1000094DC(&qword_10009C050, &qword_100080850);
  (*(*(v21 - 8) + 16))(v24, v23);
  return a2;
}

uint64_t sub_100071200(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000094DC(&qword_10009C060, &qword_100080860);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = sub_1000094DC(&qword_10009C0B0, &qword_1000808B0);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

unint64_t sub_10007129C()
{
  v2 = qword_10009C180;
  if (!qword_10009C180)
  {
    sub_100009860(&qword_10009C038, &qword_100080838);
    sub_10006DB38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C180);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10007133C(uint64_t *a1)
{
  v1 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *a1;

      v19 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v11 = *v19;

      v20 = v19 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 8))(v20);
      v21 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v13 = *v21;

      v14 = v21[1];

      v22 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v15 = *v22;

      v16 = v22[1];

      v23 = (a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v17 = *v23;

      v24 = v23 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v25 = sub_10007D168();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v24, 1))
      {
        (*(v26 + 8))(v24, v25);
      }
    }

    else
    {
      v2 = *a1;

      v27 = (a1 + *(sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8) + 36));
      v3 = *v27;

      v28 = v27 + *(sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0) + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 8))(v28);
      v29 = (a1 + *(sub_1000094DC(&qword_10009B4B8, &unk_100080370) + 36));
      v5 = *v29;

      v6 = v29[1];

      v30 = (a1 + *(sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0) + 36));
      v7 = *v30;

      v8 = v30[1];

      v31 = (a1 + *(sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8) + 36));
      v9 = *v31;

      v32 = v31 + *(sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0) + 28);
      v33 = sub_10007D168();
      v34 = *(v33 - 8);
      if (!(*(v34 + 48))(v32, 1))
      {
        (*(v34 + 8))(v32, v33);
      }
    }
  }

  return a1;
}

void *sub_1000717A8(void *a1, void *a2)
{
  v43 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(a1, 1))
  {
    v19 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v10 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v21 = (a2 + *(v10 + 36));
      v22 = (a1 + *(v10 + 36));
      *v21 = *v22;
      v11 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v24 = v21 + *(v11 + 28);
      v23 = v22 + *(v11 + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 32))(v24, v23);
      v13 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      *(a2 + *(v13 + 36)) = *(a1 + *(v13 + 36));
      v14 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      *(a2 + *(v14 + 36)) = *(a1 + *(v14 + 36));
      v15 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v25 = (a2 + *(v15 + 36));
      v26 = (a1 + *(v15 + 36));
      *v25 = *v26;
      v16 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v25 + *(v16 + 28);
      __src = v26 + *(v16 + 28);
      v29 = sub_10007D168();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(__src, 1))
      {
        v17 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v30 + 32))(__dst, __src, v29);
        (*(v30 + 56))(__dst, 0, 1, v29);
      }
    }

    else
    {
      *a2 = *a1;
      v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v31 = (a2 + *(v2 + 36));
      v32 = (a1 + *(v2 + 36));
      *v31 = *v32;
      v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v34 = v31 + *(v3 + 28);
      v33 = v32 + *(v3 + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 32))(v34, v33);
      v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      *(a2 + *(v5 + 36)) = *(a1 + *(v5 + 36));
      v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
      v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v35 = (a2 + *(v7 + 36));
      v36 = (a1 + *(v7 + 36));
      *v35 = *v36;
      v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v37 = v35 + *(v8 + 28);
      v38 = v36 + *(v8 + 28);
      v39 = sub_10007D168();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1))
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v37, v38, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v40 + 32))(v37, v38, v39);
        (*(v40 + 56))(v37, 0, 1, v39);
      }
    }

    v18 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy(a2 + *(v18 + 36), a1 + *(v18 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v44 + 56))(a2, 0, 1, v43);
  }

  return a2;
}

void *sub_100071E98(uint64_t *a1, void *a2)
{
  v65 = sub_1000094DC(&qword_10009C038, &qword_100080838);
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(a1, 1))
  {
    v19 = sub_1000094DC(&qword_10009C0A8, &qword_1000808A8);
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  else
  {
    sub_1000094DC(&qword_10009C040, &qword_100080840);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *a1;

      *a2 = v21;
      v10 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v23 = (a2 + *(v10 + 36));
      v24 = (a1 + *(v10 + 36));
      v22 = *v24;

      *v23 = v22;
      v11 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v26 = v23 + *(v11 + 28);
      v25 = v24 + *(v11 + 28);
      v12 = sub_10007D4D8();
      (*(*(v12 - 8) + 16))(v26, v25);
      v13 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v29 = (a2 + *(v13 + 36));
      v28 = (a1 + *(v13 + 36));
      v27 = *v28;

      *v29 = v27;
      v30 = v28[1];

      v29[1] = v30;
      v14 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v33 = (a2 + *(v14 + 36));
      v32 = (a1 + *(v14 + 36));
      v31 = *v32;

      *v33 = v31;
      v34 = v32[1];

      v33[1] = v34;
      v15 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v36 = (a2 + *(v15 + 36));
      v37 = (a1 + *(v15 + 36));
      v35 = *v37;

      *v36 = v35;
      v16 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      __dst = v36 + *(v16 + 28);
      __src = v37 + *(v16 + 28);
      v40 = sub_10007D168();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(__src, 1))
      {
        v17 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(__dst, __src, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v41 + 16))(__dst, __src, v40);
        (*(v41 + 56))(__dst, 0, 1, v40);
      }
    }

    else
    {
      v42 = *a1;

      *a2 = v42;
      v2 = sub_1000094DC(&qword_10009B4A8, &qword_10007F8A8);
      v44 = (a2 + *(v2 + 36));
      v45 = (a1 + *(v2 + 36));
      v43 = *v45;

      *v44 = v43;
      v3 = sub_1000094DC(&qword_10009B4B0, &unk_10007F8B0);
      v47 = v44 + *(v3 + 28);
      v46 = v45 + *(v3 + 28);
      v4 = sub_10007D4D8();
      (*(*(v4 - 8) + 16))(v47, v46);
      v5 = sub_1000094DC(&qword_10009B4B8, &unk_100080370);
      v50 = (a2 + *(v5 + 36));
      v49 = (a1 + *(v5 + 36));
      v48 = *v49;

      *v50 = v48;
      v51 = v49[1];

      v50[1] = v51;
      v6 = sub_1000094DC(&qword_10009B4C0, &qword_10007F8C0);
      v54 = (a2 + *(v6 + 36));
      v53 = (a1 + *(v6 + 36));
      v52 = *v53;

      *v54 = v52;
      v55 = v53[1];

      v54[1] = v55;
      v7 = sub_1000094DC(&qword_10009B4C8, &qword_10007F8C8);
      v57 = (a2 + *(v7 + 36));
      v58 = (a1 + *(v7 + 36));
      v56 = *v58;

      *v57 = v56;
      v8 = sub_1000094DC(&qword_10009B4D0, &qword_10007F8D0);
      v59 = v57 + *(v8 + 28);
      v60 = v58 + *(v8 + 28);
      v61 = sub_10007D168();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1))
      {
        v9 = sub_1000094DC(&qword_10009B500, &qword_10007F900);
        memcpy(v59, v60, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v62 + 16))(v59, v60, v61);
        (*(v62 + 56))(v59, 0, 1, v61);
      }
    }

    v18 = sub_1000094DC(&qword_10009C080, &qword_100080880);
    memcpy(a2 + *(v18 + 36), a1 + *(v18 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
    (*(v66 + 56))(a2, 0, 1, v65);
  }

  return a2;
}

unint64_t sub_1000726D0()
{
  v2 = qword_10009C188;
  if (!qword_10009C188)
  {
    sub_100009860(&qword_10009C0A8, &qword_1000808A8);
    sub_10007129C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C188);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100072798()
{
  v12 = 0;
  v13 = v0;
  v10 = [v0 serializedRepresentations];
  if (v10)
  {
    v8 = sub_10007D9A8();
    _objc_release(v10);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = v9;
    v11[1] = v9;
    sub_1000094DC(&qword_10009AC40, &unk_10007F268);
    sub_100072A1C();
    v11[0] = sub_10007D928();
    v4 = sub_1000094DC(&qword_10009C198, &qword_100080960);
    v5 = sub_100014EA4();
    v1 = sub_100072B50();
    v7 = sub_10001BD00(sub_100072AD4, 0, v4, v5, &type metadata for Never, v1, &protocol witness table for Never, v6);
    sub_10000A480(v11);

    return v7;
  }

  else
  {
    sub_100014EA4();
    return sub_10007DEC8();
  }
}

uint64_t sub_1000729B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_100072AA4();
  result = sub_10007CDA8();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_100072A1C()
{
  v2 = qword_10009C190;
  if (!qword_10009C190)
  {
    sub_100009860(&qword_10009AC40, &unk_10007F268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C190);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100072AA4()
{
  sub_100072D4C(0);

  return 0;
}

id sub_100072AD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_100014EA4();
  sub_100072BD8(v3, v4);
  result = sub_100072C54(v3, v4);
  *a2 = result;
  return result;
}

unint64_t sub_100072B50()
{
  v2 = qword_10009C1A0;
  if (!qword_10009C1A0)
  {
    sub_100009860(&qword_10009C198, &qword_100080960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100072BD8(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

id sub_100072C54(uint64_t a1, unint64_t a2)
{
  isa = sub_10007CDB8().super.isa;
  v6 = [swift_getObjCClassFromMetadata() objectIDFromSerializedRepresentation:isa];
  _objc_release(isa);
  sub_100072CD0(a1, a2);
  return v6;
}

uint64_t sub_100072CD0(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_100072D4C(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Base64DecodingOptions();
    v1 = sub_10007D9C8();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

id sub_100072DF8(void *a1)
{
  v36 = a1[4];
  sub_100014D28(a1[3], v36);
  if (v36)
  {
    switch(v36)
    {
      case 1uLL:
        v30 = sub_1000196A8();
        if (v30)
        {
          v29 = [objc_opt_self() predicateForMessagesInMailboxWithObjectID:v30];
          if (sub_10001A44C())
          {
            sub_10001DE00();
            sub_10001DE64();
            sub_10007DEC8();
            v27 = v1;
            _objc_retain(v29);
            *v27 = v29;
            v27[1] = [objc_opt_self() predicateForPrimaryMessages];
            sub_100006FD4();
            v28 = sub_100020F5C();
            _objc_release(v29);
            _objc_release(v30);
            return v28;
          }

          else
          {
            _objc_release(v30);
            return v29;
          }
        }

        else
        {
          sub_10001DE64();
          return sub_100073598(0);
        }

      case 2uLL:
        v19 = [objc_opt_self() predicateForFlaggedMessages];
        type metadata accessor for ECMailboxType();
        v4 = sub_10007DEC8();
        *v5 = 5;
        v5[1] = 6;
        v5[2] = 4;
        v5[3] = 3;
        v5[4] = 1;
        sub_100006FD4();
        v20 = sub_1000735E8(v4);

        _objc_release(v19);
        return v20;
      case 3uLL:
        v17 = [objc_opt_self() predicateForUnreadMessages];
        type metadata accessor for ECMailboxType();
        v6 = sub_10007DEC8();
        *v7 = 7;
        sub_100006FD4();
        v18 = sub_100073894(v6);

        _objc_release(v17);
        return v18;
      case 4uLL:
        v15 = [objc_opt_self() predicateForIsVIP:1];
        type metadata accessor for ECMailboxType();
        v8 = sub_10007DEC8();
        *v9 = 7;
        sub_100006FD4();
        v16 = sub_100073894(v8);

        _objc_release(v15);
        return v16;
      case 5uLL:
        v13 = [objc_opt_self() predicateForTodayMessages];
        type metadata accessor for ECMailboxType();
        v10 = sub_10007DEC8();
        *v11 = 7;
        sub_100006FD4();
        v14 = sub_100073894(v10);

        _objc_release(v13);
        return v14;
      default:
        v34 = sub_1000196A8();
        if (v34)
        {
          v32 = [objc_opt_self() predicateForMessagesInMailboxWithObjectID:v34];
          _objc_release(v34);

          return v32;
        }

        else
        {
          sub_10001DE64();
          v31 = sub_100073598(0);

          return v31;
        }
    }
  }

  v26 = a1[2];

  if (!v26)
  {
    return [objc_opt_self() predicateForMessagesInMailboxWithType:7];
  }

  sub_1000094DC(&qword_10009AC58, qword_10007F3E0);
  sub_10001AA34();
  v2 = sub_10007DB58();
  if (v2)
  {

    return [objc_opt_self() predicateForMessagesInMailboxWithType:7];
  }

  v23 = objc_opt_self();

  sub_100014EA4();
  sub_100073B40();
  sub_10007DD78();
  isa = sub_10007D998().super.isa;

  v25 = [v23 predicateForMessagesInMailboxesWithObjectIDs:isa];
  _objc_release(isa);
  if (sub_10001A44C())
  {
    sub_10001DE00();
    sub_10001DE64();
    sub_10007DEC8();
    v21 = v3;
    _objc_retain(v25);
    *v21 = v25;
    v21[1] = [objc_opt_self() predicateForPrimaryMessages];
    sub_100006FD4();
    v22 = sub_100020F5C();
    _objc_release(v25);

    return v22;
  }

  else
  {

    return v25;
  }
}

id sub_100073598(char a1)
{
  v1 = [swift_getObjCClassFromMetadata() predicateWithValue:a1 & 1];

  return v1;
}

id sub_1000735E8(uint64_t a1)
{
  v19[2] = 0;
  v19[3] = a1;
  v14 = objc_opt_self();
  sub_100023AAC();
  v19[1] = a1;
  KeyPath = swift_getKeyPath();

  v17 = sub_1000094DC(&qword_10009C1B0, &qword_1000809B8);
  v1 = sub_100073D64();
  v9 = sub_10001BD00(sub_100073D30, KeyPath, v17, &type metadata for Int, &type metadata for Never, v1, &protocol witness table for Never, v18);

  v19[0] = v9;
  v10 = sub_1000094DC(&qword_10009C1C0, &unk_1000809C0);
  v11 = sub_100073DEC();
  v2 = sub_100073E50();
  v12 = sub_10001BD00(sub_100073C04, 0, v10, v11, &type metadata for Never, v2, &protocol witness table for Never, v18);
  sub_10000A480(v19);
  v5 = sub_100073CA0(v12, 1);
  v7 = [v14 predicateForMessagesWithMailboxScope:?];
  _objc_release(v5);
  sub_10001DE00();
  sub_10001DE64();
  sub_10007DEC8();
  v6 = v3;
  _objc_retain(v13);
  *v6 = v13;
  _objc_retain(v7);
  v6[1] = v7;
  sub_100006FD4();
  v8 = sub_100020F5C();
  _objc_release(v7);
  return v8;
}

id sub_100073894(uint64_t a1)
{
  v19[2] = 0;
  v19[3] = a1;
  v14 = objc_opt_self();
  sub_100023AAC();
  v19[1] = a1;
  KeyPath = swift_getKeyPath();

  v17 = sub_1000094DC(&qword_10009C1B0, &qword_1000809B8);
  v1 = sub_100073D64();
  v9 = sub_10001BD00(sub_100073D30, KeyPath, v17, &type metadata for Int, &type metadata for Never, v1, &protocol witness table for Never, v18);

  v19[0] = v9;
  v10 = sub_1000094DC(&qword_10009C1C0, &unk_1000809C0);
  v11 = sub_100073DEC();
  v2 = sub_100073E50();
  v12 = sub_10001BD00(sub_100073C04, 0, v10, v11, &type metadata for Never, v2, &protocol witness table for Never, v18);
  sub_10000A480(v19);
  v5 = sub_100073CA0(v12, 0);
  v7 = [v14 predicateForMessagesWithMailboxScope:?];
  _objc_release(v5);
  sub_10001DE00();
  sub_10001DE64();
  sub_10007DEC8();
  v6 = v3;
  _objc_retain(v13);
  *v6 = v13;
  _objc_retain(v7);
  v6[1] = v7;
  sub_100006FD4();
  v8 = sub_100020F5C();
  _objc_release(v7);
  return v8;
}

unint64_t sub_100073B40()
{
  v2 = qword_10009C1A8;
  if (!qword_10009C1A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009C1A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100073BA4(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

id sub_100073C04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_100073DEC();
  result = sub_100073C60(v3);
  *a2 = result;
  return result;
}

id sub_100073CA0(uint64_t a1, char a2)
{
  sub_100073DEC();
  isa = sub_10007D998().super.isa;
  v5 = [swift_getObjCClassFromMetadata() mailboxScopeForMailboxTypes:isa forExclusion:a2 & 1];
  _objc_release(isa);

  return v5;
}

unint64_t sub_100073D64()
{
  v2 = qword_10009C1B8;
  if (!qword_10009C1B8)
  {
    sub_100009860(&qword_10009C1B0, &qword_1000809B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100073DEC()
{
  v2 = qword_10009C1C8;
  if (!qword_10009C1C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009C1C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100073E50()
{
  v2 = qword_10009C1D0;
  if (!qword_10009C1D0)
  {
    sub_100009860(&qword_10009C1C0, &unk_1000809C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C1D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100073F44@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v59 = 0;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v48 = 0;
  v75 = 0;
  v73 = 0;
  v49 = sub_10007CE98();
  v50 = *(v49 - 8);
  v51 = v50;
  v2 = *(v50 + 64);
  __chkstk_darwin(0);
  v52 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10007CEA8();
  v54 = *(v53 - 8);
  v55 = v54;
  v4 = *(v54 + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = (*(*(sub_1000094DC(&qword_10009C1D8, &qword_1000809F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v58 = &v20 - v57;
  v60 = sub_10007CE28();
  v61 = *(v60 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v6 = __chkstk_darwin(v59);
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v20 - v65;
  __chkstk_darwin(v6);
  v66 = &v20 - v65;
  v80 = &v20 - v65;
  v79 = v1;
  v7 = v1 + *(type metadata accessor for Snapshot() + 20);
  v69 = *v7;
  v67 = v69;
  v8 = *(v7 + 8);
  v68 = *(v7 + 16);
  sub_10002F4F8(v69);
  if (!v69 || v67 == 1)
  {
    v21 = sub_100076054();
    v22 = &v78;
    v20 = 0;
    swift_beginAccess();
    v18 = sub_10007D768();
    (*(*(v18 - 8) + 16))(v47, v21);
    swift_endAccess();
    return v48;
  }

  v46 = v67;
  v9 = v48;
  v40 = v67;
  v77 = v67;
  v76 = v67;
  v42 = sub_1000094DC(&qword_10009AC30, &qword_10007F260);
  v41 = v42;
  v43 = sub_100075110();
  v10 = sub_10007D958();
  v44 = v9;
  v45 = v10;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v75 = v45 & 1;
    if (v45)
    {
      v11 = v44;
      v37 = sub_1000761C8();
      v38 = &v70;
      v36 = 0;
      swift_beginAccess();
      v12 = sub_10007D768();
      (*(*(v12 - 8) + 16))(v47, v37);
      swift_endAccess();

      return v11;
    }

    sub_10007CE88();
    (*(v51 + 104))(v52, enum case for Calendar.Component.hour(_:), v49);
    sub_10007CE18();
    sub_100039FA8();
    sub_10007CE78();
    v32 = *(v62 + 8);
    v33 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v64, v60);
    (*(v51 + 8))(v52, v49);
    (*(v55 + 8))(v56, v53);
    v34 = *(v62 + 48);
    v35 = (v62 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v34(v58, 1, v60) == 1)
    {
      sub_10007CDD8();
      if (v34(v58, 1, v60) != 1)
      {
        sub_100075198(v58);
      }
    }

    else
    {
      (*(v62 + 32))(v66, v58, v60);
    }

    v13 = v44;
    v74 = v40;
    v29 = &v20;
    __chkstk_darwin(&v20);
    *(&v20 - 2) = v14;
    v15 = sub_10007D958();
    v30 = v13;
    v31 = v15;
    if (!v13)
    {
      v73 = v31 & 1;
      if (v31)
      {
        v27 = sub_100076234();
        v28 = &v71;
        v26 = 0;
        swift_beginAccess();
        v16 = sub_10007D768();
        (*(*(v16 - 8) + 16))(v47, v27);
      }

      else
      {
        v24 = sub_100076054();
        v25 = &v72;
        v23 = 0;
        swift_beginAccess();
        v17 = sub_10007D768();
        (*(*(v17 - 8) + 16))(v47, v24);
      }

      swift_endAccess();
      v32(v66, v60);

      return v30;
    }
  }

  result = v29;
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Snapshot()
{
  v1 = qword_10009C250;
  if (!qword_10009C250)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_100074910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  sub_10000E380(a1, a5);
  result = type metadata accessor for Snapshot();
  v6 = a5 + *(result + 20);
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  return result;
}

uint64_t sub_100074974(unint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (a1 < 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = HIBYTE(a3);
  }

  return v4 & 1;
}

uint64_t sub_1000749FC(unint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return 0;
  }

  return a2;
}

unint64_t sub_100074AA4(unint64_t a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  return a1;
}

BOOL sub_100074BC4(unint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, uint64_t a5, __int16 a6)
{
  sub_10002F4F8(a1);
  sub_10002F4F8(a4);
  if (!a1)
  {
    if (!a4)
    {
      sub_10003CF94(0);
      sub_10003CF94(0);
      return 1;
    }

LABEL_22:
    sub_10003CF94(a1);
    sub_10003CF94(a4);
    return 0;
  }

  if (a1 == 1)
  {
    if (a4 == 1)
    {
      sub_10003CF94(1uLL);
      sub_10003CF94(1uLL);
      return 1;
    }

    goto LABEL_22;
  }

  if (a4 < 2)
  {
    goto LABEL_22;
  }

  type metadata accessor for Message();
  sub_100075F54();
  if ((sub_10007DA28() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      v8 = a2 == a5;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if ((a6 & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = 1;
LABEL_11:
  if (v8)
  {

    sub_10003CF94(a1);
    sub_10003CF94(a4);
    return (HIBYTE(a3) & 1) == (HIBYTE(a6) & 1);
  }

LABEL_12:

  sub_10003CF94(a1);
  sub_10003CF94(a4);
  return 0;
}

unint64_t sub_100075034()
{
  v1 = v0 + *(type metadata accessor for Snapshot() + 20);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_10002F4F8(*v1);
  return v3;
}

uint64_t sub_100075088(uint64_t a1)
{
  v4 = type metadata accessor for Message();
  if (*(a1 + *(v4 + 36)))
  {
    v2 = *(a1 + *(v4 + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_100075110()
{
  v2 = qword_10009C1E0;
  if (!qword_10009C1E0)
  {
    sub_100009860(&qword_10009AC30, &qword_10007F260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C1E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100075198(uint64_t a1)
{
  v3 = sub_10007CE28();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100075240(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v8 = a2;
  v18 = 0;
  v17 = 0;
  v9 = 0;
  v10 = sub_10007CE28();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v5 - v13;
  v18 = v2;
  v17 = v3;
  v16 = type metadata accessor for Message();
  if (*(v15 + *(v16 + 40)))
  {
    (*(v11 + 16))(v14, v15 + *(v16 + 32), v10);
    sub_100075FD4();
    v6 = sub_10007D838();
    (*(v11 + 8))(v14, v10);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000753FC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v10 = a3;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  if (!a1)
  {
    return sub_10007D898("Empty", 5uLL, 1);
  }

  if (a1 == 1)
  {
    return sub_10007D898("Error", 5uLL, 1);
  }

  v17 = a1;
  v15 = a2;
  v16 = v10 & 1;
  v14[0] = sub_10007DEB8();
  v14[1] = v3;
  v21._countAndFlagsBits = sub_10007D898("Content: messages:", 0x12uLL, 1);
  sub_10007DEA8(v21);

  v13 = a1;
  sub_1000094DC(&qword_10009AC30, &qword_10007F260);
  sub_1000756DC();
  sub_10007DE88();
  v22._countAndFlagsBits = sub_10007D898(", unreadCount:", 0xEuLL, 1);
  sub_10007DEA8(v22);

  v11[2] = a2;
  v12 = v10 & 1;
  sub_1000094DC(&qword_10009C1F0, &qword_1000809F8);
  v11[0] = sub_10007D878();
  v11[1] = v4;
  sub_10007DE98();
  sub_1000099C8(v11);
  v23._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v23);

  sub_1000099C8(v14);
  v6 = sub_10007D888();

  return v6;
}

unint64_t sub_1000756DC()
{
  v2 = qword_10009C1E8;
  if (!qword_10009C1E8)
  {
    sub_100009860(&qword_10009AC30, &qword_10007F260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000757B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = type metadata accessor for Mailbox();
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else if (a2 == 2147483645)
  {
    v5 = -1;
    if (*(a1 + *(a3 + 20)) < &_mh_execute_header)
    {
      v5 = *(a1 + *(a3 + 20));
    }

    v3 = v5 - 2;
    if (v5 - 2 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __break(1u);
  }

  return v6;
}

uint64_t sub_100075900(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Mailbox();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483645)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000759F8()
{
  v2 = type metadata accessor for Mailbox();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100075AA4(uint64_t *a1)
{
  v3 = *a1;
  v4 = -1;
  if (!HIDWORD(*a1))
  {
    v1 = *a1;
    v4 = v3;
  }

  return (v4 + 1);
}

__n128 sub_100075BBC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  return result;
}

uint64_t sub_100075BD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFE && *(a1 + 18))
    {
      v5 = *a1 + 2147483645;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
      {
        v4 = *a1;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100075D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 18);
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    *(result + 16) = 0;
    if (a3 >= 0x7FFFFFFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100075F54()
{
  v2 = qword_10009C290;
  if (!qword_10009C290)
  {
    type metadata accessor for Message();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100075FD4()
{
  v2 = qword_10009C298;
  if (!qword_10009C298)
  {
    sub_10007CE28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100076054()
{
  if (qword_10009A658 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D768();
  return sub_10000202C(v0, qword_10009DC48);
}

uint64_t sub_1000760C0()
{
  v2[2] = 0;
  v2[0] = sub_10007DEB8();
  v2[1] = v0;
  v3._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v3);

  sub_10007D758();
  sub_10007DE98();
  v4._countAndFlagsBits = sub_10007D898("", 0, 1);
  sub_10007DEA8(v4);

  sub_1000099C8(v2);
  return sub_10007D888();
}

uint64_t sub_1000761C8()
{
  if (qword_10009A668 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D768();
  return sub_10000202C(v0, qword_10009DC78);
}

uint64_t sub_100076234()
{
  if (qword_10009A660 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D768();
  return sub_10000202C(v0, qword_10009DC60);
}

uint64_t sub_1000762A0()
{
  v1 = sub_10007D768();
  sub_100001F90(v1, qword_10009DC48);
  sub_10000202C(v1, qword_10009DC48);
  sub_10004C468();
  return sub_10007D748();
}

uint64_t sub_1000762FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100076054();
  swift_beginAccess();
  v1 = sub_10007D768();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_100076380(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10007D768();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_100076054();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1000764C8()
{
  v1 = sub_10007D768();
  sub_100001F90(v1, qword_10009DC60);
  sub_10000202C(v1, qword_10009DC60);
  sub_10004C468();
  return sub_10007D748();
}

uint64_t sub_100076524@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100076234();
  swift_beginAccess();
  v1 = sub_10007D768();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1000765A8(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10007D768();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_100076234();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1000766F0()
{
  v1 = sub_10007D768();
  sub_100001F90(v1, qword_10009DC78);
  sub_10000202C(v1, qword_10009DC78);
  sub_10004C468();
  return sub_10007D748();
}

uint64_t sub_10007674C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000761C8();
  swift_beginAccess();
  v1 = sub_10007D768();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1000767D0(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10007D768();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_1000761C8();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_100076930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v13[6] = 0;
  v13[11] = a4;
  v13[10] = a1;
  v13[7] = a2;
  v13[8] = a3;
  *&v13[9] = a5;
  sub_1000094DC(&qword_10009C2A0, &qword_100080AD0);
  sub_100076E30();
  v13[0] = sub_10007CFC8();
  v13[1] = v5;

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a5;
  *(v11 + 40) = a1;
  sub_1000094DC(&qword_10009C2C0, &qword_100080AE0);
  sub_1000770D0();
  sub_100077158();
  sub_1000771D4();
  sub_10007D398();

  sub_100040030(v13);
  v12[0] = v13[2];
  v12[1] = v13[3];
  v12[2] = v13[4];
  v12[3] = v13[5];
  sub_1000094DC(&qword_10009C2E0, &qword_100080AE8);
  sub_100077254();
  sub_100057B1C();
  sub_10007D308();
  return sub_100077384(v12);
}

uint64_t sub_100076B8C(uint64_t a1, double (*a2)(void))
{
  v2 = a2();
  result = a1;
  *a1 = v2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t *sub_100076CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[3] = a1;
  v12[0] = sub_10007D468();
  sub_10007CF88();
  v11[3] = v2;
  v11[4] = v3;
  sub_100077158();
  sub_10007D328();
  sub_10001DFF8(v12);
  v11[0] = v12[1];
  v11[1] = v12[2];
  v11[2] = v12[3];
  v9 = sub_1000094DC(&qword_10009C2A0, &qword_100080AD0);
  sub_100076E30();
  sub_1000354E8(v11, v9, v13);
  sub_10001DFF8(v11);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v13[2];

  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  sub_1000354E8(v10, v9, a2);
  sub_10001DFF8(v10);
  return sub_10001DFF8(v13);
}

unint64_t sub_100076E30()
{
  v2 = qword_10009C2A8;
  if (!qword_10009C2A8)
  {
    sub_100009860(&qword_10009C2A0, &qword_100080AD0);
    sub_100076ED4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100076ED4()
{
  v2 = qword_10009C2B0;
  if (!qword_10009C2B0)
  {
    sub_100009860(&qword_10009C2B8, &qword_100080AD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_100076F5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v15 = 0;
  v16 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0.0;
  v11 = 0;
  v9 = a1[1];
  v15 = *a1;
  v16 = v9;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v11 = a4;

  v10[0] = a2;
  v10[1] = a3;
  *&v10[2] = a5;

  swift_getAtKeyPath();
  sub_1000094DC(&qword_10009C300, &qword_100080C48);
  sub_10007D568();

  return sub_100077470(v10);
}

uint64_t sub_10007706C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

unint64_t sub_1000770D0()
{
  v2 = qword_10009C2C8;
  if (!qword_10009C2C8)
  {
    sub_100009860(&qword_10009C2C0, &qword_100080AE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100077158()
{
  v2 = qword_10009C2D0;
  if (!qword_10009C2D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000771D4()
{
  v2 = qword_10009C2D8;
  if (!qword_10009C2D8)
  {
    type metadata accessor for CGSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100077254()
{
  v2 = qword_10009C2E8;
  if (!qword_10009C2E8)
  {
    sub_100009860(&qword_10009C2E0, &qword_100080AE8);
    sub_1000770D0();
    sub_1000772FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000772FC()
{
  v2 = qword_10009C2F0;
  if (!qword_10009C2F0)
  {
    sub_100009860(&qword_10009C2F8, qword_100080AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C2F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100077384(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_1000773DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_100009860(&qword_10009B9A8, &qword_10007FEB0);
  sub_10007CFF8();
  sub_1000497DC();
  return swift_getWitnessTable();
}

uint64_t *sub_100077470(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

id MFGetMailboxIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for MFGetMailboxIntent();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFGetAccountsIntentResponse.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];
  _objc_release(a1);
  return v4;
}

id MFGetMailboxIntent.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MFGetMailboxIntent();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_10007D858();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithIdentifier:? backingStore:?];
  _objc_release(a3);
  _objc_release(v7);
  return v5;
}

id MFGetMailboxIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_10007D858();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for MFGetMailboxIntent();
  v4 = objc_msgSendSuper2(&v9, "initWithIdentifier:backingStore:", v6, a3);
  _objc_release(v6);
  _objc_retain(v4);
  v13 = v4;
  _objc_release(a3);

  _objc_release(v13);
  return v4;
}

id MFGetAccountsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_10007D858();
  v14 = sub_10007D858();
  if (a5)
  {
    isa = sub_10007D7C8().super.isa;

    v6 = [v11 initWithDomain:v12 verb:v14 parametersByName:isa];
  }

  else
  {
    v6 = [v11 initWithDomain:v12 verb:v14 parametersByName:0];
  }

  v9 = v6;
  _objc_release(v8);
  _objc_release(v14);

  _objc_release(v12);

  return v9;
}

id MFGetMailboxIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v16 = a1;
  v17 = a2;
  v14 = a3;
  v15 = a4;
  v13 = a5;

  v9 = sub_10007D858();

  v10 = sub_10007D858();

  if (a5)
  {
    isa = sub_10007D7C8().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for MFGetMailboxIntent();
  v6 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v9, v10, v8);
  _objc_release(v8);
  _objc_release(v10);
  _objc_release(v9);
  _objc_retain(v6);
  v18 = v6;

  _objc_release(v18);
  return v6;
}

id MFGetMailboxIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFGetMailboxIntent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MFGetAccountsIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 0;
}

uint64_t sub_1000780FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MFGetAccountsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t MFGetMailboxIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___MFGetMailboxIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_100078250(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MFGetMailboxIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void sub_100078368(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = MFGetMailboxIntentResponse.code.getter();
  _objc_release(v2);
}

void sub_1000783D4(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_100078250(v3);
  _objc_release(v2);
}

char *MFGetMailboxIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v6 = [v7 init];
  _objc_retain(v6);
  v3 = &v6[OBJC_IVAR___MFGetMailboxIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  _objc_retain(v6);
  [v6 setUserActivity:a2];
  _objc_release(v6);
  _objc_release(a2);
  _objc_release(v6);
  return v6;
}

id MFGetMailboxIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___MFGetMailboxIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for MFGetMailboxIntentResponse();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFGetMailboxIntentResponse.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___MFGetMailboxIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for MFGetMailboxIntentResponse();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore:a1];
  _objc_release(a1);
  return v4;
}

id MFGetMailboxIntentResponse.init(backingStore:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___MFGetMailboxIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for MFGetMailboxIntentResponse();
  v4 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = sub_10007D7C8().super.isa;

    v2 = [v8 initWithPropertiesByName:isa];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName:0];
  }

  v5 = v2;
  _objc_release(v4);
  return v5;
}

id MFGetMailboxIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___MFGetMailboxIntentResponse_code = 0;

  if (a1)
  {
    isa = sub_10007D7C8().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for MFGetMailboxIntentResponse();
  v3 = objc_msgSendSuper2(&v7, "initWithPropertiesByName:", v5);
  _objc_release(v5);
  if (v3)
  {
    _objc_retain(v3);
    v9 = v3;

    _objc_release(v9);
    return v3;
  }

  else
  {
    _objc_release(0);

    return 0;
  }
}

id MFGetMailboxIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFGetMailboxIntentResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100078CBC()
{
  v2 = qword_10009C310;
  if (!qword_10009C310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100078D7C()
{
  v2 = qword_10009C368;
  if (!qword_10009C368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C368);
    return WitnessTable;
  }

  return v2;
}

id MFGetAccountsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for MFGetAccountsIntent();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFGetAccountsIntent.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MFGetAccountsIntent();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_10007D858();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for MFGetAccountsIntent();
  v4 = objc_msgSendSuper2(&v9, "initWithIdentifier:backingStore:", v6, a3);
  _objc_release(v6);
  _objc_retain(v4);
  v13 = v4;
  _objc_release(a3);

  _objc_release(v13);
  return v4;
}

id MFGetAccountsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v16 = a1;
  v17 = a2;
  v14 = a3;
  v15 = a4;
  v13 = a5;

  v9 = sub_10007D858();

  v10 = sub_10007D858();

  if (a5)
  {
    isa = sub_10007D7C8().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for MFGetAccountsIntent();
  v6 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v9, v10, v8);
  _objc_release(v8);
  _objc_release(v10);
  _objc_release(v9);
  _objc_retain(v6);
  v18 = v6;

  _objc_release(v18);
  return v6;
}

id MFGetAccountsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFGetAccountsIntent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MFGetAccountsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___MFGetAccountsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1000797A0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MFGetAccountsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void sub_100079878(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = MFGetAccountsIntentResponse.code.getter();
  _objc_release(v2);
}

void sub_1000798E4(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_1000797A0(v3);
  _objc_release(v2);
}

char *MFGetAccountsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v6 = [v7 init];
  _objc_retain(v6);
  v3 = &v6[OBJC_IVAR___MFGetAccountsIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  _objc_retain(v6);
  [v6 setUserActivity:a2];
  _objc_release(v6);
  _objc_release(a2);
  _objc_release(v6);
  return v6;
}

id MFGetAccountsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___MFGetAccountsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for MFGetAccountsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFGetAccountsIntentResponse.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___MFGetAccountsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for MFGetAccountsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntentResponse.init(backingStore:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___MFGetAccountsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for MFGetAccountsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFGetAccountsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___MFGetAccountsIntentResponse_code = 0;

  if (a1)
  {
    isa = sub_10007D7C8().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for MFGetAccountsIntentResponse();
  v3 = objc_msgSendSuper2(&v7, "initWithPropertiesByName:", v5);
  _objc_release(v5);
  if (v3)
  {
    _objc_retain(v3);
    v9 = v3;

    _objc_release(v9);
    return v3;
  }

  else
  {
    _objc_release(0);

    return 0;
  }
}

id MFGetAccountsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFGetAccountsIntentResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007A0AC()
{
  v2 = qword_10009C378;
  if (!qword_10009C378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10007A16C()
{
  v2 = qword_10009C3D0;
  if (!qword_10009C3D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C3D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t MFIntentMailboxKind.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
  }

  return 0;
}

uint64_t sub_10007A464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MFIntentMailboxKind.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

id static MFIntentMailboxKindResolutionResult.success(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MFGetAccountsIntentResponseCode.rawValue.getter();
  v1 = [ObjCClassFromMetadata successWithResolvedValue:v0];

  return v1;
}

id static MFIntentMailboxKindResolutionResult.confirmationRequired(with:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MFGetAccountsIntentResponseCode.rawValue.getter();
  v1 = [ObjCClassFromMetadata confirmationRequiredWithValueToConfirm:v0];

  return v1;
}

id MFIntentMailboxKindResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10007D7C8().super.isa;
  v7 = [v4 initWithJSONDictionary:? forIntent:?];
  _objc_release(a2);
  _objc_release(isa);

  return v7;
}

id MFIntentMailboxKindResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = sub_10007D7C8().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MFIntentMailboxKindResolutionResult();
  v6 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);
  _objc_release(isa);
  if (v6)
  {
    _objc_retain(v6);
    v10 = v6;
    _objc_release(a2);

    _objc_release(v10);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a2);

    return 0;
  }
}

id MFIntentMailboxKindResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFIntentMailboxKindResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007A96C()
{
  v2 = qword_10009C3D8;
  if (!qword_10009C3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10007A9FC()
{
  v2 = qword_10009C408;
  if (!qword_10009C408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10009C408);
    return WitnessTable;
  }

  return v2;
}

id MFIntentMailbox.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = objc_allocWithZone(v6);
  if (a2)
  {
    v12 = sub_10007D858();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = sub_10007D858();
  if (a6)
  {
    v9 = sub_10007D858();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v16 initWithIdentifier:v13 displayString:v11 pronunciationHint:?];
  _objc_release(v10);
  _objc_release(v11);

  _objc_release(v13);
  return v8;
}

id MFIntentMailbox.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v16 = a5;
  v17 = a6;

  if (a2)
  {
    v11 = sub_10007D858();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = sub_10007D858();

  if (a6)
  {
    v8 = sub_10007D858();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15.receiver = 0;
  v15.super_class = type metadata accessor for MFIntentMailbox();
  v7 = objc_msgSendSuper2(&v15, "initWithIdentifier:displayString:pronunciationHint:", v12, v10, v9);
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v12);
  _objc_retain(v7);
  v22 = v7;

  _objc_release(v22);
  return v7;
}

id MFIntentMailbox.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MFIntentMailbox();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFIntentMailbox.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFIntentMailbox();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static MFIntentMailboxResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v2 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a1);

  return v2;
}

id static MFIntentMailboxResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MFIntentMailbox();
  sub_10007B394();
  sub_10007DD78();
  isa = sub_10007D998().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v5 = objc_msgSendSuper2(&v6, "disambiguationWithObjectsToDisambiguate:", isa);
  _objc_release(isa);
  return v5;
}

unint64_t sub_10007B394()
{
  v2 = qword_10009C438;
  if (!qword_10009C438)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009C438);
    return ObjCClassMetadata;
  }

  return v2;
}

id static MFIntentMailboxResolutionResult.confirmationRequired(with:)(void *a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  _objc_retain(a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MFIntentMailboxResolutionResult;
  v4 = objc_msgSendSuper2(&v8, "confirmationRequiredWithObjectToConfirm:", v5);
  _objc_release(v3);
  return v4;
}

void static MFIntentMailboxResolutionResult.success(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007B6C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _objc_release(v17);

  return a1;
}

void static MFIntentMailboxResolutionResult.disambiguation(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007B7DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  _objc_release(v17);

  return a1;
}

void static MFIntentMailboxResolutionResult.confirmationRequired(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007B8E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _objc_release(v17);

  return a1;
}

id MFIntentMailboxResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = sub_10007D7C8().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MFIntentMailboxResolutionResult();
  v6 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);
  _objc_release(isa);
  if (v6)
  {
    _objc_retain(v6);
    v10 = v6;
    _objc_release(a2);

    _objc_release(v10);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a2);

    return 0;
  }
}

id MFIntentMailboxResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFIntentMailboxResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id MFIntentAccount.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v16 = a5;
  v17 = a6;

  if (a2)
  {
    v11 = sub_10007D858();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = sub_10007D858();

  if (a6)
  {
    v8 = sub_10007D858();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15.receiver = 0;
  v15.super_class = type metadata accessor for MFIntentAccount();
  v7 = objc_msgSendSuper2(&v15, "initWithIdentifier:displayString:pronunciationHint:", v12, v10, v9);
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v12);
  _objc_retain(v7);
  v22 = v7;

  _objc_release(v22);
  return v7;
}

id MFIntentAccount.init(coder:)(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MFIntentAccount();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id MFIntentAccount.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFIntentAccount();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static MFIntentAccountResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v2 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a1);

  return v2;
}

id static MFIntentAccountResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MFIntentAccount();
  sub_10007B394();
  sub_10007DD78();
  isa = sub_10007D998().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v5 = objc_msgSendSuper2(&v6, "disambiguationWithObjectsToDisambiguate:", isa);
  _objc_release(isa);
  return v5;
}

id static MFIntentAccountResolutionResult.confirmationRequired(with:)(void *a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  _objc_retain(a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MFIntentAccountResolutionResult;
  v4 = objc_msgSendSuper2(&v8, "confirmationRequiredWithObjectToConfirm:", v5);
  _objc_release(v3);
  return v4;
}

void static MFIntentAccountResolutionResult.success(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007C618(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _objc_release(v17);

  return a1;
}

void static MFIntentAccountResolutionResult.disambiguation(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007C734(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  _objc_release(v17);

  return a1;
}

void static MFIntentAccountResolutionResult.confirmationRequired(with:)()
{
  sub_10007BB5C();
  sub_10007DDB8();
  __break(1u);
}

id sub_10007C83C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  _objc_release(v17);

  return a1;
}

id MFIntentAccountResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = sub_10007D7C8().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MFIntentAccountResolutionResult();
  v6 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);
  _objc_release(isa);
  if (v6)
  {
    _objc_retain(v6);
    v10 = v6;
    _objc_release(a2);

    _objc_release(v10);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a2);

    return 0;
  }
}

id MFIntentAccountResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFIntentAccountResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007CB7C()
{
  sub_10007CCA4();
  type metadata accessor for ResourceBundleClass();
  result = sub_10007CBC4();
  qword_10009C4B8 = result;
  return result;
}

id sub_10007CBC4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_10007CC1C()
{
  if (qword_10009A678 != -1)
  {
    swift_once();
  }

  return &qword_10009C4B8;
}

unint64_t sub_10007CCA4()
{
  v2 = qword_10009C558;
  if (!qword_10009C558)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10009C558);
    return ObjCClassMetadata;
  }

  return v2;
}
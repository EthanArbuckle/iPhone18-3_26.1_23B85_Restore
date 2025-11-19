uint64_t sub_1C98354C0()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C8D30);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3C8D38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  if (qword_1EC3C5DA8 != -1)
  {
    swift_once();
  }

  result = sub_1C9835420(qword_1EC3D31F0);
  if (!v0)
  {
    v16 = 0;
    v17 = result;
    v18 = sub_1C97FB98C();
    sub_1C97A2CEC(&qword_1EC3C79C0);
    v15 = v6;
    type metadata accessor for SNAOPReport(0);
    v14 = v5;
    sub_1C97AE67C(&qword_1EC3C79D0, &qword_1EC3C79C0);
    sub_1C9A92048();

    type metadata accessor for SNAOPReport.SuccessPayload(0);
    sub_1C97AE67C(&qword_1EC3C8D40, &qword_1EC3C8D30);
    sub_1C9A92048();
    (*(v2 + 8))(v4, v1);
    sub_1C97AE67C(&qword_1EC3C8D48, &qword_1EC3C8D38);
    v10 = v14;
    v11 = sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3C8D50);
    swift_allocObject();
    v12 = sub_1C98E3778(v11);
    (*(v15 + 8))(v8, v10);
    v18 = v12;
    sub_1C97AE67C(qword_1EC3C8D58, &qword_1EC3C8D50);
    v13 = sub_1C9A91F28();

    type metadata accessor for SharedAOPReportStream.Instance();
    result = swift_allocObject();
    *(result + 16) = v13;
  }

  return result;
}

uint64_t sub_1C9835884()
{
  v3[2] = sub_1C983DFFC;
  v4 = v0;

  v1 = sub_1C97E30D0(sub_1C983DFC0, v3);

  return v1;
}

uint64_t sub_1C9835908()
{
  v3[2] = &v4;

  v1 = sub_1C98E2558(v0, sub_1C983DFE0, v3);

  return v1;
}

uint64_t sub_1C9835980()
{
  v3[2] = sub_1C983DF98;
  v4 = v0;

  v1 = sub_1C97E30F8(sub_1C983DFC0, v3);

  return v1;
}

uint64_t AOPClassificationDemo.Request.init(modelURL:enablePostProcessing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C9835A8C(a1, a3);
  result = type metadata accessor for AOPClassificationDemo.Request();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C9835A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AOPClassificationDemo.Request()
{
  result = qword_1EC3C8B48;
  if (!qword_1EC3C8B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AOPClassificationDemo.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  v11 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v11);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3C8B08);
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_1C9835DE0(a1, &v29 - v18);
  sub_1C9835DE0(a2, &v19[v20]);
  sub_1C983E180(v19);
  if (v21)
  {
    sub_1C983E180(&v19[v20]);
    if (v21)
    {
      sub_1C97DA1E0(v19, &qword_1EC3C7FE0);
LABEL_12:
      v27 = type metadata accessor for AOPClassificationDemo.Request();
      v22 = *(a1 + *(v27 + 20)) ^ *(a2 + *(v27 + 20)) ^ 1;
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_1C9835DE0(v19, v14);
  sub_1C983E180(&v19[v20]);
  if (v21)
  {
    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_1C97DA1E0(v19, &qword_1EC3C8B08);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v19[v20], v4);
  sub_1C983E0FC();
  sub_1C983DE88(v23, v24);
  v25 = sub_1C9A92438();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v14, v4);
  sub_1C97DA1E0(v19, &qword_1EC3C7FE0);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C9835DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9835E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556C65646F6DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C9AD62F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9835F20(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4C52556C65646F6DLL;
  }
}

uint64_t sub_1C9835F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9835E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9835F8C(uint64_t a1)
{
  v2 = sub_1C983619C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9835FC8(uint64_t a1)
{
  v2 = sub_1C983619C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AOPClassificationDemo.Request.encode(to:)(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C8B10);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C983619C();
  sub_1C9A93DD8();
  v12[15] = 0;
  sub_1C9A91558();
  sub_1C983E0FC();
  sub_1C983DE88(v9, v10);
  sub_1C9A939B8();
  if (!v1)
  {
    type metadata accessor for AOPClassificationDemo.Request();
    v12[14] = 1;
    sub_1C9A939D8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C983619C()
{
  result = qword_1EC3C8B18;
  if (!qword_1EC3C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8B18);
  }

  return result;
}

uint64_t AOPClassificationDemo.Request.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1C9835DE0(v1, &v18 - v11);
  v13 = sub_1C983E174();
  if (sub_1C97ABF20(v13, v14, v2) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1C9A93CE8();
    sub_1C983E0FC();
    sub_1C983DE88(v15, v16);
    sub_1C9A92398();
    (*(v4 + 8))(v8, v2);
  }

  type metadata accessor for AOPClassificationDemo.Request();
  return sub_1C9A93CE8();
}

uint64_t AOPClassificationDemo.Request.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1C9A93CC8();
  sub_1C9835DE0(v1, v12);
  v13 = sub_1C983E174();
  if (sub_1C97ABF20(v13, v14, v2) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1C9A93CE8();
    sub_1C983E0FC();
    sub_1C983DE88(v15, v16);
    sub_1C9A92398();
    (*(v4 + 8))(v8, v2);
  }

  type metadata accessor for AOPClassificationDemo.Request();
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

uint64_t AOPClassificationDemo.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C8B20);
  sub_1C97AE9C8();
  v26 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AOPClassificationDemo.Request();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C983619C();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v17 = v16;
  v18 = v26;
  sub_1C9A91558();
  v29 = 0;
  sub_1C983E0FC();
  sub_1C983DE88(v19, v20);
  v21 = v27;
  sub_1C9A93898();
  sub_1C9835A8C(v21, v17);
  v28 = 1;
  v22 = sub_1C9A938B8();
  (*(v18 + 8))(v11, v7);
  *(v17 + *(v12 + 20)) = v22 & 1;
  sub_1C9836A34(v17, v25);
  sub_1C97A592C(a1);
  return sub_1C983B42C(v17, type metadata accessor for AOPClassificationDemo.Request);
}

uint64_t sub_1C9836848()
{
  v1 = v0;
  v2 = sub_1C9A91558();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1C9A93CC8();
  sub_1C9835DE0(v1, v8);
  if (sub_1C97ABF20(v8, 1, v2) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1C9A93CE8();
    sub_1C983DE88(&qword_1EC3C6BA0, MEMORY[0x1E6968FB0]);
    sub_1C9A92398();
    (*(v3 + 8))(v5, v2);
  }

  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9836A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationDemo.Request();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9836AA4()
{
  v1 = *v0;

  sub_1C99DC144();
  v3[3] = sub_1C97A2CEC(&qword_1EC3C8C08);
  v3[4] = sub_1C983DE04();
  v3[0] = v1;
  sub_1C99DC184(v3);

  return sub_1C97A592C(v3);
}

uint64_t sub_1C9836B38()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C9836BC8;

  return sub_1C988FB68();
}

uint64_t sub_1C9836BC8(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 32) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = sub_1C97DA8BC();
    *(v5 + 40) = v10;
    *v10 = v6;
    v10[1] = sub_1C9836D40;

    return v11();
  }
}

uint64_t sub_1C9836D40(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 48) = v1;

  if (!v1)
  {
    *(v5 + 56) = a1;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9836E58()
{
  sub_1C97AA884();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9836EC0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9836F34()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C9836B38();
}

uint64_t sub_1C9836FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    sub_1C983E114();
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(v10, &qword_1EC3D33B0, 0x41uLL);
  sub_1C98137F8();
  v5 = swift_allocObject();
  sub_1C983E150(v5);
  sub_1C98137F8();
  v6 = swift_allocObject();
  sub_1C983E150(v6);
  v16 = &unk_1F492E308;
  v17 = &off_1F492E690;
  sub_1C98137F8();
  v7 = swift_allocObject();
  v14 = v6;
  v15 = v7;
  sub_1C983E150(v7);
  v11 = sub_1C983E0CC;
  v12 = v5;
  v13 = sub_1C983E0E4;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1C97A6264(__dst, v9);
  sub_1C98371B8(a1, v10, &v19);
  result = sub_1C97DA1E0(v10, &qword_1EC3C8B28);
  if (!v2)
  {
    *a2 = v19;
  }

  return result;
}

uint64_t sub_1C98371B8@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v147 = a2;
  v145 = a3;
  v124 = sub_1C97A2CEC(&qword_1EC3C7A10);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v103 - v4;
  v127 = sub_1C97A2CEC(&qword_1EC3C8C18);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v103 - v5;
  v117 = sub_1C97A2CEC(&qword_1EC3C8C20);
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v103 - v6;
  v116 = sub_1C97A2CEC(&qword_1EC3C8C28);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v103 - v7;
  v109 = sub_1C97A2CEC(&qword_1EC3C8C30);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v103 - v8;
  v118 = sub_1C97A2CEC(&qword_1EC3C8C38);
  v130 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v128 = &v103 - v9;
  v120 = sub_1C97A2CEC(&qword_1EC3C8C40);
  v131 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v103 - v10;
  v111 = sub_1C97A2CEC(&qword_1EC3C8C48);
  v110 = *(v111 - 8);
  v11 = MEMORY[0x1EEE9AC00](v111);
  v121 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v103 - v13;
  v14 = sub_1C97A2CEC(&unk_1EC3C9910);
  v142 = *(v14 - 8);
  v143 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v140 = (&v103 - v15);
  v144 = sub_1C9A91C28();
  v141 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1C97A2CEC(&qword_1EC3C8C50);
  v105 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v103 - v18;
  v133 = sub_1C97A2CEC(&qword_1EC3C8C58);
  v107 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v103 - v19;
  v20 = sub_1C97A2CEC(&qword_1EC3C8C60);
  v134 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103 - v21;
  v138 = sub_1C97A2CEC(&qword_1EC3C7A20);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v146 = &v103 - v23;
  v139 = sub_1C97A2CEC(&qword_1EC3C8C68);
  v137 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v103 - v24;
  v25 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v103 - v26;
  v28 = sub_1C9A91558();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v103 - v33;
  v154 = sub_1C9A91748();
  v150 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v149 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  sub_1C9835DE0(a1, v27);
  if (sub_1C97ABF20(v27, 1, v28) != 1)
  {
    v146 = a1;
    (*(v29 + 32))(v34, v27, v28);
    v40 = v148;
    v41 = sub_1C9880658();
    if (v40)
    {
      (*(v29 + 8))(v34, v28);
      v38 = v154;
      v39 = v149;
      return (*(v150 + 8))(v39, v38);
    }

    v57 = v41;
    v137 = v17;
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    v58 = sub_1C9880798(v57);
    type metadata accessor for E5RTExecutionStreamOperation();
    v138 = v34;
    sub_1C9A913F8();
    sub_1C9A91508();
    v59 = v32;
    v60 = *(v29 + 8);
    v139 = v28;
    v60(v59, v28);
    sub_1C98817E8();
    v62 = v61;
    v136 = v58;

    sub_1C9882AF4(v62);
    v63 = v138;
    v64 = v136;
    sub_1C9880DE8();
    v65 = *(v147 + 9);
    memcpy(__dst, v147, 0x41uLL);
    v66 = sub_1C983BB80(v64, v62, &unk_1F492A050, __dst, v65);
    v135 = v62;
    v147 = v60;
    v67 = v146[*(type metadata accessor for AOPClassificationDemo.Request() + 20)];
    v148 = 0;
    v134 = v66;
    if (v67)
    {
      v68 = v104;
      sub_1C983A848(12, 11, v66);
      sub_1C97AE67C(&qword_1EC3C8C98, &qword_1EC3C8C50);
      v69 = v106;
      v70 = sub_1C9A92008();
      v103 = sub_1C97A2CEC(&qword_1EC3C8CA0);
      swift_allocObject();
      v71 = sub_1C98E3778(v70);
      v146 = v71;
      (*(v105 + 8))(v68, v69);
      v151 = v71;
      v72 = v141;
      v73 = v137;
      (*(v141 + 104))(v137, *MEMORY[0x1E695BD20], v144);
      v74 = v140;
      *v140 = sub_1C983AAA4;
      *(v74 + 1) = 0;
      v76 = v142;
      v75 = v143;
      (*(v142 + 104))(v74, *MEMORY[0x1E695BD48], v143);
      sub_1C97AE67C(&qword_1EC3C8CA8, &qword_1EC3C8CA0);
      sub_1C9A92018();
      (*(v76 + 8))(v74, v75);
      (*(v72 + 8))(v73, v144);

      v146 = sub_1C97AE67C(&qword_1EC3C8CB0, &qword_1EC3C8C58);
      v77 = v128;
      sub_1C9A92048();
      v78 = sub_1C9A92838();
      *(v78 + 16) = 13;
      *(v78 + 32) = 0u;
      *(v78 + 48) = 0u;
      *(v78 + 64) = 0u;
      *(v78 + 80) = 0u;
      *(v78 + 96) = 0u;
      *(v78 + 112) = 0u;
      *(v78 + 128) = 0;
      v151 = v78;
      v79 = sub_1C97A2CEC(&qword_1EC3C8290);
      v143 = sub_1C97AE67C(&qword_1EC3C8CB8, &qword_1EC3C8C38);
      v144 = sub_1C97AE67C(&qword_1EC3C8CC0, &qword_1EC3C8290);
      v80 = v118;
      sub_1C9A92098();

      v142 = *(v130 + 8);
      v130 += 8;
      (v142)(v77, v80);
      v141 = sub_1C97AE67C(&qword_1EC3C8CC8, &qword_1EC3C8C40);
      v140 = sub_1C983CF40;
      v81 = v108;
      v82 = v120;
      v105 = v79;
      sub_1C9A91F68();
      v83 = v109;
      *(v81 + *(v109 + 60)) = 14;
      *(v81 + v83[16]) = 1;
      *(v81 + v83[17]) = v79;
      *(swift_allocObject() + 16) = 4;
      v137 = sub_1C97AE67C(&qword_1EC3C8CD0, &qword_1EC3C8C30);
      sub_1C9A91F68();

      sub_1C97DA1E0(v81, &qword_1EC3C8C30);
      v84 = *(v131 + 8);
      v131 += 8;
      v106 = v84;
      v85 = v119;
      (v84)(v119, v82);
      sub_1C9A92048();
      v86 = sub_1C9A92838();
      *(v86 + 16) = 27;
      bzero((v86 + 32), 0xD8uLL);
      v151 = v86;
      v87 = v118;
      v88 = v105;
      v89 = v128;
      sub_1C9A92098();

      (v142)(v89, v87);
      v90 = v120;
      sub_1C9A91F68();
      *(v81 + v83[15]) = 28;
      *(v81 + v83[16]) = 1;
      *(v81 + v83[17]) = v88;
      *(swift_allocObject() + 16) = 9;
      sub_1C9A91F68();

      sub_1C97DA1E0(v81, &qword_1EC3C8C30);
      (v106)(v85, v90);
      sub_1C97AE67C(&qword_1EC3C8CD8, &qword_1EC3C8C48);
      v91 = v113;
      v92 = v111;
      v93 = v129;
      sub_1C9A91F88();
      sub_1C97A2CEC(&qword_1EC3C82B8);
      sub_1C97AE67C(&qword_1EC3C8CE0, &qword_1EC3C8C20);
      v94 = v112;
      v95 = v117;
      sub_1C9A91F68();
      (*(v115 + 8))(v91, v95);
      sub_1C97AE67C(&qword_1EC3C8CE8, &qword_1EC3C8C28);
      v96 = v116;
      v97 = sub_1C9A91F28();
      (*(v114 + 8))(v94, v96);
      v98 = *(v110 + 8);
      v98(v121, v92);
      v98(v132, v92);
      (*(v107 + 8))(v93, v133);
    }

    else
    {
      v151 = v66;
      sub_1C97A2CEC(&qword_1EC3C84D0);
      sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0);
      v97 = sub_1C9A91F28();
    }

    v151 = v97;

    sub_1C97A2CEC(&qword_1EC3C84D0);
    sub_1C97BD318(0, &qword_1EC3CAE80);
    sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0);
    v99 = v122;
    sub_1C9A91F68();

    v151 = 0;
    v152 = 0xE000000000000000;
    sub_1C9A935B8();

    v151 = 0xD00000000000001FLL;
    v152 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v49 = v149;
    v50 = v154;
    v100 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v100);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v101 = v125;
    sub_1C993B2B0();

    (*(v123 + 8))(v99, v124);
    sub_1C97AE67C(&qword_1EC3C8C90, &qword_1EC3C8C18);
    v102 = v127;
    v55 = sub_1C9A91F28();

    (*(v126 + 8))(v101, v102);
    v147(v63, v139);
LABEL_7:
    result = (*(v150 + 8))(v49, v50);
    *v145 = v55;
    return result;
  }

  v36 = sub_1C97DA1E0(v27, &qword_1EC3C7FE0);
  v37 = v148;
  (*(v147 + 11))(v36);
  v148 = v37;
  if (!v37)
  {
    v42 = sub_1C9903378();

    v151 = v42;
    sub_1C97A2CEC(&qword_1EC3C8C70);
    sub_1C97BD318(0, &qword_1EC3CAE80);
    sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70);
    sub_1C9A91F68();

    v43 = v141;
    v44 = v144;
    (*(v141 + 104))(v17, *MEMORY[0x1E695BD20], v144);
    v45 = v17;
    v46 = v140;
    *v140 = sub_1C983ADB4;
    *(v46 + 1) = 0;
    v48 = v142;
    v47 = v143;
    (*(v142 + 104))(v46, *MEMORY[0x1E695BD48], v143);
    sub_1C97AE67C(&qword_1EC3C8C80, &qword_1EC3C8C60);
    sub_1C9A92018();
    (*(v48 + 8))(v46, v47);
    (*(v43 + 8))(v45, v44);
    (*(v134 + 1))(v22, v20);
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_1C9A935B8();

    v151 = 0xD00000000000001FLL;
    v152 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v49 = v149;
    v50 = v154;
    v51 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v51);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v52 = v135;
    v53 = v146;
    sub_1C993B3A4();

    (*(v136 + 8))(v53, v138);
    sub_1C97AE67C(&qword_1EC3C8C88, &qword_1EC3C8C68);
    v54 = v139;
    v55 = sub_1C9A91F28();
    (*(v137 + 8))(v52, v54);
    goto LABEL_7;
  }

  v38 = v154;
  v39 = v149;
  return (*(v150 + 8))(v39, v38);
}

uint64_t sub_1C9838D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v149 = a2;
  v147 = a3;
  v127 = sub_1C97A2CEC(&qword_1EC3C7A10);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v106 - v4;
  v130 = sub_1C97A2CEC(&qword_1EC3C8C18);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v106 - v5;
  v121 = sub_1C97A2CEC(&qword_1EC3C8C20);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v106 - v6;
  v120 = sub_1C97A2CEC(&qword_1EC3C8C28);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v106 - v7;
  v112 = sub_1C97A2CEC(&qword_1EC3C8C30);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v106 - v8;
  v122 = sub_1C97A2CEC(&qword_1EC3C8C38);
  v131 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v109 = &v106 - v9;
  v124 = sub_1C97A2CEC(&qword_1EC3C8C40);
  v132 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v106 - v10;
  v115 = sub_1C97A2CEC(&qword_1EC3C8C48);
  v114 = *(v115 - 8);
  v11 = MEMORY[0x1EEE9AC00](v115);
  v113 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v106 - v13;
  v14 = sub_1C97A2CEC(&unk_1EC3C9910);
  v145 = *(v14 - 8);
  v146 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v142 = (&v106 - v15);
  v16 = sub_1C9A91C28();
  v143 = *(v16 - 8);
  v144 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1C97A2CEC(&qword_1EC3C8C50);
  v107 = *(v108 - 1);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v106 - v19;
  v134 = sub_1C97A2CEC(&qword_1EC3C8C58);
  v110 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v106 - v20;
  v21 = sub_1C97A2CEC(&qword_1EC3C8C60);
  v136 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v106 - v22;
  v140 = sub_1C97A2CEC(&qword_1EC3C7A20);
  v138 = *(v140 - 1);
  MEMORY[0x1EEE9AC00](v140);
  v148 = &v106 - v24;
  v141 = sub_1C97A2CEC(&qword_1EC3C8C68);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v137 = &v106 - v25;
  v26 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v106 - v27;
  v29 = sub_1C9A91558();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v106 - v34;
  v155 = sub_1C9A91748();
  v152 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  sub_1C9835DE0(a1, v28);
  if (sub_1C97ABF20(v28, 1, v29) != 1)
  {
    v148 = a1;
    (*(v30 + 32))(v35, v28, v29);
    v41 = v150;
    v42 = sub_1C9880658();
    if (v41)
    {
      (*(v30 + 8))(v35, v29);
      v39 = v155;
      v40 = v151;
      return (*(v152 + 8))(v40, v39);
    }

    v58 = v42;
    v139 = v18;
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    v59 = sub_1C9880798(v58);
    type metadata accessor for E5RTExecutionStreamOperation();
    v141 = v35;
    sub_1C9A913F8();
    sub_1C9A91508();
    v60 = v33;
    v61 = v29;
    v140 = *(v30 + 8);
    v140(v60, v29);
    sub_1C98817E8();
    v63 = v62;
    v137 = (v30 + 8);
    v138 = v59;

    sub_1C9882AF4(v63);
    v64 = v141;
    v65 = v63;
    v66 = v138;
    sub_1C9880DE8();
    v67 = sub_1C983BFE0(v66, v65, &unk_1F492A050, *v149);
    v149 = v65;
    v68 = v148[*(type metadata accessor for AOPClassificationDemo.Request() + 20)];
    v150 = 0;
    if (v68)
    {
      v69 = v106;
      v136 = v67;
      sub_1C983A848(12, 11, v67);
      sub_1C97AE67C(&qword_1EC3C8C98, &qword_1EC3C8C50);
      v70 = v108;
      v71 = sub_1C9A92008();
      sub_1C97A2CEC(&qword_1EC3C8CA0);
      swift_allocObject();
      v72 = sub_1C98E3778(v71);
      v148 = v72;
      (*(v107 + 8))(v69, v70);
      v153 = v72;
      v74 = v143;
      v73 = v144;
      v75 = v139;
      (*(v143 + 104))(v139, *MEMORY[0x1E695BD20], v144);
      v76 = v142;
      *v142 = sub_1C983AAA4;
      *(v76 + 1) = 0;
      v78 = v145;
      v77 = v146;
      (*(v145 + 104))(v76, *MEMORY[0x1E695BD48], v146);
      sub_1C97AE67C(&qword_1EC3C8CA8, &qword_1EC3C8CA0);
      sub_1C9A92018();
      (*(v78 + 8))(v76, v77);
      (*(v74 + 8))(v75, v73);

      v148 = sub_1C97AE67C(&qword_1EC3C8CB0, &qword_1EC3C8C58);
      v79 = v109;
      sub_1C9A92048();
      v80 = sub_1C9A92838();
      *(v80 + 16) = 13;
      *(v80 + 32) = 0u;
      *(v80 + 48) = 0u;
      *(v80 + 64) = 0u;
      *(v80 + 80) = 0u;
      *(v80 + 96) = 0u;
      *(v80 + 112) = 0u;
      *(v80 + 128) = 0;
      v153 = v80;
      v81 = sub_1C97A2CEC(&qword_1EC3C8290);
      v145 = sub_1C97AE67C(&qword_1EC3C8CB8, &qword_1EC3C8C38);
      v146 = sub_1C97AE67C(&qword_1EC3C8CC0, &qword_1EC3C8290);
      v82 = v122;
      sub_1C9A92098();

      v144 = *(v131 + 8);
      v131 += 8;
      v83 = v79;
      v144(v79, v82);
      v143 = sub_1C97AE67C(&qword_1EC3C8CC8, &qword_1EC3C8C40);
      v142 = sub_1C983CF40;
      v84 = v111;
      v85 = v124;
      v107 = v81;
      sub_1C9A91F68();
      v86 = v112;
      *(v84 + *(v112 + 60)) = 14;
      *(v84 + v86[16]) = 1;
      *(v84 + v86[17]) = v81;
      *(swift_allocObject() + 16) = 4;
      v139 = sub_1C97AE67C(&qword_1EC3C8CD0, &qword_1EC3C8C30);
      sub_1C9A91F68();

      sub_1C97DA1E0(v84, &qword_1EC3C8C30);
      v87 = *(v132 + 8);
      v132 += 8;
      v108 = v87;
      v88 = v123;
      (v87)(v123, v85);
      v89 = v83;
      sub_1C9A92048();
      v90 = sub_1C9A92838();
      *(v90 + 16) = 27;
      bzero((v90 + 32), 0xD8uLL);
      v153 = v90;
      v91 = v122;
      v92 = v107;
      sub_1C9A92098();
      v64 = v141;

      v144(v89, v91);
      v93 = v124;
      sub_1C9A91F68();
      *(v84 + v86[15]) = 28;
      *(v84 + v86[16]) = 1;
      *(v84 + v86[17]) = v92;
      *(swift_allocObject() + 16) = 9;
      v94 = v113;
      sub_1C9A91F68();

      sub_1C97DA1E0(v84, &qword_1EC3C8C30);
      (v108)(v88, v93);
      sub_1C97AE67C(&qword_1EC3C8CD8, &qword_1EC3C8C48);
      v95 = v117;
      v96 = v115;
      sub_1C9A91F88();
      sub_1C97A2CEC(&qword_1EC3C82B8);
      sub_1C97AE67C(&qword_1EC3C8CE0, &qword_1EC3C8C20);
      v97 = v116;
      v98 = v121;
      sub_1C9A91F68();
      (*(v119 + 8))(v95, v98);
      sub_1C97AE67C(&qword_1EC3C8CE8, &qword_1EC3C8C28);
      v99 = v120;
      v100 = sub_1C9A91F28();
      (*(v118 + 8))(v97, v99);
      v101 = *(v114 + 8);
      v101(v94, v96);
      v101(v133, v96);
      (*(v110 + 8))(v135, v134);
    }

    else
    {
      v153 = v67;
      sub_1C97A2CEC(&qword_1EC3C84D0);
      sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0);
      v100 = sub_1C9A91F28();
    }

    v153 = v100;

    sub_1C97A2CEC(&qword_1EC3C84D0);
    v148 = v100;
    sub_1C97BD318(0, &qword_1EC3CAE80);
    sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0);
    v102 = v125;
    sub_1C9A91F68();

    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1C9A935B8();

    v153 = 0xD00000000000001FLL;
    v154 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v50 = v151;
    v51 = v155;
    v103 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v103);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v104 = v128;
    sub_1C993B2B0();

    (*(v126 + 8))(v102, v127);
    sub_1C97AE67C(&qword_1EC3C8C90, &qword_1EC3C8C18);
    v105 = v130;
    v56 = sub_1C9A91F28();

    (*(v129 + 8))(v104, v105);
    v140(v64, v61);
LABEL_7:
    result = (*(v152 + 8))(v50, v51);
    *v147 = v56;
    return result;
  }

  v37 = sub_1C97DA1E0(v28, &qword_1EC3C7FE0);
  v38 = v150;
  (*(v149 + 16))(v37);
  v150 = v38;
  if (!v38)
  {
    v43 = sub_1C9903378();

    v153 = v43;
    sub_1C97A2CEC(&qword_1EC3C8C70);
    sub_1C97BD318(0, &qword_1EC3CAE80);
    sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70);
    sub_1C9A91F68();

    v45 = v143;
    v44 = v144;
    (*(v143 + 104))(v18, *MEMORY[0x1E695BD20], v144);
    v46 = v18;
    v47 = v142;
    *v142 = sub_1C983ADB4;
    *(v47 + 1) = 0;
    v49 = v145;
    v48 = v146;
    (*(v145 + 104))(v47, *MEMORY[0x1E695BD48], v146);
    sub_1C97AE67C(&qword_1EC3C8C80, &qword_1EC3C8C60);
    sub_1C9A92018();
    (*(v49 + 8))(v47, v48);
    (*(v45 + 8))(v46, v44);
    (*(v136 + 1))(v23, v21);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1C9A935B8();

    v153 = 0xD00000000000001FLL;
    v154 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v50 = v151;
    v51 = v155;
    v52 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v52);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v53 = v137;
    v54 = v148;
    sub_1C993B3A4();

    (*(v138 + 8))(v54, v140);
    sub_1C97AE67C(&qword_1EC3C8C88, &qword_1EC3C8C68);
    v55 = v141;
    v56 = sub_1C9A91F28();
    (*(v139 + 8))(v53, v55);
    goto LABEL_7;
  }

  v39 = v155;
  v40 = v151;
  return (*(v152 + 8))(v40, v39);
}

uint64_t sub_1C983A7F8()
{
  sub_1C983C524();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_1C983A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8CF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v14[1] = a3;
  sub_1C97A2CEC(&qword_1EC3C84D0);
  sub_1C97A2CEC(&qword_1EC3C8CF8);
  sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0);
  sub_1C9A91F68();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = sub_1C983CF98;
  v9[4] = 0;
  v10 = swift_allocObject();
  v10[2] = sub_1C983DED8;
  v10[3] = v9;
  v10[4] = a1;
  v11 = &v8[*(v6 + 52)];
  *v11 = sub_1C9911F58;
  *(v11 + 1) = 0;
  v12 = &v8[*(v6 + 56)];
  *v12 = sub_1C983DEE4;
  *(v12 + 1) = v10;
  sub_1C97A2CEC(&qword_1EC3C82B8);
  sub_1C97AE67C(&qword_1EC3C8D00, &qword_1EC3C8CF0);
  sub_1C9A91F38();
  return sub_1C97DA1E0(v8, &qword_1EC3C8CF0);
}

uint64_t sub_1C983AAA4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C983C524();
  result = swift_allocError();
  *a1 = result;
  *v3 = 3;
  return result;
}

unint64_t sub_1C983AAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (result = sub_1C9A32230(0x636973756DLL, 0xE500000000000000), (v5 & 1) != 0))
  {
    *a2 = *(*(v3 + 56) + 8 * result);
  }

  else
  {
    sub_1C983C524();
    swift_allocError();
    *v6 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C983AB80@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;

  sub_1C97EE3D8(0x636973756DLL, 0xE500000000000000);
  v5 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EEC24(0x68735F636973756DLL, 0xEB0000000074726FLL, v3);
  *a2 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  result = sub_1C97EEC24(0x6F6C5F636973756DLL, 0xEA0000000000676ELL, v4);
  *a2 = v5;
  return result;
}

id sub_1C983AC5C@<X0>(void *a1@<X8>)
{
  sub_1C97BD318(0, &qword_1EC3CAE80);
  sub_1C9878818();
  result = sub_1C983ACB8();
  *a1 = result;
  return result;
}

id sub_1C983ACB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v1 = sub_1C9A922F8();

  v2 = [v0 initWithClassificationDictionary_];

  return v2;
}

id sub_1C983AD50@<X0>(void *a1@<X8>)
{
  sub_1C97BD318(0, &qword_1EC3CAE80);
  type metadata accessor for AOPClassificationResult();
  sub_1C9878818();
  result = sub_1C983ACB8();
  *a1 = result;
  return result;
}

uint64_t sub_1C983ADB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C983DEF0();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t run(_:)()
{
  sub_1C97AA884();
  v0[45] = v1;
  v0[46] = v2;
  v3 = type metadata accessor for RemoteRequest();
  v0[47] = v3;
  sub_1C97DACE4(v3);
  v0[48] = swift_task_alloc();
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v4);
  v0[49] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1C97AA884();
  v0[10] = v1;
  v0[11] = type metadata accessor for RemoteRequest();
  v0[12] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  sub_1C97AA884();
  v0[7] = v1;
  v2 = type metadata accessor for AccessibilitySoundActions.Session();
  sub_1C97DACE4(v2);
  v0[8] = swift_task_alloc();
  v3 = type metadata accessor for RemoteRequest();
  v0[9] = v3;
  sub_1C97DACE4(v3);
  v0[10] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  sub_1C97AA884();
  v0[61] = v1;
  v2 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DACE4(v2);
  v0[62] = swift_task_alloc();
  v3 = type metadata accessor for RemoteRequest();
  v0[63] = v3;
  sub_1C97DACE4(v3);
  v0[64] = swift_task_alloc();
  sub_1C997138C();
  memcpy(v4, v5, v6);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C983AEB0()
{
  v21 = v0;
  v1 = *(v0 + 392);
  sub_1C9835DE0(*(v0 + 368), v1);
  sub_1C9A91558();
  v2 = sub_1C983E174();
  v5 = sub_1C97ABF20(v2, v3, v4);
  sub_1C97DA1E0(v1, &qword_1EC3C7FE0);
  if (v5 == 1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    *(v0 + 328) = &unk_1F492E330;
    *(v0 + 336) = &off_1F492E6A0;
    sub_1C97A5A8C((v0 + 304), &unk_1F492E330);
    sub_1C9836A34(v7, v6);
    swift_storeEnumTagMultiPayload();
    v8 = sub_1C97DA8BC();
    *(v0 + 400) = v8;
    *v8 = v0;
    v8[1] = sub_1C983B240;
    v9 = *(v0 + 384);

    return v19(v0 + 344, v9);
  }

  else
  {
    if (qword_1EC3C5D88 != -1)
    {
      swift_once();
    }

    v11 = qword_1EC3D3178;
    if (byte_1EC3D31A0)
    {
      *(v0 + 352) = qword_1EC3D3178;
      v12 = v11;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();

      sub_1C97DA91C();
    }

    else
    {
      v13 = qword_1EC3C5E08;

      if (v13 != -1)
      {
        sub_1C983E114();
        swift_once();
      }

      v14 = *(v0 + 368);
      memcpy((v0 + 160), &qword_1EC3D33B0, 0x41uLL);
      memcpy((v0 + 16), &qword_1EC3D33B0, 0x41uLL);
      sub_1C98137F8();
      v15 = swift_allocObject();
      sub_1C983E164(v15);
      sub_1C98137F8();
      v16 = swift_allocObject();
      sub_1C983E164(v16);
      *(v0 + 144) = &unk_1F492E308;
      *(v0 + 152) = &off_1F492E690;
      sub_1C98137F8();
      v17 = swift_allocObject();
      *(v0 + 112) = v16;
      *(v0 + 120) = v17;
      sub_1C983E164(v17);
      *(v0 + 88) = sub_1C983C4E4;
      *(v0 + 96) = v15;
      *(v0 + 104) = sub_1C983C500;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1C97A6264(v0 + 160, v0 + 232);
      sub_1C98371B8(v14, (v0 + 16), &v20);
      sub_1C97DA1E0(v0 + 16, &qword_1EC3C8B28);
      **(v0 + 360) = v20;

      sub_1C97DA91C();
    }

    return v18();
  }
}

uint64_t sub_1C983B240()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 408) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C983B340()
{
  sub_1C97AA884();
  sub_1C983E128();
  v1 = *(v0 + 344);
  sub_1C97A592C(v0 + 304);
  **(v0 + 360) = v1;

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C983B3BC()
{
  sub_1C97AA884();
  sub_1C983E128();
  sub_1C97A592C(v0 + 304);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C983B42C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t run(_:file:)()
{
  sub_1C97AA884();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v4);
  v0[14] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C983B518()
{
  v17 = v0;
  v1 = v0[14];
  sub_1C9835DE0(v0[12], v1);
  sub_1C9A91558();
  v2 = sub_1C983E174();
  v5 = sub_1C97ABF20(v2, v3, v4);
  sub_1C97DA1E0(v1, &qword_1EC3C7FE0);
  if (v5 == 1)
  {
    sub_1C983C524();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();

    sub_1C97DA91C();
  }

  else
  {
    sub_1C983B718(v0[13], v15);
    v7 = v0[12];
    v8 = swift_allocObject();
    v9 = v15[1];
    v8[1] = v15[0];
    v8[2] = v9;
    v10 = v15[3];
    v8[3] = v15[2];
    v8[4] = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C983D1C8;
    *(v11 + 24) = v8;
    v0[9] = &unk_1F4937AE0;
    v0[10] = &off_1F4937AF0;
    v0[2] = sub_1C983D1E4;
    v0[3] = v11;
    v0[4] = sub_1C983A7F8;
    v0[5] = 0;
    sub_1C9838D30(v7, (v0 + 2), &v16);
    v14 = v0[11];
    sub_1C97DA1E0((v0 + 2), &qword_1EC3C8B38);
    *v14 = v16;

    sub_1C97DA91C();
  }

  return v12();
}

id sub_1C983B718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v38 = sub_1C97A2CEC(&qword_1EC3C8D10);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v34 - v4;
  sub_1C97A2CEC(&qword_1EC3C8D18);
  sub_1C97AE9C8();
  v39 = v6;
  v40 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v8;
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(v11 + 16);
  v19(&v34 - v17, a1, v9);
  v20 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v21 = v44;
  result = sub_1C99CA154(v18, 1, 0);
  if (!v21)
  {
    v23 = result;
    v44 = [result processingFormat];

    v19(v16, a1, v9);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v11 + 32))(v26 + v24, v16, v9);
    v27 = v44;
    *(v26 + v25) = v44;
    v41 = sub_1C9812A50;
    v42 = v26;
    v43 = 2048;
    sub_1C983DF44();
    v28 = v27;
    v29 = v37;
    sub_1C9A92658();

    v30 = v38;
    v31 = (v29 + *(v38 + 52));
    *v31 = sub_1C9904AE0;
    v31[1] = 0;
    v32 = (v29 + *(v30 + 56));
    *v32 = sub_1C99D6968;
    v32[1] = 0;
    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C97AE67C(&qword_1EC3C8D28, &qword_1EC3C8D10);
    v33 = v36;
    sub_1C9A920E8();
    sub_1C97DA1E0(v29, &qword_1EC3C8D10);
    sub_1C999D290(v28, v35);

    return (*(v39 + 8))(v33, v40);
  }

  return result;
}

uint64_t sub_1C983BAD4(void *__src, uint64_t (*a2)(void *))
{
  memcpy(__dst, __src, 0x41uLL);
  *&__dst[9] = xmmword_1C9AA50C0;
  sub_1C97E2DB0(__src, v6);
  v4 = a2(__dst);
  memcpy(v6, __dst, sizeof(v6));
  sub_1C97DA1E0(v6, &unk_1EC3C9940);
  return v4;
}

char *sub_1C983BB80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *))
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v29 = sub_1C97A2CEC(&unk_1EC3C9910);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v24 - v8;
  v36 = sub_1C9A91C28();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C97A2CEC(&qword_1EC3C8240);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v30 = sub_1C97A2CEC(&qword_1EC3C99E0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v17 = v24 - v16;
  v18 = sub_1C983BAD4(a4, a5);
  if (!v5)
  {
    v26 = v18;
    v25 = sub_1C98BF080();
    v37 = v25;
    v19 = v10;
    (*(v10 + 104))(v12, *MEMORY[0x1E695BD28], v36);
    v20 = v27;
    v21 = v29;
    (*(v27 + 104))(v9, *MEMORY[0x1E695BD40], v29);
    v24[1] = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v20 + 8))(v9, v21);
    (*(v19 + 8))(v12, v36);

    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v22 = v32;
    sub_1C9A91F68();
    (*(v31 + 8))(v15, v22);
    v9 = sub_1C9873E78(v33, v34, v35);
    (*(v28 + 8))(v17, v30);
  }

  return v9;
}

char *sub_1C983BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v33 = a3;
  v39 = a2;
  v37 = a1;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1C9A91C28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C97A2CEC(&qword_1EC3C8240);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v34 = sub_1C97A2CEC(&qword_1EC3C99E0);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v17 = &v26 - v16;
  v38 = xmmword_1C9AA50C0;
  v18 = a4(&v38);
  if (!v4)
  {
    v29 = v18;
    v28 = sub_1C98BF080();
    *&v38 = v28;
    v19 = *MEMORY[0x1E695BD28];
    v20 = v10;
    v21 = *(v10 + 104);
    v27 = v9;
    v21(v12, v19, v9);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v8, *MEMORY[0x1E695BD40], v31);
    v26 = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v23 + 8))(v8, v22);
    (*(v20 + 8))(v12, v27);

    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v24 = v36;
    sub_1C9A91F68();
    (*(v35 + 8))(v15, v24);
    v8 = sub_1C9873E78(v37, v39, v33);
    (*(v32 + 8))(v17, v34);
  }

  return v8;
}

unint64_t sub_1C983C524()
{
  result = qword_1EC3C8B30;
  if (!qword_1EC3C8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8B30);
  }

  return result;
}

uint64_t sub_1C983C578(uint64_t a1, unint64_t a2)
{
  v4 = a1;

  sub_1C983C608(&v4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a2)
  {
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C983C608(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254D4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C983C674(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C983C674(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C983C7C4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C983C768(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C983C768(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C983C7C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C97E510C();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C983CDA0((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C983CC74(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1C983CC74(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C983CDA0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C983CDA0(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C978D33C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C978D33C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1C983CF14@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C983C578(*a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1C983CF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C983CF98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C983C4AC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C983CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C4DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C983CFFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1C97D92B0(*a1, a1[1], a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

void *sub_1C983D040@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, void *, void, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1C97D90FC(*a1, a1[1], a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

uint64_t sub_1C983D080@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E46A4(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C983D0B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9835A04(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C983D0E8@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C97E8438(*a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C983D118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9835A2C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C983D164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C448();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C983D330()
{
  sub_1C983D3A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C983D3A4()
{
  if (!qword_1EC3C8B58[0])
  {
    sub_1C9A91558();
    v0 = sub_1C9A93258();
    if (!v1)
    {
      atomic_store(v0, qword_1EC3C8B58);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for AOPClassificationDemo.Session(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for AOPClassificationDemo.Session(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for AOPClassificationDemo.Session(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AOPClassificationDemo.Session(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AOPClassificationDemo.Session(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C983D614()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v3 <= 0x3F)
      {
        result = sub_1C983DB6C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C983D6D0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C97ABF20(result, v6, v5);
  }

  v15 = ((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C983D8A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = v18 + 1;
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
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C97ACC50(a1, a2, v8, v7);
        }

        else
        {
          v24 = (&a1[v16] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        break;
    }
  }

  else
  {
    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C983DB24()
{
  result = qword_1EC3C49F0;
  if (!qword_1EC3C49F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC3C49F0);
  }

  return result;
}

unint64_t sub_1C983DB6C()
{
  result = qword_1EC3C8BE0;
  if (!qword_1EC3C8BE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC3C8BE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C983DCA8()
{
  result = qword_1EC3C8BE8;
  if (!qword_1EC3C8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BE8);
  }

  return result;
}

unint64_t sub_1C983DD00()
{
  result = qword_1EC3C8BF0;
  if (!qword_1EC3C8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BF0);
  }

  return result;
}

unint64_t sub_1C983DD58()
{
  result = qword_1EC3C8BF8;
  if (!qword_1EC3C8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BF8);
  }

  return result;
}

unint64_t sub_1C983DDB0()
{
  result = qword_1EC3C8C00;
  if (!qword_1EC3C8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8C00);
  }

  return result;
}

unint64_t sub_1C983DE04()
{
  result = qword_1EC3C8C10;
  if (!qword_1EC3C8C10)
  {
    sub_1C97AA4F0(&qword_1EC3C8C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8C10);
  }

  return result;
}

uint64_t sub_1C983DE88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C983DEF0()
{
  result = qword_1EC3C8D08;
  if (!qword_1EC3C8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8D08);
  }

  return result;
}

unint64_t sub_1C983DF44()
{
  result = qword_1EC3C8D20;
  if (!qword_1EC3C8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8D20);
  }

  return result;
}

uint64_t sub_1C983E06C()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C983E128()
{
  v2 = *(v0 + 384);

  return sub_1C983B42C(v2, type metadata accessor for RemoteRequest);
}

__n128 sub_1C983E150(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_1C983E164(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = v5;
  *(result + 40) = v3;
  *(result + 48) = v1;
  return result;
}

uint64_t sub_1C983E2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  swift_getAssociatedTypeWitness();
  sub_1C9A92458();
  sub_1C9A92458();
  swift_dynamicCast();
  return a3();
}

uint64_t sub_1C983E3CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C983E408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C983E448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C983E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return sub_1C97DA66C();
}

uint64_t sub_1C983E4C0()
{
  sub_1C97AA95C();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1C983E570;
  v4 = swift_continuation_init();
  sub_1C983E69C(v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C983E570()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 80);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

void sub_1C983E69C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6999498]) init];
  sub_1C9840944(a2, a3, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v11[4] = sub_1C9840ABC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C983E8AC;
  v11[3] = &unk_1F4933BF0;
  v10 = _Block_copy(v11);

  [v8 setCompletionHandler_];
  _Block_release(v10);
  [a4 performQuery_];
}

uint64_t sub_1C983E7C4(void *a1, void *a2, uint64_t a3)
{
  result = sub_1C9A92A48();
  if ((result & 1) == 0)
  {
    if (a1)
    {
      **(*(a3 + 64) + 40) = a1;
      v7 = a1;

      return swift_continuation_throwingResume();
    }

    else if (a2)
    {
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_allocError();
      *v8 = a2;
      v9 = a2;

      return swift_continuation_throwingResumeWithError();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C983E8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C983E94C()
{
  sub_1C97AA95C();
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1C983EA90;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_1C9840A70;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C983ECA8;
  v1[13] = &unk_1F4933BA0;
  v9 = _Block_copy(v4);

  [v6 getIdentitiesWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C983EA90()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 128);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_1C983EBBC(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C9A92A48();
  if ((result & 1) == 0)
  {
    if (a1)
    {
      **(*(a3 + 64) + 40) = a1;

      return swift_continuation_throwingResume();
    }

    else if (a2)
    {
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_allocError();
      *v7 = a2;
      v8 = a2;

      return swift_continuation_throwingResumeWithError();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C983ECA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C9840A78();
    v4 = sub_1C9A92798();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1C983ED3C()
{
  sub_1C97AA884();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1C983EDD0;

  return sub_1C983E938(v2);
}

uint64_t sub_1C983EDD0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C983EEF0, 0, 0);
  }
}

void sub_1C983EEF0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1C97BDEE0(v1);
  for (i = 0; v3 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA912B0](i, v0[5]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v1 + 32 + 8 * i);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = sub_1C9A21160(v5);
    if (!v8)
    {
LABEL_13:

      continue;
    }

    if (v7 == v0[2] && v8 == v2)
    {
    }

    else
    {
      v10 = sub_1C9A93B18();

      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1C9A93678();
    sub_1C9A936A8();
    sub_1C9A936B8();
    sub_1C9A93688();
  }

  sub_1C9840CC0();

  v11();
}

uint64_t sub_1C983F074()
{
  sub_1C97AA95C();
  v0[3] = v1;
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1C983F120;

  return sub_1C983ED3C();
}

uint64_t sub_1C983F120()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C983F240, 0, 0);
  }
}

uint64_t sub_1C983F240()
{
  v2 = sub_1C97BDEE0(v1[6]);
  if (v2 == 1)
  {
    if (sub_1C97BDEE0(v1[6]))
    {
      v3 = v1[6];
      v4 = v3 & 0xC000000000000001;
      sub_1C97C4F68(0, (v3 & 0xC000000000000001) == 0, v3);
      v0 = v1[6];
      if (!v4)
      {
        v5 = *(v0 + 32);
LABEL_5:

        sub_1C9840CC0();

        return v6(v5);
      }
    }

    else
    {
      __break(1u);
    }

    v5 = MEMORY[0x1CCA912B0](0, v0);
    goto LABEL_5;
  }

  v8 = v2;
  v10 = v1[3];
  v9 = v1[4];

  type metadata accessor for SNError();
  sub_1C9A935B8();

  MEMORY[0x1CCA90230](v10, v9);
  MEMORY[0x1CCA90230](0x20646E756F66203BLL, 0xE800000000000000);
  v1[2] = v8;
  v11 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v11);

  sub_1C9840C80(0xD00000000000001FLL, "com.apple.SoundAnalysis");

  swift_willThrow();
  sub_1C97DA91C();

  return v12();
}

uint64_t sub_1C983F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C983F43C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1C983F60C;
  v7 = swift_continuation_init();
  v8 = sub_1C9A92478();
  v9 = sub_1C9A922F8();
  v10 = sub_1C9A92478();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v1[14] = sub_1C9840A50;
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C983F818;
  v1[13] = &unk_1F4933B50;
  v12 = _Block_copy(v4);

  [v6 sendRequestID:v8 request:v9 destinationID:v10 options:0 responseHandler:v12];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C983F60C()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 128);
    v8 = *(v1 + 136);
    v9 = *(v3 + 8);

    return v9(v7, v8);
  }
}

uint64_t sub_1C983F738(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (result)
  {
    if (a2)
    {
      v4 = *(*(a4 + 64) + 40);
      *v4 = result;
      v4[1] = a2;

      return swift_continuation_throwingResume();
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  sub_1C97A2CEC(&unk_1EC3CA040);
  swift_allocError();
  *v6 = a3;
  v7 = a3;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C983F818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1C9A92328();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_1C9A92328();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

id sub_1C983F8FC(void *a1)
{
  v2 = sub_1C984099C(a1, &selRef_identifier);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_1C9A2116C(a1);
  if (!v7)
  {
LABEL_12:

LABEL_13:
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000028, 0x80000001C9AD6440);
    return swift_willThrow();
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_1C984099C(a1, &selRef_model);
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = v11;
  v22 = v10;
  v13 = sub_1C984099C(a1, &selRef_name);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E753CLL;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE90000000000003ELL;
  }

  v17 = type metadata accessor for SNFileServerInfo();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___SNFileServerInfo_impl];
  *v19 = v4;
  *(v19 + 1) = v5;
  *(v19 + 2) = v8;
  *(v19 + 3) = v9;
  *(v19 + 4) = v22;
  *(v19 + 5) = v12;
  *(v19 + 6) = v15;
  *(v19 + 7) = v16;
  v21.receiver = v18;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_1C983FA80(id a1, void *a2)
{
  v4 = sub_1C983F8FC(a2);
  if (!v2)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 48];
    v8 = *&v4[OBJC_IVAR___SNFileServerInfo_impl];
    v7 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 16];
    v21 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 32];
    v22 = v6;
    v19 = v8;
    v20 = v7;
    type metadata accessor for SNFileSharingUtils();
    v9 = sub_1C983FB94(a1) & 1;
    v10 = type metadata accessor for SNFileServerDiscoveryResult();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR___SNFileServerDiscoveryResult_impl];
    v14 = v21;
    v13 = v22;
    v15 = v20;
    *v12 = v19;
    *(v12 + 1) = v15;
    *(v12 + 2) = v14;
    *(v12 + 3) = v13;
    v12[64] = v9;
    sub_1C9840AC4(&v19, v18);
    v17.receiver = v11;
    v17.super_class = v10;
    a1 = objc_msgSendSuper2(&v17, sel_init);
  }

  return a1;
}

unint64_t sub_1C983FB94(unint64_t result)
{
  if (result >= 2)
  {
    sub_1C98409FC();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C983FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C983FC0C()
{
  sub_1C97AA884();
  v1 = sub_1C9A92348();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1C983FCE8;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];

  return sub_1C983F420(0xD000000000000012, 0x80000001C9AD64A0, v1, v5, v3, v4);
}

uint64_t sub_1C983FCE8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  *(v2 + 200) = v1;
  *(v2 + 208) = v0;

  if (v0)
  {
    v3 = sub_1C983FF30;
  }

  else
  {

    v3 = sub_1C983FE14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C983FE14()
{
  sub_1C97AA95C();
  *(v0 + 120) = 0x6E6F6973726576;
  v1 = *(v0 + 200);
  *(v0 + 128) = 0xE700000000000000;
  sub_1C9A93548();
  sub_1C98784BC(v1, (v0 + 88));
  if (!*(v0 + 112))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C97C90D4(v0 + 16);
  sub_1C97A2D34((v0 + 88), (v0 + 56));
  swift_dynamicCast();
  sub_1C983FF8C(*(v0 + 136), *(v0 + 144));
  if (v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DA91C();

  v3();
}

uint64_t sub_1C983FF30()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C983FF8C(uint64_t a1, uint64_t a2)
{
  sub_1C98407E0(a1, a2);

  return 0;
}

uint64_t sub_1C983FFEC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = v3;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C9840008()
{
  sub_1C97AA95C();
  result = sub_1C984099C(*(v0 + 32), &selRef_identifier);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_1C98400CC;
    v6 = *(v0 + 40);

    return sub_1C983FBF4(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98400CC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C9840438;
  }

  else
  {

    v3 = sub_1C98401E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C98401E4()
{
  v19 = v0;
  if (*(v0 + 80) >= *(v0 + 48))
  {
    v2 = *(v0 + 88);
    sub_1C983FA80(0, *(v0 + 32));
    v1 = v2;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for SNError();
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1C9A935B8();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1CCA90230](0xD000000000000024, 0x80000001C9AD6470);
    sub_1C9A92AF8();
    v1 = sub_1C9840C80(*(v0 + 16), "com.apple.SoundAnalysis");

    swift_willThrow();
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v3 = *(v0 + 32);
  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);
  v5 = v3;
  v6 = sub_1C9A91B38();
  LOBYTE(v3) = sub_1C9A92F88();

  if (os_log_type_enabled(v6, v3))
  {
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    v10 = sub_1C984099C(v7, &selRef_identifier);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
    }

    v13 = sub_1C9849140(v10, v12, v18);

    *(v8 + 4) = v13;
    sub_1C9840CCC(&dword_1C9788000, v14, v15, "Failed to discover file server at %s; this may not be an issue, since not all devices are expected to host file servers compatible with this client");
    sub_1C97A592C(v9);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

LABEL_12:
  sub_1C9840CC0();

  return v16();
}

uint64_t sub_1C9840438()
{
  v18 = v0;

  v1 = *(v0 + 88);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v2 = *(v0 + 32);
  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v2;
  v5 = sub_1C9A91B38();
  LOBYTE(v2) = sub_1C9A92F88();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_1C984099C(v6, &selRef_identifier);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0x6E776F6E6B6E753CLL;
      v11 = 0xE90000000000003ELL;
    }

    v12 = sub_1C9849140(v9, v11, &v17);

    *(v7 + 4) = v12;
    sub_1C9840CCC(&dword_1C9788000, v13, v14, "Failed to discover file server at %s; this may not be an issue, since not all devices are expected to host file servers compatible with this client");
    sub_1C97A592C(v8);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  sub_1C9840CC0();

  return v15(0);
}

uint64_t sub_1C98405D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = sub_1C984099C(a1, &selRef_filename);
  if (v12)
  {
    v13 = v12;
    v23 = v11;
    v14 = [a1 itemURL];
    if (v14)
    {
      v15 = v14;
      sub_1C9A914F8();

      v16 = *(v5 + 32);
      v16(v10, v8, v4);
      v17 = [a1 fileSize];
      v18 = type metadata accessor for FileCopyingResult(0);
      result = (v16)(a2 + *(v18 + 24), v10, v4);
      *a2 = v23;
      a2[1] = v13;
      a2[2] = v17;
      return result;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  sub_1C98409FC();
  swift_allocError();
  *v21 = v20;
  return swift_willThrow();
}

BOOL sub_1C98407E0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C9A935A8();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

_BYTE *sub_1C98408D8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void sub_1C9840944(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();
  [a3 setPath_];
}

uint64_t sub_1C984099C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C9A924A8();

  return v4;
}

unint64_t sub_1C98409FC()
{
  result = qword_1EC3C8DE0;
  if (!qword_1EC3C8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8DE0);
  }

  return result;
}

uint64_t sub_1C9840A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C9840A78()
{
  result = qword_1EC3C8DE8;
  if (!qword_1EC3C8DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C8DE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNFileSharingUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9840C1C()
{
  result = qword_1EC3C8DF0;
  if (!qword_1EC3C8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8DF0);
  }

  return result;
}

id sub_1C9840C80@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (a2 - 32) | 0x8000000000000000, 2, 0, a1, v2);
}

void sub_1C9840CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1C9840CEC()
{

  JUMPOUT(0x1CCA93280);
}

double SNDirectionOfArrivalResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNDirectionOfArrivalResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C9840E28@<D0>(_OWORD *a1@<X8>)
{
  SNDirectionOfArrivalResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNDirectionOfArrivalResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNDirectionOfArrivalResult.timeRange.getter((v3 + 1));
  return sub_1C9840ED0;
}

void sub_1C9840ED0(void **a1)
{
  v1 = *a1;
  SNDirectionOfArrivalResult.timeRange.setter(*a1 + 8);

  free(v1);
}

float (*SNDirectionOfArrivalResult.azimuth.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return sub_1C979B5E4;
}

float (*SNDirectionOfArrivalResult.elevation.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 52);
  return sub_1C9841060;
}

float sub_1C9841060(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 52) = result;
  return result;
}

uint64_t SNDirectionOfArrivalResult.spatialSpectrum.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 56);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v5;
  }

  return result;
}

void SNDirectionOfArrivalResult.spatialSpectrum.setter(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_1C9A934C8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B7EE8();
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = v12;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA912B0](v5, a1);
    }

    else
    {
      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    [v7 doubleValue];
    v10 = v9;

    v11 = *(v12 + 16);
    if (v11 >= *(v12 + 24) >> 1)
    {
      sub_1C97B7EE8();
    }

    ++v5;
    *(v12 + 16) = v11 + 1;
    *(v12 + 8 * v11 + 32) = v10;
  }

  while (v4 != v5);

LABEL_14:
  *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 56) = v6;
}

void (*SNDirectionOfArrivalResult.spatialSpectrum.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = SNDirectionOfArrivalResult.spatialSpectrum.getter();
  return sub_1C9841428;
}

void sub_1C9841428(unint64_t *a1, char a2)
{
  if (a2)
  {

    SNDirectionOfArrivalResult.spatialSpectrum.setter(v2);
  }

  else
  {
    SNDirectionOfArrivalResult.spatialSpectrum.setter(*a1);
  }
}

id sub_1C9841480()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 6) = 0;
  *(v4 + 7) = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SNDirectionOfArrivalResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A6844(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDirectionOfArrivalResult.hash.getter()
{
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  sub_1C9A93CC8();
  sub_1C9804E84();
  return sub_1C9A93D18();
}

uint64_t SNDirectionOfArrivalResult.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v4);
  if (v5)
  {
    sub_1C97A2D34(&v4, v3);
    v1 = sub_1C9859AAC();
    sub_1C97A592C(v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id SNDirectionOfArrivalResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1868();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C9841DA0();
  return v7;
}

Swift::Void __swiftcall SNDirectionOfArrivalResult.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  sub_1C97A6844(v3, v2);
  sub_1C979F3CC(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C9841CB4(v3);
}

uint64_t SNDirectionOfArrivalResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v10 = v11[0];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v9, sel_description);
  sub_1C9A924A8();

  sub_1C98285A8();

  MEMORY[0x1CCA90230](0x756D696D7A41203BLL, 0xEC000000203A6874);
  sub_1C9A92B08();
  MEMORY[0x1CCA90230](0x746176656C45203BLL, 0xED0000203A6E6F69);
  sub_1C9A92B08();
  MEMORY[0x1CCA90230](0xD000000000000013, 0x80000001C9AD64C0);

  MEMORY[0x1CCA90460](v3, MEMORY[0x1E69E63B0]);

  sub_1C98285A8();

  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNDirectionOfArrivalResult.timeRange.getter(v11);
  v4 = objc_opt_self();
  v8[0] = v11[0];
  v8[1] = v11[1];
  v8[2] = v11[2];
  v5 = [v4 valueWithCMTimeRange_];
  v6 = [v5 description];
  sub_1C9A924A8();

  sub_1C98285A8();

  return v10;
}

id SNDirectionOfArrivalResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C9841C74@<D0>(_OWORD *a1@<X8>)
{
  SNDirectionOfArrivalResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C9841D44()
{
  result = qword_1EC3C54B0;
  if (!qword_1EC3C54B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54B0);
  }

  return result;
}

uint64_t sub_1C9841DA0()
{

  return swift_deallocPartialClassInstance();
}

_BYTE *storeEnumTagSinglePayload for FindMyBundle(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9841E6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9841ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Rational();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

void sub_1C984205C()
{
  sub_1C97BE460();
  v71 = v0;
  v54 = v2;
  v55 = v1;
  v68 = v3;
  v59 = v4;
  v60 = v5;
  v64 = v6;
  v65 = v7;
  v8 = *(v4 + 8);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v72 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435A0();
  v58 = (v14 - v15);
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C98435C8();
  v57 = v17;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98435C8();
  v69 = v19;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C98435C8();
  v67 = v21;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98435C8();
  v66 = v23;
  sub_1C98435B0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v52 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v70 = &v52 - v31;
  v32 = *(v8 + 32);
  v32(v10);
  v33 = v10;
  v34 = v10;
  v62 = v10;
  v63 = v32;
  v35 = v32;
  (v32)(v33, v8);
  v56 = *(v71 + 8);
  sub_1C99046D0(v30, v27, AssociatedTypeWitness, v55, *(v56 + 8), v70);
  v36 = *(v72 + 8);
  v72 += 8;
  v36(v27, AssociatedTypeWitness);
  v52 = v30;
  v36(v30, AssociatedTypeWitness);
  v61 = v8;
  v35(v34, v8);
  v55 = *(v68 + 8);
  sub_1C98435BC();
  v37();
  v53 = v27;
  v36(v27, AssociatedTypeWitness);
  v38 = v66;
  v39 = v62;
  v63(v62, v8);
  sub_1C98435BC();
  v55();
  v36(v38, AssociatedTypeWitness);
  v40 = v67;
  v41 = v61;
  v63(v39, v61);
  v42 = v52;
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v40, AssociatedTypeWitness);
  v43 = v41;
  v44 = *(v41 + 24);
  v45 = v57;
  v46 = v62;
  v44(v62, v43);
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v45, AssociatedTypeWitness);
  v47 = v58;
  v44(v46, v61);
  v48 = v45;
  v49 = v53;
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v47, AssociatedTypeWitness);
  v50 = v67;
  v51 = v69;
  sub_1C9A93798();
  v36(v48, AssociatedTypeWitness);
  v36(v51, AssociatedTypeWitness);
  v36(v49, AssociatedTypeWitness);
  v36(v42, AssociatedTypeWitness);
  v36(v70, AssociatedTypeWitness);
  (*(v59 + 16))(v50, v66, v46);
  sub_1C97BE478();
}

void sub_1C984253C()
{
  sub_1C97BE460();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v4 = *(v0 + 8);
  v5 = sub_1C98435F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v22 - v6;
  v7 = sub_1C98435F4();
  sub_1C97AE9DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98435A0();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1C9A937C8();
  (*(v4 + 24))(v3, v4);
  sub_1C9A937A8();
  v20 = *(v9 + 8);
  v20(v13, v7);
  v20(v17, v7);
  v21 = v23;
  (*(v4 + 32))(v3, v4);
  (*(v24 + 16))(v19, v21, v3);
  sub_1C97BE478();
}

void sub_1C9842750()
{
  sub_1C97BE460();
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C984253C();
  sub_1C984205C();
  v1 = sub_1C98435D4();
  v2(v1);
  sub_1C97BE478();
}

void sub_1C9842858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C97BE460();
  v61 = v21;
  v56 = v22;
  v57 = v23;
  v52 = v25;
  v53 = v24;
  v54 = a21;
  AssociatedConformanceWitness = v26;
  v64 = *(a21 + 16);
  v28 = *(v27 + 8);
  v30 = v29;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v49 - v31;
  v32 = swift_checkMetadataState();
  sub_1C97AE9DC();
  v51 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C98435A0();
  v37 = v35 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v49 - v40;
  v63 = v30;
  sub_1C97AE9DC();
  v60 = v42;
  MEMORY[0x1EEE9AC00](v43);
  v62 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9842750();
  v57 = *(v28 + 24);
  v57(v30, v28);
  v50 = v28;
  (*(v28 + 32))(v30, v28);
  sub_1C9A92B98();
  v45 = *(v51 + 8);
  v45(v37, v32);
  v46 = sub_1C98435D4();
  (v45)(v46);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C9A93BA8();
  sub_1C98435E0();
  sub_1C9A93AF8();
  LODWORD(v56) = sub_1C9A923D8();
  v47 = sub_1C98435D4();
  (v45)(v47);
  v45(v41, v32);
  v57(v63, v50);
  sub_1C9A93BA8();
  sub_1C98435E0();
  sub_1C9A93AF8();
  sub_1C9A92438();
  v48 = sub_1C98435D4();
  (v45)(v48);
  v45(v41, v32);
  (*(v60 + 8))(v62, v63);
  sub_1C97BE478();
}

uint64_t sub_1C9842D8C()
{
  sub_1C9A93CC8();
  sub_1C9842D2C();
  return sub_1C9A93D18();
}

uint64_t sub_1C9842F58()
{
  sub_1C9A93CC8();
  sub_1C9842D2C();
  return sub_1C9A93D18();
}

uint64_t sub_1C9843000()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984308C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C97ABF20(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C9843254(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C97ACC50(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98434F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9843534()
{

  return swift_getWitnessTable();
}

void sub_1C9843578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);

  sub_1C9842858(a1, a2, a3, a4, a6, a7, a8, v24, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1C98435F4()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_1C9843614(void *a1)
{
  v4 = *v1;
  *(v1 + 8) = 0;
  *(v1 + 36) = 1;
  v1[5] = a1;
  v1[2] = 0;
  v1[3] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = a1;

  v7 = sub_1C97C1C8C();

  if (v2)
  {
  }

  else
  {

    v6 = v1[2];
    v1[2] = v7;
  }

  return v1;
}

id sub_1C9843700(char *a1)
{
  v112[6] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v112[0] = 0;
  v4 = sub_1C9A761F8(v3, v112);
  if (!v4)
  {
    v38 = v112[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v4;
  }

  v5 = v112[0];
  v6 = sub_1C9A92478();
  sub_1C9A6B534(v4, v6);

  v7 = sub_1C9A92478();
  v8 = sub_1C9844214();
  v11 = sub_1C9A72FAC(v8, v9, v7, v10);

  if (!v11)
  {
    v39 = v112[0];
    sub_1C9A913C8();

    swift_willThrow();
LABEL_17:

    return v4;
  }

  v12 = v112[0];
  v13 = sub_1C9A92478();
  v14 = sub_1C9844214();
  v17 = sub_1C9A74DF0(v14, v15, v13, v16);

  if (!v17)
  {
    v40 = v112[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_17;
  }

  v18 = v112[0];
  v19 = sub_1C9A92478();
  v20 = sub_1C9844214();
  v23 = sub_1C9A7514C(v20, v21, v19, v22);

  if (!v23)
  {
    v41 = v112[0];
    sub_1C9A913C8();

    swift_willThrow();
LABEL_13:

    goto LABEL_17;
  }

  v110 = v23;
  v24 = v112[0];
  v25 = sub_1C9A92478();
  v26 = sub_1C9844214();
  v29 = sub_1C9A74DF0(v26, v27, v25, v28);

  if (!v29)
  {
    v42 = v112[0];
    sub_1C9844250();

    swift_willThrow();
    v43 = v23;
LABEL_15:

    goto LABEL_17;
  }

  v109 = v17;
  v30 = v112[0];
  v31 = sub_1C9A92478();
  v32 = sub_1C9844214();
  v17 = sub_1C9A75428(v32, v33, v31, v34);

  if (!v17)
  {
    v44 = v112[0];
    sub_1C9844250();

    swift_willThrow();
    goto LABEL_17;
  }

  v108 = v29;
  v36 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model];
  v35 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8];
  v37 = v112[0];
  sub_1C9A3B76C(v17, v36, v35);
  if (!v1)
  {
    v46 = sub_1C9A92478();
    v47 = sub_1C9844214();
    v50 = sub_1C9A73214(v47, v48, v46, v49);

    v107 = v50;
    if (v50)
    {
      v51 = v112[0];
      sub_1C9844228();
      sub_1C9A76554(v52, 160, 1, v53);
      v54 = sub_1C98441E4();
      v60 = v111;
      if (sub_1C9844238(v54, v55, v11, v109, v56, v57, v58, v59) && (v61 = v111, sub_1C9844228(), sub_1C9A76640(v62, 160, 400, 1, v63), v64 = sub_1C98441E4(), v60 = v111, sub_1C9844238(v64, v65, v109, v110, v66, v67, v68, v69)))
      {
        v70 = v111;
        sub_1C9844228();
        sub_1C9A76640(v71, 160, 64, 1, v72);
        v73 = sub_1C98441E4();
        if (sub_1C9844238(v73, v74, v110, v108, v75, v76, v77, v78))
        {
          v79 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames];
          if ((v79 - 15361) < 0xFFFFC400)
          {
            sub_1C9844044();
            swift_allocError();
            *v80 = 0;
            swift_willThrow();
            v81 = v111;

            return v4;
          }

          v85 = v111;
          sub_1C9844228();
          sub_1C9A76640(v86, v79, 6144, 1, v87);
          v88 = sub_1C98441E4();
          if (sub_1C9844238(v88, v89, v108, v17, v90, v91, v92, v93))
          {
            v94 = v111;
            sub_1C98568F8();
            sub_1C9844228();
            sub_1C9A76640(v95, v79, v96, 1, v97);
            v98 = sub_1C98441E4();
            if (sub_1C9844238(v98, v99, v17, v107, v100, v101, v102, v103))
            {
              v104 = v111;
              sub_1C9A695C8(v4);
              sub_1C9A69B8C(v4);

              return v4;
            }

            v106 = v111;
            sub_1C9A913C8();

            swift_willThrow();
            goto LABEL_17;
          }

          v105 = v111;
          sub_1C9844250();

          swift_willThrow();
        }

        else
        {
          v84 = v111;
          sub_1C9A913C8();

          swift_willThrow();
        }
      }

      else
      {
        v82 = v60;
        sub_1C9844250();

        swift_willThrow();
      }

      v43 = v107;
      goto LABEL_15;
    }

    v83 = v112[0];
    sub_1C9844250();

    swift_willThrow();
    goto LABEL_13;
  }

  return v4;
}

id sub_1C9843DCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9844044();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

void sub_1C9843E30(int a1, double a2)
{
  v6 = *v2;
  if ((*(v2 + 36) & 1) != 0 || (v2[3] == a2 ? (v7 = *(v2 + 8) == a1) : (v7 = 0), !v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;

    v9 = sub_1C97C1C8C();

    if (!v3)
    {
      v10 = *(v2 + 2);
      *(v2 + 2) = v9;

      v2[3] = a2;
      *(v2 + 8) = a1;
      *(v2 + 36) = 0;
    }
  }
}

void sub_1C9843F20(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C9843700(v4);

  if (!v2)
  {
    *a2 = v5;
  }
}

uint64_t sub_1C9843FA0()
{
  sub_1C9843F78();

  return swift_deallocClassInstance();
}

unint64_t sub_1C9844044()
{
  result = qword_1EC3C8E88;
  if (!qword_1EC3C8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8E88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLogMelBasedFeatureExtractor.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9844178()
{
  result = qword_1EC3C8E90;
  if (!qword_1EC3C8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8E90);
  }

  return result;
}

uint64_t sub_1C9844238(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{

  return sub_1C9A762F8(a1, a2, a3, a4, 0, 0, a7, a8);
}

uint64_t sub_1C9844250()
{

  return sub_1C9A913C8();
}

id sub_1C9844268()
{
  v0 = sub_1C9A93228();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  sub_1C9844964();

  v7 = sub_1C98443D4();
  (*(v2 + 104))(v6, *MEMORY[0x1E696A028], v0);
  v8 = sub_1C9A93218();
  v10 = v9;
  (*(v2 + 8))(v6, v0);
  if ((v10 & 1) != 0 || ([v7 isAtEnd] & 1) == 0)
  {

    return 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  return v11;
}

id sub_1C98443D4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C9A92478();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_1C9844448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v6 = sub_1C9A93228();
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEAD8();
  v12 = v11 - v10;
  sub_1C9844964();

  v13 = sub_1C98443D4();
  (*(v8 + 104))(v12, *MEMORY[0x1E696A028], v6);
  v14 = a3(v12);
  v16 = v15;
  (*(v8 + 8))(v12, v6);
  if ((v16 & 1) != 0 || ([v13 isAtEnd] & 1) == 0)
  {

    return 0;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  }

  return v17;
}

id sub_1C98445B8(uint64_t a1, uint64_t a2)
{
  sub_1C9844A60();
  v8 = sub_1C9844448(v4, v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    sub_1C9844A78();
    v13 = sub_1C9844448(a1, a2, v11, v12);
    if (!v13)
    {
      v13 = sub_1C9844268();
      if (!v13)
      {
        type metadata accessor for SNError();
        sub_1C9A935B8();

        MEMORY[0x1CCA90230](a1, a2);
        v10 = 0x80000001C9AD65D0;
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000026, 0x80000001C9AD65D0);

        swift_willThrow();
        return v10;
      }
    }

    v10 = v13;
  }

  v14 = v9;

  return v10;
}

uint64_t sub_1C98446F0(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v3 + 16 * v1); ; i += 2)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v7 = *(i - 1);
    v6 = *i;
    if (v7 || v6 != 0xE000000000000000)
    {
      result = sub_1C9A93B18();
      if ((result & 1) == 0)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C97B7B08(0, *(v4 + 16) + 1, 1);
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_1C97B7B08(v8 > 1, v9 + 1, 1);
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        ++v1;
        goto LABEL_2;
      }
    }

    ++v1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C9844824()
{
  v0 = sub_1C9A912E8();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  sub_1C9A912D8();
  sub_1C98449A8();
  v7 = sub_1C9A932C8();
  sub_1C98446F0(v7);

  (*(v2 + 8))(v6, v0);
  sub_1C97A2CEC(&qword_1EC3C7BF0);
  sub_1C98449FC();
  v8 = sub_1C9A923C8();

  return v8;
}

unint64_t sub_1C9844964()
{
  result = qword_1EC3C8E98;
  if (!qword_1EC3C8E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C8E98);
  }

  return result;
}

unint64_t sub_1C98449A8()
{
  result = qword_1EC3C5510;
  if (!qword_1EC3C5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5510);
  }

  return result;
}

unint64_t sub_1C98449FC()
{
  result = qword_1EC3C8EA0;
  if (!qword_1EC3C8EA0)
  {
    sub_1C97AA4F0(&qword_1EC3C7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EA0);
  }

  return result;
}

uint64_t sub_1C9844AB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = sub_1C98450A4(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21);
  result = sub_1C98450C8(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  if (!v9)
  {
    *v8 = result;
  }

  return result;
}

uint64_t sub_1C9844AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  (*(a3 + 16))(a2, a3);
  (*(a5 + 56))(a1, AssociatedTypeWitness, a5);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1C9844C30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C98450A4(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12[0]);
  result = sub_1C97DD31C(v12);
  if (!v9)
  {
    *v8 = result;
  }

  return result;
}

uint64_t sub_1C9844C78(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8EA8);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9844F90();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C9844D80(uint64_t a1)
{
  v2 = sub_1C9844F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9844DBC(uint64_t a1)
{
  v2 = sub_1C9844F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9844E14()
{
  result = qword_1EC3C57C0[0];
  if (!qword_1EC3C57C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C57C0);
  }

  return result;
}

uint64_t sub_1C9844E80()
{
  sub_1C984511C();
  swift_getWitnessTable();
  _s21ServerEnvironmentImplVMa();
  WitnessTable = swift_getWitnessTable();
  return sub_1C98450F4(WitnessTable, v1, v2, v3);
}

uint64_t sub_1C9844F08()
{
  sub_1C984511C();
  swift_getWitnessTable();
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  WitnessTable = swift_getWitnessTable();
  return sub_1C98450F4(WitnessTable, v1, v2, v3);
}

unint64_t sub_1C9844F90()
{
  result = qword_1EC3C8EB0;
  if (!qword_1EC3C8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EB0);
  }

  return result;
}

unint64_t sub_1C9844FF8()
{
  result = qword_1EC3C8EB8;
  if (!qword_1EC3C8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EB8);
  }

  return result;
}

unint64_t sub_1C9845050()
{
  result = qword_1EC3C8EC0;
  if (!qword_1EC3C8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EC0);
  }

  return result;
}

void *sub_1C98450A4(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x41uLL);
}

uint64_t sub_1C98450C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21)
{
  v23 = v21[1];
  a19 = *v21;
  a20 = v23;
  a21 = *(v21 + 4);

  return sub_1C978F4A0(&a10);
}

uint64_t sub_1C98450F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9844AEC(v5, v4, v6, a4, a1);
}

void static AOPClassificationResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C9A916B8())
  {
    v4 = type metadata accessor for AOPClassificationResult();
    if (sub_1C9A916B8())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_1C9845534(v6, v7);
    }
  }
}

uint64_t type metadata accessor for AOPClassificationResult()
{
  result = qword_1EC3C8F78;
  if (!qword_1EC3C8F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9845200(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 4 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 4 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C98452DC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 8 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 8 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C98453B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_1C984ACA4();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v29 = (v8 - 1) & v8;
LABEL_11:
      v15 = v11 | (v3 << 6);
      v16 = v5;
      v17 = (*(v5 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v5 + 56) + 16 * v15);
      v22 = *v20;
      v21 = v20[1];

      v23 = sub_1C9A32230(v18, v19);
      v25 = v24;

      if ((v25 & 1) == 0)
      {

        return;
      }

      v26 = (*(a2 + 56) + 16 * v23);
      if (*v26 == v22 && v26[1] == v21)
      {

        v5 = v16;
        v8 = v29;
      }

      else
      {
        v28 = sub_1C9A93B18();

        v5 = v16;
        v8 = v29;
        if ((v28 & 1) == 0)
        {
          return;
        }
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      ++v12;
      if (*(v4 + 8 * v3))
      {
        sub_1C984ACD8();
        v29 = v14 & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1C9845534(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 8 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 8 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1C9845610(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6D617473656D6974 && a2 == 0xEE00747261745370;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xEC000000646E4570;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9845734(unsigned __int8 a1)
{
  result = 0x6D617473656D6974;
  if (a1 >= 2u)
  {
    return 0x6966697373616C63;
  }

  return result;
}

uint64_t sub_1C98457A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9845610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98457D0(uint64_t a1)
{
  v2 = sub_1C9845A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C984580C(uint64_t a1)
{
  v2 = sub_1C9845A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AOPClassificationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3C8ED0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9845A58();
  sub_1C9A93DD8();
  v18 = 0;
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v11, v12);
  sub_1C984AE28();
  if (!v2)
  {
    v13 = type metadata accessor for AOPClassificationResult();
    v17 = 1;
    sub_1C984AE28();
    v15[1] = *(v3 + *(v13 + 24));
    v16 = 2;
    sub_1C97A2CEC(&qword_1EC3C82B8);
    sub_1C984A314(&qword_1EC3C8EF0);
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C9845A58()
{
  result = qword_1EC3C8ED8;
  if (!qword_1EC3C8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8ED8);
  }

  return result;
}

uint64_t AOPClassificationResult.hash(into:)(uint64_t a1)
{
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v3, v4);
  sub_1C984ADE8();
  sub_1C9A92398();
  v5 = type metadata accessor for AOPClassificationResult();
  sub_1C984ADE8();
  sub_1C9A92398();
  v6 = *(v1 + *(v5 + 24));

  return sub_1C984A234(a1, v6);
}

uint64_t AOPClassificationResult.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v1, v2);
  sub_1C9A92398();
  v3 = type metadata accessor for AOPClassificationResult();
  sub_1C9A92398();
  sub_1C984A234(v5, *(v0 + *(v3 + 24)));
  return sub_1C9A93D18();
}

uint64_t AOPClassificationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v29 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v26 - v9;
  sub_1C97A2CEC(&qword_1EC3C8F00);
  sub_1C97AE9C8();
  v31 = v11;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = type metadata accessor for AOPClassificationResult();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9845A58();
  v33 = v13;
  v17 = v34;
  sub_1C9A93DB8();
  if (v17)
  {
    return sub_1C97A592C(a1);
  }

  v34 = a1;
  v27 = v16;
  v38 = 0;
  sub_1C984ACC0();
  sub_1C984A53C(v18, v19);
  v20 = v30;
  sub_1C984AF10();
  v30 = *(v29 + 32);
  (v30)(v27, v20, v3);
  v37 = 1;
  sub_1C984AF10();
  v21 = v14;
  v22 = *(v14 + 20);
  v23 = v27;
  (v30)(&v27[v22], v8, v3);
  sub_1C97A2CEC(&qword_1EC3C82B8);
  v36 = 2;
  sub_1C984A314(&qword_1EC3C8F10);
  v24 = v33;
  sub_1C9A938F8();
  (*(v31 + 8))(v24, v32);
  *(v23 + *(v21 + 24)) = v35;
  sub_1C984A384(v23, v28);
  sub_1C97A592C(v34);
  return sub_1C984A3E8(v23);
}

uint64_t sub_1C9846048(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9A916E8();
  sub_1C984A53C(&qword_1EC3C8EF8, MEMORY[0x1E6969530]);
  sub_1C9A92398();
  sub_1C9A92398();
  sub_1C984A234(v5, *(v2 + *(a2 + 24)));
  return sub_1C9A93D18();
}

uint64_t _SNClassification.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____SNClassification_impl);

  return v1;
}

uint64_t _SNClassification.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____SNClassification_impl);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C9846258(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _SNClassification.identifier.setter(v1, v2);
}

uint64_t (*_SNClassification.identifier.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR____SNClassification_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_1C98462F4;
}

uint64_t sub_1C98462F4(void *a1)
{
  v1 = (a1[2] + a1[3]);
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
}

double (*_SNClassification.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____SNClassification_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 16);
  return sub_1C98463B4;
}

double sub_1C98463B4(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 16) = *a1;
  return result;
}

id sub_1C9846434(double a1)
{
  sub_1C981E1EC();
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____SNClassification_impl];
  *v6 = v3;
  *(v6 + 1) = v1;
  *(v6 + 2) = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id _SNClassification.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____SNClassification_impl;
  v6 = *(v1 + OBJC_IVAR____SNClassification_impl);
  v5 = *(v1 + OBJC_IVAR____SNClassification_impl + 8);
  v7 = *(v4 + 16);
  v8 = objc_allocWithZone(ObjectType);
  v9 = &v8[OBJC_IVAR____SNClassification_impl];
  *v9 = v6;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
  v11.receiver = v8;
  v11.super_class = ObjectType;

  result = objc_msgSendSuper2(&v11, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t _SNClassification.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____SNClassification_impl);
  v2 = *(v0 + OBJC_IVAR____SNClassification_impl + 16);

  sub_1C992C5B8(v2);
  sub_1C97FB3E4();

  return v1;
}

uint64_t _SNClassification.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  return _SNClassification.init(coder:)();
}

uint64_t _SNClassification.init(coder:)()
{
  sub_1C97C926C();
  swift_getObjectType();
  sub_1C984AEC4();
  v1 = sub_1C9A92478();
  [v0 decodeDoubleForKey_];

  sub_1C97BD318(0, &qword_1EC3C8F28);
  v2 = sub_1C9A93198();
  if (v2)
  {
    v3 = v2;
    v5 = 0;
    sub_1C9A92498();
  }

  sub_1C984AED8();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall _SNClassification.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____SNClassification_impl);
  v4 = *(v1 + OBJC_IVAR____SNClassification_impl + 16);
  sub_1C984AEC4();
  v5 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeDouble:v5 forKey:v4];

  v6 = *v3;

  sub_1C9A92478();
  sub_1C984AEE4();

  v7 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

uint64_t _SNClassification.description.getter()
{

  v0 = sub_1C984AED8();
  MEMORY[0x1CCA90230](v0);

  MEMORY[0x1CCA90230](2112800, 0xE300000000000000);
  sub_1C9A92AF8();
  return 0;
}

void sub_1C98469FC()
{
  *(v0 + OBJC_IVAR____SNClassificationResult_cachedClassifications) = 0;
  sub_1C9A93778();
  __break(1u);
}

void _SNClassificationResult.classificationDictionary.getter()
{
  sub_1C984AD5C();
  v1 = *(v0 + 48);
  sub_1C97A2CEC(&qword_1EC3CD2A0);
  sub_1C97C926C();
  v2 = sub_1C9A937E8();
  sub_1C984ACA4();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_8:
      v13 = v9 | (v8 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(v1 + 56) + 8 * v13);
      v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      [v18 initWithDouble_];
      sub_1C984AEAC();
      sub_1C984AE98(v19);
      v21 = (v20 + 16 * v13);
      *v21 = v16;
      v21[1] = v15;
      *(*(v2 + 56) + 8 * v13) = v22;
      v23 = *(v2 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v2 + 16) = v25;
      if (!v5)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        return;
      }

      ++v10;
      if (*(v1 + 64 + 8 * v8))
      {
        sub_1C984ACD8();
        v5 = v12 & v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void _SNClassificationResult.classificationDictionary.setter(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C8F40);
  sub_1C984AEE4();
  v2 = sub_1C9A937E8();
  v3 = 0;
  sub_1C984ACA4();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_8:
      v14 = v9 | (v3 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*(a1 + 56) + 8 * v14);

      [v18 doubleValue];
      sub_1C984AEAC();
      sub_1C984AE98(v19);
      v21 = (v20 + 16 * v14);
      *v21 = v17;
      v21[1] = v16;
      *(*(v2 + 56) + 8 * v14) = v22;
      v23 = *(v2 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v2 + 16) = v25;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
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

        v26 = v27 + OBJC_IVAR____SNClassificationResult_impl;
        sub_1C984AF30();
        *(v26 + 48) = v2;

        return;
      }

      sub_1C984AEB8();
      if (v11)
      {
        sub_1C984ACD8();
        v6 = v13 & v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void (*_SNClassificationResult.classificationDictionary.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  _SNClassificationResult.classificationDictionary.getter();
  *a1 = v3;
  return sub_1C9846EF0;
}

void sub_1C9846EF0(uint64_t *a1, char a2)
{
  if (a2)
  {

    _SNClassificationResult.classificationDictionary.setter(v2);
  }

  else
  {
    _SNClassificationResult.classificationDictionary.setter(*a1);
  }
}

double _SNClassificationResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AE10();
  v3 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double _SNClassificationResult.timeRange.setter(double *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 5);
  sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AF30();
  *v1 = v3;
  *(v1 + 8) = a1[1];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  result = a1[4];
  *(v1 + 32) = result;
  *(v1 + 40) = v6;
  return result;
}

double sub_1C98470CC@<D0>(_OWORD *a1@<X8>)
{
  _SNClassificationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*_SNClassificationResult.timeRange.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1C97A2C48(0x98uLL);
  *a1 = v3;
  *v3 = v1;
  _SNClassificationResult.timeRange.getter((v3 + 13));
  return sub_1C9847174;
}

void sub_1C9847174(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 56;
  if (a2)
  {
    v3 = 8;
  }

  v4 = (v2 + v3);
  v5 = *(v2 + 120);
  *v4 = *(v2 + 104);
  v4[1] = v5;
  v4[2] = *(v2 + 136);
  _SNClassificationResult.timeRange.setter((v2 + v3));

  free(v2);
}

uint64_t _SNClassificationResult.classifierIdentifier.getter()
{
  sub_1C984AD5C();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t _SNClassificationResult.classifierIdentifier.setter()
{
  sub_1C981E1EC();
  sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AF30();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

uint64_t _SNClassificationResult.classifierIdentifier.modify(void *a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____SNClassificationResult_impl;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  sub_1C984AF30();
  v6 = *(v5 + 64);
  v3[3] = *(v5 + 56);
  v3[4] = v6;

  return sub_1C984AED8();
}

void sub_1C9847400(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = v5 + v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v6;
  if (a2)
  {
  }

  free(v2);
}

id sub_1C984746C()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  v3 = MEMORY[0x1E6960C98];
  v4 = *MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v6 = *(MEMORY[0x1E6960C98] + 24);
  v7 = *(MEMORY[0x1E6960C98] + 40);
  v8 = sub_1C9A92348();
  v9 = &v1[OBJC_IVAR____SNClassificationResult_impl];
  *v9 = v4;
  *(v9 + 1) = *(v3 + 8);
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = *(v3 + 32);
  *(v9 + 5) = v7;
  *(v9 + 6) = v8;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id sub_1C9847768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_1C9847778();
  }

  else
  {
    return 0;
  }
}

id sub_1C9847778()
{
  sub_1C981E1EC();
  v3 = v1 + OBJC_IVAR____SNClassificationResult_impl;
  swift_beginAccess();
  v4 = *(v3 + 48);
  if (*(v4 + 16) && (v5 = sub_1C9A32230(v2, v0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = type metadata accessor for _SNClassification();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____SNClassification_impl];
    *v10 = v2;
    v10[1] = v0;
    v10[2] = v7;
    v12.receiver = v9;
    v12.super_class = v8;

    return objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_1C984795C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, objc_super a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C984ADA8();
  a31 = v33;
  a32 = v35;
  v36 = *(v34 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = v34;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1C97B80BC();
    v39 = a18;
    v42 = sub_1C9887A94(v38);
    v43 = 0;
    v44 = v38 + 64;
    v69 = v36;
    if ((v42 & 0x8000000000000000) == 0)
    {
      while (v42 < 1 << *(v38 + 32))
      {
        v32 = v42 >> 6;
        if ((*(v44 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v38 + 36) != v40)
        {
          goto LABEL_29;
        }

        v70 = v41;
        v71 = v43;
        v72 = v40;
        v45 = (*(v38 + 48) + 16 * v42);
        v47 = *v45;
        v46 = v45[1];
        v48 = *(*(v38 + 56) + 8 * v42);
        a18 = v39;
        v50 = *(v39 + 16);
        v49 = *(v39 + 24);

        if (v50 >= v49 >> 1)
        {
          sub_1C97B80BC();
          v39 = a18;
        }

        *(v39 + 16) = v50 + 1;
        v51 = (v39 + 24 * v50);
        v51[4] = v47;
        v51[5] = v46;
        v51[6] = v48;
        v52 = 1 << *(v38 + 32);
        if (v42 >= v52)
        {
          goto LABEL_30;
        }

        v44 = v38 + 64;
        v53 = *(v38 + 64 + 8 * v32);
        if ((v53 & (1 << v42)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v38 + 36) != v72)
        {
          goto LABEL_32;
        }

        v54 = v53 & (-2 << (v42 & 0x3F));
        if (v54)
        {
          v52 = __clz(__rbit64(v54)) | v42 & 0x7FFFFFFFFFFFFFC0;
          v55 = v69;
        }

        else
        {
          v56 = v32 << 6;
          v57 = v32 + 1;
          v55 = v69;
          v58 = (v38 + 72 + 8 * v32);
          while (v57 < (v52 + 63) >> 6)
          {
            v59 = *v58++;
            v32 = v59;
            v56 += 64;
            ++v57;
            if (v59)
            {
              sub_1C97FDD94(v42, v72, v70 & 1);
              v52 = __clz(__rbit64(v32)) + v56;
              goto LABEL_18;
            }
          }

          sub_1C97FDD94(v42, v72, v70 & 1);
        }

LABEL_18:
        v43 = v71 + 1;
        if (v71 + 1 == v55)
        {
          v37 = MEMORY[0x1E69E7CC0];
          goto LABEL_23;
        }

        v41 = 0;
        v40 = *(v38 + 36);
        v42 = v52;
        if (v52 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_23:
    a18 = v39;

    sub_1C9849640(&a18);

    v60 = a18;
    v61 = *(a18 + 16);
    if (v61)
    {
      a18 = v37;
      sub_1C9A93698();
      v62 = type metadata accessor for _SNClassification();
      v63 = (v60 + 48);
      do
      {
        v65 = *(v63 - 2);
        v64 = *(v63 - 1);
        v66 = *v63;
        v63 += 3;
        v67 = objc_allocWithZone(v62);
        v68 = &v67[OBJC_IVAR____SNClassification_impl];
        *v68 = v65;
        *(v68 + 1) = v64;
        *(v68 + 2) = v66;
        a16.receiver = v67;
        a16.super_class = v62;

        objc_msgSendSuper2(&a16, sel_init);
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
        --v61;
      }

      while (v61);
    }

    sub_1C984ADC8();
  }
}

id sub_1C9847CE8()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  memcpy(&v1[OBJC_IVAR____SNClassificationResult_impl], v0, 0x48uLL);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id _SNClassificationResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10();
  memcpy(__dst, (v1 + v4), sizeof(__dst));
  memcpy(v8, (v1 + v4), sizeof(v8));
  v5 = objc_allocWithZone(ObjectType);
  sub_1C984A444(__dst, &v7);
  result = sub_1C9847CE8();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C9847E10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_1C97A5A8C(v8, v8[3]);
  v6 = sub_1C9A93B08();
  sub_1C97A592C(v8);
  return v6;
}

uint64_t _SNClassificationResult.hash.getter()
{
  v1 = OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v6, (v0 + v1), sizeof(v6));
  sub_1C9A93CC8();
  sub_1C984A444(__dst, v4);
  sub_1C992FA74(v5);
  v2 = sub_1C9A93D18();
  sub_1C984A4A0(__dst);
  return v2;
}

uint64_t sub_1C9847F60(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t))
{
  sub_1C97A2C7C(a1, &v7);
  if (v8)
  {
    sub_1C97A2D34(&v7, v6);
    v4 = a2(v6, v2);
    sub_1C97A592C(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C9847FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1C97A59D0(v10);
  return v8 & 1;
}

void _SNClassificationResult.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  _SNClassificationResult.init(coder:)();
}

void _SNClassificationResult.init(coder:)()
{
  sub_1C97C926C();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  sub_1C97BD318(0, &qword_1EC3C5690);
  v2 = sub_1C9A93198();
  if (!v2)
  {
    sub_1C97A8E8C();
    v5 = swift_allocError();
    *v6 = 0;
    swift_willThrow();

LABEL_17:

    swift_deallocPartialClassInstance();
    return;
  }

  v3 = v2;
  sub_1C97BD318(0, &qword_1EC3C8F28);
  v4 = sub_1C9A93198();
  v46 = 0;
  v47 = 0;
  sub_1C9A92498();

  sub_1C97BD318(0, &qword_1EC3C54B0);
  v7 = sub_1C9A931A8();
  if (!v7 || (v52 = v7, sub_1C97A2CEC(&qword_1EC3C8F58), sub_1C97A2CEC(&qword_1EC3C8F60), (swift_dynamicCast() & 1) == 0))
  {

    sub_1C97A8E8C();
    v5 = swift_allocError();
    *v33 = 0;
    swift_willThrow();

    goto LABEL_17;
  }

  v42 = v0;
  v43 = ObjectType;
  v41 = v3;
  [v3 CMTimeRangeValue];
  v39 = v48;
  v40 = v46;
  v37 = v50;
  v38 = v49;
  sub_1C97A2CEC(&qword_1EC3C8F40);
  sub_1C97C926C();
  v8 = sub_1C9A937E8();
  v9 = 0;
  v10 = v51 + 64;
  v44 = v51;
  sub_1C984ACA4();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v17 = v16 + 64;
  if ((v12 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v22 = v18 | (v9 << 6);
      v23 = (*(v44 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(*(v44 + 56) + 8 * v22);

      [v26 doubleValue];
      sub_1C984AEAC();
      *(v17 + v28) |= v27 << v22;
      v29 = (*(v8 + 48) + 16 * v22);
      *v29 = v25;
      v29[1] = v24;
      sub_1C984AE84(v30);
      if (v32)
      {
        break;
      }

      *(v8 + 16) = v31;
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        sub_1C984AD80(OBJC_IVAR____SNClassificationResult_impl, v36, v37, v38, v39, v40);
        *(v34 + 56) = 0;
        *(v34 + 64) = 0;
        v45.receiver = v35;
        v45.super_class = v43;
        objc_msgSendSuper2(&v45, sel_init);

        return;
      }

      ++v19;
      if (*(v10 + 8 * v9))
      {
        sub_1C984ACD8();
        v13 = v21 & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall _SNClassificationResult.encode(with:)(NSCoder with)
{
  _SNClassificationResult.timeRange.getter(v10);
  v3 = [objc_opt_self() valueWithCMTimeRange_];
  v4 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  _SNClassificationResult.classificationDictionary.getter();
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A922F8();

  v6 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = v1 + OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10();
  if (*(v7 + 64))
  {

    v8 = sub_1C9A92478();

    v9 = sub_1C9A92478();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  }
}

id sub_1C98486DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1C984AED8();
  v5 = sub_1C9A92478();

  return v5;
}

uint64_t _SNClassificationResult.description.getter()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v14, sel_description);
  v2 = sub_1C9A924A8();
  v4 = v3;

  v15 = v2;
  v16 = v4;
  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  _SNClassificationResult.timeRange.getter(v17);
  v5 = objc_opt_self();
  v13[0] = v17[0];
  v13[1] = v17[1];
  v13[2] = v17[2];
  v6 = [v5 valueWithCMTimeRange_];
  v7 = [v6 description];
  v8 = sub_1C9A924A8();
  v10 = v9;

  MEMORY[0x1CCA90230](v8, v10);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  sub_1C984AE10();

  sub_1C9A92338();

  v11 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v11);

  return v15;
}

id sub_1C98488C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  sub_1C97BD318(0, &unk_1EC3C9010);
  sub_1C97BD318(0, &qword_1EC3CAE80);
  v7 = sub_1C9A92FF8();
  v21 = v7;
  if (v7)
  {
    v22 = sub_1C9848B9C();

    v23 = OBJC_IVAR____SNClassificationResult_impl;
    sub_1C984AE10();
    memcpy(__dst, &v22[v23], sizeof(__dst));
    sub_1C984A444(__dst, v28);

    memcpy(&v3[OBJC_IVAR____SNClassificationResult_impl], __dst, 0x48uLL);
  }

  else
  {
    sub_1C984AB48();
    v26 = swift_allocError();
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v27 = a2;
    v8 = sub_1C9A91B58();
    sub_1C97BFF6C(v8, qword_1EC3D3108);
    v9 = sub_1C9A91B38();
    v10 = sub_1C9A92FB8();
    v11 = ObjectType;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      __dst[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1C9849140(0xD000000000000047, 0x80000001C9AD67E0, __dst);
      _os_log_impl(&dword_1C9788000, v9, v10, "Would-be Fatal Error! %s", v12, 0xCu);
      sub_1C97A592C(v13);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    v14 = MEMORY[0x1E6960C98];
    v15 = *MEMORY[0x1E6960C98];
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v17 = *(MEMORY[0x1E6960C98] + 24);
    v18 = *(MEMORY[0x1E6960C98] + 40);
    v19 = sub_1C9A92348();

    v20 = &v3[OBJC_IVAR____SNClassificationResult_impl];
    *v20 = v15;
    *(v20 + 1) = *(v14 + 8);
    *(v20 + 2) = v16;
    *(v20 + 3) = v17;
    *(v20 + 4) = *(v14 + 32);
    *(v20 + 5) = v18;
    *(v20 + 6) = v19;
    *(v20 + 7) = 0;
    *(v20 + 8) = 0;
    ObjectType = v11;
    a2 = v27;
  }

  v30.receiver = v3;
  v30.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v30, sel_init, v27);
  sub_1C97A5978(a1, a2);
  return v24;
}

uint64_t sub_1C9848B9C()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  type metadata accessor for _SNClassificationResult();
  swift_dynamicCast();
  return v3;
}

uint64_t _SNClassificationResult.binarySampleRepresentation()()
{
  v17[4] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v17[3] = ObjectType;
  v17[0] = v0;
  v3 = objc_allocWithZone(SNClassificationResult);
  v4 = v0;
  v5 = sub_1C98490D8(v17);
  v17[0] = 0;
  v6 = [v2 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
  }

  else
  {
    v9 = v7;
    v10 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v11 = sub_1C9A91B58();
    sub_1C97BFF6C(v11, qword_1EC3D3108);
    v12 = sub_1C9A91B38();
    v13 = sub_1C9A92FB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C9849140(0xD000000000000043, 0x80000001C9AD6640, v17);
      _os_log_impl(&dword_1C9788000, v12, v13, "Would-be Fatal Error! %s", v14, 0xCu);
      sub_1C97A592C(v15);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    return 0;
  }

  return v8;
}

id _SNClassificationResult.__allocating_init(binarySampleRepresentation:metadata:timestamp:)()
{
  sub_1C981E1EC();

  v2 = objc_allocWithZone(v1);
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C984AEE4();
  v5 = sub_1C98488C4(v4, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id _SNClassificationResult.init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();

  v5 = objc_allocWithZone(ObjectType);
  sub_1C98488C4(a1, a2);
  sub_1C97C926C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

double sub_1C9849094@<D0>(_OWORD *a1@<X8>)
{
  _SNClassificationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void *sub_1C98490D8(void *a1)
{
  sub_1C97A5A8C(a1, a1[3]);
  [v1 initWithImpl_];
  sub_1C984AEE4();
  swift_unknownObjectRelease();
  sub_1C97A592C(a1);
  return v1;
}

unint64_t sub_1C9849140(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C9849204(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C97BD360(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1C97A592C(v11);
  return v7;
}

unint64_t sub_1C9849204(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C9849304(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C9A93658();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C9849304(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C9849350(a1, a2);
  sub_1C9849468(&unk_1F4929C38);
  return v3;
}

uint64_t sub_1C9849350(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C9A925A8())
  {
    result = sub_1C98F1078(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C9A93598();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C9A93658();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C9849468(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C984954C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

char *sub_1C984954C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C97A2CEC(&qword_1EC3C69E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1C9849640(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254E8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C98496AC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C98496AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C9849820(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C98497A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C98497A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C9849820(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C97E510C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C9849E6C((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C9849D34(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_1C9849D34(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C9849E6C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C9849E6C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C97E84F4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 3;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v7[2] = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C97E84F4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_1C984A028(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C984A054(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C97A2CEC(&unk_1EC3C7870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C984A314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C82B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C984A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C984A3E8(uint64_t a1)
{
  v2 = type metadata accessor for AOPClassificationResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C984A53C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C984A5AC()
{
  sub_1C9A916E8();
  if (v0 <= 0x3F)
  {
    sub_1C984A630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C984A630()
{
  if (!qword_1EC3C8F88)
  {
    v0 = sub_1C9A92358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C8F88);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C984A810()
{
  result = qword_1EC3C8FF0;
  if (!qword_1EC3C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8FF0);
  }

  return result;
}

unint64_t sub_1C984A868()
{
  result = qword_1EC3C8FF8;
  if (!qword_1EC3C8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8FF8);
  }

  return result;
}

unint64_t sub_1C984A8C0()
{
  result = qword_1EC3C9000;
  if (!qword_1EC3C9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9000);
  }

  return result;
}

uint64_t sub_1C984A914(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  sub_1C984ACA4();
  sub_1C984AD4C();

  v6 = 0;
  v7 = 0;
  if (v3)
  {
    while (1)
    {
LABEL_5:
      sub_1C984ACE8();
      v11 = *(v10 + 8 * v9);
      sub_1C984AE4C(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);

      sub_1C984ADF4();

      MEMORY[0x1CCA91980](v11);
      v6 ^= sub_1C9A93D18();
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return MEMORY[0x1CCA91980](0);
    }

    ++v7;
    if (*(v4 + 8 * v8))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C984AA08(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_1C984ACA4();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA91980](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_1C984ADF4();

        sub_1C9A92528();

        result = sub_1C9A93D18();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C984AB48()
{
  result = qword_1EC3C9020;
  if (!qword_1EC3C9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _SNClassificationResult.DomainError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}
uint64_t sub_2B370()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2B490()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB50);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();

  sub_D13C((v13 + 16));
  v14 = *(v13 + 120);
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  *(v13 + 64) = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  *(v13 + 72) = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  v18 = *(v12 + 56);
  v19 = *(v13 + 64);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v20 = sub_3115C();
  sub_30BC4(v20, qword_1E65C0);
  v21 = sub_16A9A4();
  sub_30A2C(v21);

  v22 = *(v13 + 80);

  sub_30BEC();
  sub_31534();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2B824()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *(v5 + 152);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  sub_312C0(v10);

  if (v0)
  {
    v11 = *(v3 + 152);
  }

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_2BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();
  v14 = v13[24];
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  v13[8] = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  v13[9] = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  v18 = *(v12 + 56);
  v19 = v13[8];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v20 = sub_3115C();
  sub_30BC4(v20, qword_1E65C0);
  v21 = sub_16A9A4();
  sub_30A2C(v21);

  v22 = v13[10];

  sub_30BEC();
  sub_31534();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB50);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3154C();
  sub_10B8C();
  v14 = v13[17];
  sub_3060C();
  sub_16ACF4(54);
  sub_314F4();
  *(v12 + 56) = v15;
  v13[8] = v16;
  v17 = sub_304EC();
  sub_31578(v17);
  v13[9] = v14;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  sub_311BC(". Getting an error retrieving inRangeCarKeys.");
  v18 = *(v12 + 56);
  v19 = v13[8];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v20 = sub_3115C();
  sub_30BC4(v20, qword_1E65C0);
  v21 = sub_16A9A4();
  sub_30A2C(v21);

  v22 = v13[10];

  sub_30BEC();
  sub_31534();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2BE48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2BE70, 0, 0);
}

uint64_t sub_2BE70()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2BFBC()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2C0DC()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB28);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB28);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2C460(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2C488, 0, 0);
}

uint64_t sub_2C488()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2C5D4()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2C6F4()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB00);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DB00);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2CA78(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2CAA0, 0, 0);
}

uint64_t sub_2CAA0()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2CBEC()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2CD0C()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DAE0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2CF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DAE0);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2D090(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 208) = a3;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_2D0B8, 0, 0);
}

uint64_t sub_2D0B8()
{
  sub_1696C();
  v1 = v0[11];
  if (v1)
  {
    sub_31290(v0[12]);
    sub_30A9C(v0 + 2, v0[5]);
    v2 = [v1 spokenPhrase];
    sub_16A664();
    sub_31380();
    sub_30E98();
    v3 = swift_task_alloc();
    v4 = sub_30EEC(v3);
    *v4 = v5;
    v6 = sub_300C4(v4);

    return sub_CC2C0(v6, v7, v8);
  }

  else
  {
    sub_30120(v0[12]);
    v10 = swift_task_alloc();
    v11 = sub_30EE0(v10);
    *v11 = v12;
    v13 = sub_302A4(v11);

    return sub_CC4E4(v13);
  }
}

uint64_t sub_2D204()
{
  sub_10BC0();
  sub_D3A4();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *(v6 + 104);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 144) = v1;
  }

  sub_3021C();
  sub_10BD4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2D324()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 200) = v1;
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_30828();

  sub_D13C(v14 + 2);
  v14[19] = v14[18];
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  v14[21] = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DAB8);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_30DFC();
  sub_30984();
  sub_305C8();
  sub_301FC();
  sub_16ACF4(30);

  sub_30470();
  v15 = sub_5758(&qword_1E6380, &qword_16DAC0);
  v32._countAndFlagsBits = sub_30B10(v15);
  sub_311A4(v32);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v16 = sub_3115C();
  *(v14 + 168) = sub_30BC4(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_2FBF8(v17);

  sub_3024C(&unk_16DAB8);
  v31 = v18;
  v19 = swift_task_alloc();
  v20 = sub_30BB8(v19);
  *v20 = v21;
  sub_2FC2C(v20);
  sub_30DE4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_2D6C8()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2D79C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2DA34()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2DB08()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2DC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2DDA0()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2DE74()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2E10C()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2E1E0()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2E478()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2E54C()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2E7C4()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_D37C();
  v2 = *(v0 + 176);

  return v1();
}

uint64_t sub_2E840()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2E914()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2EBAC()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2EC80()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2ED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2EF18()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2EFEC()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2F284()
{
  sub_D2DC();
  sub_30E80();
  sub_30E74();
  if (v1)
  {
    sub_3118C(v0);
    sub_2FFF0();
    v2 = swift_task_alloc();
    v3 = sub_30BAC(v2);
    *v3 = v4;
    sub_3099C(v3);

    return sub_10FF90();
  }

  else
  {
    sub_30AEC();

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_2F358()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    v9 = *(v3 + 160);
  }

  else
  {
    sub_30F10();
  }

  sub_3021C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_2F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_30F90();
  sub_30C80();
  sub_30E68();
  if ((v11 & 1) == 0)
  {
    sub_31320();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_3055C();
    }

    sub_3066C();
    if (v14)
    {
      sub_30D74();
    }

    sub_30CE8();
    sub_3004C();
    v16 = *(v15 + 64);
    sub_D3C8();
    sub_3027C();
    v17();
    v18 = sub_312A8();
    sub_2FEA4(v18, &off_1D9928);
  }

  sub_30184();
  if (v20)
  {
    sub_302B8();
    sub_30E44();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    sub_30580(v19);
    sub_2FFF0();
    v30 = swift_task_alloc();
    v31 = sub_30BAC(v30);
    *v31 = v32;
    sub_3099C(v31);
    sub_30E44();

    return sub_10FF90();
  }
}

uint64_t sub_2F5D4()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_10A9C;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_2F674()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_10A9C;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_2F714()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_1039C;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_2F7B4()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_10A9C;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_2F854(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_2F868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2F8D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2F984()
{
  sub_D124((v0 + 536), v0 + 496);
  v1 = *(v0 + 528);
  sub_D084((v0 + 496), *(v0 + 520));
  result = v1 + 32;
  v3 = *(v1 + 32);
  return result;
}

__n128 *sub_2F9CC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 912) = 0x664F7265626D756ELL;
  *(v2 + 920) = 0xEF7379654B726143;
  return result;
}

uint64_t sub_2F9FC()
{
  sub_D124((v0 + 536), v0 + 496);
  v1 = *(v0 + 528);
  sub_D084((v0 + 496), *(v0 + 520));
  result = v1 + 32;
  v3 = *(v1 + 32);
  return result;
}

uint64_t sub_2FA38()
{
  v1 = v0[65];
  sub_D084(v0 + 61, v0[64]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

void sub_2FA74(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD0000000000000BFLL, v1 | 0x8000000000000000, 0xD000000000000045, (v2 | 0x8000000000000000), 65, 0xD00000000000002CLL, v3);
}

uint64_t sub_2FAB4@<X0>(char a1@<W8>)
{
  *(v2 + 72) = a1;
  *(v3 + 832) = v4 - 51;
  *(v3 + 840) = (v1 - 32) | 0x8000000000000000;
  return v3 + 832;
}

__n128 *sub_2FB14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 816) = 0x6C6E4F43464E7369;
  *(v2 + 824) = 0xE900000000000079;
  return result;
}

__n128 *sub_2FB5C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 816) = 0x6C6E4F43464E7369;
  return result;
}

__n128 *sub_2FB90(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 896) = 0x707954726F727265;
  *(v2 + 904) = 0xE900000000000065;
  return result;
}

__n128 *sub_2FBB8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 928) = 0x707954726F727265;
  *(v2 + 936) = 0xE900000000000065;
  return result;
}

void sub_2FBF8(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v3 + 125, v5 | 0x8000000000000000, v3 + 24, (v4 | 0x8000000000000000), 74, v1, v2);
}

uint64_t sub_2FC2C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 96);
  return v2;
}

void sub_2FC44(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD0000000000000BFLL, v3 | 0x8000000000000000, 0xD000000000000045, (v2 | 0x8000000000000000), 65, 0xD00000000000002CLL, v1);
}

void sub_2FC80(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD000000000000099, v3 | 0x8000000000000000, 0xD00000000000001BLL, (v2 | 0x8000000000000000), 20, 0xD000000000000026, v1);
}

void sub_2FCD0(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD0000000000000BFLL, v1 | 0x8000000000000000, 0xD000000000000045, (v2 | 0x8000000000000000), 41, 0xD000000000000047, v3);
}

void sub_2FD0C(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v1 + 122, v3 | 0x8000000000000000, 0xD000000000000045, (v4 | 0x8000000000000000), 47, v2, v5);
}

__n128 sub_2FD74()
{
  sub_D13C((v0 + 776));
  result = *(v0 + 736);
  v2 = *(v0 + 752);
  *(v0 + 296) = result;
  *(v0 + 312) = v2;
  *(v0 + 328) = *(v0 + 768);
  v3 = *(v0 + 984);
  return result;
}

__n128 sub_2FDA4()
{
  sub_D13C((v0 + 616));
  result = *(v0 + 576);
  v2 = *(v0 + 592);
  *(v0 + 296) = result;
  *(v0 + 312) = v2;
  *(v0 + 328) = *(v0 + 608);
  v3 = *(v0 + 984);
  return result;
}

__n128 sub_2FDD4()
{
  sub_D13C((v0 + 696));
  result = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 296) = result;
  *(v0 + 312) = v2;
  *(v0 + 328) = *(v0 + 688);
  v3 = *(v0 + 984);
  return result;
}

__n128 sub_2FE04()
{
  sub_D13C((v0 + 456));
  result = *(v0 + 416);
  v2 = *(v0 + 432);
  *(v0 + 296) = result;
  *(v0 + 312) = v2;
  *(v0 + 328) = *(v0 + 448);
  v3 = *(v0 + 984);
  return result;
}

void sub_2FE34(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v4 + 126, v1 | 0x8000000000000000, 0xD00000000000001BLL, (v2 | 0x8000000000000000), 32, v4 + 14, v3);
}

void sub_2FE6C(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v3 + 126, v4 | 0x8000000000000000, 0xD00000000000001BLL, (v5 | 0x8000000000000000), 29, v1, v2);
}

uint64_t sub_2FEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  *(v5 + 96) = v4;
  *(v3 + 16) = v2;
  sub_D124((v5 + 96), v3 + 40 * v6 + 32);
  sub_D13C((v5 + 56));
}

void sub_2FF0C(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v4 + 126, v1 | 0x8000000000000000, 0xD00000000000001BLL, (v2 | 0x8000000000000000), 23, v4 + 15, v3);
}

void sub_2FF40(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v2 + 122, v1 | 0x8000000000000000, 0xD000000000000045, (v3 | 0x8000000000000000), 41, v2 + 2, v4);
}

void sub_2FF74(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v2 + 122, v1 | 0x8000000000000000, 0xD000000000000045, (v3 | 0x8000000000000000), 35, v2 + 22, v4);
}

void sub_2FFA8(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v2 + 122, v1 | 0x8000000000000000, 0xD000000000000045, (v3 | 0x8000000000000000), 29, v2 - 21, v4);
}

uint64_t *sub_2FFF0()
{
  result = sub_D084((v0 + 16), *(v0 + 40));
  v2 = *result;
  return result;
}

void sub_30010(os_log_type_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, 0x20000uLL, a3, a4, 0xD000000000000041, a6, 57, v9, a9);
}

double sub_30064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = 0.0;
  *a13 = 0u;
  *(a13 + 16) = 0u;
  *(a13 + 32) = 0;
  v15 = *(v13 + 984);
  return result;
}

void sub_3007C(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 34;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

void sub_30094(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 34;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

void sub_300AC()
{
  v4 = *(v0 + 984);
  v1 = *(v0 + 976);
  v2 = *(v0 + 1090);
  v3 = *(v0 + 960);
}

uint64_t sub_300C4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 208);
  return v2;
}

uint64_t sub_300DC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 208);
  return v2;
}

uint64_t sub_300F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  v5 = *(v2 + 264);
  return v2 + 56;
}

uint64_t *sub_30120@<X0>(uint64_t a1@<X8>)
{
  result = sub_D084((a1 + v1), *(a1 + v1 + 24));
  v3 = *result;
  return result;
}

uint64_t sub_30184()
{
  result = sub_D13C(v1 + 2);
  v3 = v1[18];
  ++v1[19];
  v1[20] = v0;
  return result;
}

uint64_t *sub_301BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_D084((v1 + a1), *(v1 + a1 + 24));
  v3 = *result;
  return result;
}

void sub_301DC()
{
  v1 = v0[126];
  v2 = v0[123];
  v3 = v0[120];
}

void sub_3022C()
{
  v0[12] = v1;
  v0[9] = 0x74754F656D6974;
  v0[10] = 0xE700000000000000;
}

uint64_t sub_3024C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_302DC()
{
  v2 = *(v0 + 976);
  v3 = *(v0 + 1090);
  v4 = *(v0 + 960);
  v6 = *(v0 + 984);

  return sub_16A584();
}

void sub_30304()
{
  *(v0 + 864) = 0;
  *(v0 + 872) = 0xE000000000000000;
  v2._countAndFlagsBits = 0x3A726F727245;
  v2._object = 0xE600000000000000;

  sub_16A744(v2);
}

uint64_t sub_30338()
{
  sub_D13C((v1 + 16));
  v2 = *(v1 + 8);
  return v0;
}

void sub_3035C()
{
  *(v0 + 840) = 0;
  *(v0 + 848) = 0xE000000000000000;
  v2._countAndFlagsBits = 0x3A726F727245;
  v2._object = 0xE600000000000000;

  sub_16A744(v2);
}

__n128 sub_30390()
{
  sub_D13C((v0 + 768));
  result = *(v0 + 728);
  v2 = *(v0 + 744);
  *(v0 + 368) = result;
  *(v0 + 384) = v2;
  *(v0 + 400) = *(v0 + 760);
  return result;
}

__n128 sub_303C4()
{
  sub_D13C((v0 + 448));
  result = *(v0 + 408);
  v2 = *(v0 + 424);
  *(v0 + 368) = result;
  *(v0 + 384) = v2;
  *(v0 + 400) = *(v0 + 440);
  return result;
}

__n128 sub_303F8()
{
  sub_D13C((v0 + 688));
  result = *(v0 + 648);
  v2 = *(v0 + 664);
  *(v0 + 368) = result;
  *(v0 + 384) = v2;
  *(v0 + 400) = *(v0 + 680);
  return result;
}

__n128 sub_3042C()
{
  sub_D13C((v0 + 608));
  result = *(v0 + 568);
  v2 = *(v0 + 584);
  *(v0 + 368) = result;
  *(v0 + 384) = v2;
  *(v0 + 400) = *(v0 + 600);
  return result;
}

uint64_t *sub_30490(uint64_t a1, uint64_t a2)
{
  result = sub_D084(v2, a2);
  v4 = *result;
  return result;
}

NSDictionary sub_304AC()
{

  return sub_16A5A4();
}

uint64_t sub_304CC()
{

  return sub_16A5C4();
}

NSDictionary sub_3051C()
{

  return sub_16A5A4();
}

uint64_t sub_3053C()
{

  return sub_16A5C4();
}

void sub_3055C()
{
  v2 = *(v0 + 16) + 1;

  sub_10890C();
}

uint64_t sub_30580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136) + 40 * a1 + 32;

  return sub_10824(v3, v1 + 16);
}

void sub_305A4()
{

  sub_16ACF4(25);
}

uint64_t sub_305C8()
{
  *(v0 + 152) = *(v0 + 200);
}

uint64_t sub_305EC()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);

  return sub_16A584();
}

uint64_t sub_3061C()
{

  return sub_16A5C4();
}

NSDictionary sub_3063C()
{

  return sub_16A5A4();
}

void sub_3077C()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
}

double sub_307E0()
{
  result = 0.0;
  v0[23] = 0u;
  v0[24] = 0u;
  v0[25] = 0u;
  v0[26] = 0u;
  v0[27] = 0u;
  return result;
}

id sub_30808()
{

  return sub_61244();
}

void sub_30828()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
}

uint64_t sub_30848()
{
  v2 = *(v0 + 1089);

  return sub_16A584();
}

void sub_30868(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 - 46;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

void sub_30888(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 - 3;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

void sub_308A8(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 16;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_308C8()
{

  return sub_16A5C4();
}

uint64_t sub_308E8()
{
  v2 = *(v0 + 1091);

  return sub_D13C((v0 + 336));
}

NSDictionary sub_30908()
{

  return sub_16A5A4();
}

uint64_t sub_30928()
{

  return sub_16AC84();
}

uint64_t sub_30948()
{

  return sub_16AC84();
}

uint64_t sub_309A8()
{

  return sub_D188(v0 + 536, v1, v2);
}

uint64_t *sub_309C4(void *a1, uint64_t a2)
{
  result = sub_D084(a1, a2);
  v3 = *result;
  return result;
}

uint64_t sub_309DC()
{

  return sub_D188(v0, v1, v2);
}

void sub_30A2C(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v3 + 108, v5 | 0x8000000000000000, v3 + 7, (v4 | 0x8000000000000000), 83, v1, v2);
}

void sub_30A60()
{
  v2 = *(v0 + 984);
  v3 = *(v0 + 960);
}

uint64_t sub_30AB4()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);

  return sub_16A584();
}

void sub_30AD0(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, 57, v9, a9);
}

uint64_t sub_30B10(uint64_t a1)
{
  *(v1 + 160) = a1;

  return sub_16A7E4();
}

uint64_t sub_30B38(uint64_t a1, uint64_t a2)
{
  *(v2 + 952) = sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_30BEC()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

double sub_30C10()
{
  result = 0.0;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0;
  return result;
}

void sub_30C20(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 - 34;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_30CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_2F868(v11 + 376, a11, a3, a4);
}

uint64_t sub_30CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_2F868(v12 + 376, a12, a3, a4);
}

uint64_t sub_30CE8()
{
  v2 = *(v0 + 80);

  return sub_2F8D0(v0 + 56, v2);
}

void sub_30D04()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_16A744(v3);
}

id sub_30D20@<X0>(void *a1@<X8>)
{

  return a1;
}

id sub_30D3C()
{

  return sub_61244();
}

void sub_30D58()
{

  sub_16ACF4(69);
}

void sub_30D74()
{

  sub_10890C();
}

uint64_t sub_30D90()
{

  return sub_D124((v0 + 56), v0 + 16);
}

uint64_t sub_30DAC()
{

  return sub_16AC84();
}

uint64_t sub_30DC8()
{

  return sub_16AC84();
}

void sub_30E74()
{
  v2[19] = 0;
  v2[20] = v1;
  v2[18] = v0;
}

uint64_t sub_30F4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 1008) = sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_30F78()
{

  return swift_allocObject();
}

uint64_t sub_30FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4, v5 + 536, a3, a4);
}

uint64_t sub_30FC0()
{
}

id sub_30FD8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_30FF0()
{

  return sub_16AC84();
}

void sub_31008(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, a7, v9, a9);
}

uint64_t sub_31020()
{

  return sub_16A9A4();
}

uint64_t sub_31038()
{
  v3 = *(v1 + 1025);

  return sub_93A6C(v0);
}

uint64_t sub_31054()
{

  return sub_16AD84();
}

id sub_31070()
{

  return sub_61244();
}

uint64_t sub_3108C()
{

  return sub_16AD84();
}

uint64_t sub_310A8()
{

  return sub_16AC84();
}

uint64_t sub_310C4()
{

  return sub_16AC84();
}

uint64_t sub_310E0()
{

  return sub_16AC84();
}

uint64_t sub_310FC()
{
}

uint64_t sub_31114()
{

  return sub_16A584();
}

void sub_3112C(Swift::String a1)
{
  a1._object = v1;

  sub_16A744(a1);
}

uint64_t sub_31144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 368, v4 + 528, a3, a4);
}

uint64_t sub_3115C()
{

  return sub_16A584();
}

uint64_t sub_31174()
{

  return sub_16A9A4();
}

uint64_t sub_3118C@<X0>(uint64_t a1@<X8>)
{

  return sub_10824(a1 + 32, v1 + 16);
}

void sub_311A4(Swift::String a1)
{

  sub_16A744(a1);
}

void sub_311BC(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000002DLL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

id sub_311DC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_31200()
{
}

uint64_t sub_31218()
{

  return swift_dynamicCast();
}

uint64_t sub_31230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 376, v5, a3, a4);
}

uint64_t sub_31248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 376, v4 + 336, a3, a4);
}

uint64_t sub_31260(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v5 + 376, v4, a3, a4);
}

uint64_t sub_31278()
{

  return sub_93A6C(v0);
}

uint64_t sub_31290@<X0>(uint64_t a1@<X8>)
{

  return sub_10824(a1 + v1, v2 + 16);
}

uint64_t sub_312A8()
{
  v2 = *v0;

  return type metadata accessor for WalletCarKey();
}

uint64_t sub_312C0(uint64_t a1)
{
  *(v1 + 184) = a1;
  *(v1 + 192) = v2;
}

uint64_t sub_312D8(char a1)
{
  *(v1 + 1092) = a1;
}

uint64_t sub_312F0(uint64_t a1)
{
  *(v1 + 248) = a1;
  *(v1 + 256) = v2;
}

id sub_31308(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_31320()
{

  return sub_10824(v0 + 16, v0 + 56);
}

uint64_t sub_31338()
{

  return sub_16AD84();
}

uint64_t sub_31350()
{

  return sub_16A9A4();
}

uint64_t sub_31368()
{

  return sub_16A584();
}

void sub_31380()
{
}

uint64_t sub_31398()
{
}

id sub_313B0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_313C8()
{

  return sub_16A584();
}

uint64_t sub_31428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 328, v4 + 448, a3, a4);
}

uint64_t sub_31440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 328, v4 + 608, a3, a4);
}

uint64_t sub_31458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 328, v4 + 768, a3, a4);
}

uint64_t sub_31470(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2F868(v4 + 328, v4 + 688, a3, a4);
}

id sub_31488()
{

  return sub_61244();
}

uint64_t sub_314A0()
{
  *(v1 + 944) = v0;

  return swift_errorRetain();
}

uint64_t sub_314B8()
{
  *(v1 + 888) = v0;

  return swift_errorRetain();
}

uint64_t sub_314D0()
{
}

void sub_314E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_31564(uint64_t result, char a2, char a3)
{
  *(v4 + 968) = v3;
  *(v4 + 1090) = a3;
  *(v4 + 1089) = a2;
  *(v4 + 960) = result;
  return result;
}

void sub_31578(uint64_t a1)
{
  v2._countAndFlagsBits = a1 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
  v2._object = 0xE700000000000000;

  sub_16A744(v2);
}

uint64_t sub_315A0(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      sub_317CC();
      result = v2 + 2;
      break;
    case 1:
      sub_317CC();
      result = v7 + 26;
      break;
    case 2:
      sub_317CC();
      result = v5 + 42;
      break;
    case 3:
      sub_317CC();
      result = v6 + 10;
      break;
    case 4:
      sub_317CC();
      result = v4 + 7;
      break;
    default:
      sub_16ACF4(20);

      v9._object = 0x8000000000180F90;
      v9._countAndFlagsBits = 0xD000000000000012;
      sub_16A744(v9);
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_316D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_316E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_316F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_3179C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsActivateSignalCATsSimple()
{
  result = qword_1E6388;
  if (!qword_1E6388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3187C(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_3191C, 0, 0);
}

uint64_t sub_3191C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_16D3A0;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_10888((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 64);
  *(v3 + 80) = 0xD000000000000013;
  *(v3 + 88) = 0x8000000000181140;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v8;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_31B04;
  v10 = *(v0 + 24);

  return v12(0xD000000000000034, 0x8000000000181100, v3);
}

uint64_t sub_31B04(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_31C60, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_31C60()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_31CCC()
{
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_31D84;

  return v3(0xD00000000000002FLL, 0x80000000001810D0, _swiftEmptyArrayStorage);
}

uint64_t sub_31D84(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_31E84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_31ED8(a1, a2);
}

uint64_t sub_31ED8(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_2F868(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_32054(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_3215C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

BOOL sub_321BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1693E4();
  sub_37404();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  sub_A138();
  v12 = (v11 - v10);
  sub_169384();
  v13 = v2[31];
  v14 = v2[32];
  sub_D084(v2 + 28, v13);
  sub_37404();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  sub_A138();
  v21 = sub_376C8(v20);
  v22(v21);
  (*(v14 + 8))(v13, v14);
  (*(v16 + 8))(a1, v13);
  sub_8F624();
  sub_86E4(v12, &_swiftEmptySetSingleton, &v38);

  (*(v6 + 8))(v12, v4);
  v23 = v39;
  if (v39)
  {
    sub_D124(&v38, &v40);
    sub_D124(&v40, &v38);
    sub_37710();
    sub_37314(&v38, (v2 + 23));
    swift_endAccess();
  }

  else
  {
    sub_D188(&v38, &qword_1E5F80, &unk_16E7E0);
    sub_10824((v2 + 18), &v40);
    v24 = sub_D084(&v40, v41);
    v25 = v2[31];
    v26 = v2[32];
    sub_D084(v2 + 28, v25);
    sub_37404();
    v28 = v27;
    v30 = *(v29 + 64);
    __chkstk_darwin(v31);
    sub_A138();
    v33 = sub_376C8(v32);
    v34(v33);
    v35 = (*(v26 + 8))(v25, v26);
    (*(v28 + 8))(&_swiftEmptySetSingleton, v25);
    v36 = *v24;
    sub_D2CA8(v35);
    sub_D13C(&v40);
  }

  return v23 != 0;
}

uint64_t sub_324C4()
{
  type metadata accessor for CarCommandsActionFlow();
  sub_372CC(&qword_1E65B0, v0, type metadata accessor for CarCommandsActionFlow);
  return sub_168934();
}

uint64_t sub_32550(uint64_t a1)
{
  *(v2 + 824) = v1;
  *(v2 + 816) = a1;
  return sub_D2B0();
}

uint64_t sub_32568()
{
  v1 = *(v0 + 824);
  sub_37474();
  sub_16ACF4(33);
  *(v0 + 792) = v59;
  *(v0 + 800) = v60;
  sub_375D8();
  v61._countAndFlagsBits = 0xD00000000000001FLL;
  sub_16A744(v61);
  swift_beginAccess();
  sub_371B0(v1 + 16, v0 + 16);
  sub_16AD84();
  sub_371E8(v0 + 16);
  v2 = *(v0 + 792);
  v3 = *(v0 + 800);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = sub_16A584();
  v5 = sub_9DA0(v4, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD00000000000007BLL, 0x8000000000181200, 0x2865747563657865, 0xE900000000000029, 92, v2, v3);

  sub_371B0(v1 + 16, v0 + 64);
  v7 = *(v0 + 64);
  *(v0 + 832) = v7;
  switch(*(v0 + 104))
  {
    case 1:
      v36 = *(v0 + 824);
      v37 = *(v0 + 816);
      sub_D124((v0 + 64), v0 + 536);
      type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
      swift_allocObject();
      sub_10824(v36 + 64, v0 + 576);
      v38 = sub_5758(&qword_1E6598, &qword_16DFD0);
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_372CC(&qword_1E65A0, 255, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy);
      *(v0 + 808) = sub_168744();
      sub_10824(v0 + 536, v0 + 616);
      v41 = swift_allocObject();
      *(v41 + 16) = v36;
      sub_D124((v0 + 616), v41 + 24);
      sub_37284(&qword_1E65A8, &qword_1E6598, &qword_16DFD0);

      sub_168D34();

      sub_D13C((v0 + 536));

      goto LABEL_22;
    case 2:
      v17 = *(v0 + 824);
      sub_D124((v0 + 64), v0 + 416);
      sub_10824((v17 + 18), v0 + 456);
      v18 = sub_D084((v0 + 456), *(v0 + 480));
      v19 = v17[31];
      v20 = v17[32];
      sub_30A9C(v17 + 28, v19);
      sub_37404();
      v22 = v21;
      v24 = *(v23 + 64);
      v25 = sub_D3C8();
      (*(v22 + 16))(v25, v17, v19);
      LOBYTE(v20) = (*(v20 + 8))(v19, v20);
      (*(v22 + 8))(v25, v19);
      v26 = *v18;
      sub_D2C6C(v20);

      sub_D13C((v0 + 456));
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 856) = v27;
      *v27 = v28;
      v27[1] = sub_33040;
      v29 = *(v0 + 824);
      sub_375B0();

      return sub_340C8(v30, v31);
    case 3:
      v33 = swift_task_alloc();
      *(v0 + 864) = v33;
      *v33 = v0;
      sub_376A8(v33);
      sub_375B0();

      return sub_349D0(v34);
    case 4:
      v15 = swift_task_alloc();
      *(v0 + 872) = v15;
      *v15 = v0;
      sub_376A8(v15);
      sub_375B0();

      return sub_35014();
    case 5:
      v42 = *(v0 + 72);
      v43 = *(v0 + 80) | *(v0 + 88) | *(v0 + 96);
      if (!(v43 | v7 | v42))
      {
        v53 = *(v0 + 824);
        v54 = *(v0 + 816);
        sub_33C58(v0 + 208);
        sub_37710();
        sub_37178(v0 + 208, v1 + 16);
        swift_endAccess();
        sub_168D24();
LABEL_22:
        sub_D37C();
        sub_375B0();

        __asm { BRAA            X1, X16 }
      }

      if (v7 == 1 && !(v43 | v42))
      {
        v44 = sub_37698();
        sub_10824(v44, v0 + 336);
        sub_373C8((v0 + 336), *(v0 + 360));
        v46 = *(v45 + 64);
        sub_D3C8();
        sub_374D4();
        v47();
        v48 = sub_374A4();
        v49(v48);
        v50 = sub_37588();
        v51(v50);
        v52 = *v5;
        sub_D2CC4(31);

        sub_D13C((v0 + 336));
        sub_168D54();
        goto LABEL_22;
      }

      v57 = swift_task_alloc();
      *(v0 + 840) = v57;
      *v57 = v0;
      sub_376A8(v57);
      sub_375B0();

      return sub_359B0();
    default:
      sub_D124((v0 + 64), v0 + 656);
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 848) = v8;
      *v8 = v9;
      v8[1] = sub_32ED0;
      v10 = *(v0 + 824);
      sub_375B0();

      return sub_33D7C(v11, v12);
  }
}

uint64_t sub_32CDC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 840);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_32DC0()
{
  sub_30C80();
  v3 = sub_37698();
  sub_10824(v3, v1 + 256);
  sub_373C8((v1 + 256), *(v1 + 280));
  v5 = *(v4 + 64);
  sub_D3C8();
  sub_374D4();
  v6();
  v7 = sub_374A4();
  v8(v7);
  v9 = sub_37588();
  v10(v9);
  v11 = *v0;
  sub_D2B90(1, v2);

  sub_D13C((v1 + 256));
  sub_168D54();
  sub_D37C();

  return v12();
}

uint64_t sub_32ED0()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 848);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_32FB4()
{
  sub_D2DC();
  v1 = v0[103];
  v2 = v0[102];
  sub_37710();
  sub_37178((v0 + 20), v1 + 16);
  swift_endAccess();
  sub_168D24();
  sub_D13C(v0 + 82);
  sub_D37C();

  return v3();
}

uint64_t sub_33040()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 856);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_33124()
{
  sub_30C80();
  v3 = v1[103];
  v4 = v1[102];
  sub_37710();
  sub_37178((v1 + 14), v3 + 16);
  swift_endAccess();
  sub_10824(v3 + 144, (v1 + 62));
  sub_373C8(v1 + 62, v1[65]);
  v6 = *(v5 + 64);
  sub_D3C8();
  sub_374D4();
  v7();
  v8 = sub_374A4();
  v9(v8);
  v10 = sub_37588();
  v11(v10);
  v12 = *v0;
  sub_D2C8C(v2);

  sub_D13C(v1 + 62);
  sub_168D24();
  sub_D13C(v1 + 52);
  sub_D37C();

  return v13();
}

uint64_t sub_33264()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 864);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_33348()
{
  sub_30C80();
  v3 = v1[104];
  v4 = sub_37698();
  sub_10824(v4, (v1 + 47));
  sub_373C8(v1 + 47, v1[50]);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = sub_D3C8();
  v10 = *(v6 + 16);
  sub_375CC();
  v11();
  v12 = sub_374A4();
  v14 = v13(v12);
  (*(v6 + 8))(v9, v2);
  v15 = *v0;
  sub_D2CA8(v14);

  sub_D13C(v1 + 47);
  sub_168D54();

  sub_D37C();

  return v16();
}

uint64_t sub_33474()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 872);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_33558()
{
  sub_30C80();
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  sub_10824((v2 + 18), (v0 + 37));
  v4 = sub_D084(v0 + 37, v0[40]);
  v5 = v2[31];
  v6 = v2[32];
  sub_30A9C(v2 + 28, v5);
  sub_37404();
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  (*(v8 + 16))(v11, v2, v5);
  LOBYTE(v6) = (*(v6 + 8))(v5, v6);
  (*(v8 + 8))(v11, v5);
  v12 = *v4;
  sub_D2B90(1, v6);

  sub_D13C(v0 + 37);
  sub_168D54();

  sub_D37C();

  return v13();
}

uint64_t sub_336C4(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = sub_5758(&qword_1E6048, &qword_16D890);
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v68 = &v62 - v7;
  v69 = sub_169004();
  sub_37404();
  v65 = v8;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v62 - v14;
  sub_169364();
  sub_37404();
  v66 = v16;
  v67 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_A138();
  v21 = v20 - v19;
  v22 = sub_5758(&qword_1E6588, &qword_16DFC8);
  sub_37404();
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  v29 = &v62 - v28;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_16ACF4(27);

  v71 = 0xD000000000000019;
  v72 = 0x80000000001813F0;
  sub_37284(&qword_1E6590, &qword_1E6588, &qword_16DFC8);
  v74._countAndFlagsBits = sub_16AE24();
  sub_16A744(v74);

  v30 = v71;
  v31 = v72;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v32 = sub_16A584();
  sub_9DA0(v32, qword_1E65C0);
  v33 = sub_16A9A4();
  sub_386D8(v33, 2uLL, 0xD00000000000007BLL, 0x8000000000181200, 0xD000000000000025, 0x80000000001813C0, 137, v30, v31);

  (*(v24 + 16))(v29, a1, v22);
  v34 = *(v24 + 88);
  v35 = sub_37740();
  v37 = v36(v35);
  if (v37 != enum case for PromptResult.answered<A>(_:))
  {
    if (v37 == enum case for PromptResult.error<A>(_:))
    {
      v45 = *(v24 + 8);
      v46 = sub_37740();
      v47(v46);
    }

    else if (v37 != enum case for PromptResult.cancelled<A>(_:) && v37 != enum case for PromptResult.unanswered<A>(_:))
    {
      sub_3767C();
      v73 = v56;
      v57 = v70;
      sub_37710();
      sub_37178(&v71, v57 + 16);
      swift_endAccess();
      v58 = *(v24 + 8);
      v59 = sub_37740();
      return v60(v59);
    }

    goto LABEL_15;
  }

  v38 = *(v24 + 96);
  v39 = sub_37740();
  v40(v39);
  v42 = v66;
  v41 = v67;
  (*(v66 + 32))(v21, v29, v67);
  v43 = v68;
  sub_169354();
  v44 = v69;
  if (sub_9E2C(v43, 1, v69) == 1)
  {
    (*(v42 + 8))(v21, v41);
    sub_D188(v43, &qword_1E6048, &qword_16D890);
LABEL_15:
    sub_3767C();
    goto LABEL_16;
  }

  v48 = v65;
  v49 = v63;
  (*(v65 + 32))(v63, v43, v44);
  v50 = v64;
  (*(v48 + 104))(v64, enum case for ConfirmationResponse.confirmed(_:), v44);
  v51 = sub_168FF4();
  v52 = *(v48 + 8);
  v52(v50, v44);
  v52(v49, v44);
  (*(v42 + 8))(v21, v41);
  if ((v51 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_10824(v62, &v71);
  v53 = 2;
LABEL_16:
  v73 = v53;
  v55 = v70;
  sub_37710();
  sub_37178(&v71, v55 + 16);
  return swift_endAccess();
}

uint64_t sub_33C58@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_370C0(v1 + 184, &v7);
  if (v8)
  {
    sub_D124(&v7, v9);
    result = sub_D124(v9, a1);
    v4 = 0;
  }

  else
  {
    sub_D188(&v7, &qword_1E5F80, &unk_16E7E0);
    type metadata accessor for CarCommandsError();
    sub_372CC(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    v5 = swift_allocError();
    *v6 = 0xD000000000000010;
    v6[1] = 0x80000000001813A0;
    result = swift_storeEnumTagMultiPayload();
    *a1 = v5;
    v4 = 4;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_33D7C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return sub_D2B0();
}

uint64_t sub_33D94()
{
  sub_10824(v0[9] + 224, (v0 + 2));
  v1 = v0[6];
  sub_30A9C(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_33EBC;
  v5 = sub_376F8(v0[8]);

  return v6(v5);
}

uint64_t sub_33EBC()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3 & 1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_33FD0()
{
  sub_1696C();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_D13C((v0 + 16));
  sub_10824(v3, v2);
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(*(v0 + 56) + 40) = v4;
  sub_D37C();

  return v5();
}

uint64_t sub_34058()
{
  sub_D2DC();
  v1 = v0[11];
  v2 = v0[7];
  sub_D13C(v0 + 2);
  *v2 = v1;
  *(v0[7] + 40) = 4;
  sub_D37C();

  return v3();
}

uint64_t sub_340C8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return sub_D2B0();
}

uint64_t sub_340E0()
{
  sub_1696C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10824(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 104) = v4;
  *(v4 + 16) = v3;
  sub_D124((v0 + 16), v4 + 24);
  v5 = async function pointer to withTimeout<A>(seconds:operation:)[1];
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 112) = v6;
  *v6 = v7;
  v6[1] = sub_341FC;
  v8 = *(v0 + 80);
  v9.n128_u64[0] = 3.0;

  return withTimeout<A>(seconds:operation:)(v8, &unk_16DFC0, v4, &type metadata for CarCommandsActionFlow.State, v9);
}

uint64_t sub_341FC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 104);

    sub_D37C();

    return v13();
  }
}

uint64_t sub_3431C()
{
  v1 = v0[15];
  v2 = v0[13];

  sub_16ACF4(47);
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0x8000000000181340;
  sub_16A744(v17);
  v0[9] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v3 = v0[7];
  v4 = v0[8];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = v0[15];
  v6 = v0[10];
  v7 = sub_16A584();
  sub_30BC4(v7, qword_1E65C0);
  sub_16A9A4();
  sub_37660();
  sub_386D8(v8, v9, v10, v11, v12, v13, 192, v3, v4);

  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 5;
  sub_D37C();

  return v14();
}

uint64_t sub_344C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return _swift_task_switch(sub_344E4, 0, 0);
}

uint64_t sub_344E4()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    sub_10824(Strong + 224, (v0 + 2));
    v3 = v0[6];
    sub_30A9C(v0 + 2, v0[5]);
    v4 = *(v3 + 24);
    v12 = v4 + *v4;
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_34684;
    v7 = sub_376F8(v0[15]);

    return v8(v7);
  }

  else
  {
    v10 = v0[13];
    *v10 = 1;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 5;
    sub_D37C();

    return v11();
  }
}

uint64_t sub_34684()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 136);
  *v3 = *v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_34788()
{
  sub_D2DC();
  v1 = v0[16];
  sub_D13C(v0 + 2);
  v2 = sub_16A8B4();

  v3 = v0[18];
  v4 = v0[13];
  if (v2)
  {
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 5;
  }

  else
  {
    *v4 = v3;
    *(v4 + 40) = 3;
  }

  sub_D37C();

  return v5();
}

uint64_t sub_34834()
{
  v1 = v0[19];
  sub_D13C(v0 + 2);
  sub_16ACF4(39);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000025;
  v17._object = 0x8000000000181370;
  sub_16A744(v17);
  v0[12] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v2 = v0[10];
  v3 = v0[11];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = sub_16A584();
  sub_30BC4(v7, qword_1E65C0);
  sub_16A9A4();
  sub_37660();
  sub_386D8(v8, v9, v10, v11, v12, v13, 187, v2, v3);

  *v6 = v4;
  *(v6 + 40) = 4;
  sub_D37C();

  return v14();
}

uint64_t sub_349D0(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return sub_D2B0();
}

uint64_t sub_349E4()
{
  sub_1696C();
  v2 = v0[20];
  v1 = v0[21];
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = xmmword_16D440;
  *(v3 + 32) = v2;
  sub_10824(v1 + 104, (v0 + 7));
  v4 = v2;
  swift_task_alloc();
  sub_D3E0();
  v0[23] = v5;
  *v5 = v6;
  v5[1] = sub_34AC8;
  v7 = sub_376B8();

  return sub_1359E4(v7, v3, v8);
}

uint64_t sub_34AC8()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *(v5 + 176);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v3 + 192) = v0;

  sub_D13C((v3 + 56));

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_34BF0()
{
  sub_1696C();
  sub_10824(v0[21] + 64, (v0 + 12));
  v1 = v0[16];
  sub_30A9C(v0 + 12, v0[15]);
  v2 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[25] = v3;
  *v3 = v4;
  v5 = sub_374BC(v3);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5);
}

uint64_t sub_34CA0()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_34D9C()
{
  sub_D2DC();
  sub_37634();
  sub_D37C();

  return v0();
}

uint64_t sub_35014()
{
  sub_D2DC();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_16A164();
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[25] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_35244()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 232);
  *v4 = *v1;
  v3[30] = v7;
  v3[31] = v0;

  if (!v0)
  {
    v8 = v3[28];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_35350()
{
  sub_D2DC();
  sub_10824(v0[24] + 104, (v0 + 7));
  swift_task_alloc();
  sub_D3E0();
  v0[32] = v1;
  *v1 = v2;
  v1[1] = sub_353EC;
  v3 = v0[30];
  sub_376B8();

  return sub_11A570();
}

uint64_t sub_353EC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 264) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_355D4()
{
  sub_1696C();
  sub_10824(v0[24] + 64, (v0 + 12));
  v1 = v0[16];
  sub_30A9C(v0 + 12, v0[15]);
  v2 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[34] = v3;
  *v3 = v4;
  v5 = sub_374BC(v3);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5);
}

uint64_t sub_35684()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_35780()
{
  sub_D2DC();

  sub_37634();
  v1 = *(v0 + 200);

  sub_D37C();

  return v2();
}

uint64_t sub_359B0()
{
  sub_D2DC();
  v1[20] = v0;
  v2 = type metadata accessor for CarNameParameters(0);
  v1[21] = v2;
  sub_D414(v2);
  v4 = *(v3 + 64);
  v1[22] = sub_D3C8();
  v5 = sub_16A164();
  sub_D414(v5);
  v7 = *(v6 + 64);
  v1[23] = sub_D3C8();
  v8 = sub_D388();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_35A4C()
{
  sub_1696C();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[24] = sub_16A094();
  v4 = sub_16A0C4();
  sub_5370(v1, 1, 1, v4);
  *(v1 + v3[5]) = 2;
  *(v1 + v3[6]) = 2;
  sub_37614(v3[7]);
  sub_37614(v3[8]);
  sub_37614(v3[9]);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_35B64;
  v6 = v0[22];

  return sub_15717C(v6);
}

uint64_t sub_35B64()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[22];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v11 + 208) = v10;
  *(v11 + 216) = v0;

  sub_36F84(v7);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_35CA4()
{
  sub_D2DC();
  sub_10824(v0[20] + 104, (v0 + 7));
  swift_task_alloc();
  sub_D3E0();
  v0[28] = v1;
  *v1 = v2;
  v1[1] = sub_35D40;
  v3 = v0[26];
  sub_376B8();

  return sub_11A570();
}

uint64_t sub_35D40()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 232) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_35E44()
{
  sub_1696C();
  sub_10824(v0[20] + 64, (v0 + 12));
  v1 = v0[16];
  sub_30A9C(v0 + 12, v0[15]);
  v2 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[30] = v3;
  *v3 = v4;
  v5 = sub_374BC(v3);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v5);
}

uint64_t sub_35EF4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 248) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_35FF0()
{
  sub_D2DC();

  sub_37634();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  sub_D37C();

  return v3();
}

uint64_t *sub_363D0()
{
  sub_371E8((v0 + 2));
  sub_D13C(v0 + 8);
  sub_D13C(v0 + 13);
  sub_D13C(v0 + 18);
  sub_D188((v0 + 23), &qword_1E5F80, &unk_16E7E0);
  sub_D13C(v0 + 28);
  return v0;
}

uint64_t sub_36428()
{
  sub_363D0();

  return _swift_deallocClassInstance(v0, 264, 7);
}

uint64_t sub_36480(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_3649C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_364B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_364EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_36538(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_36598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_36648;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_36648()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_D254();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_36758(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_32550(a1);
}

uint64_t sub_367F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CarCommandsActionFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_36830()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E040);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_368B8()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E030);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36940()
{
  sub_1696C();
  v0 = sub_37484(&unk_16DFE0);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_369C8()
{
  sub_1696C();
  v0 = sub_37484(&unk_16DFF0);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36A50()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_D254();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_36B48()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E050);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36BD0()
{
  sub_D2DC();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_3738C;

  return sub_321B8();
}

uint64_t sub_36C54()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E010);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36CDC()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E000);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36D64()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E020);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36DEC()
{
  sub_1696C();
  v0 = sub_37484(dword_16E080);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36E74()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E070);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36EFC()
{
  sub_1696C();
  v0 = sub_37484(&unk_16E060);
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_37390(v1);

  return v4(v3);
}

uint64_t sub_36F84(uint64_t a1)
{
  v2 = type metadata accessor for CarNameParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_36FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3701C()
{
  sub_1696C();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_31500(v4);
  *v5 = v6;
  v5[1] = sub_1039C;

  return sub_344C0(v2, v3, v0 + 24);
}

uint64_t sub_370C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5F80, &unk_16E7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37130(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_37218()
{
  v1 = *(v0 + 16);

  sub_D13C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_37258(uint64_t a1)
{
  v2 = v1 + 24;
  v3 = *(v1 + 16);
  return sub_336C4(a1, v2);
}

uint64_t sub_37284(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_372CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_37314(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5F80, &unk_16E7E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_373C8(void *a1, uint64_t a2)
{
  sub_D084(a1, a2);
  v3 = *(v2 + 248);
  result = sub_D084((v2 + 224), v3);
  v5 = *(v3 - 8);
  return result;
}

void sub_37428(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v3 + 80, v4 | 0x8000000000000000, 0x4674756F656D6974, 0xED00002928776F6CLL, 223, v1, v2);
}

uint64_t sub_37484@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void sub_374EC(os_log_type_t a1@<W0>, uint64_t a2@<X4>, void *a3@<X5>, uint64_t a4@<X8>, unint64_t a5)
{

  sub_386D8(a1, 2uLL, v7 | a4, v6 | 0x8000000000000000, a2, a3, 213, v5, a5);
}

void sub_37514(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000022;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

void sub_3753C(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v3 + 95, v4 | 0x8000000000000000, 0x4673736563637573, 0xEF293A5F28776F6CLL, 202, v1, v2);
}

uint64_t sub_37614@<X0>(uint64_t a1@<X8>)
{

  return sub_5370(v1 + a1, 1, 1, v2);
}

uint64_t sub_37634()
{
  sub_D13C((v0 + 16));

  return sub_D13C((v0 + 96));
}

double sub_3767C()
{
  *(v0 - 128) = 1;
  result = 0.0;
  *(v0 - 120) = 0u;
  *(v0 - 104) = 0u;
  return result;
}

uint64_t sub_376A8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 824);
  return result;
}

uint64_t sub_376C8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t sub_37710()
{

  return swift_beginAccess();
}

uint64_t sub_37728()
{

  return sub_16AD84();
}

uint64_t sub_37770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_377C4()
{
  sub_396F0();
  result = sub_16AB14();
  qword_1E65B8 = result;
  return result;
}

uint64_t sub_37830()
{
  v0 = sub_16A584();
  sub_3968C(v0, qword_1E65C0);
  sub_9DA0(v0, qword_1E65C0);
  if (qword_1E58E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1E65B8;
  return sub_16A594();
}

uint64_t sub_378D0(Swift::UInt64 a1)
{
  if (qword_1E58F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1E65D8[0];
  if (!*(off_1E65D8[0] + &dword_10) || (v5 = sub_14647C(a1), (v6 & 1) == 0))
  {
    swift_endAccess();
    if (a1)
    {
      sub_1084D8();
      v10 = v11;
      v12 = *(v11 + 2);
      v1 = v12 + 1;
      if (v12 >= *(v11 + 3) >> 1)
      {
        sub_39798();
        v10 = v60;
      }

      sub_39824();
      *(v13 + 32) = 0x657372617023;
      *(v13 + 40) = 0xE600000000000000;
      if ((a1 & 2) == 0)
      {
LABEL_17:
        if ((a1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_397BC();
            v10 = v63;
          }

          sub_397F0();
          if (v14)
          {
            sub_39798();
            v10 = v64;
          }

          sub_39824();
          strcpy((v16 + 32), "#appResolution");
          *(v16 + 47) = -18;
          if ((a1 & 8) == 0)
          {
LABEL_19:
            if ((a1 & 0x10) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_31;
          }
        }

        else if ((a1 & 8) == 0)
        {
          goto LABEL_19;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_397BC();
          v10 = v65;
        }

        sub_397F0();
        if (v14)
        {
          sub_39798();
          v10 = v66;
        }

        sub_39824();
        *(v17 + 32) = 0x747865746E6F6323;
        *(v17 + 40) = 0xE800000000000000;
        if ((a1 & 0x10) == 0)
        {
LABEL_36:
          if ((a1 & 0x20) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v69;
            }

            sub_39800();
            if (v14)
            {
              sub_39798();
              v10 = v70;
            }

            *(v10 + 2) = v1;
            v19 = &v10[16 * v2];
            strcpy(v19 + 32, "#getLockStatus");
            v19[47] = -18;
            if ((a1 & 0x40) == 0)
            {
LABEL_38:
              if ((a1 & 0x80) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_51;
            }
          }

          else if ((a1 & 0x40) == 0)
          {
            goto LABEL_38;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_397BC();
            v10 = v71;
          }

          sub_39800();
          if (v14)
          {
            sub_39798();
            v10 = v72;
          }

          *(v10 + 2) = v1;
          v20 = &v10[16 * v2];
          strcpy(v20 + 32, "#setLockStatus");
          v20[47] = -18;
          if ((a1 & 0x80) == 0)
          {
LABEL_39:
            if ((a1 & 0x100) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_56;
          }

LABEL_51:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_397BC();
            v10 = v73;
          }

          sub_397F0();
          if (v14)
          {
            sub_39798();
            v10 = v74;
          }

          sub_39824();
          *(v21 + 32) = 0x7461766974636123;
          *(v21 + 40) = 0xEF6C616E67695365;
          if ((a1 & 0x100) == 0)
          {
LABEL_61:
            if ((a1 & 0x400) != 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
                v10 = v77;
              }

              sub_397E0();
              if (v14)
              {
                sub_39798();
                v10 = v78;
              }

              sub_39784();
              *(v24 + 32) = 0xD000000000000016;
              *(v24 + 40) = v23;
              if ((a1 & 0x800) == 0)
              {
LABEL_63:
                if ((a1 & 0x4000) == 0)
                {
                  goto LABEL_64;
                }

                goto LABEL_84;
              }
            }

            else if ((a1 & 0x800) == 0)
            {
              goto LABEL_63;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v79;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v80;
            }

            sub_39784();
            *(v26 + 32) = 0xD000000000000010;
            *(v26 + 40) = v25;
            if ((a1 & 0x4000) == 0)
            {
LABEL_64:
              if ((a1 & 0x8000) == 0)
              {
                goto LABEL_65;
              }

              goto LABEL_89;
            }

LABEL_84:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v81;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v82;
            }

            sub_39784();
            *(v28 + 32) = 0xD000000000000011;
            *(v28 + 40) = v27;
            if ((a1 & 0x8000) == 0)
            {
LABEL_65:
              if ((a1 & 0x10000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_94;
            }

LABEL_89:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v83;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v84;
            }

            sub_39784();
            *(v30 + 32) = 0xD00000000000001ALL;
            *(v30 + 40) = v29;
            if ((a1 & 0x10000) == 0)
            {
LABEL_66:
              if ((a1 & 0x20000) == 0)
              {
                goto LABEL_67;
              }

              goto LABEL_99;
            }

LABEL_94:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v85;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v86;
            }

            *(v10 + 2) = v1;
            v31 = v10 - 0x49C90B38B9A98DD0;
            *(v31 + 4) = 0x6E75725474656723;
            *(v31 + 5) = 0xEF7375746174536BLL;
            if ((a1 & 0x20000) == 0)
            {
LABEL_67:
              if ((a1 & 0x40000) == 0)
              {
                goto LABEL_68;
              }

              goto LABEL_104;
            }

LABEL_99:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v87;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v88;
            }

            sub_39784();
            *(v33 + 32) = 0xD00000000000001CLL;
            *(v33 + 40) = v32;
            if ((a1 & 0x40000) == 0)
            {
LABEL_68:
              if ((a1 & 0x100000) == 0)
              {
                goto LABEL_69;
              }

              goto LABEL_109;
            }

LABEL_104:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v89;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v90;
            }

            sub_39784();
            *(v35 + 32) = 0xD000000000000011;
            *(v35 + 40) = v34;
            if ((a1 & 0x100000) == 0)
            {
LABEL_69:
              if ((a1 & 0x80000) == 0)
              {
                goto LABEL_70;
              }

              goto LABEL_114;
            }

LABEL_109:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v91;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v92;
            }

            *(v10 + 2) = v1;
            v36 = v10 - 0x49C90B38B9A98DD0;
            strcpy(v10 - 0x49C90B38B9A98DB0, "#openCarPlay");
            v36[45] = 0;
            *(v36 + 23) = -5120;
            if ((a1 & 0x80000) == 0)
            {
LABEL_70:
              if ((a1 & 0x200000) == 0)
              {
                goto LABEL_71;
              }

              goto LABEL_119;
            }

LABEL_114:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v93;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v94;
            }

            sub_39784();
            *(v38 + 32) = 0xD000000000000019;
            *(v38 + 40) = v37;
            if ((a1 & 0x200000) == 0)
            {
LABEL_71:
              if ((a1 & 0x400000) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_124;
            }

LABEL_119:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v95;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v96;
            }

            sub_39784();
            *(v40 + 32) = 0xD000000000000010;
            *(v40 + 40) = v39;
            if ((a1 & 0x400000) == 0)
            {
LABEL_72:
              if ((a1 & 0x4000000) == 0)
              {
                goto LABEL_134;
              }

              goto LABEL_129;
            }

LABEL_124:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v97;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v98;
            }

            sub_39784();
            *(v42 + 32) = 0xD000000000000014;
            *(v42 + 40) = v41;
            if ((a1 & 0x4000000) == 0)
            {
LABEL_134:
              if ((a1 & 0x8000000) != 0)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_397BC();
                  v10 = v101;
                }

                sub_39800();
                if (v14)
                {
                  sub_39798();
                  v10 = v102;
                }

                sub_39810();
                *(v45 + 32) = v44 | 0x6F74754100000000;
                *(v45 + 40) = 0xEC00000065646F4DLL;
                if ((a1 & 0x20000000) == 0)
                {
LABEL_136:
                  if ((a1 & 0x40000000) == 0)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_152;
                }
              }

              else if ((a1 & 0x20000000) == 0)
              {
                goto LABEL_136;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
                v10 = v103;
              }

              sub_39800();
              if (v14)
              {
                sub_39798();
                v10 = v104;
              }

              sub_39810();
              *(v47 + 32) = v46 | 0x6D696C4300000000;
              *(v47 + 40) = 0xEF636E7953657461;
              if ((a1 & 0x40000000) == 0)
              {
LABEL_137:
                if ((a1 & 0x10000000) == 0)
                {
                  goto LABEL_138;
                }

                goto LABEL_157;
              }

LABEL_152:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
                v10 = v105;
              }

              sub_39800();
              if (v14)
              {
                sub_39798();
                v10 = v106;
              }

              sub_39810();
              *(v49 + 32) = v48 | 0x746E655600000000;
              *(v49 + 40) = 0xEC00000065646F4DLL;
              if ((a1 & 0x10000000) == 0)
              {
LABEL_138:
                if ((a1 & 0x100000000) == 0)
                {
                  goto LABEL_139;
                }

                goto LABEL_162;
              }

LABEL_157:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
                v10 = v107;
              }

              sub_397E0();
              if (v14)
              {
                sub_39798();
                v10 = v108;
              }

              sub_39784();
              *(v51 + 32) = 0xD000000000000012;
              *(v51 + 40) = v50;
              if ((a1 & 0x100000000) == 0)
              {
LABEL_139:
                if ((a1 & 0x200000000) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_167;
              }

LABEL_162:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
                v10 = v109;
              }

              sub_397E0();
              if (v14)
              {
                sub_39798();
                v10 = v110;
              }

              sub_39784();
              *(v53 + 32) = 0xD000000000000010;
              *(v53 + 40) = v52;
              if ((a1 & 0x200000000) == 0)
              {
LABEL_140:
                if (!*(v10 + 2))
                {

                  return 0;
                }

LABEL_172:
                sub_382D4();

                sub_5758(&qword_1E6600, &qword_16E288);
                sub_38948();
                v8 = sub_16A5F4();
                v57 = v56;

                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v111 = off_1E65D8[0];
                sub_389AC(v8, v57, a1, isUniquelyReferenced_nonNull_native);
                off_1E65D8[0] = v111;
                swift_endAccess();
                return v8;
              }

LABEL_167:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_397BC();
              }

              sub_397E0();
              if (v14)
              {
                sub_39798();
              }

              sub_39784();
              *(v55 + 32) = 0xD000000000000019;
              *(v55 + 40) = v54;
              goto LABEL_172;
            }

LABEL_129:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_397BC();
              v10 = v99;
            }

            sub_397E0();
            if (v14)
            {
              sub_39798();
              v10 = v100;
            }

            *(v10 + 2) = v1;
            v43 = v10 - 0x49C90B38B9A98DD0;
            *(v43 + 4) = 0x536E614674657323;
            *(v43 + 5) = 0xEF73676E69747465;
            goto LABEL_134;
          }

LABEL_56:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_397BC();
            v10 = v75;
          }

          sub_397F0();
          if (v14)
          {
            sub_39798();
            v10 = v76;
          }

          sub_39824();
          *(v22 + 32) = 1667462179;
          *(v22 + 40) = 0xE400000000000000;
          goto LABEL_61;
        }

LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_397BC();
          v10 = v67;
        }

        sub_397F0();
        if (v14)
        {
          sub_39798();
          v10 = v68;
        }

        sub_39824();
        strcpy((v18 + 32), "#getPowerLevel");
        *(v18 + 47) = -18;
        goto LABEL_36;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if ((a1 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_397BC();
      v10 = v61;
    }

    sub_397F0();
    if (v14)
    {
      sub_39798();
      v10 = v62;
    }

    sub_39824();
    *(v15 + 32) = 0x776F6C6623;
    *(v15 + 40) = 0xE500000000000000;
    goto LABEL_17;
  }

  v7 = (*&stru_20.segname[v4 + 16] + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();

  return v8;
}

uint64_t sub_38340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_38370(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_38378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_383A8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_383B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_383E0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_383E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3841C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_3841C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_38440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_38474(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_38474(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_384B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_384E4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_38550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_37770(a1);
  *a2 = result;
  return result;
}

unint64_t sub_38578()
{
  result = qword_1E65E0;
  if (!qword_1E65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E65E0);
  }

  return result;
}

unint64_t sub_385D0()
{
  result = qword_1E65E8;
  if (!qword_1E65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E65E8);
  }

  return result;
}

unint64_t sub_3862C()
{
  result = qword_1E65F0;
  if (!qword_1E65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E65F0);
  }

  return result;
}

unint64_t sub_38684()
{
  result = qword_1E65F8;
  if (!qword_1E65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E65F8);
  }

  return result;
}

void sub_386D8(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v55 = a3;
  v56 = a4;
  v54[0] = 47;
  v54[1] = 0xE100000000000000;
  sub_D030();
  v15 = sub_16AB34();
  v16 = sub_15AE4(v15);
  v18 = v17;

  if (v18)
  {
    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    sub_16A744(v57);
    v58._countAndFlagsBits = a5;
    v58._object = a6;
    sub_16A744(v58);
    a5 = v16;
    a6 = v18;
  }

  else
  {
  }

  v55 = a5;
  v56 = a6;
  v59._countAndFlagsBits = sub_16AE24();
  sub_16A744(v59);

  sub_39830(v19, v20, v21, v22, v23, v24, v25, v26, v51, a7, 58, 0xE100000000000000);

  v27._countAndFlagsBits = sub_378D0(a2);
  if (v27._object)
  {
    sub_16A744(v27);

    sub_39830(v28, v29, v30, v31, v32, v33, v34, v35, v52, v53, 32, 0xE100000000000000);
  }

  if (a9)
  {
    v36 = HIBYTE(a9) & 0xF;
    if ((a9 & 0x2000000000000000) == 0)
    {
      v36 = a8 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v60._countAndFlagsBits = a8;
      v60._object = a9;
      sub_16A744(v60);
      sub_39830(v37, v38, v39, v40, v41, v42, v43, v44, v52, v53, 32, 0xE100000000000000);
    }
  }

  v46 = v55;
  v45 = v56;
  v47 = sub_16A574();
  if (os_log_type_enabled(v47, a1))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54[0] = v49;
    *v48 = 136315138;
    v50 = sub_15BC8(v46, v45, v54);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_0, v47, a1, "%s", v48, 0xCu);
    sub_D13C(v49);
  }

  else
  {
  }
}

unint64_t sub_38948()
{
  result = qword_1E6608;
  if (!qword_1E6608)
  {
    sub_37130(&qword_1E6600, &qword_16E288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6608);
  }

  return result;
}

unint64_t sub_389AC(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_14647C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_5758(&qword_1E6610, &unk_16E290);
  if (!sub_16AD94(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_14647C(a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_16AEA4();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_38ADC(v16, a3, a1, a2, v21);
  }
}

unint64_t sub_38ADC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

Swift::Int sub_38B24(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_39664(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_38B90(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_38B90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_16AE14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_16A804();
        *(v6 + 2) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_38D4C(v7, v8, a1, v4);
      *(v6 + 2) = 0;
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
    return sub_38C84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_38C84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_16AE54();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_38D4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = &_swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_16AE54();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_16AE54()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_16AE54() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_108404();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_108404();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
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
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_39380((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_39254(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_39254(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_39524(v5);
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
    sub_39380((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_39380(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1090E8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_16AE54() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1090E8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_16AE54() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_39538(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_39564(char *result, int64_t a2, char a3, char *a4)
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
    sub_5758(&qword_1E6618, &qword_1781E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t *sub_3968C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_396F0()
{
  result = qword_1E6620;
  if (!qword_1E6620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6620);
  }

  return result;
}

void sub_39798()
{

  sub_1084D8();
}

void sub_397BC()
{
  v2 = *(v0 + 16) + 1;

  sub_1084D8();
}

void sub_39830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13._countAndFlagsBits = a11;
  v13._object = a12;

  sub_16A744(v13);
}

uint64_t sub_39854()
{
  sub_D2DC();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_398EC;

  return sub_3B180();
}

uint64_t sub_398EC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_399E8()
{
  sub_D3A4();
  v1 = v0[15];
  sub_3CF7C();
  sub_3CF94();
  sub_3CB7C(v2, v3, v4, v5);
  sub_3CF04();
  if (!v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = v0[13];
    v16 = sub_16A584();
    sub_30A14(v16, qword_1E65C0);
    v17 = sub_16A9A4();
    sub_386D8(v17, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0xD000000000000022, 0x8000000000181C70, 30, 0xD00000000000004DLL, 0x8000000000181CE0);
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
    sub_D37C();
    sub_10BD4();

    __asm { BRAA            X1, X16 }
  }

  v6 = *sub_D084((v0[15] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper), *(v0[15] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper + 24));
  swift_task_alloc();
  sub_D3E0();
  v0[18] = v7;
  *v7 = v8;
  v7[1] = sub_39BAC;
  v9 = v0[13];
  v10 = v0[14];
  sub_10BD4();

  return sub_752F0(v11, v12);
}

uint64_t sub_39BAC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

uint64_t sub_39C8C()
{
  v1 = v0[17];
  sub_16ACF4(62);
  sub_3CFFC(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, 0, 0xE000000000000000);
  v21._countAndFlagsBits = 0xD00000000000003CLL;
  v21._object = 0x8000000000181CA0;
  sub_16A744(v21);
  v0[12] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_3CFF0();
  sub_16AD84();
  v10 = v0[11];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = v0[17];
  v12 = v0[13];
  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0xD000000000000022, 0x8000000000181C70, 36, v19, v10);

  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_D37C();

  return v15();
}

uint64_t sub_39E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  return sub_D2B0();
}

uint64_t sub_39E3C()
{
  v1 = v0[28];
  v0[29] = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession;
  sub_3CF7C();
  sub_3CF94();
  sub_3CB7C(v2, v3, v4, v5);
  sub_3CF04();
  if (v1)
  {
    v7 = v0[28];
    v6 = v0[29];
    v8 = sub_D084((v7 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper), *(v7 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper + 24));
    sub_3CB7C(v7 + v6, (v0 + 12), &qword_1EA210, &unk_1708E0);
    v9 = *v8;
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v11 = sub_3CEB8(v10);

    return sub_75F10(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    swift_task_alloc();
    sub_D3E0();
    v0[30] = v18;
    *v18 = v19;
    v18[1] = sub_39FA4;
    v20 = v0[27];
    v21 = v0[28];

    return sub_3A480((v0 + 7), v20);
  }
}

uint64_t sub_39FA4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 248) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3A0A0()
{
  sub_D3A4();
  v2 = v0[28];
  v1 = v0[29];
  sub_37710();
  sub_3CF94();
  sub_3CBC8(v3, v4, v5, v6);
  swift_endAccess();
  v7 = v0[29];
  v8 = sub_D084((v0[28] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper), *(v0[28] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper + 24));
  sub_3CF94();
  sub_3CB7C(v9, v10, v11, v12);
  v13 = *v8;
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  sub_3CEB8(v14);
  sub_10BD4();

  return sub_75F10(v15, v16, v17, v18, v19, v20);
}

uint64_t sub_3A180()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 264) = v0;

  sub_109A0(v3 + 96, &qword_1EA210, &unk_1708E0);
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3A294()
{
  sub_D2DC();
  v1 = *(v0 + 224);
  sub_3BEF0();
  sub_D37C();

  return v2();
}

uint64_t sub_3A2F0()
{
  sub_D2DC();
  v1 = *(v0 + 224);
  sub_3BEF0();
  v2 = *(v0 + 264);
  sub_D37C();

  return v3();
}

uint64_t sub_3A34C()
{
  sub_D2DC();
  v1 = *(v0 + 224);
  sub_3BEF0();
  v2 = *(v0 + 248);
  sub_D37C();

  return v3();
}

uint64_t sub_3A3A8()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v0 = sub_16A584();
  sub_30A14(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0x6575716552646E65, 0xEC00000029287473, 58, 0xD00000000000005BLL, 0x8000000000181C10);

  return sub_3BEF0();
}

uint64_t sub_3A480(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return sub_D2B0();
}

uint64_t sub_3A498()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting;
  if (*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting))
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
      v31 = v0[23];
    }

    v3 = sub_16A584();
    sub_30A14(v3, qword_1E65C0);
    v4 = sub_16A9A4();
    sub_386D8(v4, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0xD00000000000002ALL, 0x8000000000181B20, 64, 0xD000000000000052, 0x8000000000181BB0);
    v5 = swift_allocObject();
    v0[34] = v5;
    swift_unknownObjectWeakInit();
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[35] = v7;
    sub_5758(&qword_1E66C8, &qword_16E3B8);
    *v7 = v0;
    v7[1] = sub_3AE7C;
    v8 = v0[21];
    sub_10B4C();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, 0xD00000000000002ALL, v12, v13, v5, v14);
  }

  else
  {
    v15 = v0[22];
    v16 = v15[3];
    v17 = v15[4];
    sub_D084(v15, v16);
    v18 = (*(v17 + 40))(v16, v17);
    if (v18[2])
    {
      v19 = v0[23];
      v20 = v18[4];
      v0[24] = v20;
      v21 = v18[5];
      v0[25] = v21;

      *(v1 + v2) = 1;
      v22 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper;
      v0[26] = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper;
      v23 = *sub_D084((v19 + v22), *(v19 + v22 + 24));
      swift_task_alloc();
      sub_D3E0();
      v0[27] = v24;
      *v24 = v25;
      v24[1] = sub_3A85C;
      v26 = v0[22];

      return sub_7565C((v0 + 2), v26, v20, v21);
    }

    else
    {

      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      sub_9FB8();
      v27 = sub_16A584();
      sub_30A14(v27, qword_1E65C0);
      v28 = sub_16A9A4();
      sub_386D8(v28, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0xD00000000000002ALL, 0x8000000000181B20, 71, 0xD00000000000005DLL, v1);
      sub_3CC14();
      swift_allocError();
      *v29 = xmmword_16E2A0;
      swift_willThrow();
      sub_D37C();

      return v30();
    }
  }
}

uint64_t sub_3A85C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 224) = v0;

  if (v0)
  {
    v9 = *(v3 + 200);
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_3A960()
{
  v16 = v0;
  v1 = v0[23];
  v2 = &v1[v0[26]];
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_assertion;
  sub_37710();
  sub_3CBC8((v0 + 2), &v1[v3], &qword_1E66B0, &unk_16E380);
  swift_endAccess();
  v15[3] = type metadata accessor for LowPowerCarKeySessionService();
  v15[4] = &off_1D4290;
  v15[0] = v1;
  v4 = &v1[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionManager];
  sub_37710();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  sub_2F8D0(v4, v5);
  v7 = *(v6 + 16);
  v8 = v1;
  v7(v15, v5, v6);
  swift_endAccess();
  v9 = *sub_D084(v2, *(v2 + 3));
  swift_task_alloc();
  sub_D3E0();
  v0[29] = v10;
  *v10 = v11;
  v10[1] = sub_3AAD0;
  v12 = v0[24];
  v13 = v0[25];

  return sub_75A1C((v0 + 7), v12, v13);
}

uint64_t sub_3AAD0()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *(v2 + 232);
  *v4 = *v1;
  *(v3 + 240) = v0;

  v6 = *(v2 + 200);

  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3AC04()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession;
  sub_37710();
  sub_3CBC8((v0 + 7), v1 + v2, &qword_1EA210, &unk_1708E0);
  swift_endAccess();
  v3 = swift_allocObject();
  v0[31] = v3;
  swift_unknownObjectWeakInit();
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[32] = v5;
  sub_5758(&qword_1E66C8, &qword_16E3B8);
  *v5 = v0;
  v5[1] = sub_3AD54;
  v6 = v0[21];
  sub_10B4C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v8, v9, 0xD00000000000002ALL, v10, v11, v3, v12);
}

uint64_t sub_3AD54()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 248);

    sub_D37C();

    return v13();
  }
}

uint64_t sub_3AE7C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 272);

    sub_D37C();

    return v13();
  }
}

uint64_t sub_3AF9C()
{
  sub_D2DC();
  v1 = *(v0 + 272);

  v2 = *(v0 + 288);
  sub_D37C();

  return v3();
}

uint64_t sub_3AFF8()
{
  sub_D2DC();
  v1 = *(v0 + 248);

  v2 = *(v0 + 264);
  sub_D37C();

  return v3();
}

void sub_3B054(uint64_t a1)
{
  v2 = sub_5758(&qword_1E66A8, &unk_16E370);
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  sub_3CF7C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_5758(&qword_1E66A0, &qword_16E320);
    sub_10AFC(v10);
    (*(v11 + 16))(v7, a1, v10);
    sub_5370(v7, 0, 1, v10);
    v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_continuation;
    sub_37710();
    sub_3CBC8(v7, v9 + v12, &qword_1E66A8, &unk_16E370);
    swift_endAccess();
  }
}

uint64_t sub_3B180()
{
  sub_D2DC();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_5758(&qword_1E66C0, &qword_16FE00);
  sub_D414(v3);
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3B210()
{
  v1 = *(v0 + 128);
  sub_3CF7C();
  sub_3CF94();
  sub_3CB7C(v2, v3, v4, v5);
  sub_3CF04();
  if (v1 || (v6 = *(v0 + 128), (*(v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_lowPowerWatchHasAttemptedToConnect) & 1) != 0))
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_9FB8();
    v7 = sub_16A584();
    sub_30A14(v7, qword_1E65C0);
    sub_16A9A4();
    sub_3CEA8();
    sub_386D8(v8, v9, v10, v11, v12, v13, 88, v14, &unk_1708E0);
    v15 = *(v0 + 136);

    sub_D37C();

    return v16();
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_lowPowerWatchHasAttemptedToConnect) = 1;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 120);
    v21 = sub_16A584();
    sub_30A14(v21, qword_1E65C0);
    sub_16A9A4();
    sub_3CEA8();
    sub_386D8(v22, v23, v24, v25, v26, v27, 95, v28, 0x8000000000181860);
    v29 = sub_16A884();
    sub_3CFE4();
    sub_5370(v30, v31, v32, v29);
    sub_10824(v20, v0 + 56);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v19;
    sub_D124((v0 + 56), (v33 + 5));
    v34 = v19;
    v35 = sub_3CFD0();
    v39 = sub_63F90(v35, v36, v37, v38, v33);
    *(v0 + 144) = v39;
    sub_3CFE4();
    sub_5370(v40, v41, v42, v29);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = 4000000000;
    v43[5] = v39;
    v43[6] = v34;
    v44 = v34;

    v45 = sub_3CFD0();
    *(v0 + 152) = sub_63F90(v45, v46, v47, v48, v43);
    v49 = async function pointer to Task<>.value.getter[1];
    v50 = swift_task_alloc();
    *(v0 + 160) = v50;
    *v50 = v0;
    v50[1] = sub_3B568;

    return Task<>.value.getter();
  }
}

uint64_t sub_3B568()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3B650()
{
  sub_D2DC();
  v1 = v0[18];
  v2 = v0[19];
  sub_16A894();

  v3 = v0[17];

  sub_D37C();

  return v4();
}

uint64_t sub_3B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return _swift_task_switch(sub_3B704, 0, 0);
}

uint64_t sub_3B704()
{
  sub_D3A4();
  if (sub_16A8B4())
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v1 = v0[13];
    v2 = sub_16A584();
    sub_30A14(v2, qword_1E65C0);
    sub_16A9A4();
    sub_3CEA8();
    sub_386D8(v3, v4, v5, v6, v7, v8, 98, v9, 0x8000000000181AB0);
    sub_3BEF0();
    sub_D37C();
    sub_10BD4();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_D3E0();
  v0[15] = v12;
  *v12 = v13;
  v12[1] = sub_3B86C;
  v15 = v0[13];
  v14 = v0[14];
  sub_10BD4();

  return sub_3A480(v16, v17);
}

uint64_t sub_3B86C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3B968()
{
  sub_D2DC();
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession;
  sub_37710();
  sub_3CBC8(v0 + 16, v1 + v2, &qword_1EA210, &unk_1708E0);
  swift_endAccess();
  sub_D37C();

  return v3();
}

uint64_t sub_3B9F4()
{
  v1 = v0[16];
  sub_16ACF4(109);
  sub_3CFFC(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, 0, 0xE000000000000000);
  v26._countAndFlagsBits = 0xD00000000000006BLL;
  v26._object = 0x8000000000181A40;
  sub_16A744(v26);
  v0[12] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_3CFF0();
  sub_16AD84();
  v10 = v0[11];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = v0[16];
  v12 = v0[13];
  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  sub_16A9A4();
  sub_3CEA8();
  sub_386D8(v14, v15, v16, v17, v18, v19, 106, v24, v10);

  sub_3BEF0();

  sub_D37C();

  return v20();
}

uint64_t sub_3BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_3BBA0, 0, 0);
}

uint64_t sub_3BBA0()
{
  sub_D3A4();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  sub_9FB8();
  v2 = sub_16A584();
  v1[5] = sub_30A14(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0xD00000000000003ALL, 0x8000000000181820, 112, 0xD000000000000035, v0);
  v4 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_3BCD4;
  v6 = v1[2];

  return static Task<>.sleep(nanoseconds:)(v6);
}

uint64_t sub_3BCD4()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 48);
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  if (v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3BDD8()
{
  sub_D3A4();
  v1 = sub_16A8B4();
  sub_16A9A4();
  v2 = v0[5];
  if (v1)
  {
    sub_3CF40();
    sub_3CEA8();
    sub_386D8(v3, v4, v5, v6, v7, v8, 115, v9, v21);
  }

  else
  {
    v11 = v0[3];
    v10 = v0[4];
    sub_3CF40();
    sub_3CEA8();
    sub_386D8(v12, v13, v14, v15, v16, v17, 118, v18, v21);
    sub_16A894();
    sub_3BEF0();
  }

  sub_D37C();

  return v19();
}

uint64_t sub_3BEF0()
{
  v3 = sub_5758(&qword_1E66A0, &qword_16E320);
  v4 = sub_3CFA0(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v33 - v8;
  v10 = sub_5758(&qword_1E66A8, &unk_16E370);
  v11 = sub_D414(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_3CF24();
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_assertion;
  sub_3CF7C();
  sub_3CB7C(v0 + v17, &v38, &qword_1E66B0, &unk_16E380);
  if (*(&v39 + 1))
  {
    sub_10824(&v38, v35);
    sub_109A0(&v38, &qword_1E66B0, &unk_16E380);
    v18 = v36;
    v19 = v37;
    sub_D084(v35, v36);
    (*(v19 + 8))(v18, v19);
    sub_D13C(v35);
  }

  else
  {
    sub_109A0(&v38, &qword_1E66B0, &unk_16E380);
  }

  v20 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession;
  sub_3CF7C();
  sub_3CB7C(v0 + v20, &v38, &qword_1EA210, &unk_1708E0);
  if (*(&v39 + 1))
  {
    sub_10824(&v38, v35);
    sub_109A0(&v38, &qword_1EA210, &unk_1708E0);
    v21 = v36;
    v22 = v37;
    sub_D084(v35, v36);
    (*(v22 + 48))(v21, v22);
    sub_D13C(v35);
  }

  else
  {
    sub_109A0(&v38, &qword_1EA210, &unk_1708E0);
  }

  v23 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_continuation;
  sub_3CF7C();
  sub_3CB7C(v0 + v23, v16, &qword_1E66A8, &unk_16E370);
  if (sub_9E2C(v16, 1, v1))
  {
    sub_109A0(v16, &qword_1E66A8, &unk_16E370);
  }

  else
  {
    v24 = v34;
    v25 = sub_3D010(v34);
    v26(v25);
    sub_109A0(v16, &qword_1E66A8, &unk_16E370);
    sub_3CC14();
    v27 = swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    *&v38 = v27;
    sub_16A854();
    (*(v24 + 8))(v9, v1);
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_37710();
  sub_3CBC8(&v38, v0 + v20, &qword_1EA210, &unk_1708E0);
  swift_endAccess();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_37710();
  sub_3CBC8(&v38, v0 + v17, &qword_1E66B0, &unk_16E380);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_lowPowerWatchHasAttemptedToConnect) = 0;
  sub_3CFE4();
  sub_5370(v29, v30, v31, v1);
  sub_37710();
  sub_3CBC8(v2, v0 + v23, &qword_1E66A8, &unk_16E370);
  return swift_endAccess();
}

id sub_3C30C()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = sub_16A584();
  sub_30A14(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_386D8(v2, 0x20000uLL, 0xD000000000000095, 0x8000000000181670, 0x74696E696564, 0xE600000000000000, 140, 0xD000000000000046, 0x8000000000181D70);
  sub_3BEF0();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LowPowerCarKeySessionService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for LowPowerCarKeySessionService()
{
  result = qword_1E6688;
  if (!qword_1E6688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3C554()
{
  sub_3C610();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_3C610()
{
  if (!qword_1E6698)
  {
    sub_37130(&qword_1E66A0, &qword_16E320);
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1E6698);
    }
  }
}

uint64_t sub_3C674()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_39854();
}

uint64_t sub_3C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1039C;

  return sub_39E20(a1, a2, a3, a4, a5);
}

void sub_3C80C()
{
  v3 = sub_5758(&qword_1E66A0, &qword_16E320);
  v4 = sub_3CFA0(v3);
  v48 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v9 = &v47 - v8;
  v10 = sub_5758(&qword_1E66A8, &unk_16E370);
  v11 = sub_D414(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_3CF24();
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v17 = sub_16A584();
  sub_30A14(v17, qword_1E65C0);
  sub_16A9A4();
  sub_3CF5C();
  sub_3CF6C();
  sub_386D8(v18, v19, v20, v21, v22, v23, 147, v24, 0x8000000000181730);
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting) = 0;
  v25 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession;
  sub_3CF7C();
  sub_3CB7C(v0 + v25, &v49, &qword_1EA210, &unk_1708E0);
  if (v50)
  {
    sub_D124(&v49, v51);
    sub_16A9A4();
    sub_3CF5C();
    sub_3CF6C();
    sub_386D8(v26, v27, v28, v29, v30, v31, 156, v32, 0x80000000001817E0);
    v33 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_continuation;
    sub_3CF7C();
    sub_3CB7C(v0 + v33, v16, &qword_1E66A8, &unk_16E370);
    if (sub_9E2C(v16, 1, v1))
    {
      sub_D13C(v51);
      sub_109A0(v16, &qword_1E66A8, &unk_16E370);
    }

    else
    {
      v41 = v48;
      v42 = sub_3D010(v48);
      v43(v42);
      sub_109A0(v16, &qword_1E66A8, &unk_16E370);
      sub_10824(v51, &v49);
      sub_16A864();
      (*(v41 + 8))(v9, v1);
      sub_D13C(v51);
    }

    sub_3CFE4();
    sub_5370(v44, v45, v46, v1);
    sub_37710();
    sub_3CBC8(v2, v0 + v33, &qword_1E66A8, &unk_16E370);
    swift_endAccess();
  }

  else
  {
    sub_109A0(&v49, &qword_1EA210, &unk_1708E0);
    sub_9FB8();
    sub_16A9A4();
    sub_3CF5C();
    sub_3CF6C();
    sub_386D8(v34, v35, v36, v37, v38, v39, 152, v40, v0);
  }
}

uint64_t sub_3CB7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_3D024(a1, a2, a3, a4);
  sub_10AFC(v5);
  v7 = *(v6 + 16);
  v8 = sub_3CFF0();
  v9(v8);
  return v4;
}

uint64_t sub_3CBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_3D024(a1, a2, a3, a4);
  sub_10AFC(v5);
  v7 = *(v6 + 40);
  v8 = sub_3CFF0();
  v9(v8);
  return v4;
}

unint64_t sub_3CC14()
{
  result = qword_1E66B8;
  if (!qword_1E66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E66B8);
  }

  return result;
}

uint64_t sub_3CC68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_D13C((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_3CCB0()
{
  sub_D3A4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10A9C;
  sub_3CFB8();
  sub_10BD4();

  return sub_3B6E4(v7, v8, v9, v10, v11);
}

uint64_t sub_3CD54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3CD9C()
{
  sub_D3A4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1039C;
  v9 = sub_3CFB8();

  return sub_3BB7C(v9, v10, v11, v12, v5, v6);
}

uint64_t sub_3CE4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3CEB8(uint64_t a1)
{
  *(a1 + 8) = sub_3A180;
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[24];
  v5 = v1[25];
  return v1[23];
}

uint64_t sub_3CF04()
{
  v4 = *(v2 + 40);

  return sub_109A0(v2 + 16, v1, v0);
}

uint64_t sub_3CF7C()
{

  return swift_beginAccess();
}

uint64_t sub_3D024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_5758(a3, a4);
}

uint64_t *sub_3D044()
{
  sub_D13C(v0 + 2);
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 12);
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 23);
  v1 = v0[28];

  sub_D13C(v0 + 29);
  sub_D13C(v0 + 34);
  sub_D13C(v0 + 39);
  sub_3D344(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CarCommandsBaseFlowStrategy_unitProvider);
  return v0;
}

uint64_t sub_3D194()
{
  sub_3D044();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CarCommandsBaseFlowStrategy()
{
  result = qword_1E66F8;
  if (!qword_1E66F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3D240()
{
  result = type metadata accessor for LocalizedMeasurementUnitProvider();
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

uint64_t sub_3D304@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_3D3A0();
  return sub_10824(v3 + 184, a1);
}

uint64_t sub_3D344(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedMeasurementUnitProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D3A0()
{

  return swift_beginAccess();
}

id sub_3D3BC()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134();
    }

    v4 = sub_7C5C0(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_3D440(uint64_t a1)
{
  v3 = sub_16A164();
  v4 = sub_D414(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v7 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v8 = sub_16A094();
  v1[5] = v7;
  v1[6] = &off_1DA7E8;
  v1[2] = v8;
  v9 = sub_168E34();
  sub_483C8(v9);
  v10 = sub_168E24();
  v1[10] = v9;
  v1[11] = &protocol witness table for ResponseFactory;
  v1[7] = v10;
  v1[12] = 0;
  v1[13] = a1;
  return v1;
}

uint64_t sub_3D50C()
{
  v0 = sub_1693E4();
  v1 = sub_9F48(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v3 + 8))(v8, v0);
  v9 = v13[3];
  sub_D188(v13, &qword_1E5F80, &unk_16E7E0);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  v12 = sub_48154(v11, qword_1E65C0);
  sub_386D8(v12, 0x80uLL, 0xD00000000000008FLL, 0x80000000001821E0, 0xD000000000000016, 0x800000000017FD50, 37, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_3D6CC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  sub_47B4C();
  *(v0 + 32) = sub_168A34();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_3D790()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  sub_10AEC(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3D834()
{
  sub_10B8C();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16484(0, &qword_1E62F8, INActivateCarSignalIntent_ptr);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_98878(v1);
  v7 = v0[5];
  if (v6)
  {
    v8 = v6;
    v9 = v0[5];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v13 = v0[2];
    v12 = v0[3];
    type metadata accessor for CarCommandsError();
    sub_478F4(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();

    return v15();
  }
}

uint64_t sub_3D9E8()
{
  v1 = v0;
  v2 = sub_16A164();
  v3 = sub_D414(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  v6 = sub_5758(&qword_1E6AA8, &qword_16E7D0);
  v7 = sub_9F48(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v28 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29[-1] - v14;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v16 = qword_1F0C70;
  v29[3] = type metadata accessor for WalletService();
  v29[4] = &off_1D7C28;
  v29[0] = v16;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  v17 = sub_16A094();
  sub_1617E8();

  sub_D13C(v29);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v18 = swift_allocObject();
  v19 = sub_168E34();
  sub_483C8(v19);
  sub_4808C();

  sub_168E24();
  sub_47FC4();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  sub_47358(v29, v18);
  sub_4808C();

  v29[0] = v17;
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  sub_478F4(&qword_1E6AB0, 255, type metadata accessor for ActivateSignalConfirmIntentFlowStrategy);
  sub_168854();

  sub_1688A4();
  v20 = *(v1 + 104);

  sub_1693F4();
  v21 = swift_allocObject();
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();

  sub_168E24();
  v24 = sub_47640(v29, v21);

  v29[0] = v24;
  type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  sub_478F4(&qword_1E6AB8, 255, type metadata accessor for ActivateSignalHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  (*(v9 + 16))(v28, v15, v6);
  v25 = sub_5758(&qword_1E6AC0, &qword_16E7D8);
  sub_483C8(v25);
  v26 = sub_168914();
  (*(v9 + 8))(v15, v6);
  return v26;
}

BOOL sub_3DE1C()
{
  sub_5758(&qword_1E62F0, &unk_16D8C0);
  v0 = sub_1690A4();
  v1 = [v0 signals];

  if (v1 == &dword_0 + 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 104);

      *(v3 + 16) = 0;
    }
  }

  return v1 == &dword_0 + 1;
}

uint64_t sub_3DED4()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  v1 = *(v0 + 104);

  return v0;
}

uint64_t sub_3DF0C()
{
  sub_3DED4();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_3DF64(uint64_t a1, uint64_t a2)
{
  result = sub_478F4(&qword_1E69E0, a2, type metadata accessor for ActivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_3DFF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_3D790();
}

uint64_t sub_3E08C()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_D254();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_3E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_3E258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10A9C;

  return sub_3E330(a1, a2, a3, a4);
}

uint64_t sub_3E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v6 = *(*(sub_16A164() - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v7 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v8 = type metadata accessor for CarNameParameters(0);
  v5[37] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();

  return _swift_task_switch(sub_3E430, 0, 0);
}

uint64_t sub_3E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A08);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_3E870()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *(v5 + 312);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v3 + 328) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_48308();

    sub_1677C();

    return v13();
  }
}

uint64_t sub_3E9C0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 352);
  v5 = *(v3 + 344);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48428(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3EAD0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48410(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3EBE0()
{
  sub_D2DC();
  v1 = sub_480C4();
  sub_10824(v1, v0 + 56);
  v2 = swift_task_alloc();
  v3 = sub_47DE8(v2);
  *v3 = v4;
  sub_47B1C(v3);

  return sub_11A570();
}

uint64_t sub_3EC6C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3ED6C()
{
  sub_D2DC();
  v1 = sub_480C4();
  sub_10824(v1, v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_47DF8(v2);
  *v3 = v4;
  sub_47B34(v3);

  return sub_11A570();
}

uint64_t sub_3EDF8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3EEF8()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_3EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A28);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_3F3EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 352);
  v5 = *(v3 + 344);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48428(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3F4FC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48410(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_3F60C()
{
  sub_D2DC();
  v1 = sub_482FC();
  sub_10824(v1, v0 + 56);
  v2 = swift_task_alloc();
  v3 = sub_47DE8(v2);
  *v3 = v4;
  sub_47B1C(v3);

  return sub_11A570();
}

uint64_t sub_3F698()
{
  sub_D2DC();
  v1 = sub_482FC();
  sub_10824(v1, v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_47DF8(v2);
  *v3 = v4;
  sub_47B34(v3);

  return sub_11A570();
}

uint64_t sub_3F724()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_3F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A38);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_3FC18()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_3FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A48);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_4010C()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_401C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A60);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_40600()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_406B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A70);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}
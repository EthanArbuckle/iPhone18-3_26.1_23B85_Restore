uint64_t sub_CE880()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 672) = v0;

  sub_B18A8(v3 + 256);
  if (v0)
  {
    *(v3 + 520) = *(v3 + 336);
    sub_CEB94(v3 + 520);
    *(v3 + 504) = *(v3 + 368);
    sub_CEBE8(v3 + 504, &qword_1E5FA0);
  }

  else
  {
    *(v3 + 584) = *(v3 + 336);
    sub_CEB94(v3 + 584);
    *(v3 + 568) = *(v3 + 368);
    sub_CEBE8(v3 + 568, &qword_1E5FA0);
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CEA08()
{
  sub_D2DC();
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_CEA88()
{
  sub_D13C((v0 + 24));
  sub_CEBE8(v0 + 64, &qword_1EA120);

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_CEAFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3E08C;

  return sub_CD208(a1);
}

uint64_t sub_CEBE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_CED14(a1, a2);
  v5 = sub_5758(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

BOOL sub_CEC44(uint64_t a1)
{
  v7 = type metadata accessor for CarCommandsNLv4Intent();
  v8 = &off_1D6550;
  v6[0] = a1;
  v2 = *sub_D084(v6, v7);

  v4 = sub_8E748(v3) != 0;
  sub_D13C(v6);
  return v4;
}

uint64_t sub_CECB4()
{
  sub_D13C(v1 + 57);
  sub_D13C(v1 + 47);
  sub_D13C(v1 + 42);
  sub_D13C(v1 + 32);
  v2 = v1[1];
  return v0;
}

uint64_t sub_CECF4()
{
  sub_D13C((v0 + 256));
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_CED34@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    sub_16A0B4();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t SEGetCarLockStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_CEE4C()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(dword_16DAA8);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 0);
}

uint64_t sub_CEF1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetCarLockStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetCarLockStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_CEFF4()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(dword_16DA80);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_CF0B4;
  v3 = *(v0 + 48);

  return v5(v1, 2, 1);
}

uint64_t sub_CF0B4()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 72) = v8;

  return _swift_task_switch(sub_CF1CC, 0, 0);
}

uint64_t sub_CF1CC()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  v2 = objc_allocWithZone(INGetCarLockStatusIntentResponse);
  if (v1 > 5)
  {
    v3 = 4;
  }

  else
  {
    v3 = qword_175398[v1];
  }

  v4 = *(v0 + 32);
  v5 = [v2 initWithCode:v3 userActivity:v4];

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_CF28C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetCarLockStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetCarLockStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_CF364()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(&unk_16F8E0);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 2);
}

uint64_t sub_CF414()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_CF524, 0, 0);
}

uint64_t sub_CF524()
{
  sub_1696C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 57);
  v3 = objc_allocWithZone(INGetCarLockStatusIntentResponse);
  switch(v2)
  {
    case 0:
      v4 = 0;
      goto LABEL_6;
    case 3:
      v5 = *(v0 + 56);
      v6 = [v3 initWithCode:3 userActivity:v1];
      sub_16AA34();
      goto LABEL_7;
    case 5:
      v4 = 5;
      goto LABEL_6;
    default:
      v4 = 4;
LABEL_6:
      v6 = [v3 initWithCode:v4 userActivity:v1];
LABEL_7:

      v7 = *(v0 + 8);

      return v7(v6);
  }
}

uint64_t sub_CF648(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetCarLockStatusIntentHandler.handle(intent:)(v6);
}

id SEGetCarLockStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetCarLockStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_CF7B8()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_CF850()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_CF8E8()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_CF988()
{
  sub_D2DC();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1691E4();
  v1[12] = v6;
  sub_10AEC(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_D3C8();
  v10 = sub_5758(&qword_1EB1E8, &qword_1753F8);
  sub_D414(v10);
  v12 = *(v11 + 64);
  v1[15] = sub_D3C8();
  v13 = sub_16A314();
  v1[16] = v13;
  sub_10AEC(v13);
  v1[17] = v14;
  v16 = *(v15 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v17 = sub_16A334();
  v1[20] = v17;
  sub_10AEC(v17);
  v1[21] = v18;
  v20 = *(v19 + 64);
  v1[22] = sub_D3C8();
  v21 = sub_16A164();
  sub_D414(v21);
  v23 = *(v22 + 64);
  v1[23] = sub_D3C8();
  v24 = sub_D388();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_CFB2C()
{
  v1 = v0[23];
  v2 = v0[8];
  type metadata accessor for CarCommandsAppResolutionCATsSimple();
  sub_16A154();
  v0[24] = sub_16A0F4();
  sub_11A408(v2, 1);
  sub_132DB0();
  v4 = v3;
  v0[25] = v3;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_CFC1C;

  return sub_FE9F8(v4);
}

uint64_t sub_CFC1C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *(v4 + 200);
  v7 = *v1;
  sub_D2A4();
  *v8 = v7;
  *(v10 + 216) = v9;
  *(v10 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_CFD3C()
{
  sub_D2DC();
  v1 = v0[23];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[29] = sub_16A0F4();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_CFDF4;

  return sub_DFB30();
}

uint64_t sub_CFDF4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  v3[31] = v7;
  v3[32] = v0;

  if (!v0)
  {
    v8 = v3[29];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_CFF00()
{
  v53 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = *(v0 + 64);
  *(v0 + 280) = 0;
  sub_16A134();
  v4 = sub_11B48C(v3);
  v10 = v4;
  v11 = 0;
  v12 = v3 & 0xC000000000000001;
  v48 = v3 + 32;
  v50 = v3 & 0xFFFFFFFFFFFFFF8;
  v46 = v2;
  v13 = (v2 + 32);
  v14 = *(v0 + 256);
  v15 = _swiftEmptyArrayStorage;
  v45 = v4;
  while (v10 != v11)
  {
    if (v12)
    {
      v27 = *(v0 + 64);
      v4 = sub_16AD04();
      v16 = v4;
    }

    else
    {
      if (v11 >= *(v50 + 16))
      {
        goto LABEL_20;
      }

      v16 = *(v48 + 8 * v11);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v4, v5, v6, v7, v8, v9);
    }

    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v52 = v16;
    sub_D1384(&v52, v18);

    if (sub_9E2C(v18, 1, v17) == 1)
    {
      v4 = sub_D188(*(v0 + 120), &qword_1EB1E8, &qword_1753F8);
    }

    else
    {
      v19 = v12;
      v20 = *(v0 + 144);
      v21 = *(v0 + 152);
      v22 = *(v0 + 128);
      v23 = *v13;
      (*v13)(v21, *(v0 + 120), v22);
      v23(v20, v21, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = v15[2];
        sub_108760();
        v15 = v29;
      }

      v24 = v15[2];
      if (v24 >= v15[3] >> 1)
      {
        sub_108760();
        v15 = v30;
      }

      v25 = *(v0 + 144);
      v26 = *(v0 + 128);
      v15[2] = v24 + 1;
      v4 = (v23)(v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v24, v25, v26);
      v12 = v19;
      v10 = v45;
    }

    ++v11;
  }

  v31 = *(v0 + 216);
  v32 = *(v0 + 168);
  v33 = *(v0 + 176);
  v34 = *(v0 + 160);
  v35 = *(v0 + 80);
  v47 = *(v0 + 112);
  v49 = *(v0 + 88);
  v36 = *(v0 + 72);
  sub_16A324();
  v51 = v35[4];
  sub_D084(v35, v35[3]);
  v37 = sub_16A284();
  *(v0 + 40) = v37;
  *(v0 + 48) = sub_4FB1C();
  v38 = sub_10888((v0 + 16));
  (*(v32 + 16))(v38, v33, v34);
  (*(*(v37 - 8) + 104))(v38, enum case for CarCommandsSnippetsPluginModel.appDisambiguation(_:), v37);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v39 = swift_allocObject();
  *(v0 + 264) = v39;
  *(v39 + 16) = xmmword_16D440;
  *(v39 + 32) = v31;
  v40 = v31;
  sub_D12C8();
  v41 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v42 = swift_task_alloc();
  *(v0 + 272) = v42;
  *v42 = v0;
  v42[1] = sub_D02B0;
  v43 = *(v0 + 112);
  v4 = sub_D1AD8();
  v9 = v51;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_D02B0()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  v10 = *v0;
  sub_D2A4();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  v12 = sub_D388();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D041C()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v13 = v0[14];

  (*(v6 + 8))(v5, v7);

  sub_D37C();

  return v11();
}

uint64_t sub_D050C()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];

  sub_D37C();

  return v9();
}

uint64_t sub_D05C0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  sub_D37C();

  return v10();
}

uint64_t sub_D0688()
{
  sub_D2DC();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v8 = sub_1691E4();
  v1[14] = v8;
  sub_10AEC(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = sub_D3C8();
  v12 = sub_16A314();
  v1[17] = v12;
  sub_10AEC(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = sub_D3C8();
  v16 = sub_16A334();
  v1[20] = v16;
  sub_10AEC(v16);
  v1[21] = v17;
  v19 = *(v18 + 64);
  v1[22] = sub_D3C8();
  v20 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v20);
  v22 = *(v21 + 64);
  v1[23] = sub_D3C8();
  v23 = sub_16A164();
  sub_D414(v23);
  v25 = *(v24 + 64);
  v1[24] = sub_D3C8();
  v26 = sub_D388();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_D081C()
{
  sub_D3A4();
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v0[25] = type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[26] = sub_16A0F4();
  sub_11A928(v5, 0);
  sub_16A6E4();
  v6 = sub_16A0C4();
  sub_5370(v1, 0, 1, v6);
  sub_132DB0();
  v0[27] = v7;

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_D0950;
  v9 = v0[23];

  return sub_E05FC();
}

uint64_t sub_D0950()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[28];
  v6 = v4[27];
  v7 = v4[23];
  v8 = *v1;
  sub_D2A4();
  *v9 = v8;
  *(v11 + 232) = v10;
  *(v11 + 240) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D0AA8()
{
  sub_D2DC();
  v1 = v0[24];
  v2 = v0[25];
  sub_16A154();
  v0[31] = sub_16A0F4();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_D0B50;

  return sub_DFB30();
}

uint64_t sub_D0B50()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  v3[33] = v7;
  v3[34] = v0;

  if (!v0)
  {
    v8 = v3[31];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_D0C5C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 64);
  *(v0 + 296) = 1;
  sub_16A134();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 64);
    sub_146A10();
    v6 = (v5 + 40);
    do
    {
      v7 = *(v0 + 152);
      v8 = *(v6 - 1);
      v9 = *v6;
      swift_bridgeObjectRetain_n();
      sub_16A304();
      v10 = _swiftEmptyArrayStorage[2];
      if (v10 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_146A10();
      }

      v11 = *(v0 + 152);
      v12 = *(v0 + 136);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v11, v12);
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  v17 = *(v0 + 96);
  v32 = *(v0 + 128);
  v33 = *(v0 + 104);
  v18 = *(v0 + 88);
  sub_16A324();
  v34 = v17[4];
  sub_D084(v17, v17[3]);
  v19 = sub_16A284();
  *(v0 + 40) = v19;
  *(v0 + 48) = sub_4FB1C();
  v20 = sub_10888((v0 + 16));
  (*(v14 + 16))(v20, v15, v16);
  (*(*(v19 - 8) + 104))(v20, enum case for CarCommandsSnippetsPluginModel.carNameDisambiguation(_:), v19);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v21 = swift_allocObject();
  *(v0 + 280) = v21;
  *(v21 + 16) = xmmword_16D440;
  *(v21 + 32) = v13;
  v22 = v13;
  sub_D12C8();
  v23 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v24 = swift_task_alloc();
  *(v0 + 288) = v24;
  *v24 = v0;
  v24[1] = sub_D0F3C;
  v25 = *(v0 + 128);
  v26 = sub_D1AD8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v26, v27, v28, v29, v30, v34);
}

uint64_t sub_D0F3C()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[36];
  v6 = v4[35];
  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[14];
  v10 = *v0;
  sub_D2A4();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  v12 = sub_D388();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D10A8()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[16];

  (*(v7 + 8))(v6, v8);

  sub_D37C();

  return v11();
}

uint64_t sub_D118C()
{
  sub_D3A4();
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  sub_D1B0C();

  sub_D37C();

  return v3();
}

uint64_t sub_D1220()
{
  sub_D3A4();
  v1 = *(v0 + 208);

  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  sub_D1B0C();

  sub_D37C();

  return v4();
}

uint64_t sub_D12C8()
{
  v0 = sub_168B74();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_168B54();
  return sub_169164();
}

uint64_t sub_D1384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_168454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_16A1B4();
  if (v9)
  {
    v10 = sub_169074();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();

    sub_169064();
    sub_168444();
    sub_169054();
    v14 = v13;

    (*(v4 + 8))(v7, v3);
    if (v14)
    {

      v15 = v32;
      sub_16A2F4();
      v16 = sub_16A314();
      v17 = v15;
      v18 = 0;
    }

    else
    {

      object = 0xE000000000000000;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_16ACF4(49);

      v30 = 0xD00000000000002FLL;
      v31 = 0x800000000018AB90;
      v24._countAndFlagsBits = sub_16A1B4();
      if (v24._object)
      {
        object = v24._object;
      }

      else
      {
        v24._countAndFlagsBits = 0;
      }

      v24._object = object;
      sub_16A744(v24);

      v25 = v30;
      v26 = v31;
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v27 = sub_16A584();
      sub_9DA0(v27, qword_1E65C0);
      v28 = sub_16A9A4();
      sub_386D8(v28, 4uLL, 0xD000000000000095, 0x800000000018AA60, 0xD00000000000004BLL, 0x800000000018AB00, 75, v25, v26);

      v16 = sub_16A314();
      v17 = v32;
      v18 = 1;
    }

    return sub_5370(v17, v18, 1, v16);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    v20 = sub_16A9A4();
    sub_386D8(v20, 4uLL, 0xD000000000000095, 0x800000000018AA60, 0xD00000000000004BLL, 0x800000000018AB00, 71, 0xD000000000000034, 0x800000000018AB50);
    v21 = sub_16A314();
    return sub_5370(v32, 1, 1, v21);
  }
}

uint64_t sub_D1708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_168BC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5758(&qword_1E5F78, &unk_16D400);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v16 - v12;

  sub_169194();

  sub_169184();
  sub_1691D4();
  v14 = sub_168E14();
  (*(*(v14 - 8) + 16))(v13, a4, v14);
  sub_5370(v13, 0, 1, v14);
  sub_1691B4();
  sub_1691C4();
  (*(v6 + 104))(v9, enum case for ResponseType.disambiguation(_:), v5);
  return sub_169174();
}

uint64_t sub_D1904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D1A98(a1, a2, a3);
  sub_1487EC(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = sub_D1AF4();
  }

  *v3 = v11;
  return sub_D1ACC();
}

uint64_t sub_D196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_D1A98(a1, a2, a3);
  sub_1487EC(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v11 = sub_D1AF4();
  }

  *v3 = v11;
  return sub_D1ACC();
}

uint64_t sub_D19D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D1A98(a1, a2, a3);
  sub_1487EC(v5, v6, v7);
  if (v4)
  {
    v8 = sub_D1B2C();
  }

  else
  {
    v8 = sub_D1AF4();
  }

  *v3 = v8;
  return sub_D1ACC();
}

uint64_t sub_D1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_D1A98(a1, a2, a3);
  sub_1487EC(v5, v6, v7);
  if (v4)
  {
    v8 = sub_D1B2C();
  }

  else
  {
    v8 = sub_D1AF4();
  }

  *v3 = v8;
  return sub_D1ACC();
}

uint64_t sub_D1AF4()
{

  return sub_16AD04();
}

uint64_t sub_D1B0C()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];
}

id sub_D1B2C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_D1B44(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v16);
  if (v17)
  {
    sub_D124(&v16, v18);
    v4 = v19;
    v5 = v20;
    sub_D084(v18, v19);
    (*(v5 + 8))(v4, v5);
    v7 = v6;
    if (v6)
    {
      sub_95578();
      v7 = sub_99BFC();
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCarName:v7];

    v9 = sub_1693E4();
    sub_955E4(v9);
    (*(v10 + 8))(a1);
    sub_D13C(v18);
  }

  else
  {
    sub_57A80(&v16);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    v12 = sub_16A9A4();
    sub_386D8(v12, 0x10uLL, 0xD0000000000000ABLL, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 60, 0xD000000000000016, v2);
    v13 = sub_1693E4();
    sub_955E4(v13);
    (*(v14 + 8))(a1);
    return 0;
  }

  return v8;
}

id sub_D1D24(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v24 = v3;
  swift_getObjectType();
  if (v5 == 161)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v25);
    if (v26)
    {
      sub_D124(&v25, v27);
      v6 = v28;
      v7 = v29;
      sub_D084(v27, v28);
      (*(v7 + 8))(v6, v7);
      if (v8)
      {
        sub_95578();
        v9 = sub_99BFC();
      }

      else
      {
        v9 = 0;
      }

      v21 = [objc_allocWithZone(INGetCarPowerLevelStatusIntent) initWithCarName:v9];

      v22 = swift_dynamicCastUnknownClass();
      if (!v22)
      {

        v22 = v24;
      }

      sub_D13C(v27);
      return v22;
    }

    sub_57A80(&v25);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_D21A4();
    sub_D2194();
    v18 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_D21A4();
    sub_D2194();
    v18 = 18;
  }

  sub_386D8(v11, v12, v13, v14, v15, v16, v18, v17, v23);

  return v24;
}

id sub_D1F74(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 161)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_D2194();
    sub_386D8(v6, v7, v8, v9, v10, v11, 39, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(INGetCarPowerLevelStatusIntent) initWithCarName:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_D2120@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 161 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_D21B8(void *a1)
{
  if (!sub_D2210(a1))
  {
    return 0;
  }

  v3 = *(v1 + 16);

  v4 = sub_13F594(a1, v3);

  return v4;
}

BOOL sub_D2210(void *a1)
{
  v3 = *(v1 + 16);

  v4 = sub_13F594(a1, v3);

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_D2264()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_D230C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 64) = a2;
  sub_D124(a3, v3 + 24);
  return v3;
}

void sub_D2338(unsigned __int8 a1)
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  sub_16A9A4();
  sub_D2FA8();
  sub_D2FBC();
  sub_386D8(v4, v5, v6, v7, v8, v9, 44, v10, v51);
  v11 = [objc_allocWithZone(SISchemaUEISiriCarCommandStarted) init];
  v54 = v11;
  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      sub_D2FEC();
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v19, v20, v21, v22, v23, v24, 52, v25, v52);
      if (v54)
      {
        [v54 setCarPlayConnection:2];
      }
    }

    else
    {
      if (v11)
      {
        [v11 setCarPlayConnection:0];
      }

      sub_D2FEC();
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v26, v27, v28, v29, v30, v31, 56, v32, v52);
    }
  }

  else
  {
    sub_D2FEC();
    sub_D2FA8();
    sub_D2FBC();
    sub_386D8(v12, v13, v14, v15, v16, v17, 49, v18, v52);
    if (v54)
    {
      [v54 setCarPlayConnection:1];
    }
  }

  v33 = [objc_allocWithZone(SISchemaUEISiriCarCommandContext) init];
  [v33 setStartedOrChanged:v54];
  v34 = [objc_allocWithZone(SISchemaClientEvent) init];
  [v34 setUeiSiriCarCommandContext:v33];
  v35 = sub_D2880();
  if (v35)
  {
    v36 = v35;
    if (v34)
    {
      [v34 setEventMetadata:v35];
      sub_D2FEC();
      sub_D2FA8();
      sub_D2FBC();
      sub_386D8(v37, v38, v39, v40, v41, v42, 71, v43, v53);
      [*(v1 + 16) emitMessage:v34];
    }
  }

  else
  {
    sub_16A9A4();
    sub_D2FE0();
    sub_D2FBC();
    sub_386D8(v44, v45, v46, v47, v48, v49, 65, v50, 0x800000000018AF40);
    v36 = v54;
    v54 = v34;
  }
}

void sub_D2604()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  sub_16A9A4();
  sub_D2FE0();
  sub_D2FCC();
  sub_386D8(v2, v3, v4, v5, v6, v7, 77, v8, 0x800000000018AF10);
  v9 = [objc_allocWithZone(SISchemaUEISiriCarCommandEnded) init];
  v33 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = sub_16A1B4();
    if (v12)
    {
      if (v11 == 0xD000000000000012 && v12 == 0x800000000017F6B0)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_16AE54();
      }
    }

    else
    {
      v14 = 0;
    }

    [v10 setIsSiriDigitalCarKeyRequest:v14 & 1];
  }

  v15 = [objc_allocWithZone(SISchemaUEISiriCarCommandContext) init];
  [v15 setEnded:v33];
  v16 = [objc_allocWithZone(SISchemaClientEvent) init];
  [v16 setUeiSiriCarCommandContext:v15];
  v17 = sub_D2880();
  if (v17)
  {
    v18 = v17;
    if (v16)
    {
      [v16 setEventMetadata:v17];
      sub_D2FEC();
      sub_D2FE0();
      sub_D2FCC();
      sub_386D8(v19, v20, v21, v22, v23, v24, 93, v25, v0);
      [*(v0 + 16) emitMessage:v16];
    }
  }

  else
  {
    sub_16A9A4();
    sub_D2FE0();
    sub_D2FCC();
    sub_386D8(v26, v27, v28, v29, v30, v31, 87, v32, 0x800000000018AF40);
    v18 = v33;
    v33 = v16;
  }
}

id sub_D2880()
{
  v1 = sub_168414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = [objc_allocWithZone(SISchemaClientEventMetadata) init];
  v10 = [*(v0 + 64) latestStoredTurn];
  if (v10)
  {
    v11 = v10;
    sub_1683F4();

    (*(v2 + 32))(v8, v6, v1);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_16ACF4(30);

    v22 = 0xD00000000000001CLL;
    v23 = 0x800000000018AEC0;
    sub_D2E80();
    v24._countAndFlagsBits = sub_16AE24();
    sub_16A744(v24);

    v12 = v22;
    v13 = v23;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x800000000uLL, 0xD00000000000009DLL, 0x800000000018ADA0, 0xD000000000000017, 0x800000000018AE40, 105, v12, v13);

    if (v9)
    {
      v16 = v9;
      v17 = sub_1683E4();
      sub_D2ED8(v17, v18, v16);
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    v20 = sub_16A9A4();
    sub_386D8(v20, 0x800000000uLL, 0xD00000000000009DLL, 0x800000000018ADA0, 0xD000000000000017, 0x800000000018AE40, 101, 0xD000000000000054, 0x800000000018AE60);

    return 0;
  }

  return v9;
}

uint64_t sub_D2B90(char a1, char a2)
{
  v3 = v2;
  v5 = qword_1754F0[a1];
  sub_168AC4();
  CarCommandsUseCase.rawValue.getter(a2);
  sub_168AB4();
  v6 = v3[7];
  sub_D084(v3 + 3, v3[6]);
  sub_168A04();
}

uint64_t sub_D2CE0(char a1)
{
  v2 = v1;
  sub_168AC4();
  CarCommandsUseCase.rawValue.getter(a1);
  sub_168AB4();
  v4 = v2[7];
  sub_D084(v2 + 3, v2[6]);
  sub_168A04();
}

uint64_t sub_D2DA8(uint64_t *a1)
{
  v1 = *a1;
  sub_16A1C4();
  sub_16A1A4();
  return sub_168AA4();
}

uint64_t sub_D2DF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_D13C((v0 + 24));

  return v0;
}

uint64_t sub_D2E28()
{
  sub_D2DF8();

  return _swift_deallocClassInstance(v0, 72, 7);
}

unint64_t sub_D2E80()
{
  result = qword_1EB3B0;
  if (!qword_1EB3B0)
  {
    sub_168414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0);
  }

  return result;
}

void sub_D2ED8(uint64_t a1, unint64_t a2, void *a3)
{
  isa = sub_1683C4().super.isa;
  sub_D2F4C(a1, a2);
  [a3 setTurnID:isa];
}

uint64_t sub_D2F4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_D2FEC()
{

  return sub_16A9A4();
}

uint64_t getEnumTagSinglePayload for NLDefroster(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NLDefroster(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0xD3158);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_D3194()
{
  result = qword_1EB3C0;
  if (!qword_1EB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3C0);
  }

  return result;
}

Swift::Int sub_D31F8(unsigned __int8 a1)
{
  sub_16AF14();
  sub_16AF24(a1);
  return sub_16AF54();
}

Swift::Int sub_D325C()
{
  v1 = *v0;
  sub_16AF14();
  sub_16AF24(v1);
  return sub_16AF54();
}

uint64_t getEnumTagSinglePayload for SeekDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SeekDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xD33F4);
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

unint64_t sub_D343C()
{
  result = qword_1EB3C8;
  if (!qword_1EB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3C8);
  }

  return result;
}

Swift::Int sub_D34C8(char a1)
{
  sub_16AF14();
  sub_16AF24(a1 & 1);
  return sub_16AF54();
}

uint64_t type metadata accessor for CarCommandsSetCarPlayClimateStatusCATsSimple()
{
  result = qword_1EB3D0;
  if (!qword_1EB3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D35B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_D360C(a1, a2);
}

uint64_t sub_D360C(uint64_t a1, uint64_t a2)
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
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_D3768(uint64_t a1, uint64_t a2)
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

uint64_t sub_D3870()
{
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v1[12] = v12;
  v1[13] = v0;
  v1[10] = v4;
  v1[11] = v2;
  v1[8] = v8;
  v1[9] = v6;
  v1[7] = v13;
  v14 = *(*(sub_5758(&qword_1E5F78, &unk_16D400) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v15 = sub_1691E4();
  v1[15] = v15;
  v16 = *(v15 - 8);
  v1[16] = v16;
  v17 = *(v16 + 64) + 15;
  v1[17] = swift_task_alloc();
  v18 = sub_16A284();
  v1[18] = v18;
  v19 = *(v18 - 8);
  v1[19] = v19;
  v20 = *(v19 + 64) + 15;
  v1[20] = swift_task_alloc();
  v21 = swift_task_alloc();
  v1[21] = v21;
  *v21 = v1;
  v21[1] = sub_D3A30;

  return sub_D411C(v11, v9, v7, v5, v3);
}

uint64_t sub_D3A30()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  *v4 = *v1;
  v3[22] = v8;

  if (v0)
  {
    v9 = v3[20];
    v10 = v3[17];
    v11 = v3[14];

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v3[23] = v14;
    *v14 = v7;
    v14[1] = sub_D3BC4;
    v15 = v3[20];
    v16 = v3[13];
    v17 = v3[10];
    v18 = v3[11];
    v19 = v3[8];
    v20 = v3[9];

    return sub_D4824(v15, v19, v20, v17, v18);
  }
}

uint64_t sub_D3BC4()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_D3CC8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  v9 = v8[3];
  v19 = v8[4];
  sub_D084(v8, v9);
  v0[5] = v5;
  v0[6] = sub_4FB1C();
  v10 = sub_10888(v0 + 2);
  (*(v2 + 16))(v10, v3, v5);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v11 = swift_allocObject();
  v0[25] = v11;
  *(v11 + 16) = xmmword_16D440;
  *(v11 + 32) = v1;
  v12 = sub_168E14();
  sub_5370(v7, 1, 1, v12);
  v13 = v1;
  sub_67D38();
  sub_109A0(v7, &qword_1E5F78, &unk_16D400);
  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_D3E80;
  v16 = v0[17];
  v17 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

uint64_t sub_D3E80()
{
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[25];
  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = *v0;
  sub_D2A4();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D3FF0()
{
  sub_D3A4();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);

  sub_D37C();

  return v6();
}

uint64_t sub_D4098()
{
  sub_1696C();

  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);

  sub_D37C();

  return v5();
}

uint64_t sub_D411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v6 = *(*(sub_16A164() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v7 = sub_16A0C4();
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v9 = *(v8 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_D420C, 0, 0);
}

uint64_t sub_D420C()
{
  v1 = v0[14];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v3 = v2;
  v0[20] = v2;
  *(v2 + 16) = xmmword_175690;
  *(v2 + 32) = 0x656D614E726163;
  *(v2 + 40) = 0xE700000000000000;
  if (v1)
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[17];
    sub_99C94();
    *(v3 + 72) = v6;
    v7 = sub_10888((v3 + 48));
    (*(v5 + 32))(v7, v4, v6);
  }

  else
  {
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  v8 = v0[17];
  v9 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  strcpy((v3 + 80), "appIdentifier");
  *(v3 + 94) = -4864;
  *(v3 + 120) = v8;
  sub_10888((v3 + 96));
  sub_16A6E4();
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = 0x800000000017E650;
  v12 = *v9;
  v0[2] = v12;
  v13 = 0;
  if (v12)
  {
    v13 = sub_169FD4();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  v14 = v0[15];
  *(v3 + 144) = v12;
  *(v3 + 168) = v13;
  strcpy((v3 + 176), "remainingFuel");
  *(v3 + 190) = -4864;
  v15 = *(v14 + 8);
  v0[3] = v15;
  v16 = 0;
  if (v15)
  {
    v16 = sub_16A004();
  }

  else
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  *(v3 + 192) = v15;
  *(v3 + 216) = v16;
  *(v3 + 224) = 0x6E696E69616D6572;
  *(v3 + 232) = 0xEF65677261684367;
  v17 = *(v14 + 16);
  v0[4] = v17;
  v18 = 0;
  if (v17)
  {
    v18 = sub_16A004();
  }

  else
  {
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  *(v3 + 240) = v17;
  *(v3 + 264) = v18;
  *(v3 + 272) = 0x676E696772616863;
  *(v3 + 280) = 0xE800000000000000;
  v19 = *(v14 + 24);
  if (v19 == 2)
  {
    v20 = 0;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    *(v3 + 288) = v19;
    v20 = &type metadata for Bool;
  }

  *(v3 + 312) = v20;
  *(v3 + 320) = 0x75466F54656D6974;
  *(v3 + 328) = 0xEA00000000006C6CLL;
  v21 = *(v14 + 32);
  v0[5] = v21;
  v22 = 0;
  if (v21)
  {
    v22 = sub_16A054();
  }

  else
  {
    *(v3 + 344) = 0;
    *(v3 + 352) = 0;
  }

  *(v3 + 336) = v21;
  *(v3 + 360) = v22;
  *(v3 + 368) = 0x7453656369766564;
  *(v3 + 376) = 0xEB00000000657461;
  v23 = *(v14 + 40);
  v0[6] = v23;
  v24 = 0;
  if (v23)
  {
    v24 = sub_16A124();
  }

  else
  {
    *(v3 + 392) = 0;
    *(v3 + 400) = 0;
  }

  v25 = v0[16];
  *(v3 + 384) = v23;
  *(v3 + 408) = v24;
  type metadata accessor for CarCommandsGetPowerLevelCATsSimple();
  sub_D4DC4((v0 + 2), (v0 + 7), &qword_1EB4D0, &qword_1756F8);
  sub_D4DC4((v0 + 3), (v0 + 8), &qword_1EB4D8, &qword_175700);
  sub_D4DC4((v0 + 4), (v0 + 9), &qword_1EB4D8, &qword_175700);
  sub_D4DC4((v0 + 5), (v0 + 10), &qword_1EB4E0, &qword_175708);
  sub_D4DC4((v0 + 6), (v0 + 11), &qword_1EB4E8, &qword_175710);
  sub_16A154();
  v0[21] = sub_16A0F4();
  v26 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v29 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_D4604;

  return v29(0xD00000000000002ELL, 0x800000000018B1C0, v3);
}

uint64_t sub_D4604()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  sub_D2A4();
  *v10 = v9;
  v5[23] = v0;

  if (!v0)
  {
    v11 = v5[20];

    v5[24] = v3;
  }

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D4720()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[24];

  return v4(v5);
}

uint64_t sub_D47A0()
{
  sub_1696C();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[16];

  sub_D37C();
  v6 = v0[23];

  return v5();
}

uint64_t sub_D4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_D48F4, 0, 0);
}

uint64_t sub_D48F4()
{
  sub_D3A4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  *(v0 + 96) = sub_16A0F4();
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    sub_99C94();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = sub_16A0C4();
  sub_5370(v6, v5, 1, v8);
  *(v0 + 139) = *(v7 + 24);
  v9 = *v7;
  *(v0 + 104) = v7[1];
  *(v0 + 112) = v7[2];
  v10 = v7[4];
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_D4A38;
  v12 = *(v0 + 80);

  return sub_DDDE4();
}

uint64_t sub_D4A38()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = v5[15];
  v7 = v5[12];
  v8 = v5[10];
  v9 = *v1;
  sub_D2A4();
  *v10 = v9;
  *(v11 + 128) = v0;

  sub_109A0(v8, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_D4B90()
{
  if (!*(v0 + 104) || (sub_169F34(), (v1 & 1) != 0))
  {
    if (*(v0 + 112))
    {
      sub_169F34();
    }
  }

  v2 = *(v0 + 24);
  v12 = *(v0 + 88);
  v13 = *(v0 + 80);
  v3 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  *(v0 + 136) = 0;
  v4 = *(v0 + 139);
  sub_16A134();
  *(v0 + 137) = 1;
  sub_16A134();
  *(v0 + 138) = 2;
  sub_16A134();

  sub_16A254();

  v5 = enum case for CarCommandsSnippetsPluginModel.powerLevelStatusModel(_:);
  v6 = sub_16A284();
  sub_10AFC(v6);
  (*(v7 + 104))(v10, v5);

  sub_D37C();

  return v8();
}

uint64_t sub_D4D38()
{
  v2 = v0[10];
  v1 = v0[11];

  sub_D37C();
  v4 = v0[16];

  return v3();
}

uint64_t sub_D4DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  sub_10AFC(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_D4E24(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_D4E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_D4EE8(char *a1, char a2)
{
  v3 = v2;
  v30 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) != 0x10)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_D5930();
    sub_D5908();
    v17 = 17;
    goto LABEL_16;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v31);
  if (!v31[3])
  {
    sub_99140(v31, &qword_1E5F80, &unk_16E7E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9378, &qword_172E58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_13;
  }

  if (!*(&v33 + 1))
  {
LABEL_13:
    sub_99140(&v32, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_D5930();
    sub_D5908();
    v17 = 22;
LABEL_16:
    sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v29);

    return v30;
  }

  sub_D124(&v32, v35);
  v6 = [objc_allocWithZone(sub_16A524()) init];
  if (a2)
  {
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      v8 = [v30 carName];
LABEL_22:
      v23 = v8;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v21 = v36;
  v20 = v37;
  sub_D084(v35, v36);
  v8 = (*(*(v20 + 8) + 8))(v21);
  if (v22)
  {
    sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
    v8 = sub_99BFC();
    goto LABEL_22;
  }

  v23 = 0;
LABEL_24:
  sub_86138(v8, "setCarName:");

  if (a2 & 1) != 0 || (sub_16AE54())
  {
    sub_D084(v35, v36);
    v24 = sub_D5918();
    result = v25(v24);
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v26 = [objc_allocWithZone(NSNumber) initWithInteger:result];
  }

  else
  {
    v26 = [v30 carSignal];
  }

  v27 = v26;
  sub_86138(v26, "setCarSignal:");

  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    v28 = v30;
  }

  sub_D13C(v35);
  return v28;
}

id sub_D5308(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v16 carName];
  v5 = [v16 carSignal];
  if ((a2 & 0xF0) == 0x10)
  {
    if (a2)
    {
      sub_16138(a1, v18);
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_991D0())
      {

        v5 = v17;
      }
    }

    else
    {
      sub_16138(a1, v18);
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_991D0())
      {

        v4 = v17;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_D5908();
    sub_386D8(v7, v8, v9, v10, v11, v12, 42, v13, 0x8000000000186FF0);
  }

  v14 = [objc_allocWithZone(sub_16A524()) init];
  [v14 setCarName:v4];
  [v14 setCarSignal:v5];

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v16;
  }

  return result;
}

double sub_D5548@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x10)
  {
    if (a1)
    {
      v4 = [v2 carSignal];
      if (v4)
      {
        v5 = v4;
        v6 = &qword_1E6310;
        v7 = NSNumber_ptr;
LABEL_7:
        *(a2 + 24) = sub_16484(0, v6, v7);
        *a2 = v5;
        return result;
      }
    }

    else
    {
      v8 = [v2 carName];
      if (v8)
      {
        v5 = v8;
        v6 = &qword_1E6378;
        v7 = INSpeakableString_ptr;
        goto LABEL_7;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_D55F8(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v24);
  if (!v24[3])
  {
    sub_99140(v24, &qword_1E5F80, &unk_16E7E0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_8;
  }

  v2 = sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9378, &qword_172E58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_8;
  }

  if (!*(&v26 + 1))
  {
LABEL_8:
    sub_99140(&v25, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x8000uLL, 0xD0000000000000ACLL, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 64, 0xD000000000000016, v3);
    v16 = sub_1693E4();
    sub_955E4(v16);
    (*(v17 + 8))(a1);
    return 0;
  }

  sub_D124(&v25, v28);
  v5 = [objc_allocWithZone(v1) init];
  v7 = v29;
  v6 = v30;
  sub_D084(v28, v29);
  v8 = *(v6 + 8);
  v9 = *(v8 + 8);
  v10 = v5;
  v11 = v9(v7, v8);
  if (v12)
  {
    sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
    v11 = sub_99BFC();
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  sub_86138(v11, "setCarName:");

  sub_D084(v28, v29);
  v19 = sub_D5918();
  result = v20(v19);
  if ((result & 0x8000000000000000) == 0)
  {
    v21 = [objc_allocWithZone(NSNumber) initWithInteger:result];
    sub_86138(v21, "setCarSignal:");

    v22 = sub_1693E4();
    sub_955E4(v22);
    (*(v23 + 8))(a1);
    sub_D13C(v28);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CarCommandsGetPowerLevelCATsSimple()
{
  result = qword_1EB4F0;
  if (!qword_1EB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D59D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_D5A24(a1, a2);
}

uint64_t sub_D5A24(uint64_t a1, uint64_t a2)
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
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_D5B80(uint64_t a1, uint64_t a2)
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

BOOL sub_D5C88(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_16AC04();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_D5CC8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v16 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v16;
  *(v9 + 48) = *(a2 + 32);
  sub_D124(a1, v9 + 56);
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 128) = a9;
  return v9;
}

uint64_t sub_D5D4C()
{
  *(v1 + 96) = v0;
  v2 = sub_D388();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_D5D74()
{
  sub_D8400(*(v0 + 96) + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_D124((v0 + 56), v0 + 16);
    v2 = sub_D084((v0 + 16), *(v0 + 40));
    v3 = *(v1 + 96);
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_16AD54();
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        [objc_allocWithZone(NSNumber) initWithInteger:v6];
        sub_16AD34();
        v7 = _swiftEmptyArrayStorage[2];
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
        --v4;
      }

      while (v4);
    }

    v8 = *(v0 + 96);
    sub_138ED4(_swiftEmptyArrayStorage);
    v10 = v9;
    *(v0 + 104) = v9;
    v11 = *v2;
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_D5FE0;

    return sub_A6674(v10, v8 + 56);
  }

  else
  {
    sub_D8470(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000021, 0x800000000018B720, 39, 0xD00000000000004CLL, 0x800000000018B750);
    sub_30AEC();

    return v16(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_D5FE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *(v3 + 104);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = sub_D388();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_D60E0()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  v1 = *(v0 + 120);
  sub_30AEC();

  return v2();
}

uint64_t sub_D613C()
{
  *(v1 + 16) = v0;
  v2 = sub_D388();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_D6164()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  sub_D084(v1 + 7, v2);
  v4 = (*(v3 + 96))(v2, v3);
  LOBYTE(v2) = sub_D5C88(v4);

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  if (v2)
  {
    v6 = sub_D6260;
  }

  else
  {
    v6 = sub_D63C0;
  }

  v5[1] = v6;
  v7 = *(v0 + 16);

  return sub_D5D4C();
}

uint64_t sub_D6260()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D6348()
{
  sub_D2DC();
  v1 = sub_D7D9C(*(*(v0 + 16) + 96), *(v0 + 32));

  sub_30AEC();

  return v2(v1);
}

uint64_t sub_D63C0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D64A8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[10];
  v4 = v2[11];
  sub_D084(v2 + 7, v3);
  v5 = (*(v4 + 96))(v3, v4);
  v6 = sub_D84D8(v5, v1);

  v7 = sub_D7D9C(*(*(v0 + 16) + 96), v6);

  sub_30AEC();

  return v8(v7);
}

uint64_t sub_D6578()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  *(v1 + 176) = v2;
  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v1;
  v3[1] = sub_D6608;

  return sub_D774C();
}

uint64_t sub_D6608()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 177) = v6;

  if (v0)
  {
    sub_D37C();

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_D6728, 0, 0);
  }
}

uint64_t sub_D6728()
{
  v1 = *(v0 + 177);
  v2 = *(v0 + 176);
  if (v1 == v2)
  {
    sub_16ACF4(43);

    if (v2)
    {
      v17._countAndFlagsBits = 1702195828;
    }

    else
    {
      v17._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v17._object = v18;
    sub_16A744(v17);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v20, v21, v22, v23, v24, v25, 54, 0xD000000000000029, 0x800000000018B6F0);

    sub_D37C();

    return v26();
  }

  else
  {
    sub_16ACF4(117);
    v28._countAndFlagsBits = 0xD000000000000048;
    v28._object = 0x800000000018B600;
    sub_16A744(v28);
    if (v1)
    {
      v3._countAndFlagsBits = 1702195828;
    }

    else
    {
      v3._countAndFlagsBits = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    v3._object = v4;
    sub_16A744(v3);

    v29._countAndFlagsBits = 0xD00000000000001ALL;
    v29._object = 0x800000000018B650;
    sub_16A744(v29);
    if (v2)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    v30._countAndFlagsBits = 0x6E69746E6F43202ELL;
    v30._object = 0xEF2E2E2E676E6975;
    sub_16A744(v30);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v7 = sub_16A584();
    *(v0 + 112) = sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v8, v9, v10, v11, v12, v13, 58, 0, 0xE000000000000000);

    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_D6A64;
    v15 = *(v0 + 96);

    return sub_D613C();
  }
}

uint64_t sub_D6A64(char a1)
{
  sub_D358();
  v5 = v4;
  v6 = *(v4 + 120);
  v7 = *v2;
  sub_D254();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 178) = a1 & 1;

    return _swift_task_switch(sub_D6BA8, 0, 0);
  }
}

uint64_t sub_D6BA8()
{
  if (*(v0 + 178) == 1)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 96);
    v3 = *(v0 + 176);
    sub_16A9A4();
    sub_D9230();
    sub_386D8(v4, v5, v6, v7, v8, v9, 64, v10, 0x800000000018B690);
    v11 = 120;
    if (v3)
    {
      v11 = 104;
    }

    *(v0 + 128) = [objc_allocWithZone(NSNumber) initWithInteger:*(v2 + v11)];
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *v12 = v0;
    v12[1] = sub_D6D74;
    v13 = *(v0 + 96);

    return sub_D5D4C();
  }

  else
  {
    v15 = *(*(v0 + 96) + 96);
    type metadata accessor for PKCarFunction(0);
    v16 = sub_D92A4();
    v18 = v17;
    sub_3CC14();
    sub_77030();
    *v19 = v16;
    v19[1] = v18;
    swift_willThrow();
    sub_D37C();

    return v20();
  }
}

uint64_t sub_D6D74()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 136);
  *v2 = *v0;
  *(v1 + 144) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D6E5C()
{
  v1 = sub_8A268(v0[18]);
  v0[19] = v1;

  v2 = v0[12];
  if (v1)
  {
    v3 = v0[14];
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v4, v5, v6, v7, v8, v9, 72, v10, 0x800000000018B6D0);
    sub_D8400(v2 + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v11 = swift_task_alloc();
      v0[20] = v11;
      *v11 = v0;
      v11[1] = sub_D7098;
      v12 = v0[16];

      return sub_A6BA4(v1, v12, 0, 0xF000000000000000, 0xD000000000000048);
    }

    v14 = v0[16];
    v20 = v0[14];
    sub_D8470((v0 + 7));
    sub_16A9A4();
    sub_D9298();
    sub_D9230();
    sub_386D8(v21, v22, v23, v24, v25, v26, 75, v27, 0x800000000018B560);
    sub_3CC14();
    sub_77030();
    *v28 = xmmword_170840;
    swift_willThrow();
  }

  else
  {
    v14 = v0[16];
    v15 = *(v2 + 96);
    type metadata accessor for PKCarFunction(0);
    v16 = sub_D92A4();
    v18 = v17;
    sub_3CC14();
    sub_77030();
    *v19 = v16;
    v19[1] = v18;
    swift_willThrow();
  }

  sub_D37C();

  return v29();
}

uint64_t sub_D7098()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 168) = v0;

  if (v0)
  {
    v9 = sub_D725C;
  }

  else
  {
    v9 = sub_D7194;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D7194()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = (*sub_D084(v0 + 2, v0[5]) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v4 = v3[3];
  v5 = v3[4];
  sub_D084(v3, v4);
  (*(v5 + 24))(v4, v5);

  sub_D13C(v0 + 2);
  sub_D37C();

  return v6();
}

uint64_t sub_D725C()
{
  sub_D2DC();
  v1 = *(v0 + 152);

  sub_D13C((v0 + 16));
  v2 = *(v0 + 168);
  sub_D37C();

  return v3();
}

uint64_t sub_D72C8()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_D7354;

  return sub_D5D4C();
}

uint64_t sub_D7354()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D743C()
{
  v1 = sub_8A268(v0[14]);
  v0[15] = v1;

  if (v1)
  {
    sub_D8400(v0[12] + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v2 = swift_task_alloc();
      v0[16] = v2;
      *v2 = v0;
      v3 = sub_D9284(v2);

      return sub_A5FD8(v3, v4);
    }

    sub_D8470((v0 + 7));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_D9270();
    sub_386D8(v8, 0x20000uLL, v7 + 80, 0x800000000018B3D0, v9, v10, 89, 0xD000000000000046, 0x800000000018B5B0);
  }

  sub_30AEC();

  return v11(0);
}

uint64_t sub_D75E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D76D0()
{
  sub_D2DC();
  v1 = *(v0 + 136);

  if (v1)
  {
  }

  sub_D13C((v0 + 16));
  sub_30AEC();

  return v2(v1 != 0);
}

uint64_t sub_D774C()
{
  sub_D2DC();
  *(v1 + 96) = v0;
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_D77D8;

  return sub_D5D4C();
}

uint64_t sub_D77D8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_D78C0()
{
  v1 = sub_8A268(v0[14]);
  v0[15] = v1;

  v2 = v0[12];
  if (v1)
  {
    sub_D8400(v2 + 16, (v0 + 7));
    if (v0[10])
    {
      sub_D9240();
      v3 = swift_task_alloc();
      v0[16] = v3;
      *v3 = v0;
      v4 = sub_D9284(v3);

      return sub_A5FD8(v4, v5);
    }

    sub_D8470((v0 + 7));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v12 = v0[12];
    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    sub_16A9A4();
    sub_D9270();
    sub_386D8(v15, 0x20000uLL, v14 + 78, 0x800000000018B3D0, v16, v17, 102, 0xD000000000000048, 0x800000000018B560);
    v18 = *(v12 + 96);
    type metadata accessor for PKCarFunction(0);
    v19 = sub_D92A4();
    v21 = v20;
    sub_3CC14();
    sub_77030();
    *v22 = v19;
    v22[1] = v21;
    swift_willThrow();
  }

  else
  {
    v7 = *(v2 + 96);
    type metadata accessor for PKCarFunction(0);
    v8 = sub_D92A4();
    v10 = v9;
    sub_3CC14();
    sub_77030();
    *v11 = v8;
    v11[1] = v10;
    swift_willThrow();
  }

  sub_30AEC();

  return v23(0);
}

uint64_t sub_D7AEC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 136) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

void sub_D7BD4()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = 0;
    v3 = *(v0[12] + 112);
    v4 = *(v3 + 16);
    while (1)
    {
      v5 = v2;
      if (v4 == v2)
      {
        v12 = (*sub_D084(v16 + 2, v16[5]) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
        v13 = v12[3];
        v14 = v12[4];
        sub_D084(v12, v13);
        (*(v14 + 24))(v13, v14);
LABEL_9:
        v15 = v16[15];

        sub_D13C(v16 + 2);
        sub_30AEC();
        v11 = v4 != v5;
        goto LABEL_10;
      }

      if (v2 >= *(v3 + 16))
      {
        break;
      }

      ++v2;
      v6 = *(v3 + 32 + 8 * v5);
      sub_16484(0, &qword_1EB640, NSObject_ptr);
      v7 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
      LOBYTE(v6) = sub_16AAD4();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = v0[15];
    sub_3CC14();
    sub_77030();
    *v9 = 0;
    v9[1] = 0;
    swift_willThrow();

    sub_D13C(v0 + 2);
    sub_30AEC();
    v11 = 0;
LABEL_10:

    v10(v11);
  }
}

BOOL sub_D7D9C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v23 = a2 & 0xC000000000000001;
  v6 = a2 + 56;
  v22 = v4;
  v21 = a1 + 32;
  while (1)
  {
    v7 = v3;
    if (v3 == v4)
    {
      break;
    }

    v8 = *(v5 + 8 * v3++);
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
    if (v23)
    {
      v10 = sub_16AC44();

      if (v10)
      {
LABEL_12:
        sub_16ACF4(68);
        v24._countAndFlagsBits = 0xD000000000000015;
        v24._object = 0x800000000018B4C0;
        sub_16A744(v24);
        type metadata accessor for PKCarFunction(0);
        sub_16AD84();
        v25._countAndFlagsBits = 0xD00000000000002DLL;
        v25._object = 0x800000000018B4E0;
        sub_16A744(v25);
        if (qword_1E58E8 != -1)
        {
          sub_9ED4();
        }

        v16 = sub_16A584();
        sub_9DA0(v16, qword_1E65C0);
        v17 = sub_16A9A4();
        sub_386D8(v17, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000043, 0x800000000018B470, 123, 0, 0xE000000000000000);

        return v7 != v4;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v11 = sub_16AAC4(*(a2 + 40));
        v12 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v13 = v11 & v12;
          if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
          {
            break;
          }

          v14 = *(*(a2 + 48) + 8 * v13);
          v15 = sub_16AAD4();

          v11 = v13 + 1;
          if (v15)
          {

            v4 = v22;
            goto LABEL_12;
          }
        }
      }

      v4 = v22;
      v5 = v21;
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  sub_386D8(v20, 0x20000uLL, 0xD000000000000096, 0x800000000018B3D0, 0xD000000000000043, 0x800000000018B470, 128, 0xD000000000000046, 0x800000000018B510);
  return v7 != v4;
}

uint64_t *sub_D80C8()
{
  sub_D8470((v0 + 2));
  sub_D13C(v0 + 7);
  v1 = v0[12];

  v2 = v0[14];

  v3 = v0[16];

  return v0;
}

uint64_t sub_D8108()
{
  sub_D80C8();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_D8160()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_D6578();
}

uint64_t sub_D81F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_9EDAC;

  return sub_D774C();
}

uint64_t sub_D8288()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_D8318;

  return sub_D72C8();
}

uint64_t sub_D8318()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_D254();
  *v6 = v5;

  sub_30AEC();

  return v7(v2);
}

uint64_t sub_D8400(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D8470(uint64_t a1)
{
  v2 = sub_5758(&qword_1EAFA0, &qword_175890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t *sub_D84D8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 >= 0)
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_16AC04();
      a2 = sub_8FB48(v2, v5);
      a1 = v3;
      goto LABEL_7;
    }

    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_16ABC4();
LABEL_11:
    while (sub_16AC34())
    {
      swift_dynamicCast();
      if (*(v3 + 16))
      {
        v7 = sub_16AAC4(*(v3 + 40));
        v8 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v9 = v7 & v8;
          if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
          {
            break;
          }

          v10 = *(*(v3 + 48) + 8 * v9);
          v11 = sub_16AAD4();

          v7 = v9 + 1;
          if (v11)
          {
            v12 = *(&_swiftEmptySetSingleton + 2);
            if (*(&_swiftEmptySetSingleton + 3) <= v12)
            {
              sub_8FD24(v12 + 1);
            }

            sub_902DC(v13, &_swiftEmptySetSingleton);
            goto LABEL_11;
          }
        }
      }
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    if (v4)
    {
LABEL_7:

      return sub_D86E8(a1, a2);
    }

    return sub_D8888(a1, a2);
  }
}

void *sub_D86E8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_90A58(0, v5, v6);
    sub_D8A50(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_D8DD0(v10, v5, sub_D9214);
  }

  return v8;
}

unint64_t *sub_D8888(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = (&v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_90A58(0, v6, v8);
    sub_D8E4C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_D8D40(v12, v6, a2, a1);
  }

  return v10;
}

void sub_D8A50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_16ABC4();
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_A7318();
    sub_16A944();
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v30 = 0;
  v12 = (v6 + 64) >> 6;
  v32 = v5;
  v33 = v4;
  while (1)
  {
    v13 = v7;
    v14 = v8;
LABEL_9:
    if (v4 < 0)
    {
      if (!sub_16AC34())
      {
        goto LABEL_28;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      v18 = v41;
      v7 = v13;
      v17 = v14;
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v15 = v13;
    v16 = v14;
    v7 = v13;
    if (!v14)
    {
      break;
    }

LABEL_14:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_18:
    v34 = v17;
    v19 = sub_16AAC4(*(a4 + 40));
    v20 = ~(-1 << *(a4 + 32));
    do
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = 1 << (v19 & v20);
      if ((v23 & *(a4 + 56 + 8 * v22)) == 0)
      {

        v13 = v7;
        v4 = v33;
        v14 = v34;
        v12 = (v6 + 64) >> 6;
        v5 = v32;
        goto LABEL_9;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      v24 = *(*(a4 + 48) + 8 * v21);
      v25 = sub_16AAD4();

      v19 = v21 + 1;
    }

    while ((v25 & 1) == 0);

    v12 = (v6 + 64) >> 6;
    v26 = a1[v22];
    a1[v22] = v26 | v23;
    v4 = v33;
    v8 = v34;
    v14 = v34;
    v27 = (v26 & v23) == 0;
    v13 = v7;
    v5 = v32;
    if (!v27)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_28:
      sub_4A004();

      sub_933A0(a1, a2, v30, a4);
      return;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_D8D40(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_D8E4C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_D8DD0(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_D8E4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v49 = 0;
    v25 = 0;
    v42 = a3 + 56;
    v26 = 1 << *(a3 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(a3 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = a4 + 56;
    v45 = v29;
LABEL_24:
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v51 = (v28 - 1) & v28;
LABEL_31:
      v48 = v31 | (v25 << 6);
      v34 = *(v4 + 40);
      v35 = *(*(v5 + 48) + 8 * v48);
      v36 = sub_16AAC4(v34);
      v37 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v37;
        if (((*(v30 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {

          v4 = a4;
          v29 = v45;
          v28 = v51;
          goto LABEL_24;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v39 = *(*(a4 + 48) + 8 * v38);
        v40 = sub_16AAD4();

        v36 = v38 + 1;
      }

      while ((v40 & 1) == 0);

      *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v28 = v51;
      v24 = __OFADD__(v49++, 1);
      v4 = a4;
      v29 = v45;
      if (v24)
      {
        goto LABEL_42;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
LABEL_38:

        sub_933A0(a1, a2, v49, v5);
        return;
      }

      v33 = *(v42 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v51 = (v33 - 1) & v33;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v41 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v49 = 0;
    v50 = a3 + 56;
    v44 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v47 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(v5 + 40);
      v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v16 = sub_16AAC4(v14);
      v17 = v5;
      v18 = ~(-1 << *(v5 + 32));
      do
      {
        v19 = v16 & v18;
        v20 = (v16 & v18) >> 6;
        v21 = 1 << (v16 & v18);
        if ((v21 & *(v50 + 8 * v20)) == 0)
        {

          v5 = v17;
          v4 = a4;
          v10 = v44;
          v9 = v47;
          goto LABEL_6;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v22 = *(*(v17 + 48) + 8 * v19);
        v23 = sub_16AAD4();

        v16 = v19 + 1;
      }

      while ((v23 & 1) == 0);

      v10 = v44;
      a1[v20] |= v21;
      v9 = v47;
      v24 = __OFADD__(v49++, 1);
      v5 = v17;
      v4 = a4;
      if (v24)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v41 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v47 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_D91E4(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_D8A50(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t *sub_D9240()
{
  v1 = *(v0 + 96);
  sub_D124((v0 + 56), v0 + 16);
  result = sub_D084((v0 + 16), *(v0 + 40));
  v3 = *result;
  return result;
}

uint64_t sub_D92A4()
{

  return sub_16A7E4();
}

id sub_D9368(char a1)
{
  if (CarCommandsUseCase.rawValue.getter(a1) == 0x434178614D746573 && v3 == 0xE800000000000000)
  {

LABEL_13:
    result = [v1 hasMaxACOn];
    if (!result)
    {
      return result;
    }

    if (([v1 maxACOnInvalid] & 1) == 0)
    {
      v10 = &selRef_maxACOnDisabled;
      return ([v1 *v10] ^ 1);
    }

    return 0;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (CarCommandsUseCase.rawValue.getter(a1) == 0x616D696C43746573 && v6 == 0xEA00000000006574)
  {
  }

  else
  {
    v8 = sub_16AE54();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = [v1 hasHvacOn];
  if (result)
  {
    result = [v1 hasCompressorOn];
    if (result)
    {
      if (([v1 compressorOnInvalid] & 1) == 0 && (objc_msgSend(v1, "compressorOnDisabled") & 1) == 0)
      {
        v10 = &selRef_hvacOnInvalid;
        return ([v1 *v10] ^ 1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_D9524()
{
  v1 = [objc_allocWithZone(NSNumberFormatter) init];
  [v1 setMaximumFractionDigits:1];
  v2 = [v1 stringFromNumber:v0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_16A664();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_D95C4(char a1)
{
  if (a1)
  {
    return 0x736C616E676973;
  }

  else
  {
    return 0x656D614E726163;
  }
}

uint64_t sub_D95F4(void *a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  sub_DB250();
  if (swift_dynamicCastObjCClass())
  {
    sub_DB25C();
    sub_83D98();
    sub_DB268();
    if (a2 != 2)
    {
      return a3;
    }

    return 248;
  }

  sub_16A524();
  sub_DB250();
  if (!swift_dynamicCastClass())
  {
    sub_16A4A4();
    sub_DB250();
    if (swift_dynamicCastClass())
    {
      sub_DB25C();
      sub_83D98();
      sub_DB268();
      if (a2 != 2)
      {
        return a3 | 0x20;
      }

      return 248;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      v6._rawValue = &off_1D2C38;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      v7 = sub_16ADE4(v6, v14);

      if (!v7)
      {
        return 160;
      }

      return 248;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      v8._rawValue = &off_1D2C70;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      v9 = sub_16ADE4(v8, v15);

      if (!v9)
      {
        return 161;
      }

      return 248;
    }

    objc_opt_self();
    sub_DB250();
    if (swift_dynamicCastObjCClass())
    {
      sub_DB25C();
      sub_83D98();
      sub_DB268();
      if (a2 != 2)
      {
        return a3 | 0x30;
      }

      return 248;
    }

    sub_16A3B4();
    sub_DB250();
    if (swift_dynamicCastClass())
    {
      sub_DB25C();
      sub_D9ADC();
      sub_DB268();
      if (a2 == 3)
      {
        return 248;
      }

      v10 = 80;
    }

    else
    {
      sub_16A384();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_83D98();
        sub_DB268();
        if (a2 != 2)
        {
          return a3 | 0x40;
        }

        return 248;
      }

      sub_16A484();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        v11._rawValue = &off_1D2DB0;
        v16._countAndFlagsBits = a2;
        v16._object = a3;
        v12 = sub_16ADE4(v11, v16);

        if (!v12)
        {
          return 162;
        }

        return 248;
      }

      sub_16A494();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_83D98();
        sub_DB268();
        if (a2 != 2)
        {
          return a3 | 0x60;
        }

        return 248;
      }

      sub_16A3C4();
      sub_DB250();
      if (swift_dynamicCastClass())
      {
        sub_DB25C();
        sub_D9BB4();
        sub_DB268();
        if (a2 != 6)
        {
          return a3 | 0xFFFFFF80;
        }

        return 248;
      }

      sub_16A404();
      sub_DB250();
      if (!swift_dynamicCastClass())
      {

        return 248;
      }

      sub_DB25C();
      sub_D9CE0();
      sub_DB268();
      if (a2 == 3)
      {
        return 248;
      }

      v10 = -112;
    }

    return a3 | v10;
  }

  sub_DB25C();
  sub_83D98();
  sub_DB268();
  if (a2 == 2)
  {
    return 248;
  }

  return a3 | 0x10;
}

uint64_t sub_D98D4(char a1)
{
  if (a1)
  {
    return 0x64656B636F6CLL;
  }

  else
  {
    return 0x656D614E726163;
  }
}

BOOL sub_D9908()
{
  sub_85234();
  v2._rawValue = &off_1D2C38;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

BOOL sub_D9944()
{
  sub_85234();
  v2._rawValue = &off_1D2C70;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

BOOL sub_D9980()
{
  sub_85234();
  v2._rawValue = &off_1D2DB0;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  return v1 != 0;
}

uint64_t sub_D99BC(char a1)
{
  if (a1)
  {
    return 0x656D614E726163;
  }

  else
  {
    return 0x6174536B6E757274;
  }
}

uint64_t sub_D99FC()
{
  sub_85234();
  v2._rawValue = &off_1D3158;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9A3C(char a1)
{
  result = 1684955490;
  switch(a1)
  {
    case 1:
      result = 0x6E6769736C6C6163;
      break;
    case 2:
      result = 0x6C656E6E616863;
      break;
    case 3:
      result = 0x636E657571657266;
      break;
    case 4:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D9ADC()
{
  sub_85234();
  v2._rawValue = &off_1D2CF8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9B1C(char a1)
{
  if (!a1)
  {
    return 0x656D614E726163;
  }

  if (a1 == 1)
  {
    return 0x64656C62616E65;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_D9B78(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0x656D614E726163;
  }
}

uint64_t sub_D9BB4()
{
  sub_85234();
  v2._rawValue = &off_1D2E38;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_D9BF4(char a1)
{
  result = 0x5A6574616D696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_D9CE0()
{
  sub_85234();
  v2._rawValue = &off_1D2EE8;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_D9D20(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 1952540019;
  }

  return 0xD000000000000011;
}

uint64_t sub_D9D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1 >> 4)
  {
    case 1:
      if ((a2 & 0xF0) != 0x10)
      {
        return 0;
      }

      goto LABEL_32;
    case 2:
      if ((a2 & 0xF0) != 0x20)
      {
        return 0;
      }

      goto LABEL_32;
    case 3:
      if ((a2 & 0xF0) != 0x30)
      {
        return 0;
      }

      v11 = (a1 & 1) == 0;
      v12 = 0x656D614E726163;
      v13 = 0x64656B636F6CLL;
      if (a1)
      {
        v4 = 0x64656B636F6CLL;
      }

      else
      {
        v4 = 0x656D614E726163;
      }

      v14 = 0xE700000000000000;
      v15 = 0xE600000000000000;
      goto LABEL_49;
    case 4:
      if ((a2 & 0xF0) != 0x40)
      {
        return 0;
      }

      v3 = (a1 & 1) == 0;
      if (a1)
      {
        v4 = 0xD00000000000001FLL;
      }

      else
      {
        v4 = 0x656D614E726163;
      }

      if (v3)
      {
        v5 = 0xE700000000000000;
      }

      else
      {
        v5 = 0x800000000017EF60;
      }

      if (a2)
      {
        v6 = 0xD00000000000001FLL;
      }

      else
      {
        v6 = 0x656D614E726163;
      }

      if (a2)
      {
        v7 = 0x800000000017EF60;
      }

      else
      {
        v7 = 0xE700000000000000;
      }

      goto LABEL_58;
    case 5:
      if ((a2 & 0xF0) != 0x50)
      {
        return 0;
      }

      v22 = a1 & 0xF;
      v23 = a2 & 0xF;

      return sub_E3144(v22, v23);
    case 6:
      if ((a2 & 0xF0) != 0x60)
      {
        return 0;
      }

      v11 = (a1 & 1) == 0;
      v12 = 0x6174536B6E757274;
      v13 = 0x656D614E726163;
      if (a1)
      {
        v4 = 0x656D614E726163;
      }

      else
      {
        v4 = 0x6174536B6E757274;
      }

      v14 = 0xEB00000000737574;
      v15 = 0xE700000000000000;
LABEL_49:
      if (v11)
      {
        v5 = v14;
      }

      else
      {
        v5 = v15;
      }

      if (a2)
      {
        v6 = v13;
      }

      else
      {
        v6 = v12;
      }

      if (a2)
      {
        v7 = v15;
      }

      else
      {
        v7 = v14;
      }

LABEL_58:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_74;
      }

      goto LABEL_76;
    case 7:
      if ((a2 & 0xF0) != 0x70)
      {
        return 0;
      }

      v16 = 1684955490;
      v17 = 0xE400000000000000;
      v18 = a1 & 0xF;
      v19 = 1684955490;
      switch(v18)
      {
        case 1:
          v17 = 0xE800000000000000;
          v19 = 0x6E6769736C6C6163;
          break;
        case 2:
          v17 = 0xE700000000000000;
          v19 = 0x6C656E6E616863;
          break;
        case 3:
          v19 = 0x636E657571657266;
          v17 = 0xE900000000000079;
          break;
        case 4:
          v19 = 1701667182;
          break;
        default:
          break;
      }

      v33 = 0xE400000000000000;
      switch(a2 & 0xF)
      {
        case 1:
          v33 = 0xE800000000000000;
          v16 = 0x6E6769736C6C6163;
          break;
        case 2:
          v33 = 0xE700000000000000;
          v16 = 0x6C656E6E616863;
          break;
        case 3:
          v16 = 0x636E657571657266;
          v33 = 0xE900000000000079;
          break;
        case 4:
          v16 = 1701667182;
          break;
        default:
          break;
      }

      if (v19 != v16 || v17 != v33)
      {
        goto LABEL_74;
      }

      goto LABEL_76;
    case 8:
      if ((a2 & 0xF0) != 0x80)
      {
        return 0;
      }

      v26 = sub_D9BF4(a1 & 0xF);
      v28 = v27;
      if (v26 != sub_D9BF4(a2 & 0xF) || v28 != v29)
      {
LABEL_74:
        v31 = sub_16AE54();

        return v31 & 1;
      }

LABEL_76:

      return 1;
    case 9:
      if ((a2 & 0xF0) != 0x90)
      {
        return 0;
      }

      v8 = a1 & 0xF;
      v9 = a2 & 0xF;

      return sub_E342C(v8, v9);
    case 10:
      v25 = a2 == 162;
      if (a1 == 161)
      {
        v25 = a2 == 161;
      }

      if (a1 == 160)
      {
        return a2 == 160;
      }

      else
      {
        return v25;
      }

    default:
      if (a2 >= 0x10u)
      {
        return 0;
      }

LABEL_32:
      if (a1)
      {
        v20 = 0x736C616E676973;
      }

      else
      {
        v20 = 0x656D614E726163;
      }

      if (a2)
      {
        v21 = 0x736C616E676973;
      }

      else
      {
        v21 = 0x656D614E726163;
      }

      if (v20 == v21)
      {
        swift_bridgeObjectRelease_n();
        return 1;
      }

      else
      {
        v32 = sub_16AE54();
        swift_bridgeObjectRelease_n();
        return v32 & 1;
      }
  }
}

uint64_t sub_DA224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_E2FAC();
}

uint64_t sub_DA248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_DA280()
{
  v1 = sub_85228();
  result = sub_D95C4(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

BOOL sub_DA2B8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9908();
  *a2 = result;
  return result;
}

BOOL sub_DA308@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9944();
  *a2 = result;
  return result;
}

BOOL sub_DA33C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9980();
  *a2 = result;
  return result;
}

uint64_t sub_DA394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_DA3CC()
{
  v1 = sub_85228();
  result = sub_D98D4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA3F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x16)
  {
    if (a2 + 234 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 234) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 235;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 4) & 0xFFFFFFEF | (16 * ((*a1 >> 3) & 1))) ^ 0x1F;
  if (v5 >= 0x15)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_DA48C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 234 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 234) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x16)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x15)
  {
    v6 = ((a2 - 22) >> 8) + 1;
    *result = a2 - 22;
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
        JUMPOUT(0xDA564);
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
          *result = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_DA58C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 7) + 10;
  }
}

_BYTE *sub_DA5B8(_BYTE *result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = *result & 7 | (16 * a2);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0xA0;
  }

  *result = v2;
  return result;
}

uint64_t sub_DA614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_DA64C()
{
  v1 = sub_85228();
  result = sub_D99BC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA674(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E3298();
}

uint64_t sub_DA698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D99FC();
  *a2 = result;
  return result;
}

uint64_t sub_DA6C8()
{
  v1 = sub_85228();
  result = sub_D9A3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9ADC();
  *a2 = result;
  return result;
}

uint64_t sub_DA744()
{
  v1 = sub_85228();
  result = sub_D9B1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA76C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_E30B0();
}

uint64_t sub_DA790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_83D98();
  *a2 = result;
  return result;
}

uint64_t sub_DA7C8()
{
  v1 = sub_85228();
  result = sub_D9B78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9BB4();
  *a2 = result;
  return result;
}

unint64_t sub_DA844()
{
  v1 = sub_85228();
  result = sub_D9BF4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_D9CE0();
  *a2 = result;
  return result;
}

uint64_t sub_DA8C0()
{
  v1 = sub_85228();
  result = sub_D9D20(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DA914(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_122F4(a1);
}

_BYTE *sub_DA960(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xDA9FCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_DAA3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAB08);
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

_BYTE *sub_DAB3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAC08);
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

_BYTE *sub_DAC58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAD20);
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
          result = sub_85250(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_DAD6C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xDAE34);
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
          result = sub_85250(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_DAE6C()
{
  result = qword_1EB648;
  if (!qword_1EB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB648);
  }

  return result;
}

unint64_t sub_DAEC4()
{
  result = qword_1EB650;
  if (!qword_1EB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB650);
  }

  return result;
}

unint64_t sub_DAF1C()
{
  result = qword_1EB658;
  if (!qword_1EB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB658);
  }

  return result;
}

unint64_t sub_DAF74()
{
  result = qword_1EB660;
  if (!qword_1EB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB660);
  }

  return result;
}

unint64_t sub_DAFCC()
{
  result = qword_1EB668;
  if (!qword_1EB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB668);
  }

  return result;
}

unint64_t sub_DB024()
{
  result = qword_1EB670;
  if (!qword_1EB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB670);
  }

  return result;
}

unint64_t sub_DB07C()
{
  result = qword_1EB678;
  if (!qword_1EB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB678);
  }

  return result;
}

unint64_t sub_DB0D4()
{
  result = qword_1EB680;
  if (!qword_1EB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB680);
  }

  return result;
}

unint64_t sub_DB12C()
{
  result = qword_1EB688;
  if (!qword_1EB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB688);
  }

  return result;
}

unint64_t sub_DB184()
{
  result = qword_1EB690;
  if (!qword_1EB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB690);
  }

  return result;
}

unint64_t sub_DB1DC()
{
  result = qword_1EB698;
  if (!qword_1EB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB698);
  }

  return result;
}

void sub_DB268()
{
}

uint64_t type metadata accessor for CarCommandsGetDoorLockStatusCATsSimple()
{
  result = qword_1EB6A0;
  if (!qword_1EB6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_DB30C(char a1, char a2, char a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  *(v9 + 63) = v11;
  *(v9 + 16) = a8;
  *(v9 + 24) = v8;
  *(v9 + 62) = a7;
  *(v9 + 61) = a6;
  *(v9 + 60) = a5;
  *(v9 + 59) = a4;
  *(v9 + 58) = a3;
  *(v9 + 57) = a2;
  *(v9 + 56) = a1;
  return _swift_task_switch(sub_DB354, 0, 0);
}

uint64_t sub_DB354()
{
  v36 = *(v0 + 63);
  v1 = *(v0 + 62);
  v2 = *(v0 + 61);
  v3 = *(v0 + 60);
  v4 = *(v0 + 59);
  v5 = *(v0 + 58);
  v6 = *(v0 + 57);
  v7 = *(v0 + 56);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v8 = swift_allocObject();
  *(v0 + 32) = v8;
  *(v8 + 16) = xmmword_175690;
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = 0x800000000018B7F0;
  *(v8 + 48) = v7;
  sub_DB854();
  *(v9 + 72) = v10;
  *(v9 + 80) = 0xD000000000000016;
  *(v9 + 88) = v11;
  *(v9 + 96) = v6;
  sub_DB854();
  *(v12 + 120) = v13;
  *(v12 + 128) = 0xD000000000000014;
  *(v12 + 136) = v14;
  *(v12 + 144) = v5;
  sub_DB854();
  *(v15 + 168) = v16;
  *(v15 + 176) = 0xD000000000000015;
  *(v15 + 184) = v17;
  *(v15 + 192) = v4;
  sub_DB854();
  *(v18 + 216) = v19;
  *(v18 + 224) = 0xD000000000000020;
  *(v18 + 232) = v20;
  *(v18 + 240) = v3;
  sub_DB854();
  *(v21 + 264) = v22;
  *(v21 + 272) = 0xD00000000000001ELL;
  *(v21 + 280) = v23;
  *(v21 + 288) = v2;
  sub_DB854();
  *(v24 + 312) = v25;
  *(v24 + 320) = 0xD00000000000001FLL;
  *(v24 + 328) = v26;
  *(v24 + 336) = v1;
  sub_DB854();
  v27[45] = v28;
  v27[46] = 0xD000000000000015;
  v27[47] = v29;
  if (v36)
  {
    v30 = 0;
    v31 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  else
  {
    v30 = *(v0 + 16);
    v31 = &type metadata for Double;
  }

  *(v8 + 384) = v30;
  *(v8 + 408) = v31;
  v32 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v37 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  *(v0 + 40) = v33;
  *v33 = v0;
  v33[1] = sub_6D128;
  v34 = *(v0 + 24);

  return v37(0xD000000000000032, 0x800000000018B900, v8);
}

uint64_t sub_DB59C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_DB5F0(a1, a2);
}

uint64_t sub_DB5F0(uint64_t a1, uint64_t a2)
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
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_DB74C(uint64_t a1, uint64_t a2)
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

id sub_DB860()
{
  v1 = [*(v0 + 16) currentSession];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 configuration];

    v2 = [v3 rightHandDrive];
  }

  return v2;
}

id sub_DB8D8(void *a1)
{
  if ((sub_DBEB8(a1) & 1) == 0)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    sub_16A9A4();
    sub_DBEA4();
    sub_DBE80();
    v20 = 44;
    v21 = 0x1000000000000041;
    goto LABEL_18;
  }

  v1 = sub_DBD9C();
  if (!v1)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_DBEA4();
    sub_DBE80();
    v20 = 49;
LABEL_18:
    sub_386D8(v14, v15, v16, v17, v18, v19, v20, v21, v24);
    return 0;
  }

  v2 = v1;
  v3 = [v1 supportsVehicleData];
  sub_16ACF4(39);

  if (v3)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_16A744(v4);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  sub_16A9A4();
  sub_DBE80();
  sub_386D8(v7, v8, v9, v10, v11, v12, 53, 37, 0x800000000018BBE0);

  return v3;
}

uint64_t sub_DBB34(void *a1)
{
  if ((sub_DBEB8(a1) & 1) == 0)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    sub_16A9A4();
    sub_DBE90();
    sub_DBE70();
    v19 = 63;
    v20 = 0x1000000000000039;
    goto LABEL_14;
  }

  v1 = sub_DBD9C();
  if (!v1)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    sub_16A9A4();
    sub_DBE90();
    sub_DBE70();
    v19 = 68;
LABEL_14:
    sub_386D8(v13, v14, v15, v16, v17, v18, v19, v20, v22);
    return 3;
  }

  v2 = v1;
  v3 = [v1 transportType];
  sub_16ACF4(41);
  v23._countAndFlagsBits = 39;
  v23._object = 0x800000000018BAD0;
  sub_16A744(v23);
  type metadata accessor for CARTransportType(0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  sub_16A9A4();
  sub_DBE70();
  sub_386D8(v5, v6, v7, v8, v9, v10, 73, 0, 0xE000000000000000);

  if (v3 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v3);
  }
}

id sub_DBD9C()
{
  v1 = *(v0 + 16);
  [v1 waitForSessionInitialization];
  v2 = [v1 currentSession];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 configuration];

  return v4;
}

uint64_t sub_DBE14()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_DBEB8(void *a1)
{
  v1 = a1[4];
  sub_D084(a1, a1[3]);

  return sub_168B24();
}

id sub_DBEF4()
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

    v4 = sub_DCF5C(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_DBF78()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  sub_169384();
  sub_8F624();
  sub_86E4(v8, &_swiftEmptySetSingleton, v13);

  (*(v2 + 8))(v8, v0);
  v9 = v13[3];
  sub_57A80(v13);
  if (v9)
  {
    return sub_168C64();
  }

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x20uLL, 0xD00000000000008DLL, 0x800000000018BC60, 0xD000000000000016, 0x800000000017FD50, 30, 0xD00000000000001FLL, 0x800000000017F910);
  return sub_168C74();
}

uint64_t sub_DC144()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_DC200, 0, 0);
}

uint64_t sub_DC200()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_DD34C();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_153A70(v1);
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
    sub_DD390(&qword_1E92F0, 255, type metadata accessor for CarCommandsError);
    swift_allocError();
    v5(v14, v13, v12);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_DC3AC()
{
  v0 = sub_16A164();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v2 = sub_5758(&qword_1EB8E0, &qword_176340);
  sub_37404();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21[-1] - v11;
  if (qword_1E5908 != -1)
  {
    sub_48134();
  }

  v13 = qword_1F0C70;
  v21[3] = type metadata accessor for WalletService();
  v21[4] = &off_1D7C28;
  v21[0] = v13;
  type metadata accessor for CarCommandsCATs();

  sub_16A154();
  sub_16A094();
  sub_163EB4();

  sub_D13C(v21);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v14 = swift_allocObject();
  v15 = sub_168E34();
  sub_483C8(v15);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v16 = sub_DD098(v21, v14);

  v21[0] = v16;
  type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  sub_DD390(&qword_1EB8E8, 255, type metadata accessor for GetLockStatusHandleIntentFlowStrategy);
  sub_1687E4();

  sub_168884();
  (*(v4 + 16))(v10, v12, v2);
  v17 = sub_5758(&qword_1EB8F0, &qword_176348);
  sub_483C8(v17);
  v18 = sub_168914();
  (*(v4 + 8))(v12, v2);
  return v18;
}

uint64_t sub_DC6AC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return v0;
}

uint64_t sub_DC6DC()
{
  sub_DC6AC();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_DC734(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EB8C8, a2, type metadata accessor for GetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

void *sub_DC78C()
{
  v1 = sub_16A164();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v3 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v4 = sub_16A094();
  v0[5] = v3;
  v0[6] = &off_1DA7E8;
  v0[2] = v4;
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v0[10] = v5;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v6;
  v0[12] = 0;
  return v0;
}

uint64_t sub_DC870()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_DC144();
}

uint64_t sub_DC904()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_4010C();
}

uint64_t sub_DC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  LockStatusRCHFlowStrategy = type metadata accessor for GetLockStatusRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, LockStatusRCHFlowStrategy, a5);
}

uint64_t sub_DCC40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return sub_43204();
}

uint64_t sub_DCD18()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_79DCC;

  return sub_45DE8();
}

uint64_t sub_DCEAC(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EB8D0, a2, type metadata accessor for GetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_DCF04(uint64_t a1, uint64_t a2)
{
  result = sub_DD390(&qword_1EAC40, a2, type metadata accessor for GetLockStatusRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_DCF5C(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v17[3] = v2;
  v17[4] = &off_1D7C28;
  v17[0] = a1;
  v3 = type metadata accessor for SEGetCarLockStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v17, v2);
  sub_37404();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = *v10;
  v16[3] = v2;
  v16[4] = &off_1D7C28;
  v16[0] = v12;
  sub_10824(v16, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEGetCarLockStatusIntentHandler_carKeyService);
  v15.receiver = v4;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_D13C(v16);
  sub_D13C(v17);
  return v13;
}

uint64_t sub_DD098(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  v8 = *(LockStatusHandleIntentFlowStrategy + 48);
  v9 = *(LockStatusHandleIntentFlowStrategy + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

unint64_t sub_DD34C()
{
  result = qword_1E6A18;
  if (!qword_1E6A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6A18);
  }

  return result;
}

uint64_t sub_DD390(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for CarCommandsCATsSimple()
{
  result = qword_1EB8F8;
  if (!qword_1EB8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_DD464()
{
  sub_85234();
  v1._rawValue = &off_1D31F0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DD4A8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DD464();
  *a2 = result;
  return result;
}

uint64_t sub_DD4F0()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1600();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(18);

  return v4(v3);
}

uint64_t sub_DD5AC()
{
  sub_85234();
  v2._rawValue = &off_1D3228;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DD5EC()
{
  result = sub_E2064();
  switch(v1)
  {
    case 1:
      result = 0x614C64656B636F6CLL;
      break;
    case 2:
      result = 0x4C676E696B636F6CLL;
      break;
    case 3:
      result = 0x64656B636F6C6E75;
      break;
    case 4:
      result = 0x6E696B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DD6B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E58E4();
}

uint64_t sub_DD6D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DD5AC();
  *a2 = result;
  return result;
}

uint64_t sub_DD704()
{
  sub_85228();
  result = sub_DD5EC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_DD72C()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_DD7B0()
{
  sub_31520();
  v17 = v2;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = sub_E2188();
  v4 = sub_E211C(v3);
  v5 = sub_AE798(v4, xmmword_16D9A0);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  sub_AE7CC(v7);
  if (v8)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v10 = *(v9 + 32);
    sub_93D80();
    v11();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  sub_E21AC(v12);
  sub_E15AC();
  sub_E1FF8();
  *v0 = v13;
  sub_E21A0();
  sub_E20A8();
  v14 = sub_E2098(22);

  return v15(v14);
}

uint64_t sub_DD8F8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_9F020();

    return v15(v14);
  }
}

BOOL sub_DDA28()
{
  sub_85234();
  v1._rawValue = &off_1D32C0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DDA6C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DDA28();
  *a2 = result;
  return result;
}

uint64_t sub_DDAB8()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1558();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  v3 = sub_E20F4();
  v5 = v4 | 0xEE006F4E00000000;

  return v7(v3, v5);
}

BOOL sub_DDB68()
{
  sub_85234();
  v1._rawValue = &off_1D32F8;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DDBAC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DDB68();
  *a2 = result;
  return result;
}

uint64_t sub_DDC04()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1504();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(29);

  return v4(v3);
}

uint64_t sub_DDCC0()
{
  sub_85234();
  v2._rawValue = &off_1D3330;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DDD00(char a1)
{
  if (!a1)
  {
    return 0x4C656D614E726163;
  }

  if (a1 == 1)
  {
    return 0x4C7972616D697270;
  }

  return 0x7261646E6F636573;
}

uint64_t sub_DDD68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E57F8();
}

uint64_t sub_DDD8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DDCC0();
  *a2 = result;
  return result;
}

uint64_t sub_DDDBC()
{
  v1 = sub_85228();
  result = sub_DDD00(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DDDE4()
{
  sub_D2DC();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  *(v1 + 64) = sub_D3C8();
  v11 = sub_D388();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_DDE74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v4 = sub_AE798(v3, xmmword_176370);
  sub_E2134(v4, v5, &qword_1E6300, &qword_16ECE0);
  v6 = sub_16A0C4();
  if (sub_E2008(v6) == 1)
  {
    sub_D188(*(v0 + 64), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    v8 = *(v7 + 32);
    sub_93D80();
    v9();
  }

  v10 = *(v0 + 24);
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x800000000017E650;
  if (v10)
  {
    v11 = sub_169FD4();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v13 = *(v0 + 32);
  *(v3 + 96) = v12;
  *(v3 + 120) = v11;
  strcpy((v3 + 128), "remainingFuel");
  *(v3 + 142) = -4864;
  if (v13)
  {
    v14 = sub_16A004();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  v16 = *(v0 + 40);
  *(v3 + 144) = v15;
  *(v3 + 168) = v14;
  *(v3 + 176) = 0x6E696E69616D6572;
  *(v3 + 184) = 0xEF65677261684367;
  if (v16)
  {
    v17 = sub_16A004();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 96);
  *(v3 + 192) = v18;
  *(v3 + 216) = v17;
  *(v3 + 224) = 0x676E696772616863;
  *(v3 + 232) = 0xE800000000000000;
  *(v3 + 240) = v20;
  *(v3 + 264) = &type metadata for Bool;
  *(v3 + 272) = 0x75466F54656D6974;
  *(v3 + 280) = 0xEA00000000006C6CLL;
  v21 = 0;
  if (v19)
  {
    v21 = sub_16A054();
  }

  else
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  *(v3 + 288) = v19;
  *(v3 + 312) = v21;
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  sub_E21B8();

  v23 = swift_task_alloc();
  *(v0 + 80) = v23;
  sub_E14B0();
  sub_E1FF8();
  *v23 = v24;
  v23[1] = sub_DE170;
  v25 = *(v0 + 56);

  return v27(0xD000000000000016, 0x800000000018C030, v3, &type metadata for CarCommandsCATsSimple.PowerLevelDialogIds);
}

uint64_t sub_DE170()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_DE2A0()
{
  sub_D2DC();
  v2 = v0[8];
  v1 = v0[9];

  sub_D37C();
  v4 = v0[11];

  return v3();
}

uint64_t sub_DE304()
{
  sub_85234();
  v2._rawValue = &off_1D3398;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DE344()
{
  result = sub_E2064();
  switch(v1)
  {
    case 1:
      result = 0x664F6C616E676973;
      break;
    case 2:
      result = 0x6E4F6C616E676973;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DE404(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E5514();
}

uint64_t sub_DE428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DE304();
  *a2 = result;
  return result;
}

uint64_t sub_DE458()
{
  sub_85228();
  result = sub_DE344();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_DE480()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_DE508()
{
  sub_31520();
  v20 = v4;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v5 = swift_allocObject();
  v6 = sub_E211C(v5);
  v7 = sub_AE798(v6, xmmword_16D3A0);
  sub_E2134(v7, v8, &qword_1E6300, &qword_16ECE0);
  v9 = sub_16A0C4();
  sub_AE7CC(v9);
  if (v10)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v12 = *(v11 + 32);
    sub_93D80();
    v13();
  }

  v14 = *(v2 + 64);
  *(v3 + 80) = 0x6C62697369567369;
  *(v3 + 88) = 0xE900000000000065;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v14;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  sub_E21AC(v15);
  sub_E145C();
  sub_E1FF8();
  *v0 = v16;
  sub_E21A0();
  sub_E20A8();
  v17 = sub_E2098(24);

  return v18(v17);
}

uint64_t sub_DE688()
{
  sub_85234();
  v2._rawValue = &off_1D3430;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DE6C8()
{
  result = sub_E2064();
  switch(v1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65704F6B6E757274;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DE76C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E569C();
}

uint64_t sub_DE790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DE688();
  *a2 = result;
  return result;
}

uint64_t sub_DE7C0()
{
  sub_85228();
  result = sub_DE6C8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_DE7E8()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_DE86C()
{
  sub_31520();
  v17 = v2;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = sub_E2188();
  v4 = sub_E211C(v3);
  v5 = sub_AE798(v4, xmmword_16D9A0);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  sub_AE7CC(v7);
  if (v8)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v10 = *(v9 + 32);
    sub_93D80();
    v11();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  sub_E21AC(v12);
  sub_E1408();
  sub_E1FF8();
  *v0 = v13;
  sub_E21A0();
  sub_E20A8();
  v14 = sub_E2098(23);

  return v15(v14);
}

BOOL sub_DE9B4()
{
  sub_85234();
  v1._rawValue = &off_1D34B0;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DE9EC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DE9B4();
  *a2 = result;
  return result;
}

uint64_t sub_DEA20()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E13B4();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(19);

  return v4(v3);
}

BOOL sub_DEADC()
{
  sub_85234();
  v1._rawValue = &off_1D34E8;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DEB14@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DEADC();
  *a2 = result;
  return result;
}

uint64_t sub_DEB48()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1360();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  sub_E20A8();
  v3 = sub_E2174(18);

  return v4(v3);
}

BOOL sub_DEC04()
{
  sub_85234();
  v1._rawValue = &off_1D3520;
  v3._object = v0;
  sub_16ADE4(v1, v3);
  sub_852C4();
  return sub_E2110();
}

BOOL sub_DEC3C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DEC04();
  *a2 = result;
  return result;
}

uint64_t sub_DEC70()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E130C();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_E1FF4;
  v3 = sub_E20F4();
  v5 = v4 | 0xEF73655900000000;

  return v7(v3, v5);
}

uint64_t sub_DED20()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_DEDA4()
{
  sub_31520();
  v16 = v2;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = sub_E2188();
  v4 = sub_E211C(v3);
  v5 = sub_E2028(v4, xmmword_16D9A0);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  sub_AE7CC(v7);
  if (v8)
  {
    sub_D188(v0, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v10 = *(v9 + 32);
    sub_93D80();
    v11();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  *(v1 + 48) = v12;
  *v12 = v1;
  v12[1] = sub_DD8F8;
  v13 = *(v1 + 24);
  sub_E20B4();

  return v15(0xD000000000000017);
}

uint64_t sub_DEEF0()
{
  sub_D2DC();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v9 = sub_D388();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_DEF94()
{
  sub_31520();
  v29 = v1;
  sub_D3A4();
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  v5 = sub_E2028(v4, xmmword_176380);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  if (sub_E2008(v7) == 1)
  {
    sub_D188(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v9 = *(v8 + 32);
    sub_93D80();
    v10();
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 24);
  *(v4 + 80) = 0x656D614E726163;
  *(v4 + 88) = 0xE700000000000000;
  sub_2F868(v12, v11, &qword_1E6300, &qword_16ECE0);
  v13 = sub_E2048();
  v14 = *(v0 + 40);
  if (v13 == 1)
  {
    sub_D188(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    sub_10888((v4 + 96));
    sub_AE7F8();
    v16 = *(v15 + 32);
    sub_93D80();
    v17();
  }

  v18 = *(v0 + 81);
  v19 = *(v0 + 80);
  sub_E20CC();
  *(v4 + 128) = v21;
  *(v4 + 136) = v20;
  *(v4 + 144) = v22;
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = v14;
  *(v4 + 184) = 0x800000000018BD80;
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 192) = v23;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 64) = v24;
  *v24 = v25;
  v24[1] = sub_DF1D4;
  v26 = *(v0 + 32);
  sub_E2164();

  return v27();
}

uint64_t sub_DF1D4()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = sub_9F020();

    return v16(v15);
  }
}

uint64_t sub_DF310()
{
  sub_D2DC();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_D37C();
  v5 = v0[9];

  return v4();
}

uint64_t sub_DF380(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = sub_D388();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_DF3AC()
{
  sub_31520();
  v10 = v1;
  sub_D3A4();
  v2 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = sub_E2188();
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x80000000001807C0;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v2;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v4;
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 32) = v5;
  *v5 = v6;
  v5[1] = sub_DF4C0;
  v7 = *(v0 + 16);

  return v9(0xD00000000000001BLL, 0x800000000018BF50, v3);
}

uint64_t sub_DF4C0()
{
  sub_1696C();
  sub_30480();
  v4 = v3;
  sub_10AA4();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  sub_D254();
  *v9 = v8;
  *(v4 + 40) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 24);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_DF5F8()
{
  sub_D2DC();
  v1 = *(v0 + 24);

  sub_D37C();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_DF654()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(34);

  return v4(v3);
}

uint64_t sub_DF6FC()
{
  sub_85234();
  v2._rawValue = &off_1D3558;
  v4._object = v0;
  sub_16ADE4(v2, v4);
  sub_852C4();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_DF73C()
{
  result = sub_E2064();
  switch(v1)
  {
    case 1:
    case 2:
      result = 0x4F6574616D696C63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_DF7EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_E5394();
}

uint64_t sub_DF810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DF6FC();
  *a2 = result;
  return result;
}

uint64_t sub_DF840()
{
  sub_85228();
  result = sub_DF73C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_DF868()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_DF8EC()
{
  sub_31520();
  v17 = v2;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = sub_E2188();
  v4 = sub_E211C(v3);
  v5 = sub_AE798(v4, xmmword_16D9A0);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  sub_AE7CC(v7);
  if (v8)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v10 = *(v9 + 32);
    sub_93D80();
    v11();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  sub_E21AC(v12);
  sub_E12B8();
  sub_E1FF8();
  *v0 = v13;
  sub_E21A0();
  sub_E20A8();
  v14 = sub_E2098(25);

  return v15(v14);
}

uint64_t sub_DFA34()
{
  sub_85234();
  v2._rawValue = &off_1D35F0;
  v5._object = v0;
  sub_16ADE4(v2, v5);
  sub_852C4();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_DFA7C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_DFAD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_DFA34();
  *a2 = result;
  return result;
}

unint64_t sub_DFB08()
{
  v1 = sub_85228();
  result = sub_DFA7C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_DFB30()
{
  sub_1696C();
  sub_3024C(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  sub_E20C0(v1);
  sub_E1264();
  sub_E1FF8();
  *v0 = v2;
  v0[1] = sub_7971C;
  sub_E20A8();
  v3 = sub_E2174(32);

  return v4(v3);
}

uint64_t sub_DFBEC()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(24);

  return v4(v3);
}

uint64_t sub_DFC94()
{
  sub_D2DC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  v9 = sub_D388();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_DFD34()
{
  sub_31520();
  v23 = v1;
  sub_D3A4();
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  v5 = sub_E2028(v4, xmmword_16EE50);
  sub_E2134(v5, v6, &qword_1E6300, &qword_16ECE0);
  v7 = sub_16A0C4();
  if (sub_E2008(v7) == 1)
  {
    sub_D188(*(v0 + 56), &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v9 = *(v8 + 32);
    sub_93D80();
    v10();
  }

  v11 = *(v0 + 88);
  *(v4 + 80) = 0x664F7265626D756ELL;
  *(v4 + 88) = 0xEF7379654B726143;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  else
  {
    v12 = *(v0 + 24);
    v13 = &type metadata for Double;
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  *(v4 + 96) = v12;
  *(v4 + 120) = v13;
  *(v4 + 128) = 0x656D614E726163;
  *(v4 + 136) = 0xE700000000000000;
  sub_2F868(v15, v14, &qword_1E6300, &qword_16ECE0);
  if (sub_E2048() == 1)
  {
    sub_D188(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v3;
    sub_10888((v4 + 144));
    sub_AE7F8();
    v17 = *(v16 + 32);
    sub_93D80();
    v18();
  }

  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_DFF84;
  v20 = *(v0 + 40);
  sub_E20B4();

  return v22(0xD000000000000029);
}

uint64_t sub_DFF84()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = sub_9F020();

    return v16(v15);
  }
}

uint64_t sub_E00C0()
{
  sub_D2DC();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_D37C();
  v5 = v0[10];

  return v4();
}

uint64_t sub_E0130()
{
  sub_D2DC();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v8 = sub_D388();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_E01D0()
{
  sub_31520();
  v21 = v1;
  sub_D3A4();
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_16EE50;
  strcpy((v4 + 32), "parameterName");
  *(v4 + 46) = -4864;
  sub_E2134(v4, v5, &qword_1E6300, &qword_16ECE0);
  v6 = sub_16A0C4();
  if (sub_E2008(v6) == 1)
  {
    sub_D188(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v8 = *(v7 + 32);
    sub_93D80();
    v9();
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  strcpy((v4 + 80), "parameterValue");
  *(v4 + 95) = -18;
  sub_2F868(v11, v10, &qword_1E6300, &qword_16ECE0);
  if (sub_E2048() == 1)
  {
    sub_D188(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    sub_10888((v4 + 96));
    sub_AE7F8();
    v13 = *(v12 + 32);
    sub_93D80();
    v14();
  }

  v15 = *(v0 + 80);
  *(v4 + 128) = 0xD000000000000013;
  *(v4 + 136) = 0x8000000000181140;
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 144) = v15;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 64) = v16;
  *v16 = v17;
  v16[1] = sub_E0418;
  v18 = *(v0 + 32);
  sub_E2164();

  return v19();
}

uint64_t sub_E0418()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = sub_9F020();

    return v16(v15);
  }
}

uint64_t sub_E0554()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(46);

  return v4(v3);
}

uint64_t sub_E05FC()
{
  sub_D2DC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[5] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_E0684()
{
  sub_D3A4();
  v1 = v0[5];
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_16D3A0;
  strcpy((v3 + 32), "parameterName");
  *(v3 + 46) = -4864;
  sub_E2134(v3, v4, &qword_1E6300, &qword_16ECE0);
  v5 = sub_16A0C4();
  if (sub_E2008(v5) == 1)
  {
    sub_D188(v0[5], &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v7 = *(v6 + 32);
    sub_93D80();
    v8();
  }

  v9 = v0[3];
  *(v3 + 80) = 0x736D657469;
  *(v3 + 88) = 0xE500000000000000;
  *(v3 + 120) = sub_5758(&qword_1EB948, &qword_176490);
  *(v3 + 96) = v9;
  v10 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_E21B8();

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_E0858;
  v12 = v0[4];

  return v14(0xD000000000000027, 0x800000000018ABC0, v3);
}

uint64_t sub_E0858()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_E0988()
{
  sub_D2DC();
  v2 = v0[5];
  v1 = v0[6];

  sub_D37C();
  v4 = v0[8];

  return v3();
}

uint64_t sub_E09EC()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(37);

  return v4(v3);
}

uint64_t sub_E0A94()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(22);

  return v4(v3);
}

uint64_t sub_E0B3C()
{
  sub_1696C();
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_E1FF4;
  sub_E20B4();
  v3 = sub_E20E8(32);

  return v4(v3);
}

uint64_t sub_E0BE4()
{
  sub_D2DC();
  *(v1 + 65) = v2;
  *(v1 + 64) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v1 + 32) = sub_D3C8();
  v8 = sub_D388();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_E0C70()
{
  sub_31520();
  v24 = v3;
  sub_D3A4();
  sub_E2128();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  v5 = sub_E211C(v4);
  v6 = sub_AE798(v5, xmmword_16EE50);
  sub_E2134(v6, v7, &qword_1E6300, &qword_16ECE0);
  v8 = sub_16A0C4();
  sub_AE7CC(v8);
  if (v9)
  {
    sub_D188(v0, &qword_1E6300, &qword_16ECE0);
    sub_E208C();
  }

  else
  {
    sub_E214C();
    sub_AE7F8();
    v11 = *(v10 + 32);
    sub_93D80();
    v12();
  }

  v13 = *(v1 + 65);
  v14 = *(v1 + 64);
  sub_E20CC();
  *(v2 + 80) = v16;
  *(v2 + 88) = v15;
  *(v2 + 96) = v17;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 128) = v0;
  *(v2 + 136) = 0x800000000018BD80;
  *(v2 + 168) = &type metadata for Bool;
  *(v2 + 144) = v18;
  sub_3215C(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 48) = v19;
  *v19 = v20;
  v19[1] = sub_E0E00;
  v21 = *(v1 + 24);
  sub_E2164();

  return v22();
}

uint64_t sub_E0E00()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = sub_9F020();

    return v15(v14);
  }
}

uint64_t sub_E0F30()
{
  sub_D2DC();
  v2 = v0[4];
  v1 = v0[5];

  sub_D37C();
  v4 = v0[7];

  return v3();
}

uint64_t sub_E0F94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_93D80();
  return sub_E0FE4(v3, v4);
}

uint64_t sub_E0FE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = sub_D414(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_2F868(a1, &v20 - v17, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v18;
}

uint64_t sub_E115C(uint64_t a1, uint64_t a2)
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

unint64_t sub_E1264()
{
  result = qword_1EB950;
  if (!qword_1EB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950);
  }

  return result;
}

unint64_t sub_E12B8()
{
  result = qword_1EB958;
  if (!qword_1EB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958);
  }

  return result;
}

unint64_t sub_E130C()
{
  result = qword_1EB960;
  if (!qword_1EB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB960);
  }

  return result;
}

unint64_t sub_E1360()
{
  result = qword_1EB968;
  if (!qword_1EB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB968);
  }

  return result;
}

unint64_t sub_E13B4()
{
  result = qword_1EB970;
  if (!qword_1EB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB970);
  }

  return result;
}

unint64_t sub_E1408()
{
  result = qword_1EB978;
  if (!qword_1EB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB978);
  }

  return result;
}

unint64_t sub_E145C()
{
  result = qword_1EB980;
  if (!qword_1EB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB980);
  }

  return result;
}

unint64_t sub_E14B0()
{
  result = qword_1EB988;
  if (!qword_1EB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB988);
  }

  return result;
}

unint64_t sub_E1504()
{
  result = qword_1EB990;
  if (!qword_1EB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990);
  }

  return result;
}

unint64_t sub_E1558()
{
  result = qword_1EB998;
  if (!qword_1EB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998);
  }

  return result;
}

unint64_t sub_E15AC()
{
  result = qword_1EB9A0;
  if (!qword_1EB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9A0);
  }

  return result;
}

unint64_t sub_E1600()
{
  result = qword_1EB9A8;
  if (!qword_1EB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.PowerLevelDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1770);
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

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.TrunkStatusDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0xE1884);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_E18DC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0xE1978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_E19B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1A7CLL);
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

_BYTE *storeEnumTagSinglePayload for CarCommandsCATsSimple.DisambiguationLabelsDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xE1B80);
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

unint64_t sub_E1BBC()
{
  result = qword_1EB9B0;
  if (!qword_1EB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9B0);
  }

  return result;
}

unint64_t sub_E1C14()
{
  result = qword_1EB9B8;
  if (!qword_1EB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9B8);
  }

  return result;
}

unint64_t sub_E1C6C()
{
  result = qword_1EB9C0;
  if (!qword_1EB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9C0);
  }

  return result;
}

unint64_t sub_E1CC4()
{
  result = qword_1EB9C8;
  if (!qword_1EB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9C8);
  }

  return result;
}

unint64_t sub_E1D1C()
{
  result = qword_1EB9D0;
  if (!qword_1EB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9D0);
  }

  return result;
}
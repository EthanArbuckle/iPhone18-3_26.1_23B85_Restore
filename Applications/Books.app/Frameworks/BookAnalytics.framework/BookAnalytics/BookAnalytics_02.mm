uint64_t SearchEndData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E978, &qword_1E6E80);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_259EC();
  sub_1E1DF0();
  if (!v2)
  {
    sub_25A94();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_259EC()
{
  result = qword_27E968;
  if (!qword_27E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E968);
  }

  return result;
}

unint64_t sub_25A40()
{
  result = qword_27E970;
  if (!qword_27E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E970);
  }

  return result;
}

unint64_t sub_25A94()
{
  result = qword_27E980;
  if (!qword_27E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E980);
  }

  return result;
}

unint64_t sub_25AEC()
{
  result = qword_27E988;
  if (!qword_27E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E988);
  }

  return result;
}

unint64_t sub_25B44()
{
  result = qword_27E990;
  if (!qword_27E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E990);
  }

  return result;
}

unint64_t sub_25BBC()
{
  result = qword_27E998;
  if (!qword_27E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E998);
  }

  return result;
}

unint64_t sub_25C14()
{
  result = qword_27E9A0;
  if (!qword_27E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E9A0);
  }

  return result;
}

unint64_t sub_25C6C()
{
  result = qword_27E9A8;
  if (!qword_27E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E9A8);
  }

  return result;
}

BookAnalytics::MangaFlag_optional __swiftcall MangaFlag.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F3C8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t MangaFlag.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_25D64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_25E4C()
{
  result = qword_27E9B0;
  if (!qword_27E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E9B0);
  }

  return result;
}

Swift::Int sub_25EA0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_25F30()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_25FAC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_26044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_26150()
{
  result = qword_27E9B8;
  if (!qword_27E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E9B8);
  }

  return result;
}

uint64_t FlowcaseExposureEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FlowcaseExposureEvent.sectionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SectionExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.readingGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.readingGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.booksGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.booksGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SectionExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SectionExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SectionExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v2, v25);
}

uint64_t FlowcaseExposureEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_274D4(v10, &v9);
}

uint64_t SectionExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 192);
  v20 = *(v1 + 208);
  v21 = v2;
  v4 = *(v1 + 224);
  v22 = *(v1 + 240);
  v5 = *(v1 + 160);
  v7 = *(v1 + 128);
  v16 = *(v1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v18 = *(v1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 128);
  v15[0] = *(v1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 240);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 256);
  *(a1 + 144) = *(v1 + 256);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

__n128 SectionExposureEvent.Model.readingGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *(a1 + 32) = *(v1 + 296);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 321);
  result = *(v1 + 280);
  *a1 = *(v1 + 264);
  *(a1 + 16) = result;
  return result;
}

__n128 SectionExposureEvent.Model.booksGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 344);
  v4 = *(v1 + 360);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t SectionExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  *a1 = *(v1 + 384);
  *(a1 + 8) = *(v1 + 392);
  *(a1 + 24) = v2;
}

uint64_t SectionExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  *a1 = *(v1 + 416);
  *(a1 + 16) = v2;
}

__n128 SectionExposureEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 456);
  v3 = *(v1 + 464);
  result = *(v1 + 440);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t SectionExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[59];
  v3 = v1[60];
  v4 = v1[61];
  v5 = v1[62];
  v6 = v1[63];
  v7 = v1[64];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t SectionExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent.Model(0) + 52);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionExposureEvent.Model(0) + 56);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionExposureEvent.Model.init(sectionData:linkData:readingGoalsData:booksGoalsData:pageData:upSellData:onDevicePersonalizationPropertyData:seriesData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v13;
  v14 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v14;
  v15 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v15;
  v16 = a2[6];
  v17 = a2[8];
  *(a9 + 224) = a2[7];
  *(a9 + 240) = v17;
  v18 = a2[2];
  v19 = a2[4];
  v20 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v19;
  v21 = a1[6];
  *(a9 + 192) = v20;
  *(a9 + 208) = v16;
  v22 = *a2;
  v23 = a2[1];
  *(a9 + 96) = v21;
  *(a9 + 112) = v22;
  v24 = *(a4 + 32);
  v25 = *(a5 + 16);
  v26 = *(a5 + 24);
  v27 = *(a6 + 16);
  v28 = *(a7 + 16);
  v29 = *(a7 + 24);
  v30 = *a10;
  *(a9 + 256) = *(a2 + 18);
  *(a9 + 128) = v23;
  *(a9 + 144) = v18;
  v31 = a3[3];
  *(a9 + 296) = a3[2];
  *(a9 + 312) = v31;
  *(a9 + 321) = *(a3 + 57);
  v32 = a3[1];
  *(a9 + 264) = *a3;
  *(a9 + 280) = v32;
  v33 = *(a4 + 16);
  *(a9 + 344) = *a4;
  *(a9 + 360) = v33;
  *(a9 + 376) = v24;
  *(a9 + 384) = *a5;
  *(a9 + 400) = v25;
  *(a9 + 408) = v26;
  *(a9 + 416) = *a6;
  *(a9 + 432) = v27;
  *(a9 + 440) = *a7;
  *(a9 + 456) = v28;
  *(a9 + 464) = v29;
  v34 = a8[1];
  *(a9 + 472) = *a8;
  *(a9 + 488) = v34;
  *(a9 + 504) = a8[2];
  *(a9 + 520) = v30;
  v35 = type metadata accessor for SectionExposureEvent.Model(0);
  v36 = *(v35 + 52);
  v37 = sub_1E1150();
  (*(*(v37 - 8) + 32))(a9 + v36, a11, v37);
  v38 = *(v35 + 56);
  v39 = sub_1E11A0();
  v40 = *(*(v39 - 8) + 32);

  return v40(a9 + v38, a12, v39);
}

unint64_t sub_279BC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x446E6F6974636573;
    v7 = 0xD000000000000010;
    v8 = 0x616F47736B6F6F62;
    if (a1 != 3)
    {
      v8 = 0x6174614465676170;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x617461446B6E696CLL;
    }

    if (a1 <= 1u)
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
    v1 = 0x6974736567677573;
    v2 = 0x746144746E657665;
    if (a1 != 9)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61446C6C65537075;
    v4 = 0xD000000000000023;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_27B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2A610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27B88(uint64_t a1)
{
  v2 = sub_28300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27BC4(uint64_t a1)
{
  v2 = sub_28300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SectionExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27EA18, &qword_1E71E8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v43 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_28300();
  sub_1E1E00();
  v10 = v2[4];
  v11 = v2[2];
  v83 = v2[3];
  v84 = v10;
  v12 = v2[4];
  v13 = v2[6];
  v85 = v2[5];
  v86 = v13;
  v14 = *v2;
  v15 = v2[2];
  v81 = v2[1];
  v82 = v15;
  v16 = *v2;
  v77 = v12;
  v78 = v85;
  v79 = v2[6];
  v80 = v16;
  v73 = v14;
  v74 = v81;
  v75 = v11;
  v76 = v83;
  v72 = 0;
  sub_274D4(&v80, &v62);
  sub_18544();
  v17 = v87;
  sub_1E1CF0();
  if (v17)
  {
    v66 = v77;
    v67 = v78;
    v68 = v79;
    v62 = v73;
    v63 = v74;
    v64 = v75;
    v65 = v76;
    sub_28354(&v62);
  }

  else
  {
    v61[4] = v77;
    v61[5] = v78;
    v61[6] = v79;
    v61[0] = v73;
    v61[1] = v74;
    v61[2] = v75;
    v61[3] = v76;
    sub_28354(v61);
    v19 = v2[14];
    v20 = v2[12];
    v68 = v2[13];
    v69 = v19;
    v21 = v2[14];
    v70 = v2[15];
    v22 = v2[10];
    v23 = v2[8];
    v64 = v2[9];
    v65 = v22;
    v24 = v2[10];
    v25 = v2[12];
    v66 = v2[11];
    v67 = v25;
    v26 = v2[8];
    v62 = v2[7];
    v63 = v26;
    v57 = v68;
    v58 = v21;
    v59 = v2[15];
    v53 = v64;
    v54 = v24;
    v55 = v66;
    v56 = v20;
    v71 = *(v2 + 32);
    v60 = *(v2 + 32);
    v51 = v62;
    v52 = v23;
    v50 = 1;
    sub_275C4(&v62, v48);
    sub_18630();
    sub_1E1CF0();
    v48[7] = v58;
    v48[8] = v59;
    v48[3] = v54;
    v48[4] = v55;
    v49 = v60;
    v48[5] = v56;
    v48[6] = v57;
    v48[0] = v51;
    v48[1] = v52;
    v48[2] = v53;
    sub_283A8(v48);
    v27 = *(v2 + 312);
    v46 = *(v2 + 296);
    v47[0] = v27;
    *(v47 + 9) = *(v2 + 321);
    v28 = *(v2 + 280);
    v45[0] = *(v2 + 264);
    v45[1] = v28;
    v44 = 2;
    sub_1E3E8();
    sub_1E1C80();
    v29 = *(v2 + 376);
    v30 = *(v2 + 360);
    v45[0] = *(v2 + 344);
    v45[1] = v30;
    LOBYTE(v46) = v29;
    v44 = 3;
    sub_283FC();
    sub_1E1C80();
    v31 = *(v2 + 51);
    *&v45[0] = *(v2 + 48);
    *(v45 + 8) = *(v2 + 392);
    *(&v45[1] + 1) = v31;
    v44 = 4;
    sub_18598();

    sub_1E1CF0();

    v32 = *(v2 + 54);
    v45[0] = v2[26];
    *&v45[1] = v32;
    v44 = 5;
    sub_28450();

    sub_1E1C80();

    v33 = *(v2 + 57);
    v34 = *(v2 + 464);
    v45[0] = *(v2 + 440);
    *&v45[1] = v33;
    BYTE8(v45[1]) = v34;
    v44 = 6;
    sub_284A4();
    sub_1E1C80();
    v35 = *(v2 + 60);
    v36 = *(v2 + 61);
    v37 = *(v2 + 62);
    v38 = *(v2 + 63);
    v39 = *(v2 + 64);
    *&v45[0] = *(v2 + 59);
    *(&v45[0] + 1) = v35;
    *&v45[1] = v36;
    *(&v45[1] + 1) = v37;
    *&v46 = v38;
    *(&v46 + 1) = v39;
    v44 = 7;
    sub_13BDC(*&v45[0], v35, v36, v37, v38, v39);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(*&v45[0], *(&v45[0] + 1), *&v45[1], *(&v45[1] + 1), v46, *(&v46 + 1));
    LOBYTE(v45[0]) = *(v2 + 520);
    v44 = 8;
    sub_284F8();
    sub_1E1C80();
    v40 = type metadata accessor for SectionExposureEvent.Model(0);
    v41 = *(v40 + 52);
    LOBYTE(v45[0]) = 9;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v42 = *(v40 + 56);
    LOBYTE(v45[0]) = 10;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_28300()
{
  result = qword_27EA20;
  if (!qword_27EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA20);
  }

  return result;
}

unint64_t sub_283FC()
{
  result = qword_27EA28;
  if (!qword_27EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA28);
  }

  return result;
}

unint64_t sub_28450()
{
  result = qword_27EA30;
  if (!qword_27EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA30);
  }

  return result;
}

unint64_t sub_284A4()
{
  result = qword_27EA38;
  if (!qword_27EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA38);
  }

  return result;
}

unint64_t sub_284F8()
{
  result = qword_27EA40;
  if (!qword_27EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA40);
  }

  return result;
}

uint64_t SectionExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v46 = sub_1E11A0();
  v43 = *(v46 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin();
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_27EA48, &qword_1E71F0);
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v39 - v11;
  v13 = type metadata accessor for SectionExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v52 = a1;
  sub_48B8(a1, v17);
  sub_28300();
  v50 = v12;
  v19 = v51;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v52);
  }

  v42 = v8;
  v20 = v48;
  v51 = v13;
  v64 = 0;
  sub_18EFC();
  sub_1E1C20();
  v21 = v59[7];
  *(v16 + 4) = v59[6];
  *(v16 + 5) = v21;
  *(v16 + 6) = v59[8];
  v22 = v59[3];
  *v16 = v59[2];
  *(v16 + 1) = v22;
  v23 = v59[5];
  *(v16 + 2) = v59[4];
  *(v16 + 3) = v23;
  v63 = 1;
  sub_18FA4();
  sub_1E1C20();
  v24 = v59[16];
  *(v16 + 13) = v59[15];
  *(v16 + 14) = v24;
  *(v16 + 15) = v59[17];
  *(v16 + 32) = v60;
  v25 = v59[12];
  *(v16 + 9) = v59[11];
  *(v16 + 10) = v25;
  v26 = v59[14];
  *(v16 + 11) = v59[13];
  *(v16 + 12) = v26;
  v27 = v59[10];
  *(v16 + 7) = v59[9];
  *(v16 + 8) = v27;
  v62 = 2;
  sub_1E390();
  v41 = 0;
  sub_1E1BB0();
  v28 = v59[0];
  *(v16 + 296) = v58;
  *(v16 + 312) = v28;
  *(v16 + 321) = *(v59 + 9);
  v29 = v57;
  *(v16 + 264) = v56;
  *(v16 + 280) = v29;
  v61 = 3;
  sub_28EA0();
  sub_1E1BB0();
  v30 = v55;
  v31 = v54;
  *(v16 + 344) = v53;
  *(v16 + 360) = v31;
  v40 = v16 + 344;
  v16[376] = v30;
  v61 = 4;
  sub_18F50();
  sub_1E1C20();
  v32 = v54;
  *(v16 + 24) = v53;
  *(v16 + 25) = v32;
  v61 = 5;
  sub_28EF4();
  sub_1E1BB0();
  v33 = v54;
  *(v16 + 26) = v53;
  *(v16 + 54) = v33;
  v61 = 6;
  sub_28F48();
  sub_1E1BB0();
  v34 = v54;
  v35 = BYTE8(v54);
  *(v40 + 6) = v53;
  *(v16 + 57) = v34;
  v16[464] = v35;
  v61 = 7;
  sub_DAD8();
  sub_1E1BB0();
  LODWORD(v41) = 1;
  v36 = v54;
  v37 = v40;
  *(v40 + 8) = v53;
  *(v37 + 9) = v36;
  *(v37 + 10) = v55;
  v61 = 8;
  sub_28F9C();
  sub_1E1BB0();
  v16[520] = v53;
  LOBYTE(v53) = 9;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v47 + 32))(&v16[*(v51 + 52)], v42, v5);
  LOBYTE(v53) = 10;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v20 + 8))(v50, v49);
  (*(v43 + 32))(&v16[*(v51 + 56)], v45, v46);
  sub_28FF0(v16, v44);
  sub_4E48(v52);
  return sub_29054(v16);
}

unint64_t sub_28EA0()
{
  result = qword_27EA50;
  if (!qword_27EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA50);
  }

  return result;
}

unint64_t sub_28EF4()
{
  result = qword_27EA58;
  if (!qword_27EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA58);
  }

  return result;
}

unint64_t sub_28F48()
{
  result = qword_27EA60;
  if (!qword_27EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA60);
  }

  return result;
}

unint64_t sub_28F9C()
{
  result = qword_27EA68;
  if (!qword_27EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EA68);
  }

  return result;
}

uint64_t sub_28FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29054(uint64_t a1)
{
  v2 = type metadata accessor for SectionExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29150@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v4, v26);
}

uint64_t sub_294FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_29914(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_29D24()
{
  sub_2A078(319, &qword_27E578, sub_18EFC, sub_18544);
  if (v0 <= 0x3F)
  {
    sub_2A078(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_2A078(319, &qword_27EAD8, sub_1E390, sub_1E3E8);
      if (v2 <= 0x3F)
      {
        sub_2A078(319, &qword_27EAE0, sub_28EA0, sub_283FC);
        if (v3 <= 0x3F)
        {
          sub_2A078(319, &qword_27E580, sub_18F50, sub_18598);
          if (v4 <= 0x3F)
          {
            sub_2A078(319, &qword_27EAE8, sub_28EF4, sub_28450);
            if (v5 <= 0x3F)
            {
              sub_2A078(319, &qword_27EAF0, sub_28F48, sub_284A4);
              if (v6 <= 0x3F)
              {
                sub_2A078(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_2A078(319, &unk_27EAF8, sub_28F9C, sub_284F8);
                  if (v8 <= 0x3F)
                  {
                    sub_5684();
                    if (v9 <= 0x3F)
                    {
                      sub_5750();
                      if (v10 <= 0x3F)
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
    }
  }
}

void sub_2A078(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2A108(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A364()
{
  sub_19FE0(319, &qword_27EBB8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC0);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBC8);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBD0);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_27EBD8);
            if (v5 <= 0x3F)
            {
              sub_1E1150();
              if (v6 <= 0x3F)
              {
                sub_1E11A0();
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

unint64_t sub_2A50C()
{
  result = qword_27EC30;
  if (!qword_27EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC30);
  }

  return result;
}

unint64_t sub_2A564()
{
  result = qword_27EC38;
  if (!qword_27EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC38);
  }

  return result;
}

unint64_t sub_2A5BC()
{
  result = qword_27EC40;
  if (!qword_27EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC40);
  }

  return result;
}

uint64_t sub_2A610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213B80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616F47736B6F6F62 && a2 == 0xEE0061746144736CLL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 10;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t CollectionDescriptionEvent.collectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CollectionDescriptionEvent.collectionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CollectionDescriptionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionDescriptionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionDescriptionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionDescriptionEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionDescriptionEvent.Model.collectionData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t CollectionDescriptionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionDescriptionEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionDescriptionEvent.Model.init(collectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(a1 + 16);
  v6 = *(type metadata accessor for CollectionDescriptionEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_2AF24()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x697463656C6C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2B05C(uint64_t a1)
{
  v2 = sub_2B2C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2B098(uint64_t a1)
{
  v2 = sub_2B2C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionDescriptionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27EC80, &qword_1E7470);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2B2C0();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v17 = *v3;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v16[15] = 0;
  sub_2B314();

  sub_1E1CF0();

  if (!v2)
  {
    v14 = *(type metadata accessor for CollectionDescriptionEvent.Model(0) + 20);
    LOBYTE(v17) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2B2C0()
{
  result = qword_27EC88;
  if (!qword_27EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC88);
  }

  return result;
}

unint64_t sub_2B314()
{
  result = qword_27EC90;
  if (!qword_27EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC90);
  }

  return result;
}

uint64_t CollectionDescriptionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E1150();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_27EC98, &qword_1E7478);
  v24 = *(v26 - 8);
  v7 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2B2C0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = v10;
  v15 = v13;
  v17 = v24;
  v16 = v25;
  v30 = 0;
  sub_2B68C();
  v18 = v26;
  sub_1E1C20();
  v19 = v28;
  *v15 = v27;
  *(v15 + 8) = v19;
  *(v15 + 16) = v29;
  LOBYTE(v27) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(v15 + *(v21 + 20), v6, v16);
  sub_2B6E0(v15, v23);
  sub_4E48(a1);
  return sub_2B744(v15);
}

unint64_t sub_2B68C()
{
  result = qword_27ECA0;
  if (!qword_27ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECA0);
  }

  return result;
}

uint64_t sub_2B6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B744(uint64_t a1)
{
  v2 = type metadata accessor for CollectionDescriptionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_2B92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2BA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2BB5C()
{
  sub_2BBE0();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2BBE0()
{
  if (!qword_27ED10)
  {
    sub_2B68C();
    sub_2B314();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED10);
    }
  }
}

uint64_t sub_2BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2BD1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2BDC0()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2BE50()
{
  result = qword_27EDD0;
  if (!qword_27EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD0);
  }

  return result;
}

unint64_t sub_2BEA8()
{
  result = qword_27EDD8;
  if (!qword_27EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD8);
  }

  return result;
}

unint64_t sub_2BF00()
{
  result = qword_27EDE0;
  if (!qword_27EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDE0);
  }

  return result;
}

unint64_t sub_2BFB8()
{
  v1 = 0x6573616863727570;
  v2 = 0x64726F6572507369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2C044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2CB24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2C06C(uint64_t a1)
{
  v2 = sub_2C7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2C0A8(uint64_t a1)
{
  v2 = sub_2C7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27EDE8, &qword_1E7688);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v10;
  v11 = v1[3];
  v15[0] = v1[4];
  v15[1] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2C7AC();
  sub_1E1E00();
  v23 = 0;
  v13 = v18;
  sub_1E1CB0();
  if (!v13)
  {
    v22 = v17;
    v21 = 1;
    sub_2C800();
    sub_1E1C80();
    v20 = 2;
    sub_1E1CC0();
    v19 = 3;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PurchaseData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27EE00, &qword_1E7690);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2C7AC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v28 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  sub_2C854();
  sub_1E1BB0();
  v14 = v27;
  v25 = 2;
  v15 = sub_1E1BF0();
  v21 = v14;
  v22 = v15;
  v24 = 3;
  v17 = sub_1E1BE0();
  v19 = v18;
  v22 &= 1u;
  (*(v6 + 8))(v9, v5);
  *a2 = v23;
  *(a2 + 8) = v13;
  v20 = v22;
  *(a2 + 16) = v21;
  *(a2 + 17) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics12PurchaseDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    result = 0;
    if (v6 != 3)
    {
      return result;
    }

LABEL_6:
    if ((v3 ^ v7))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == 3)
  {
    return 0;
  }

  v11 = 0x6143746964657263;
  v12 = 0xEA00000000006472;
  if (v2 != 1)
  {
    v11 = 0x6974706D65646572;
    v12 = 0xEE0065646F436E6FLL;
  }

  if (v2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v15 = 0xEA00000000006472;
      if (v13 != 0x6143746964657263)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v15 = 0xEE0065646F436E6FLL;
      if (v13 != 0x6974706D65646572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    if (v13 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v16 = sub_1E1D30();

      result = 0;
      if ((v16 & 1) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  if (v14 != v15)
  {
    goto LABEL_34;
  }

  if (v3 != v7)
  {
    return 0;
  }

LABEL_7:
  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_2C7AC()
{
  result = qword_27EDF0;
  if (!qword_27EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF0);
  }

  return result;
}

unint64_t sub_2C800()
{
  result = qword_27EDF8;
  if (!qword_27EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8);
  }

  return result;
}

unint64_t sub_2C854()
{
  result = qword_27EE08;
  if (!qword_27EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE08);
  }

  return result;
}

unint64_t sub_2C8AC()
{
  result = qword_27EE10;
  if (!qword_27EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE10);
  }

  return result;
}

unint64_t sub_2C904()
{
  result = qword_27EE18;
  if (!qword_27EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE18);
  }

  return result;
}

__n128 sub_2C958(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2C96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2C9B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2CA20()
{
  result = qword_27EE20;
  if (!qword_27EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20);
  }

  return result;
}

unint64_t sub_2CA78()
{
  result = qword_27EE28;
  if (!qword_27EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28);
  }

  return result;
}

unint64_t sub_2CAD0()
{
  result = qword_27EE30;
  if (!qword_27EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE30);
  }

  return result;
}

uint64_t sub_2CB24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000000213BD0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEE00646F6874654DLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F6572507369 && a2 == 0xEA00000000007265 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000213BF0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::DisplayType_optional __swiftcall DisplayType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F430;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t DisplayType.rawValue.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 1953720684;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics18LibraryDisplayDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684632167;
  if (v2 != 1)
  {
    v3 = 1953720684;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684632167;
  if (*a2 != 1)
  {
    v6 = 1953720684;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

unint64_t sub_2CE3C()
{
  result = qword_27EE38;
  if (!qword_27EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38);
  }

  return result;
}

Swift::Int sub_2CE90()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_2CF24()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_2CFA4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_2D040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684632167;
  if (v2 != 1)
  {
    v4 = 1953720684;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2D150()
{
  result = qword_27EE40;
  if (!qword_27EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE40);
  }

  return result;
}

uint64_t sub_2D1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546C61766F6D6572 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2D254(uint64_t a1)
{
  v2 = sub_2D6C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2D290(uint64_t a1)
{
  v2 = sub_2D6C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListRemovalTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27EE48, &qword_1E79E0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2D6C8();
  sub_1E1E00();
  v12 = v8;
  sub_2D71C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t WantListRemovalTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27EE60, &qword_1E79E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2D6C8();
  sub_1E1DF0();
  if (!v2)
  {
    sub_2D770();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics23WantListRemovalTypeDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x8000000000213220;
  if (v2 == 1)
  {
    v5 = 0x8000000000213220;
  }

  else
  {
    v3 = 0x6F4465766F6D6572;
    v5 = 0xEE0064616F6C6E77;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6F4465766F6D6572;
    v4 = 0xEE0064616F6C6E77;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_2D6C8()
{
  result = qword_27EE50;
  if (!qword_27EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE50);
  }

  return result;
}

unint64_t sub_2D71C()
{
  result = qword_27EE58;
  if (!qword_27EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE58);
  }

  return result;
}

unint64_t sub_2D770()
{
  result = qword_27EE68;
  if (!qword_27EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE68);
  }

  return result;
}

unint64_t sub_2D7C8()
{
  result = qword_27EE70;
  if (!qword_27EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE70);
  }

  return result;
}

unint64_t sub_2D820()
{
  result = qword_27EE78;
  if (!qword_27EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE78);
  }

  return result;
}

unint64_t sub_2D898()
{
  result = qword_27EE80;
  if (!qword_27EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80);
  }

  return result;
}

unint64_t sub_2D8F0()
{
  result = qword_27EE88;
  if (!qword_27EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE88);
  }

  return result;
}

unint64_t sub_2D948()
{
  result = qword_27EE90;
  if (!qword_27EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE90);
  }

  return result;
}

uint64_t FlowcaseExposureEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FlowcaseExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = enum case for EventProperty.optional<A>(_:);
  v13 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t FlowcaseExposureEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1C79C(v8, v7);
}

uint64_t FlowcaseExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v13[2] = *(v1 + 216);
  v13[3] = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v13[0] = *(v1 + 184);
  v13[1] = v4;
  v5 = *(v1 + 296);
  v6 = *(v1 + 264);
  v14 = *(v1 + 280);
  v15 = v5;
  v7 = *(v1 + 296);
  v16 = *(v1 + 312);
  v8 = *(v1 + 264);
  v13[4] = v3;
  v13[5] = v8;
  v17 = *(v1 + 328);
  *(a1 + 96) = v14;
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 312);
  *(a1 + 144) = *(v1 + 328);
  v9 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = v6;
  v10 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v10;
  return sub_275C4(v13, v12);
}

uint64_t FlowcaseExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  *a1 = *(v1 + 336);
  *(a1 + 8) = *(v1 + 344);
  *(a1 + 24) = v2;
}

uint64_t FlowcaseExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 368);
  v3 = *(v1 + 376);
  v4 = *(v1 + 384);
  v5 = *(v1 + 392);
  v6 = *(v1 + 400);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2EB50(v2, v3);
}

uint64_t sub_2EB50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t FlowcaseExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  *a1 = *(v1 + 408);
  *(a1 + 16) = v2;
}

uint64_t FlowcaseExposureEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[55];
  v3 = v1[56];
  v4 = v1[57];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t sub_2EBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t FlowcaseExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseExposureEvent.Model(0) + 52);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseExposureEvent.Model.init(sectionData:flowcaseData:linkData:pageData:mediaData:upSellData:suggestionData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v12;
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v13;
  v14 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v14;
  v15 = a2[2];
  v16 = a2[3];
  v17 = *a2;
  *(a9 + 128) = a2[1];
  *(a9 + 144) = v15;
  v18 = a1[6];
  *(a9 + 160) = v16;
  *(a9 + 96) = v18;
  *(a9 + 112) = v17;
  v19 = (a9 + 184);
  v20 = *(a3 + 96);
  v21 = *(a3 + 128);
  v19[7] = *(a3 + 112);
  v19[8] = v21;
  v22 = *(a3 + 48);
  *(a9 + 216) = *(a3 + 32);
  *(a9 + 232) = v22;
  v23 = *(a3 + 80);
  *(a9 + 248) = *(a3 + 64);
  v24 = *(a4 + 16);
  v25 = *(a4 + 24);
  v26 = *(a5 + 32);
  v27 = *(a6 + 16);
  v28 = *a7;
  v29 = *(a8 + 16);
  *(a9 + 176) = *(a2 + 8);
  *(a9 + 328) = *(a3 + 144);
  v19[5] = v23;
  v19[6] = v20;
  v30 = *(a3 + 16);
  *(a9 + 184) = *a3;
  *(a9 + 200) = v30;
  *(a9 + 336) = *a4;
  *(a9 + 352) = v24;
  *(a9 + 360) = v25;
  v31 = *(a5 + 16);
  *(a9 + 368) = *a5;
  *(a9 + 384) = v31;
  *(a9 + 400) = v26;
  *(a9 + 408) = *a6;
  *(a9 + 424) = v27;
  *(a9 + 432) = v28;
  *(a9 + 440) = *a8;
  *(a9 + 456) = v29;
  v32 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  v33 = *(v32 + 48);
  v34 = sub_1E1150();
  (*(*(v34 - 8) + 32))(a9 + v33, a10, v34);
  v35 = *(v32 + 52);
  v36 = sub_1E11A0();
  v37 = *(*(v36 - 8) + 32);

  return v37(a9 + v35, a11, v36);
}

uint64_t sub_2EE84(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x746144736C616564;
    v6 = 0x746144746E657665;
    if (a1 != 8)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61446C6C65537075;
    if (a1 != 5)
    {
      v7 = 0x6974736567677573;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x446E6F6974636573;
    v2 = 0x617461446B6E696CLL;
    v3 = 0x6174614465676170;
    if (a1 != 3)
    {
      v3 = 0x746144616964656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65736163776F6C66;
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

uint64_t sub_2EFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_31884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2F02C(uint64_t a1)
{
  v2 = sub_2F79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2F068(uint64_t a1)
{
  v2 = sub_2F79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowcaseExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27EED8, &qword_1E7C30);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v42[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_2F79C();
  sub_1E1E00();
  v11 = v3[3];
  v12 = v3[5];
  v89 = v3[4];
  v90 = v12;
  v13 = v3[5];
  v91 = v3[6];
  v14 = v3[1];
  v86[0] = *v3;
  v86[1] = v14;
  v15 = v3[3];
  v17 = *v3;
  v16 = v3[1];
  v87 = v3[2];
  v88 = v15;
  v83 = v89;
  v84 = v13;
  v85 = v3[6];
  v79 = v17;
  v80 = v16;
  v81 = v87;
  v82 = v11;
  v95 = 0;
  sub_274D4(v86, &v59);
  sub_18544();
  sub_1E1CF0();
  if (v2)
  {
    v63 = v83;
    v64 = v84;
    v65 = v85;
    v59 = v79;
    v60 = v80;
    v61 = v81;
    v62 = v82;
    sub_28354(&v59);
  }

  else
  {
    v74[4] = v83;
    v74[5] = v84;
    v74[6] = v85;
    v74[0] = v79;
    v74[1] = v80;
    v74[2] = v81;
    v74[3] = v82;
    sub_28354(v74);
    v18 = v3[8];
    v19 = v3[10];
    v76 = v3[9];
    v77 = v19;
    v20 = v3[8];
    v75[0] = v3[7];
    v75[1] = v20;
    v21 = v3[10];
    v71 = v76;
    v72 = v21;
    v78 = *(v3 + 22);
    v73 = *(v3 + 22);
    v69 = v75[0];
    v70 = v18;
    v94 = 1;
    sub_1C79C(v75, &v59);
    sub_1C860();
    sub_1E1CF0();
    v57[2] = v71;
    v57[3] = v72;
    v58 = v73;
    v57[0] = v69;
    v57[1] = v70;
    sub_1C7D4(v57);
    v22 = *(v3 + 296);
    v23 = *(v3 + 264);
    v65 = *(v3 + 280);
    v66 = v22;
    v24 = *(v3 + 296);
    v67 = *(v3 + 312);
    v25 = *(v3 + 232);
    v61 = *(v3 + 216);
    v62 = v25;
    v26 = *(v3 + 264);
    v63 = *(v3 + 248);
    v64 = v26;
    v27 = *(v3 + 200);
    v59 = *(v3 + 184);
    v60 = v27;
    v68 = *(v3 + 41);
    v53 = v65;
    v54 = v24;
    v55 = *(v3 + 312);
    v56 = *(v3 + 41);
    v28 = *(v3 + 232);
    v49 = *(v3 + 216);
    v50 = v28;
    v51 = *(v3 + 248);
    v52 = v23;
    v29 = *(v3 + 200);
    v47 = *(v3 + 184);
    v48 = v29;
    v93 = 2;
    sub_275C4(&v59, v45);
    sub_18630();
    sub_1E1CF0();
    v45[6] = v53;
    v45[7] = v54;
    v45[8] = v55;
    v46 = v56;
    v45[2] = v49;
    v45[3] = v50;
    v45[4] = v51;
    v45[5] = v52;
    v45[0] = v47;
    v45[1] = v48;
    sub_283A8(v45);
    v30 = *(v3 + 45);
    *v42 = *(v3 + 42);
    *&v42[8] = *(v3 + 344);
    v43 = v30;
    v92 = 3;
    sub_18598();

    sub_1E1CF0();

    v31 = *(v3 + 47);
    v32 = *(v3 + 48);
    v33 = *(v3 + 49);
    v34 = *(v3 + 100);
    *v42 = *(v3 + 46);
    *&v42[8] = v31;
    *&v42[16] = v32;
    v43 = v33;
    v44 = v34;
    v92 = 4;
    sub_2EB50(*v42, v31);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*v42, *&v42[8]);
    v35 = *(v3 + 53);
    *v42 = *(v3 + 408);
    *&v42[16] = v35;
    v92 = 5;
    sub_28450();

    sub_1E1C80();

    v42[0] = *(v3 + 432);
    v92 = 6;
    sub_284F8();
    sub_1E1C80();
    v36 = *(v3 + 56);
    v37 = *(v3 + 57);
    *v42 = *(v3 + 55);
    *&v42[8] = v36;
    *&v42[16] = v37;
    v92 = 7;
    sub_2EBCC(*v42, v36, v37);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(*v42, *&v42[8], *&v42[16]);
    v38 = type metadata accessor for FlowcaseExposureEvent.Model(0);
    v39 = *(v38 + 48);
    v42[0] = 8;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v40 = *(v38 + 52);
    v42[0] = 9;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2F79C()
{
  result = qword_27EEE0;
  if (!qword_27EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE0);
  }

  return result;
}

uint64_t sub_2F7F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2F834()
{
  result = qword_27EEE8;
  if (!qword_27EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE8);
  }

  return result;
}

uint64_t sub_2F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t FlowcaseExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_1E11A0();
  v42 = *(v45 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin();
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_27EEF0, &qword_1E7C38);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v39 - v11;
  v13 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v50 = a1;
  sub_48B8(a1, v17);
  sub_2F79C();
  v49 = v12;
  v19 = v51;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v50);
  }

  v40 = v8;
  v41 = v13;
  v20 = v47;
  v51 = v16;
  v80 = 0;
  sub_18EFC();
  sub_1E1C20();
  v21 = v65;
  v22 = v51;
  *(v51 + 4) = v64;
  *(v22 + 5) = v21;
  *(v22 + 6) = v66;
  v23 = v61;
  *v22 = v60;
  *(v22 + 1) = v23;
  v24 = v63;
  *(v22 + 2) = v62;
  *(v22 + 3) = v24;
  v79 = 1;
  sub_1C808();
  sub_1E1C20();
  v25 = v58;
  *(v22 + 9) = v57;
  *(v22 + 10) = v25;
  *(v22 + 22) = v59;
  v26 = v56;
  *(v22 + 7) = v55;
  *(v22 + 8) = v26;
  v78 = 2;
  sub_18FA4();
  sub_1E1C20();
  v39[1] = 0;
  v27 = v70;
  *(v22 + 216) = v69;
  *(v22 + 232) = v27;
  v28 = v72;
  *(v22 + 248) = v71;
  v29 = v68;
  *(v22 + 184) = v67;
  *(v22 + 200) = v29;
  v30 = v73;
  v31 = v75;
  *(v22 + 296) = v74;
  *(v22 + 312) = v31;
  *(v22 + 41) = v76;
  *(v22 + 264) = v28;
  *(v22 + 280) = v30;
  v77 = 3;
  sub_18F50();
  sub_1E1C20();
  v39[0] = v22 + 184;
  v32 = v53;
  *(v22 + 21) = v52;
  *(v22 + 22) = v32;
  v77 = 4;
  sub_16720();
  sub_1E1BB0();
  v33 = v54;
  v34 = v53;
  *(v22 + 23) = v52;
  *(v22 + 24) = v34;
  *(v22 + 100) = v33;
  v77 = 5;
  sub_28EF4();
  sub_1E1BB0();
  v35 = v53;
  *(v22 + 408) = v52;
  *(v22 + 53) = v35;
  v77 = 6;
  sub_28F9C();
  sub_1E1BB0();
  v22[432] = v52;
  v77 = 7;
  sub_30258();
  sub_1E1BB0();
  v36 = v53;
  *(v22 + 440) = v52;
  *(v22 + 57) = v36;
  LOBYTE(v52) = 8;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v46 + 32))(&v22[*(v41 + 48)], v40, v5);
  LOBYTE(v52) = 9;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v20 + 8))(v49, v48);
  v37 = v51;
  (*(v42 + 32))(&v51[*(v41 + 52)], v44, v45);
  sub_302AC(v37, v43);
  sub_4E48(v50);
  return sub_30310(v37);
}

unint64_t sub_30258()
{
  result = qword_27EEF8;
  if (!qword_27EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEF8);
  }

  return result;
}

uint64_t sub_302AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_30310(uint64_t a1)
{
  v2 = type metadata accessor for FlowcaseExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3040C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = enum case for EventProperty.optional<A>(_:);
  v14 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

uint64_t sub_3076C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_30B30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_30EEC()
{
  sub_311F0(319, &qword_27E578, sub_18EFC, sub_18544);
  if (v0 <= 0x3F)
  {
    sub_311F0(319, &qword_27EF68, sub_1C808, sub_1C860);
    if (v1 <= 0x3F)
    {
      sub_311F0(319, &unk_27E588, sub_18FA4, sub_18630);
      if (v2 <= 0x3F)
      {
        sub_311F0(319, &qword_27E580, sub_18F50, sub_18598);
        if (v3 <= 0x3F)
        {
          sub_311F0(319, &qword_27E568, sub_16720, sub_16778);
          if (v4 <= 0x3F)
          {
            sub_311F0(319, &qword_27EAE8, sub_28EF4, sub_28450);
            if (v5 <= 0x3F)
            {
              sub_311F0(319, &unk_27EAF8, sub_28F9C, sub_284F8);
              if (v6 <= 0x3F)
              {
                sub_311F0(319, &unk_27EF70, sub_30258, sub_2F834);
                if (v7 <= 0x3F)
                {
                  sub_5684();
                  if (v8 <= 0x3F)
                  {
                    sub_5750();
                    if (v9 <= 0x3F)
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
  }
}

void sub_311F0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_31280(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_313B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_314DC()
{
  sub_19FE0(319, &qword_27F028);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &unk_27F030);
        if (v3 <= 0x3F)
        {
          sub_1E1150();
          if (v4 <= 0x3F)
          {
            sub_1E11A0();
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

uint64_t getEnumTagSinglePayload for FlowcaseExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowcaseExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_31780()
{
  result = qword_27F080;
  if (!qword_27F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F080);
  }

  return result;
}

unint64_t sub_317D8()
{
  result = qword_27F088;
  if (!qword_27F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F088);
  }

  return result;
}

unint64_t sub_31830()
{
  result = qword_27F090;
  if (!qword_27F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F090);
  }

  return result;
}

uint64_t sub_31884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t AppAnalyticsAdditionalData.editionKind.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
  v2 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8);

  return v1;
}

id AppAnalyticsAdditionalData.__allocating_init(supportsUnifiedProductPage:editionKind:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = a1;
  v8 = &v7[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id AppAnalyticsAdditionalData.init(supportsUnifiedProductPage:editionKind:)(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = a1;
  v4 = &v3[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v4 = a2;
  v4[1] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_31F2C()
{
  sub_3D68(&qword_27F0A8, &qword_1E7EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E7EA0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000000213C10;
  *(inited + 48) = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x4B6E6F6974696465;
  *(inited + 88) = 0xEB00000000646E69;
  v3 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind);
  v2 = *(v0 + OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind + 8);
  *(inited + 120) = sub_3D68(&qword_27F0B0, &qword_1E7EB8);
  *(inited + 96) = v3;
  *(inited + 104) = v2;

  v4 = sub_322DC(inited);
  swift_setDeallocating();
  sub_3D68(&qword_27F0B8, &qword_1E7EC0);
  swift_arrayDestroy();
  return v4;
}

id Utilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppAnalyticsAdditionalData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAnalyticsAdditionalData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s13BookAnalytics03AppB14AdditionalDataC4data10dictionaryACSgSDySSypG_tFZ_0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_A2F4(0xD00000000000001ALL, 0x8000000000213C10);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_326BC(*(a1 + 56) + 32 * v2, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_A2F4(0x4B6E6F6974696465, 0xEB00000000646E69);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_326BC(*(a1 + 56) + 32 * v4, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v13;
  v7 = v14;
  v8 = type metadata accessor for AppAnalyticsAdditionalData();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___BAAppAnalyticsAdditionalData_supportsUnifiedProductPage] = v13;
  v10 = &v9[OBJC_IVAR___BAAppAnalyticsAdditionalData_editionKind];
  *v10 = v6;
  v10[1] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_322DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F100, &qword_1E7F18);
    v3 = sub_1E1B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_17AA4(v4, &v13, &qword_27F0B8, &qword_1E7EC0);
      v5 = v13;
      v6 = v14;
      result = sub_A2F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_326AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_3246C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F0F0, &qword_1E7F08);
    v3 = sub_1E1B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_17AA4(v4, v13, &qword_27F0F8, &qword_1E7F10);
      result = sub_A5D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_326AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_325A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3D68(&qword_27F0E8, &qword_1E7F00);
    v3 = sub_1E1B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_A2F4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_326AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_326BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BookAnalytics::LocationType_optional __swiftcall LocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1D40();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t LocationType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6461655274736F70;
      break;
    case 2:
    case 4:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6372755074736F70;
      break;
    case 7:
      result = 0x52545774736F70;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
    case 0x1C:
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x50746375646F7270;
      break;
    case 0xB:
      result = 0x54676E6964616572;
      break;
    case 0xC:
      result = 0x45676E6964616572;
      break;
    case 0xD:
      result = 0x79616C50696E696DLL;
      break;
    case 0xE:
      result = 0x676150726564726FLL;
      break;
    case 0xF:
      result = 0x6150726F68747561;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0x4241736569726573;
      break;
    case 0x12:
      result = 0x6F42736569726573;
      break;
    case 0x13:
      result = 0x65676150707075;
      break;
    case 0x14:
      result = 0x69746964456C6C61;
      break;
    case 0x15:
      result = 0x726568746FLL;
      break;
    case 0x16:
      result = 0x7265766F63736964;
      break;
    case 0x17:
      result = 0x796C746E65636572;
      break;
    case 0x18:
      result = 0x6C75736552706F74;
      break;
    case 0x19:
      result = 0x6552686372616573;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0x70756B636F6CLL;
      break;
    case 0x1D:
      result = 0x6465727574616566;
      break;
    case 0x1F:
      result = 0x6E6F74747562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static LocationData.== infix(_:_:)(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LocationType.rawValue.getter();
  v4 = v3;
  if (v2 == LocationType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1D30();
  }

  return v7 & 1;
}

unint64_t sub_32DC0()
{
  result = qword_27F108;
  if (!qword_27F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F108);
  }

  return result;
}

Swift::Int sub_32E14()
{
  v1 = *v0;
  sub_1E1DC0();
  LocationType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_32E7C()
{
  v2 = *v0;
  LocationType.rawValue.getter();
  sub_1E17D0();
}

Swift::Int sub_32EE0()
{
  v1 = *v0;
  sub_1E1DC0();
  LocationType.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

unint64_t sub_32F50@<X0>(unint64_t *a1@<X8>)
{
  result = LocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_33178()
{
  result = qword_27F110;
  if (!qword_27F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F110);
  }

  return result;
}

uint64_t RatingEvent.ratingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 20);
  v4 = sub_3D68(&qword_27F148, &qword_1E80A8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.ratingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 20);
  v4 = sub_3D68(&qword_27F148, &qword_1E80A8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RatingEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RatingEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RatingEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F148, &qword_1E80A8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t RemoveReviewAndRatingEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
}

uint64_t AddToCollectionEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t RatingEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RatingEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RatingEvent.Model.init(contentData:ratingData:upSellData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a3 + 16);
  v10 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v11 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v11;
  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  *(a6 + 96) = v8;
  *(a6 + 104) = *a3;
  *(a6 + 120) = v9;
  v13 = a4[1];
  *(a6 + 128) = *a4;
  *(a6 + 144) = v13;
  *(a6 + 160) = a4[2];
  v14 = *(type metadata accessor for RatingEvent.Model(0) + 32);
  v15 = sub_1E1150();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

uint64_t sub_33B7C()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x61446C6C65537075;
  v4 = 0x6144736569726573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144676E69746172;
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

uint64_t sub_33C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_35340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_33C58(uint64_t a1)
{
  v2 = sub_34020();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_33C94(uint64_t a1)
{
  v2 = sub_34020();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RatingEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F150, &qword_1E80B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_34020();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v38 = *(v3 + 32);
  v39 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v40 = *(v3 + 64);
  v41 = v14;
  v15 = *(v3 + 16);
  v37[0] = *v3;
  v37[1] = v15;
  v33 = v38;
  v34 = v13;
  v16 = *(v3 + 80);
  v35 = v40;
  v36 = v16;
  v31 = v37[0];
  v32 = v12;
  v43 = 0;
  sub_13A5C(v37, v30);
  sub_143D0();
  sub_1E1CF0();
  v30[2] = v33;
  v30[3] = v34;
  v30[4] = v35;
  v30[5] = v36;
  v30[0] = v31;
  v30[1] = v32;
  sub_14424(v30);
  if (!v2)
  {
    LOBYTE(v25) = *(v3 + 96);
    v42 = 1;
    sub_34074();
    sub_1E1CF0();
    v17 = *(v3 + 120);
    v25 = *(v3 + 104);
    v26 = v17;
    v42 = 2;
    sub_28450();

    sub_1E1C80();

    v18 = *(v3 + 136);
    v19 = *(v3 + 144);
    v20 = *(v3 + 152);
    v21 = *(v3 + 160);
    v22 = *(v3 + 168);
    *&v25 = *(v3 + 128);
    *(&v25 + 1) = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v42 = 3;
    sub_13BDC(v25, v18, v19, v20, v21, v22);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v25, *(&v25 + 1), v26, v27, v28, v29);
    v23 = *(type metadata accessor for RatingEvent.Model(0) + 32);
    LOBYTE(v25) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_34020()
{
  result = qword_27F158;
  if (!qword_27F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F158);
  }

  return result;
}

unint64_t sub_34074()
{
  result = qword_27F160;
  if (!qword_27F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F160);
  }

  return result;
}

uint64_t RatingEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E1150();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_3D68(&qword_27F168, &qword_1E80B8);
  v30 = *(v32 - 8);
  v8 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v26 - v9;
  v11 = type metadata accessor for RatingEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  sub_48B8(a1, v15);
  sub_34020();
  v31 = v10;
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v33);
  }

  v27 = v7;
  v17 = v30;
  v44 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v40;
  v19 = v14;
  *(v14 + 2) = v39;
  *(v14 + 3) = v18;
  v20 = v42;
  *(v14 + 4) = v41;
  *(v14 + 5) = v20;
  v21 = v38;
  *v14 = v37;
  *(v14 + 1) = v21;
  v43 = 1;
  sub_345E4();
  sub_1E1C20();
  v14[96] = v34;
  v43 = 2;
  sub_28EF4();
  sub_1E1BB0();
  v22 = v35;
  *(v14 + 104) = v34;
  *(v14 + 15) = v22;
  v43 = 3;
  sub_DAD8();
  sub_1E1BB0();
  v23 = v35;
  *(v14 + 8) = v34;
  *(v14 + 9) = v23;
  *(v14 + 10) = v36;
  LOBYTE(v34) = 4;
  sub_14E5C(&qword_27D830);
  v24 = v27;
  sub_1E1C20();
  (*(v17 + 8))(v31, v32);
  (*(v28 + 32))(v19 + *(v11 + 32), v24, v4);
  sub_34638(v19, v29);
  sub_4E48(v33);
  return sub_3469C(v19);
}

unint64_t sub_345E4()
{
  result = qword_27F170;
  if (!qword_27F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F170);
  }

  return result;
}

uint64_t sub_34638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatingEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3469C(uint64_t a1)
{
  v2 = type metadata accessor for RatingEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_34798@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F148, &qword_1E80A8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_3497C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F148, &qword_1E80A8);
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

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_34B9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F148, &qword_1E80A8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_34DB4()
{
  sub_34F60(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_34F60(319, &unk_27F1E0, sub_345E4, sub_34074);
    if (v1 <= 0x3F)
    {
      sub_34F60(319, &qword_27EAE8, sub_28EF4, sub_28450);
      if (v2 <= 0x3F)
      {
        sub_34F60(319, &qword_27DE18, sub_DAD8, sub_D57C);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_34F60(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_34FF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_350B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_35154()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_3523C()
{
  result = qword_27F2C0;
  if (!qword_27F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2C0);
  }

  return result;
}

unint64_t sub_35294()
{
  result = qword_27F2C8;
  if (!qword_27F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2C8);
  }

  return result;
}

unint64_t sub_352EC()
{
  result = qword_27F2D0;
  if (!qword_27F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2D0);
  }

  return result;
}

uint64_t sub_35340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144676E69746172 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BookAnalytics::ExposureTypeView_optional __swiftcall ExposureTypeView.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F7B8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ExposureTypeView.rawValue.getter()
{
  v1 = 0x656C676E6973;
  if (*v0 != 1)
  {
    v1 = 2037277037;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_355B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C676E6973;
  if (v2 != 1)
  {
    v4 = 2037277037;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C676E6973;
  if (*a2 != 1)
  {
    v8 = 2037277037;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_356A8()
{
  result = qword_27F2D8;
  if (!qword_27F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2D8);
  }

  return result;
}

Swift::Int sub_356FC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_35794()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_35818()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_358B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C676E6973;
  if (v2 != 1)
  {
    v5 = 2037277037;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_359CC()
{
  result = qword_27F2E0;
  if (!qword_27F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2E0);
  }

  return result;
}

uint64_t AnnotationViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27F318, &unk_1E8408);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnnotationViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnnotationViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AnnotationViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void AnnotationActionEvent.Model.viewData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 98);
  *a1 = *(v1 + 96);
  *(a1 + 2) = v2;
}

uint64_t AnnotationViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotationViewEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotationViewEvent.Model.init(contentData:viewData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v8;
  v9 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v9;
  v10 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v10;
  *(a4 + 96) = v6;
  *(a4 + 98) = v7;
  v11 = *(type metadata accessor for AnnotationViewEvent.Model(0) + 24);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

uint64_t sub_36034()
{
  v1 = 0x6174614477656976;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_3609C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_37250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_360C4(uint64_t a1)
{
  v2 = sub_363DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_36100(uint64_t a1)
{
  v2 = sub_363DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnotationViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27F320, &qword_1E8418);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_363DC();
  sub_1E1E00();
  v10 = v2[2];
  v11 = v2[4];
  v39 = v2[3];
  v40 = v11;
  v12 = v2[4];
  v41 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v37 = v2[1];
  v38 = v14;
  v15 = *v2;
  v33 = v39;
  v34 = v12;
  v35 = v2[5];
  v36 = v15;
  v30 = v13;
  v31 = v37;
  v32 = v10;
  v29 = 0;
  sub_13A5C(&v36, &v23);
  sub_143D0();
  v16 = v42;
  sub_1E1CF0();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
    v17 = *(v2 + 98);
    v21 = *(v2 + 48);
    v22 = v17;
    v20[12] = 1;
    sub_B7B4();
    sub_1E1CF0();
    v18 = *(type metadata accessor for AnnotationViewEvent.Model(0) + 24);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_363DC()
{
  result = qword_27F328;
  if (!qword_27F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F328);
  }

  return result;
}

uint64_t AnnotationViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_3D68(&qword_27F330, &qword_1E8420);
  v28 = *(v29 - 8);
  v8 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for AnnotationViewEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_48B8(a1, v15);
  sub_363DC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v25 = v11;
  v17 = v28;
  v18 = v7;
  v40 = 0;
  sub_14CB8();
  v19 = v29;
  sub_1E1C20();
  v20 = v36;
  *(v14 + 2) = v35;
  *(v14 + 3) = v20;
  v21 = v38;
  *(v14 + 4) = v37;
  *(v14 + 5) = v21;
  v22 = v34;
  *v14 = v33;
  *(v14 + 1) = v22;
  v39 = 1;
  sub_B75C();
  sub_1E1C20();
  v23 = v32;
  *(v14 + 48) = v31;
  v14[98] = v23;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v26 + 32))(&v14[*(v25 + 24)], v18, v4);
  sub_36834(v14, v27);
  sub_4E48(v30);
  return sub_36898(v14);
}

uint64_t sub_36834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36898(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_36994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27F318, &unk_1E8408);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_36ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F318, &unk_1E8408);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_36C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F318, &unk_1E8408);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_36DB4()
{
  sub_36EC0(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_36EC0(319, &unk_27F3A0, sub_B75C, sub_B7B4);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_36EC0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_36F50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_37010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_370B4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_3714C()
{
  result = qword_27F470;
  if (!qword_27F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F470);
  }

  return result;
}

unint64_t sub_371A4()
{
  result = qword_27F478;
  if (!qword_27F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478);
  }

  return result;
}

unint64_t sub_371FC()
{
  result = qword_27F480;
  if (!qword_27F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F480);
  }

  return result;
}

uint64_t sub_37250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t static DebugData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1D30();
  }
}

uint64_t sub_373BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953394534 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_37444(uint64_t a1)
{
  v2 = sub_375F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_37480(uint64_t a1)
{
  v2 = sub_375F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27F488, &qword_1E8630);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_375F8();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_375F8()
{
  result = qword_27F490;
  if (!qword_27F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F490);
  }

  return result;
}

uint64_t FontData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27F498, &qword_1E8638);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_375F8();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1BE0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_377C4()
{
  result = qword_27F4A0;
  if (!qword_27F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4A0);
  }

  return result;
}

unint64_t sub_3781C()
{
  result = qword_27F4A8;
  if (!qword_27F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4A8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for YearlyGoalsReachedData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_37894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_378DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_3793C()
{
  result = qword_27F4B0;
  if (!qword_27F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4B0);
  }

  return result;
}

unint64_t sub_37994()
{
  result = qword_27F4B8;
  if (!qword_27F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4B8);
  }

  return result;
}

unint64_t sub_379EC()
{
  result = qword_27F4C0;
  if (!qword_27F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0);
  }

  return result;
}

uint64_t CollectionExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CollectionExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t CollectionExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t CollectionExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 176);
  v20 = *(v1 + 192);
  v21 = v2;
  v4 = *(v1 + 208);
  v22 = *(v1 + 224);
  v5 = *(v1 + 144);
  v7 = *(v1 + 112);
  v16 = *(v1 + 128);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 144);
  v9 = *(v1 + 176);
  v18 = *(v1 + 160);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 112);
  v15[0] = *(v1 + 96);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 240);
  *(a1 + 144) = *(v1 + 240);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t CollectionExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionExposureEvent.Model.init(collectionData:exposureData:linkData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v10;
  v12 = a2[2];
  v13 = a2[3];
  *(a6 + 48) = v11;
  *(a6 + 64) = v12;
  v15 = *a3;
  v14 = a3[1];
  *(a6 + 80) = v13;
  *(a6 + 96) = v15;
  v16 = a3[2];
  v17 = a3[4];
  v18 = a3[5];
  *(a6 + 144) = a3[3];
  *(a6 + 160) = v17;
  *(a6 + 112) = v14;
  *(a6 + 128) = v16;
  v19 = a3[6];
  v20 = a3[7];
  v21 = a3[8];
  *(a6 + 240) = *(a3 + 18);
  *(a6 + 208) = v20;
  *(a6 + 224) = v21;
  *(a6 + 176) = v18;
  *(a6 + 192) = v19;
  v22 = type metadata accessor for CollectionExposureEvent.Model(0);
  v23 = *(v22 + 28);
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a6 + v23, a4, v24);
  v25 = *(v22 + 32);
  v26 = sub_1E11A0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a6 + v25, a5, v26);
}

uint64_t sub_38580()
{
  v1 = *v0;
  v2 = 0x697463656C6C6F63;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_38638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3A1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_38660(uint64_t a1)
{
  v2 = sub_38BD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3869C(uint64_t a1)
{
  v2 = sub_38BD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27F508, &qword_1E8868);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_38BD4();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v64 = *v2;
  v65 = v10;
  v66 = v11;
  v67 = v12;
  v63 = 0;
  sub_2B314();

  v13 = v68;
  sub_1E1CF0();
  if (v13)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v5;

    v16 = *(v2 + 3);
    v62[0] = *(v2 + 2);
    v62[1] = v16;
    v17 = *(v2 + 5);
    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    v62[2] = *(v2 + 4);
    v62[3] = v17;
    v58 = v19;
    v59 = v18;
    v20 = *(v2 + 5);
    v60 = *(v2 + 4);
    v61 = v20;
    v57 = 1;
    sub_17AA4(v62, v48, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v47[0] = v58;
    v47[1] = v59;
    v47[2] = v60;
    v47[3] = v61;
    sub_18E48(v47, &qword_27F500, &unk_210330);
    v21 = *(v2 + 13);
    v22 = *(v2 + 11);
    v53 = *(v2 + 12);
    v54 = v21;
    v23 = *(v2 + 13);
    v55 = *(v2 + 14);
    v24 = *(v2 + 9);
    v25 = *(v2 + 7);
    v49 = *(v2 + 8);
    v50 = v24;
    v26 = *(v2 + 9);
    v27 = *(v2 + 11);
    v51 = *(v2 + 10);
    v52 = v27;
    v28 = *(v2 + 7);
    v48[0] = *(v2 + 6);
    v48[1] = v28;
    v43 = v53;
    v44 = v23;
    v45 = *(v2 + 14);
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v22;
    v56 = v2[30];
    v46 = v2[30];
    v37 = v48[0];
    v38 = v25;
    v36 = 2;
    sub_17AA4(v48, v34, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v34[6] = v43;
    v34[7] = v44;
    v34[8] = v45;
    v35 = v46;
    v34[2] = v39;
    v34[3] = v40;
    v34[4] = v41;
    v34[5] = v42;
    v34[0] = v37;
    v34[1] = v38;
    sub_18E48(v34, &qword_27E4A0, &qword_1E8860);
    v29 = type metadata accessor for CollectionExposureEvent.Model(0);
    v30 = *(v29 + 28);
    v33 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v31 = *(v29 + 32);
    v33 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v15 + 8))(v8, v4);
  }
}

unint64_t sub_38BD4()
{
  result = qword_27F510;
  if (!qword_27F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F510);
  }

  return result;
}

unint64_t sub_38C28()
{
  result = qword_27F518;
  if (!qword_27F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F518);
  }

  return result;
}

uint64_t CollectionExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_1E11A0();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin();
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_27F520, &qword_1E8870);
  v36 = *(v37 - 8);
  v9 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for CollectionExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_38BD4();
  v38 = v11;
  v17 = v56;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v56 = v5;
  LOBYTE(v52) = 0;
  sub_2B68C();
  sub_1E1C20();
  v18 = *(&v41 + 1);
  *v15 = v41;
  *(v15 + 1) = v18;
  *(v15 + 1) = v42;
  v51 = 1;
  sub_393C4();
  sub_1E1BB0();
  v19 = v53;
  *(v15 + 2) = v52;
  *(v15 + 3) = v19;
  v20 = v55;
  *(v15 + 4) = v54;
  *(v15 + 5) = v20;
  v40 = 2;
  sub_18FA4();
  v30 = 0;
  sub_1E1BB0();
  v21 = v36;
  v22 = v48;
  *(v15 + 12) = v47;
  *(v15 + 13) = v22;
  *(v15 + 14) = v49;
  *(v15 + 30) = v50;
  v23 = v44;
  *(v15 + 8) = v43;
  *(v15 + 9) = v23;
  v24 = v46;
  *(v15 + 10) = v45;
  *(v15 + 11) = v24;
  v25 = v42;
  *(v15 + 6) = v41;
  *(v15 + 7) = v25;
  v39 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v26 = v56;
  sub_1E1C20();
  (*(v35 + 32))(&v15[*(v12 + 28)], v8, v26);
  v39 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v27 = v34;
  v28 = v33;
  sub_1E1C20();
  (*(v21 + 8))(v38, v37);
  (*(v31 + 32))(&v15[*(v12 + 32)], v27, v28);
  sub_39418(v15, v32);
  sub_4E48(a1);
  return sub_3947C(v15);
}

unint64_t sub_393C4()
{
  result = qword_27F528;
  if (!qword_27F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F528);
  }

  return result;
}

uint64_t sub_39418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3947C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39578@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_3975C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
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

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_3997C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_39B94()
{
  sub_39D08(319, &qword_27ED10, sub_2B68C, sub_2B314);
  if (v0 <= 0x3F)
  {
    sub_39D08(319, &unk_27F598, sub_393C4, sub_38C28);
    if (v1 <= 0x3F)
    {
      sub_39D08(319, &unk_27E588, sub_18FA4, sub_18630);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          sub_5750();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_39D08(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_39D98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_39ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_39FF4()
{
  sub_19FE0(319, &unk_27F640);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_3A0EC()
{
  result = qword_27F680;
  if (!qword_27F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F680);
  }

  return result;
}

unint64_t sub_3A144()
{
  result = qword_27F688;
  if (!qword_27F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F688);
  }

  return result;
}

unint64_t sub_3A19C()
{
  result = qword_27F690;
  if (!qword_27F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F690);
  }

  return result;
}

uint64_t sub_3A1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BookAnalytics::ViewSource_optional __swiftcall ViewSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F820;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ViewSource.rawValue.getter()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 6516596;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics14ViewSourceDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x654D6E6F69746361;
  v4 = 0xEA0000000000756ELL;
  if (v2 != 1)
  {
    v3 = 6516596;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x654D6E6F69746361;
  v8 = 0xEA0000000000756ELL;
  if (*a2 != 1)
  {
    v7 = 6516596;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_3A570()
{
  result = qword_27F698;
  if (!qword_27F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F698);
  }

  return result;
}

Swift::Int sub_3A5C4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_3A664()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_3A6F0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_3A798(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000756ELL;
  v5 = 0x654D6E6F69746361;
  if (v2 != 1)
  {
    v5 = 6516596;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_3A8B4()
{
  result = qword_27F6A0;
  if (!qword_27F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6A0);
  }

  return result;
}

uint64_t NotificationOptInActionEvent.notificationOptInActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NotificationOptInActionEvent.notificationOptInActionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationOptInActionEvent.notificationOptInLocationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInLocationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.notificationOptInTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationOptInActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationOptInActionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t NotificationOptInActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationOptInActionEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationOptInActionEvent.Model.init(notificationOptInActionData:notificationOptInLocationData:notificationOptInTypeData:eventData:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a5 = *a1;
  a5[1] = v7;
  a5[2] = v8;
  v9 = *(type metadata accessor for NotificationOptInActionEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

unint64_t sub_3B198()
{
  v1 = 0x746144746E657665;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_3B21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3C628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_3B244(uint64_t a1)
{
  v2 = sub_3B4F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3B280(uint64_t a1)
{
  v2 = sub_3B4F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F6F0, &qword_1E8BE0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_3B4F8();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_3B54C();
  sub_1E1CF0();
  if (!v2)
  {
    v13[13] = v3[1];
    v13[12] = 1;
    sub_3B5A0();
    sub_1E1CF0();
    v13[11] = v3[2];
    v13[10] = 2;
    sub_3B5F4();
    sub_1E1C80();
    v11 = *(type metadata accessor for NotificationOptInActionEvent.Model(0) + 28);
    v13[9] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_3B4F8()
{
  result = qword_27F6F8;
  if (!qword_27F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6F8);
  }

  return result;
}

unint64_t sub_3B54C()
{
  result = qword_27F700;
  if (!qword_27F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F700);
  }

  return result;
}

unint64_t sub_3B5A0()
{
  result = qword_27F708;
  if (!qword_27F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F708);
  }

  return result;
}

unint64_t sub_3B5F4()
{
  result = qword_27F710;
  if (!qword_27F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F710);
  }

  return result;
}

uint64_t NotificationOptInActionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E1150();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_27F718, &qword_1E8BE8);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = type metadata accessor for NotificationOptInActionEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v27 = a1;
  sub_48B8(a1, v16);
  sub_3B4F8();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = v15;
    v19 = v25;
    v33 = 0;
    sub_3B9B8();
    v20 = v26;
    sub_1E1C20();
    *v18 = v34;
    v31 = 1;
    sub_3BA0C();
    sub_1E1C20();
    v18[1] = v32;
    v29 = 2;
    sub_3BA60();
    sub_1E1BB0();
    v18[2] = v30;
    v28 = 3;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v19 + 8))(v11, v20);
    (*(v23 + 32))(&v18[*(v12 + 28)], v7, v4);
    sub_3BAB4(v18, v24);
  }

  return sub_4E48(v27);
}

unint64_t sub_3B9B8()
{
  result = qword_27F720;
  if (!qword_27F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F720);
  }

  return result;
}

unint64_t sub_3BA0C()
{
  result = qword_27F728;
  if (!qword_27F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F728);
  }

  return result;
}

unint64_t sub_3BA60()
{
  result = qword_27F730;
  if (!qword_27F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F730);
  }

  return result;
}

uint64_t sub_3BAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationOptInActionEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BBB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_3BD50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_3BF1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F6D8, &qword_1E8BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F6E0, &qword_1E8BC8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27F6E8, &unk_1E8BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_3C0E0()
{
  sub_3C23C(319, &qword_27F7A0, sub_3B9B8, sub_3B54C);
  if (v0 <= 0x3F)
  {
    sub_3C23C(319, &qword_27F7A8, sub_3BA0C, sub_3B5A0);
    if (v1 <= 0x3F)
    {
      sub_3C23C(319, &unk_27F7B0, sub_3BA60, sub_3B5F4);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3C23C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_3C2CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_3C384(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3C424()
{
  sub_3C4C0();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3C4C0()
{
  if (!qword_27F850)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27F850);
    }
  }
}

unint64_t sub_3C524()
{
  result = qword_27F888;
  if (!qword_27F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F888);
  }

  return result;
}

unint64_t sub_3C57C()
{
  result = qword_27F890;
  if (!qword_27F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F890);
  }

  return result;
}

unint64_t sub_3C5D4()
{
  result = qword_27F898;
  if (!qword_27F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F898);
  }

  return result;
}

uint64_t sub_3C628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000000213D20 == a2;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000000213D40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000000213D60 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t PlayEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.doNotDisturbData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.doNotDisturbData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayEvent(0) + 56);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PlayEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = enum case for EventProperty.optional<A>(_:);
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v14, v25);
}

uint64_t PlayEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v7[0] = v1[6];
  v7[1] = v2;
  v8[0] = v1[8];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 138);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

void PlayEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 164);
  *a1 = *(v1 + 156);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t PlayEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  *a1 = v1[21];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t PlayEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *a1 = *(v1 + 200);
  *(a1 + 16) = v2;
}

uint64_t PlayEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[30];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[33];
  v7 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PlayEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEvent.Model(0) + 52);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PlayEvent.Model(0) + 56));
}

uint64_t PlayEvent.Model.init(contentData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:upSellData:doNotDisturbData:seriesData:eventData:timedData:userEmbeddingData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v13 = *a3;
  v14 = *a4;
  v15 = *(a4 + 4);
  v16 = a4[2];
  v17 = *a5;
  v18 = *(a5 + 2);
  v19 = *(a5 + 3);
  v20 = *(a6 + 16);
  v21 = *a7;
  v22 = *a12;
  v23 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v23;
  v24 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v24;
  v25 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v25;
  v26 = a2[1];
  *(a9 + 96) = *a2;
  *(a9 + 112) = v26;
  *(a9 + 128) = a2[2];
  *(a9 + 138) = *(a2 + 42);
  *(a9 + 154) = v13;
  *(a9 + 156) = v14;
  *(a9 + 160) = v15;
  *(a9 + 164) = v16;
  *(a9 + 168) = v17;
  *(a9 + 184) = v18;
  *(a9 + 192) = v19;
  *(a9 + 200) = *a6;
  *(a9 + 216) = v20;
  *(a9 + 224) = v21;
  v27 = a8[1];
  *(a9 + 232) = *a8;
  *(a9 + 248) = v27;
  *(a9 + 264) = a8[2];
  v28 = type metadata accessor for PlayEvent.Model(0);
  v29 = v28[12];
  v30 = sub_1E1150();
  (*(*(v30 - 8) + 32))(a9 + v29, a10, v30);
  v31 = v28[13];
  v32 = sub_1E11A0();
  result = (*(*(v32 - 8) + 32))(a9 + v31, a11, v32);
  *(a9 + v28[14]) = v22;
  return result;
}

unint64_t sub_3DD9C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E65746E6F63;
    v7 = 0xD000000000000019;
    v8 = 0x4465746152746962;
    if (a1 != 3)
    {
      v8 = 0x746144726F727265;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
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
    v1 = 0x746144746E657665;
    v2 = 0x74614464656D6974;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61446C6C65537075;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_3DF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_40920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_3DF58(uint64_t a1)
{
  v2 = sub_3E5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3DF94(uint64_t a1)
{
  v2 = sub_3E5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27F8E8, &qword_1E8E10);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v35 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_3E5E4();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v58 = *(v3 + 32);
  v59 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v60 = *(v3 + 64);
  v61 = v14;
  v15 = *(v3 + 16);
  v57[0] = *v3;
  v57[1] = v15;
  v53 = v58;
  v54 = v13;
  v16 = *(v3 + 80);
  v55 = v60;
  v56 = v16;
  v51 = v57[0];
  v52 = v12;
  v50 = 0;
  sub_13A5C(v57, v49);
  sub_143D0();
  sub_1E1CF0();
  v49[2] = v53;
  v49[3] = v54;
  v49[4] = v55;
  v49[5] = v56;
  v49[0] = v51;
  v49[1] = v52;
  sub_14424(v49);
  if (!v2)
  {
    v17 = *(v3 + 112);
    v47[0] = *(v3 + 96);
    v47[1] = v17;
    v19 = *(v3 + 96);
    v18 = *(v3 + 112);
    v48[0] = *(v3 + 128);
    *(v48 + 10) = *(v3 + 138);
    v44 = v19;
    v45 = v18;
    v46[0] = *(v3 + 128);
    *(v46 + 10) = *(v3 + 138);
    v43 = 1;
    sub_3D9DC(v47, v41);
    sub_3E638();
    sub_1E1CF0();
    v41[0] = v44;
    v41[1] = v45;
    *v42 = v46[0];
    *&v42[10] = *(v46 + 10);
    sub_3E68C(v41);
    LOWORD(v35) = *(v3 + 154);
    v40 = 2;
    sub_14520();
    sub_1E1CF0();
    v20 = *(v3 + 160);
    v21 = *(v3 + 164);
    LODWORD(v35) = *(v3 + 156);
    BYTE4(v35) = v20;
    DWORD2(v35) = v21;
    v40 = 3;
    sub_14574();
    sub_1E1CF0();
    v22 = *(v3 + 176);
    v23 = *(v3 + 184);
    v24 = *(v3 + 192);
    *&v35 = *(v3 + 168);
    *(&v35 + 1) = v22;
    v36 = v23;
    v37 = v24;
    v40 = 4;
    sub_145C8();

    sub_1E1CF0();

    v25 = *(v3 + 216);
    v35 = *(v3 + 200);
    v36 = v25;
    v40 = 5;
    sub_28450();

    sub_1E1C80();

    LOWORD(v35) = *(v3 + 224);
    v40 = 6;
    sub_3E6E0();
    sub_1E1CF0();
    v27 = *(v3 + 240);
    v28 = *(v3 + 248);
    v29 = *(v3 + 256);
    v30 = *(v3 + 264);
    v31 = *(v3 + 272);
    *&v35 = *(v3 + 232);
    *(&v35 + 1) = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = 7;
    sub_13BDC(v35, v27, v28, v29, v30, v31);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v35, *(&v35 + 1), v36, v37, v38, v39);
    v32 = type metadata accessor for PlayEvent.Model(0);
    v33 = v32[12];
    LOBYTE(v35) = 8;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v34 = v32[13];
    LOBYTE(v35) = 9;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    *&v35 = *(v3 + v32[14]);
    v40 = 10;
    sub_3E734();

    sub_1E1C80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_3E5E4()
{
  result = qword_27F8F0;
  if (!qword_27F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F0);
  }

  return result;
}

unint64_t sub_3E638()
{
  result = qword_27F8F8;
  if (!qword_27F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8);
  }

  return result;
}

unint64_t sub_3E6E0()
{
  result = qword_27F900;
  if (!qword_27F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F900);
  }

  return result;
}

unint64_t sub_3E734()
{
  result = qword_27F908;
  if (!qword_27F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F908);
  }

  return result;
}

uint64_t PlayEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v41 = sub_1E11A0();
  v38 = *(v41 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin();
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_27F910, &qword_1E8E18);
  v40 = *(v42 - 8);
  v10 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v34 - v11;
  v13 = type metadata accessor for PlayEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v60 = a1;
  sub_48B8(a1, v18);
  sub_3E5E4();
  v43 = v12;
  v19 = v44;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v60);
  }

  v20 = v9;
  v35 = v5;
  v21 = v40;
  v36 = v13;
  v44 = v6;
  v22 = v41;
  v53 = 0;
  sub_14CB8();
  sub_1E1C20();
  v23 = v57;
  *(v16 + 2) = v56;
  *(v16 + 3) = v23;
  v24 = v59;
  *(v16 + 4) = v58;
  *(v16 + 5) = v24;
  v25 = v55;
  *v16 = v54;
  *(v16 + 1) = v25;
  v49 = 1;
  sub_3F258();
  sub_1E1C20();
  v26 = v51;
  *(v16 + 6) = v50;
  *(v16 + 7) = v26;
  *(v16 + 8) = *v52;
  *(v16 + 138) = *&v52[10];
  v48 = 2;
  sub_14D60();
  sub_1E1C20();
  *(v16 + 77) = v45;
  v48 = 3;
  sub_14DB4();
  sub_1E1C20();
  v27 = BYTE4(v45);
  v28 = DWORD2(v45);
  *(v16 + 39) = v45;
  v16[160] = v27;
  *(v16 + 41) = v28;
  v48 = 4;
  sub_14E08();
  sub_1E1C20();
  v29 = v46;
  *(v16 + 168) = v45;
  *(v16 + 184) = v29;
  v48 = 5;
  sub_28EF4();
  sub_1E1BB0();
  v30 = v46;
  *(v16 + 200) = v45;
  *(v16 + 27) = v30;
  v48 = 6;
  sub_3F2AC();
  sub_1E1C20();
  *(v16 + 112) = v45;
  v48 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v34[3] = 1;
  v31 = v46;
  *(v16 + 232) = v45;
  *(v16 + 248) = v31;
  *(v16 + 264) = v47;
  LOBYTE(v45) = 8;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v32 = v44;
  sub_1E1C20();
  (*(v39 + 32))(&v16[v36[12]], v20, v32);
  LOBYTE(v45) = 9;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v38 + 32))(&v16[v36[13]], v35, v22);
  v48 = 10;
  sub_3F300();
  sub_1E1BB0();
  (*(v21 + 8))(v43, v42);
  *&v16[v36[14]] = v45;
  sub_3F354(v16, v37);
  sub_4E48(v60);
  return sub_3F3B8(v16);
}

unint64_t sub_3F258()
{
  result = qword_27F918;
  if (!qword_27F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F918);
  }

  return result;
}

unint64_t sub_3F2AC()
{
  result = qword_27F920;
  if (!qword_27F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F920);
  }

  return result;
}

unint64_t sub_3F300()
{
  result = qword_27F928;
  if (!qword_27F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928);
  }

  return result;
}

uint64_t sub_3F354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F3B8(uint64_t a1)
{
  v2 = type metadata accessor for PlayEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3F4B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = enum case for EventProperty.optional<A>(_:);
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v15, v26);
}

uint64_t sub_3F860(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_3FC78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_40088()
{
  sub_403DC(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_403DC(319, &qword_27F998, sub_3F258, sub_3E638);
    if (v1 <= 0x3F)
    {
      sub_403DC(319, &qword_27E2D8, sub_14D60, sub_14520);
      if (v2 <= 0x3F)
      {
        sub_403DC(319, &qword_27E2E0, sub_14DB4, sub_14574);
        if (v3 <= 0x3F)
        {
          sub_403DC(319, &unk_27E2E8, sub_14E08, sub_145C8);
          if (v4 <= 0x3F)
          {
            sub_403DC(319, &qword_27EAE8, sub_28EF4, sub_28450);
            if (v5 <= 0x3F)
            {
              sub_403DC(319, &qword_27F9A0, sub_3F2AC, sub_3E6E0);
              if (v6 <= 0x3F)
              {
                sub_403DC(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_5684();
                  if (v8 <= 0x3F)
                  {
                    sub_5750();
                    if (v9 <= 0x3F)
                    {
                      sub_403DC(319, &unk_27F9A8, sub_3F300, sub_3E734);
                      if (v10 <= 0x3F)
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
    }
  }
}
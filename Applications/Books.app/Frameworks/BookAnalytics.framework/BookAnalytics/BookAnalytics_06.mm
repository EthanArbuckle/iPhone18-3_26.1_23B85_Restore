uint64_t InBookSearchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1E1150();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_282400, &qword_1EF5F0);
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v38);
  v9 = v34 - v8;
  v10 = type metadata accessor for InBookSearchEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v40 = a1;
  sub_48B8(a1, v14);
  sub_8AC50();
  v16 = v39;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v40);
  }

  v39 = v6;
  v17 = v36;
  v18 = v13;
  v19 = v37;
  LOBYTE(v41) = 0;
  sub_686E8();
  sub_1E1C20();
  v20 = BYTE4(v44);
  v21 = DWORD2(v44);
  v22 = BYTE12(v44);
  v23 = BYTE13(v44);
  v24 = BYTE14(v44);
  *v18 = v44;
  *(v18 + 4) = v20;
  *(v18 + 8) = v21;
  *(v18 + 12) = v22;
  *(v18 + 13) = v23;
  *(v18 + 14) = v24;
  v51 = 1;
  sub_14CB8();
  sub_1E1C20();
  v25 = v47;
  *(v18 + 48) = v46;
  *(v18 + 64) = v25;
  v26 = v49;
  *(v18 + 80) = v48;
  *(v18 + 96) = v26;
  v27 = v45;
  *(v18 + 16) = v44;
  *(v18 + 32) = v27;
  v50 = 2;
  sub_826DC();
  sub_1E1BB0();
  v28 = *(&v41 + 1);
  v29 = v42;
  v34[1] = v41;
  *(v18 + 112) = v41;
  *(v18 + 120) = v28;
  v34[2] = v28;
  v34[3] = v29;
  *(v18 + 128) = v29;
  v50 = 3;
  sub_DAD8();
  sub_1E1BB0();
  v30 = v42;
  *(v18 + 144) = v41;
  *(v18 + 160) = v30;
  *(v18 + 176) = v43;
  LOBYTE(v41) = 4;
  sub_14E5C(&qword_27D830);
  v31 = v39;
  v32 = v38;
  sub_1E1C20();
  (*(v17 + 8))(v9, v32);
  (*(v19 + 32))(v18 + *(v10 + 32), v31, v3);
  sub_8B1E0(v18, v35);
  sub_4E48(v40);
  return sub_8B244(v18);
}

uint64_t sub_8B1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InBookSearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B244(uint64_t a1)
{
  v2 = type metadata accessor for InBookSearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8B340@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_8B524(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_281D58, &qword_1EE340);
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

uint64_t sub_8B744(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v16 = sub_3D68(&qword_281D58, &qword_1EE340);
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

void sub_8B95C()
{
  sub_8BB08(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_8BB08(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_8BB08(319, &qword_281E38, sub_826DC, sub_81E44);
      if (v2 <= 0x3F)
      {
        sub_8BB08(319, &qword_27DE18, sub_DAD8, sub_D57C);
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

void sub_8BB08(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_8BB98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8BC58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
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

void sub_8BCFC()
{
  sub_19FE0(319, &qword_282190);
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

unint64_t sub_8BDE4()
{
  result = qword_282548;
  if (!qword_282548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282548);
  }

  return result;
}

unint64_t sub_8BE3C()
{
  result = qword_282550;
  if (!qword_282550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282550);
  }

  return result;
}

unint64_t sub_8BE94()
{
  result = qword_282558;
  if (!qword_282558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282558);
  }

  return result;
}

uint64_t sub_8BEE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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
    v5 = sub_1E1D30();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ContentStoreData.ratingsCount.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ContentStoreData.init(currency:version:pricePoint:rating:ratingsCount:)(BookAnalytics::ContentStoreData *__return_ptr retstr, Swift::String_optional currency, Swift::String_optional version, Swift::String pricePoint, Swift::String_optional rating, Swift::Int32_optional ratingsCount)
{
  retstr->currency = currency;
  retstr->version = version;
  retstr->pricePoint = pricePoint;
  retstr->rating = rating;
  retstr->ratingsCount.value = ratingsCount.value;
  retstr->ratingsCount.is_nil = ratingsCount.is_nil;
}

uint64_t sub_8C118()
{
  v1 = *v0;
  v2 = 0x79636E6572727563;
  v3 = 0x696F506563697270;
  v4 = 0x676E69746172;
  if (v1 != 3)
  {
    v4 = 0x4373676E69746172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6973726576;
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

uint64_t sub_8C1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_8CD18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8C1E4(uint64_t a1)
{
  v2 = sub_8CA68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8C220(uint64_t a1)
{
  v2 = sub_8CA68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentStoreData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_282560, &qword_1EF820);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v11 = v1[4];
  v21 = v1[5];
  v22 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v17[1] = *(v1 + 16);
  v18 = *(v1 + 68);
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8CA68();
  sub_1E1E00();
  v31 = 0;
  v14 = v25;
  sub_1E1C50();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v18;
  v30 = 1;
  sub_1E1C50();
  v29 = 2;
  sub_1E1CB0();
  v28 = 3;
  sub_1E1C50();
  v27 = 4;
  v26 = v15;
  sub_1E1C90();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ContentStoreData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_282570, &qword_1EF828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8CA68();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v11 = sub_1E1B80();
    v13 = v12;
    v14 = v11;
    LOBYTE(v44[0]) = 1;
    v15 = sub_1E1B80();
    v17 = v16;
    v38 = v15;
    v39 = v14;
    LOBYTE(v44[0]) = 2;
    v18 = sub_1E1BE0();
    v20 = v19;
    v36 = v18;
    v37 = a2;
    LOBYTE(v44[0]) = 3;
    v21 = sub_1E1B80();
    v23 = v22;
    v35 = v21;
    v49 = 4;
    v24 = sub_1E1BC0();
    v25 = *(v6 + 8);
    v34 = v24;
    v25(v9, v5);
    v48 = BYTE4(v34) & 1;
    v27 = v38;
    v26 = v39;
    *&v40 = v39;
    *(&v40 + 1) = v13;
    *&v41 = v38;
    *(&v41 + 1) = v17;
    v28 = v36;
    *&v42 = v36;
    *(&v42 + 1) = v20;
    *v43 = v35;
    *&v43[8] = v23;
    *&v43[16] = v34;
    v47 = BYTE4(v34) & 1;
    v43[20] = BYTE4(v34) & 1;
    v29 = *v43;
    v30 = v37;
    *(v37 + 32) = v42;
    *(v30 + 48) = v29;
    v31 = v41;
    *v30 = v40;
    *(v30 + 16) = v31;
    *(v30 + 61) = *&v43[13];
    sub_8CABC(&v40, v44);
    sub_4E48(a1);
    v44[0] = v26;
    v44[1] = v13;
    v44[2] = v27;
    v44[3] = v17;
    v44[4] = v28;
    v44[5] = v20;
    v44[6] = v35;
    v44[7] = v23;
    v45 = v34;
    v46 = v47;
    return sub_8CAF4(v44);
  }
}

uint64_t _s13BookAnalytics16ContentStoreDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 68);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 68);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = *(a1 + 56);
      v47 = *(a2 + 56);
      v44 = *(a1 + 48);
      v42 = *(a2 + 68);
      v43 = *(a2 + 64);
      v41 = *(a1 + 68);
      v21 = *(a1 + 64);
      v22 = *(a2 + 48);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a2 + 32);
      v26 = *(a2 + 40);
      v27 = *(a2 + 16);
      v28 = sub_1E1D30();
      v13 = v27;
      v17 = v26;
      v14 = v25;
      v7 = v24;
      v5 = v23;
      v16 = v22;
      v10 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v9 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v10;
      v29 = v16;
      v30 = v5;
      v31 = v7;
      v48 = v14;
      v32 = v17;
      v33 = sub_1E1D30();
      v17 = v32;
      v14 = v48;
      v7 = v31;
      v5 = v30;
      v16 = v29;
      v10 = v46;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5 != v14 || v7 != v17)
  {
    v34 = v10;
    v35 = v16;
    v36 = sub_1E1D30();
    v16 = v35;
    v10 = v34;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v9 != v18)
    {
      v37 = v10;
      v38 = sub_1E1D30();
      v10 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20)
    {
      return 1;
    }
  }

  else
  {
    if (v10 == v19)
    {
      v40 = v20;
    }

    else
    {
      v40 = 1;
    }

    if ((v40 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_8CA68()
{
  result = qword_282568;
  if (!qword_282568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282568);
  }

  return result;
}

__n128 sub_8CB2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_8CB50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t sub_8CB98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_8CC14()
{
  result = qword_282578;
  if (!qword_282578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282578);
  }

  return result;
}

unint64_t sub_8CC6C()
{
  result = qword_282580;
  if (!qword_282580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282580);
  }

  return result;
}

unint64_t sub_8CCC4()
{
  result = qword_282588;
  if (!qword_282588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282588);
  }

  return result;
}

uint64_t sub_8CD18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696F506563697270 && a2 == 0xEA0000000000746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4373676E69746172 && a2 == 0xEC000000746E756FLL)
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

BookAnalytics::RoomType_optional __swiftcall RoomType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2600B0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t RoomType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000010;
  v4 = 0x4C6465726564726FLL;
  if (v1 != 4)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6F527265707573;
  if (v1 != 1)
  {
    v5 = 0x6F52656C706D6973;
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

unint64_t sub_8D018()
{
  result = qword_282590;
  if (!qword_282590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282590);
  }

  return result;
}

uint64_t sub_8D074()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_8D198(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000000212A80;
  v6 = 0xD000000000000010;
  v7 = 0xEF6D6F6F52747369;
  v8 = 0x4C6465726564726FLL;
  if (v2 != 4)
  {
    v8 = 0x676E6970756F7267;
    v7 = 0xEC00000065676150;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE90000000000006DLL;
  v10 = 0x6F6F527265707573;
  if (v2 != 1)
  {
    v10 = 0x6F52656C706D6973;
    v9 = 0xEA00000000006D6FLL;
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

unint64_t sub_8D338()
{
  result = qword_282598;
  if (!qword_282598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282598);
  }

  return result;
}

BookAnalytics::SeriesUserStatus_optional __swiftcall SeriesUserStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260160;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t SeriesUserStatus.rawValue.getter()
{
  v1 = 7824750;
  v2 = 0x6572676F72506E69;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6574656C706D6F63;
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

unint64_t sub_8D474()
{
  result = qword_2825A0;
  if (!qword_2825A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825A0);
  }

  return result;
}

Swift::Int sub_8D4C8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_8D58C()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_8D63C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_8D708(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7824750;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574656C706D6F63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_8D848()
{
  result = qword_2825A8;
  if (!qword_2825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825A8);
  }

  return result;
}

unint64_t sub_8D89C()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_8D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x8000000000214720 == a2;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214740 == a2)
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

uint64_t sub_8D9B4(uint64_t a1)
{
  v2 = sub_8DDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8D9F0(uint64_t a1)
{
  v2 = sub_8DDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2825B0, &qword_1EFCB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8DDEC();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1C50();
  if (!v12)
  {
    v15 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReferralData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2825C0, &qword_1EFCC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8DDEC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v21 = 0;
    v11 = sub_1E1B80();
    v13 = v12;
    v19 = v11;
    v20 = 1;
    v15 = sub_1E1BE0();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;

    sub_4E48(a1);
  }
}

unint64_t sub_8DDEC()
{
  result = qword_2825B8;
  if (!qword_2825B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825B8);
  }

  return result;
}

unint64_t sub_8DE44()
{
  result = qword_2825C8;
  if (!qword_2825C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825C8);
  }

  return result;
}

unint64_t sub_8DE9C()
{
  result = qword_2825D0;
  if (!qword_2825D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825D0);
  }

  return result;
}

unint64_t sub_8DF14()
{
  result = qword_2825D8;
  if (!qword_2825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825D8);
  }

  return result;
}

unint64_t sub_8DF6C()
{
  result = qword_2825E0;
  if (!qword_2825E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825E0);
  }

  return result;
}

unint64_t sub_8DFC4()
{
  result = qword_2825E8;
  if (!qword_2825E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825E8);
  }

  return result;
}

uint64_t EventReporter.emitReadEvent(using:readingSessionData:contentData:readingSettingsData:upSellData:contentSettingsData:doNotDisturbData:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_8E044, 0, 0);
}

uint64_t sub_8E044()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v10 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v10;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_8E168;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8E168()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_8E280, 0, 0);
}

uint64_t sub_8E294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v53 = a7;
  v54 = a8;
  v51 = a5;
  v52 = a6;
  v55 = a2;
  v49 = a4;
  v50 = a9;
  v10 = sub_3D68(&qword_282650, &qword_1EFF18);
  v47 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v48 = &v42 - v13;
  v45 = sub_1E09E0();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v45);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))();
  v43 = v11;
  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v44 = (v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v17, v46, v45);
  v25 = v48;
  v26 = v49;
  v27 = v43;
  *(v24 + v44) = v49;
  v28 = v51;
  *(v24 + v18) = v51;
  v29 = v52;
  *(v24 + v19) = v52;
  v30 = v53;
  *(v24 + v20) = v53;
  v31 = v54;
  *(v24 + v21) = v54;
  v32 = v50;
  *(v24 + v22) = v50;
  (*(v27 + 32))(v24 + v23, v25, v47);
  v33 = *(v55 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_92964;
  *(v34 + 24) = v24;
  v35 = v31;
  v36 = v32;

  v37 = v26;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  sub_1E10C0();
}

uint64_t sub_8E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  type metadata accessor for ReadEvent(0);
  sub_92AA8(&qword_282658, type metadata accessor for ReadEvent);
  sub_1E0BF0();
  sub_A6684(v31);
  LODWORD(v25) = v31[0];
  BYTE4(v25) = BYTE4(v31[0]);
  DWORD2(v25) = DWORD2(v31[0]);
  WORD6(v25) = WORD6(v31[0]);
  BYTE14(v25) = BYTE14(v31[0]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = *(v8 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v11 = enum case for DataEventTrait.onlyOnce(_:);
  v24 = *(v8 + 104);
  v24(v10 + v9, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EC38();
  sub_1E0C00();

  sub_A3F08(&v25);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v24(v12 + v9, v11, v7);
  sub_4C164();
  sub_1E0C00();

  v31[2] = v27;
  v31[3] = v28;
  v31[4] = v29;
  v31[5] = v30;
  v31[0] = v25;
  v31[1] = v26;
  sub_14424(v31);
  sub_A6A60(&v25);
  v13 = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v24(v14 + v9, v11, v7);
  sub_92AF0();
  sub_1E0C00();

  if (a6)
  {
    v15 = a6;
    sub_A7638(&v25);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E9970;
    v24(v16 + v9, v11, v13);
    sub_92BEC();
    sub_1E0C00();
  }

  if (a7)
  {
    v17 = a7;
    sub_A43E4(&v25);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E9970;
    v24(v18 + v9, v11, v13);
    sub_92B98();
    sub_1E0C00();
  }

  sub_A47E0(&v25);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E9970;
  v24(v19 + v9, v11, v13);
  sub_92B44();
  sub_1E0C00();

  v25 = 0u;
  v26 = 0u;
  sub_1E0C10();
  sub_4C1B8(&v25);
  sub_3D68(&qword_282650, &qword_1EFF18);
  return sub_1E18E0();
}

uint64_t sub_8ED14(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v15 = sub_1E09E0();
  v7[9] = v15;
  v16 = *(v15 - 8);
  v7[10] = v16;
  v17 = *(v16 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = _Block_copy(v27);
  sub_1E09B0();
  v18 = a6;
  v19 = a7;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;

  return _swift_task_switch(sub_8EE64, 0, 0);
}

uint64_t sub_8EE64()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v10 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v10;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2;
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_8EF88;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_8EF88()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_8F0A0, 0, 0);
}

uint64_t sub_8F0A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v12 = *(v0 + 72);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  (*(v3 + 8))(v1, v12);
  v2[2](v2);
  _Block_release(v2);

  v10 = *(v0 + 8);

  return v10();
}

char *EventReporter.emitReadingAutoNightSettingChangeEvent(using:readingSessionData:contentData:isOn:)(char *a1, int *a2, _OWORD *a3, char a4)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v12 = *(a2 + 14);
  v13 = a3[3];
  v28[2] = a3[2];
  v28[3] = v13;
  v14 = a3[5];
  v28[4] = a3[4];
  v28[5] = v14;
  v15 = a3[1];
  v16 = a1;
  v28[0] = *a3;
  v28[1] = v15;
  if (a1 || (result = sub_BFB78(), (v16 = result) != 0))
  {
    v18 = swift_allocObject();
    v19 = a4;
    v20 = v18;
    *(v18 + 16) = v7;
    *(v18 + 20) = v8;
    *(v18 + 24) = v9;
    *(v18 + 28) = v10;
    *(v18 + 29) = v11;
    *(v18 + 30) = v12;
    v21 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v21;
    v22 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v22;
    v23 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v23;
    *(v18 + 128) = v19 & 1;
    v24 = *&v16[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_91644;
    *(v25 + 24) = v20;
    v26 = a1;
    sub_13A5C(v28, &v27);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_8F390(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v18[0] = a2;
  DWORD2(v18[0]) = a3;
  BYTE14(v18[0]) = BYTE6(a3);
  WORD6(v18[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v16 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v17 = *(v6 + 104);
  v17(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v10 = a4[3];
  v18[2] = a4[2];
  v18[3] = v10;
  v11 = a4[5];
  v18[4] = a4[4];
  v18[5] = v11;
  v12 = a4[1];
  v18[0] = *a4;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E9970;
  v17(v13 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v17(v14 + v7, v9, v5);
  sub_9264C();
  sub_1E0C00();

  type metadata accessor for ReadingAutoNightSettingChangeEvent(0);
  sub_92AA8(&qword_282648, type metadata accessor for ReadingAutoNightSettingChangeEvent);
  memset(v18, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v18);
}

char *EventReporter.emitReadingBackgroundColorChangeEvent(using:readingSessionData:contentData:backgroundColorData:)(char *a1, int *a2, _OWORD *a3, char *a4)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = a2[2];
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  v11 = *(a2 + 14);
  v12 = a3[3];
  v28[2] = a3[2];
  v28[3] = v12;
  v13 = a3[5];
  v28[4] = a3[4];
  v28[5] = v13;
  v14 = a3[1];
  v28[0] = *a3;
  v28[1] = v14;
  v15 = a1;
  v16 = *a4;
  if (a1 || (result = sub_BFB78(), (v15 = result) != 0))
  {
    v18 = swift_allocObject();
    v19 = v6;
    v20 = v18;
    *(v18 + 16) = v19;
    *(v18 + 20) = v7;
    *(v18 + 24) = v8;
    *(v18 + 28) = v9;
    *(v18 + 29) = v10;
    *(v18 + 30) = v11;
    v21 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v21;
    v22 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v22;
    v23 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v23;
    *(v18 + 128) = v16;
    v24 = *&v15[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_91814;
    *(v25 + 24) = v20;
    v26 = a1;
    sub_13A5C(v28, &v27);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_8F88C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v19[0] = a2;
  DWORD2(v19[0]) = a3;
  BYTE14(v19[0]) = BYTE6(a3);
  WORD6(v19[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v18 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v17 = enum case for DataEventTrait.onlyOnce(_:);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v19[2] = a4[2];
  v19[3] = v11;
  v12 = a4[5];
  v19[4] = a4[4];
  v19[5] = v12;
  v13 = a4[1];
  v19[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E9970;
  v10(v15 + v7, v17, v5);
  sub_925A0();
  sub_1E0C00();

  type metadata accessor for ReadingBackgroundColorChangeEvent(0);
  sub_92AA8(&qword_282638, type metadata accessor for ReadingBackgroundColorChangeEvent);
  memset(v19, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v19);
}

char *EventReporter.emitReadingBrightnessChangeEvent(using:readingSessionData:contentData:brightness:)(char *a1, void *a2, void *a3, int a4)
{
  v8 = a1;
  if (a1 || (result = sub_BFB78(), (v8 = result) != 0))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    *(v10 + 32) = a4;
    v11 = *&v8[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v12 = swift_allocObject();
    *(v12 + 16) = sub_91858;
    *(v12 + 24) = v10;
    v13 = a1;
    v14 = a2;
    v15 = a3;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_8FC84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_A6684(v22);
  LODWORD(v16) = v22[0];
  BYTE4(v16) = BYTE4(v22[0]);
  DWORD2(v16) = DWORD2(v22[0]);
  WORD6(v16) = WORD6(v22[0]);
  BYTE14(v16) = BYTE14(v22[0]);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v12 = sub_1E0CB0();
  v4 = *(v12 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = *(v4 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E9970;
  v7 = enum case for DataEventTrait.onlyOnce(_:);
  v8 = *(v4 + 104);
  v13 = enum case for DataEventTrait.onlyOnce(_:);
  v8(v6 + v5, enum case for DataEventTrait.onlyOnce(_:), v12);
  sub_7EC38();
  sub_1E0C00();

  sub_A3F08(&v16);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v8(v9 + v5, v7, v12);
  sub_4C164();
  sub_1E0C00();

  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  v22[0] = v16;
  v22[1] = v17;
  sub_14424(v22);
  LODWORD(v16) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v8(v10 + v5, v13, v12);
  sub_9254C();
  sub_1E0C00();

  type metadata accessor for ReadingBrightnessChangeEvent(0);
  sub_92AA8(&qword_282628, type metadata accessor for ReadingBrightnessChangeEvent);
  v16 = 0u;
  v17 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v16);
}

char *EventReporter.emitReadingFontChangeEvent(using:readingSessionData:contentData:fontName:)(char *a1, int *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = a2[2];
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  v29 = *(a2 + 14);
  v14 = a3[3];
  v31[2] = a3[2];
  v31[3] = v14;
  v15 = a3[5];
  v31[4] = a3[4];
  v31[5] = v15;
  v16 = a3[1];
  v17 = a1;
  v31[0] = *a3;
  v31[1] = v16;
  if (a1 || (result = sub_BFB78(), (v17 = result) != 0))
  {
    v19 = swift_allocObject();
    v20 = a4;
    v21 = a5;
    v22 = v19;
    *(v19 + 16) = v9;
    *(v19 + 20) = v10;
    *(v19 + 24) = v11;
    *(v19 + 28) = v12;
    *(v19 + 29) = v13;
    *(v19 + 30) = v29;
    v23 = a3[3];
    *(v19 + 64) = a3[2];
    *(v19 + 80) = v23;
    v24 = a3[5];
    *(v19 + 96) = a3[4];
    *(v19 + 112) = v24;
    v25 = a3[1];
    *(v19 + 32) = *a3;
    *(v19 + 48) = v25;
    *(v19 + 128) = v20;
    *(v19 + 136) = v21;
    v26 = *&v17[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_91A00;
    *(v27 + 24) = v22;
    v28 = a1;
    sub_13A5C(v31, v30);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_90318(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v19[0] = a2;
  DWORD2(v19[0]) = a3;
  BYTE14(v19[0]) = BYTE6(a3);
  WORD6(v19[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v18 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v17 = enum case for DataEventTrait.onlyOnce(_:);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v19[2] = a4[2];
  v19[3] = v11;
  v12 = a4[5];
  v19[4] = a4[4];
  v19[5] = v12;
  v13 = a4[1];
  v19[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E9970;
  v10(v15 + v7, v17, v5);
  sub_92448();

  sub_1E0C00();

  type metadata accessor for ReadingFontChangeEvent(0);
  sub_92AA8(&qword_282618, type metadata accessor for ReadingFontChangeEvent);
  memset(v19, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v19);
}

uint64_t EventReporter.emitReadingOrientationChangeEvent(using:readingSessionData:contentData:)(char *a1)
{
  sub_A6684(&v10);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  sub_A3F08(v3);
  _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(a1, &v4, v3);
  v16[2] = v3[2];
  v16[3] = v3[3];
  v16[4] = v3[4];
  v16[5] = v3[5];
  v16[0] = v3[0];
  v16[1] = v3[1];
  return sub_14424(v16);
}

uint64_t sub_907B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v17[0] = a2;
  DWORD2(v17[0]) = a3;
  BYTE14(v17[0]) = BYTE6(a3);
  WORD6(v17[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v16 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v17[2] = a4[2];
  v17[3] = v11;
  v12 = a4[5];
  v17[4] = a4[4];
  v17[5] = v12;
  v13 = a4[1];
  v17[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  type metadata accessor for ReadingOrientationChangeEvent(0);
  sub_92AA8(&qword_282608, type metadata accessor for ReadingOrientationChangeEvent);
  memset(v17, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v17);
}

char *EventReporter.emitReadingFontSizeChangeEvent(using:readingSessionData:contentData:fontSize:)(char *a1, int *a2, _OWORD *a3, float a4)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v12 = *(a2 + 14);
  v13 = a3[3];
  v26[2] = a3[2];
  v26[3] = v13;
  v14 = a3[5];
  v26[4] = a3[4];
  v26[5] = v14;
  v15 = a3[1];
  v16 = a1;
  v26[0] = *a3;
  v26[1] = v15;
  if (a1 || (result = sub_BFB78(), (v16 = result) != 0))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v7;
    *(v18 + 20) = v8;
    *(v18 + 24) = v9;
    *(v18 + 28) = v10;
    *(v18 + 29) = v11;
    *(v18 + 30) = v12;
    v19 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v19;
    v20 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v20;
    v21 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v21;
    *(v18 + 128) = a4;
    v22 = *&v16[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v23 = swift_allocObject();
    *(v23 + 16) = sub_91D70;
    *(v23 + 24) = v18;
    v24 = a1;
    sub_13A5C(v26, &v25);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_90C1C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v19[0] = a2;
  DWORD2(v19[0]) = a3;
  BYTE14(v19[0]) = BYTE6(a3);
  WORD6(v19[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v18 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v17 = enum case for DataEventTrait.onlyOnce(_:);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v19[2] = a4[2];
  v19[3] = v11;
  v12 = a4[5];
  v19[4] = a4[4];
  v19[5] = v12;
  v13 = a4[1];
  v19[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E9970;
  v10(v15 + v7, v17, v5);
  sub_92290();
  sub_1E0C00();

  type metadata accessor for ReadingFontSizeChangeEvent(0);
  sub_92AA8(&qword_282600, type metadata accessor for ReadingFontSizeChangeEvent);
  memset(v19, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v19);
}

char *EventReporter.emitReadingScrollViewSettingChangeEvent(using:readingSessionData:contentData:fontSize:isOn:)(char *a1, int *a2, _OWORD *a3, char a4, float a5)
{
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = a2[2];
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  v14 = *(a2 + 14);
  v15 = a3[3];
  v30[2] = a3[2];
  v30[3] = v15;
  v16 = a3[5];
  v30[4] = a3[4];
  v30[5] = v16;
  v17 = a3[1];
  v18 = a1;
  v30[0] = *a3;
  v30[1] = v17;
  if (a1 || (result = sub_BFB78(), (v18 = result) != 0))
  {
    v20 = swift_allocObject();
    v21 = a4;
    v22 = v20;
    *(v20 + 16) = v9;
    *(v20 + 20) = v10;
    *(v20 + 24) = v11;
    *(v20 + 28) = v12;
    *(v20 + 29) = v13;
    *(v20 + 30) = v14;
    v23 = a3[3];
    *(v20 + 64) = a3[2];
    *(v20 + 80) = v23;
    v24 = a3[5];
    *(v20 + 96) = a3[4];
    *(v20 + 112) = v24;
    v25 = a3[1];
    *(v20 + 32) = *a3;
    *(v20 + 48) = v25;
    *(v20 + 128) = a5;
    *(v20 + 132) = v21 & 1;
    v26 = *&v18[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_91F14;
    *(v27 + 24) = v22;
    v28 = a1;
    sub_13A5C(v30, &v29);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_91128(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v20[0] = a2;
  DWORD2(v20[0]) = a3;
  BYTE14(v20[0]) = BYTE6(a3);
  WORD6(v20[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v18 = *(*(v5 - 8) + 80);
  v19 = *(*(v5 - 8) + 72);
  v6 = *(v5 - 8);
  v7 = (v18 + 32) & ~v18;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v20[2] = a4[2];
  v20[3] = v11;
  v12 = a4[5];
  v20[4] = a4[4];
  v20[5] = v12;
  v13 = a4[1];
  v20[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E9970;
  v10(v15 + v7, v9, v5);
  sub_92290();
  sub_1E0C00();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E9970;
  v10(v16 + v7, v9, v5);
  sub_922E4();
  sub_1E0C00();

  type metadata accessor for ReadingFontSizeChangeEvent(0);
  sub_92AA8(&qword_282600, type metadata accessor for ReadingFontSizeChangeEvent);
  memset(v20, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v20);
}

uint64_t _s13BookAnalytics13EventReporterC033emitReadingAutoNightSettingChangeC05using18readingSessionData07contentN04isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0s7ContentN0CSbtF_0(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_A6684(&v24);
  v6 = v24;
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  sub_A3F08(v30);
  v12 = a1;
  if (!a1)
  {
    v12 = sub_BFB78();
    if (!v12)
    {
      return sub_14424(v30);
    }
  }

  v13 = swift_allocObject();
  v14 = a4;
  v15 = v13;
  *(v13 + 16) = v6;
  *(v13 + 20) = v7;
  *(v13 + 24) = v8;
  *(v13 + 28) = v9;
  *(v13 + 29) = v10;
  *(v13 + 30) = v11;
  v16 = v30[3];
  *(v13 + 64) = v30[2];
  *(v13 + 80) = v16;
  v17 = v30[5];
  *(v13 + 96) = v30[4];
  *(v13 + 112) = v17;
  v18 = v30[1];
  *(v13 + 32) = v30[0];
  *(v13 + 48) = v18;
  *(v13 + 128) = v14 & 1;
  v19 = *&v12[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_92CB0;
  *(v20 + 24) = v15;
  v21 = a1;
  sub_13A5C(v30, v23);

  sub_1E10C0();
  sub_14424(v30);
}

uint64_t _s13BookAnalytics13EventReporterC032emitReadingBackgroundColorChangeC05using18readingSessionData07contentM0010backgroundhM0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CAA0qghM0CtF_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_A6684(&v23);
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  sub_A3F08(v29);
  v12 = *(a4 + OBJC_IVAR___BABackgroundColorData_backgroundColor);
  if (v12 >= 5)
  {
    v22[0] = *(a4 + OBJC_IVAR___BABackgroundColorData_backgroundColor);
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v13 = a1;
    if (a1 || (v13 = sub_BFB78()) != 0)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v6;
      *(v14 + 20) = v7;
      *(v14 + 24) = v8;
      *(v14 + 28) = v9;
      *(v14 + 29) = v10;
      *(v14 + 30) = v11;
      v15 = v29[3];
      *(v14 + 64) = v29[2];
      *(v14 + 80) = v15;
      v16 = v29[5];
      *(v14 + 96) = v29[4];
      *(v14 + 112) = v16;
      v17 = v29[1];
      *(v14 + 32) = v29[0];
      *(v14 + 48) = v17;
      *(v14 + 128) = 0x4030201uLL >> (8 * v12);
      v18 = *&v13[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
      v19 = swift_allocObject();
      *(v19 + 16) = sub_92CAC;
      *(v19 + 24) = v14;
      v20 = a1;
      sub_13A5C(v29, v22);

      sub_1E10C0();
      sub_14424(v29);
    }

    else
    {
      return sub_14424(v29);
    }
  }

  return result;
}

uint64_t sub_91818()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t _s13BookAnalytics13EventReporterC021emitReadingFontChangeC05using18readingSessionData07contentL08fontNameyAA9BATrackerCSg_AA07BridgedfkL0CAA0q7ContentL0CSStF_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_A6684(&v26);
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  v12 = v31;
  sub_A3F08(v32);
  v13 = a1;
  if (!a1)
  {
    v13 = sub_BFB78();
    if (!v13)
    {
      return sub_14424(v32);
    }
  }

  v14 = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 20) = v8;
  *(v15 + 24) = v9;
  *(v15 + 28) = v10;
  *(v15 + 29) = v11;
  *(v15 + 30) = v12;
  v16 = v32[3];
  *(v15 + 64) = v32[2];
  *(v15 + 80) = v16;
  v17 = v32[5];
  *(v15 + 96) = v32[4];
  *(v15 + 112) = v17;
  v18 = v32[1];
  *(v15 + 32) = v32[0];
  *(v15 + 48) = v18;
  *(v15 + 128) = a4;
  *(v15 + 136) = v14;
  v19 = v13;
  v20 = *&v13[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_92CA8;
  *(v21 + 24) = v15;
  v22 = a1;
  sub_13A5C(v32, v25);

  sub_1E10C0();
  sub_14424(v32);
}

void _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(char *a1, int *a2, _OWORD *a3)
{
  v4 = a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  v10 = *(a2 + 14);
  v11 = a3[3];
  v27[2] = a3[2];
  v27[3] = v11;
  v12 = a3[5];
  v27[4] = a3[4];
  v27[5] = v12;
  v13 = a3[1];
  v27[0] = *a3;
  v27[1] = v13;
  if (a1 || (a1 = sub_BFB78()) != 0)
  {
    v25 = a1;
    v14 = objc_opt_self();
    v15 = v4;
    v16 = [v14 sharedConnection];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isDiagnosticSubmissionAllowed];

      if (v18)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v5;
        *(v19 + 20) = v6;
        *(v19 + 24) = v7;
        *(v19 + 28) = v8;
        *(v19 + 29) = v9;
        *(v19 + 30) = v10;
        v20 = a3[5];
        *(v19 + 96) = a3[4];
        *(v19 + 112) = v20;
        v21 = a3[3];
        *(v19 + 64) = a3[2];
        *(v19 + 80) = v21;
        v22 = a3[1];
        *(v19 + 32) = *a3;
        *(v19 + 48) = v22;
        v23 = *&v25[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
        v24 = swift_allocObject();
        *(v24 + 16) = sub_923F4;
        *(v24 + 24) = v19;
        sub_13A5C(v27, v26);

        sub_1E10C0();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s13BookAnalytics13EventReporterC025emitReadingFontSizeChangeC05using18readingSessionData07contentM004fontH0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CSftF_0(char *a1, float a2)
{
  sub_A6684(&v20);
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  sub_A3F08(v26);
  v10 = a1;
  if (!a1)
  {
    v10 = sub_BFB78();
    if (!v10)
    {
      return sub_14424(v26);
    }
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 20) = v5;
  *(v11 + 24) = v6;
  *(v11 + 28) = v7;
  *(v11 + 29) = v8;
  *(v11 + 30) = v9;
  v12 = v26[3];
  *(v11 + 64) = v26[2];
  *(v11 + 80) = v12;
  v13 = v26[5];
  *(v11 + 96) = v26[4];
  *(v11 + 112) = v13;
  v14 = v26[1];
  *(v11 + 32) = v26[0];
  *(v11 + 48) = v14;
  *(v11 + 128) = a2;
  v15 = *&v10[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v16 = swift_allocObject();
  *(v16 + 16) = sub_92CA4;
  *(v16 + 24) = v11;
  v17 = a1;
  sub_13A5C(v26, v19);

  sub_1E10C0();
  sub_14424(v26);
}

uint64_t _s13BookAnalytics13EventReporterC034emitReadingScrollViewSettingChangeC05using18readingSessionData07contentN08fontSize4isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0u7ContentN0CSfSbtF_0(char *a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_A6684(&v26);
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  sub_A3F08(v32);
  v14 = a1;
  if (!a1)
  {
    v14 = sub_BFB78();
    if (!v14)
    {
      return sub_14424(v32);
    }
  }

  v15 = swift_allocObject();
  v16 = a5;
  v17 = v15;
  *(v15 + 16) = v8;
  *(v15 + 20) = v9;
  *(v15 + 24) = v10;
  *(v15 + 28) = v11;
  *(v15 + 29) = v12;
  *(v15 + 30) = v13;
  v18 = v32[3];
  *(v15 + 64) = v32[2];
  *(v15 + 80) = v18;
  v19 = v32[5];
  *(v15 + 96) = v32[4];
  *(v15 + 112) = v19;
  v20 = v32[1];
  *(v15 + 32) = v32[0];
  *(v15 + 48) = v20;
  *(v15 + 128) = a2;
  *(v15 + 132) = v16 & 1;
  v21 = *&v14[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_92CA0;
  *(v22 + 24) = v17;
  v23 = a1;
  sub_13A5C(v32, v25);

  sub_1E10C0();
  sub_14424(v32);
}

uint64_t sub_91F18()
{
  _Block_release(*(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_91F98()
{
  v11 = v0[3];
  v12 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_7E674;

  JUMPOUT(0x8ED14);
}

uint64_t sub_92090()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_92C90;

  return sub_D0674(v2, v3, v5);
}

uint64_t sub_92150()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_92190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_92C90;

  return sub_D0760(a1, v4, v5, v7);
}

unint64_t sub_92290()
{
  result = qword_2825F0;
  if (!qword_2825F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825F0);
  }

  return result;
}

unint64_t sub_922E4()
{
  result = qword_2825F8;
  if (!qword_2825F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2825F8);
  }

  return result;
}

uint64_t sub_92338(uint64_t a1)
{
  v6 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  v3 = *(v1 + 128);
  v4 = *(v1 + 132);
  return sub_91128(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

uint64_t sub_92394(uint64_t a1)
{
  v5 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  v3 = *(v1 + 128);
  return sub_90C1C(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

uint64_t sub_923F4(uint64_t a1)
{
  v4 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_907B0(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_92448()
{
  result = qword_282610;
  if (!qword_282610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282610);
  }

  return result;
}

uint64_t sub_9249C()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[15];

  v5 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_924F4(uint64_t a1)
{
  v6 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  return sub_90318(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_9254C()
{
  result = qword_282620;
  if (!qword_282620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282620);
  }

  return result;
}

unint64_t sub_925A0()
{
  result = qword_282630;
  if (!qword_282630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282630);
  }

  return result;
}

uint64_t sub_925F4(uint64_t a1)
{
  v5 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  v3 = *(v1 + 128);
  return sub_8F88C(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_9264C()
{
  result = qword_282640;
  if (!qword_282640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282640);
  }

  return result;
}

uint64_t sub_926A0(uint64_t a1)
{
  v3 = v1[5];

  v4 = v1[8];

  v5 = v1[10];

  v6 = v1[15];

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_926FC(uint64_t a1)
{
  v5 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  v3 = *(v1 + 128);
  return sub_8F390(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

uint64_t sub_92754()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9278C()
{
  v15 = sub_1E09E0();
  v1 = *(v15 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_3D68(&qword_282650, &qword_1EFF18);
  v8 = *(v16 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v2 | v9;
  (*(v1 + 8))(v0 + v3, v15);

  (*(v8 + 8))(v0 + v10, v16);

  return _swift_deallocObject(v0, v10 + v13, v11 | 7);
}

uint64_t sub_92964(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_3D68(&qword_282650, &qword_1EFF18) - 8);
  v12 = *(v1 + v10);
  v14 = v1 + ((*(v11 + 80) + v10 + 8) & ~*(v11 + 80));
  return sub_8E59C(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9));
}

uint64_t sub_92AA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_92AF0()
{
  result = qword_282660;
  if (!qword_282660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282660);
  }

  return result;
}

unint64_t sub_92B44()
{
  result = qword_282668;
  if (!qword_282668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282668);
  }

  return result;
}

unint64_t sub_92B98()
{
  result = qword_282670;
  if (!qword_282670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282670);
  }

  return result;
}

unint64_t sub_92BEC()
{
  result = qword_282678;
  if (!qword_282678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282678);
  }

  return result;
}

uint64_t PreorderFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t PreorderFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderFailEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderFailEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for PreorderFailEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_934A4(uint64_t a1)
{
  v2 = sub_9399C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_934E0(uint64_t a1)
{
  v2 = sub_9399C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2826B0, &qword_1EFF20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9399C();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v64 = *(v2 + 32);
  v65 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v66 = *(v2 + 64);
  v67 = v13;
  v14 = *(v2 + 16);
  v63[0] = *v2;
  v63[1] = v14;
  v59 = v64;
  v60 = v12;
  v15 = *(v2 + 80);
  v61 = v66;
  v62 = v15;
  v57 = v63[0];
  v58 = v11;
  v56 = 0;
  sub_13A5C(v63, &v40);
  sub_143D0();
  v16 = v68;
  sub_1E1CF0();
  if (v16)
  {
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v40 = v57;
    v41 = v58;
    sub_14424(&v40);
  }

  else
  {
    v52[2] = v59;
    v52[3] = v60;
    v52[4] = v61;
    v52[5] = v62;
    v52[0] = v57;
    v52[1] = v58;
    sub_14424(v52);
    v18 = *(v2 + 112);
    v19 = *(v2 + 144);
    v54 = *(v2 + 128);
    *v55 = v19;
    v20 = *(v2 + 112);
    v53[0] = *(v2 + 96);
    v53[1] = v20;
    v49 = v18;
    v50 = v54;
    v51[0] = *(v2 + 144);
    *&v55[13] = *(v2 + 157);
    *(v51 + 13) = *(v2 + 157);
    v48 = v53[0];
    v47 = 1;
    sub_17AA4(v53, &v40, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v38[2] = v50;
    v39[0] = v51[0];
    *(v39 + 13) = *(v51 + 13);
    v38[0] = v48;
    v38[1] = v49;
    sub_18E48(v38, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    v44 = *(v2 + 232);
    v45 = v22;
    v46 = *(v2 + 264);
    v23 = *(v2 + 184);
    v40 = *(v2 + 168);
    v41 = v23;
    v42 = *(v2 + 200);
    v43 = v21;
    v24 = *(v2 + 216);
    v25 = *(v2 + 248);
    v35 = *(v2 + 232);
    v36 = v25;
    v37 = *(v2 + 264);
    v26 = *(v2 + 184);
    v31 = *(v2 + 168);
    v32 = v26;
    v33 = *(v2 + 200);
    v34 = v24;
    v30 = 2;
    sub_17AA4(&v40, v29, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_18E48(v29, &qword_27E490, &qword_205F90);
    v27 = *(type metadata accessor for PreorderFailEvent.Model(0) + 28);
    v28[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_9399C()
{
  result = qword_2826B8;
  if (!qword_2826B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2826B8);
  }

  return result;
}

uint64_t PreorderFailEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_1E1150();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_2826C0, &qword_1EFF28);
  v31 = *(v33 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v33);
  v7 = type metadata accessor for PreorderFailEvent.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v56 = a1;
  sub_48B8(a1, v12);
  sub_9399C();
  v13 = v34;
  sub_1E1DF0();
  if (v13)
  {
    return sub_4E48(v56);
  }

  v28 = v7;
  v14 = v10;
  v34 = v5;
  v15 = v31;
  v16 = v32;
  v49 = 0;
  sub_14CB8();
  sub_1E1C20();
  v17 = v53;
  v18 = v14;
  *(v14 + 2) = v52;
  *(v14 + 3) = v17;
  v19 = v55;
  *(v14 + 4) = v54;
  *(v14 + 5) = v19;
  v20 = v51;
  *v14 = v50;
  *(v14 + 1) = v20;
  v48 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v21 = v45;
  v22 = v47[0];
  *(v14 + 8) = v46;
  *(v14 + 9) = v22;
  *(v14 + 157) = *(v47 + 13);
  *(v14 + 6) = v44;
  *(v14 + 7) = v21;
  v36 = 2;
  sub_18EFC();
  sub_1E1BB0();
  v23 = v39;
  *(v14 + 216) = v40;
  v24 = v42;
  *(v14 + 232) = v41;
  *(v14 + 248) = v24;
  v25 = v38;
  *(v14 + 168) = v37;
  *(v14 + 184) = v25;
  *(v14 + 200) = v23;
  *(v14 + 264) = v43;
  v35 = 3;
  sub_14E5C(&qword_27D830);
  v26 = v34;
  sub_1E1C20();
  (*(v15 + 8))(0, v33);
  (*(v29 + 32))(v18 + *(v28 + 28), v26, v16);
  sub_93EDC(v18, v30);
  sub_4E48(v56);
  return sub_93F40(v18);
}

uint64_t sub_93EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_93F40(uint64_t a1)
{
  v2 = type metadata accessor for PreorderFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_94050(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

uint64_t sub_9421C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
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

uint64_t sub_943F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_944B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_9456C()
{
  result = qword_2827F8;
  if (!qword_2827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2827F8);
  }

  return result;
}

unint64_t sub_945C4()
{
  result = qword_282800;
  if (!qword_282800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282800);
  }

  return result;
}

unint64_t sub_9461C()
{
  result = qword_282808;
  if (!qword_282808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282808);
  }

  return result;
}

BookAnalytics::ActionType_optional __swiftcall ActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2601E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6165527472617473;
  if (v1 != 5)
  {
    v3 = 0x73694C7472617473;
  }

  v4 = 0x7473694C746E6177;
  if (v1 != 3)
  {
    v4 = 0x74536E4977656976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x546567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6F74747542797562;
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

unint64_t sub_947E8()
{
  result = qword_282810;
  if (!qword_282810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282810);
  }

  return result;
}

uint64_t sub_94848()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_9499C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC000000676E6964;
  v6 = 0x6165527472617473;
  if (v2 != 5)
  {
    v6 = 0x73694C7472617473;
    v5 = 0xEE00676E696E6574;
  }

  v7 = 0xEB00000000646441;
  v8 = 0x7473694C746E6177;
  if (v2 != 3)
  {
    v8 = 0x74536E4977656976;
    v7 = 0xEB0000000065726FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007061;
  v10 = 0x546567617373656DLL;
  if (v2 != 1)
  {
    v10 = 0x6F74747542797562;
    v9 = 0xEC0000007061546ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_94B6C()
{
  result = qword_282818;
  if (!qword_282818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282818);
  }

  return result;
}

uint64_t EventReporter.emitAllInSeriesViewEvent(using:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_94EC4;
  *(v10 + 24) = v8;

  sub_1E10C0();
}

uint64_t sub_94C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v12 = a3;
    *(&v12 + 1) = a4;
    LODWORD(v13) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();

    type metadata accessor for AllInSeriesViewEvent(0);
    sub_98AE0(&unk_282930, type metadata accessor for AllInSeriesViewEvent);
    v12 = 0u;
    v13 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_94E8C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t EventReporter.emitBrowseCollectionScreenViewEvent(using:for:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1E09E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v11 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_980C0;
  *(v12 + 24) = v10;
  v13 = a3;

  sub_1E10C0();
}

uint64_t sub_95154()
{
  type metadata accessor for BrowseCollectionScreenViewEvent(0);
  sub_98AE0(&unk_282920, type metadata accessor for BrowseCollectionScreenViewEvent);
  sub_1E0BF0();
  sub_A38CC(v6);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v0 = sub_1E0CB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E9970;
  (*(v1 + 104))(v4 + v3, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_7EB90();
  sub_1E0C00();

  memset(v6, 0, sizeof(v6));
  sub_1E0C10();
  return sub_4C1B8(v6);
}

uint64_t EventReporter.emitCollectionScreenViewEvent(using:from:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E09E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v11 + 32))(&v14[v13], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_980C4;
  *(v16 + 24) = v14;

  sub_1E10C0();
}

uint64_t sub_956E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result <= 0x7FFFFFFF)
    {
      type metadata accessor for CollectionScreenViewEvent(0);
      sub_98AE0(&unk_282910, type metadata accessor for CollectionScreenViewEvent);

      sub_1E0BF0();
      *&v13 = a3;
      *(&v13 + 1) = a4;
      LODWORD(v14) = v7;
      sub_3D68(&qword_2828D0, &unk_1FD120);
      v8 = sub_1E0CB0();
      v9 = *(v8 - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E9970;
      (*(v9 + 104))(v12 + v11, enum case for DataEventTrait.onlyOnce(_:), v8);
      sub_4C574();
      sub_1E0C00();

      v13 = 0u;
      v14 = 0u;
      sub_1E0C10();
      return sub_4C1B8(&v13);
    }
  }

  __break(1u);
  return result;
}

char *EventReporter.emitContextualActionSheetExposureEvent(using:from:with:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = a1;
  if (a1 || (result = sub_BFB78(), (v10 = result) != 0))
  {
    (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = v3;
    *(v13 + 3) = a3;
    *(v13 + 4) = v10;
    (*(v8 + 32))(&v13[v12], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = *&v10[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v15 = swift_allocObject();
    *(v15 + 16) = sub_980E0;
    *(v15 + 24) = v13;
    v16 = a1;
    v17 = v3;
    swift_unknownObjectRetain();

    v18 = v10;
    sub_1E10C0();
  }

  return result;
}

uint64_t sub_95CCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_BF2E4(a3, a4, v32);
  type metadata accessor for ContextualActionSheetExposureEvent(0);
  sub_98AE0(&qword_282900, type metadata accessor for ContextualActionSheetExposureEvent);
  sub_1E0BF0();
  v5 = [a3 assetID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E1780();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  v29[2] = 0;
  v29[3] = 0;
  *&v30 = v7;
  *(&v30 + 1) = v9;
  v31[0] = 2;
  memset(&v31[8], 0, 96);
  v21 = v32[2];
  v22 = v32[3];
  v23 = v32[4];
  v24 = v32[5];
  v19 = v32[0];
  v20 = v32[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v10 = sub_1E0CB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v15 = enum case for DataEventTrait.onlyOnce(_:);
  v16 = *(v11 + 104);
  v16(v14 + v13, enum case for DataEventTrait.onlyOnce(_:), v10);
  sub_4C164();
  sub_1E0C00();

  sub_14424(v32);
  v25 = *&v31[48];
  v26 = *&v31[64];
  v27 = *&v31[80];
  v28 = *&v31[96];
  v21 = v30;
  v22 = *v31;
  v23 = *&v31[16];
  v24 = *&v31[32];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E9970;
  v16(v17 + v13, v15, v10);
  sub_98A8C();
  sub_1E0C00();

  sub_283A8(v29);
  v19 = 0u;
  v20 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v19);
}

uint64_t EventReporter.emitLibraryViewEvent(using:from:with:displayedIn:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E09E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = a5;
  (*(v11 + 32))(&v14[v13], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_98144;
  *(v16 + 24) = v14;

  sub_1E10C0();
}

uint64_t sub_9633C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v7 = &_swiftEmptyArrayStorage;
  v30 = a4;
  if (v6)
  {
    *&v37[0] = &_swiftEmptyArrayStorage;
    sub_A7F40(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
LABEL_24:
      v38 = a4;

      while (1)
      {
LABEL_25:
        sub_1E1D50();
        __break(1u);
LABEL_26:
        *&v37[0] = a3;
      }
    }

    v8 = 0;
    v7 = *&v37[0];
    v32 = v6 - 1;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = sub_1E1AE0();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID + 8];
      v12 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentUserID + 8];
      a4 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentType];
      if (a4 >= 7)
      {
        goto LABEL_24;
      }

      v34 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
      v35 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
      v13 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentID + 8];
      v36 = *&v9[OBJC_IVAR___BALibraryItemTypeData_contentID];
      v14 = *&v9[OBJC_IVAR___BALibraryItemTypeData_isSample];

      v15 = [v14 BOOLValue];

      *&v37[0] = v7;
      v17 = v7[2];
      v16 = v7[3];
      v18 = v7;
      if (v17 >= v16 >> 1)
      {
        sub_A7F40((v16 > 1), v17 + 1, 1);
        v18 = *&v37[0];
      }

      v18[2] = v17 + 1;
      v19 = &v18[8 * v17];
      v19[4] = v34;
      v19[5] = v11;
      v19[6] = v35;
      v19[7] = v12;
      *(v19 + 64) = a4;
      v20 = *(&v38 + 3);
      *(v19 + 65) = v38;
      *(v19 + 17) = v20;
      v19[9] = v36;
      v19[10] = v13;
      *(v19 + 88) = v15;
      v7 = v18;
      if (v32 == v8)
      {
        break;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v6 = sub_1E1B20();
        goto LABEL_3;
      }
    }

    a4 = v30;
  }

  if (a3 >= 3)
  {
    goto LABEL_26;
  }

  if (a4 >= 5)
  {
    *&v37[0] = v30;
    goto LABEL_25;
  }

  type metadata accessor for LibraryViewEvent(0);
  sub_98AE0(&unk_2828D8, type metadata accessor for LibraryViewEvent);
  sub_1E0BF0();
  *&v37[0] = v7;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v33 = sub_1E0CB0();
  v21 = *(v33 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E9970;
  v25 = enum case for DataEventTrait.onlyOnce(_:);
  v26 = *(v21 + 104);
  v26(v24 + v23, enum case for DataEventTrait.onlyOnce(_:), v33);
  sub_7EB3C();
  sub_1E0C00();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E9970;
  v26(v27 + v23, v25, v33);
  sub_989E4();
  sub_1E0C00();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E9970;
  v26(v28 + v23, v25, v33);
  sub_98A38();
  sub_1E0C00();

  memset(v37, 0, sizeof(v37));
  sub_1E0C10();
  return sub_4C1B8(v37);
}

uint64_t EventReporter.emitShareSheetExposureEvent(using:from:with:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v3;
  *(v11 + 3) = a3;
  *(v11 + 4) = a1;
  (*(v8 + 32))(&v11[v10], &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = *&a1[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_9815C;
  *(v13 + 24) = v11;
  v14 = v3;
  swift_unknownObjectRetain();
  v15 = a1;

  sub_1E10C0();
}

uint64_t sub_96C4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_BF2E4(a3, a4, v16);
  type metadata accessor for ShareSheetExposureEvent(0);
  sub_98AE0(&qword_2828C8, type metadata accessor for ShareSheetExposureEvent);
  sub_1E0BF0();
  v12 = v16[2];
  v13 = v16[3];
  v14 = v16[4];
  v15 = v16[5];
  v10 = v16[0];
  v11 = v16[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v4 = sub_1E0CB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  (*(v5 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_4C164();
  sub_1E0C00();

  sub_14424(v16);
  v10 = 0u;
  v11 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v10);
}

uint64_t sub_970AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v13 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = v12;

  sub_1E10C0();
}

uint64_t sub_97220(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_98AE0(a4, a5);
  sub_1E0BF0();
  memset(v8, 0, sizeof(v8));
  sub_1E0C10();
  return sub_4C1B8(v8);
}

void sub_9730C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a7;
  v21[1] = a8;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v21 - v14;
  sub_1E09B0();
  (*(v10 + 16))(v13, v15, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  v18 = *&a3[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v19 = swift_allocObject();
  *(v19 + 16) = v21[0];
  *(v19 + 24) = v17;
  v20 = a3;

  sub_1E10C0();

  (*(v10 + 8))(v15, v9);
}

uint64_t EventReporter.emitUnifiedMessageExposureEvent(using:from:messageType:messageIdentifier:hasActionable:actionIdentifier:placementName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a8;
  v26 = a1;
  v24 = a6;
  v23 = a4;
  v13 = sub_1E09E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  (*(v14 + 16))(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v16 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = a3;
  *(v17 + 24) = v18;
  *(v17 + 32) = a5;
  *(v17 + 40) = v24;
  v19 = v25;
  *(v17 + 48) = a7;
  *(v17 + 56) = v19;
  *(v17 + 64) = a9;
  (*(v14 + 32))(v17 + v16, &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20 = *(v26 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_981C0;
  *(v21 + 24) = v17;

  sub_1E10C0();
}

uint64_t sub_976BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    type metadata accessor for UnifiedMessageExposureEvent(0);
    sub_98AE0(&qword_2828B0, type metadata accessor for UnifiedMessageExposureEvent);

    sub_1E0BF0();
    v13 = a6;
    v14 = a7;
    v15 = a8;
    sub_98990();
    sub_1E0C00();

    memset(v12, 0, sizeof(v12));
    sub_1E0C10();
    return sub_4C1B8(v12);
  }

  return result;
}

uint64_t EventReporter.emitRemoveSuggestionCardEvent(using:suggestionType:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(char *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, char *a8, char *a9)
{
  v24 = *a2;
  v14 = *a5;
  v15 = *a6;
  v16 = *a8;
  v17 = *a9;
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = v15;
  *(v18 + 41) = v14;
  *(v18 + 48) = a1;
  *(v18 + 56) = a7;
  *(v18 + 60) = BYTE4(a7) & 1;
  *(v18 + 61) = v16;
  *(v18 + 62) = v17;
  *(v18 + 63) = v24;
  v19 = *&a1[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_9820C;
  *(v20 + 24) = v18;
  v21 = v9;

  v22 = a1;

  sub_1E10C0();
}

uint64_t sub_97C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v52 = a7;
  v53 = a4;
  v17 = sub_1E1640();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v21 = sub_1E19E0();
  (*(v18 + 104))(v21, enum case for DispatchPredicate.notOnQueue(_:), v17);
  v22 = sub_1E1660();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v47 = a5;
    v48 = a6;
    v50 = a8;
    v51 = a1;
    v49 = a11;
    v46 = a10;
    v45 = a9;
    v24 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v25 = v60;
    result = v60 + 32;
    v26 = -*(v60 + 16);
    v27 = -1;
    while (1)
    {
      v28 = v26 + v27;
      if (v26 + v27 == -1)
      {
        break;
      }

      if (++v27 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v29 = result + 40;
      sub_4C2BC(result, &v60);
      v30 = *(&v61 + 1);
      v31 = v62;
      sub_48B8(&v60, *(&v61 + 1));
      v32 = (*(v31 + 8))(a2, a3, v53, v30, v31);
      sub_4E48(&v60);
      result = v29;
      if (v32)
      {

        v33 = [v32 intValue];

        goto LABEL_8;
      }
    }

    v33 = 0;
LABEL_8:
    v34 = a3;
    v35._countAndFlagsBits = a3;
    v36 = v53;
    v35._object = v53;
    v37 = BATracker.contentPrivateID(for:)(v35);
    if (v37.value._object)
    {
      countAndFlagsBits = v37.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v37.value._object)
    {
      object = v37.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v40._countAndFlagsBits = v34;
    v40._object = v36;
    v41 = BATracker.contentUserID(for:)(v40);
    v66 = BYTE4(v50) & 1;
    v69 = v28 == -1;
    if (v41.value._object)
    {
      v42 = v41.value._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    if (v41.value._object)
    {
      v43 = v41.value._object;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    *&v60 = v34;
    *(&v60 + 1) = v36;
    LOBYTE(v61) = v47;
    *(&v61 + 1) = *v70;
    DWORD1(v61) = *&v70[3];
    *(&v61 + 1) = countAndFlagsBits;
    *&v62 = object;
    *(&v62 + 1) = v42;
    *&v63 = v43;
    BYTE8(v63) = v48;
    BYTE9(v63) = 4;
    HIDWORD(v63) = v33;
    LOBYTE(v64) = v28 == -1;
    BYTE3(v64) = v68;
    *(&v64 + 1) = v67;
    DWORD1(v64) = v50;
    BYTE8(v64) = v66;
    BYTE9(v64) = v45;
    BYTE10(v64) = v46;
    *(&v64 + 11) = 515;
    BYTE13(v64) = 2;
    v65 = 0uLL;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = 0uLL;
    v54 = v60;
    v55 = v61;
    sub_4C164();

    sub_1E0C00();
    sub_14424(&v60);
    LOBYTE(v54) = v49;
    sub_9893C();
    sub_1E0C00();
    type metadata accessor for RemoveSuggestionCardEvent(0);
    sub_98AE0(&unk_2828A0, type metadata accessor for RemoveSuggestionCardEvent);
    v54 = 0u;
    v55 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v54);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_981C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_98264()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98338(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v5 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  return sub_976BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_983BC()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98490()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98558()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98674()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_986B0()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_98774(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_1E09E0() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_98804()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_988A0()
{
  v1 = *(sub_1E09E0() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_95154();
}

unint64_t sub_9893C()
{
  result = qword_282898;
  if (!qword_282898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282898);
  }

  return result;
}

unint64_t sub_98990()
{
  result = qword_2828B8;
  if (!qword_2828B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2828B8);
  }

  return result;
}

unint64_t sub_989E4()
{
  result = qword_2828E8;
  if (!qword_2828E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2828E8);
  }

  return result;
}

unint64_t sub_98A38()
{
  result = qword_2828F0;
  if (!qword_2828F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2828F0);
  }

  return result;
}

unint64_t sub_98A8C()
{
  result = qword_282908;
  if (!qword_282908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282908);
  }

  return result;
}

uint64_t sub_98AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GoalAdjustViewEvent.goalAdjustTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GoalAdjustViewEvent.goalAdjustTypeData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GoalAdjustViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalAdjustViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalAdjustViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_282970, &unk_1F0260);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GoalAdjustViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t GoalAdjustViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalAdjustViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalAdjustViewEvent.Model.init(goalAdjustTypeData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for GoalAdjustViewEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_990D4()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_99118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214AB0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_99208(uint64_t a1)
{
  v2 = sub_9943C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_99244(uint64_t a1)
{
  v2 = sub_9943C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalAdjustViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282978, &qword_1F0270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9943C();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_99490();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for GoalAdjustViewEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_9943C()
{
  result = qword_282980;
  if (!qword_282980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282980);
  }

  return result;
}

unint64_t sub_99490()
{
  result = qword_282988;
  if (!qword_282988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282988);
  }

  return result;
}

uint64_t GoalAdjustViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_282990, &qword_1F0278);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GoalAdjustViewEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9943C();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_997E0();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_99834(v19, v25);
  }

  return sub_4E48(a1);
}

unint64_t sub_997E0()
{
  result = qword_282998;
  if (!qword_282998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282998);
  }

  return result;
}

uint64_t sub_99834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalAdjustViewEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_99938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_282970, &unk_1F0260);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_99A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_282970, &unk_1F0260);
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

uint64_t sub_99B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_282970, &unk_1F0260);
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

void sub_99C54()
{
  sub_99CD8();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_99CD8()
{
  if (!qword_282A08)
  {
    sub_997E0();
    sub_99490();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_282A08);
    }
  }
}

uint64_t sub_99D54(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_99E0C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_99EAC()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_99F3C()
{
  result = qword_282AC8;
  if (!qword_282AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282AC8);
  }

  return result;
}

unint64_t sub_99F94()
{
  result = qword_282AD0;
  if (!qword_282AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282AD0);
  }

  return result;
}

unint64_t sub_99FEC()
{
  result = qword_282AD8;
  if (!qword_282AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282AD8);
  }

  return result;
}

uint64_t AudioSnoozeEvent.audioSnoozeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 20);
  v4 = sub_3D68(&qword_282B10, &unk_1F0488);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.audioSnoozeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 20);
  v4 = sub_3D68(&qword_282B10, &unk_1F0488);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSnoozeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSnoozeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioSnoozeEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_282B10, &unk_1F0488);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t AudioSnoozeEvent.Model.audioSnoozeData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  *a1 = v1[12];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AudioSnoozeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSnoozeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSnoozeEvent.Model.init(contentData:audioSnoozeData:eventData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  v10 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v10;
  v11 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v11;
  *(a4 + 96) = v6;
  *(a4 + 112) = v7;
  *(a4 + 120) = v8;
  v12 = *(type metadata accessor for AudioSnoozeEvent.Model(0) + 24);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_9A684()
{
  v1 = 0x6F6E536F69647561;
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

uint64_t sub_9A6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9B9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9A720(uint64_t a1)
{
  v2 = sub_9AA54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9A75C(uint64_t a1)
{
  v2 = sub_9AA54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioSnoozeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_282B18, &qword_1F0498);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9AA54();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v41 = *(v2 + 32);
  v42 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v43 = *(v2 + 64);
  v44 = v13;
  v14 = *(v2 + 16);
  v40[0] = *v2;
  v40[1] = v14;
  v36 = v41;
  v37 = v12;
  v15 = *(v2 + 80);
  v38 = v43;
  v39 = v15;
  v34 = v40[0];
  v35 = v11;
  v33 = 0;
  sub_13A5C(v40, &v27);
  sub_143D0();
  v16 = v45;
  sub_1E1CF0();
  if (v16)
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v27 = v34;
    v28 = v35;
    sub_14424(&v27);
  }

  else
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v27 = v34;
    v28 = v35;
    sub_14424(&v27);
    v17 = *(v2 + 104);
    v18 = *(v2 + 112);
    v19 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v22[15] = 1;
    sub_9AAA8();

    sub_1E1CF0();

    v20 = *(type metadata accessor for AudioSnoozeEvent.Model(0) + 24);
    LOBYTE(v23) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_9AA54()
{
  result = qword_282B20;
  if (!qword_282B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282B20);
  }

  return result;
}

unint64_t sub_9AAA8()
{
  result = qword_282B28;
  if (!qword_282B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282B28);
  }

  return result;
}

uint64_t AudioSnoozeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_3D68(&qword_282B30, &qword_1F04A0);
  v28 = *(v29 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v29);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AudioSnoozeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_48B8(a1, v15);
  sub_9AA54();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v17 = v28;
  v25 = v7;
  v41 = 0;
  sub_14CB8();
  v18 = v29;
  sub_1E1C20();
  v19 = v37;
  *(v14 + 2) = v36;
  *(v14 + 3) = v19;
  v20 = v39;
  *(v14 + 4) = v38;
  *(v14 + 5) = v20;
  v21 = v35;
  *v14 = v34;
  *(v14 + 1) = v21;
  v40 = 1;
  sub_9AF38();
  sub_1E1C20();
  v22 = v32;
  v23 = v33;
  *(v14 + 6) = v31;
  *(v14 + 14) = v22;
  *(v14 + 15) = v23;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v18);
  (*(v26 + 32))(&v14[*(v11 + 24)], v25, v4);
  sub_9AF8C(v14, v27);
  sub_4E48(v30);
  return sub_9AFF0(v14);
}

unint64_t sub_9AF38()
{
  result = qword_282B38;
  if (!qword_282B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282B38);
  }

  return result;
}

uint64_t sub_9AF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSnoozeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9AFF0(uint64_t a1)
{
  v2 = type metadata accessor for AudioSnoozeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9B0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_282B10, &unk_1F0488);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_9B224(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_282B10, &unk_1F0488);
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

uint64_t sub_9B39C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_282B10, &unk_1F0488);
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

void sub_9B50C()
{
  sub_9B618(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_9B618(319, &unk_282BA8, sub_9AF38, sub_9AAA8);
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

void sub_9B618(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_9B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_9B768(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_9B80C()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_9B8A4()
{
  result = qword_282C78;
  if (!qword_282C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282C78);
  }

  return result;
}

unint64_t sub_9B8FC()
{
  result = qword_282C80;
  if (!qword_282C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282C80);
  }

  return result;
}

unint64_t sub_9B954()
{
  result = qword_282C88;
  if (!qword_282C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282C88);
  }

  return result;
}

uint64_t sub_9B9A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6E536F69647561 && a2 == 0xEF61746144657A6FLL || (sub_1E1D30() & 1) != 0)
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

uint64_t ContentExposureEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 52);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 60);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 60);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 64);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 64);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentExposureEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v23 - 8) + 104))(a1 + v22, v8, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v25 - 8) + 104))(a1 + v24, v8, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v27 - 8) + 104))(a1 + v26, v8, v27);
  v28 = v4[16];
  v29 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v29 - 8) + 104))(a1 + v28, v8, v29);
  v30 = v4[17];
  v31 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v31 - 8) + 104))(a1 + v30, v8, v31);
  v32 = v4[18];
  v33 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v33 - 8) + 104))(a1 + v32, v2, v33);
  v34 = v4[19];
  v35 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v2, v35);
}

uint64_t ContentExposureEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v10 = v1[9];
  v11 = v2;
  v4 = v1[12];
  v12 = v1[11];
  v3 = v12;
  v13 = v4;
  v6 = v1[8];
  v9[0] = v1[7];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t ContentExposureEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v4 = *(v1 + 304);
  v12 = *(v1 + 288);
  v3 = v12;
  v13[0] = v4;
  v5 = *(v1 + 224);
  v11[0] = *(v1 + 208);
  v6 = *(v1 + 240);
  v7 = *(v1 + 256);
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v2;
  *(v13 + 14) = *(v1 + 318);
  v8 = *(v13 + 14);
  *a1 = v11[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 110) = v8;
  return sub_17AA4(v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t ContentExposureEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 392);
  v3 = *(v1 + 376);
  v9 = *(v1 + 360);
  v2 = v9;
  v10 = v3;
  v4 = *(v1 + 344);
  v8[0] = *(v1 + 328);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 64) = v11;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

uint64_t ContentExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 512);
  v3 = *(v1 + 480);
  v20 = *(v1 + 496);
  v21 = v2;
  v4 = *(v1 + 512);
  v22 = *(v1 + 528);
  v5 = *(v1 + 448);
  v7 = *(v1 + 416);
  v16 = *(v1 + 432);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 448);
  v9 = *(v1 + 480);
  v18 = *(v1 + 464);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 416);
  v15[0] = *(v1 + 400);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 528);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 544);
  *(a1 + 144) = *(v1 + 544);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContentExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 576);
  *a1 = *(v1 + 552);
  *(a1 + 8) = *(v1 + 560);
  *(a1 + 24) = v2;
}

uint64_t ContentExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 584);
  v3 = *(v1 + 592);
  v4 = *(v1 + 600);
  v5 = *(v1 + 608);
  v6 = *(v1 + 616);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2EB50(v2, v3);
}

uint64_t ContentExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
}

__n128 ContentExposureEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 664);
  v3 = *(v1 + 672);
  result = *(v1 + 648);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t ContentExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[85];
  v3 = v1[86];
  v4 = v1[87];
  v5 = v1[88];
  v6 = v1[89];
  v7 = v1[90];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t ContentExposureEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 784);
  v9 = *(v1 + 768);
  v10[0] = v2;
  v3 = *(v1 + 752);
  v8[0] = *(v1 + 736);
  v4 = v8[0];
  v8[1] = v3;
  *(v10 + 13) = *(v1 + 797);
  v5 = *(v10 + 13);
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  *(a1 + 61) = v5;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

uint64_t ContentExposureEvent.Model.genreData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[101];
  v3 = v1[102];
  v4 = v1[103];
  v5 = v1[104];
  v6 = v1[105];
  v7 = v1[106];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_815A0(v2, v3);
}

uint64_t ContentExposureEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[107];
  v3 = v1[108];
  v4 = v1[109];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t ContentExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent.Model(0) + 72);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentExposureEvent.Model(0) + 76);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentExposureEvent.Model.init(sectionData:contentData:contentExposureData:flowcaseData:linkData:pageData:mediaData:upSellData:onDevicePersonalizationPropertyData:seriesData:suggestionData:contentStoreData:genreData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, char *a12, uint64_t a13, _OWORD *a14, __int128 *a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a6 + 16);
  v19 = *(a6 + 24);
  v20 = *(a7 + 32);
  v21 = *(a8 + 16);
  v22 = *(a10 + 16);
  v23 = *(a10 + 24);
  v24 = *a12;
  v25 = *(a15 + 2);
  v26 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v26;
  v27 = a1[6];
  v28 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v28;
  v29 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v29;
  v30 = a2[2];
  v31 = a2[4];
  v32 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v31;
  v33 = *a2;
  v34 = a2[1];
  *(a9 + 96) = v27;
  *(a9 + 112) = v33;
  *(a9 + 128) = v34;
  *(a9 + 144) = v30;
  v36 = a3[2];
  v35 = a3[3];
  v37 = *a3;
  *(a9 + 224) = a3[1];
  *(a9 + 240) = v36;
  *(a9 + 192) = v32;
  *(a9 + 208) = v37;
  *(a9 + 318) = *(a3 + 110);
  v38 = a3[6];
  v39 = a3[4];
  *(a9 + 288) = a3[5];
  *(a9 + 304) = v38;
  *(a9 + 256) = v35;
  *(a9 + 272) = v39;
  v40 = *a4;
  v41 = a4[1];
  v42 = a4[2];
  v43 = a4[3];
  *(a9 + 392) = *(a4 + 8);
  *(a9 + 360) = v42;
  *(a9 + 376) = v43;
  *(a9 + 328) = v40;
  *(a9 + 344) = v41;
  v44 = *(a5 + 16);
  *(a9 + 400) = *a5;
  *(a9 + 416) = v44;
  v45 = *(a5 + 32);
  v46 = *(a5 + 48);
  v47 = *(a5 + 80);
  *(a9 + 464) = *(a5 + 64);
  *(a9 + 480) = v47;
  *(a9 + 432) = v45;
  *(a9 + 448) = v46;
  v48 = *(a5 + 96);
  v49 = *(a5 + 112);
  v50 = *(a5 + 128);
  *(a9 + 544) = *(a5 + 144);
  *(a9 + 512) = v49;
  *(a9 + 528) = v50;
  *(a9 + 496) = v48;
  *(a9 + 552) = *a6;
  *(a9 + 568) = v18;
  *(a9 + 576) = v19;
  v51 = *(a7 + 16);
  *(a9 + 584) = *a7;
  *(a9 + 600) = v51;
  *(a9 + 616) = v20;
  *(a9 + 624) = *a8;
  *(a9 + 640) = v21;
  *(a9 + 648) = *a10;
  *(a9 + 664) = v22;
  *(a9 + 672) = v23;
  v52 = a11[1];
  *(a9 + 680) = *a11;
  *(a9 + 696) = v52;
  *(a9 + 712) = a11[2];
  *(a9 + 728) = v24;
  v53 = *(a13 + 48);
  *(a9 + 768) = *(a13 + 32);
  *(a9 + 784) = v53;
  *(a9 + 797) = *(a13 + 61);
  v54 = *(a13 + 16);
  *(a9 + 736) = *a13;
  *(a9 + 752) = v54;
  v55 = a14[1];
  *(a9 + 808) = *a14;
  *(a9 + 824) = v55;
  v56 = *a15;
  *(a9 + 840) = a14[2];
  *(a9 + 856) = v56;
  *(a9 + 872) = v25;
  v57 = type metadata accessor for ContentExposureEvent.Model(0);
  v58 = *(v57 + 72);
  v59 = sub_1E1150();
  (*(*(v59 - 8) + 32))(a9 + v58, a16, v59);
  v60 = *(v57 + 76);
  v61 = sub_1E11A0();
  v62 = *(*(v61 - 8) + 32);

  return v62(a9 + v60, a17, v61);
}

uint64_t sub_9DB7C(char a1)
{
  result = 0x446E6F6974636573;
  switch(a1)
  {
    case 1:
      return 0x44746E65746E6F63;
    case 2:
      return 0xD000000000000013;
    case 3:
      return 0x65736163776F6C66;
    case 4:
      v4 = 1802398060;
      return v4 | 0x6174614400000000;
    case 5:
      v4 = 1701273968;
      return v4 | 0x6174614400000000;
    case 6:
      v3 = 0x44616964656DLL;
      goto LABEL_17;
    case 7:
      v5 = 0x6C6C65537075;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 8:
      return 0xD000000000000023;
    case 9:
      v5 = 0x736569726573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
    case 10:
      return 0x6974736567677573;
    case 11:
      return 0xD000000000000010;
    case 12:
      v3 = 0x4465726E6567;
      goto LABEL_17;
    case 13:
      v3 = 0x44736C616564;
      goto LABEL_17;
    case 14:
      v3 = 0x44746E657665;
      goto LABEL_17;
    case 15:
      v3 = 0x4464656D6974;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_9DD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A169C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9DDA0(uint64_t a1)
{
  v2 = sub_9EA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9DDDC(uint64_t a1)
{
  v2 = sub_9EA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_282CC8, &qword_1F06D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v71 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9EA14();
  sub_1E1E00();
  v10 = v2[4];
  v11 = v2[2];
  v167 = v2[3];
  v168 = v10;
  v12 = v2[4];
  v13 = v2[6];
  v169 = v2[5];
  v170 = v13;
  v14 = *v2;
  v15 = v2[2];
  v165 = v2[1];
  v166 = v15;
  v16 = *v2;
  v161 = v12;
  v162 = v169;
  v163 = v2[6];
  v164 = v16;
  v157 = v14;
  v158 = v165;
  v159 = v11;
  v160 = v167;
  v156 = 0;
  sub_274D4(&v164, &v106);
  sub_18544();
  v17 = v171;
  sub_1E1CF0();
  if (v17)
  {
    v110 = v161;
    v111 = v162;
    v112 = v163;
    v106 = v157;
    v107 = v158;
    v108 = v159;
    v109 = v160;
    sub_28354(&v106);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v171 = v5;
    v150[4] = v161;
    v150[5] = v162;
    v150[6] = v163;
    v150[0] = v157;
    v150[1] = v158;
    v150[2] = v159;
    v150[3] = v160;
    sub_28354(v150);
    v19 = v2[10];
    v20 = v2[8];
    v152 = v2[9];
    v153 = v19;
    v21 = v2[10];
    v22 = v2[12];
    v154 = v2[11];
    v155 = v22;
    v23 = v2[8];
    v151[0] = v2[7];
    v151[1] = v23;
    v146 = v152;
    v147 = v21;
    v24 = v2[12];
    v148 = v154;
    v149 = v24;
    v144 = v151[0];
    v145 = v20;
    v143 = 1;
    sub_13A5C(v151, &v106);
    sub_143D0();
    sub_1E1CF0();
    v136[2] = v146;
    v136[3] = v147;
    v136[4] = v148;
    v136[5] = v149;
    v136[0] = v144;
    v136[1] = v145;
    sub_14424(v136);
    v25 = v2[18];
    v26 = v2[16];
    v140 = v2[17];
    v141 = v25;
    v27 = v2[18];
    *v142 = v2[19];
    v28 = v2[14];
    v137[0] = v2[13];
    v137[1] = v28;
    v29 = v2[16];
    v31 = v2[13];
    v30 = v2[14];
    v138 = v2[15];
    v139 = v29;
    v133 = v140;
    v134 = v27;
    v135[0] = v2[19];
    v129 = v31;
    v130 = v30;
    *&v142[14] = *(v2 + 318);
    *(v135 + 14) = *(v2 + 318);
    v131 = v138;
    v132 = v26;
    v128 = 2;
    sub_17AA4(v137, &v106, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v122[4] = v133;
    v122[5] = v134;
    v123[0] = v135[0];
    *(v123 + 14) = *(v135 + 14);
    v122[0] = v129;
    v122[1] = v130;
    v122[2] = v131;
    v122[3] = v132;
    sub_18E48(v122, &qword_27FFF8, &qword_1F06D0);
    v32 = *(v2 + 344);
    v33 = *(v2 + 376);
    v125 = *(v2 + 360);
    v126 = v33;
    v34 = *(v2 + 344);
    v124[0] = *(v2 + 328);
    v124[1] = v34;
    v35 = *(v2 + 376);
    v119 = v125;
    v120 = v35;
    v127 = *(v2 + 49);
    v121 = *(v2 + 49);
    v117 = v124[0];
    v118 = v32;
    v116 = 3;
    sub_17AA4(v124, &v106, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v104[2] = v119;
    v104[3] = v120;
    v105 = v121;
    v104[0] = v117;
    v104[1] = v118;
    sub_18E48(v104, &qword_282CC0, &qword_1F62B0);
    v36 = v2[32];
    v37 = v2[30];
    v112 = v2[31];
    v113 = v36;
    v38 = v2[32];
    v114 = v2[33];
    v39 = v2[28];
    v40 = v2[26];
    v108 = v2[27];
    v109 = v39;
    v41 = v2[28];
    v42 = v2[30];
    v110 = v2[29];
    v111 = v42;
    v43 = v2[26];
    v106 = v2[25];
    v107 = v43;
    v100 = v112;
    v101 = v38;
    v102 = v2[33];
    v96 = v108;
    v97 = v41;
    v98 = v110;
    v99 = v37;
    v115 = *(v2 + 68);
    v103 = *(v2 + 68);
    v94 = v106;
    v95 = v40;
    v93 = 4;
    sub_275C4(&v106, v91);
    sub_18630();
    sub_1E1CF0();
    v91[6] = v100;
    v91[7] = v101;
    v91[8] = v102;
    v92 = v103;
    v91[2] = v96;
    v91[3] = v97;
    v91[4] = v98;
    v91[5] = v99;
    v91[0] = v94;
    v91[1] = v95;
    sub_283A8(v91);
    v44 = *(v2 + 72);
    *&v86[0] = *(v2 + 69);
    *(v86 + 8) = v2[35];
    *(&v86[1] + 1) = v44;
    LOBYTE(v82) = 5;
    sub_18598();

    sub_1E1CF0();

    v45 = *(v2 + 74);
    v46 = *(v2 + 75);
    v47 = *(v2 + 76);
    v48 = *(v2 + 154);
    *&v86[0] = *(v2 + 73);
    *(&v86[0] + 1) = v45;
    *&v86[1] = v46;
    *(&v86[1] + 1) = v47;
    LODWORD(v87) = v48;
    LOBYTE(v82) = 6;
    sub_2EB50(*&v86[0], v45);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*&v86[0], *(&v86[0] + 1));
    v49 = *(v2 + 80);
    v86[0] = v2[39];
    *&v86[1] = v49;
    LOBYTE(v82) = 7;
    sub_28450();

    sub_1E1C80();

    v50 = *(v2 + 83);
    v51 = *(v2 + 672);
    v86[0] = *(v2 + 648);
    *&v86[1] = v50;
    BYTE8(v86[1]) = v51;
    LOBYTE(v82) = 8;
    sub_284A4();
    sub_1E1C80();
    v52 = *(v2 + 86);
    v53 = *(v2 + 87);
    v54 = *(v2 + 88);
    v55 = *(v2 + 89);
    v56 = *(v2 + 90);
    *&v86[0] = *(v2 + 85);
    *(&v86[0] + 1) = v52;
    *&v86[1] = v53;
    *(&v86[1] + 1) = v54;
    *&v87 = v55;
    *(&v87 + 1) = v56;
    LOBYTE(v82) = 9;
    sub_13BDC(*&v86[0], v52, v53, v54, v55, v56);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(*&v86[0], *(&v86[0] + 1), *&v86[1], *(&v86[1] + 1), v87, *(&v87 + 1));
    v90 = *(v2 + 728);
    v89 = 10;
    sub_284F8();
    sub_1E1C80();
    v57 = v2[47];
    v58 = v2[49];
    v87 = v2[48];
    *v88 = v58;
    v59 = v2[47];
    v86[0] = v2[46];
    v86[1] = v59;
    v60 = v2[49];
    v84 = v87;
    v85[0] = v60;
    *&v88[13] = *(v2 + 797);
    *(v85 + 13) = *(v2 + 797);
    v82 = v86[0];
    v83 = v57;
    v81 = 11;
    sub_17AA4(v86, v79, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v79[2] = v84;
    *v80 = v85[0];
    *&v80[13] = *(v85 + 13);
    v79[0] = v82;
    v79[1] = v83;
    sub_18E48(v79, &qword_27FFF0, &unk_1E9C00);
    v61 = *(v2 + 102);
    v62 = *(v2 + 103);
    v63 = *(v2 + 104);
    v64 = *(v2 + 105);
    v65 = *(v2 + 106);
    v73 = *(v2 + 101);
    v74 = v61;
    v75 = v62;
    v76 = v63;
    v77 = v64;
    v78 = v65;
    v72 = 12;
    sub_815A0(v73, v61);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v73, v74);
    v66 = *(v2 + 108);
    v67 = *(v2 + 109);
    v73 = *(v2 + 107);
    v74 = v66;
    v75 = v67;
    v72 = 13;
    sub_2EBCC(v73, v66, v67);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(v73, v74, v75);
    v68 = type metadata accessor for ContentExposureEvent.Model(0);
    v69 = *(v68 + 72);
    LOBYTE(v73) = 14;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v70 = *(v68 + 76);
    LOBYTE(v73) = 15;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v171 + 8))(v8, 0);
  }
}

unint64_t sub_9EA14()
{
  result = qword_282CD0;
  if (!qword_282CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282CD0);
  }

  return result;
}

uint64_t ContentExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v58 = sub_1E11A0();
  v55 = *(v58 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v58);
  v57 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_282CD8, &qword_1F06E0);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  __chkstk_darwin(v9);
  v12 = v50 - v11;
  v13 = type metadata accessor for ContentExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_9EA14();
  v63 = v12;
  v18 = v113;
  sub_1E1DF0();
  if (v18)
  {
    return sub_4E48(a1);
  }

  v52 = v8;
  v113 = a1;
  v53 = v13;
  v54 = v16;
  v95 = 0;
  sub_18EFC();
  sub_1E1C20();
  v19 = v99;
  v20 = v101;
  v21 = v54;
  *(v54 + 4) = v100;
  *(v21 + 5) = v20;
  *(v21 + 6) = v102;
  v22 = v97;
  *v21 = v96;
  *(v21 + 1) = v22;
  *(v21 + 2) = v98;
  *(v21 + 3) = v19;
  v88 = 1;
  sub_14CB8();
  sub_1E1C20();
  v23 = v92;
  *(v21 + 9) = v91;
  *(v21 + 10) = v23;
  v24 = v94;
  *(v21 + 11) = v93;
  *(v21 + 12) = v24;
  v25 = v90;
  *(v21 + 7) = v89;
  *(v21 + 8) = v25;
  v80 = 2;
  sub_4FBB8();
  v51 = 0;
  sub_1E1BB0();
  v26 = v86;
  *(v21 + 17) = v85;
  *(v21 + 18) = v26;
  *(v21 + 19) = *v87;
  v27 = v82;
  *(v21 + 13) = v81;
  *(v21 + 14) = v27;
  v28 = v84;
  *(v21 + 15) = v83;
  *(v21 + 16) = v28;
  *(v21 + 318) = *&v87[14];
  v74 = 3;
  sub_1C808();
  sub_1E1BB0();
  *(v21 + 49) = v79;
  v29 = v78;
  *(v21 + 360) = v77;
  *(v21 + 376) = v29;
  v30 = v76;
  *(v21 + 328) = v75;
  *(v21 + 344) = v30;
  v73 = 4;
  sub_18FA4();
  sub_1E1C20();
  v31 = v110;
  *(v21 + 31) = v109;
  *(v21 + 32) = v31;
  *(v21 + 33) = v111;
  *(v21 + 68) = v112;
  v32 = v106;
  *(v21 + 27) = v105;
  *(v21 + 28) = v32;
  v33 = v108;
  *(v21 + 29) = v107;
  *(v21 + 30) = v33;
  v34 = v104;
  *(v21 + 25) = v103;
  *(v21 + 26) = v34;
  LOBYTE(v65) = 5;
  sub_18F50();
  sub_1E1C20();
  v50[1] = v21 + 328;
  v35 = v70;
  *(v21 + 552) = v69;
  *(v21 + 568) = v35;
  LOBYTE(v65) = 6;
  sub_16720();
  sub_1E1BB0();
  v36 = v71;
  v37 = v70;
  *(v21 + 584) = v69;
  *(v21 + 600) = v37;
  *(v21 + 154) = v36;
  LOBYTE(v65) = 7;
  sub_28EF4();
  sub_1E1BB0();
  v38 = v70;
  *(v21 + 39) = v69;
  *(v21 + 80) = v38;
  LOBYTE(v65) = 8;
  sub_28F48();
  sub_1E1BB0();
  v39 = v70;
  v40 = BYTE8(v70);
  *(v21 + 648) = v69;
  *(v21 + 83) = v39;
  v21[672] = v40;
  LOBYTE(v65) = 9;
  sub_DAD8();
  sub_1E1BB0();
  v41 = v70;
  *(v21 + 680) = v69;
  *(v21 + 696) = v41;
  *(v21 + 712) = v71;
  LOBYTE(v65) = 10;
  sub_28F9C();
  sub_1E1BB0();
  v54[728] = v69;
  v68 = 11;
  sub_4FB64();
  sub_1E1BB0();
  v42 = v54;
  v43 = v54 + 736;
  v44 = *v72;
  *(v54 + 48) = v71;
  v42[49] = v44;
  v45 = v70;
  v42[46] = v69;
  v42[47] = v45;
  *(v43 + 61) = *&v72[13];
  v64 = 12;
  sub_827D8();
  sub_1E1BB0();
  LODWORD(v51) = 1;
  v46 = v66;
  *(v21 + 808) = v65;
  *(v21 + 824) = v46;
  *(v21 + 840) = v67;
  v64 = 13;
  sub_30258();
  sub_1E1BB0();
  v47 = v66;
  *(v21 + 856) = v65;
  *(v54 + 109) = v47;
  LOBYTE(v65) = 14;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v59 + 32))(&v54[*(v53 + 72)], v52, v60);
  LOBYTE(v65) = 15;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v61 + 8))(v63, v62);
  v48 = v54;
  (*(v55 + 32))(&v54[*(v53 + 76)], v57, v58);
  sub_9F978(v48, v56);
  sub_4E48(v113);
  return sub_9F9DC(v48);
}

uint64_t sub_9F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9F9DC(uint64_t a1)
{
  v2 = type metadata accessor for ContentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9FAD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v24 - 8) + 104))(a2 + v23, v9, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v26 - 8) + 104))(a2 + v25, v9, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v28 - 8) + 104))(a2 + v27, v9, v28);
  v29 = a1[16];
  v30 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v30 - 8) + 104))(a2 + v29, v9, v30);
  v31 = a1[17];
  v32 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v32 - 8) + 104))(a2 + v31, v9, v32);
  v33 = a1[18];
  v34 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v34 - 8) + 104))(a2 + v33, v4, v34);
  v35 = a1[19];
  v36 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v4, v36);
}

uint64_t sub_A0000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_32:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_31:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_32;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_31;
  }

  v15 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_31;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[19];

  return v29(v30, a2, v28);
}

uint64_t sub_A05BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v27 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v30 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v31 = *(*(v30 - 8) + 56);
  v32 = a1 + a4[19];

  return v31(v32, a2, a2, v30);
}

void sub_A0B70()
{
  sub_A1054(319, &qword_27E578, sub_18EFC, sub_18544);
  if (v0 <= 0x3F)
  {
    sub_A1054(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_A1054(319, &qword_2800E0, sub_4FBB8, sub_4F070);
      if (v2 <= 0x3F)
      {
        sub_A1054(319, &qword_27EF68, sub_1C808, sub_1C860);
        if (v3 <= 0x3F)
        {
          sub_A1054(319, &unk_27E588, sub_18FA4, sub_18630);
          if (v4 <= 0x3F)
          {
            sub_A1054(319, &qword_27E580, sub_18F50, sub_18598);
            if (v5 <= 0x3F)
            {
              sub_A1054(319, &qword_27E568, sub_16720, sub_16778);
              if (v6 <= 0x3F)
              {
                sub_A1054(319, &qword_27EAE8, sub_28EF4, sub_28450);
                if (v7 <= 0x3F)
                {
                  sub_A1054(319, &qword_27EAF0, sub_28F48, sub_284A4);
                  if (v8 <= 0x3F)
                  {
                    sub_A1054(319, &qword_27DE18, sub_DAD8, sub_D57C);
                    if (v9 <= 0x3F)
                    {
                      sub_A1054(319, &unk_27EAF8, sub_28F9C, sub_284F8);
                      if (v10 <= 0x3F)
                      {
                        sub_A1054(319, &qword_2800D8, sub_4FB64, sub_4F01C);
                        if (v11 <= 0x3F)
                        {
                          sub_A1054(319, &unk_281E50, sub_827D8, sub_81F40);
                          if (v12 <= 0x3F)
                          {
                            sub_A1054(319, &unk_27EF70, sub_30258, sub_2F834);
                            if (v13 <= 0x3F)
                            {
                              sub_5684();
                              if (v14 <= 0x3F)
                              {
                                sub_5750();
                                if (v15 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_A1054(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_A10E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_A121C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_A1340()
{
  sub_19FE0(319, &qword_2801C8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_282E10);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27F028);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_27EBD0);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_27E398);
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &qword_27EBD8);
              if (v6 <= 0x3F)
              {
                sub_19FE0(319, &qword_2801C0);
                if (v7 <= 0x3F)
                {
                  sub_19FE0(319, &unk_281F00);
                  if (v8 <= 0x3F)
                  {
                    sub_19FE0(319, &unk_27F030);
                    if (v9 <= 0x3F)
                    {
                      sub_1E1150();
                      if (v10 <= 0x3F)
                      {
                        sub_1E11A0();
                        if (v11 <= 0x3F)
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
}

unint64_t sub_A1598()
{
  result = qword_282E78;
  if (!qword_282E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282E78);
  }

  return result;
}

unint64_t sub_A15F0()
{
  result = qword_282E80;
  if (!qword_282E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282E80);
  }

  return result;
}

unint64_t sub_A1648()
{
  result = qword_282E88;
  if (!qword_282E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282E88);
  }

  return result;
}

uint64_t sub_A169C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t CellularToggleEvent.cellularData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CellularToggleEvent.cellularData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CellularToggleEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CellularToggleEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CellularToggleEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_282EC0, &unk_1F0990);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CellularToggleEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CellularToggleEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CellularToggleEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CellularToggleEvent.Model.init(cellularData:eventData:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for CellularToggleEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_A2104()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x72616C756C6C6563;
  }

  *v0;
  return result;
}

uint64_t sub_A214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616C756C6C6563 && a2 == 0xEC00000061746144;
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

uint64_t sub_A2234(uint64_t a1)
{
  v2 = sub_A2468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A2270(uint64_t a1)
{
  v2 = sub_A2468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CellularToggleEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282EC8, &qword_1F09A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_A2468();
  sub_1E1E00();
  v14 = *v3;
  v13[13] = 0;
  sub_A24BC();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for CellularToggleEvent.Model(0) + 20);
    v13[12] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_A2468()
{
  result = qword_282ED0;
  if (!qword_282ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282ED0);
  }

  return result;
}

unint64_t sub_A24BC()
{
  result = qword_282ED8;
  if (!qword_282ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282ED8);
  }

  return result;
}

uint64_t CellularToggleEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_282EE0, &qword_1F09A8);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CellularToggleEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_A2468();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_A280C();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_A2860(v19, v25);
  }

  return sub_4E48(a1);
}

unint64_t sub_A280C()
{
  result = qword_282EE8;
  if (!qword_282EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282EE8);
  }

  return result;
}

uint64_t sub_A2860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularToggleEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A2964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_282EC0, &unk_1F0990);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_A2A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_282EC0, &unk_1F0990);
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

uint64_t sub_A2B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_282EC0, &unk_1F0990);
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

void sub_A2C80()
{
  sub_A2D04();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A2D04()
{
  if (!qword_282F58)
  {
    sub_A280C();
    sub_A24BC();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_282F58);
    }
  }
}

uint64_t sub_A2D80(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
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
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_A2E38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_A2ED8()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_A2F68()
{
  result = qword_283018;
  if (!qword_283018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283018);
  }

  return result;
}

unint64_t sub_A2FC0()
{
  result = qword_283020;
  if (!qword_283020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283020);
  }

  return result;
}

unint64_t sub_A3018()
{
  result = qword_283028;
  if (!qword_283028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283028);
  }

  return result;
}

unint64_t BridgedDisplayType.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_A30F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A83D4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_A3138@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_A3270(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BABooksTreatmentData_remoteConfigNamespaceData);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v29 = *(v1 + OBJC_IVAR___BABooksTreatmentData_remoteConfigNamespaceData);
    }

    v30 = *(v1 + OBJC_IVAR___BABooksTreatmentData_remoteConfigNamespaceData);
    v31 = sub_1E1B20();
    v3 = v30;
    v4 = v31;
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v3;
  sub_A7F60(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      v38 = v4;
      do
      {
        v7 = sub_1E1AE0();
        v8 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_name + 8);
        v35 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
        v9 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
        v10 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
        v11 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
        v12 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
        v13 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
        v14 = *(v7 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);

        v33 = v9;

        swift_unknownObjectRelease();
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_A7F60((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[8 * v16];
        v17[4] = v35;
        v17[5] = v8;
        v17[6] = v33;
        v17[7] = v10;
        v17[8] = v11;
        v17[9] = v12;
        v17[10] = v13;
        v17[11] = v14;
      }

      while (v38 != v6);
    }

    else
    {
      v18 = (v5 + 32);
      do
      {
        v39 = v4;
        v19 = (*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
        v34 = *v19;
        v20 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
        v21 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
        v22 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
        v23 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
        v24 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
        v25 = *(*v18 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);
        v26 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        v36 = v19[1];
        v37 = v26 + 1;

        if (v26 >= v27 >> 1)
        {
          sub_A7F60((v27 > 1), v37, 1);
        }

        _swiftEmptyArrayStorage[2] = v37;
        v28 = &_swiftEmptyArrayStorage[8 * v26];
        v28[4] = v34;
        v28[5] = v36;
        v28[6] = v20;
        v28[7] = v21;
        v28[8] = v22;
        v28[9] = v23;
        ++v18;
        v28[10] = v24;
        v28[11] = v25;
        v4 = v39 - 1;
      }

      while (v39 != 1);
    }

    a1 = v32;
LABEL_16:
    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  __break(1u);
}

id BridgedCollectionIDData.__allocating_init(collectionID:collectionMemberCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___BACollectionIDData_collectionID];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___BACollectionIDData_collectionMemberCount] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id BridgedCollectionIDData.init(collectionID:collectionMemberCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___BACollectionIDData_collectionID];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___BACollectionIDData_collectionMemberCount] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for BridgedCollectionIDData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_A37B4(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_A382C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_A38CC(unint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BACollectionSummaryData_collectionSummary);
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1E1B20())
  {
    if (!i)
    {
LABEL_22:
      *a1 = &_swiftEmptyArrayStorage;
      return;
    }

    sub_A7F20(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v23 = a1;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = sub_1E1AE0();
        v7 = *(v6 + OBJC_IVAR___BACollectionIDData_collectionMemberCount);
        if (v7 < 0)
        {
          break;
        }

        v9 = *(v6 + OBJC_IVAR___BACollectionIDData_collectionID);
        v8 = *(v6 + OBJC_IVAR___BACollectionIDData_collectionID + 8);
        v10 = BARoundIntegerToSignificantFigures(v7, 2);
        if (v10 < 0xFFFFFFFF80000000)
        {
          goto LABEL_24;
        }

        v11 = v10;
        if (v10 > 0x7FFFFFFF)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        a1 = *(&_swiftEmptyArrayStorage + 2);
        v12 = *(&_swiftEmptyArrayStorage + 3);
        if (a1 >= v12 >> 1)
        {
          sub_A7F20((v12 > 1), a1 + 1, 1);
        }

        ++v5;
        *(&_swiftEmptyArrayStorage + 2) = a1 + 1;
        v13 = &_swiftEmptyArrayStorage + 24 * a1;
        *(v13 + 4) = v9;
        *(v13 + 5) = v8;
        *(v13 + 12) = v11;
        if (i == v5)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
      v14 = (v3 + 32);
      while (1)
      {
        v15 = *v14;
        v16 = *(*v14 + OBJC_IVAR___BACollectionIDData_collectionMemberCount);
        if (v16 < 0)
        {
          break;
        }

        a1 = *&v15[OBJC_IVAR___BACollectionIDData_collectionID];
        v3 = *&v15[OBJC_IVAR___BACollectionIDData_collectionID + 8];
        v17 = v15;
        v18 = BARoundIntegerToSignificantFigures(v16, 2);
        if (v18 < 0xFFFFFFFF80000000)
        {
          goto LABEL_27;
        }

        v19 = v18;
        if (v18 > 0x7FFFFFFF)
        {
          goto LABEL_28;
        }

        v21 = *(&_swiftEmptyArrayStorage + 2);
        v20 = *(&_swiftEmptyArrayStorage + 3);
        if (v21 >= v20 >> 1)
        {
          sub_A7F20((v20 > 1), v21 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v21 + 1;
        v22 = &_swiftEmptyArrayStorage + 24 * v21;
        *(v22 + 4) = a1;
        *(v22 + 5) = v3;
        *(v22 + 12) = v19;
        ++v14;
        if (!--i)
        {
LABEL_21:
          a1 = v23;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  __break(1u);
}

id BridgedContentData.__allocating_init(contentID:contentType:contentPrivateID:contentUserID:contentAcquisitionType:contentSubType:contentLength:supplementalContentCount:seriesType:productionType:isUnified:contentKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v37 = v17;
  v23 = objc_allocWithZone(v17);
  v24 = &v23[OBJC_IVAR___BAContentData_contentID];
  *v24 = a1;
  v24[1] = a2;
  *&v23[OBJC_IVAR___BAContentData_contentType] = a3;
  v25 = &v23[OBJC_IVAR___BAContentData_contentPrivateID];
  *v25 = a4;
  v25[1] = a5;
  v26 = &v23[OBJC_IVAR___BAContentData_contentUserID];
  *v26 = a6;
  v26[1] = a7;
  *&v23[OBJC_IVAR___BAContentData_contentAcquisitionType] = a8;
  *&v23[OBJC_IVAR___BAContentData_contentSubType] = a9;
  *&v23[OBJC_IVAR___BAContentData_contentLength] = a10;
  *&v23[OBJC_IVAR___BAContentData_supplementalContentCount] = a11;
  *&v23[OBJC_IVAR___BAContentData_seriesType] = a12;
  *&v23[OBJC_IVAR___BAContentData_productionType] = a13;
  if (a14)
  {
    v27 = a11;
    v28 = a9;
    v29 = a10;
    v30 = [a14 BOOLValue];
  }

  else
  {
    v28 = a9;
    v29 = a10;
    v27 = a11;
    v30 = 2;
  }

  v23[OBJC_IVAR___BAContentData_isUnified] = v30;
  v23[OBJC_IVAR___BAContentData_isAccoladedContent] = 2;
  v31 = &v23[OBJC_IVAR___BAContentData_contentKind];
  *v31 = a15;
  v31[1] = a16;
  v38.receiver = v23;
  v38.super_class = v37;
  v32 = objc_msgSendSuper2(&v38, "init", a12, a6, a13, a7, a8);

  return v32;
}

id BridgedContentData.init(contentID:contentType:contentPrivateID:contentUserID:contentAcquisitionType:contentSubType:contentLength:supplementalContentCount:seriesType:productionType:isUnified:contentKind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v16 = sub_A8474(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v16;
}

uint64_t sub_A3F08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAContentData_contentType);
  if (v3 >= 7)
  {
    v28 = *(v1 + OBJC_IVAR___BAContentData_contentType);

LABEL_26:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v4 = *(v1 + OBJC_IVAR___BAContentData_contentPrivateID);
  v5 = *(v1 + OBJC_IVAR___BAContentData_contentPrivateID + 8);
  v6 = *(v1 + OBJC_IVAR___BAContentData_contentUserID + 8);
  v7 = *(v1 + OBJC_IVAR___BAContentData_contentAcquisitionType);
  v27 = *(v1 + OBJC_IVAR___BAContentData_contentID);
  if (v7)
  {
    if (v7 == 2)
    {
      v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
      v25 = 2;
      if (v8)
      {
LABEL_5:
        v9 = *(v8 + OBJC_IVAR___BAContentSubType_subTypeEnum);
        goto LABEL_8;
      }
    }

    else
    {
      if (v7 != 1)
      {

        goto LABEL_26;
      }

      v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
      v25 = 1;
      if (v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    v25 = 0;
    v8 = *(v1 + OBJC_IVAR___BAContentData_contentSubType);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v9 = 4;
LABEL_8:
  v24 = v9;
  v26 = *(v1 + OBJC_IVAR___BAContentData_contentUserID);
  v10 = *(v1 + OBJC_IVAR___BAContentData_contentLength);
  v11 = *(v1 + OBJC_IVAR___BAContentData_contentID + 8);

  v12 = v5;

  v13 = v6;

  if (v10)
  {
    v14 = [v10 intValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v1 + OBJC_IVAR___BAContentData_supplementalContentCount);
  if (v15)
  {
    v16 = [*(v1 + OBJC_IVAR___BAContentData_supplementalContentCount) intValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + OBJC_IVAR___BAContentData_seriesType);
  if (v17 >= 4)
  {
    v29 = *(v1 + OBJC_IVAR___BAContentData_seriesType);
    goto LABEL_26;
  }

  v18 = *(v1 + OBJC_IVAR___BAContentData_productionType);
  if (v18 >= 3)
  {
    v30 = *(v1 + OBJC_IVAR___BAContentData_productionType);
    goto LABEL_26;
  }

  v19 = *(v1 + OBJC_IVAR___BAContentData_isUnified);
  v20 = 8 * v17;
  v22 = *(v1 + OBJC_IVAR___BAContentData_contentKind);
  v21 = *(v1 + OBJC_IVAR___BAContentData_contentKind + 8);
  *a1 = v27;
  *(a1 + 8) = v11;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v12;
  *(a1 + 40) = v26;
  *(a1 + 48) = v13;
  *(a1 + 56) = v25;
  *(a1 + 57) = v24;
  *(a1 + 60) = v14;
  *(a1 + 64) = v10 == 0;
  *(a1 + 68) = v16;
  *(a1 + 72) = v15 == 0;
  *(a1 + 73) = 0x2010004u >> v20;
  *(a1 + 74) = v18;
  *(a1 + 75) = 3;
  *(a1 + 76) = v19;
  *(a1 + 77) = 2;
  *(a1 + 80) = v22;
  *(a1 + 88) = v21;
}

uint64_t sub_A43E4@<X0>(_DWORD *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___BAContentSettingsData_bookmarkCount) integerValue];
  v4 = [*(v1 + OBJC_IVAR___BAContentSettingsData_noteCount) integerValue];
  v5 = [*(v1 + OBJC_IVAR___BAContentSettingsData_highlightCount) integerValue];
  result = BARoundIntegerToSignificantFigures(v3, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = BARoundIntegerToSignificantFigures(v4, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = BARoundIntegerToSignificantFigures(v5, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result <= 0x7FFFFFFF)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_A4600(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for BridgedContentSubType();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___BAContentSubType_subTypeEnum] = a3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

id sub_A466C(char a1)
{
  v2 = type metadata accessor for BridgedContentSubType();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t BridgedDeviceOrientation.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_A47E0@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BADoNotDisturbData_startStatus);
  if (v2 >= 3)
  {
    v5 = *(v1 + OBJC_IVAR___BADoNotDisturbData_startStatus);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___BADoNotDisturbData_endStatus);
    if (v3 < 3)
    {
      *a1 = v2;
      a1[1] = v3;
      return result;
    }

    v6 = *(v1 + OBJC_IVAR___BADoNotDisturbData_endStatus);
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

unint64_t sub_A48D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A8650(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t BridgedGoalType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t BridgedLaunchType.swiftType.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id BridgedLibraryItemTypeData.__allocating_init(contentPrivateID:contentUserID:contentType:contentID:isSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
  *v19 = a3;
  *(v19 + 1) = a4;
  *&v17[OBJC_IVAR___BALibraryItemTypeData_contentType] = a5;
  v20 = &v17[OBJC_IVAR___BALibraryItemTypeData_contentID];
  *v20 = a6;
  *(v20 + 1) = a7;
  *&v17[OBJC_IVAR___BALibraryItemTypeData_isSample] = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, "init");
}

id BridgedLibraryItemTypeData.init(contentPrivateID:contentUserID:contentType:contentID:isSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentPrivateID];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentUserID];
  *v10 = a3;
  *(v10 + 1) = a4;
  *&v8[OBJC_IVAR___BALibraryItemTypeData_contentType] = a5;
  v11 = &v8[OBJC_IVAR___BALibraryItemTypeData_contentID];
  *v11 = a6;
  *(v11 + 1) = a7;
  *&v8[OBJC_IVAR___BALibraryItemTypeData_isSample] = a8;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for BridgedLibraryItemTypeData();
  return objc_msgSendSuper2(&v13, "init");
}

unint64_t sub_A4C88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A8684(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id BridgedLinkData.__allocating_init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27 = objc_allocWithZone(v19);
  v28 = &v27[OBJC_IVAR___BALinkData_previousSectionID];
  *v28 = a1;
  *(v28 + 1) = a2;
  v29 = &v27[OBJC_IVAR___BALinkData_previousSectionName];
  *v29 = a3;
  *(v29 + 1) = a4;
  v30 = &v27[OBJC_IVAR___BALinkData_previousContentID];
  *v30 = a5;
  *(v30 + 1) = a6;
  *&v27[OBJC_IVAR___BALinkData_linkActionType] = a7;
  v31 = &v27[OBJC_IVAR___BALinkData_previousSeriesID];
  *v31 = a8;
  *(v31 + 1) = a9;
  v32 = &v27[OBJC_IVAR___BALinkData_previousGenreID];
  *v32 = a10;
  *(v32 + 1) = a11;
  v33 = &v27[OBJC_IVAR___BALinkData_previousCollectionID];
  *v33 = a12;
  *(v33 + 1) = a13;
  v34 = &v27[OBJC_IVAR___BALinkData_previousAuthorID];
  *v34 = a14;
  *(v34 + 1) = a15;
  v35 = &v27[OBJC_IVAR___BALinkData_previousFlowcaseID];
  *v35 = a16;
  *(v35 + 1) = a17;
  v36 = &v27[OBJC_IVAR___BALinkData_previousBrickID];
  *v36 = a18;
  *(v36 + 1) = a19;
  v40.receiver = v27;
  v40.super_class = v39;
  return objc_msgSendSuper2(&v40, "init");
}

id BridgedLinkData.init(previousSectionID:previousSectionName:previousContentID:linkActionType:previousSeriesID:previousGenreID:previousCollectionID:previousAuthorID:previousFlowcaseID:previousBrickID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = &v19[OBJC_IVAR___BALinkData_previousSectionID];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v19[OBJC_IVAR___BALinkData_previousSectionName];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v19[OBJC_IVAR___BALinkData_previousContentID];
  *v22 = a5;
  *(v22 + 1) = a6;
  *&v19[OBJC_IVAR___BALinkData_linkActionType] = a7;
  v23 = &v19[OBJC_IVAR___BALinkData_previousSeriesID];
  *v23 = a8;
  *(v23 + 1) = a9;
  v24 = &v19[OBJC_IVAR___BALinkData_previousGenreID];
  *v24 = a10;
  *(v24 + 1) = a11;
  v25 = &v19[OBJC_IVAR___BALinkData_previousCollectionID];
  *v25 = a12;
  *(v25 + 1) = a13;
  v26 = &v19[OBJC_IVAR___BALinkData_previousAuthorID];
  *v26 = a14;
  *(v26 + 1) = a15;
  v27 = &v19[OBJC_IVAR___BALinkData_previousFlowcaseID];
  *v27 = a16;
  *(v27 + 1) = a17;
  v28 = &v19[OBJC_IVAR___BALinkData_previousBrickID];
  *v28 = a18;
  *(v28 + 1) = a19;
  v30.receiver = v19;
  v30.super_class = type metadata accessor for BridgedLinkData();
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t sub_A5108@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BALinkData_previousSectionName);
  v3 = *(v1 + OBJC_IVAR___BALinkData_previousContentID);
  v4 = *(v1 + OBJC_IVAR___BALinkData_previousSectionID + 8);
  v5 = *(v1 + OBJC_IVAR___BALinkData_linkActionType);
  if (v5 >= 6)
  {
    v13 = *(v1 + OBJC_IVAR___BALinkData_linkActionType);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR___BALinkData_previousSeriesID);
    v7 = *(v1 + OBJC_IVAR___BALinkData_previousGenreID);
    v8 = *(v1 + OBJC_IVAR___BALinkData_previousCollectionID);
    v9 = *(v1 + OBJC_IVAR___BALinkData_previousAuthorID);
    v10 = *(v1 + OBJC_IVAR___BALinkData_previousFlowcaseID);
    v11 = *(v1 + OBJC_IVAR___BALinkData_previousBrickID);
    *a1 = *(v1 + OBJC_IVAR___BALinkData_previousSectionID);
    *(a1 + 8) = v4;
    *(a1 + 16) = v2;
    *(a1 + 32) = v3;
    *(a1 + 48) = v5;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    *(a1 + 104) = v9;
    *(a1 + 88) = v8;
    *(a1 + 136) = v11;
    *(a1 + 120) = v10;
  }

  return result;
}

id BridgedMarkedData.__allocating_init(isFinishedDateSet:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BAMarkedData_isFinishedDateSet] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id BridgedMarkedData.init(isFinishedDateSet:)(char a1)
{
  v1[OBJC_IVAR___BAMarkedData_isFinishedDateSet] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BridgedMarkedData();
  return objc_msgSendSuper2(&v3, "init");
}

id BridgedNotificationData.__allocating_init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = objc_allocWithZone(v14);
  *&v22[OBJC_IVAR___BANotificationData_notificationContentID] = a1;
  v23 = &v22[OBJC_IVAR___BANotificationData_notificationID];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v22[OBJC_IVAR___BANotificationData_notificationType] = a4;
  *&v22[OBJC_IVAR___BANotificationData_recoType] = a5;
  *&v22[OBJC_IVAR___BANotificationData_goalType] = a6;
  v24 = &v22[OBJC_IVAR___BANotificationData_titleCode];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v22[OBJC_IVAR___BANotificationData_title];
  *v25 = a9;
  *(v25 + 1) = a10;
  v26 = &v22[OBJC_IVAR___BANotificationData_messageCode];
  *v26 = a11;
  *(v26 + 1) = a12;
  v27 = &v22[OBJC_IVAR___BANotificationData_message];
  *v27 = a13;
  *(v27 + 1) = a14;
  v30.receiver = v22;
  v30.super_class = v14;
  return objc_msgSendSuper2(&v30, "init");
}

id BridgedNotificationData.init(notificationContentID:notificationID:notificationType:recoType:goalType:titleCode:title:messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v14[OBJC_IVAR___BANotificationData_notificationContentID] = a1;
  v15 = &v14[OBJC_IVAR___BANotificationData_notificationID];
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v14[OBJC_IVAR___BANotificationData_notificationType] = a4;
  *&v14[OBJC_IVAR___BANotificationData_recoType] = a5;
  *&v14[OBJC_IVAR___BANotificationData_goalType] = a6;
  v16 = &v14[OBJC_IVAR___BANotificationData_titleCode];
  *v16 = a7;
  *(v16 + 1) = a8;
  v17 = &v14[OBJC_IVAR___BANotificationData_title];
  *v17 = a9;
  *(v17 + 1) = a10;
  v18 = &v14[OBJC_IVAR___BANotificationData_messageCode];
  *v18 = a11;
  *(v18 + 1) = a12;
  v19 = &v14[OBJC_IVAR___BANotificationData_message];
  *v19 = a13;
  *(v19 + 1) = a14;
  v21.receiver = v14;
  v21.super_class = type metadata accessor for BridgedNotificationData();
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_A5880@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BANotificationData_notificationID + 8);
  v3 = *(v1 + OBJC_IVAR___BANotificationData_notificationType);
  if (v3 >= 4)
  {
    v14 = *(v1 + OBJC_IVAR___BANotificationData_notificationType);

LABEL_10:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v4 = *(v1 + OBJC_IVAR___BANotificationData_recoType);
  if (v4 >= 5)
  {
    v15 = *(v1 + OBJC_IVAR___BANotificationData_recoType);

    goto LABEL_10;
  }

  v5 = *(v1 + OBJC_IVAR___BANotificationData_goalType);
  if (v5 >= 3)
  {
    v16 = *(v1 + OBJC_IVAR___BANotificationData_goalType);

    goto LABEL_10;
  }

  v6 = *(v1 + OBJC_IVAR___BANotificationData_notificationID);
  v7 = *(v1 + OBJC_IVAR___BANotificationData_titleCode);
  v8 = *(v1 + OBJC_IVAR___BANotificationData_titleCode + 8);
  v9 = *(v1 + OBJC_IVAR___BANotificationData_title);
  v10 = *(v1 + OBJC_IVAR___BANotificationData_title + 8);
  v11 = *(v1 + OBJC_IVAR___BANotificationData_messageCode);
  v12 = *(v1 + OBJC_IVAR___BANotificationData_message);
  *a1 = *(v1 + OBJC_IVAR___BANotificationData_notificationContentID);
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 25) = v4;
  *(a1 + 26) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
}

id BridgedNotificationEngagementData.__allocating_init(actionType:actionUrl:targetID:targetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___BANotificationEngagementData_actionType] = a1;
  v12 = &v11[OBJC_IVAR___BANotificationEngagementData_actionUrl];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR___BANotificationEngagementData_targetID] = a4;
  *&v11[OBJC_IVAR___BANotificationEngagementData_targetType] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, "init");
}

id BridgedNotificationEngagementData.init(actionType:actionUrl:targetID:targetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___BANotificationEngagementData_actionType] = a1;
  v6 = &v5[OBJC_IVAR___BANotificationEngagementData_actionUrl];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR___BANotificationEngagementData_targetID] = a4;
  *&v5[OBJC_IVAR___BANotificationEngagementData_targetType] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for BridgedNotificationEngagementData();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_A5CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionType);
  if (v2 >= 7)
  {
    v8 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionType);
LABEL_8:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v3 = *(v1 + OBJC_IVAR___BANotificationEngagementData_targetID);
  v4 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionUrl + 8);
  v5 = *(v1 + OBJC_IVAR___BANotificationEngagementData_targetType);
  if (v5 >= 3)
  {
    v9 = *(v1 + OBJC_IVAR___BANotificationEngagementData_targetType);

    goto LABEL_8;
  }

  v6 = *(v1 + OBJC_IVAR___BANotificationEngagementData_actionUrl);
  *a1 = v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

id BridgedPurchaseData.__allocating_init(purchaseAttemptID:purchaseMethod:isPreorder:pricingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BAPurchaseData_purchaseAttemptID];
  *v14 = a1;
  v14[1] = a2;
  *&v13[OBJC_IVAR___BAPurchaseData_purchaseMethod] = a3;
  v13[OBJC_IVAR___BAPurchaseData_isPreorder] = a4;
  v15 = &v13[OBJC_IVAR___BAPurchaseData_pricingParameters];
  *v15 = a5;
  v15[1] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedPurchaseData.init(purchaseAttemptID:purchaseMethod:isPreorder:pricingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___BAPurchaseData_purchaseAttemptID];
  *v7 = a1;
  v7[1] = a2;
  *&v6[OBJC_IVAR___BAPurchaseData_purchaseMethod] = a3;
  v6[OBJC_IVAR___BAPurchaseData_isPreorder] = a4;
  v8 = &v6[OBJC_IVAR___BAPurchaseData_pricingParameters];
  *v8 = a5;
  v8[1] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedPurchaseData();
  return objc_msgSendSuper2(&v10, "init");
}

id BridgedPurchaseFailData.__allocating_init(purchaseFailureReason:errorCode:errorDescription:errorDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason] = a1;
  *&v13[OBJC_IVAR___BAPurchaseFailData_errorCode] = a2;
  v14 = &v13[OBJC_IVAR___BAPurchaseFailData_errorDescription];
  *v14 = a3;
  *(v14 + 1) = a4;
  v15 = &v13[OBJC_IVAR___BAPurchaseFailData_errorDomain];
  *v15 = a5;
  *(v15 + 1) = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedPurchaseFailData.init(purchaseFailureReason:errorCode:errorDescription:errorDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason] = a1;
  *&v6[OBJC_IVAR___BAPurchaseFailData_errorCode] = a2;
  v7 = &v6[OBJC_IVAR___BAPurchaseFailData_errorDescription];
  *v7 = a3;
  *(v7 + 1) = a4;
  v8 = &v6[OBJC_IVAR___BAPurchaseFailData_errorDomain];
  *v8 = a5;
  *(v8 + 1) = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedPurchaseFailData();
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_A62C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason);
  if (v3 >= 3)
  {
    v9 = *(v1 + OBJC_IVAR___BAPurchaseFailData_purchaseFailureReason);
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorCode);
    if (v4)
    {
      v5 = [*(v1 + OBJC_IVAR___BAPurchaseFailData_errorCode) intValue];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorDescription);
    v7 = *(v1 + OBJC_IVAR___BAPurchaseFailData_errorDomain);
    *a1 = v3;
    *(a1 + 4) = v5;
    *(a1 + 8) = v4 == 0;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
  }

  return result;
}

void *BridgedReadingSessionData.percentCompletionStart.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart);
  v2 = v1;
  return v1;
}

void *BridgedReadingSessionData.percentCompletionEnd.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd);
  v2 = v1;
  return v1;
}

id BridgedReadingSessionData.__allocating_init(percentCompletionStart:percentCompletionEnd:isFreeSample:deviceOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___BAReadingSessionData_percentCompletionStart] = a1;
  *&v9[OBJC_IVAR___BAReadingSessionData_percentCompletionEnd] = a2;
  *&v9[OBJC_IVAR___BAReadingSessionData_isFreeSample] = a3;
  *&v9[OBJC_IVAR___BAReadingSessionData_deviceOrientation] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

id BridgedReadingSessionData.init(percentCompletionStart:percentCompletionEnd:isFreeSample:deviceOrientation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___BAReadingSessionData_percentCompletionStart] = a1;
  *&v4[OBJC_IVAR___BAReadingSessionData_percentCompletionEnd] = a2;
  *&v4[OBJC_IVAR___BAReadingSessionData_isFreeSample] = a3;
  *&v4[OBJC_IVAR___BAReadingSessionData_deviceOrientation] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for BridgedReadingSessionData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_A6684@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart);
  v4 = 0;
  v5 = 0;
  if (v3)
  {
    [*(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionStart) floatValue];
    v5 = v6;
  }

  v7 = *(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd);
  if (v7)
  {
    [*(v1 + OBJC_IVAR___BAReadingSessionData_percentCompletionEnd) floatValue];
    v4 = v8;
  }

  result = [*(v1 + OBJC_IVAR___BAReadingSessionData_isFreeSample) BOOLValue];
  v10 = *(v1 + OBJC_IVAR___BAReadingSessionData_deviceOrientation);
  if (v10 >= 3)
  {
    v11 = *(v1 + OBJC_IVAR___BAReadingSessionData_deviceOrientation);
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *a1 = v5;
    *(a1 + 4) = v3 == 0;
    *(a1 + 8) = v4;
    *(a1 + 12) = v7 == 0;
    *(a1 + 13) = result;
    *(a1 + 14) = v10;
  }

  return result;
}

id BridgedReadingSettingsData.__allocating_init(scrollViewStatus:autoNightThemeStatus:backgroundColor:font:fontSize:brightnessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR___BAReadingSettingsData_scrollViewStatus] = a1;
  *&v15[OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus] = a2;
  *&v15[OBJC_IVAR___BAReadingSettingsData_backgroundColor] = a3;
  v16 = &v15[OBJC_IVAR___BAReadingSettingsData_font];
  *v16 = a4;
  *(v16 + 1) = a5;
  *&v15[OBJC_IVAR___BAReadingSettingsData_fontSize] = a6;
  *&v15[OBJC_IVAR___BAReadingSettingsData_brightnessLevel] = a7;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, "init");
}

id BridgedReadingSettingsData.init(scrollViewStatus:autoNightThemeStatus:backgroundColor:font:fontSize:brightnessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___BAReadingSettingsData_scrollViewStatus] = a1;
  *&v7[OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus] = a2;
  *&v7[OBJC_IVAR___BAReadingSettingsData_backgroundColor] = a3;
  v8 = &v7[OBJC_IVAR___BAReadingSettingsData_font];
  *v8 = a4;
  *(v8 + 1) = a5;
  *&v7[OBJC_IVAR___BAReadingSettingsData_fontSize] = a6;
  *&v7[OBJC_IVAR___BAReadingSettingsData_brightnessLevel] = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for BridgedReadingSettingsData();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_A6A60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAReadingSettingsData_scrollViewStatus);
  if (v3 >= 3)
  {
    v14 = *(v1 + OBJC_IVAR___BAReadingSettingsData_scrollViewStatus);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus);
    if (v4 >= 3)
    {
      v15 = *(v1 + OBJC_IVAR___BAReadingSettingsData_autoNightThemeStatus);
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR___BAReadingSettingsData_backgroundColor);
      if (v5 < 5)
      {
        v6 = 0x4030201uLL >> (8 * v5);
        v8 = *(v1 + OBJC_IVAR___BAReadingSettingsData_font);
        v7 = *(v1 + OBJC_IVAR___BAReadingSettingsData_font + 8);
        v9 = *(v1 + OBJC_IVAR___BAReadingSettingsData_fontSize);

        [v9 floatValue];
        v11 = v10;
        result = [*(v1 + OBJC_IVAR___BAReadingSettingsData_brightnessLevel) floatValue];
        *a1 = v3;
        *(a1 + 1) = v4;
        *(a1 + 2) = v6;
        *(a1 + 8) = v8;
        *(a1 + 16) = v7;
        *(a1 + 24) = v11;
        *(a1 + 28) = v13;
        return result;
      }

      v16 = *(v1 + OBJC_IVAR___BAReadingSettingsData_backgroundColor);
    }
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

unint64_t sub_A6C94@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A87B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t BridgedRemoteConfigNamespaceData.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
  v2 = *(v0 + OBJC_IVAR___BARemoteConfigNamespaceData_name + 8);

  return v1;
}

id BridgedRemoteConfigNamespaceData.__allocating_init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BARemoteConfigNamespaceData_name];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs] = a3;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs] = a4;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs] = a5;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs] = a6;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs] = a7;
  *&v17[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs] = a8;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, "init");
}

id BridgedRemoteConfigNamespaceData.init(name:treatmentIDs:segmentIDs:segmentSetIDs:previousTreatmentIDs:previousSegmentIDs:previousSegmentSetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___BARemoteConfigNamespaceData_name];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs] = a3;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs] = a4;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs] = a5;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs] = a6;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs] = a7;
  *&v8[OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs] = a8;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for BridgedRemoteConfigNamespaceData();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_A6EC8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_name + 8);
  v3 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_treatmentIDs);
  v4 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentIDs);
  v5 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_segmentSetIDs);
  v6 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousTreatmentIDs);
  v7 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentIDs);
  v8 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_previousSegmentSetIDs);
  *a1 = *(v1 + OBJC_IVAR___BARemoteConfigNamespaceData_name);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
}

id sub_A7208(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[*a3] = a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_A72A0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  *&v5[*a3] = a1;
  *&v5[*a4] = a2;
  v7.receiver = v5;
  v7.super_class = a5();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_A7310(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  *&a1[*a5] = a3;
  *&a1[*a6] = a4;
  v8.receiver = a1;
  v8.super_class = a7();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t BridgedUpSellData.variantVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAUpSellData_variantVersion);
  v2 = *(v0 + OBJC_IVAR___BAUpSellData_variantVersion + 8);

  return v1;
}

id BridgedUpSellData.__allocating_init(location:variant:variantVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___BAUpSellData_location] = a1;
  *&v9[OBJC_IVAR___BAUpSellData_variant] = a2;
  v10 = &v9[OBJC_IVAR___BAUpSellData_variantVersion];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id BridgedUpSellData.init(location:variant:variantVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___BAUpSellData_location] = a1;
  *&v4[OBJC_IVAR___BAUpSellData_variant] = a2;
  v5 = &v4[OBJC_IVAR___BAUpSellData_variantVersion];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for BridgedUpSellData();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_A7638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BAUpSellData_location);
  if (v2 >= 4)
  {
    v7 = *(v1 + OBJC_IVAR___BAUpSellData_location);
LABEL_8:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v3 = *(v1 + OBJC_IVAR___BAUpSellData_variant);
  if (v3 >= 3)
  {
    v8 = *(v1 + OBJC_IVAR___BAUpSellData_variant);
    goto LABEL_8;
  }

  v5 = *(v1 + OBJC_IVAR___BAUpSellData_variantVersion);
  v4 = *(v1 + OBJC_IVAR___BAUpSellData_variantVersion + 8);
  *a1 = v2;
  *(a1 + 1) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

id sub_A7784(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[*a4] = a1;
  *&v13[*a5] = a2;
  *&v13[*a6] = a3;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_A783C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  *&v7[*a4] = a1;
  *&v7[*a5] = a2;
  *&v7[*a6] = a3;
  v9.receiver = v7;
  v9.super_class = a7();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_A78F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BAViewData_type);
  if (v2 >= 5)
  {
    v6 = *(v1 + OBJC_IVAR___BAViewData_type);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR___BAViewData_action);
    if (v3 >= 7)
    {
      v7 = *(v1 + OBJC_IVAR___BAViewData_action);
    }

    else
    {
      v4 = *(v1 + OBJC_IVAR___BAViewData_location);
      if (v4 < 3)
      {
        *a1 = v2;
        a1[1] = v3;
        a1[2] = v4;
        return result;
      }

      v8 = *(v1 + OBJC_IVAR___BAViewData_location);
    }
  }

  result = sub_1E1D50();
  __break(1u);
  return result;
}

Swift::Int sub_A7A10()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E1DD0(v1);
  return sub_1E1DE0();
}

Swift::Int sub_A7A58()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E1DD0(v1);
  return sub_1E1DE0();
}

uint64_t BridgedWidgetData.widgetFamily.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAWidgetData_widgetFamily);
  v2 = *(v0 + OBJC_IVAR___BAWidgetData_widgetFamily + 8);

  return v1;
}

uint64_t BridgedWidgetData.displayMode.getter()
{
  v1 = *(v0 + OBJC_IVAR___BAWidgetData_displayMode);
  v2 = *(v0 + OBJC_IVAR___BAWidgetData_displayMode + 8);

  return v1;
}

id BridgedWidgetData.__allocating_init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BAWidgetData_widgetFamily];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v13[OBJC_IVAR___BAWidgetData_displayMode];
  *v15 = a3;
  v15[1] = a4;
  v13[OBJC_IVAR___BAWidgetData_isContentExposed] = a5;
  v13[OBJC_IVAR___BAWidgetData_isStreakExposed] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id BridgedWidgetData.init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = &v6[OBJC_IVAR___BAWidgetData_widgetFamily];
  *v7 = a1;
  v7[1] = a2;
  v8 = &v6[OBJC_IVAR___BAWidgetData_displayMode];
  *v8 = a3;
  v8[1] = a4;
  v6[OBJC_IVAR___BAWidgetData_isContentExposed] = a5;
  v6[OBJC_IVAR___BAWidgetData_isStreakExposed] = a6;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BridgedWidgetData();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_A7D6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_A7DB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

id ContentSubType.bridgeType.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for BridgedContentSubType();
  v3 = objc_allocWithZone(v2);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 2;
      v8 = v3;
      v4 = &v8;
    }

    else
    {
      v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 3;
      v9.receiver = v3;
      v4 = &v9;
    }
  }

  else if (v1)
  {
    v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 1;
    v7 = v3;
    v4 = &v7;
  }

  else
  {
    v3[OBJC_IVAR___BAContentSubType_subTypeEnum] = 0;
    v6 = v3;
    v4 = &v6;
  }

  v4->super_class = v2;
  return [(objc_super *)v4 init];
}

char *sub_A7EB0(char *a1, int64_t a2, char a3)
{
  result = sub_A7F80(a1, a2, a3, *v3, &qword_2837C0, &qword_1F26E8);
  *v3 = result;
  return result;
}

char *sub_A7EE8(char *a1, int64_t a2, char a3)
{
  result = sub_A7F80(a1, a2, a3, *v3, &qword_2837B8, &qword_1F26E0);
  *v3 = result;
  return result;
}

char *sub_A7F20(char *a1, int64_t a2, char a3)
{
  result = sub_A80A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A7F40(char *a1, int64_t a2, char a3)
{
  result = sub_A81BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A7F60(char *a1, int64_t a2, char a3)
{
  result = sub_A82C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A7F80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_3D68(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_A80A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_2837A0, &qword_1F26C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}
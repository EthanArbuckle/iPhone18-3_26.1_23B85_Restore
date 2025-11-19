uint64_t Shelf.ContentsMetadata.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1E1AF762C();
  Shelf.ContentsMetadata.hash(into:)(v4);
  return sub_1E1AF767C();
}

uint64_t sub_1E192A280()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1E1AF762C();
  Shelf.ContentsMetadata.hash(into:)(v4);
  return sub_1E1AF767C();
}

uint64_t sub_1E192A2E0()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1E1AF762C();
  Shelf.ContentsMetadata.hash(into:)(v4);
  return sub_1E1AF767C();
}

unint64_t sub_1E192A33C()
{
  result = qword_1EE1F5BC0;
  if (!qword_1EE1F5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F5BC0);
  }

  return result;
}

uint64_t ProductMediaMetadata.platformDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductMediaMetadata.allPlatformsDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProductMediaMetadata.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v6 = v1[1];
  sub_1E1AF5F0C();

  if ((*(v3 + 56) & 1) == 0)
  {
    if ((*(v3 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = *(v3 + 48);
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1E6900390](v4);
  }

  sub_1E166D5B4(a1, v6);
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();

  sub_1E1AF764C();
  return sub_1E1AF765C();
}

uint64_t ProductMediaMetadata.hashValue.getter()
{
  sub_1E1AF762C();
  ProductMediaMetadata.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E192A664()
{
  sub_1E1AF762C();
  ProductMediaMetadata.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E192A6A8()
{
  sub_1E1AF762C();
  ProductMediaMetadata.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t ProductReviewsMetadata.reviewSummaryTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProductReviewsMetadata.hash(into:)()
{
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t ProductReviewsMetadata.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF764C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E192A7F0()
{
  sub_1E1AF762C();
  sub_1E1AF764C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E192A854()
{
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t sub_1E192A8A8()
{
  sub_1E1AF762C();
  sub_1E1AF764C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E192A908(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t TodaySectionDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = JSONObject.appStoreColor.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  *a3 = v10;
  sub_1E1AF381C();
  sub_1E192B9C0();
  sub_1E1AF369C();
  v12 = sub_1E1AF39DC();
  (*(*(v12 - 8) + 8))(a2, v12);
  v11(a1, v6);
  result = (v11)(v9, v6);
  *(a3 + 8) = v15;
  return result;
}

id TodaySectionDisplayOptions.debugSectionTypeIndicatorColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

AppStoreKit::TodaySectionDisplayOptions::GroupDisplayStyle_optional __swiftcall TodaySectionDisplayOptions.GroupDisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodaySectionDisplayOptions.GroupDisplayStyle.rawValue.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869768040;
  }
}

uint64_t sub_1E192AC48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1869768040;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684632167;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869768040;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E192AD30()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E192ADC4()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E192AE44()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E192AEE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632167;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869768040;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TodaySectionDisplayOptions.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_1E1AF764C();
    v2 = v1;
    sub_1E1AF6D1C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1AF5F0C();
}

uint64_t TodaySectionDisplayOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    v2 = v1;
    sub_1E1AF6D1C();
  }

  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E192B0E0()
{
  sub_1E1AF762C();
  TodaySectionDisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E192B138()
{
  sub_1E1AF762C();
  TodaySectionDisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

BOOL _s11AppStoreKit20ProductMediaMetadataV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v25 = *(a1 + 4);
  v26 = *(a1 + 5);
  v6 = a1[13];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v23 = *(a2 + 48);
  v24 = *(a1 + 48);
  v21 = *(a2 + 49);
  v22 = *(a1 + 49);
  v13 = a2[13];
  if ((sub_1E145C05C(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(v7 + 56);
  if (*(v2 + 56))
  {
    if (!*(v7 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 48) != *(v7 + 48))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if ((sub_1E156F3B4(v3, v8) & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_1E1AF74AC() & 1) == 0 || (v25 != v11 || v26 != v12) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v24)
  {
    v15 = 0x6D6F74746F62;
  }

  else
  {
    v15 = 7368564;
  }

  if (v24)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v23)
  {
    v17 = 0x6D6F74746F62;
  }

  else
  {
    v17 = 7368564;
  }

  if (v23)
  {
    v18 = 0xE600000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  if (v15 == v17 && v16 == v18)
  {

    if (v22 != v21)
    {
      return 0;
    }

    return v6 == v13;
  }

  v20 = sub_1E1AF74AC();

  result = 0;
  if ((v20 & 1) != 0 && ((v22 ^ v21) & 1) == 0)
  {
    return v6 == v13;
  }

  return result;
}

uint64_t _s11AppStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_1E1355E88();
      v6 = v4;
      v7 = v2;
      v8 = sub_1E1AF6D0C();

      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  if (v4)
  {
    goto LABEL_24;
  }

LABEL_4:
  v9 = 0xE400000000000000;
  v10 = 1684632167;
  if (v3 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1869768040;
  }

  if (v3)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1684632167;
  if (v5 != 1)
  {
    v14 = 0x647261646E617473;
    v13 = 0xE800000000000000;
  }

  if (v5)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1869768040;
  }

  if (v5)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1AF74AC();
  }

  return v17 & 1;
}

BOOL _s11AppStoreKit5ShelfC16ContentsMetadataO2eeoiySbAE_AEtFZ_0(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  v62[0] = *a1;
  v62[1] = v3;
  v62[2] = v5;
  v62[3] = v4;
  v62[4] = v7;
  v62[5] = v6;
  v62[6] = v8;
  v62[7] = v9;
  v62[8] = v10;
  v62[9] = v12;
  v62[10] = v11;
  v62[11] = v14;
  v16 = v8 >> 29;
  v62[12] = v13;
  v62[13] = v15;
  if (v8 >> 29 <= 2)
  {
    if (!v16)
    {
      if ((v15 & 0xE0000000) != 0)
      {
        v55 = v2;
        v56 = v3;
        v57 = v5;
        v58 = v4;
        v59 = v7;
        v60 = v6;
        v61 = v8 & 0xFFFFFFFF1FFFFFFFLL;
        sub_1E192C078(&v55, &v47);
        goto LABEL_26;
      }

      v55 = v2;
      v56 = v3;
      v57 = v5;
      v58 = v4;
      v59 = v7;
      v60 = v6;
      LOWORD(v61) = v8 & 0x101;
      HIDWORD(v61) = HIDWORD(v8);
      v47 = v9;
      v48 = v10;
      v49 = v12;
      v50 = v11;
      v51 = v14;
      v52 = v13;
      v53 = v15 & 0x101;
      v54 = HIDWORD(v15);
      v42 = v6;
      v45 = v5;
      v38 = v4;
      v40 = v7;
      sub_1E189EE00(v9, v10, v12, v11, v14, v13, v15);
      sub_1E189EE00(v2, v3, v45, v38, v40, v42, v8);
      sub_1E189EE00(v9, v10, v12, v11, v14, v13, v15);
      sub_1E189EE00(v2, v3, v45, v38, v40, v42, v8);
      v30 = _s11AppStoreKit20ProductMediaMetadataV2eeoiySbAC_ACtFZ_0(&v55, &v47);
LABEL_31:
      v36 = v2;
      v31 = v30;
      sub_1E192C010(v62);
      sub_1E192B928(v9, v10, v12, v11, v14, v13, v15);
      sub_1E192B928(v36, v3, v45, v38, v40, v42, v8);
      return v31;
    }

    if (v16 != 1)
    {
      if ((v15 & 0xE0000000) != 0x40000000)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if ((v15 & 0xE0000000) != 0x20000000)
    {

      goto LABEL_26;
    }

    if ((v9 ^ v2))
    {
      v17 = v9;
      v18 = v10;
      v44 = v5;
      v19 = v4;
      v20 = v11;
      v21 = v7;
      v22 = v6;
      sub_1E189EE00(v17, v18, v12, v20, v14, v13, v15);
      v23 = v2;
      v24 = v3;
      v25 = v44;
      v26 = v19;
      v27 = v21;
      v28 = v22;
      v29 = v8;
LABEL_27:
      sub_1E189EE00(v23, v24, v25, v26, v27, v28, v29);
      sub_1E192C010(v62);
      return 0;
    }

    v39 = v4;
    v41 = v7;
    v43 = v6;
    if (v3 != v10 || v5 != v12)
    {
      v46 = v5;
      v37 = sub_1E1AF74AC();
      sub_1E189EE00(v9, v10, v12, v11, v14, v13, v15);
      sub_1E189EE00(v2, v3, v46, v39, v41, v43, v8);
      sub_1E192C010(v62);
      return (v37 & 1) != 0;
    }

    v34 = v9;
    v35 = v5;
    sub_1E189EE00(v34, v3, v5, v11, v14, v13, v15);
    sub_1E189EE00(v2, v3, v35, v39, v41, v43, v8);
LABEL_35:
    sub_1E192C010(v62);
    return 1;
  }

  if (v8 >> 29 > 4)
  {
    if (v16 == 5)
    {
      if ((v15 & 0xE0000000) != 0xA0000000)
      {
        v32 = v2;
        goto LABEL_26;
      }

      v55 = v2;
      LOBYTE(v56) = v3;
      v45 = v5;
      v47 = v9;
      LOBYTE(v48) = v10;
      v38 = v4;
      v40 = v7;
      v42 = v6;
      sub_1E189EE00(v9, v10, v12, v11, v14, v13, v15);
      sub_1E189EE00(v2, v3, v45, v38, v40, v42, v8);
      sub_1E189EE00(v9, v10, v12, v11, v14, v13, v15);
      sub_1E189EE00(v2, v3, v45, v38, v40, v42, v8);
      v30 = _s11AppStoreKit26TodaySectionDisplayOptionsV2eeoiySbAC_ACtFZ_0(&v55, &v47);
      goto LABEL_31;
    }

    if ((v15 & 0xE0000000) != 0xC0000000 || v10 | v9 | v12 | v11 | v14 | v13 || v15 != 3221225472)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  if (v16 != 3)
  {
    if ((v15 & 0xE0000000) == 0x80000000)
    {
      goto LABEL_19;
    }

LABEL_26:
    v23 = v9;
    v24 = v10;
    v25 = v12;
    v26 = v11;
    v27 = v14;
    v28 = v13;
    v29 = v15;
    goto LABEL_27;
  }

  if ((v15 & 0xE0000000) != 0x60000000)
  {
    goto LABEL_26;
  }

LABEL_19:
  sub_1E192C010(v62);
  return v2 == v9;
}

void sub_1E192B928(void *a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a7 >> 29;
  if (a7 >> 29 == 5)
  {
  }

  else
  {
    if (v8 == 1)
    {
    }

    else
    {
      if (v8)
      {
        return;
      }
    }
  }
}

unint64_t sub_1E192B9C0()
{
  result = qword_1EE1D7BE8[0];
  if (!qword_1EE1D7BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D7BE8);
  }

  return result;
}

unint64_t sub_1E192BA18()
{
  result = qword_1ECEBB350;
  if (!qword_1ECEBB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB350);
  }

  return result;
}

unint64_t sub_1E192BA70()
{
  result = qword_1ECEBB358;
  if (!qword_1ECEBB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB358);
  }

  return result;
}

unint64_t sub_1E192BAC8()
{
  result = qword_1ECEBB360;
  if (!qword_1ECEBB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB360);
  }

  return result;
}

unint64_t sub_1E192BB20()
{
  result = qword_1ECEBB368;
  if (!qword_1ECEBB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB368);
  }

  return result;
}

unint64_t sub_1E192BB78()
{
  result = qword_1ECEBB370;
  if (!qword_1ECEBB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB370);
  }

  return result;
}

unint64_t sub_1E192BBD0()
{
  result = qword_1ECEBB378;
  if (!qword_1ECEBB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB378);
  }

  return result;
}

unint64_t sub_1E192BC28()
{
  result = qword_1ECEBB380;
  if (!qword_1ECEBB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB380);
  }

  return result;
}

unint64_t sub_1E192BC80()
{
  result = qword_1ECEBB388;
  if (!qword_1ECEBB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB388);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit5ShelfC16ContentsMetadataO(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 >> 30 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 29;
  }
}

uint64_t sub_1E192BCF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF9 && *(a1 + 56))
  {
    return (*a1 + 1073741818);
  }

  HIDWORD(v3) = (*(a1 + 48) >> 2) & 0x7FFFF80 | (*(a1 + 48) >> 1);
  LODWORD(v3) = *(a1 + 48);
  v4 = (v3 >> 29) ^ 0x3FFFFFFF;
  if (v4 >= 0x3FFFFFF9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1E192BD54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1073741818;
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (4 * (((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27))) & 0xFFFFFE00 | (2 * ((((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27)) & 0x7FLL));
    }
  }

  return result;
}

uint64_t sub_1E192BDE8(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 48) = *(result + 48) & 0xFFFFFFFF00000101 | (a2 << 29);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 3221225472;
  }

  return result;
}

uint64_t sub_1E192BE8C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E192BEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E192BF70()
{
  result = qword_1ECEBB390;
  if (!qword_1ECEBB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB390);
  }

  return result;
}

uint64_t sub_1E192BFC4()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E192C010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E192C078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E192C158()
{
  result = sub_1E1AF5DBC();
  qword_1EE1D54E8 = result;
  return result;
}

id static ArcadePageShelfRefreshNotification.notificationName.getter()
{
  if (qword_1EE1D54E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D54E8;

  return v1;
}

uint64_t ImpressionsScrollObserver.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = sub_1E15A2AD4(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ImpressionsScrollObserver.init(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = sub_1E15A2AD4(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = a1;
  return v1;
}

void ImpressionsScrollObserver.collectionView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ImpressionsScrollObserver.collectionView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1E192C3C4;
}

void sub_1E192C3C4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall ImpressionsScrollObserver.didScroll(in:)(UIScrollView *in)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 && ([(UIScrollView *)in safeAreaInsets], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v13 = v3 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), *v13 = v6, *(v13 + 8) = v8, *(v13 + 16) = v10, *(v13 + 24) = v12, *(v13 + 32) = 0, [(UIScrollView *)in bounds], v14 = *(v3 + 16), v15 = *(v14 + 16), v16 = v3 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), v15))
  {
    v17 = 0;
    v18 = (v14 + 40);
    while (v17 < *(v14 + 16))
    {
      if (*v18 != 1 || (*(v16 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_1E1AF6B3C();
      }

      ++v17;
      sub_1E1AF4AEC();

      v18 += 16;
      if (v15 == v17)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    swift_beginAccess();
    v19 = 0;
    v20 = *(v2 + 32);
    v23 = *(v20 + 64);
    v21 = v20 + 64;
    v22 = v23;
    v24 = 1 << *(v21 - 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_13:
      v26 &= v26 - 1;
    }

    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v27)
      {
        return;
      }

      v26 = *(v21 + 8 * v28);
      ++v19;
      if (v26)
      {
        v19 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ImpressionsScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA180);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v54[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v54[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v54[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54[-v13];
  v15 = sub_1E1AF468C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54[-v22];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();

  v24 = sub_1E1AF46DC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    return sub_1E1308058(v14, &unk_1ECEB1770);
  }

  sub_1E1AF46AC();
  (*(v25 + 8))(v14, v24);
  v27 = v16[4];
  v70 = v23;
  v59 = v27;
  v60 = v16 + 4;
  v27(v23, v20, v15);
  v28 = *(a2 + *(type metadata accessor for ShelfLayoutContext() + 20));
  swift_beginAccess();
  v29 = *(v2 + 32);
  v30 = *(v29 + 16);
  v31 = v16;
  v61 = a2;
  v57 = v28;
  v58 = v3;
  if (v30 && (v32 = sub_1E15A47C8(v28), (v33 & 1) != 0))
  {
    v34 = *(*(v29 + 56) + 8 * v32);

    swift_endAccess();
    v36 = v67;
    v35 = v68;
    if (v34)
    {
      v37 = v31[2];
      v62 = v34;
      v38 = v34 + OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID;
      v39 = v69;
      v37(v69, v38, v15);
      v40 = v31[7];
      v40(v39, 0, 1, v15);
      v55 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    swift_endAccess();
    v36 = v67;
    v35 = v68;
  }

  v40 = v31[7];
  v55 = 1;
  v39 = v69;
  v40(v69, 1, 1, v15);
  v62 = 0;
  v37 = v31[2];
LABEL_9:
  v56 = v37;
  v37(v35, v70, v15);
  v40(v35, 0, 1, v15);
  v41 = *(v66 + 48);
  sub_1E173AFC0(v39, v36);
  sub_1E173AFC0(v35, v36 + v41);
  v67 = v31;
  v42 = v31[6];
  if (v42(v36, 1, v15) == 1)
  {
    sub_1E1308058(v35, &qword_1ECEB8960);
    sub_1E1308058(v39, &qword_1ECEB8960);
    if (v42(v36 + v41, 1, v15) == 1)
    {
      sub_1E1308058(v36, &qword_1ECEB8960);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v43 = v63;
  sub_1E173AFC0(v36, v63);
  if (v42(v36 + v41, 1, v15) == 1)
  {
    sub_1E1308058(v68, &qword_1ECEB8960);
    sub_1E1308058(v69, &qword_1ECEB8960);
    (*(v67 + 1))(v43, v15);
LABEL_14:
    sub_1E1308058(v36, &qword_1ECEBA180);
    v44 = v59;
LABEL_15:
    v45 = v58;
    v46 = *(v58 + 16);
    v47 = v65;
    v56(v65, v70, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    type metadata accessor for ImpressionIdScrollObserver();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v49 + 16) = v46;
    v44(v49 + OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID, v47, v15);
    swift_unknownObjectWeakAssign();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v45 + 32);
    *(v45 + 32) = 0x8000000000000000;
    sub_1E159A2F4(v49, v57, isUniquelyReferenced_nonNull_native);
    *(v45 + 32) = v71;
    swift_endAccess();
LABEL_18:
    ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(v64, v61);

    return (*(v67 + 1))(v70, v15);
  }

  v51 = v65;
  v44 = v59;
  v59(v65, (v36 + v41), v15);
  sub_1E192CEF4();
  v52 = sub_1E1AF5DAC();
  v53 = *(v67 + 1);
  v53(v51, v15);
  sub_1E1308058(v68, &qword_1ECEB8960);
  sub_1E1308058(v69, &qword_1ECEB8960);
  v53(v63, v15);
  sub_1E1308058(v36, &qword_1ECEB8960);
  if ((v52 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ((v55 & 1) == 0)
  {
    goto LABEL_18;
  }

  return (*(v67 + 1))(v70, v15);
}

uint64_t ImpressionsScrollObserver.deinit()
{

  MEMORY[0x1E6901750](v0 + 24);

  return v0;
}

uint64_t ImpressionsScrollObserver.__deallocating_deinit()
{

  MEMORY[0x1E6901750](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1E192CEF4()
{
  result = qword_1EE1D2998;
  if (!qword_1EE1D2998)
  {
    sub_1E1AF468C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2998);
  }

  return result;
}

uint64_t static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_1EE1FA210 = a1;
}

uint64_t sub_1E192D01C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1E192E94C(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t InAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_1E192E94C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*InAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E192D13C;
}

void sub_1E192D13C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E192E94C(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E192E94C(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id InAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1E139D580(v2, v3);
}

void InAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void InAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t InAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v11 = *a6;
  v64 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v15 = a6[5];
  v16 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 156) = 65;
  v66 = a1;
  v67 = qword_1EE1FA210;
  v65 = a5;
  if (!qword_1EE1FA210)
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    __swift_project_value_buffer(v17, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v11;
  *(v7 + 151) = v64;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v15;
  if (v16 == 3)
  {
    v77[0] = v11;
    v77[1] = v64;
    v77[2] = v12;
    v77[3] = v13;
    v77[4] = v14;
    v77[5] = v15;
    sub_1E148BBAC(v77, &v68, v18);
    LOBYTE(v16) = v68;
    v19.i32[0] = *(&v68 + 1);
    v20 = vmovl_u8(v19).u64[0];
    v21 = BYTE5(v68);
  }

  else
  {
    v22.i64[0] = 0xFFFFFFFFFFFFLL;
    v22.i64[1] = 0xFFFFFFFFFFFFLL;
    v23 = vandq_s8(vdupq_n_s64(v16), v22);
    v20 = vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_1E1B04480), vshlq_u64(v23, xmmword_1E1B04470)));
    v21 = BYTE5(v16);
  }

  *(v7 + 144) = v16;
  v24 = v7;
  *(v7 + 145) = vuzp1_s8(v20, v20).u32[0];
  *(v7 + 149) = v21;
  v25 = a5;
  v26 = a1;
  if (!a1)
  {
    v29 = 0;
    v28 = 16;
    v30 = 3;
    goto LABEL_12;
  }

  v27 = *(a1 + 96);
  v28 = *(a1 + 97);
  v30 = *(a1 + 104);
  v29 = *(a1 + 112);
  sub_1E139D580(v30, v29);
  if (v27 == 7)
  {
LABEL_12:
    v27 = 0;
  }

  if (v28 == 16)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  if (v30 == 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  *(v24 + 120) = v27;
  *(v24 + 121) = v31;
  if (v30 == 3)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  *(v24 + 128) = v32;
  *(v24 + 136) = v33;
  if (!a1 || (v34 = *(a1 + 64)) == 0)
  {
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;

    v46 = v67;

    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  v35 = *(a1 + 56);
  ObjectType = swift_getObjectType();
  v68 = v35;
  v69 = v34;
  v37 = *(a4 + 56);

  swift_retain_n();

  v26 = v66;
  v38 = v37(&v68, ObjectType, a4);
  v40 = v39;

  *(v24 + 88) = v38;
  *(v24 + 96) = v40;
  v41 = swift_getObjectType();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = *(v40 + 72);
  swift_unknownObjectRetain();

  v43(v24, sub_1E192EA4C, v42, v41, v40);

  swift_unknownObjectRelease();

  if (!*(v24 + 88))
  {
    LOBYTE(v49) = 0;
LABEL_33:
    v46 = v67;
    goto LABEL_38;
  }

  v44 = *(v24 + 96);
  v45 = swift_getObjectType();
  (*(v44 + 16))(&v68, v45, v44);
  if (!(v74 >> 60))
  {
    LOBYTE(v49) = v68 != 1;
    goto LABEL_33;
  }

  v46 = v67;
  if (v74 >> 60 != 8)
  {
    goto LABEL_37;
  }

  v47 = v73 | v75;
  v48 = v71 | v70 | v69;
  if (v74 == 0x8000000000000000 && !(v47 | v68 | v72 | v48))
  {
    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  if (v74 != 0x8000000000000000 || v68 != 4 || (v49 = v47 | v72 | v48) != 0)
  {
LABEL_37:
    sub_1E139CEA8(&v68);
    LOBYTE(v49) = 1;
  }

LABEL_38:
  *(v24 + 157) = v49;
  if (v46)
  {
    v50 = *(v24 + 40);
    if (v50)
    {
      v51 = v50[22];
      v52 = v50[23];
      v54 = v50[3];
      v53 = v50[4];
      swift_beginAccess();
      sub_1E1300B24(v67 + 16, &v68);
      v55 = v71;
      v56 = v72;
      __swift_project_boxed_opaque_existential_1Tm(&v68, v71);
      v76[0] = v54;
      v76[1] = v53;
      v57 = *(v56 + 32);

      v57(&v78, v76, v51, v52, v55, v56);
      v26 = v66;
      v25 = v65;

      __swift_destroy_boxed_opaque_existential_1(&v68);
      *(v24 + 156) = v78;
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v50;
      v59[4] = v51;
      v59[5] = v52;

      InAppPurchaseStateDataSource.addObserver(_:action:)(v24, sub_1E192EA40, v59);
    }
  }

  if (v26)
  {
    if ((*(v26 + 136) & 1) == 0)
    {
      v60 = [objc_opt_self() defaultCenter];

      v61 = sub_1E1AF5DBC();

      [v60 addObserver:v24 selector:sel_restrictionsDidChange_ name:v61 object:v25];

      swift_unknownObjectRelease();

      goto LABEL_46;
    }
  }

  swift_unknownObjectRelease();
LABEL_46:

  return v24;
}

uint64_t sub_1E192DA68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    if (v12 >> 60)
    {
      if (v12 >> 60 != 8)
      {
LABEL_9:
        sub_1E139CEA8(v9);
LABEL_12:
        LOBYTE(v8) = 1;
        goto LABEL_13;
      }

      v6 = v11 | v13;
      v7 = v9[3] | v9[2] | v9[1];
      if (v12 != 0x8000000000000000 || v6 | v9[0] | v10 | v7)
      {
        if (v12 == 0x8000000000000000 && v9[0] == 4)
        {
          v8 = v6 | v10 | v7;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v9[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v8) = 0;
LABEL_13:
    *(v4 + 157) = v8;
    _s11AppStoreKit02InA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E192DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(a3 + 24);
    v12 = *(a3 + 32);
    swift_beginAccess();
    sub_1E1300B24(a1 + 16, v16);
    v13 = v17;
    v14 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v15[0] = v11;
    v15[1] = v12;
    (*(v14 + 32))(&v19, v15, a4, a5, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    *(v10 + 156) = v19;
    _s11AppStoreKit02InA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t InAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  if (qword_1EE1FA210)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_1E1337DEC(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1E139D53C(*(v1 + 128), *(v1 + 136));
  return v1;
}

uint64_t InAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  InAppPurchaseOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E192DD78(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_1E192DEE4(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_1E1595560(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x80000001E1B5B320;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_1E192DE54(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_1E192DF9C(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_1E1595560(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E192DEE4()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1E1595560(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_1E1595560(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_1E192DF9C()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1E1595560(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_1E1595560(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_1E192E054()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && (*(v0 + 156) & 0xC0) == 0x40)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_1E13E44F8(v7);
    }
  }
}

uint64_t sub_1E192E1F8(uint64_t a1, uint64_t a2)
{
  sub_1E192E94C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E192E234(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1E192D13C;
}

void _s11AppStoreKit02InA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = *(v0 + 156);
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v3 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v5._countAndFlagsBits = 0xD00000000000001CLL;
          v5._object = 0x80000001E1B69190;
          v6._countAndFlagsBits = 0;
          v6._object = 0xE000000000000000;
          v7 = localizedString(_:comment:)(v5, v6);
          if (qword_1ECEB0DE8 != -1)
          {
            swift_once();
          }

          LOWORD(v55) = word_1ECEB4680;
          v56 = qword_1ECEB4688;
          v57 = qword_1ECEB4690;
          v8 = *(v3 + 32);
          sub_1E139D580(qword_1ECEB4688, qword_1ECEB4690);
          v8(v7._countAndFlagsBits, v7._object, 0, 0, &v55, ObjectType, v3);
          swift_unknownObjectRelease();

          sub_1E139D53C(v56, v57);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "ACCESSIBILITY_LOADING_BUTTON";
        v10 = 0xD00000000000001CLL;
      }

      else
      {
        v10 = 0xD00000000000001BLL;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v0 + 24);
          v35 = swift_getObjectType();
          v36._object = 0x80000001E1B5B2E0;
          v36._countAndFlagsBits = 0xD00000000000001BLL;
          v37._countAndFlagsBits = 0;
          v37._object = 0xE000000000000000;
          v38 = localizedString(_:comment:)(v36, v37);
          if (qword_1ECEB0DE8 != -1)
          {
            swift_once();
          }

          LOWORD(v55) = word_1ECEB4680;
          v56 = qword_1ECEB4688;
          v57 = qword_1ECEB4690;
          v39 = *(v34 + 32);
          sub_1E139D580(qword_1ECEB4688, qword_1ECEB4690);
          v39(v38._countAndFlagsBits, v38._object, 0, 0, &v55, v35, v34);
          swift_unknownObjectRelease();

          sub_1E139D53C(v56, v57);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "OfferButton.Title.Update";
      }

      v40 = *(v0 + 24);
      v41 = swift_getObjectType();
      v42._object = (v9 | 0x8000000000000000);
      v42._countAndFlagsBits = v10;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v44 = localizedString(_:comment:)(v42, v43);
      (*(v40 + 128))(v44._countAndFlagsBits, v44._object, v41, v40);
      goto LABEL_31;
    }

    v17 = sub_1E192DD78(v1 & 1);
    v19 = v18;
    v20 = sub_1E192DE54(v1 & 1);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v0 + 24);
        v25 = swift_getObjectType();
        v26 = *(v0 + 154);
        v58 = *(v0 + 150);
        v59 = v26;
        v27 = *(v0 + 128);
        v28 = *(v0 + 136);
        LOWORD(v55) = *(v0 + 120);
        v56 = v27;
        v57 = v28;
        v29 = *(v24 + 24);
        sub_1E139D580(v27, v28);
        v29(v17, v19, v22, v23, &v58, 0, 0, &v55, v25, v24);
        swift_unknownObjectRelease();
        sub_1E139D53C(v56, v57);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 24);
        v31 = swift_getObjectType();
        v55 = v17;
        v56 = v19;
        MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
        MEMORY[0x1E68FECA0](v22, v23);

        (*(v30 + 128))(v55, v56, v31, v30);
LABEL_31:
        swift_unknownObjectRelease();
LABEL_34:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v52 = *(v0 + 24);
        if ((*(v0 + 156) & 0xC0) == 0x40)
        {
          __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
          LOBYTE(v58) = 0;
          v53 = RestrictionsProtocol.doesAllow(_:properties:)(&v58, *(v0 + 40));
        }

        else
        {
          v53 = 1;
        }

        v54 = swift_getObjectType();
        (*(v52 + 16))(v53, v54, v52);
        goto LABEL_39;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = *(v0 + 24);
        v46 = swift_getObjectType();
        v47 = *(v0 + 128);
        v48 = *(v0 + 136);
        LOWORD(v55) = *(v0 + 120);
        v56 = v47;
        v57 = v48;
        v49 = *(v45 + 32);
        sub_1E139D580(v47, v48);
        v49(v17, v19, 0, 0, &v55, v46, v45);
        swift_unknownObjectRelease();
        sub_1E139D53C(v56, v57);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = *(v0 + 24);
        v51 = swift_getObjectType();
        (*(v50 + 128))(v17, v19, v51, v50);
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

  if (v2 != 2)
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v32 = *(v0 + 24);
    v33 = swift_getObjectType();
    (*(v32 + 16))(0, v33, v32);
LABEL_39:
    swift_unknownObjectRelease();
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v0 + 24);
    v12 = swift_getObjectType();
    v13 = *(v0 + 148);
    v58 = *(v0 + 144);
    v59 = v13;
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    LOWORD(v55) = *(v0 + 120);
    v56 = v14;
    v57 = v15;
    v16 = *(v11 + 56);
    sub_1E139D580(v14, v15);
    v16(0, 0, &v58, &v55, v1 & 1, v12, v11);
    swift_unknownObjectRelease();
    sub_1E139D53C(v56, v57);
  }
}

void sub_1E192E94C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s11AppStoreKit02InA28PurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_1E192EAA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 156) & 0xC0) == 0x40)
    {
      __swift_project_boxed_opaque_existential_1Tm((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Gladiator.__allocating_init()()
{
  type metadata accessor for Gladiator();
  v0 = swift_allocObject();
  *(v0 + 24) = 2;
  v1 = [objc_opt_self() defaultSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  v3 = v2;
  v4 = sub_1E1AF5DBC();
  [v3 setSessionDescription_];

  return v0;
}

uint64_t sub_1E192EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E1AEFCAC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E13ECBA0(v11);
    result = sub_1E1AF71FC();
    __break(1u);
  }

  else
  {
    v16 = *(v13 + 32);
    v16(v15, v11, v12);
    v17 = *(v4 + 16);
    type metadata accessor for GladiatorRule();
    v18 = swift_allocObject();
    v19 = &v18[OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath];
    *v19 = 0xD000000000000019;
    *(v19 + 1) = 0x80000001E1B7EFA0;
    *(v18 + 2) = a1;
    *(v18 + 3) = a2;
    *(v18 + 4) = a3;
    *(v18 + 5) = a4;
    v16(&v18[OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL], v15, v12);
    *(v18 + 6) = v17;
    v20 = v17;
    return v18;
  }

  return result;
}

uint64_t sub_1E192EED0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];

  sub_1E1AEFCAC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E13ECBA0(v5);
    result = sub_1E1AF71FC();
    __break(1u);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v9, v5, v6);
    v15 = *(v1 + 16);
    type metadata accessor for GladiatorRule();
    v16 = swift_allocObject();
    v17 = &v16[OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath];
    *v17 = 0xD000000000000019;
    *(v17 + 1) = 0x80000001E1B7EFA0;
    *(v16 + 2) = v11;
    *(v16 + 3) = v10;
    *(v16 + 4) = v13;
    *(v16 + 5) = v12;
    v14(&v16[OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL], v9, v6);
    *(v16 + 6) = v15;
    v18 = v15;
    return v16;
  }

  return result;
}

uint64_t Gladiator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ShelfMarker.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E192F24C()
{
  result = qword_1ECEBB3A8;
  if (!qword_1ECEBB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB3A8);
  }

  return result;
}

uint64_t sub_1E192F2A0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E192F314()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E192F368@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

uint64_t pickPerformanceTunedValue<A>(poor:fair:good:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 != 2)
  {
    a3 = a2;
  }

  if (a4)
  {
    a1 = a3;
  }

  return (*(*(a5 - 8) + 16))(a6, a1, a5);
}

void *GuidedSearchTokenToggleAction.__allocating_init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = sub_1E1AEFEAC();
  v34[0] = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a5;
  v17 = (v15 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v17 = a3;
  v17[1] = a4;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v16;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v18 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v19 = sub_1E1AF3E1C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v15 + v18, a6, v19);
  v21 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  v23 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v25 = v36;
    *v24 = v35;
    *(v24 + 1) = v25;
    *(v24 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v12;
    v28 = a6;
    v29 = a1;
    v30 = a2;
    v32 = v31;
    (*(v34[0] + 8))(v14, v27);
    v34[1] = v26;
    v34[2] = v32;
    a2 = v30;
    a1 = v29;
    a6 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v20 + 8))(a6, v19);
  sub_1E1308058(v38, &unk_1ECEB5670);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = 0;
  v15[5] = 0;
  return v15;
}

void *GuidedSearchTokenToggleAction.init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a2;
  v33 = sub_1E1AEFEAC();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a5;
  v21 = (v7 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v21 = a3;
  v21[1] = a4;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v19;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v18 + 16))(v20, a6, v17);
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = (v7 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E138853C(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v32 + 8))(v13, v33);
    v36 = v24;
    v37 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  (*(v18 + 8))(a6, v17);
  sub_1E1308058(v44, &unk_1ECEB5670);
  v27 = v7 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_1E134B7C8(v16, v7 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v29 = v35;
  v7[2] = v34;
  v7[3] = v29;
  v7[4] = 0;
  v7[5] = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

void (**GuidedSearchTokenToggleAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v43 = v3;
  v44 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v47 = a1;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v32 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v33 = 0x6F54746567726174;
    v34 = v44;
    v33[1] = 0xEB000000006E656BLL;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v24(v47, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v26 = v20;
  v26[1] = v22;
  v27 = v47;
  sub_1E1AF381C();
  sub_1E1611548();
  sub_1E1AF36DC();
  v25(v17, v49);
  if (v50 == 15)
  {
    v28 = v27;
    v29 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v30, "searchOrigin");
    v31 = v44;
    v30[13] = 0;
    *(v30 + 7) = -5120;
    *(v30 + 2) = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v25(v28, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v44 = v25;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v50;
  (*(v11 + 16))(v14, v27, v49);
  v36 = v45;
  v35 = v46;
  v37 = v42;
  v38 = v48;
  (*(v46 + 16))(v42, v48, v45);
  v39 = v43;
  v40 = Action.init(deserializing:using:)(v14, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v35 + 8))(v38, v36);
  v44(v27, v49);
  return v4;
}

uint64_t GuidedSearchTokenToggleAction.targetToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);

  return v1;
}

uint64_t GuidedSearchTokenToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t GuidedSearchTokenToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedSearchTokenToggleAction()
{
  result = qword_1EE1E8B58;
  if (!qword_1EE1E8B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AppStoreKit::InformationRibbon::Alignment_optional __swiftcall InformationRibbon.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t InformationRibbon.Alignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x656966697473756ALL;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_1E1930424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656966697473756ALL;
  }

  else
  {
    v3 = 0x7265746E6563;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656966697473756ALL;
  }

  else
  {
    v5 = 0x7265746E6563;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E19304CC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1930550()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E19305C0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1930640@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E19306A0(uint64_t *a1@<X8>)
{
  v2 = 0x7265746E6563;
  if (*v1)
  {
    v2 = 0x656966697473756ALL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t InformationRibbon.__allocating_init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a6;
  sub_1E134FD1C(a1, &v28, &unk_1ECEB5670);
  if (*(&v29 + 1))
  {
    v17 = v29;
    *(v15 + 32) = v28;
    *(v15 + 48) = v17;
    *(v15 + 64) = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v22 = a7;
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    v26 = v18;
    v27 = v20;
    a7 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(a7, v15 + OBJC_IVAR____TtC11AppStoreKit17InformationRibbon_impressionMetrics);
  *(v15 + 16) = v25;
  *(v15 + 24) = a3 & 1;
  *(v15 + 25) = v23 & 1;
  *(v15 + 26) = v24 & 1;
  *(v15 + 27) = v16;
  return v15;
}

uint64_t InformationRibbon.init(id:badges:hasTopSeparator:hasBottomSeparator:separatorsAreFullWidth:alignment:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, int a5, char *a6, uint64_t a7)
{
  v8 = v7;
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  sub_1E134FD1C(a1, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v23 = a7;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v27 = v18;
    v28 = v20;
    a7 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v21 = v33;
  *(v8 + 32) = v32;
  *(v8 + 48) = v21;
  *(v8 + 64) = v34;
  sub_1E134B7C8(a7, v8 + OBJC_IVAR____TtC11AppStoreKit17InformationRibbon_impressionMetrics);
  *(v8 + 16) = v26;
  *(v8 + 24) = a3 & 1;
  *(v8 + 25) = v24 & 1;
  *(v8 + 26) = v25 & 1;
  *(v8 + 27) = v17;
  return v8;
}

uint64_t InformationRibbon.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v64 = sub_1E1AEFEAC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_1E1AF39DC();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v85 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60[-v8];
  v10 = sub_1E1AF380C();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v60[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v60[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v60[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v69 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60[-v24];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v76 = v5;
  v26 = *(v5 + 16);
  v70 = v9;
  v27 = v9;
  v28 = v71;
  v26(v27, a2, v71);
  v78 = v25;
  sub_1E1AF464C();
  v29 = v85;
  v75 = a2;
  v26(v85, a2, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB3B0);
  v77 = a1;
  sub_1E1AF381C();
  v26(v70, v29, v28);
  sub_1E1931480();
  v30 = v20;
  sub_1E1AF464C();
  if (*v84)
  {
    v70 = *v84;
    v31 = v28;
    v32 = v65;
    sub_1E1AF381C();
    v61 = sub_1E1AF370C();
    v33 = *(v72 + 8);
    v34 = v32;
    v35 = v73;
    v33(v34, v73);
    v36 = v66;
    sub_1E1AF381C();
    LODWORD(v72) = sub_1E1AF370C();
    v33(v36, v35);
    v37 = v67;
    sub_1E1AF381C();
    LODWORD(v66) = sub_1E1AF370C();
    v33(v37, v35);
    sub_1E1AF381C();
    sub_1E1931534();
    sub_1E1AF369C();
    v33(v30, v35);
    LODWORD(v67) = v84[0];
    v38 = v68;
    sub_1E1AF381C();
    v39 = sub_1E1AF37CC();
    if (v40)
    {
      *&v81 = v39;
      *(&v81 + 1) = v40;
    }

    else
    {
      v44 = v62;
      sub_1E1AEFE9C();
      v45 = sub_1E1AEFE7C();
      v47 = v46;
      (*(v63 + 8))(v44, v64);
      *&v81 = v45;
      *(&v81 + 1) = v47;
    }

    sub_1E1AF6F6C();
    v48 = v38;
    v49 = v35;
    v33(v48, v35);
    v51 = v75;
    v50 = v76;
    v52 = v69;
    sub_1E134FD1C(v78, v69, &unk_1ECEB1770);
    v43 = swift_allocObject();
    sub_1E134FD1C(v84, &v81, &unk_1ECEB5670);
    if (*(&v82 + 1))
    {
      v53 = v82;
      *(v43 + 32) = v81;
      *(v43 + 48) = v53;
      *(v43 + 64) = v83;
    }

    else
    {
      v54 = v62;
      sub_1E1AEFE9C();
      v55 = sub_1E1AEFE7C();
      v57 = v56;
      (*(v63 + 8))(v54, v64);
      v79 = v55;
      v80 = v57;
      v52 = v69;
      v50 = v76;
      sub_1E1AF6F6C();
      sub_1E1308058(&v81, &unk_1ECEB5670);
    }

    v58 = *(v50 + 8);
    v58(v51, v31);
    v33(v77, v49);
    sub_1E1308058(v84, &unk_1ECEB5670);
    v58(v85, v31);
    sub_1E1308058(v78, &unk_1ECEB1770);
    sub_1E134B7C8(v52, v43 + OBJC_IVAR____TtC11AppStoreKit17InformationRibbon_impressionMetrics);
    *(v43 + 16) = v70;
    *(v43 + 24) = v61 & 1;
    *(v43 + 25) = v72 & 1;
    *(v43 + 26) = v66 & 1;
    *(v43 + 27) = v67;
  }

  else
  {
    v41 = sub_1E1AF5A7C();
    sub_1E19316F4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v42 = 0x736567646162;
    v42[1] = 0xE600000000000000;
    v42[2] = v74;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E69AB690], v41);
    swift_willThrow();
    v43 = *(v76 + 8);
    (v43)(v75, v28);
    (*(v72 + 8))(v77, v73);
    (v43)(v85, v28);
    sub_1E1308058(v78, &unk_1ECEB1770);
  }

  return v43;
}

unint64_t sub_1E1931480()
{
  result = qword_1EE1E3510;
  if (!qword_1EE1E3510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB3B0);
    sub_1E19316F4(&qword_1EE1E58C0, type metadata accessor for Badge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3510);
  }

  return result;
}

unint64_t sub_1E1931534()
{
  result = qword_1EE1F1400;
  if (!qword_1EE1F1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F1400);
  }

  return result;
}

uint64_t InformationRibbon.deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17InformationRibbon_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t InformationRibbon.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17InformationRibbon_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1931658()
{
  result = qword_1ECEBB3B8;
  if (!qword_1ECEBB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB3B8);
  }

  return result;
}

uint64_t sub_1E19316F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InformationRibbon()
{
  result = qword_1EE1F13D8;
  if (!qword_1EE1F13D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1931788@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InformationRibbon.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E19317F8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, double a6)
{
  v11 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v12 = sub_1E1AF5DBC();
  v13 = [v11 initWithString_];

  if (a6 > 0.0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    v15 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    [v14 setImage_];

    [v14 setBounds_];
    v16 = [objc_opt_self() attributedStringWithAttachment_];

    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v17 = v19;
    v18 = a1;
    if (a1 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = 1.0;
  v18 = a1;
  if (a1 < 0)
  {
    goto LABEL_39;
  }

LABEL_7:
  if ((v18 & 0x4000000000000000) == 0)
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

LABEL_39:
  v20 = sub_1E1AF71CC();
LABEL_9:
  v56 = a4;
  v59 = v16;
  if (v20)
  {
    sub_1E13006E4(0, &unk_1EE1E3360);
    result = swift_getObjCClassFromMetadata();
    v57 = result;
    if (v20 < 1)
    {
      __break(1u);
      return result;
    }

    v54 = a2;
    v22 = 0;
    v23 = a1;
    v55 = *MEMORY[0x1E69DB648];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1E68FFD80](v22);
      }

      else
      {
        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      [v24 size];
      v27 = v26;
      [v25 size];
      v29 = v17 * v28;
      if ([v25 _hasBaseline] && (v30 = sub_1E1AF6CCC(), (v31 & 1) == 0))
      {
        *&v36 = v30 ^ 0x8000000000000000;
      }

      else if (*(a4 + 16) && (v32 = sub_1E15A47D4(v55), (v33 & 1) != 0) && (sub_1E137A5C4(*(a4 + 56) + 32 * v32, v61), sub_1E13006E4(0, &qword_1EE1E32B0), (swift_dynamicCast() & 1) != 0))
      {
        [v60 capHeight];
        v35 = v34;

        v36 = floor((v35 - v29) * 0.5);
      }

      else
      {
        v36 = 0.0;
      }

      v37 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      v38 = v37;
      if (a5)
      {
        v39 = [v25 imageWithRenderingMode_];
        [v38 setImage_];
      }

      else
      {
        [v37 setImage_];
      }

      [v38 setBounds_];
      v40 = [v57 attributedStringWithAttachment_];
      [v13 appendAttributedString_];
      if (v59)
      {
        v41 = v59;
        [v13 appendAttributedString_];

        a4 = v56;
      }

      ++v22;

      v23 = a1;
    }

    while (v20 != v22);

    a2 = v54;
  }

  else
  {
  }

  if (*(a4 + 16))
  {
    v42 = *MEMORY[0x1E69DB650];
    v43 = sub_1E15A47D4(*MEMORY[0x1E69DB650]);
    if (v44)
    {
      sub_1E137A5C4(*(a4 + 56) + 32 * v43, v61);
      sub_1E13006E4(0, &qword_1EE1E3208);
      if (swift_dynamicCast())
      {
        v45 = v60;
        [v13 addAttribute:v42 value:v45 range:{0, objc_msgSend(v13, sel_length)}];
      }
    }
  }

  v46 = [a2 layoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v47 = swift_allocObject();
  v48 = v46 == 1;
  v49 = *MEMORY[0x1E69DB778];
  *(v47 + 16) = xmmword_1E1B06D70;
  if (v48)
  {
    v50 = 3;
  }

  else
  {
    v50 = 2;
  }

  *(v47 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1E13006E4(0, &qword_1EE1E31F0);
  v51 = sub_1E1AF620C();

  v52 = v13;
  [v52 addAttribute:v49 value:v51 range:{0, objc_msgSend(v52, sel_length)}];

  v53 = sub_1E1AF69EC();
  return v53;
}

uint64_t type metadata accessor for CollectionPresenterViewUpdate()
{
  result = qword_1ECEBB3C0;
  if (!qword_1ECEBB3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1931F68()
{
  sub_1E193202C();
  if (v0 <= 0x3F)
  {
    sub_1E1932094(319, &qword_1ECEBB3D8, MEMORY[0x1E6969C28]);
    if (v1 <= 0x3F)
    {
      sub_1E1932094(319, &qword_1ECEBB3E0, sub_1E19320E0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E193202C()
{
  if (!qword_1ECEBB3D0)
  {
    sub_1E1AF01FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEBB3D0);
    }
  }
}

void sub_1E1932094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E19320E0()
{
  if (!qword_1EE1D2618)
  {
    v0 = sub_1E1AF635C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2618);
    }
  }
}

uint64_t ProductPageSectionType.rawValue.getter()
{
  v1 = 0x7975426F546B7361;
  v2 = 0x68736E6565726373;
  if (*v0 != 2)
  {
    v2 = 0x666C656873;
  }

  if (*v0)
  {
    v1 = 0x756B636F4C706F74;
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

uint64_t ProductPageSection.__allocating_init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

AppStoreKit::ProductPageSectionType_optional __swiftcall ProductPageSectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E1932288()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1932360()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1932424()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1932504(uint64_t *a1@<X8>)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = 0xEB0000000073746FLL;
  v5 = 0x68736E6565726373;
  if (*v1 != 2)
  {
    v5 = 0x666C656873;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
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

uint64_t ProductPageSection.shelfId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ProductPageSection.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageSection.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ProductPageSection.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v35 = *v4;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  sub_1E1AF381C();
  sub_1E1932D28();
  sub_1E1AF36AC();
  if (!v3)
  {
    v34 = a2;
    v16 = *(v8 + 8);
    v16(v13, v7);
    v17 = v36;
    v33 = a1;
    sub_1E1AF381C();
    v18 = sub_1E1AF37CC();
    v20 = v19;
    v21 = v11;
    v22 = v16;
    v23 = v17;
    v16(v21, v7);
    if (v20)
    {
LABEL_5:
      v24 = sub_1E1AF39DC();
      (*(*(v24 - 8) + 8))(v34, v24);
      v22(v33, v7);
      *(v4 + 16) = v23;
      v4[3] = v18;
      v4[4] = v20;
      return v4;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {

        goto LABEL_14;
      }

      v31 = 0;
      v32 = v22;
    }

    else
    {
      v31 = 0;
      v32 = v22;
    }

    v26 = sub_1E1AF74AC();

    v20 = v31;
    v22 = v32;
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v27 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v28 = 0x6449666C656873;
    v28[1] = 0xE700000000000000;
    v28[2] = v35;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v29 = sub_1E1AF39DC();
    (*(*(v29 - 8) + 8))(v34, v29);
    v22(v33, v7);
    goto LABEL_3;
  }

  v14 = sub_1E1AF39DC();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = *(v8 + 8);
  v15(a1, v7);
  v15(v13, v7);
LABEL_3:
  type metadata accessor for ProductPageSection();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ProductPageSection.init(type:shelfId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t ProductPageSection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E1932AD8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageSection();
  v7 = swift_allocObject();
  result = ProductPageSection.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _s11AppStoreKit18ProductPageSectionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1E1AF74AC();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

unint64_t sub_1E1932D28()
{
  result = qword_1EE1EC060;
  if (!qword_1EE1EC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC060);
  }

  return result;
}

unint64_t sub_1E1932DA4()
{
  result = qword_1ECEBB3E8;
  if (!qword_1ECEBB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB3E8);
  }

  return result;
}

uint64_t SearchLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchLink.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchLink.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_1E1AEFEAC();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v57 = sub_1E1AF380C();
  v50 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v53 = v6;
  v18 = *(v6 + 16);
  v18(v10, a2, v5);
  v52 = v10;
  sub_1E1AF464C();
  sub_1E134B7C8(v17, v55 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_impressionMetrics);
  v54 = a2;
  v19 = v5;
  v51 = v18;
  v49 = v6 + 16;
  v18(v63, a2, v5);
  v20 = v48;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  if (v22)
  {
    v58 = v21;
    v59 = v22;
  }

  else
  {
    v23 = v45;
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v46 + 8))(v23, v47);
    v58 = v24;
    v59 = v26;
  }

  sub_1E1AF6F6C();
  v27 = *(v50 + 1);
  v27(v20, v57);
  v50 = v27;
  v28 = v61;
  v30 = v55;
  v29 = v56;
  *(v55 + 16) = v60;
  *(v30 + 32) = v28;
  *(v30 + 48) = v62;
  sub_1E1AF381C();
  v31 = sub_1E1AF37CC();
  v33 = v32;
  v34 = v57;
  v27(v14, v57);
  *(v30 + 56) = v31;
  *(v30 + 64) = v33;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v27(v14, v34);
  *(v30 + 72) = v35;
  *(v30 + 80) = v37;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v38 = v63;
  v51(v52, v63, v19);
  sub_1E1933D70(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  *(v30 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_artwork) = v60;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v39 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v38);
  v40 = *(v53 + 8);
  v40(v54, v19);
  v41 = v29;
  v42 = v57;
  v43 = v50;
  v50(v41, v57);
  v43(v14, v42);
  v40(v63, v19);
  *(v30 + 88) = v39;
  return v30;
}

uint64_t SearchLink.__allocating_init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a5;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 16) = v36;
    *(v18 + 32) = v19;
    *(v18 + 48) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v30 = a3;
    v31 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v30;
    a6 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v32;
  *(v18 + 56) = v33;
  *(v18 + 64) = a6;
  *(v18 + 72) = v27;
  *(v18 + 80) = a3;
  *(v18 + 88) = a7;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_artwork) = a4;
  sub_1E134B7C8(a8, v18 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_impressionMetrics);
  return v18;
}

uint64_t SearchLink.init(id:imageName:artwork:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a5;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v38, &unk_1ECEB5670);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v32 = a3;
    v33 = a6;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    v24 = a4;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v21;
    a4 = v24;
    a3 = v32;
    a6 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  v28 = v34;
  v29 = v35;
  *(v9 + 48) = v43;
  *(v9 + 56) = v29;
  *(v9 + 64) = a6;
  *(v9 + 72) = v28;
  *(v9 + 80) = a3;
  *(v9 + 88) = a7;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_artwork) = a4;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_impressionMetrics);
  return v9;
}

uint64_t SearchLink.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SearchLink.imageName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

double SearchLink.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SearchLink.deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t SearchLink.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10SearchLink_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1933A10()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_1E1933A44()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t type metadata accessor for SearchLink()
{
  result = qword_1EE1F7D88;
  if (!qword_1EE1F7D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1933B20@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 88);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1933D70(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_1E1933BC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchLink.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E1933C6C()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1933D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1933DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF9 && *(a1 + 152))
  {
    return (*a1 + 1073741818);
  }

  HIDWORD(v3) = (*(a1 + 56) >> 2) & 0x7FFFF80 | (*(a1 + 56) >> 1);
  LODWORD(v3) = *(a1 + 56);
  v4 = (v3 >> 29) ^ 0x3FFFFFFF;
  if (v4 >= 0x3FFFFFF9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1E1933E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFFA)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1073741818;
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF9)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0u;
      *(result + 24) = 0u;
      *(result + 8) = 0u;
      *(result + 56) = (4 * (((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27))) & 0xFFFFFE00 | (2 * ((((-a2 >> 3) & 0x7FFFFFF) - (a2 << 27)) & 0x7FLL));
    }
  }

  return result;
}

uint64_t sub_1E1933EC8(uint64_t a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = *(v1 + 120);
  v24 = *(v1 + 128);
  v25 = *(v1 + 136);
  v26 = *(v1 + 144);
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();

  sub_1E1AF764C();
  if (v3 != 100)
  {
    Shelf.ContentType.rawValue.getter();
    sub_1E1AF5F0C();
  }

  sub_1E1AF764C();
  Shelf.ContentsMetadata.hash(into:)(a1);
  if (v4 == 100)
  {
    sub_1E1AF764C();
    if (v5 != 100)
    {
LABEL_5:
      sub_1E1AF764C();
      Shelf.ContentType.rawValue.getter();
      sub_1E1AF5F0C();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1E1AF764C();
    Shelf.ContentType.rawValue.getter();
    sub_1E1AF5F0C();

    if (v5 != 100)
    {
      goto LABEL_5;
    }
  }

  sub_1E1AF764C();
LABEL_8:
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  MEMORY[0x1E6900390](*&v13);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x1E6900390](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x1E6900390](*&v15);
  if (v8 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  MEMORY[0x1E6900390](*&v16);
  if (v11 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v11;
  }

  MEMORY[0x1E6900390](*&v17);
  if (v10 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  MEMORY[0x1E6900390](*&v18);
  if (v12 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v12;
  }

  MEMORY[0x1E6900390](*&v19);
  v20 = v24;
  if (v24 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E6900390](*&v20);
  v21 = v25;
  if (v25 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E6900390](*&v21);
  v22 = v26;
  if (v26 == 0.0)
  {
    v22 = 0.0;
  }

  return MEMORY[0x1E6900390](*&v22);
}

uint64_t sub_1E1934174()
{
  sub_1E1AF762C();
  sub_1E1933EC8(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E19341B8()
{
  sub_1E1AF762C();
  sub_1E1933EC8(v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E19341FC()
{
  result = qword_1EE1F4ED0;
  if (!qword_1EE1F4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F4ED0);
  }

  return result;
}

BOOL sub_1E1934250(uint64_t a1, char *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v57 = *(a1 + 16);
  v58 = *(a1 + 8);
  v55 = *(a1 + 32);
  v56 = *(a1 + 24);
  v53 = *(a1 + 48);
  v54 = *(a1 + 40);
  v47 = *(a1 + 64);
  v45 = *(a1 + 65);
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v51 = *(a2 + 3);
  v52 = *(a1 + 56);
  v49 = *(a2 + 5);
  v50 = *(a2 + 4);
  v11 = *(a2 + 7);
  v48 = *(a2 + 6);
  v46 = a2[64];
  v44 = a2[65];
  v42 = *(a1 + 104);
  v43 = *(a1 + 120);
  v38 = *(a1 + 72);
  v39 = *(a1 + 88);
  v40 = *(a2 + 104);
  v41 = *(a2 + 120);
  v36 = *(a2 + 72);
  v37 = *(a2 + 88);
  v13 = *(a2 + 17);
  v12 = *(a2 + 18);
  LOBYTE(v66) = *a1;
  LOBYTE(v59) = v6;
  v14 = Shelf.ContentType.rawValue.getter();
  v16 = v15;
  if (v14 == Shelf.ContentType.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1E1AF74AC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2 == 100)
  {
    result = 0;
    if (v7 != 100)
    {
      return result;
    }

LABEL_7:
    if ((v3 ^ v8))
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v7 == 100)
  {
    return 0;
  }

  LOBYTE(v66) = v2;
  LOBYTE(v59) = v7;
  v21 = Shelf.ContentType.rawValue.getter();
  v23 = v22;
  if (v21 != Shelf.ContentType.rawValue.getter() || v23 != v24)
  {
    v25 = sub_1E1AF74AC();

    result = 0;
    if ((v25 & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 != v8)
  {
    return 0;
  }

LABEL_8:
  v66 = v58;
  v67 = v57;
  v68 = v56;
  v69 = v55;
  v70 = v54;
  v71 = v53;
  v72 = v52;
  v59 = v9;
  v60 = v10;
  v61 = v51;
  v62 = v50;
  v63 = v49;
  v64 = v48;
  v65 = v11;
  sub_1E189EE00(v58, v57, v56, v55, v54, v53, v52);
  sub_1E189EE00(v9, v10, v51, v50, v49, v48, v11);
  v20 = _s11AppStoreKit5ShelfC16ContentsMetadataO2eeoiySbAE_AEtFZ_0(&v66, &v59);
  sub_1E192B928(v59, v60, v61, v62, v63, v64, v65);
  sub_1E192B928(v66, v67, v68, v69, v70, v71, v72);
  if (!v20)
  {
    return 0;
  }

  if (v47 == 100)
  {
    if (v46 != 100)
    {
      return 0;
    }
  }

  else
  {
    if (v46 == 100)
    {
      return 0;
    }

    LOBYTE(v66) = v47;
    LOBYTE(v59) = v46;
    v26 = Shelf.ContentType.rawValue.getter();
    v28 = v27;
    if (v26 == Shelf.ContentType.rawValue.getter() && v28 == v29)
    {
    }

    else
    {
      v30 = sub_1E1AF74AC();

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v45 == 100)
  {
    if (v44 == 100)
    {
LABEL_33:
      result = 0;
      if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v38, v36), vceqq_f64(v39, v37)), vuzp1q_s32(vceqq_f64(v42, v40), vceqq_f64(v43, v41))))) & 1) == 0)
      {
        return result;
      }

      goto LABEL_37;
    }

    return 0;
  }

  if (v44 == 100)
  {
    return 0;
  }

  LOBYTE(v66) = v45;
  LOBYTE(v59) = v44;
  v31 = Shelf.ContentType.rawValue.getter();
  v33 = v32;
  if (v31 == Shelf.ContentType.rawValue.getter() && v33 == v34)
  {

    goto LABEL_33;
  }

  v35 = sub_1E1AF74AC();

  result = 0;
  if ((v35 & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v38, v36), vceqq_f64(v39, v37)), vuzp1q_s32(vceqq_f64(v42, v40), vceqq_f64(v43, v41))), xmmword_1E1B43CB0)) == 255)
  {
LABEL_37:
    if (v5 == v13)
    {
      return v4 == v12;
    }
  }

  return result;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0);
  sub_1E1934880(a1, a7 + *(v14 + 36));
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF11AC();
  sub_1E1300B24(a3, a7 + 40);
  sub_1E1300B24(a4, a7 + 80);
  sub_1E1300B24(a5, a7 + 120);
  __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
  type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1E1934904(a1);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1E1934880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1934904(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.init(iconSize:titleSpace:subtitleSpace:offerTopSpace:offerButtonSize:descriptionSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  a5[1] = a7;
  v16 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v17 = v16[5];
  v18 = sub_1E1AF166C();
  v22 = *(*(v18 - 8) + 32);
  (v22)((v18 - 8), a5 + v17, a1, v18);
  v22(a5 + v16[6], a2, v18);
  sub_1E1361B28(a3, a5 + v16[7]);
  v19 = (a5 + v16[8]);
  *v19 = a8;
  v19[1] = a9;
  v20 = a5 + v16[9];

  return (v22)(v20, a4, v18);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 20);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 24);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1361B28(a1, v1 + v3);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);

  return sub_1E1934880(v3, a1);
}

double InAppPurchaseShowcaseLockupViewLayout.measurements(fitting:in:)(double a1)
{
  v2 = v1;
  v18 = sub_1E1AF745C();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E1AF11CC();
  v17[2] = v7;
  __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v2[13]);
  sub_1E1AF11CC();
  v17[0] = v9;
  v17[1] = v8;
  __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
  sub_1E1AF11CC();
  v17[4] = v11;
  v17[5] = v10;
  v17[3] = v12;
  v17[6] = v13;
  v14 = v1 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36);
  v15 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  sub_1E1AF166C();
  sub_1E1AF12FC();
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(&v14[*(v15 + 28)], *&v14[*(v15 + 28) + 24]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v4 + 8))(v6, v18);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 20, v2[23]);
  sub_1E1AF11DC();
  sub_1E1AF12FC();
  return a1;
}

uint64_t InAppPurchaseShowcaseLockupViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1E1AF18DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E19355B8(a1, v13);
  sub_1E1AF182C();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_1E1AF108C();
  *v16 = Width;
  v15(v20, 0);
  sub_1E1AF109C();
  v17 = sub_1E1AF10FC();
  sub_1E1AF1D3C();
  v17(v20, 0);
  v18 = sub_1E1AF10FC();
  sub_1E1AF1D0C();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E19355B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a1;
  v74 = a2;
  v70 = sub_1E1AF745C();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF184C();
  v86 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF18BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v11;
  v72 = sub_1E1AF188C();
  v73 = *(v72 - 8);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v14 = *MEMORY[0x1E69ABA18];
  v16 = *(v15 + 104);
  v85 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v85, v14, v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E69ABA28], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
  v17 = *(sub_1E1AF189C() - 8);
  v81 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v66 = 4 * v81;
  v19 = swift_allocObject();
  v68 = v19;
  *(v19 + 16) = xmmword_1E1B04930;
  v20 = v19 + v18;
  v21 = (v3 + *(type metadata accessor for InAppPurchaseShowcaseLockupViewLayout(0) + 36));
  v22 = v21[1];
  v79 = v21;
  v92 = MEMORY[0x1E69E7DE0];
  v93 = MEMORY[0x1E69AB858];
  v91 = v22;
  v88[0] = MEMORY[0x1E69E7CC0];
  v76 = sub_1E1425840();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  v77 = sub_1E1383E14();
  sub_1E1AF6EEC();
  v84 = v20;
  sub_1E1AF186C();
  v24 = *(v86 + 8);
  v86 += 8;
  v75 = v24;
  v24(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v25 = v3[8];
  v26 = v3[9];
  v27 = __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v25);
  v92 = v25;
  v93 = *(v26 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v91);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_0, v27, v25);
  v78 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
  v29 = v78[5];
  v30 = sub_1E1AF166C();
  v89 = v30;
  v90 = MEMORY[0x1E69AB980];
  v31 = __swift_allocate_boxed_opaque_existential_0(v88);
  v80 = v30;
  v32 = *(v30 - 8);
  v82 = *(v32 + 16);
  v83 = v32 + 16;
  v82(v31, v21 + v29, v30);
  v87 = MEMORY[0x1E69E7CC0];
  v63 = v23;
  sub_1E1AF6EEC();
  v33 = v81;
  sub_1E1AF186C();
  v34 = v75;
  v75(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v62 = 2 * v33;
  v64 = v3;
  v35 = v3[13];
  v36 = v3[14];
  v37 = __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v35);
  v92 = v35;
  v93 = *(v36 + 8);
  v38 = __swift_allocate_boxed_opaque_existential_0(&v91);
  (*(*(v35 - 8) + 16))(v38, v37, v35);
  v39 = v78;
  v40 = v78[6];
  v41 = v80;
  v89 = v80;
  v90 = MEMORY[0x1E69AB980];
  v42 = __swift_allocate_boxed_opaque_existential_0(v88);
  v43 = v79;
  v82(v42, v79 + v40, v41);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v44 = v62;
  sub_1E1AF186C();
  v34(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v81 += v44;
  v45 = *(v43 + v39[8] + 8);
  __swift_project_boxed_opaque_existential_1Tm((v43 + v39[7]), *(v43 + v39[7] + 24));
  v46 = v65;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v48 = v47;
  (*(v67 + 8))(v46, v70);
  v92 = MEMORY[0x1E69E7DE0];
  v93 = MEMORY[0x1E69AB858];
  v91 = v45 + v48;
  v88[0] = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v49 = v64;
  sub_1E1AF186C();
  v50 = v75;
  v75(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v51 = v49;
  v52 = v49[18];
  v53 = v51[19];
  v54 = __swift_project_boxed_opaque_existential_1Tm(v51 + 15, v52);
  v92 = v52;
  v93 = *(v53 + 8);
  v55 = __swift_allocate_boxed_opaque_existential_0(&v91);
  (*(*(v52 - 8) + 16))(v55, v54, v52);
  v56 = v78[9];
  v57 = v80;
  v89 = v80;
  v90 = MEMORY[0x1E69AB980];
  v58 = __swift_allocate_boxed_opaque_existential_0(v88);
  v82(v58, v79 + v56, v57);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v59 = v85;
  sub_1E1AF186C();
  v50(v7, v5);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v92 = sub_1E1AF140C();
  v93 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v91);
  sub_1E1AF13FC();
  sub_1E1AF18CC();
  return (*(v73 + 8))(v59, v72);
}

uint64_t sub_1E1935F40(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_1E1AF18DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E19355B8(a1, v13);
  sub_1E1AF182C();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v15 = sub_1E1AF108C();
  *v16 = Width;
  v15(v20, 0);
  sub_1E1AF109C();
  v17 = sub_1E1AF10FC();
  sub_1E1AF1D3C();
  v17(v20, 0);
  v18 = sub_1E1AF10FC();
  sub_1E1AF1D0C();
  v18(v20, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E193615C()
{
  result = sub_1E138432C(319, &qword_1EE1D2AE0);
  if (v1 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AB0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E1936248()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1E1AF166C();
    if (v1 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AC0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OfferItemDetailPage.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreTitle);

  return v1;
}

uint64_t OfferItemDetailPage.__allocating_init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v75 = a8;
  v76 = a4;
  v72 = a5;
  v73 = a7;
  LODWORD(v77) = a6;
  v81 = a15;
  v82 = a14;
  v83 = a13;
  v84 = a12;
  v79 = a3;
  v80 = a11;
  v85 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  v34 = swift_allocObject();
  v74 = a1;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_offerItem) = a1;
  v71 = a2;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v72;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_video) = v79;
  v36 = (v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v75;
  *v36 = v73;
  v36[1] = v37;
  v75 = a9;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v77;
  sub_1E134FD1C(v84, v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v83, v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v82, v34 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  v73 = v28;
  v38 = *(v28 + 16);
  v38(v33, v85, v27);
  sub_1E134FD1C(v81, v26, &qword_1ECEB3B28);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v30, v33, v27);
  v77 = v26;
  v39 = v26;
  v40 = v78;
  sub_1E134FD1C(v39, v78, &qword_1ECEB3B28);
  *(v34 + 16) = 0;
  v38((v34 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v30, v27);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v80;
  sub_1E134FD1C(v40, v21, &qword_1ECEB3B28);
  v41 = sub_1E1AF39DC();
  v70 = *(v41 - 8);
  v42 = *(v70 + 48);
  v43 = v21;
  v44 = v21;
  v45 = v41;
  if (v42(v44, 1, v41) == 1)
  {

    sub_1E1308058(v81, &qword_1ECEB3B28);
    sub_1E1308058(v82, &qword_1ECEBB7C0);
    sub_1E1308058(v83, &qword_1ECEBB7C0);
    sub_1E1308058(v84, &qword_1ECEBB7C0);
    v46 = *(v73 + 8);
    v46(v85, v27);
    sub_1E1308058(v40, &qword_1ECEB3B28);
    v46(v30, v27);
    sub_1E1308058(v77, &qword_1ECEB3B28);
    v46(v33, v27);
    v47 = v43;
  }

  else
  {
    v65 = v42;
    v72 = v43;
    v66 = v30;
    v67 = v27;
    v48 = v73;
    v68 = v33;
    v49 = qword_1EE1E3BC8;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v50, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v51 = v86;
    v52 = v70;
    if (v86)
    {
    }

    v53 = *(v52 + 8);
    v53(v72, v45);
    v54 = v78;
    if (!v51)
    {

      sub_1E1308058(v81, &qword_1ECEB3B28);
      sub_1E1308058(v82, &qword_1ECEBB7C0);
      sub_1E1308058(v83, &qword_1ECEBB7C0);
      sub_1E1308058(v84, &qword_1ECEBB7C0);
      v58 = *(v48 + 8);
      v59 = v67;
      v58(v85, v67);
      sub_1E1308058(v54, &qword_1ECEB3B28);
      v58(v66, v59);
      sub_1E1308058(v77, &qword_1ECEB3B28);
      v58(v68, v59);
      return v34;
    }

    v55 = v69;
    sub_1E134FD1C(v78, v69, &qword_1ECEB3B28);
    if (v65(v55, 1, v45) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v81, &qword_1ECEB3B28);
      v60 = v45;
      sub_1E1308058(v82, &qword_1ECEBB7C0);
      sub_1E1308058(v83, &qword_1ECEBB7C0);
      sub_1E1308058(v84, &qword_1ECEBB7C0);
      v61 = *(v48 + 8);
      v62 = v67;
      v61(v85, v67);
      sub_1E1308058(v54, &qword_1ECEB3B28);
      v61(v66, v62);
      sub_1E1308058(v77, &qword_1ECEB3B28);
      v61(v68, v62);
      v53(v69, v60);
      return v34;
    }

    sub_1E1308058(v81, &qword_1ECEB3B28);
    sub_1E1308058(v82, &qword_1ECEBB7C0);
    sub_1E1308058(v83, &qword_1ECEBB7C0);
    sub_1E1308058(v84, &qword_1ECEBB7C0);
    v56 = *(v48 + 8);
    v57 = v67;
    v56(v85, v67);
    sub_1E1308058(v54, &qword_1ECEB3B28);
    v56(v66, v57);
    sub_1E1308058(v77, &qword_1ECEB3B28);
    v56(v68, v57);
    v47 = v55;
  }

  sub_1E1308058(v47, &qword_1ECEB3B28);
  return v34;
}

char *OfferItemDetailPage.init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v69 = a4;
  v70 = a8;
  v68 = a7;
  LODWORD(v71) = a6;
  v66 = a5;
  v74 = a3;
  v75 = a15;
  v76 = a14;
  v77 = a13;
  v72 = a11;
  v78 = a12;
  v79 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = sub_1E1AF3C3C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - v33;
  v64 = a1;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_offerItem) = a1;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v66;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_video) = v74;
  v36 = (v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v70;
  *v36 = v68;
  v36[1] = v37;
  v67 = a2;
  v68 = a9;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v71;
  sub_1E134FD1C(v78, v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v77, v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E134FD1C(v76, v15 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  v65 = v29;
  v38 = *(v29 + 16);
  v38(v34, v79, v28);
  sub_1E134FD1C(v75, v27, &qword_1ECEB3B28);
  *(v15 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v31, v34, v28);
  v71 = v27;
  sub_1E134FD1C(v27, v24, &qword_1ECEB3B28);
  *(v15 + 16) = 0;
  v70 = v31;
  v38((v15 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v31, v28);
  v66 = v15;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v72;
  v39 = v24;
  v40 = v73;
  sub_1E134FD1C(v24, v73, &qword_1ECEB3B28);
  v41 = sub_1E1AF39DC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v40, 1, v41) == 1)
  {

    sub_1E1308058(v75, &qword_1ECEB3B28);
    sub_1E1308058(v76, &qword_1ECEBB7C0);
    sub_1E1308058(v77, &qword_1ECEBB7C0);
    sub_1E1308058(v78, &qword_1ECEBB7C0);
    v44 = *(v65 + 8);
    v44(v79, v28);
    sub_1E1308058(v39, &qword_1ECEB3B28);
    v44(v70, v28);
    sub_1E1308058(v71, &qword_1ECEB3B28);
    v44(v34, v28);
    v45 = v40;
  }

  else
  {
    v46 = v39;
    v61 = v28;
    v62 = v34;
    v47 = v65;
    v48 = qword_1EE1E3BC8;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v49, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v50 = v80;
    if (v80)
    {
    }

    v51 = *(v42 + 8);
    v51(v73, v41);
    if (!v50)
    {

      sub_1E1308058(v75, &qword_1ECEB3B28);
      sub_1E1308058(v76, &qword_1ECEBB7C0);
      sub_1E1308058(v77, &qword_1ECEBB7C0);
      sub_1E1308058(v78, &qword_1ECEBB7C0);
      v55 = *(v47 + 8);
      v56 = v61;
      v55(v79, v61);
      sub_1E1308058(v46, &qword_1ECEB3B28);
      v55(v70, v56);
      sub_1E1308058(v71, &qword_1ECEB3B28);
      v55(v62, v56);
      return v66;
    }

    v52 = v63;
    sub_1E134FD1C(v46, v63, &qword_1ECEB3B28);
    if (v43(v52, 1, v41) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v75, &qword_1ECEB3B28);
      sub_1E1308058(v76, &qword_1ECEBB7C0);
      sub_1E1308058(v77, &qword_1ECEBB7C0);
      sub_1E1308058(v78, &qword_1ECEBB7C0);
      v57 = *(v47 + 8);
      v58 = v61;
      v57(v79, v61);
      sub_1E1308058(v46, &qword_1ECEB3B28);
      v57(v70, v58);
      sub_1E1308058(v71, &qword_1ECEB3B28);
      v57(v62, v58);
      v51(v52, v41);
      return v66;
    }

    sub_1E1308058(v75, &qword_1ECEB3B28);
    sub_1E1308058(v76, &qword_1ECEBB7C0);
    sub_1E1308058(v77, &qword_1ECEBB7C0);
    sub_1E1308058(v78, &qword_1ECEBB7C0);
    v53 = *(v47 + 8);
    v54 = v61;
    v53(v79, v61);
    sub_1E1308058(v46, &qword_1ECEB3B28);
    v53(v70, v54);
    sub_1E1308058(v71, &qword_1ECEB3B28);
    v53(v62, v54);
    v45 = v52;
  }

  sub_1E1308058(v45, &qword_1ECEB3B28);
  return v66;
}

uint64_t OfferItemDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v96 = v4;
  v7 = *v4;
  v81 = v3;
  v82 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = v73 - v9;
  v10 = sub_1E1AF39DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v80 = v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v73 - v16;
  v18 = sub_1E1AF380C();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v74 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v79 = v73 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v84 = v73 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v83 = v73 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v73 - v27;
  type metadata accessor for OfferItem();
  v91 = a1;
  sub_1E1AF381C();
  v30 = v11 + 16;
  v29 = *(v11 + 16);
  v94 = a2;
  v95 = v10;
  v92 = v29;
  v29(v17, a2, v10);
  sub_1E19383CC(&unk_1ECEBB410, type metadata accessor for OfferItem);
  sub_1E1AF464C();
  if (!v97)
  {
    v68 = sub_1E1AF5A7C();
    sub_1E19383CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v69 = 0x657449726566666FLL;
    v69[1] = 0xE90000000000006DLL;
    v69[2] = v82;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x1E69AB690], v68);
    swift_willThrow();
    (*(v11 + 8))(v94, v95);
    (*(v89 + 8))(v91, v90);
LABEL_10:
    type metadata accessor for OfferItemDetailPage();
    swift_deallocPartialClassInstance();
    return v30;
  }

  v78 = v11;
  v88 = v97;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v31 = v94;
  v93 = v11 + 16;
  v32 = v95;
  v33 = v92;
  (v92)(v17, v94);
  sub_1E19383CC(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v34 = v97;
  type metadata accessor for Video();
  sub_1E1AF381C();
  v33(v17, v31, v32);
  sub_1E19383CC(&qword_1EE1E52D0, type metadata accessor for Video);
  sub_1E1AF464C();
  v73[1] = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_offerItem;
  v35 = v96;
  *(v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_offerItem) = v88;
  v36 = v97;
  v73[2] = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_artwork;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_artwork) = v34;
  v73[3] = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_video;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_video) = v36;
  v76 = v36;

  v77 = v34;

  v37 = v91;
  sub_1E1AF381C();
  sub_1E14056C8();
  sub_1E1AF369C();
  v38 = v90;
  v39 = v89 + 8;
  v40 = *(v89 + 8);
  v40(v28, v90);
  v41 = v40;
  v86 = v40;
  v87 = v39;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v97;
  v42 = v83;
  sub_1E1AF381C();
  v43 = sub_1E1AF370C();
  v41(v42, v38);
  *(v35 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v43 & 1;
  sub_1E1AF3E1C();
  v44 = v37;
  sub_1E1AF381C();
  v45 = v17;
  v46 = v17;
  v48 = v94;
  v47 = v95;
  v49 = v92;
  v92(v46, v94, v95);
  v50 = v85;
  sub_1E1AF464C();
  v83 = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics;
  sub_1E1467F18(v50, v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics);
  sub_1E1AF381C();
  v49(v45, v48, v47);
  sub_1E1AF464C();
  v73[0] = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics;
  sub_1E1467F18(v50, v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics);
  sub_1E1AF381C();
  v49(v45, v48, v47);
  sub_1E1AF464C();
  v51 = OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics;
  sub_1E1467F18(v50, v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics);
  v52 = v84;
  sub_1E1AF381C();
  v53 = sub_1E1AF37CC();
  v55 = v54;
  v56 = v90;
  v86(v52);
  v57 = v44;
  if (!v55)
  {
    v70 = sub_1E1AF5A7C();
    sub_1E19383CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v71, "learnMoreTitle");
    v71[15] = -18;
    *(v71 + 2) = v82;
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x1E69AB690], v70);
    swift_willThrow();
    v61 = v94;
    goto LABEL_7;
  }

  v58 = (v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreTitle);
  *v58 = v53;
  v58[1] = v55;
  v59 = v79;
  sub_1E1AF381C();
  v60 = v80;
  v61 = v94;
  v92(v80, v94, v95);
  v62 = v81;
  v63 = sub_1E165AA74(v59, v60);
  if (v62)
  {
LABEL_7:

    (*(v78 + 8))(v61, v95);
    (v86)(v57, v56);

    if (v55)
    {
    }

    v30 = v96;
    sub_1E1308058(&v83[v96], &qword_1ECEBB7C0);
    sub_1E1308058(v30 + v73[0], &qword_1ECEBB7C0);
    sub_1E1308058(v30 + v51, &qword_1ECEBB7C0);
    goto LABEL_10;
  }

  *(v96 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_additionalInfo) = v63;
  v64 = v74;
  (*(v89 + 16))(v74, v57, v56);
  v65 = v75;
  v66 = v95;
  v92(v75, v61, v95);
  v67 = v61;
  v30 = AppPromotionDetailPage.init(deserializing:using:)(v64, v65);

  (*(v78 + 8))(v67, v66);
  (v86)(v57, v56);
  return v30;
}

uint64_t type metadata accessor for OfferItemDetailPage()
{
  result = qword_1EE1DCDD0;
  if (!qword_1EE1DCDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19383CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1938444()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  return sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
}

uint64_t OfferItemDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_1ECEBB7C0);
  return v0;
}

uint64_t OfferItemDetailPage.__deallocating_deinit()
{
  OfferItemDetailPage.deinit();

  return swift_deallocClassInstance();
}

void sub_1E19386A8()
{
  sub_1E1468098();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ArcadeFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeFooter.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeFooter.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v69 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = v68 - v6;
  v82 = sub_1E1AF39DC();
  v7 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = v68 - v12;
  v13 = sub_1E1AEFEAC();
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v75 = v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v68 - v22;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v88 = v16;
  if (v25)
  {
    v83 = v24;
    v84 = v25;
    sub_1E1AF6F6C();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v16;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v30 = v13;
    v32 = v31;
    (*(v81 + 8))(v15, v30);
    v83 = v29;
    v84 = v32;
    sub_1E1AF6F6C();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v88;
  }

  v78 = v26;
  v26(v27, v28);
  v76 = a1;
  v33 = v86;
  *(v3 + 3) = v85;
  *(v3 + 4) = v33;
  v3[10] = v87;
  v72 = sub_1E1AF46DC();
  v34 = v75;
  sub_1E1AF381C();
  v71 = v7;
  v35 = *(v7 + 16);
  v36 = v79;
  v37 = v82;
  v35(v77, v79, v82);
  v38 = v70;
  sub_1E1AF464C();
  v72 = OBJC_IVAR____TtC11AppStoreKit12ArcadeFooter_impressionMetrics;
  sub_1E134B7C8(v38, v3 + OBJC_IVAR____TtC11AppStoreKit12ArcadeFooter_impressionMetrics);
  v39 = v80;
  v35(v80, v36, v37);
  type metadata accessor for Action();
  v40 = v76;
  sub_1E1AF381C();
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v34, v39);
  v42 = v78;
  v78(v34, v88);
  v43 = v42;
  v3[2] = v41;
  type metadata accessor for Footnote();
  sub_1E1AF381C();
  v35(v77, v36, v82);
  sub_1E19397F0(&qword_1EE1E46E8, type metadata accessor for Footnote);
  sub_1E1AF464C();
  v3[3] = v85;
  v44 = v73;
  sub_1E1AF381C();
  v45 = v74;
  sub_1E1AF374C();
  v43(v44, v88);
  v46 = sub_1E1AF5A6C();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  if (v48 == 1)
  {
    sub_1E1308058(v45, &qword_1ECEB1F90);
    v3[4] = 0;
    v49 = sub_1E1AF5A7C();
    sub_1E19397F0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v50 = MEMORY[0x1E69E7CC0];
    *v51 = v69;
    v51[1] = v50;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69AB698], v49);
    swift_willThrow();
    v52 = *(v71 + 8);
    v53 = v82;
    v52(v79, v82);
    v78(v40, v88);
    v52(v80, v53);

    sub_1E134B88C((v3 + 6));
    sub_1E1308058(v3 + v72, &unk_1ECEB1770);
    type metadata accessor for ArcadeFooter();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v55 = v71;
  v54 = v72;
  MEMORY[0x1EEE9AC00](v48);
  v68[-2] = v80;
  type metadata accessor for ImpressionableArtwork();
  v56 = v68[1];
  v57 = sub_1E1AF59FC();
  v77 = v56;
  if (!v56)
  {
    v58 = v57;
    (*(v47 + 8))(v45, v46);
    v3[4] = v58;
    v60 = v75;
    v59 = v76;
    sub_1E1AF381C();
    v61 = JSONObject.appStoreColor.getter();
    v62 = *(v55 + 8);
    v63 = v82;
    v62(v79, v82);
    v64 = v59;
    v65 = v88;
    v66 = v78;
    v78(v64, v88);
    v66(v60, v65);
    v3[5] = v61;
    v62(v80, v63);
    return v3;
  }

  sub_1E134B88C((v3 + 6));
  sub_1E1308058(v3 + v54, &unk_1ECEB1770);
  type metadata accessor for ArcadeFooter();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArcadeFooter()
{
  result = qword_1EE1F61F0;
  if (!qword_1EE1F61F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E193920C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E19397F0(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork);
  return sub_1E1AF464C();
}

void *ArcadeFooter.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_1E1939444()
{
  result = *(v0 + 32);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

uint64_t ArcadeFooter.deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeFooter_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t ArcadeFooter.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeFooter_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19395D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeFooter();
  v7 = swift_allocObject();
  result = ArcadeFooter.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_1E1939644()
{
  result = *(*v0 + 32);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

uint64_t sub_1E1939668(uint64_t a1)
{
  result = sub_1E19397F0(qword_1EE1F6210, type metadata accessor for ArcadeFooter);
  *(a1 + 8) = result;
  return result;
}

void sub_1E19396E0()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E19397F0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E1939940@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = sub_1E169B2C0;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v20 = v7;
  *(v7 + 16) = sub_1E169C82C;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E169C82C;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E169B508;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  *(a1 + 32) = v10;
  v11 = sub_1E140CE44();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x1E69DDD08];
  *v5 = *MEMORY[0x1E69DDD08];
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB868], v2);
  v13 = sub_1E1AF166C();
  v14 = MEMORY[0x1E69AB980];
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  __swift_allocate_boxed_opaque_existential_0((a1 + 56));
  v22[3] = v2;
  v22[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v3 + 16))(boxed_opaque_existential_0, v5, v2);

  v16 = v12;
  sub_1E1AF167C();
  (*(v3 + 8))(v5, v2);
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  v17 = v20;
  *(a1 + 96) = v21;
  *(a1 + 160) = v10;
  *(a1 + 168) = v11;
  *(a1 + 136) = v17;
  *(a1 + 200) = v10;
  *(a1 + 208) = v11;
  *(a1 + 176) = v8;
  *(a1 + 272) = v10;
  *(a1 + 280) = v11;
  *a1 = 6;
  *(a1 + 48) = 0x3FF0000000000000;
  result = 0.15;
  *(a1 + 216) = xmmword_1E1B44160;
  *(a1 + 232) = 0x4020000000000000;
  *(a1 + 240) = 3;
  *(a1 + 248) = v9;
  *(a1 + 288) = 0x3FD6666666666666;
  *(a1 + 296) = 0;
  return result;
}

uint64_t static SearchTagsRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE1D84C8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1E1939C6C(&unk_1EE1D84D0, v2);
}

void *SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = memcpy((a4 + 8), a2, 0x129uLL);
  *(a4 + 305) = a3;
  return result;
}

void SearchTagsRibbonViewLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v58 = sub_1E1AF745C();
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v48 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v20 = [a1 traitCollection];
    v21 = sub_1E1AF69BC();

    v22 = *(v7 + 305);
    if (v22 == 2 || (v22 & 1) == 0 || *(v19 + 16) < 3uLL)
    {
      v24 = [v21 preferredContentSizeCategory];
      v25 = sub_1E1AF6ABC();

      if (v25)
      {
        v23 = sub_1E193DA30(v19, a3, a4, a5, a6, *(v7 + 232));
      }

      else
      {
        v23 = sub_1E193A908(v19, a3, a4, a5, a6);
      }
    }

    else
    {
      v23 = sub_1E193A278(v19, v21, a3, a4, a5, a6);
    }

    v59 = v23;
    v26 = *(v19 + 16);

    v55 = v26;
    if (v26)
    {
      v27 = 0;
      v28 = v19 + 32;
      v52 = *MEMORY[0x1E69E7048];
      v51 = (v14 + 104);
      v50 = *MEMORY[0x1E69E7040];
      v49 = (v14 + 8);
      v53 = v21;
      v54 = v19;
      while (v27 < *(v19 + 16))
      {
        sub_1E193AD7C(v28, v64);
        v29 = *(v59 + 16);
        if (v27 == v29)
        {

          sub_1E1308058(v64, &qword_1ECEBB420);
          goto LABEL_20;
        }

        if (v27 >= v29)
        {
          goto LABEL_22;
        }

        v30 = v59 + 32 * v27;
        v31 = *(v30 + 48);
        v60 = *(v30 + 32);
        v61 = v31;
        v71[3] = v67;
        v71[4] = v68;
        v70[0] = v64[0];
        v70[1] = v64[1];
        v71[0] = v65[0];
        v63 = v27 + 1;
        v72 = v69;
        v71[1] = v65[1];
        v71[2] = v66;
        v74 = v31;
        v73 = v60;
        v32 = v67;
        v33 = *(&v67 + 1);
        v34 = v68;
        v35 = *(&v68 + 1);
        v36 = a1;
        v37 = v69;
        v38 = HIBYTE(v69);
        v39 = BYTE1(v67);
        sub_1E134E724(v70, v64);
        sub_1E1300B24(v71 + 8, v65 + 8);
        LOBYTE(v67) = v32;
        BYTE1(v67) = v39;
        *(&v67 + 1) = v33;
        LOBYTE(v68) = v34;
        *(&v68 + 1) = v35;
        LOBYTE(v69) = v37;
        v40 = v36;
        HIBYTE(v69) = v38;
        v62 = *(&v66 + 1);
        __swift_project_boxed_opaque_existential_1Tm(v65 + 1, v66);
        v41 = *v51;
        v42 = v56;
        v43 = v58;
        (*v51)(v56, v52, v58);
        v44 = v57;
        v41(v57, v50, v43);
        CGPoint.rounded(_:)(v42, *&v60, *(&v60 + 1));
        CGSize.rounded(_:)(v44, *&v61, *(&v61 + 1));
        v45 = *v49;
        (*v49)(v44, v43);
        v46 = v43;
        v19 = v54;
        v45(v42, v46);
        a1 = v40;
        v47 = [v40 traitCollection];
        sub_1E1AF697C();
        sub_1E1AF6B2C();

        v21 = v53;
        sub_1E1AF116C();
        sub_1E1308058(v64, &qword_1ECEBB420);
        sub_1E1308058(v70, &qword_1ECEBB428);
        v28 += 120;
        v27 = v63;
        if (v55 == v63)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_18:

LABEL_20:
      sub_1E1AF106C();
    }
  }

  else
  {

    sub_1E1AF106C();
  }
}

uint64_t sub_1E193A278(uint64_t a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = a1;
  v14 = v6[31];
  v15 = *(a1 + 16);
  if (v14 >= v15)
  {

    v7 = v13;
    goto LABEL_14;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {

    sub_1E14E6490(v16, v13 + 32, 0, (2 * v14) | 1);
    v7 = v17;
    if (!v14)
    {
      v18 = *(v13 + 16);
      if (v18)
      {
        goto LABEL_5;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  sub_1E14E6490(v13, v13 + 32, v14, (2 * v15) | 1);
  v25 = v24;

  v13 = v25;
  v18 = *(v25 + 16);
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_5:
  v33 = v7;
  v34 = a2;
  v35 = v6;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E135C380(0, v18, 0);
  v19 = v38;
  v20 = v13 + 32;
  do
  {
    sub_1E193AD7C(v20, v36);
    __swift_project_boxed_opaque_existential_1Tm(v37, v37[3]);
    sub_1E1AF118C();
    sub_1E1308058(v36, &qword_1ECEBB420);
    v38 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      sub_1E135C380((v21 > 1), v22 + 1, 1);
      v19 = v38;
    }

    *(v19 + 16) = v23;
    v20 += 120;
    --v18;
  }

  while (v18);

  a2 = v34;
LABEL_14:
  v26 = [a2 preferredContentSizeCategory];
  v27 = sub_1E1AF6ABC();

  if (v27)
  {
    v28 = sub_1E193E33C(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    MinY = CGRectGetMinY(v39);
    __swift_project_boxed_opaque_existential_1Tm(v6 + 18, v6[21]);
    sub_1E1AF12EC();
    v28 = sub_1E193B928(v7, a2, MinY + v30, a3, a4, a5, a6);
  }

  v31 = v28;

  return v31;
}

CGFloat SearchTagsRibbonViewLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    return *MEMORY[0x1E69ABBD0];
  }

  v5 = v3;
  v8 = [a1 traitCollection];
  v9 = sub_1E1AF69BC();

  v10 = *(v5 + 305);
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v12 = [v9 preferredContentSizeCategory];
    v13 = sub_1E1AF6ABC();

    if (v13)
    {
      v11 = sub_1E193DA30(v4, 0.0, 0.0, a2, a3, *(v5 + 29));
    }

    else
    {
      v11 = sub_1E193A908(v4, 0.0, 0.0, a2, a3);
    }
  }

  else
  {
    v11 = sub_1E193A278(v4, v9, 0.0, 0.0, a2, a3);
  }

  v14 = *(v11 + 16);
  if (v14)
  {
    v26 = a2;
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v17 = *(v11 + 48);
    v18 = *(v11 + 56);
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = (v11 + 88);
      do
      {
        v21 = *(v20 - 3);
        v22 = *(v20 - 2);
        v24 = *(v20 - 1);
        v23 = *v20;
        v28.origin.x = v15;
        v28.origin.y = v16;
        v28.size.width = v17;
        v28.size.height = v18;
        MaxY = CGRectGetMaxY(v28);
        v29.origin.x = v21;
        v29.origin.y = v22;
        v29.size.width = v24;
        v29.size.height = v23;
        if (MaxY < CGRectGetMaxY(v29))
        {
          v15 = v21;
          v16 = v22;
          v17 = v24;
          v18 = v23;
        }

        v20 += 4;
        --v19;
      }

      while (v19);
    }

    v30.origin.x = v15;
    v30.origin.y = v16;
    v30.size.width = v17;
    v30.size.height = v18;
    CGRectGetMaxY(v30);

    return v26;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1E193A75C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = v4 - 1;
      if (v4 != 1)
      {
        v10 = (a1 + 88);
        do
        {
          v11 = *(v10 - 3);
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          v14 = *v10;
          v30.origin.x = v5;
          v30.origin.y = v6;
          v30.size.width = v7;
          v30.size.height = v8;
          MidY = CGRectGetMidY(v30);
          v31.origin.x = v11;
          v31.origin.y = v12;
          v31.size.width = v13;
          v31.size.height = v14;
          if (MidY < CGRectGetMidY(v31))
          {
            v5 = v11;
            v6 = v12;
            v7 = v13;
            v8 = v14;
          }

          v10 += 4;
          --v9;
        }

        while (v9);
      }

      v32.origin.x = v5;
      v32.origin.y = v6;
      v32.size.width = v7;
      v32.size.height = v8;
      v15 = CGRectGetMidY(v32);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = *&a2;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1E135C2A8(0, v16, 0);
    v17 = v29;
    v18 = (a1 + 56);
    do
    {
      v19 = *(v18 - 3);
      v33.origin.y = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      v33.origin.x = v19;
      v33.size.width = v20;
      v33.size.height = *v18;
      Height = CGRectGetHeight(v33);
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = Height;
        sub_1E135C2A8((v23 > 1), v24 + 1, 1);
        Height = v26;
      }

      *(v29 + 16) = v24 + 1;
      v25 = (v29 + 32 * v24);
      v25[4] = v19;
      v25[5] = v15 + Height * -0.5;
      v25[6] = v20;
      v25[7] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  return v17;
}

uint64_t sub_1E193A908(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v44 = MEMORY[0x1E69E7CC0];
  v10 = *(v5 + 56);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_11:
    v16 = a1;

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = 1;
  v39 = a1 + 32;
  while (1)
  {
    sub_1E193AD7C(v13, v42);
    if (v43 >= 8u && v43 != 9)
    {
      break;
    }

    v15 = sub_1E1AF74AC();

    sub_1E1308058(v42, &qword_1ECEBB420);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v12;
    v14 += 2;
    v13 += 120;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v43 == 10)
  {
    sub_1E1308058(v42, &qword_1ECEBB420);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  sub_1E1308058(v42, &qword_1ECEBB420);
LABEL_13:
  v16 = a1;

  sub_1E14E6490(v18, v39, 0, v14);
  v17 = v19;
  if (v12)
  {
    sub_1E14E6490(a1, v39, v12, (2 * v11) | 1);
    v38 = v37;

    v16 = v38;
  }

LABEL_15:
  if (*(v17 + 16))
  {
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    Height = CGRectGetHeight(v45);
    v21 = sub_1E193ADEC(v17, a2, a3, v10 * a4, Height);

    sub_1E1728220(v22);
    v23 = *(v21 + 2);
    if (v23)
    {
      v24 = &v21[32 * v23];
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];

      v46.origin.x = v25;
      v46.origin.y = v26;
      v46.size.width = v27;
      v46.size.height = v28;
      MaxX = CGRectGetMaxX(v46);
    }

    else
    {

      MaxX = 0.0;
    }

    v30 = MaxX + *(v40 + 240);
  }

  else
  {

    v30 = 0.0;
  }

  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  v31 = CGRectGetWidth(v47) - v30;
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v33 = CGRectGetHeight(v49);
  v34 = sub_1E193B1E0(v16, v30, MinY, v31, v33);

  sub_1E1728220(v34);
  v35 = sub_1E193A75C(v44, 0, 1);

  return v35;
}

uint64_t sub_1E193AD7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1E193ADEC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v74.origin.x = a2;
  v74.origin.y = a3;
  v74.size.width = a4;
  v74.size.height = a5;
  MinX = CGRectGetMinX(v74);
  v13 = *(a1 + 16);
  v52 = v5;
  __swift_project_boxed_opaque_existential_1Tm((v5 + 16), *(v5 + 40));
  sub_1E1AF12EC();
  v15 = v14;
  v49 = a2;
  v50 = a3;
  v75.origin.x = a2;
  v75.origin.y = a3;
  v75.size.width = a4;
  v51 = a5;
  v75.size.height = a5;
  v16 = CGRectGetWidth(v75);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v13 + -1.0;
  if (v17 <= 0.0)
  {
    v17 = 0.0;
  }

  v46 = v13;
  v47 = v15;
  v18 = (v16 - v17 * v15) / v13;
  v19 = a1 + 32;
  v20 = MEMORY[0x1E69E7CC0];
  v48 = 0.0;
  do
  {
    sub_1E193AD7C(v19, v64);
    v23 = v67;
    v24 = v68;
    v25 = v69;
    v26 = v70;
    v27 = v71;
    v28 = v72;
    v29 = v73;
    v53[0] = v64[0];
    v53[1] = v64[1];
    v54 = v65;
    sub_1E1361B28(&v66, v55);
    v57 = v23;
    v58 = v24;
    v59 = v25;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v29;
    __swift_project_boxed_opaque_existential_1Tm(v55, v56);
    sub_1E1AF11EC();
    v31 = v30;
    v33 = v32;
    v76.origin.x = v49;
    v76.origin.y = v50;
    v76.size.width = a4;
    v76.size.height = v51;
    MinY = CGRectGetMinY(v76);
    __swift_project_boxed_opaque_existential_1Tm((v52 + 144), *(v52 + 168));
    sub_1E1AF12EC();
    if (Width > 0.0)
    {
      v38 = v35;
      if (v31 >= v18)
      {
        v31 = v18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1E172D670(0, *(v20 + 2) + 1, 1, v20);
      }

      v40 = *(v20 + 2);
      v39 = *(v20 + 3);
      if (v40 >= v39 >> 1)
      {
        v20 = sub_1E172D670((v39 > 1), v40 + 1, 1, v20);
      }

      v41 = MinY + v38;
      *(v20 + 2) = v40 + 1;
      v42 = &v20[32 * v40];
      v42[4] = MinX;
      v42[5] = v41;
      v42[6] = v31;
      v42[7] = v33;
      v77.origin.x = MinX;
      v77.origin.y = v41;
      v77.size.width = v31;
      v77.size.height = v33;
      v43 = MinX + v47 + CGRectGetWidth(v77);
      v78.origin.x = MinX;
      v78.origin.y = v41;
      v78.size.width = v31;
      v78.size.height = v33;
      v22 = Width - (v47 + CGRectGetWidth(v78));
      v48 = v48 + 1.0;
      v44 = v46 - v48 + -1.0;
      if (v44 <= 0.0)
      {
        v44 = 0.0;
      }

      v18 = (v22 - v47 * v44) / (v46 - v48);
      MinX = v43;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1E172D670(0, *(v20 + 2) + 1, 1, v20);
      }

      v37 = *(v20 + 2);
      v36 = *(v20 + 3);
      if (v37 >= v36 >> 1)
      {
        v20 = sub_1E172D670((v36 > 1), v37 + 1, 1, v20);
      }

      *(v20 + 2) = v37 + 1;
      v21 = &v20[32 * v37];
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      v22 = Width;
    }

    __swift_project_boxed_opaque_existential_1Tm(v55, v56);
    sub_1E1AF118C();
    sub_1E1308058(v53, &qword_1ECEBB420);
    v19 += 120;
    Width = v22;
    --v13;
  }

  while (v13);
  return v20;
}

char *sub_1E193B1E0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v44 = a2;
  v45 = a3;
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v43 = a5;
  v72.size.height = a5;
  MinX = CGRectGetMinX(v72);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v48 = v13;
      sub_1E193AD7C(v12, v62);
      v14 = v65;
      v15 = v66;
      v16 = v67;
      v17 = v68;
      v18 = v69;
      v19 = v70;
      v20 = v71;
      v51[0] = v62[0];
      v51[1] = v62[1];
      v52 = v63;
      sub_1E1361B28(&v64, v53);
      v55 = v14;
      v56 = v15;
      v57 = v16;
      v58 = v17;
      v59 = v18;
      v60 = v19;
      v61 = v20;
      __swift_project_boxed_opaque_existential_1Tm(v53, v54);
      sub_1E1AF11EC();
      v22 = v21;
      v24 = v23;
      sub_1E193AD7C(v51, v49);
      v25 = v50[73];
      __swift_destroy_boxed_opaque_existential_1(v50);
      sub_1E134B88C(v49);
      v73.origin.x = v44;
      v73.origin.y = v45;
      v73.size.width = a4;
      v73.size.height = v43;
      MinY = CGRectGetMinY(v73);
      __swift_project_boxed_opaque_existential_1Tm((v46 + 144), *(v46 + 168));
      sub_1E1AF12EC();
      v28 = MinY + v27;
      v74.origin.x = v44;
      v74.origin.y = v45;
      v74.size.width = a4;
      v74.size.height = v43;
      CGRectGetWidth(v74);
      v29 = v16;
      if (v22 < v16)
      {
        v30 = 1;
      }

      else
      {
        v30 = v17;
      }

      if (v30)
      {
        v29 = v22;
      }

      if (v29 <= Width)
      {
        v31 = Width;
        v33 = MinX;
        v34 = v28;
        v35 = v29;
        v36 = v24;
      }

      else
      {
        v31 = Width;
        if (Width < v18)
        {
          v32 = 1;
        }

        else
        {
          v32 = v19;
        }

        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        if (v32 != 1)
        {
          v13 = v48;
          if (v25)
          {
            if (v29 >= v31)
            {
              v35 = v31;
            }

            else
            {
              v35 = v29;
            }

            v33 = MinX;
            v34 = v28;
            v36 = v24;
          }

          goto LABEL_22;
        }
      }

      v13 = v48;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1E172D670(0, *(v13 + 2) + 1, 1, v13);
      }

      v38 = *(v13 + 2);
      v37 = *(v13 + 3);
      if (v38 >= v37 >> 1)
      {
        v13 = sub_1E172D670((v37 > 1), v38 + 1, 1, v13);
      }

      *(v13 + 2) = v38 + 1;
      v39 = &v13[32 * v38];
      v39[4] = v33;
      v39[5] = v34;
      v39[6] = v35;
      v39[7] = v36;
      if (v35 <= 0.0)
      {
        Width = v31;
      }

      else
      {
        if (v56 == 10 || (sub_1E14598A8(v56, 8u) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1Tm((v46 + 16), *(v46 + 40));
          sub_1E1AF12EC();
          v40 = v41;
        }

        else
        {
          v40 = *(v46 + 240);
        }

        v75.origin.x = v33;
        v75.origin.y = v34;
        v75.size.width = v35;
        v75.size.height = v36;
        MinX = MinX + v40 + CGRectGetWidth(v75);
        v76.origin.x = v33;
        v76.origin.y = v34;
        v76.size.width = v35;
        v76.size.height = v36;
        Width = v31 - (v40 + CGRectGetWidth(v76));
      }

      __swift_project_boxed_opaque_existential_1Tm(v53, v54);
      sub_1E1AF118C();
      sub_1E1308058(v51, &qword_1ECEBB420);
      v12 += 120;
      if (!--v11)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1E193B5C0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v44 = a2;
  v45 = a3;
  v68.origin.x = a2;
  v68.origin.y = a3;
  v68.size.width = a4;
  v68.size.height = a5;
  MinX = CGRectGetMinX(v68);
  v46 = v5;
  __swift_project_boxed_opaque_existential_1Tm((v5 + 16), *(v5 + 40));
  sub_1E1AF12EC();
  v43 = v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = a1 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v42 = a5;
  do
  {
    sub_1E193AD7C(v15, v58);
    v19 = v61;
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v47[0] = v58[0];
    v47[1] = v58[1];
    v48 = v59;
    sub_1E1361B28(&v60, v49);
    v51 = v19;
    v52 = v20;
    v53 = v21;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    v57 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    sub_1E1AF11EC();
    v27 = v26;
    v29 = v28;
    v69.origin.x = v44;
    v69.origin.y = v45;
    v69.size.width = a4;
    v69.size.height = a5;
    MinY = CGRectGetMinY(v69);
    __swift_project_boxed_opaque_existential_1Tm((v46 + 144), *(v46 + 168));
    sub_1E1AF12EC();
    v32 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (Width > 0.0)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1E172D670(0, *(v16 + 2) + 1, 1, v16);
      }

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        v16 = sub_1E172D670((v36 > 1), v37 + 1, 1, v16);
      }

      v38 = MinY + v32;
      *(v16 + 2) = v37 + 1;
      v39 = &v16[32 * v37];
      v39[4] = MinX;
      v39[5] = v38;
      v39[6] = v27;
      v39[7] = v29;
      v70.origin.x = MinX;
      v70.origin.y = v38;
      v70.size.width = v27;
      v70.size.height = v29;
      v40 = MinX + v43 + CGRectGetWidth(v70);
      v71.origin.x = MinX;
      v71.origin.y = v38;
      v71.size.width = v27;
      v71.size.height = v29;
      v18 = Width - (v43 + CGRectGetWidth(v71));
      MinX = v40;
      a5 = v42;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1E172D670(0, *(v16 + 2) + 1, 1, v16);
      }

      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        v16 = sub_1E172D670((v34 > 1), v35 + 1, 1, v16);
      }

      *(v16 + 2) = v35 + 1;
      v17 = &v16[32 * v35];
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      v18 = Width;
    }

    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    sub_1E1AF118C();
    sub_1E1308058(v47, &qword_1ECEBB420);
    v15 += 120;
    Width = v18;
    --v14;
  }

  while (v14);
  return v16;
}

char *sub_1E193B928(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v43.origin.x = a4;
  v43.origin.y = a5;
  v43.size.width = a6;
  v43.size.height = a7;
  MinX = CGRectGetMinX(v43);
  v15 = sub_1E193BBDC(a1, a2, a4, a5, a6, a7);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E135C320(0, v16, 0);
    v17 = v41;
    v18 = (v15 + 32);
    v19 = *(v41 + 16);
    v20 = v16;
    do
    {
      v21 = *v18;
      v42 = v17;
      v22 = *(v17 + 24);
      v23 = v19 + 1;
      if (v19 >= v22 >> 1)
      {
        sub_1E135C320((v22 > 1), v19 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v23;
      *(v17 + 8 * v19 + 32) = v21;
      v18 += 4;
      ++v19;
      --v20;
    }

    while (v20);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v23)
    {
      v25 = 0.0;
      goto LABEL_15;
    }
  }

  if (v23 <= 3)
  {
    v24 = 0;
    v25 = 0.0;
LABEL_13:
    v28 = v23 - v24;
    v29 = 8 * v24 + 32;
    do
    {
      v25 = v25 + *(v17 + v29);
      v29 += 8;
      --v28;
    }

    while (v28);
    goto LABEL_15;
  }

  v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v17 + 48);
  v25 = 0.0;
  v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v25 = v25 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
    v26 += 4;
    v27 -= 4;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_13;
  }

LABEL_15:

  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  Width = CGRectGetWidth(v44);
  v31 = *(v15 + 16);
  if (v31)
  {
    v32 = (Width - v25) / (v16 - 1);
    v33 = (v15 + 40);
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      v35 = *(v33 - 1);
      v36 = *v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E172D670(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      if (v38 >= v37 >> 1)
      {
        v34 = sub_1E172D670((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v38 + 1;
      v39 = &v34[32 * v38];
      v39[4] = MinX;
      v39[5] = a3;
      v39[6] = v35;
      v39[7] = v36;
      v45.origin.x = MinX;
      v45.origin.y = a3;
      v45.size.width = v35;
      v45.size.height = v36;
      MinX = v32 + CGRectGetMaxX(v45);
      v33 += 4;
      --v31;
    }

    while (v31);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  return v34;
}

uint64_t sub_1E193BBDC(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *(a1 + 16);
  Width = CGRectGetWidth(*&a3);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 256), *(v6 + 280));
  sub_1E1AF12EC();
  v16 = Width - v15 * (v13 - 1);
  v186.origin.x = a3;
  v186.origin.y = a4;
  v186.size.width = a5;
  v186.size.height = a6;
  CGRectGetHeight(v186);
  if ((*(v6 + 304) & 1) == 0)
  {
    v17 = [a2 preferredContentSizeCategory];
    sub_1E1AF6ABC();
  }

  v18 = sub_1E159E674(MEMORY[0x1E69E7CC0]);
  *&v175 = a1;

  v19 = 0;
  sub_1E193C7FC(&v175);
  v20 = v175;
  v138 = v175;
  v139 = v13;
  v136 = a1;
  v137 = *(v175 + 16);
  if (!v137)
  {
LABEL_20:
    if (v16 > 0.0 && v13 == v18[2])
    {
      v143 = *(v20 + 16);
      if (v143)
      {
        v54 = 0;
        v55 = v20 + 32;
        while (1)
        {
          if (v54 >= *(v20 + 16))
          {
            goto LABEL_92;
          }

          v56 = v18;
          sub_1E193AD7C(v55, &v175);
          v57 = v179;
          v58 = v180;
          v19 = v181;
          v59 = v182;
          v60 = v183;
          v61 = v184;
          v62 = v185;
          v163 = v175;
          v164 = v176;
          v165 = v177;
          sub_1E1361B28(v178, &v166);
          v168 = v57;
          v169 = v58;
          v170 = v19;
          v171 = v59;
          v172 = v60;
          v173 = v61;
          v174 = v62;
          if (v16 <= 0.0)
          {
            break;
          }

          sub_1E193AD7C(&v163, &v152);
          v18 = v56;
          if (!v56[2] || (v63 = sub_1E135FCF4(&v152), (v64 & 1) == 0))
          {
            __swift_destroy_boxed_opaque_existential_1(v155);
            sub_1E134B88C(&v152);
            goto LABEL_25;
          }

          v65 = *(v56[7] + 32 * v63);
          __swift_destroy_boxed_opaque_existential_1(v155);
          sub_1E134B88C(&v152);
          v19 = v56;
          __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
          sub_1E1AF11EC();
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v13 = v139;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            sub_1E193AD7C(&v163, &v152);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v148 = v19;
            v75 = sub_1E135FCF4(&v152);
            v77 = *(v19 + 2);
            v78 = (v76 & 1) == 0;
            v44 = __OFADD__(v77, v78);
            v79 = v77 + v78;
            if (v44)
            {
              goto LABEL_95;
            }

            v80 = v76;
            if (*(v19 + 3) >= v79)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_39;
              }

              v83 = v75;
              sub_1E1416008();
              v75 = v83;
              v18 = v148;
              if ((v80 & 1) == 0)
              {
                goto LABEL_42;
              }

LABEL_40:
              v82 = v18[7] + 32 * v75;
              *v82 = v67;
              *(v82 + 8) = v69;
              *(v82 + 16) = v73;
              *(v82 + 24) = v71;
            }

            else
            {
              sub_1E168925C(v79, isUniquelyReferenced_nonNull_native);
              v75 = sub_1E135FCF4(&v152);
              if ((v80 & 1) != (v81 & 1))
              {
                goto LABEL_97;
              }

LABEL_39:
              v18 = v148;
              if (v80)
              {
                goto LABEL_40;
              }

LABEL_42:
              v18[(v75 >> 6) + 8] |= 1 << v75;
              v84 = v75;
              sub_1E134E724(&v152, v18[6] + 40 * v75);
              v85 = v18[7] + 32 * v84;
              *v85 = v67;
              *(v85 + 8) = v69;
              *(v85 + 16) = v73;
              *(v85 + 24) = v71;
              v86 = v18[2];
              v44 = __OFADD__(v86, 1);
              v87 = v86 + 1;
              if (v44)
              {
                goto LABEL_96;
              }

              v18[2] = v87;
            }

            sub_1E134B88C(&v152);
            __swift_destroy_boxed_opaque_existential_1(v155);
            v16 = v16 + v65 - v67;
            goto LABEL_26;
          }

          v18 = v19;
LABEL_26:
          ++v54;
          sub_1E1308058(&v163, &qword_1ECEBB420);
          v55 += 120;
          v20 = v138;
          if (v143 == v54)
          {
            goto LABEL_65;
          }
        }

        v18 = v56;
LABEL_25:
        v13 = v139;
        goto LABEL_26;
      }

LABEL_65:

      v19 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v146 = v18;
        v151 = MEMORY[0x1E69E7CC0];
        sub_1E135C2E8(0, v13, 0);
        v19 = v151;
        v112 = v136 + 32;
        do
        {
          sub_1E193AD7C(v112, &v175);
          sub_1E193AD7C(&v175, &v163);
          v113 = v168;
          v114 = v169;
          v115 = v170;
          v116 = v171;
          v117 = v172;
          v118 = v173;
          v119 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_1E1361B28(&v166, v155);
          v156 = v113;
          v157 = v114;
          v158 = v115;
          v159 = v116;
          v160 = v117;
          v161 = v118;
          v162 = v119;
          sub_1E134E724(&v152, &v148);
          sub_1E1308058(&v152, &qword_1ECEBB420);
          sub_1E1308058(&v175, &qword_1ECEBB420);
          v151 = v19;
          v121 = *(v19 + 2);
          v120 = *(v19 + 3);
          if (v121 >= v120 >> 1)
          {
            sub_1E135C2E8((v120 > 1), v121 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v121 + 1;
          v122 = v19 + 5 * v121;
          v123 = v148;
          v124 = v149;
          v122[8] = v150;
          *(v122 + 2) = v123;
          *(v122 + 3) = v124;
          v112 += 120;
          --v13;
        }

        while (v13);
        v18 = v146;
      }

      v125 = *(v19 + 2);
      if (v125)
      {
        v126 = 0;
        v103 = MEMORY[0x1E69E7CC0];
LABEL_73:
        v127 = v19 + 40 * v126 + 32;
        v128 = v126;
        while (v128 < v125)
        {
          v126 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_94;
          }

          if (v18[2])
          {
            v129 = sub_1E135FCF4(v127);
            if (v130)
            {
              v131 = (v18[7] + 32 * v129);
              v142 = v131[1];
              v147 = *v131;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_1E172D774(0, *(v103 + 2) + 1, 1, v103);
              }

              v133 = *(v103 + 2);
              v132 = *(v103 + 3);
              if (v133 >= v132 >> 1)
              {
                v103 = sub_1E172D774((v132 > 1), v133 + 1, 1, v103);
              }

              *(v103 + 2) = v133 + 1;
              v134 = &v103[32 * v133];
              *(v134 + 2) = v147;
              *(v134 + 3) = v142;
              if (v126 != v125)
              {
                goto LABEL_73;
              }

              goto LABEL_86;
            }
          }

          ++v128;
          v127 += 40;
          if (v126 == v125)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_93;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v144 = v18;
        v151 = MEMORY[0x1E69E7CC0];
        sub_1E135C2E8(0, v13, 0);
        v19 = v151;
        v88 = v136 + 32;
        do
        {
          sub_1E193AD7C(v88, &v175);
          sub_1E193AD7C(&v175, &v163);
          v89 = v168;
          v90 = v169;
          v91 = v170;
          v92 = v171;
          v93 = v172;
          v94 = v173;
          v95 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_1E1361B28(&v166, v155);
          v156 = v89;
          v157 = v90;
          v158 = v91;
          v159 = v92;
          v160 = v93;
          v161 = v94;
          v162 = v95;
          sub_1E134E724(&v152, &v148);
          sub_1E1308058(&v152, &qword_1ECEBB420);
          sub_1E1308058(&v175, &qword_1ECEBB420);
          v151 = v19;
          v97 = *(v19 + 2);
          v96 = *(v19 + 3);
          if (v97 >= v96 >> 1)
          {
            sub_1E135C2E8((v96 > 1), v97 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v97 + 1;
          v98 = v19 + 5 * v97;
          v99 = v148;
          v100 = v149;
          v98[8] = v150;
          *(v98 + 2) = v99;
          *(v98 + 3) = v100;
          v88 += 120;
          --v13;
        }

        while (v13);
        v18 = v144;
      }

      v101 = *(v19 + 2);
      if (v101)
      {
        v102 = 0;
        v103 = MEMORY[0x1E69E7CC0];
        do
        {
          v104 = v19 + 40 * v102 + 32;
          v105 = v102;
          while (1)
          {
            if (v105 >= v101)
            {
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v102 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              goto LABEL_88;
            }

            if (v18[2])
            {
              v106 = sub_1E135FCF4(v104);
              if (v107)
              {
                break;
              }
            }

            ++v105;
            v104 += 40;
            if (v102 == v101)
            {
              goto LABEL_86;
            }
          }

          v108 = (v18[7] + 32 * v106);
          v141 = v108[1];
          v145 = *v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_1E172D774(0, *(v103 + 2) + 1, 1, v103);
          }

          v110 = *(v103 + 2);
          v109 = *(v103 + 3);
          if (v110 >= v109 >> 1)
          {
            v103 = sub_1E172D774((v109 > 1), v110 + 1, 1, v103);
          }

          *(v103 + 2) = v110 + 1;
          v111 = &v103[32 * v110];
          *(v111 + 2) = v145;
          *(v111 + 3) = v141;
        }

        while (v102 != v101);
        goto LABEL_86;
      }
    }

    v103 = MEMORY[0x1E69E7CC0];
LABEL_86:

    return v103;
  }

  v21 = 0;
  v22 = v175 + 32;
  while (v21 < *(v20 + 16))
  {
    v140 = v22;
    sub_1E193AD7C(v22, &v175);
    v23 = a2;
    v24 = v179;
    v25 = v180;
    v26 = v181;
    v27 = v182;
    v28 = v183;
    v29 = v184;
    v30 = v185;
    v163 = v175;
    v164 = v176;
    v165 = v177;
    sub_1E1361B28(v178, &v166);
    v168 = v24;
    a2 = v23;
    v169 = v25;
    v170 = v26;
    v171 = v27;
    v19 = &v152;
    v172 = v28;
    v173 = v29;
    v174 = v30;
    sub_1E193AD7C(&v163, &v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    sub_1E134B88C(&v152);
    __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
    sub_1E1AF11EC();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_1E193AD7C(&v163, &v152);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = v18;
    v40 = sub_1E135FCF4(&v152);
    v42 = v18[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_90;
    }

    v46 = v41;
    if (v18[3] < v45)
    {
      sub_1E168925C(v45, v39);
      v40 = sub_1E135FCF4(&v152);
      v13 = v139;
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_97;
      }

LABEL_11:
      v18 = v148;
      if (v46)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v13 = v139;
    if (v39)
    {
      goto LABEL_11;
    }

    v49 = v40;
    sub_1E1416008();
    v40 = v49;
    v18 = v148;
    if (v46)
    {
LABEL_12:
      v48 = v18[7] + 32 * v40;
      *v48 = v32;
      *(v48 + 8) = v34;
      *(v48 + 16) = v36;
      *(v48 + 24) = v38;
      goto LABEL_16;
    }

LABEL_14:
    v18[(v40 >> 6) + 8] |= 1 << v40;
    v50 = v40;
    sub_1E134E724(&v152, v18[6] + 40 * v40);
    v51 = v18[7] + 32 * v50;
    *v51 = v32;
    *(v51 + 8) = v34;
    *(v51 + 16) = v36;
    *(v51 + 24) = v38;
    v52 = v18[2];
    v44 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v44)
    {
      goto LABEL_91;
    }

    v18[2] = v53;
LABEL_16:
    sub_1E134B88C(&v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    v16 = v16 - v32;
    if (v13 - v18[2] < 1)
    {
      sub_1E1308058(&v163, &qword_1ECEBB420);
      v20 = v138;
      goto LABEL_20;
    }

    ++v21;
    sub_1E1308058(&v163, &qword_1ECEBB420);
    v22 = v140 + 120;
    v20 = v138;
    if (v137 == v21)
    {
      goto LABEL_20;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
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
  sub_1E1AF757C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E193C7FC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E1969018(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E193C868(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E193C868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E1AF741C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB420);
        v5 = sub_1E1AF628C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E193CB0C(v7, v8, a1, v4);
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
    return sub_1E193C970(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E193C970(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 120 * a3;
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v24 = v6;
    v25 = v5;
    while (1)
    {
      sub_1E193AD7C(v5, &v27);
      v7 = (v5 - 120);
      sub_1E193AD7C(v5 - 120, v26);
      v8 = v32;
      v9 = v26[80];
      sub_1E1308058(v26, &qword_1ECEBB420);
      result = sub_1E1308058(&v27, &qword_1ECEBB420);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v25 + 120;
        v6 = v24 - 1;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v31 = *(v5 + 64);
      v32 = *(v5 + 80);
      v33 = *(v5 + 96);
      v34 = *(v5 + 112);
      v27 = *v5;
      v28 = *(v5 + 16);
      v29 = *(v5 + 32);
      v30 = *(v5 + 48);
      v10 = *v7;
      v11 = *(v5 - 104);
      v12 = *(v5 - 72);
      *(v5 + 32) = *(v5 - 88);
      *(v5 + 48) = v12;
      *v5 = v10;
      *(v5 + 16) = v11;
      v13 = *(v5 - 56);
      v14 = *(v5 - 40);
      v15 = *(v5 - 24);
      *(v5 + 112) = *(v5 - 8);
      *(v5 + 80) = v14;
      *(v5 + 96) = v15;
      *(v5 + 64) = v13;
      v16 = v27;
      v17 = v28;
      v18 = v30;
      *(v5 - 88) = v29;
      *(v5 - 72) = v18;
      *v7 = v16;
      *(v5 - 104) = v17;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      *(v5 - 8) = v34;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 56) = v19;
      v5 -= 120;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E193CB0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v10 = *v106;
    if (!*v106)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1E1968F00(v9);
      v9 = result;
    }

    v98 = v5;
    v123 = v9;
    v99 = *(v9 + 2);
    if (v99 >= 2)
    {
      while (1)
      {
        v100 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v99];
        v5 = *&v9[16 * v99 + 24];
        sub_1E193D324((v100 + 120 * v6), (v100 + 120 * *&v9[16 * v99 + 16]), (v100 + 120 * v5), v10);
        if (v98)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v99 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v101 = &v9[16 * v99];
        *v101 = v6;
        *(v101 + 1) = v5;
        v123 = v9;
        result = sub_1E1968E74(v99 - 1);
        v9 = v123;
        v99 = *(v123 + 2);
        v6 = a3;
        if (v99 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &v115;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v12 >= v7)
    {
      v18 = v12;
      goto LABEL_21;
    }

    v124 = v7;
    v13 = *v6;
    sub_1E193AD7C(*v6 + 120 * v12, &v115);
    v14 = v11;
    v15 = 120 * v11;
    sub_1E193AD7C(v13 + v15, v113);
    v111 = v120 | v114 ^ 1;
    sub_1E1308058(v113, &qword_1ECEBB420);
    result = sub_1E1308058(&v115, &qword_1ECEBB420);
    v104 = v14;
    v16 = v14 + 2;
    v17 = v13 + v15 + 240;
    while (1)
    {
      v18 = v124;
      if (v124 == v16)
      {
        break;
      }

      sub_1E193AD7C(v17, &v115);
      sub_1E193AD7C(v17 - 120, v113);
      v19 = v120 & 1 | ((v114 & 1) == 0);
      sub_1E1308058(v113, &qword_1ECEBB420);
      result = sub_1E1308058(&v115, &qword_1ECEBB420);
      ++v16;
      v17 += 120;
      if ((v111 & 1) != v19)
      {
        v18 = v16 - 1;
        break;
      }
    }

    v6 = a3;
    if (v111)
    {
      if (v18 < v104)
      {
        goto LABEL_122;
      }

      if (v104 >= v18)
      {
        v11 = v104;
        goto LABEL_21;
      }

      v20 = v9;
      v21 = v5;
      v22 = 120 * v18 - 120;
      v23 = v18;
      v24 = v104;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v26 = v25 + v22;
          v119 = *(v25 + v15 + 64);
          v120 = *(v25 + v15 + 80);
          v121 = *(v25 + v15 + 96);
          v122 = *(v25 + v15 + 112);
          v115 = *(v25 + v15);
          v116 = *(v25 + v15 + 16);
          v117 = *(v25 + v15 + 32);
          v118 = *(v25 + v15 + 48);
          result = memmove((v25 + v15), (v25 + v22), 0x78uLL);
          *(v26 + 64) = v119;
          *(v26 + 80) = v120;
          *(v26 + 96) = v121;
          *(v26 + 112) = v122;
          *v26 = v115;
          *(v26 + 16) = v116;
          *(v26 + 32) = v117;
          *(v26 + 48) = v118;
        }

        ++v24;
        v22 -= 120;
        v15 += 120;
      }

      while (v24 < v23);
      v5 = v21;
      v6 = a3;
      v9 = v20;
    }

    v11 = v104;
LABEL_21:
    v27 = *(v6 + 8);
    if (v18 < v27)
    {
      if (__OFSUB__(v18, v11))
      {
        goto LABEL_121;
      }

      if (v18 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v27)
        {
          v28 = *(v6 + 8);
        }

        else
        {
          v28 = v11 + a4;
        }

        if (v28 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v18 != v28)
        {
          break;
        }
      }
    }

    v29 = v18;
    if (v18 < v11)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1E172D878((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v11;
    *(v33 + 5) = v29;
    v108 = v29;
    v34 = *v106;
    if (!*v106)
    {
      goto LABEL_130;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_50:
          if (v39)
          {
            goto LABEL_109;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_112;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_116;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_64:
        if (v57)
        {
          goto LABEL_111;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_114;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_71:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_127;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1E193D324((*v6 + 120 * v74), (*v6 + 120 * *&v9[16 * v35 + 32]), (*v6 + 120 * v75), v34);
        if (v5)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v123 = v9;
        result = sub_1E1968E74(v35);
        v9 = v123;
        v32 = *(v123 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    v8 = v108;
    if (v108 >= v7)
    {
      goto LABEL_92;
    }
  }

  v102 = v9;
  v77 = v18;
  v78 = *v6;
  v79 = *v6 + 120 * v77;
  v105 = v11;
  v124 = v77;
  v80 = v11 - v77;
  v109 = v28;
LABEL_82:
  v110 = v80;
  v112 = v79;
  v81 = v79;
  while (1)
  {
    sub_1E193AD7C(v81, &v115);
    v82 = (v81 - 120);
    sub_1E193AD7C(v81 - 120, v113);
    v83 = v120;
    v84 = v114;
    sub_1E1308058(v113, &qword_1ECEBB420);
    result = sub_1E1308058(&v115, &qword_1ECEBB420);
    if ((v83 & 1) == 0 && v84)
    {
LABEL_81:
      v79 = v112 + 120;
      v80 = v110 - 1;
      v29 = v109;
      if (++v124 != v109)
      {
        goto LABEL_82;
      }

      v9 = v102;
      v6 = a3;
      v11 = v105;
      if (v109 < v105)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v78)
    {
      break;
    }

    v119 = *(v81 + 64);
    v120 = *(v81 + 80);
    v121 = *(v81 + 96);
    v122 = *(v81 + 112);
    v115 = *v81;
    v116 = *(v81 + 16);
    v117 = *(v81 + 32);
    v118 = *(v81 + 48);
    v85 = *v82;
    v86 = *(v81 - 104);
    v87 = *(v81 - 72);
    *(v81 + 32) = *(v81 - 88);
    *(v81 + 48) = v87;
    *v81 = v85;
    *(v81 + 16) = v86;
    v88 = *(v81 - 56);
    v89 = *(v81 - 40);
    v90 = *(v81 - 24);
    *(v81 + 112) = *(v81 - 8);
    *(v81 + 80) = v89;
    *(v81 + 96) = v90;
    *(v81 + 64) = v88;
    v91 = v115;
    v92 = v116;
    v93 = v118;
    *(v81 - 88) = v117;
    *(v81 - 72) = v93;
    *v82 = v91;
    *(v81 - 104) = v92;
    v94 = v119;
    v95 = v120;
    v96 = v121;
    *(v81 - 8) = v122;
    *(v81 - 40) = v95;
    *(v81 - 24) = v96;
    *(v81 - 56) = v94;
    v81 -= 120;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1E193D324(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 120;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 120;
  if (v9 >= v11)
  {
    v19 = 120 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 120 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 120 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v30 = v4;
      do
      {
        v20 = (v6 - 120);
        v21 = v13 - 120;
        v5 -= 120;
        while (1)
        {
          v35 = v21 + 120;
          v24 = v5 + 120;
          sub_1E193AD7C(v21, v33);
          v25 = v20;
          sub_1E193AD7C(v20, v31);
          v26 = v34;
          v27 = v32;
          sub_1E1308058(v31, &qword_1ECEBB420);
          sub_1E1308058(v33, &qword_1ECEBB420);
          if ((v26 & 1) != 0 || !v27)
          {
            break;
          }

          if (v24 != v35)
          {
            memmove(v5, v21, 0x78uLL);
          }

          v22 = v21 - 120;
          v5 -= 120;
          v23 = v21 > v30;
          v21 -= 120;
          v20 = v25;
          if (!v23)
          {
            v13 = v22 + 120;
            v18 = v6;
            v4 = v30;
            goto LABEL_36;
          }
        }

        v18 = v25;
        if (v24 != v6)
        {
          memmove(v5, v25, 0x78uLL);
        }

        v4 = v30;
        v13 = v35;
        if (v35 <= v30)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v7);
      v13 = v21 + 120;
    }
  }

  else
  {
    v12 = 120 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 120 && v6 < v5)
    {
      while (1)
      {
        sub_1E193AD7C(v6, v33);
        sub_1E193AD7C(v4, v31);
        v14 = v34;
        v15 = v32;
        sub_1E1308058(v31, &qword_1ECEBB420);
        sub_1E1308058(v33, &qword_1ECEBB420);
        if ((v14 & 1) != 0 || !v15)
        {
          break;
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 120;
        if (!v17)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 120;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 120;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x78uLL);
      goto LABEL_14;
    }

LABEL_16:
    v18 = v7;
  }

LABEL_36:
  v28 = 120 * ((v13 - v4) / 120);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

uint64_t sub_1E193D658(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C340(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2618);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB420);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1E135C340((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a5[2];
      if (v27 < v26)
      {
        v26 = a5[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a5;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2618);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB420);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1E135C340((v30 > 1), v31 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1E193DA30(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v89 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_11:
    v16 = a1;

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v12 = 0;
  v13 = a1 + 32;
  v62 = a1 + 32;
  while (1)
  {
    sub_1E193AD7C(v13, v79);
    if (v83 >= 8u && v83 != 9)
    {
      break;
    }

    v14 = sub_1E1AF74AC();

    result = sub_1E1308058(v79, &qword_1ECEBB420);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v12;
    v13 += 120;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v83 == 10)
  {
    sub_1E1308058(v79, &qword_1ECEBB420);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  result = sub_1E1308058(v79, &qword_1ECEBB420);
LABEL_13:
  v18 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v18 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 < v18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v11 == v18)
  {

    v17 = a1;
  }

  else
  {
    sub_1E14E6490(a1, v62, 0, (2 * v18) | 1);
    v17 = v19;
  }

  sub_1E14E6490(a1, v62, v18, (2 * v11) | 1);
  v16 = v20;
LABEL_20:
  v21 = *(v17 + 16);

  if (v21)
  {
    v22 = sub_1E193B5C0(v17, a2, a3, a4, a5);

    sub_1E1728220(v22);
  }

  else
  {
  }

  v23 = *(v16 + 16);

  if (v23)
  {
    if (*(v89 + 16))
    {
      MaxY = CGRectGetMaxY(*(v89 + 32));
    }

    else
    {
      MaxY = 0.0;
    }

    v90.origin.x = a2;
    v90.origin.y = a3;
    v90.size.width = a4;
    v90.size.height = a5;
    MinX = CGRectGetMinX(v90);
    v91.origin.x = a2;
    v91.origin.y = a3;
    v91.size.width = a4;
    v91.size.height = a5;
    Width = CGRectGetWidth(v91);
    v92.origin.x = a2;
    v27 = Width;
    v92.origin.y = a3;
    v92.size.width = a4;
    v92.size.height = a5;
    Height = CGRectGetHeight(v92);
    v78 = MEMORY[0x1E69E7CC0];
    v93.origin.x = MinX;
    v93.origin.y = MaxY;
    v93.size.width = v27;
    v93.size.height = Height;
    CGRectGetMinX(v93);
    v63 = MinX;
    v94.origin.x = MinX;
    v94.origin.y = MaxY;
    v94.size.width = v27;
    v94.size.height = Height;
    MinY = CGRectGetMinY(v94);
    v30 = *(v16 + 16);
    if (v30)
    {
      v65 = MinY;
      v61 = MaxY;
      v31 = a6 + -1.0;
      v32 = v16 + 32;
      v33 = MEMORY[0x1E69E7CC0];
      LOBYTE(v34) = 1;
      v35 = 0.0;
      v60 = a6 + -1.0;
      do
      {
        v66 = v30;
        sub_1E193AD7C(v32, v79);
        v47 = v82;
        v48 = v83;
        v49 = v84;
        v50 = v85;
        v51 = v86;
        v52 = v87;
        v53 = v88;
        v67[0] = v79[0];
        v67[1] = v79[1];
        v68 = v80;
        sub_1E1361B28(&v81, v69);
        v71 = v47;
        v72 = v48;
        v73 = v49;
        v74 = v50;
        v75 = v51;
        v76 = v52;
        v77 = v53;
        __swift_project_boxed_opaque_existential_1Tm(v69, v70);
        sub_1E1AF11EC();
        v34 = v34 & (v35 < v31);
        if (v34 == 1)
        {
          v36 = v54;
          v37 = v55;
          sub_1E1728220(v33);
          __swift_project_boxed_opaque_existential_1Tm((v64 + 104), *(v64 + 128));
          sub_1E1AF12EC();
          v39 = v38;
          v95.origin.y = v61;
          v95.origin.x = v63;
          v95.size.height = Height;
          v40 = v27;
          v95.size.width = v27;
          v41 = CGRectGetMinX(v95);
          v33 = sub_1E172D670(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v43 = *(v33 + 2);
          v42 = *(v33 + 3);
          if (v43 >= v42 >> 1)
          {
            v33 = sub_1E172D670((v42 > 1), v43 + 1, 1, v33);
          }

          v44 = v65;
          v96.origin.y = v65 + v39;
          *(v33 + 2) = v43 + 1;
          v45 = &v33[32 * v43];
          v45[4] = v41;
          v45[5] = v65 + v39;
          v45[6] = v36;
          v45[7] = v37;
          v96.origin.x = v41;
          v96.size.width = v36;
          v96.size.height = v37;
          v46 = CGRectGetMaxY(v96);
          if (v46 > v65)
          {
            v44 = v46;
          }

          v65 = v44;
          v35 = v35 + 1.0;
          v31 = v60;
          v27 = v40;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1E172D670(0, *(v33 + 2) + 1, 1, v33);
          }

          v57 = *(v33 + 2);
          v56 = *(v33 + 3);
          if (v57 >= v56 >> 1)
          {
            v33 = sub_1E172D670((v56 > 1), v57 + 1, 1, v33);
          }

          *(v33 + 2) = v57 + 1;
          v58 = &v33[32 * v57];
          *(v58 + 2) = 0u;
          *(v58 + 3) = 0u;
        }

        __swift_project_boxed_opaque_existential_1Tm(v69, v70);
        sub_1E1AF118C();
        sub_1E1308058(v67, &qword_1ECEBB420);
        v32 += 120;
        v30 = v66 - 1;
      }

      while (v66 != 1);
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    sub_1E1728220(v33);
    sub_1E1728220(v78);
  }

  else
  {
  }

  return v89;
}

uint64_t sub_1E193E160(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 306))
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

uint64_t sub_1E193E1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E193E254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E193E29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E193E33C(void *a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v12 = a3;
  v77 = MEMORY[0x1E69E7CC0];
  MinY = CGRectGetMinY(*&a3);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 144), *(v6 + 168));
  sub_1E1AF12EC();
  v16 = v15;
  v74 = a2;
  v17 = sub_1E140A820(a2);
  if (v17)
  {
    v18 = v17;
    v19 = a1[2];

    v20 = sub_1E193D658(0, v19, v18, v18, a1);

    v73 = *(v20 + 16);
    if (!v73)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB430);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E1B02CC0;
    *(v20 + 32) = a1;

    v73 = 1;
  }

  v22 = 0;
  v23 = MinY + v16;
  v72 = v12;
  while (v22 < *(v20 + 16))
  {
    v25 = *(v20 + 32 + 8 * v22);

    v78.origin.x = v12;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    MinX = CGRectGetMinX(v78);
    v27 = sub_1E193BBDC(v25, v74, v12, a4, a5, a6);

    v28 = *(v27 + 16);
    if (v28)
    {
      v75 = MEMORY[0x1E69E7CC0];
      sub_1E135C320(0, v28, 0);
      v29 = v75;
      v30 = (v27 + 32);
      v31 = *(v75 + 16);
      v32 = v28;
      do
      {
        v33 = *v30;
        v76 = v29;
        v34 = *(v29 + 24);
        v35 = v31 + 1;
        if (v31 >= v34 >> 1)
        {
          sub_1E135C320((v34 > 1), v31 + 1, 1);
          v29 = v76;
        }

        *(v29 + 16) = v35;
        *(v29 + 8 * v31 + 32) = v33;
        v30 += 4;
        ++v31;
        --v32;
      }

      while (v32);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
      v35 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v35)
      {
        v37 = 0.0;
        goto LABEL_24;
      }
    }

    if (v35 <= 3)
    {
      v36 = 0;
      v37 = 0.0;
LABEL_22:
      v40 = v35 - v36;
      v41 = 8 * v36 + 32;
      do
      {
        v37 = v37 + *(v29 + v41);
        v41 += 8;
        --v40;
      }

      while (v40);
      goto LABEL_24;
    }

    v36 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (v29 + 48);
    v37 = 0.0;
    v39 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v37 = v37 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
      v38 += 4;
      v39 -= 4;
    }

    while (v39);
    if (v35 != v36)
    {
      goto LABEL_22;
    }

LABEL_24:

    v79.origin.x = v12;
    v42 = a4;
    v79.origin.y = a4;
    v43 = a5;
    v79.size.width = a5;
    v44 = a6;
    v79.size.height = a6;
    Width = CGRectGetWidth(v79);
    v46 = *(v27 + 16);
    if (v46)
    {
      v47 = (Width - v37) / (v28 - 1);
      v48 = (v27 + 40);
      v49 = MEMORY[0x1E69E7CC0];
      v50 = MEMORY[0x1E69E7CC0];
      do
      {
        v51 = *(v48 - 1);
        v52 = *v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1E172D670(0, *(v50 + 2) + 1, 1, v50);
        }

        v54 = *(v50 + 2);
        v53 = *(v50 + 3);
        if (v54 >= v53 >> 1)
        {
          v50 = sub_1E172D670((v53 > 1), v54 + 1, 1, v50);
        }

        *(v50 + 2) = v54 + 1;
        v55 = &v50[32 * v54];
        v55[4] = MinX;
        v55[5] = v23;
        v55[6] = v51;
        v55[7] = v52;
        v80.origin.x = MinX;
        v80.origin.y = v23;
        v80.size.width = v51;
        v80.size.height = v52;
        MinX = v47 + CGRectGetMaxX(v80);
        v48 += 4;
        --v46;
      }

      while (v46);
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1E1728220(v56);
    v57 = *(v50 + 2);
    if (v57)
    {
      sub_1E135C320(0, v57, 0);
      v58 = v50 + 56;
      do
      {
        MaxY = CGRectGetMaxY(*(v58 - 24));
        v61 = *(v49 + 16);
        v60 = *(v49 + 24);
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v63 = MaxY;
          sub_1E135C320((v60 > 1), v61 + 1, 1);
          MaxY = v63;
        }

        *(v49 + 16) = v62;
        *(v49 + 8 * v61 + 32) = MaxY;
        v58 += 32;
        --v57;
      }

      while (v57);
    }

    else
    {
      v62 = *(v49 + 16);
      if (!v62)
      {

        if (!*(v50 + 2))
        {
          goto LABEL_58;
        }

        v68 = *(v50 + 4);
        v69 = *(v50 + 5);
        v70 = *(v50 + 6);
        v71 = *(v50 + 7);

        v81.origin.x = v68;
        v81.origin.y = v69;
        v81.size.width = v70;
        v81.size.height = v71;
        v65 = CGRectGetMaxY(v81);
        a6 = v44;
        a5 = v43;
        goto LABEL_7;
      }
    }

    a6 = v44;

    v64 = *(v49 + 16);
    if (!v64)
    {
      goto LABEL_55;
    }

    a5 = v43;
    v65 = *(v49 + 32);
    v66 = v62 - 1;
    if (v62 == 1)
    {

LABEL_7:
      a4 = v42;
      goto LABEL_8;
    }

    if (v64 == 1)
    {
      goto LABEL_56;
    }

    if (v62 > v64)
    {
      goto LABEL_57;
    }

    a4 = v42;
    v67 = 40;
    do
    {
      if (v65 < *(v49 + v67))
      {
        v65 = *(v49 + v67);
      }

      v67 += 8;
      --v66;
    }

    while (v66);

LABEL_8:
    v12 = v72;
    ++v22;
    __swift_project_boxed_opaque_existential_1Tm((v7 + 104), *(v7 + 128));
    result = sub_1E1AF12EC();
    v23 = v65 + v24;
    if (v22 == v73)
    {

      return v77;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}
double ASKBagContract.arcadeDownloadPacksGetAllCTADismissDelay.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = sub_1E1AF3D0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB14F8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AAFB8], v4);
  sub_1E1AF52AC();
  (*(v5 + 8))(v7, v4);
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return *&v9[1];
}

uint64_t sub_1E14B0BD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

void *ASKBagContract.productPageParameterAllowList.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1EE1D2190 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_1E1679410(v7);

    if (v4)
    {
      return v4;
    }
  }

  return &unk_1F5C284F8;
}

uint64_t sub_1E14B0FF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1E14B12DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v3 + 8))(v5, v2);
  return v7[15];
}

uint64_t sub_1E14B143C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1E1AF534C();
  sub_1E1AF531C();
  (*(v3 + 8))(v5, v2);
  if (v9)
  {
    v6 = sub_1E1679410(v9);

    if (v6)
    {
      return v6;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t ASKBagContract.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ASKBagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14B1694@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_1E14B16A0()
{
  result = qword_1EE1E0F30;
  if (!qword_1EE1E0F30)
  {
    type metadata accessor for StoreTab();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0F30);
  }

  return result;
}

uint64_t sub_1E14B16F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14B175C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
  }

  return result;
}

uint64_t sub_1E14B1770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14B17D4(uint64_t a1)
{
  v2 = type metadata accessor for StoreTab();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E14B1834()
{
  result = qword_1ECEB4940;
  if (!qword_1ECEB4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4940);
  }

  return result;
}

uint64_t static MetadataRibbonTextStyle.fontSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id static MetadataRibbonTextStyle.textStyle(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x1E69AB868];
  v4 = sub_1E1AF105C();
  (*(*(v4 - 8) + 104))(a2, v3, v4);

  return a1;
}

uint64_t static MetadataRibbonTextStyle.useCase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF12AC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x1E69AB860];
  v6 = sub_1E1AF105C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

uint64_t type metadata accessor for MetadataRibbonTextStyle()
{
  result = qword_1EE1EBEA0;
  if (!qword_1EE1EBEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14B1B2C()
{
  result = sub_1E1AF105C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FramedMediaCaptionViewLayout.init(metrics:captionTextView:ordinalTextView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 272) = *(a1 + 192);
  *(a4 + 288) = v6;
  *(a4 + 304) = *(a1 + 224);
  v7 = *(a1 + 144);
  *(a4 + 208) = *(a1 + 128);
  *(a4 + 224) = v7;
  v8 = *(a1 + 176);
  *(a4 + 240) = *(a1 + 160);
  *(a4 + 256) = v8;
  v9 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v9;
  v10 = *(a1 + 112);
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = v10;
  v11 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v11;
  v12 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v12;
  sub_1E1308EC0(a2, a4 + 40);

  return sub_1E1308EC0(a3, a4);
}

uint64_t FramedMediaCaptionViewLayout.Metrics.init(topSpace:bottomSpace:ordinalAdjustmentSpace:captionMargin:ordinalVerticalOffset:ordinalMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_1E1308EC0(a1, a6);
  sub_1E1308EC0(a2, (a6 + 5));
  sub_1E1308EC0(a3, (a6 + 10));
  a6[15] = a7;
  a6[16] = a8;
  a6[17] = a9;
  a6[18] = a10;
  sub_1E1308EC0(a5, (a6 + 19));

  return sub_1E1308EC0(a4, (a6 + 24));
}

double FramedMediaCaptionViewLayout.measurements(fitting:in:)(double a1, double a2)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v2 + 40), *(v2 + 64));
  if (!sub_1E1AF142C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2, *(v2 + 24));
    if (!sub_1E1AF142C())
    {
      return *MEMORY[0x1E69ABBD0];
    }
  }

  __swift_project_boxed_opaque_existential_1Tm(v2, *(v2 + 24));
  v9 = 0.0;
  if (sub_1E1AF112C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2, *(v2 + 24));
    sub_1E1AF11DC();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1Tm((v2 + 232), *(v2 + 256));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v13 = v12;
    v14 = *(v6 + 8);
    v14(v8, v5);
    if (v11 + v13 <= a1)
    {
      v9 = v11 + v13;
    }

    else
    {
      v9 = a1;
    }

    __swift_project_boxed_opaque_existential_1Tm((v2 + 272), *(v2 + 296));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v14(v8, v5);
  }

  v15 = *(v2 + 208);
  v16 = *(v2 + 224);
  v17 = a1 - v15 - v16 - v9;
  __swift_project_boxed_opaque_existential_1Tm((v2 + 40), *(v2 + 64));
  sub_1E1AF11CC();
  v21[0] = v18;
  *&v21[1] = a2;
  if (v16 + v15 + v9 + v17 <= a1)
  {
    v19 = v16 + v15 + v9 + v17;
  }

  else
  {
    v19 = a1;
  }

  __swift_project_boxed_opaque_existential_1Tm((v2 + 80), *(v2 + 104));
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm((v2 + 120), *(v2 + 144));
  sub_1E1AF12CC();
  return v19;
}

uint64_t FramedMediaCaptionViewLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v72 = a2;
  v73 = a3;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[25];
  v16 = v5[26];
  v17 = v5[27];
  v18 = v5[28];
  v19 = [a1 traitCollection];
  v20 = sub_1E1AF697C();

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  v74 = a4;
  v69 = a4 - v16 - v18;
  v67 = a5 - v15 - v17;
  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 3));
  v22 = sub_1E1AF112C();
  v70 = 0.0;
  v68 = v21;
  v23 = v21;
  v24 = v15;
  v25 = 0.0;
  v26 = 0.0;
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 3));
    v27 = v69;
    v28 = v67;
    sub_1E1AF11CC();
    v30 = v29;
    v32 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v6 + 10, *(v6 + 13));
    sub_1E1AF12FC();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1Tm(v6 + 34, *(v6 + 37));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v36 = v35;
    (*(v11 + 8))(v14, v10);
    v75.origin.x = v68;
    v75.origin.y = v15;
    v75.size.width = v27;
    v75.size.height = v28;
    v23 = floor(CGRectGetMinX(v75));
    v24 = floor(v34 + v36);
    v25 = ceil(v30);
    v26 = ceil(v32);
  }

  v37 = v15;
  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 3));
  v66 = a5;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v76.origin.x = v23;
  v76.size.height = v26;
  v38 = v24;
  v76.origin.y = v24;
  v39 = v25;
  v76.size.width = v25;
  height = v76.size.height;
  if (!CGRectIsEmpty(v76))
  {
    __swift_project_boxed_opaque_existential_1Tm(v6 + 29, *(v6 + 32));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v70 = v40;
    (*(v11 + 8))(v14, v10);
  }

  v41 = v68;
  v42 = v69;
  v77.origin.x = v68;
  v77.origin.y = v37;
  v77.size.width = v69;
  v43 = v67;
  v77.size.height = v67;
  CGRectGetWidth(v77);
  v78.origin.x = v23;
  v78.origin.y = v38;
  v78.size.width = v39;
  v78.size.height = height;
  CGRectGetWidth(v78);
  v64 = v23;
  v44 = v70;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, *(v6 + 8));
  v79.origin.x = v41;
  v79.origin.y = v37;
  v79.size.width = v42;
  v79.size.height = v43;
  CGRectGetHeight(v79);
  sub_1E1AF11CC();
  v46 = v45;
  v48 = v47;
  v68 = v50;
  v69 = v49;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, *(v6 + 13));
  v51 = v46;
  v65 = v46;
  v52 = v48;
  v67 = v48;
  sub_1E1AF12FC();
  v54 = v53;
  v80.origin.x = v64;
  v80.origin.y = v38;
  v80.size.width = v39;
  v80.size.height = height;
  v55 = v44 + floor(CGRectGetMaxX(v80));
  v56 = ceil(v51);
  v57 = ceil(v52);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, *(v6 + 8));
  v59 = v72;
  v58 = v73;
  v60 = v74;
  v61 = v66;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v81.origin.x = v59;
  v81.origin.y = v58;
  v81.size.width = v60;
  v81.size.height = v61;
  CGRectGetWidth(v81);
  v82.origin.x = v55;
  v82.origin.y = floor(v54);
  v82.size.width = v56;
  v82.size.height = v57;
  CGRectGetMaxY(v82);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 15, *(v6 + 18));
  sub_1E1AF12CC();
  return sub_1E1AF106C();
}

uint64_t sub_1E14B26C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1E14B2710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AppPromotion.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v51 = sub_1E1AF39DC();
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = v38 - v7;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v45 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  if (v22)
  {
    v46 = v21;
    v47 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v9;
    v26 = v25;
    (*(v24 + 8))(v11, v8);
    v46 = v23;
    v47 = v26;
  }

  sub_1E1AF6F6C();
  v27 = *(v13 + 8);
  v27(v20, v12);
  v28 = v49;
  *(v3 + 24) = v48;
  *(v3 + 40) = v28;
  *(v3 + 56) = v50;
  v29 = v45;
  sub_1E1AF381C();
  sub_1E14B2CE8();
  v30 = v42;
  sub_1E1AF36AC();
  if (v30)
  {
    (*(v43 + 8))(v44, v51);
    v27(v29, v12);
    v27(v17, v12);
    sub_1E134B88C(v3 + 24);
    type metadata accessor for AppPromotion();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38[1] = v13 + 8;
    v27(v17, v12);
    *(v3 + 16) = v48;
    sub_1E1AF46DC();
    v38[0] = v12;
    v42 = 0;
    v31 = v39;
    sub_1E1AF381C();
    v32 = v43;
    v33 = v44;
    (*(v43 + 16))(v41, v44, v51);
    v34 = v40;
    sub_1E1AF464C();
    sub_1E134B7C8(v34, v3 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics);
    type metadata accessor for Action();
    sub_1E1AF381C();
    v35 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v33);
    (*(v32 + 8))(v33, v51);
    v36 = v38[0];
    v27(v29, v38[0]);
    v27(v31, v36);
    *(v3 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v35;
  }

  return v3;
}

unint64_t sub_1E14B2CE8()
{
  result = qword_1EE1E18D8;
  if (!qword_1EE1E18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E18D8);
  }

  return result;
}

uint64_t type metadata accessor for AppPromotion()
{
  result = qword_1EE1F8B40;
  if (!qword_1EE1F8B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotion.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t sub_1E14B2DD8@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppPromotion();
  *a1 = v1;
}

AppStoreKit::AppPromotionType_optional __swiftcall AppPromotionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AppPromotionType.rawValue.getter()
{
  v1 = 0x65676E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x657449726566666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657645707061;
  }
}

uint64_t sub_1E14B2EE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676E69746E6F63;
  v4 = 0xEF726566664F746ELL;
  if (v2 != 1)
  {
    v3 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E657645707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x65676E69746E6F63;
  v8 = 0xEF726566664F746ELL;
  if (*a2 != 1)
  {
    v7 = 0x657449726566666FLL;
    v8 = 0xE90000000000006DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E657645707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E14B3008()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14B30BC()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14B315C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14B3218(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF726566664F746ELL;
  v5 = 0x65676E69746E6F63;
  if (v2 != 1)
  {
    v5 = 0x657449726566666FLL;
    v4 = 0xE90000000000006DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E657645707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppPromotion.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppPromotion.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*static AppPromotion.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_1E1AF381C();
  sub_1E14B2CE8();
  sub_1E1AF36AC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_1E14B39C8(v11, a1, a2);
}

uint64_t static AppPromotion.tryToMakeInstances(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_1E1AF5A6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E134FD1C(a1, v6, &qword_1ECEB1F90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB1F90);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_1E1AF5A3C();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x1EEE9AC00](v11);
  *&v14[-16] = a2;
  type metadata accessor for AppPromotion();
  v13 = sub_1E1AF59FC();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void (*sub_1E14B3670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_1E1AF381C();
  sub_1E14B2CE8();
  sub_1E1AF36AC();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_1E14B39C8(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t AppPromotion.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14B38F4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E14B3944@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppPromotion();
  *a1 = v3;
}

void (*sub_1E14B39C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = sub_1E1AF380C();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v21;
  v24 = *a1;
  v26 = *(v25 + 16);
  v27 = (v5 + 16);
  if (v24)
  {
    if (v24 == 1)
    {
      v26(v19, v29, v22);
      (*v27)(v10, v30, v4);
      type metadata accessor for ContingentOffer();
      swift_allocObject();
      return ContingentOffer.init(deserializing:using:)(v19, v10);
    }

    else
    {
      v26(v16, v29, v22);
      (*v27)(v7, v30, v4);
      type metadata accessor for OfferItem();
      swift_allocObject();
      return OfferItem.init(deserializing:using:)(v16, v7);
    }
  }

  else
  {
    v26(&v29 - v21, v29, v22);
    (*v27)(v13, v30, v4);
    type metadata accessor for AppEvent();
    swift_allocObject();
    return AppEvent.init(deserializing:using:)(v23, v13);
  }
}

unint64_t sub_1E14B3CE0()
{
  result = qword_1ECEB4950;
  if (!qword_1ECEB4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4950);
  }

  return result;
}

unint64_t sub_1E14B3D38()
{
  result = qword_1EE1F8B50;
  if (!qword_1EE1F8B50)
  {
    type metadata accessor for AppPromotion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8B50);
  }

  return result;
}

void sub_1E14B3DA8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PageGridCaching<>.invalidateCache()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a1, a3);
  swift_beginAccess();
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(v5 + 24) = v6;

  v7 = (*(a2 + 8))(a1, a2);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_1E1383E78(v9, v13);
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v9 += 48;
      --v8;
    }

    while (v8);
  }
}

void sub_1E14B3FFC()
{
  dword_1ECEB4958 = 0;
  word_1ECEB495C = 256;
  byte_1ECEB495E = 0;
}

AppStoreKit::TodayCard::Style_optional __swiftcall TodayCard.Style.init(rawValue:)(Swift::String rawValue)
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

uint64_t TodayCard.Style.rawValue.getter()
{
  v1 = 0x6974616D6F747561;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0)
  {
    v1 = 0x6574696877;
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

uint64_t sub_1E14B40EC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14B41A0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14B4240()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14B42FC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x746867696CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
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

uint64_t TodayCard.__allocating_init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v69 = a8;
  v59 = a7;
  v58 = a6;
  v72 = a5;
  v67 = a3;
  v56 = a2;
  v73 = a21;
  v57 = a20;
  v70 = a9;
  v71 = a11;
  v23 = sub_1E1AEFEAC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v66 = *a12;
  v28 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v29 = MEMORY[0x1E69E69C0];
  *(v27 + 184) = MEMORY[0x1E69E69B8];
  *(v27 + 192) = v29;
  v30 = swift_allocObject();
  *(v27 + 160) = v30;
  v68 = a1;
  sub_1E134FD1C(a1, &v76, &unk_1ECEB5670);
  if (*(&v77 + 1))
  {
    v31 = v77;
    *(v30 + 16) = v76;
    *(v30 + 32) = v31;
    *(v30 + 48) = v78;
  }

  else
  {
    sub_1E1AEFE9C();
    v32 = sub_1E1AEFE7C();
    v34 = v33;
    (*(v24 + 8))(v26, v23);
    v74 = v32;
    v75 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v76, &unk_1ECEB5670);
  }

  v64 = a17;
  v65 = a18;
  v62 = a15;
  v63 = a16;
  v61 = a14;
  v55 = a13;
  v60 = a10;
  sub_1E134FD1C(v73, v27 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics, &unk_1ECEB1770);
  v35 = v67;
  *(v27 + 16) = v56;
  *(v27 + 24) = v35;
  v67 = a4;
  *(v27 + 32) = a4;
  v36 = v71;
  v37 = v72;
  v38 = v58;
  *(v27 + 40) = v72;
  *(v27 + 48) = v38;
  v39 = v70;
  *(v27 + 56) = v59;
  *(v27 + 64) = v39;
  *(v27 + 72) = v36;
  *(v27 + 80) = v57 & 1;
  if (v28 == 2)
  {
    v40 = qword_1ECEB0E00;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v28) = dword_1ECEB4958;
    v41 = BYTE1(dword_1ECEB4958);
    LOBYTE(v42) = BYTE2(dword_1ECEB4958);
    LOBYTE(v43) = HIBYTE(dword_1ECEB4958);
    LOBYTE(v44) = word_1ECEB495C;
    LOBYTE(v45) = HIBYTE(word_1ECEB495C);
    LOBYTE(v46) = byte_1ECEB495E;
    v37 = v72;
  }

  else
  {
    v59 = (v28 >> 8) & 1;
    v42 = (v28 >> 16) & 1;
    v43 = (v28 >> 24) & 1;
    v44 = HIDWORD(v28) & 1;
    v45 = (v28 >> 40) & 1;
    v46 = HIWORD(v28) & 1;

    v41 = v59;
  }

  v47 = (v27 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v28 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_clickAction) = v55;
  v48.value._countAndFlagsBits = v67;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_1E1308058(v73, &unk_1ECEB1770);
  sub_1E1308058(v68, &unk_1ECEB5670);
  v49 = v69;
  *(v27 + 88) = v76;
  *(v27 + 96) = v49;
  *(v27 + 104) = v66;
  v50 = v61;
  *(v27 + 112) = v60;
  *(v27 + 120) = v50;
  v51 = v63;
  *(v27 + 128) = v62;
  *(v27 + 136) = v51;
  v52 = v65;
  *(v27 + 144) = v64;
  *(v27 + 152) = v52;
  *(v27 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v27;
}

uint64_t TodayCard.init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v68 = a8;
  v58 = a7;
  v57 = a6;
  v71 = a5;
  v66 = a3;
  v55 = a2;
  v72 = a21;
  v56 = a20;
  v69 = a9;
  v70 = a11;
  v25 = sub_1E1AEFEAC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a12;
  v29 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v79 = MEMORY[0x1E69E69B8];
  v80 = MEMORY[0x1E69E69C0];
  v30 = swift_allocObject();
  *&v78 = v30;
  v67 = a1;
  sub_1E134FD1C(a1, &v75, &unk_1ECEB5670);
  if (*(&v76 + 1))
  {
    v31 = v76;
    *(v30 + 16) = v75;
    *(v30 + 32) = v31;
    *(v30 + 48) = v77;
  }

  else
  {
    sub_1E1AEFE9C();
    v32 = sub_1E1AEFE7C();
    v34 = v33;
    (*(v26 + 8))(v28, v25);
    v73 = v32;
    v74 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v75, &unk_1ECEB5670);
  }

  v64 = a18;
  v63 = a17;
  v62 = a16;
  v61 = a15;
  v60 = a14;
  v54 = a13;
  v59 = a10;
  sub_1E1308EC0(&v78, v22 + 160);
  sub_1E134FD1C(v72, v22 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics, &unk_1ECEB1770);
  v35 = v66;
  *(v22 + 16) = v55;
  *(v22 + 24) = v35;
  v66 = a4;
  *(v22 + 32) = a4;
  v36 = v70;
  v37 = v71;
  v38 = v57;
  *(v22 + 40) = v71;
  *(v22 + 48) = v38;
  v39 = v69;
  *(v22 + 56) = v58;
  *(v22 + 64) = v39;
  *(v22 + 72) = v36;
  *(v22 + 80) = v56 & 1;
  if (v29 == 2)
  {
    v40 = qword_1ECEB0E00;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v29) = dword_1ECEB4958;
    v41 = BYTE1(dword_1ECEB4958);
    LOBYTE(v42) = BYTE2(dword_1ECEB4958);
    LOBYTE(v43) = HIBYTE(dword_1ECEB4958);
    LOBYTE(v44) = word_1ECEB495C;
    LOBYTE(v45) = HIBYTE(word_1ECEB495C);
    LOBYTE(v46) = byte_1ECEB495E;
    v37 = v71;
  }

  else
  {
    v58 = (v29 >> 8) & 1;
    v42 = (v29 >> 16) & 1;
    v43 = (v29 >> 24) & 1;
    v44 = HIDWORD(v29) & 1;
    v45 = (v29 >> 40) & 1;
    v46 = HIWORD(v29) & 1;

    v41 = v58;
  }

  v47 = (v22 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v29 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_clickAction) = v54;
  v48.value._countAndFlagsBits = v66;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_1E1308058(v72, &unk_1ECEB1770);
  sub_1E1308058(v67, &unk_1ECEB5670);
  v49 = v68;
  *(v22 + 88) = v78;
  *(v22 + 96) = v49;
  *(v22 + 104) = v65;
  v50 = v60;
  *(v22 + 112) = v59;
  *(v22 + 120) = v50;
  v51 = v62;
  *(v22 + 128) = v61;
  *(v22 + 136) = v51;
  v52 = v64;
  *(v22 + 144) = v63;
  *(v22 + 152) = v52;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v22;
}

uint64_t TodayCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TodayCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v193 = a2;
  v5 = *v3;
  v201 = v3;
  v191 = v5;
  v198 = sub_1E1AF39DC();
  v196 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v195 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v194 = &v182 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = (&v182 - v10);
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v184 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v187 = &v182 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v182 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v185 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v199 = &v182 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v182 - v29;
  v202 = a1;
  sub_1E1AF381C();
  *(&v211 + 1) = MEMORY[0x1E69E69B8];
  *&v212 = MEMORY[0x1E69E69C0];
  *&v210 = swift_allocObject();
  v31 = sub_1E1AF37CC();
  v200 = v15;
  if (v32)
  {
    *&v207 = v31;
    *(&v207 + 1) = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v33 = sub_1E1AEFE7C();
    v35 = v34;
    (*(v12 + 8))(v14, v11);
    *&v207 = v33;
    *(&v207 + 1) = v35;
  }

  sub_1E1AF6F6C();
  v36 = *(v16 + 8);
  v197 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v203 = v36;
  v36(v30, v15);
  v37 = v201;
  sub_1E1308EC0(&v210, (v201 + 20));
  sub_1E1AF46DC();
  v38 = v199;
  sub_1E1AF381C();
  v39 = v196 + 16;
  v40 = *(v196 + 16);
  v41 = v193;
  v42 = v198;
  v40(v194, v193, v198);
  v43 = v192;
  sub_1E1AF464C();
  v190 = OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics;
  sub_1E134B7C8(v43, v37 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics);
  v44 = v195;
  v189 = v39;
  v192 = v40;
  v40(v195, v41, v42);
  v45 = v202;
  sub_1E1AF381C();
  v46 = sub_1E1AF37AC();
  v47 = v200;
  v203(v38, v200);
  if (v46)
  {
    v48 = sub_1E1AF5A7C();
    sub_1E14B6B94(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v49 = 0x616964656DLL;
    v49[1] = 0xE500000000000000;
    v49[2] = v191;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    v50 = *(v196 + 8);
    v51 = v41;
    v52 = v198;
    v50(v51, v198);
    v203(v45, v47);
    v50(v44, v52);
    v53 = v201;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1((v53 + 20));
    sub_1E1308058(v53 + v190, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
    return v53;
  }

  v54 = v47;
  sub_1E1AF381C();
  v55 = sub_1E1AF37CC();
  v57 = v56;
  v58 = v203;
  v203(v38, v54);
  v59 = v201;
  v201[2] = v55;
  v59[3] = v57;
  v60 = v185;
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  v63 = v62;
  v58(v60, v54);
  if (v63)
  {
    v64 = [objc_opt_self() systemFontOfSize_];
    v65 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v66 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v67 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v64;
    *(&v211 + 1) = v65;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v66;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v67;
    v68 = type metadata accessor for RemovingNQMLStringGenerator();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator];
    *v70 = 0;
    v70[1] = 0xE000000000000000;
    v69[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v71 = objc_allocWithZone(ASKNQMLParser);
    sub_1E13E3AC8(&v210, &v207);
    v72 = sub_1E1AF5DBC();

    v73 = [v71 initWithString_];

    *&v69[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] = v73;
    v74 = &v69[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
    *v74 = v210;
    v75 = v211;
    v76 = v212;
    v77 = v214;
    v74[3] = v213;
    v74[4] = v77;
    v74[1] = v75;
    v74[2] = v76;
    v204.receiver = v69;
    v204.super_class = v68;
    v78 = objc_msgSendSuper2(&v204, sel_init);
    [*&v78[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] setDelegate_];
    v61 = sub_1E13E3C6C();
    v80 = v79;

    sub_1E14A7E28(&v210);
  }

  else
  {
    v80 = 0;
  }

  v81 = v201;
  v201[4] = v61;
  v81[5] = v80;
  v82 = v186;
  sub_1E1AF381C();
  v83 = sub_1E1AF37CC();
  v85 = v84;
  v86 = v203;
  v203(v82, v200);
  v87 = v199;
  if (v85)
  {
    v88 = [objc_opt_self() systemFontOfSize_];
    v89 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v90 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v91 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v88;
    *(&v211 + 1) = v89;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v90;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v91;
    v92 = type metadata accessor for RemovingNQMLStringGenerator();
    v93 = objc_allocWithZone(v92);
    v94 = &v93[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator];
    *v94 = 0;
    v94[1] = 0xE000000000000000;
    v93[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v95 = objc_allocWithZone(ASKNQMLParser);
    sub_1E13E3AC8(&v210, &v207);
    v96 = sub_1E1AF5DBC();

    v97 = [v95 initWithString_];

    *&v93[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] = v97;
    v98 = &v93[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
    *v98 = v210;
    v99 = v211;
    v100 = v212;
    v101 = v214;
    v98[3] = v213;
    v98[4] = v101;
    v98[1] = v99;
    v98[2] = v100;
    v205.receiver = v93;
    v205.super_class = v92;
    v86 = v203;
    v102 = objc_msgSendSuper2(&v205, sel_init);
    [*&v102[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] setDelegate_];
    v83 = sub_1E13E3C6C();
    v85 = v103;

    sub_1E14A7E28(&v210);
  }

  v104 = v196;
  v105 = v201;
  v201[6] = v83;
  v105[7] = v85;
  v106 = type metadata accessor for TodayCardMedia();
  v107 = v187;
  sub_1E1AF381C();
  v108 = v195;
  v109 = v188;
  v110 = static TodayCardMedia.makeInstance(byDeserializing:using:)(v107, v195);
  v188 = v109;
  if (v109)
  {
    v111 = *(v104 + 8);
    v112 = v108;
    v113 = v198;
    v111(v193, v198);
    v114 = v200;
    v86(v202, v200);
    v86(v107, v114);
    v111(v112, v113);

    v53 = v105;
    goto LABEL_13;
  }

  v116 = v110;
  v191 = v106;
  v117 = v200;
  v203(v107, v200);
  v105[8] = v116;
  v118 = type metadata accessor for TodayCardOverlay();
  sub_1E1AF381C();
  v190 = v118;
  v119 = static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(v87, v108);
  v203(v87, v117);
  v105[9] = v119;
  v120 = v87;
  v121 = v108;
  v122 = v183;
  sub_1E1AF381C();
  LOBYTE(v119) = sub_1E1AF370C();
  v203(v122, v117);
  *(v105 + 80) = v119 & 1;
  sub_1E1AF381C();
  v192(v194, v121, v198);
  sub_1E14601F4();
  sub_1E1AF464C();
  v123 = v210 | ((WORD2(v210) | (BYTE6(v210) << 16)) << 32);
  v53 = v105;
  if (v210 == 2)
  {
    if (qword_1ECEB0E00 != -1)
    {
      swift_once();
    }

    LOBYTE(v123) = dword_1ECEB4958;
    LOBYTE(v124) = BYTE1(dword_1ECEB4958);
    LOBYTE(v125) = BYTE2(dword_1ECEB4958);
    LOBYTE(v126) = HIBYTE(dword_1ECEB4958);
    LOBYTE(v127) = word_1ECEB495C;
    LOBYTE(v128) = HIBYTE(word_1ECEB495C);
    LOBYTE(v129) = byte_1ECEB495E;
  }

  else
  {
    v124 = (v123 >> 8) & 1;
    v125 = (v123 >> 16) & 1;
    v126 = (v123 >> 24) & 1;
    v127 = HIDWORD(v123) & 1;
    v128 = (v123 >> 40) & 1;
    v129 = HIWORD(v123) & 1;
  }

  v130 = v105 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions;
  *v130 = v123 & 1;
  v130[1] = v124;
  v130[2] = v125;
  v130[3] = v126;
  v130[4] = v127;
  v130[5] = v128;
  v130[6] = v129;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v131 = v195;
  v132 = static Action.tryToMakeInstance(byDeserializing:using:)(v120, v195);
  v133 = v120;
  v134 = v200;
  v203(v133, v200);
  *(v53 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_clickAction) = v132;
  v136 = v53[4];
  v135 = v53[5];

  v137.value._countAndFlagsBits = v136;
  v137.value._object = v135;
  StringCharacteristics.init(byAnalyzing:)(v137);
  v53[11] = v210;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v138 = v194;
  v139 = v198;
  v192(v194, v131, v198);
  sub_1E14B6B94(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v53[12] = v210;
  sub_1E1AF381C();
  sub_1E146E8E0();
  sub_1E1AF369C();
  v140 = v134;
  v141 = v203;
  v203(v199, v140);
  *(v53 + 104) = v210;
  type metadata accessor for TodayCardMediaHero();
  sub_1E1AF381C();
  v142 = v139;
  v143 = v199;
  v192(v138, v195, v142);
  sub_1E14B6B94(qword_1EE1DD9E0, type metadata accessor for TodayCardMediaHero);
  sub_1E1AF464C();
  v53[14] = v210;
  sub_1E1AF381C();
  v144 = JSONObject.appStoreColor.getter();
  v145 = v200;
  v141(v143, v200);
  v53[15] = v144;
  v146 = v184;
  sub_1E1AF381C();
  v147 = sub_1E1AF37CC();
  v149 = v148;
  v150 = v145;
  v151 = v141;
  v141(v146, v150);
  if (v149)
  {
    v152 = [objc_opt_self() systemFontOfSize_];
    v153 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v154 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v155 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v152;
    *(&v211 + 1) = v153;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v154;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v155;
    v156 = type metadata accessor for RemovingNQMLStringGenerator();
    v157 = objc_allocWithZone(v156);
    v158 = &v157[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_accumulator];
    *v158 = 0;
    v158[1] = 0xE000000000000000;
    v157[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v159 = objc_allocWithZone(ASKNQMLParser);
    sub_1E13E3AC8(&v210, &v207);
    v160 = sub_1E1AF5DBC();

    v161 = [v159 initWithString_];

    *&v157[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] = v161;
    v162 = &v157[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_configuration];
    *v162 = v210;
    v163 = v211;
    v164 = v212;
    v165 = v214;
    v162[3] = v213;
    v162[4] = v165;
    v162[1] = v163;
    v162[2] = v164;
    v206.receiver = v157;
    v206.super_class = v156;
    v166 = objc_msgSendSuper2(&v206, sel_init);
    [*&v166[OBJC_IVAR____TtC11AppStoreKitP33_4B639E3CE12DDA6906FE89B3A179BBCF27RemovingNQMLStringGenerator_parser] setDelegate_];
    v147 = sub_1E13E3C6C();
    v149 = v167;

    sub_1E14A7E28(&v210);
  }

  v53[16] = v147;
  v53[17] = v149;
  sub_1E1AF381C();
  v168 = sub_1E1AF37CC();
  v170 = v169;
  v151(v143, v200);
  v53[18] = v168;
  v53[19] = v170;
  type metadata accessor for SearchAdOpportunity();
  sub_1E1AF381C();
  v171 = v193;
  v172 = v198;
  v192(v194, v193, v198);
  sub_1E14B6B94(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
  sub_1E1AF464C();
  v173 = v210;
  if (!v53[9] || (*&v210 = v53[9], , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960), (swift_dynamicCast() & 1) == 0))
  {
    v209 = 0;
    v207 = 0u;
    v208 = 0u;
    v174 = v196;
    goto LABEL_27;
  }

  v174 = v196;
  if (!*(&v208 + 1))
  {
LABEL_27:
    v215 = v53[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v212 = 0;
      v210 = 0u;
      v211 = 0u;
    }

    if (*(&v208 + 1))
    {
      sub_1E1308058(&v207, &qword_1ECEB4968);
    }

    goto LABEL_31;
  }

  sub_1E1308EC0(&v207, &v210);
LABEL_31:
  if (v173)
  {
    v175 = *(v174 + 8);
    v175(v171, v172);
    v151(v202, v200);
    v175(v195, v172);
  }

  else
  {
    sub_1E134FD1C(&v210, &v207, &qword_1ECEB4968);
    v176 = *(&v208 + 1);
    if (*(&v208 + 1))
    {
      v177 = v209;
      __swift_project_boxed_opaque_existential_1Tm(&v207, *(&v208 + 1));
      v173 = (*(v177 + 8))(v176, v177);
      v178 = *(v174 + 8);
      v179 = v198;
      v178(v171, v198);
      v151(v202, v200);
      v178(v195, v179);
      __swift_destroy_boxed_opaque_existential_1(&v207);
    }

    else
    {
      v180 = *(v174 + 8);
      v181 = v198;
      v180(v171, v198);
      v151(v202, v200);
      v180(v195, v181);
      sub_1E1308058(&v207, &qword_1ECEB4968);
      v173 = 0;
    }
  }

  *(v53 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_searchAdOpportunity) = v173;
  sub_1E1308058(&v210, &qword_1ECEB4968);
  return v53;
}

uint64_t TodayCard.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TodayCard.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TodayCard.shortTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *TodayCard.backgroundColor.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t TodayCard.inlineDescription.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t TodayCard.collapsedHeading.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t TodayCard.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

void TodayCard.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t TodayCard.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCard.__deallocating_deinit()
{
  TodayCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E14B6738@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E14B6B94(qword_1EE1D2F80, type metadata accessor for Action);
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

uint64_t *sub_1E14B67E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E14B6870(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

unint64_t sub_1E14B68FC()
{
  result = qword_1ECEB4970;
  if (!qword_1ECEB4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4970);
  }

  return result;
}

uint64_t type metadata accessor for TodayCard()
{
  result = qword_1EE1E3F40;
  if (!qword_1EE1E3F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E14B69EC()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E14B6B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DynamicUIIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v40 = a3;
  v4 = sub_1E1AF39DC();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = sub_1E1AEFCCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v19 = v21;
  v21(v14, v9);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_1E13ECBA0(v8);
    v22 = sub_1E1AF5A7C();
    sub_1E14B7248(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v24 = v23;
    v25 = type metadata accessor for DynamicUIIntent();
    *v24 = 7107189;
    v24[1] = 0xE300000000000000;
    v24[2] = v25;
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    (*(v42 + 8))(v44, v43);
    return v19(v41, v9);
  }

  else
  {
    v36 = v20;
    v37 = v19;
    v35 = v9;
    (*(v16 + 32))(v18, v8, v15);
    (*(v16 + 16))(v40, v18, v15);
    type metadata accessor for DynamicUIRequestInfo();
    v27 = v41;
    sub_1E1AF381C();
    (*(v42 + 16))(v39, v44, v43);
    sub_1E14B7248(&qword_1ECEB4978, type metadata accessor for DynamicUIRequestInfo);
    sub_1E1AF464C();
    v28 = v45;
    if (v45)
    {
      (*(v42 + 8))(v44, v43);
      v37(v27, v35);
      (*(v16 + 8))(v18, v15);
      result = type metadata accessor for DynamicUIIntent();
      *(v40 + *(result + 20)) = v28;
    }

    else
    {
      v29 = sub_1E1AF5A7C();
      sub_1E14B7248(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v31 = v30;
      v32 = type metadata accessor for DynamicUIIntent();
      *v31 = 0x4974736575716572;
      v31[1] = 0xEB000000006F666ELL;
      v31[2] = v32;
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v29);
      swift_willThrow();
      (*(v42 + 8))(v44, v43);
      v37(v27, v35);
      v33 = *(v16 + 8);
      v33(v18, v15);
      return (v33)(v40, v15);
    }
  }

  return result;
}

uint64_t type metadata accessor for DynamicUIIntent()
{
  result = qword_1ECEB4980;
  if (!qword_1ECEB4980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14B7248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DynamicUIIntent.init(url:requestInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AEFCCC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DynamicUIIntent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t DynamicUIIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DynamicUIIntent.requestInfo.getter()
{
  type metadata accessor for DynamicUIIntent();
}

JSValue __swiftcall DynamicUIIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  v8 = sub_1E1AEFBDC();
  v7 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v8, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v3 valueWithObject:*(v1 + *(type metadata accessor for DynamicUIIntent() + 20)) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E14B756C()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DynamicUIRequestInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void SearchEntity.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

  v7 = MEMORY[0x1E69AB6F8];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

uint64_t SearchEntity.rawValue.getter()
{
  v1 = 0x65706F6C65766564;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x79726F7473;
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

AppStoreKit::SearchEntity_optional __swiftcall SearchEntity.init(rawValue:)(Swift::String rawValue)
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

unint64_t sub_1E14B7754()
{
  result = qword_1ECEB4990;
  if (!qword_1ECEB4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4990);
  }

  return result;
}

uint64_t sub_1E14B77A8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14B7860()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14B7904()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E14B79C4(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

void sub_1E14B7AE8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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

  v7 = MEMORY[0x1E69AB6F8];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1E14B7B80()
{
  result = qword_1EE1E0440;
  if (!qword_1EE1E0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0440);
  }

  return result;
}

BOOL MSOContext.canPersonalizeRoom(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v11 - v2;
  v5 = *v0;
  v4 = v0[1];
  v11[2] = sub_1E1AEFBDC();
  v11[3] = v6;
  v11[0] = v5;
  v11[1] = v4;
  v7 = sub_1E1AEFF8C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1E13B8AA4();

  sub_1E1AF6E6C();
  v9 = v8;
  sub_1E14B7D18(v3);

  return (v9 & 1) == 0;
}

uint64_t sub_1E14B7D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MSOContext.providerAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AccountChannels.providerAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *AccountChannels.init(providerAdamId:subscribedChannelIds:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CD0];
  v4 = result[1];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = *result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

__n128 MSOContext.init(accountChannels:providerData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t MSOContext.providerRoomURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v5 = sub_1E1AEFCCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E14B7E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E14B7ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E14B7F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E14B7F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E14B7FC0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E1AF5AAC();
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v12 = MEMORY[0x1E68FD610]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = a4;
    *(v14 + 5) = v13;
    v15 = a1;
    v16 = a2;

    sub_1E1AF5A8C();
    if (v4)
    {
    }

    else
    {
      v14 = sub_1E1AF5A9C();

      (*(v19 + 8))(v11, v9);
    }
  }

  else
  {
    v14 = "y a specified game.";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1E14B81C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a3;
  v35 = a5;
  v33 = a2;
  v45 = a1;
  v37 = sub_1E1AF364C();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *(a4 + OBJC_IVAR____TtC11AppStoreKit12JSGameCenter_dataProvider);
  v40 = sub_1E1AF490C();
  v43 = v40;
  v44 = MEMORY[0x1E69AB298];
  v42[0] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49F0);

  v38 = a7;

  v17 = sub_1E1AF588C();
  sub_1E1760930(v35, a6, a7, *(v16 + OBJC_IVAR____TtC11AppStoreKit10GameCenter_cache));
  swift_retain_n();
  v36 = v17;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v18 = v11;
  v19 = *(v11 + 16);
  v20 = v37;
  v19(v15, a2, v37);
  v21 = *(v18 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = swift_allocObject();
  v35 = v23;
  *(v23 + 16) = v45;
  v24 = *(v18 + 32);
  v32 = v15;
  v24(v23 + v22, v15, v20);
  v19(v15, v33, v20);
  v25 = v39;
  v19(v39, v41, v20);
  v26 = (v22 + v12 + v21) & ~v21;
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = v45;
  v24(v27 + v22, v32, v20);
  v24(v27 + v26, v25, v20);
  v43 = v40;
  v44 = MEMORY[0x1E69AB298];
  v42[0] = v38;
  v29 = v28;

  v30 = v29;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_1E14B8544(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_1E1AF70EC();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_1E1AF591C();
      __swift_project_value_buffer(v10, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v12;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
      }

      ++v5;
      sub_1E1453B58(a2);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v6 = sub_1E1AF755C();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E1B02CC0;
    *(v8 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

char *sub_1E14B88A4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E1AF5AAC();
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v12 = MEMORY[0x1E68FD610]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = a4;
    *(v14 + 5) = v13;
    v15 = a1;
    v16 = a2;

    sub_1E1AF5A8C();
    if (v4)
    {
    }

    else
    {
      v14 = sub_1E1AF5A9C();

      (*(v19 + 8))(v11, v9);
    }
  }

  else
  {
    v14 = "recently played games.";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1E14B8AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a3;
  v29 = a2;
  v37 = a1;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v35 = sub_1E14BEE58(a5, a6, a7);
  v17 = *(v12 + 16);
  v17(v16, a2, v11);
  v18 = *(v12 + 80);
  v19 = (v18 + 24) & ~v18;
  v28 = v19 + v13;
  v30 = v19;
  v20 = swift_allocObject();
  v32 = v20;
  *(v20 + 16) = v37;
  v21 = *(v12 + 32);
  v21(v20 + v19, v16, v11);
  v17(v16, v29, v11);
  v22 = v31;
  v17(v31, v34, v11);
  v23 = (v28 + v18) & ~v18;
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v37;
  v21(v24 + v30, v16, v11);
  v21(v24 + v23, v22, v11);
  v36[3] = sub_1E1AF490C();
  v36[4] = MEMORY[0x1E69AB298];
  v36[0] = v33;
  v26 = v25;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void sub_1E14B8D60(uint64_t a1, objc_class *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  v4.super.isa = a2;
  *(v3 + 32) = sub_1E18A735C(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v5 = sub_1E1AF755C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a2];
  swift_unknownObjectRelease();
  if (v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E1B02CC0;
    *(v7 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v7 + 32) = v6;
    v8 = v6;
    v9 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E14B8FFC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_1E1AF363C();
  }

  else
  {
    v9 = MEMORY[0x1E68FF960](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_1E1AF363C();
  }
}

id sub_1E14B9290(void *a1)
{
  sub_1E1AF5DFC();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v2 = a1;
  v3 = sub_1E1AF6D4C();
  v4 = sub_1E1AF6D5C();

  return v4;
}

char *sub_1E14B9348(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v32 = a4;
  v7 = sub_1E1AF0F7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF5AAC();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v14 = MEMORY[0x1E68FD610]();
  if (!v14)
  {
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    return v21;
  }

  v15 = v14;

  v16 = sub_1E1AF72FC();

  if (v16 >= 3)
  {
    v21 = sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    goto LABEL_7;
  }

  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v32;
  *(v18 + 24) = v16;
  v20 = v30;
  *(v18 + 32) = v29;
  *(v18 + 40) = v20;
  *(v18 + 48) = v15;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v21 = v31;
  v22 = v19;

  v23 = v33;
  sub_1E1AF5A8C();
  if (v23)
  {
LABEL_7:

    return v21;
  }

  v21 = sub_1E1AF5A9C();

  (*(v26 + 8))(v13, v27);
  return v21;
}

uint64_t sub_1E14B96BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void, void, void), void (*a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v63 = a7;
  v62 = a6;
  v71 = a3;
  v74 = a2;
  v79 = a1;
  v61 = a9;
  v72 = sub_1E1AF364C();
  v11 = *(v72 - 8);
  v73 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v66 = sub_1E1AF0F7C();
  v16 = *(v66 - 8);
  v67 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E1AF490C();
  v77 = v69;
  v78 = MEMORY[0x1E69AB298];
  v76[0] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8);
  v68 = a8;

  v18 = sub_1E1AF588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49E0);
  v19 = sub_1E1AF588C();
  sub_1E1300B24(v76, v75);
  v20 = swift_allocObject();
  v21 = v62;
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v63;
  sub_1E1308EC0(v75, (v20 + 5));

  sub_1E1AA28CC(a8, sub_1E14C0360, v20);

  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = v18;
  v65 = v18;
  swift_retain_n();
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v76);
  v23 = v16;
  v24 = *(v16 + 16);
  v60 = v16 + 16;
  v63 = v24;
  v25 = v64;
  v26 = v66;
  v24(v64, a9, v66);
  v27 = v11;
  v62 = *(v11 + 16);
  v28 = v15;
  v62(v15, v74, v72);
  v29 = *(v23 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = *(v27 + 80);
  v58 = v30;
  v32 = (v67 + v31 + v30) & ~v31;
  v53 = v32 + v73;
  v55 = v32;
  v59 = v29 | v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v79;
  v34 = *(v23 + 32);
  v56 = v23 + 32;
  v57 = v34;
  v35 = v33 + v30;
  v36 = v33;
  v67 = v33;
  v34(v35, v25, v26);
  v54 = *(v27 + 32);
  v37 = v36 + v32;
  v38 = v28;
  v52 = v28;
  v39 = v72;
  v54(v37, v28, v72);
  v40 = v25;
  v63(v25, v61, v26);
  v41 = v38;
  v42 = v62;
  v62(v41, v74, v39);
  v43 = v70;
  v42(v70, v71, v39);
  v44 = (v53 + v31) & ~v31;
  v45 = swift_allocObject();
  v46 = v79;
  *(v45 + 16) = v79;
  v57(v45 + v58, v40, v26);
  v47 = v54;
  v54(v45 + v55, v52, v39);
  v47(v45 + v44, v43, v39);
  v77 = v69;
  v78 = MEMORY[0x1E69AB298];
  v76[0] = v68;
  v48 = v46;

  v49 = v48;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

void sub_1E14B9CA4(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  v3 = sub_1E1AF755C();
  v4 = [objc_opt_self() valueWithObject:v3 inContext:a2];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1E1AF6A0C();
    sub_1E1AF483C();
    v5 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E1B02CC0;
    *(v6 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E14B9F44(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v5 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CC0;
  v7 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v8 = v7;
  if (v4)
  {
    *(v6 + 56) = v7;
    *(v6 + 32) = v4;
    v9 = v4;
    v11 = sub_1E1AF363C();
  }

  else
  {
    v10 = MEMORY[0x1E68FF960](a1, a2);
    *(v6 + 56) = v8;
    *(v6 + 32) = v10;
    v11 = sub_1E1AF363C();
  }
}

char *sub_1E14BA3DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AF5AAC();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v13 = MEMORY[0x1E68FD610]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = a5;
    *(v15 + 6) = v14;
    v16 = a1;
    v17 = a2;

    v18 = v22;
    sub_1E1AF5A8C();
    if (v18)
    {
    }

    else
    {
      v15 = sub_1E1AF5A9C();

      (*(v21 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "lter was passed:";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_1E14BA5EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a3;
  v37 = a6;
  v38 = a7;
  v36 = a5;
  v34 = a2;
  v47 = a1;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = *(a4 + OBJC_IVAR____TtC11AppStoreKit12JSGameCenter_dataProvider);
  v42 = sub_1E1AF490C();
  v45 = v42;
  v46 = MEMORY[0x1E69AB298];
  v44[0] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D0);
  v40 = a8;

  v18 = sub_1E1AF588C();
  sub_1E14BEFA0(v36, v37, v38, a8, *(v17 + OBJC_IVAR____TtC11AppStoreKit10GameCenter_cache));
  swift_retain_n();
  v39 = v18;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v44);
  v19 = v12;
  v20 = *(v12 + 16);
  v20(v16, a2, v11);
  v21 = *(v19 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = swift_allocObject();
  v38 = v23;
  *(v23 + 16) = v47;
  v24 = *(v19 + 32);
  v33 = v16;
  v24(v23 + v22, v16, v11);
  v20(v16, v34, v11);
  v25 = v41;
  v20(v41, v43, v11);
  v26 = (v22 + v13 + v21) & ~v21;
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v47;
  v24(v27 + v22, v33, v11);
  v24(v27 + v26, v25, v11);
  v45 = v42;
  v46 = MEMORY[0x1E69AB298];
  v44[0] = v40;
  v29 = v28;

  v30 = v29;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void sub_1E14BA958(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_1E1AF70EC();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_1E1AF591C();
      __swift_project_value_buffer(v10, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v12;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
      }

      ++v5;
      sub_1E143555C(a2);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v6 = sub_1E1AF755C();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E1B02CC0;
    *(v8 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E14BAC90(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_1E1AF363C();
  }

  else
  {
    v9 = MEMORY[0x1E68FF960](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_1E1AF363C();
  }
}

char *sub_1E14BAF24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AF5AAC();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v13 = MEMORY[0x1E68FD610]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = a5;
    *(v15 + 6) = v14;
    v16 = a1;
    v17 = a2;

    v18 = v22;
    sub_1E1AF5A8C();
    if (v18)
    {
    }

    else
    {
      v15 = sub_1E1AF5A9C();

      (*(v21 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "dingFriendsRestricted";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_1E14BB134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v37 = a3;
  v32 = a2;
  v34 = a1;
  v13 = sub_1E1AF364C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v38 = sub_1E14BF328(a5, a6, a7);
  v19 = *(v14 + 16);
  v19(v18, a2, v13);
  v20 = *(v14 + 80);
  v21 = (v20 + 24) & ~v20;
  v31 = v21 + v15;
  v33 = v21;
  v22 = swift_allocObject();
  v36 = v22;
  *(v22 + 16) = a1;
  v23 = *(v14 + 32);
  v23(v22 + v21, v18, v13);
  v19(v18, v32, v13);
  v24 = v35;
  v19(v35, v37, v13);
  v25 = (v31 + v20) & ~v20;
  v26 = swift_allocObject();
  v27 = v33;
  v28 = v34;
  *(v26 + 16) = v34;
  v23(v26 + v27, v18, v13);
  v23(v26 + v25, v24, v13);
  v40[3] = sub_1E1AF490C();
  v40[4] = MEMORY[0x1E69AB298];
  v40[0] = v39;
  v29 = v28;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_1E14BB3DC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_1E1AF70EC();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_1E1AF591C();
      __swift_project_value_buffer(v10, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v12;
      sub_1E1AF382C();
      sub_1E1AF54AC();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, v3);
      }

      else
      {
      }

      ++v5;
      GameCenterActivityFeedCard.makeValue(in:)(a2);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v6 = sub_1E1AF755C();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E1B02CC0;
    *(v8 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_1E1AF363C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E14BB724(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_1E1AF363C();
  }

  else
  {
    v9 = MEMORY[0x1E68FF960](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_1E1AF363C();
  }
}

id sub_1E14BB9B8(void *a1)
{
  sub_1E1AF5DFC();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v2 = a1;
  v3 = sub_1E1AF6D4C();
  v4 = sub_1E1AF6D5C();

  return v4;
}

char *sub_1E14BBA7C(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1E1AF5AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v11 = MEMORY[0x1E68FD610]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = a2;
    *(v13 + 4) = a3;
    v14 = a1;

    v15 = a2;
    sub_1E1AF5A8C();
    if (v3)
    {
    }

    else
    {
      v13 = sub_1E1AF5A9C();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v13 = "tive JS worker thread";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1E14BBD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = a1;
  v33 = a6;
  v30 = a3;
  v31 = a5;
  v28 = a4;
  v8 = sub_1E1AF364C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(v9 + 16);
  v15(&v28 - v13, a2, v8, v12);
  (v15)(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v8);
  v16 = *(v9 + 80);
  v17 = (v16 + 48) & ~v16;
  v18 = (v10 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  v20 = v31;
  v21 = v33;
  *(v19 + 2) = v31;
  *(v19 + 3) = v21;
  *(v19 + 4) = a4;
  v22 = v32;
  *(v19 + 5) = v32;
  v23 = *(v9 + 32);
  v23(&v19[v17], v14, v8);
  v23(&v19[v18], v29, v8);
  v24 = v20;
  v25 = v28;

  v26 = v22;
  sub_1E1AA28CC(v25, sub_1E14BEDB4, v19);
}

uint64_t sub_1E14BBF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v28 = a6;
  v34 = a4;
  v35 = a5;
  v9 = sub_1E1AF364C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v33 = sub_1E14BF660(a1);
  v15 = *(v10 + 16);
  v15(v14, a6, v9);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = v17 + v11;
  v29 = v17;
  v19 = swift_allocObject();
  v31 = v19;
  *(v19 + 16) = v35;
  v20 = *(v10 + 32);
  v20(v19 + v17, v14, v9);
  v15(v14, v28, v9);
  v21 = v30;
  v15(v30, v32, v9);
  v22 = (v18 + v16) & ~v16;
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v35;
  v20(v23 + v29, v14, v9);
  v20(v23 + v22, v21, v9);
  v36[3] = sub_1E1AF490C();
  v36[4] = MEMORY[0x1E69AB298];
  v36[0] = v34;
  v25 = v24;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1E14BC218(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v3 = *(v1 + 16);
  v11 = MEMORY[0x1E69E6530];
  v10[0] = v3;
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  sub_1E14BFD88();
  sub_1E1AF632C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B02CC0;
  v5 = v11;
  v6 = __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  *(v4 + 56) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  v8 = sub_1E1AF363C();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_1E14BC530(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v5 = sub_1E1AF75AC();
  v14[3] = MEMORY[0x1E69E6158];
  v14[0] = v5;
  v14[1] = v6;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v7 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  v9 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v10 = v9;
  if (v7)
  {
    *(v8 + 56) = v9;
    *(v8 + 32) = v7;
    v11 = v7;
    v13 = sub_1E1AF363C();
  }

  else
  {
    v12 = MEMORY[0x1E68FF960](a1, a2);
    *(v8 + 56) = v10;
    *(v8 + 32) = v12;
    v13 = sub_1E1AF363C();
  }
}

char *sub_1E14BCA38(void *a1, void *a2)
{
  v5 = sub_1E1AF5AAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v9 = MEMORY[0x1E68FD610]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_1E1AF5A8C();
    if (v2)
    {
    }

    else
    {
      v11 = sub_1E1AF5A9C();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "game info for bundleId";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1E14BCC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v36 = a3;
  v48 = a1;
  v8 = sub_1E1AF364C();
  v9 = *(v8 - 8);
  v43 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v13;
  v41 = sub_1E1AF490C();
  v46 = v41;
  v47 = MEMORY[0x1E69AB298];
  v45[0] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49A8);
  v39 = a5;

  v14 = sub_1E1AF588C();
  v40 = v14;
  sub_1E1300B24(v45, v44);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_1E1308EC0(v44, v15 + 24);

  sub_1E1AA28CC(a5, sub_1E14BEB8C, v15);

  __swift_destroy_boxed_opaque_existential_1(v45);
  v16 = *(v9 + 16);
  v17 = v38;
  v16(v38, a2, v8);
  v16(v11, a3, v8);
  v18 = *(v9 + 80);
  v19 = (v18 + 24) & ~v18;
  v34 = v43 + v18;
  v20 = (v43 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v48;
  v22 = *(v9 + 32);
  v23 = v21 + v19;
  v24 = v21;
  v37 = v21;
  v22(v23, v17, v8);
  v25 = v24 + v20;
  v26 = v42;
  v22(v25, v42, v8);
  v16(v17, v35, v8);
  v16(v26, v36, v8);
  v27 = (v18 + 32) & ~v18;
  v28 = (v34 + v27) & ~v18;
  v29 = swift_allocObject();
  v30 = v39;
  v31 = v48;
  *(v29 + 16) = v39;
  *(v29 + 24) = v31;
  v22(v29 + v27, v17, v8);
  v22(v29 + v28, v42, v8);
  v46 = v41;
  v47 = MEMORY[0x1E69AB298];
  v45[0] = v30;
  swift_retain_n();
  v32 = v31;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

void sub_1E14BCFB8(uint64_t a1, objc_class *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = objc_opt_self();
  v8 = [v7 valueWithNewObjectInContext_];
  if (v8)
  {
    v9 = v8;
    sub_1E134FD1C(a1, v6, &qword_1ECEB49B0);
    v10 = *v6;
    v11 = *(v6 + 1);
    v12 = *(v4 + 48);

    v21[1] = v10;
    v21[2] = v11;
    v13 = [v7 valueWithObject:sub_1E1AF755C() inContext:a2];
    swift_unknownObjectRelease();
    v14 = sub_1E1AF05FC();
    (*(*(v14 - 8) + 8))(&v6[v12], v14);
    if (v13)
    {
      sub_1E1AF6C5C();
      Achievement.makeValue(in:)(a2);
      sub_1E1AF6C5C();
      v15.super.isa = a2;
      sub_1E18A735C(v15);
      sub_1E1AF6C5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E1B02CC0;
      *(v16 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
      *(v16 + 32) = v9;
      v17 = v9;
      v19 = sub_1E1AF363C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E1B02CC0;
    *(v18 + 56) = sub_1E1AF56FC();
    __swift_allocate_boxed_opaque_existential_0((v18 + 32));
    sub_1E1AF569C();
    v21[0] = sub_1E1AF363C();

    v20 = v21[0];
  }
}

uint64_t sub_1E14BD454(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a1;
  v26[1] = a2;
  v8 = sub_1E1AF364C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(v9 + 16);
  v16(v26 - v14, a4, v8, v13);
  (v16)(v11, a5, v8);
  v17 = *(v9 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v10 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = *(v9 + 32);
  v21(v20 + v18, v15, v8);
  v21(v20 + v19, v11, v8);
  v22 = v26[0];
  *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26[0];
  v23 = a3;
  v24 = v22;
  sub_1E1AF48FC();
}

void sub_1E14BD628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  v8 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v9 = v8;
  if (v6)
  {
    *(v7 + 56) = v8;
    *(v7 + 32) = v6;
    v10 = v6;
    v12 = sub_1E1AF363C();
  }

  else
  {
    v11 = MEMORY[0x1E68FF960](a4, a1);
    *(v7 + 56) = v9;
    *(v7 + 32) = v11;
    v12 = sub_1E1AF363C();
  }
}

const char *sub_1E14BD940(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E1AF5AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v11 = MEMORY[0x1E68FD610]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v12;
    v14 = a1;

    sub_1E1AF5A8C();
    if (v3)
    {
    }

    else
    {
      v13 = sub_1E1AF5A9C();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "AppStoreKit.JSGameCenter";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1E14BDB38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a2;
  v36 = a4;
  v41 = a3;
  v44 = a1;
  v9 = sub_1E1AF364C();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for GameCenter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49A0);
  v12 = sub_1E1AF588C();
  v13 = swift_allocObject();
  v42 = v12;
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = a4;
  v13[5] = a5;
  v35 = a5;

  sub_1E1AA28CC(a6, sub_1E14BE9F8, v13);

  v14 = v37;
  v15 = v38;
  v34 = *(v37 + 16);
  v16 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34(v16, v40, v38);
  v17 = *(v14 + 80);
  v18 = (v17 + 24) & ~v17;
  v10 += 7;
  v19 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v44;
  v37 = *(v14 + 32);
  v21 = v20 + v18;
  v40 = v20;
  v22 = v16;
  v33 = v16;
  (v37)(v21, v16, v15);
  v23 = (v20 + v19);
  v25 = v35;
  v24 = v36;
  *v23 = v36;
  v23[1] = v25;
  v34(v22, v41, v15);
  v26 = (v17 + 16) & ~v17;
  v27 = (v10 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (v37)(v28 + v26, v33, v15);
  v29 = v44;
  *(v28 + v27) = v44;
  v30 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v24;
  v30[1] = v25;
  v43[3] = sub_1E1AF490C();
  v43[4] = MEMORY[0x1E69AB298];
  v43[0] = v39;
  swift_bridgeObjectRetain_n();
  v31 = v29;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void sub_1E14BDE4C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[6];
  type metadata accessor for GameInfoSummary();
  inited = swift_initStackObject();
  inited[16] = v3;
  inited[17] = v4;
  inited[18] = v5;
  v7 = sub_1E17CAE6C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  *(v8 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_1E1AF363C();
}

void sub_1E14BE0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v7 = MEMORY[0x1E68FF960](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_1E1AF363C();
}

uint64_t sub_1E14BE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E134FD1C(a3, v22 - v9, &qword_1ECEB2D20);
  v11 = sub_1E1AF649C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E1308058(v10, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E1AF63CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E1AF5EBC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E1308058(a3, &qword_1ECEB2D20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E1308058(a3, &qword_1ECEB2D20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E14BE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E134FD1C(a3, v22 - v9, &qword_1ECEB2D20);
  v11 = sub_1E1AF649C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E1308058(v10, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E1AF63CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1E1AF5EBC() + 32;
      sub_1E13006E4(0, &qword_1EE1E3378);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E1308058(a3, &qword_1ECEB2D20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E1308058(a3, &qword_1ECEB2D20);
  sub_1E13006E4(0, &qword_1EE1E3378);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1E14BEA04(char *a1)
{
  sub_1E1AF364C();
  v3 = *(v1 + 16);

  sub_1E14BDE4C(a1, v3);
}

void sub_1E14BEAA8(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E14BE0C4(a1, v1 + v4, v5);
}

void sub_1E14BEB98(uint64_t a1)
{
  sub_1E1AF364C();
  v3 = *(v1 + 16);

  sub_1E14BCFB8(a1, v3);
}

uint64_t sub_1E14BEC38(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1E14BD454(a1, v6, v7, v1 + v5, v8);
}

void sub_1E14BECD8()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E14BD628(v6, v0 + v4, v0 + v5, v7);
}

uint64_t sub_1E14BEDB4(void *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1E14BBF7C(a1, v6, v7, v8, v9, v1 + v5, v10);
}

uint64_t sub_1E14BEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_1E1AF490C();
  v12[4] = MEMORY[0x1E69AB298];
  v12[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49E8);

  v7 = sub_1E1AF588C();
  if (qword_1ECEB15E8 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECEBB718;
  sub_1E1300B24(v12, v11);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  sub_1E1308EC0(v11, (v9 + 5));
  v9[10] = ObjectType;

  sub_1E1AA2CA8(v8, sub_1E14C0610, v9);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1E14BEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v22[3] = sub_1E1AF490C();
  v22[4] = MEMORY[0x1E69AB298];
  v22[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D0);

  v11 = sub_1E1AF588C();

  v12 = sub_1E1AF72FC();

  if (v12 > 2)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v21 = MEMORY[0x1E69E6158];
    *&v20 = a1;
    *(&v20 + 1) = a2;

    sub_1E1AF38DC();
    sub_1E1308058(&v20, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    sub_1E14BFDDC();
    v17 = swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 4;
    sub_1E1AF584C();
  }

  else
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    *(v14 + 32) = a3;
    *(v14 + 40) = v11;
    sub_1E1300B24(v22, &v20);
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = sub_1E14C0274;
    v15[4] = v14;
    sub_1E1308EC0(&v20, (v15 + 5));
    v15[10] = v10;

    sub_1E1AA28CC(a4, sub_1E14C0284, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t sub_1E14BF328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49C8);
  v9 = sub_1E1AF588C();

  v10 = sub_1E1AF72FC();

  if (v10 > 2)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v17[3] = MEMORY[0x1E69E6158];
    v17[0] = a1;
    v17[1] = a2;

    sub_1E1AF38DC();
    sub_1E1308058(v17, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    sub_1E14BFDDC();
    v14 = swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_1E1AF584C();
  }

  else
  {
    v11 = sub_1E1AF649C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a3;
    *(v12 + 48) = v9;

    sub_1E17957F8(0, 0, v8, &unk_1E1B0FE60, v12);

    sub_1E1308058(v8, &qword_1ECEB2D20);
  }

  return v9;
}

id sub_1E14BF660(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49C0);
  v34 = sub_1E1AF588C();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_1EE1D27D8 != -1)
      {
        swift_once();
      }

      v16 = sub_1E1AF591C();
      __swift_project_value_buffer(v16, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      sub_1E14BFDDC();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_1E1AF483C();
        v32 = a1;
        sub_1E1AF482C();
        sub_1E1AF0F4C();
        sub_1E1AF6A1C();
        v20 = sub_1E1AF482C();
        sub_1E1AF0F3C();

        if (qword_1EE1D27D8 != -1)
        {
          swift_once();
        }

        v21 = sub_1E1AF591C();
        __swift_project_value_buffer(v21, qword_1EE2154B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF548C();

        v22 = sub_1E1AF649C();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_1E14BE474(0, 0, v5, &unk_1E1B0FE50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_1EE1D27D8 != -1)
      {
        swift_once();
      }

      v30 = sub_1E1AF591C();
      __swift_project_value_buffer(v30, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      sub_1E14BFDDC();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_1E1AF584C();

    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E14BFD88()
{
  result = qword_1ECEB49B8;
  if (!qword_1ECEB49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB49B8);
  }

  return result;
}

unint64_t sub_1E14BFDDC()
{
  result = qword_1EE1E0C98;
  if (!qword_1EE1E0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0C98);
  }

  return result;
}

uint64_t sub_1E14BFE30(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E130B5DC;

  return sub_1E19BDFC4(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1E14BFFF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E195CF84(a1, v4, v5, v8, v6, v7);
}

uint64_t sub_1E14C0170(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1E1AF364C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return a2(a1, v7, v2 + v6, v8);
}

uint64_t objectdestroy_4Tm_0(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

void sub_1E14C0384(uint64_t a1)
{
  sub_1E1AF0F7C();
  sub_1E1AF364C();
  v3 = *(v1 + 16);

  sub_1E14B9CA4(a1, v3);
}

void sub_1E14C045C(uint64_t a1)
{
  sub_1E1AF0F7C();
  sub_1E1AF364C();
  v3 = *(v1 + 16);

  sub_1E14B9F44(a1, v3);
}

uint64_t objectdestroy_72Tm(void (*a1)(void))
{

  a1(*(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_90Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_34Tm()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E14C07B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1E1AF364C() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t LockupsResponse.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LockupsResponse.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LockupsResponse.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v64 = a2;
  v61 = v4;
  v56 = *v4;
  v57 = v3;
  v65 = sub_1E1AF39DC();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v60 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v27 = v12;
  v29 = *(v13 + 8);
  v28 = v13 + 8;
  v62 = v29;
  v29(v17, v12);
  v59 = v19;
  v30 = *(v19 + 48);
  if (v30(v11, 1, v18) == 1)
  {
    sub_1E14352B8(v11);
    v31 = sub_1E1AF5A7C();
    sub_1E14C1104(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v32 = 0x7370756B636F6CLL;
    v33 = v56;
    v32[1] = 0xE700000000000000;
    v32[2] = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v63 + 8))(v64, v65);
    v62(v60, v27);
    v34 = v61;
    swift_deallocPartialClassInstance();
    return v34;
  }

  v55 = v28;
  v35 = v59;
  v50 = *(v59 + 32);
  v51 = v59 + 32;
  v50(v26, v11, v18);
  (*(v35 + 16))(v23, v26, v18);
  (*(v63 + 16))(v54, v64, v65);
  type metadata accessor for Lockup();
  sub_1E14C1104(&qword_1EE1E4F60, type metadata accessor for Lockup);
  v36 = sub_1E1AF631C();
  v37 = v60;
  v34 = v61;
  v61[2] = v36;
  v38 = v53;
  v54 = v27;
  sub_1E1AF381C();
  v39 = v58;
  sub_1E1AF374C();
  v40 = v54;
  v62(v38, v54);
  if (v30(v39, 1, v18) == 1)
  {
    sub_1E14352B8(v58);
    (*(v63 + 8))(v64, v65);
    v62(v37, v40);
    (*(v59 + 8))(v26, v18);
    v34[3] = MEMORY[0x1E69E7CC0];
    return v34;
  }

  v53 = v26;
  v41 = v63;
  v42 = v37;
  v43 = v52;
  v50(v52, v58, v18);
  v44 = v57;
  v45 = sub_1E1AF59FC();
  if (!v44)
  {
    v46 = v45;
    (*(v41 + 8))(v64, v65);
    v62(v42, v54);
    v47 = *(v59 + 8);
    v47(v43, v18);
    v47(v53, v18);
    v34[3] = v46;
    return v34;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E14C1104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LockupsResponse.__allocating_init(lockups:missingIds:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LockupsResponse.init(lockups:missingIds:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LockupsResponse.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v9 = *(v7 + 16) == v2 && *(v7 + 24) == v3;
      if (v9 || (sub_1E1AF74AC() & 1) != 0)
      {
        return v7;
      }

      ++v6;
      if (v8 == i)
      {
        return 0;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t LockupsResponse.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E68FFD80](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v10 = *(v8 + 40);
      if (v10)
      {
        v11 = *(v8 + 32) == a1 && v10 == a2;
        if (v11 || (sub_1E1AF74AC() & 1) != 0)
        {
          return v8;
        }
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

uint64_t LockupsResponse.deinit()
{

  return v0;
}

uint64_t LockupsResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14C1430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LockupsResponse.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t TopShelfItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TopShelfItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v73 = v3;
  v5 = *v3;
  v70 = a2;
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v61 - v11;
  v12 = sub_1E1AF39DC();
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v72 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v27 = v26;
  v28 = v24;
  v29 = v17 + 8;
  v30 = *(v17 + 8);
  v30(v28, v16);
  if (v27)
  {
    v31 = v73;
    v73[2] = v25;
    v31[3] = v27;
    sub_1E1AF381C();
    v32 = sub_1E1AF37CC();
    v67 = v29;
    v34 = v33;
    v61 = v16;
    v30(v21, v16);
    v31[4] = v32;
    v31[5] = v34;
    type metadata accessor for TopShelfAction(0);
    sub_1E1AF381C();
    v66 = v30;
    v35 = v70;
    v36 = *(v69 + 16);
    v37 = v68;
    v36(v15, v70, v68);
    sub_1E14C1E64(&qword_1ECEB49F8, type metadata accessor for TopShelfAction);
    sub_1E1AF464C();
    v73[6] = v74;
    sub_1E1AF381C();
    v71 = v21;
    v36(v15, v35, v37);
    sub_1E1AF464C();
    v73[7] = v74;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v36(v15, v35, v37);
    v38 = v73;
    v39 = v64;
    sub_1E14C1E64(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    v40 = v71;
    sub_1E1AF464C();
    v38[8] = v74;
    sub_1E1AF381C();
    v41 = v63;
    sub_1E1AF371C();
    v42 = v61;
    v43 = v66;
    v66(v40, v61);
    sub_1E14C1EAC(v41, v38 + OBJC_IVAR____TtC11AppStoreKit12TopShelfItem_expirationDate);
    v44 = v62;
    sub_1E1AF381C();
    sub_1E1AF368C();
    v45 = v42;
    v43(v44, v42);
    v46 = v65;
    sub_1E134FD1C(v39, v65, &qword_1ECEB2B28);
    v47 = sub_1E1AF40DC();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_1E1308058(v39, &qword_1ECEB2B28);
      sub_1E1308058(v46, &qword_1ECEB2B28);
      v49 = 0;
    }

    else
    {
      v49 = sub_1E1AF40AC();
      sub_1E1308058(v39, &qword_1ECEB2B28);
      (*(v48 + 8))(v46, v47);
    }

    v53 = v72;
    v52 = v73;
    *(v73 + OBJC_IVAR____TtC11AppStoreKit12TopShelfItem_userInfo) = v49;
    v54 = v71;
    sub_1E1AF381C();
    v55 = sub_1E1AF37CC();
    v57 = v56;
    (*(v69 + 8))(v70, v68);
    v58 = v66;
    v66(v53, v45);
    v58(v54, v45);
    v59 = (v52 + OBJC_IVAR____TtC11AppStoreKit12TopShelfItem_accessibilityLabel);
    *v59 = v55;
    v59[1] = v57;
  }

  else
  {
    v50 = sub_1E1AF5A7C();
    sub_1E14C1E64(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v51 = 0x696669746E656469;
    v51[1] = 0xEA00000000007265;
    v51[2] = v71;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E69AB690], v50);
    swift_willThrow();
    (*(v69 + 8))(v70, v68);
    v30(v72, v16);
    type metadata accessor for TopShelfItem();
    swift_deallocPartialClassInstance();
  }

  return v73;
}

uint64_t type metadata accessor for TopShelfItem()
{
  result = qword_1ECEB4A00;
  if (!qword_1ECEB4A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14C1E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E14C1EAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TopShelfItem.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopShelfItem.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12TopShelfItem_accessibilityLabel);

  return v1;
}

uint64_t TopShelfItem.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12TopShelfItem_expirationDate, &unk_1ECEBB780);

  return v0;
}

uint64_t TopShelfItem.__deallocating_deinit()
{
  TopShelfItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E14C20F4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_1E14C2130@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E14C22E0(&v7);
  if (v8)
  {
    sub_1E1301CF0(&v7, v9);
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_1E1301CF0(v9, (a3 + 16));
  }

  else
  {
    sub_1E1308058(&v7, &qword_1ECEB2DF0);
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_1E14C21E0()
{
  sub_1E13A8B64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E14C22E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_1E1AF5A6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  v12 = sub_1E1AF40DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1AF368C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2B28);
    sub_1E1AF374C();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1E1308058(v4, &qword_1ECEB1F90);
      return sub_1E1AF37EC();
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v18 = sub_1E1AF59FC();
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4170);
      *a1 = v18;
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = sub_1E1AF40AC();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    *a1 = v17;
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t GameCenterPlayerProfileAction.playerId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId);

  return v1;
}

uint64_t GameCenterPlayerProfileAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v32 = *v3;
  v5 = sub_1E1AF39DC();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v35 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v32 = v17;
    v18 = v7;
    v19 = v35;
    v20 = v14 == 0xD000000000000016 && 0x80000001E1B61FC0 == v16;
    if (v20 || (sub_1E1AF74AC() & 1) != 0)
    {

      v21 = &v3[OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId];
      *v21 = 0;
      *(v21 + 1) = 0;
    }

    else
    {
      v25 = &v3[OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId];
      *v25 = v14;
      v25[1] = v16;
    }

    (*(v8 + 16))(v11, v19, v7);
    v26 = v36;
    v27 = v37;
    v7 = v33;
    v28 = v38;
    (*(v36 + 16))(v33, v38, v37);
    v29 = v34;
    v30 = Action.init(deserializing:using:)(v11, v7);
    if (!v29)
    {
      v7 = v30;
    }

    (*(v26 + 8))(v28, v27);
    v32(v19, v18);
  }

  else
  {
    v22 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v23 = 0x6449726579616C70;
    v24 = v32;
    v23[1] = 0xE800000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    (*(v36 + 8))(v38, v37);
    v17(v35, v7);
    swift_deallocPartialClassInstance();
  }

  return v7;
}

void *GameCenterPlayerProfileAction.__allocating_init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v28[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId);
  *v17 = a1;
  v17[1] = a2;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  (*(v13 + 16))(v15, a3, v12);
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = (v16 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v16 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v32, &v29);
  if (*(&v30 + 1))
  {
    v21 = v30;
    *v20 = v29;
    *(v20 + 1) = v21;
    *(v20 + 4) = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v6;
    v24 = a3;
    v26 = v25;
    (*(v28[0] + 8))(v8, v23);
    v28[1] = v22;
    v28[2] = v26;
    a3 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  (*(v13 + 8))(a3, v12);
  sub_1E1308058(v32, &unk_1ECEB5670);
  sub_1E134B7C8(v11, v16 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v16[2] = 0xD000000000000021;
  v16[3] = 0x80000001E1B61FE0;
  v16[4] = 0;
  v16[5] = 0;
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v15, v12);
  return v16;
}

void *GameCenterPlayerProfileAction.init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v27[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC11AppStoreKit29GameCenterPlayerProfileAction_playerId);
  *v18 = a1;
  v18[1] = a2;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v15 + 16))(v17, a3, v14);
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_1E138853C(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27[0] + 8))(v10, v8);
    v27[1] = v21;
    v27[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a3, v14);
  sub_1E1308058(v34, &unk_1ECEB5670);
  v24 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_1E134B7C8(v13, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v4[2] = 0xD000000000000021;
  v4[3] = 0x80000001E1B61FE0;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

uint64_t GameCenterPlayerProfileAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t GameCenterPlayerProfileAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterPlayerProfileAction()
{
  result = qword_1EE1E8C80;
  if (!qword_1EE1E8C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

void *CondensedAdLockupWithIconBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v53 = v3;
  v45 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = sub_1E1AF380C();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v50 = v8;
  v25 = *(v8 + 16);
  v25(v16, a2, v7);
  v48 = v24;
  v26 = a1;
  sub_1E1AF464C();
  v27 = v55;
  v25(v55, a2, v7);
  v28 = v46;
  sub_1E1AF381C();
  v29 = v47;
  v54 = v7;
  v25(v47, v27, v7);
  type metadata accessor for Lockup();
  swift_allocObject();
  v30 = v49;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v50 + 8);
    v33 = v54;
    v32(a2, v54);
    (*(v51 + 8))(v26, v52);
    v32(v55, v33);
    sub_1E13814C0(v48);
    v34 = v53;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = a2;
    v35 = v50;
    v36 = v53;
    v53[2] = v31;
    type metadata accessor for Artwork();
    v37 = v43;
    sub_1E1AF381C();
    v38 = v44;
    v25(v44, v55, v54);
    v34 = v36;
    v40 = Artwork.__allocating_init(deserializing:using:)(v37, v38);
    v41 = *(v35 + 8);
    v42 = v54;
    v41(v49, v54);
    (*(v51 + 8))(v26, v52);
    v41(v55, v42);
    v34[3] = v40;
    sub_1E134B7C8(v48, v34 + OBJC_IVAR____TtC11AppStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  }

  return v34;
}

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v10 = swift_allocObject();

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1E134B7C8(a7, v10 + OBJC_IVAR____TtC11AppStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v10;
}

uint64_t CondensedAdLockupWithIconBackground.init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1E134B7C8(a7, v7 + OBJC_IVAR____TtC11AppStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v7;
}

uint64_t CondensedAdLockupWithIconBackground.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t CondensedAdLockupWithIconBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t CondensedAdLockupWithIconBackground.debugDescription.getter()
{
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();

  v15 = v1;
  MEMORY[0x1E68FECA0](539828256, 0xE400000000000000);
  v2 = *(v0 + 16);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](93, 0xE100000000000000);

  MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x1E68FECA0](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v6, v7);

  MEMORY[0x1E68FECA0](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  MEMORY[0x1E68FECA0](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v12, v13);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v15;
}

uint64_t CondensedAdLockupWithIconBackground.deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v0;
}

uint64_t CondensedAdLockupWithIconBackground.__deallocating_deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1E14C3FB4@<X0>(void *a1@<X8>)
{
  v3 = *(*(*v1 + 16) + 264);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E14C4328(qword_1EE1D2F80, type metadata accessor for Action);
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

void *sub_1E14C4058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E14C40F0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackground()
{
  result = qword_1EE1E73F0;
  if (!qword_1EE1E73F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E14C4234()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E14C4328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1E159F538(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A10);
  swift_allocObject();
  *(v0 + 16) = sub_1E14C4F10(v1);
  return v0;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.init()()
{
  v1 = v0;
  v2 = sub_1E159F538(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A10);
  swift_allocObject();
  *(v1 + 16) = sub_1E14C4F10(v2);
  return v1;
}

uint64_t sub_1E14C4450()
{
  swift_beginAccess();

  sub_1E1AF690C();
}

void sub_1E14C4510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a5;
  v75 = a4;
  v65 = a3;
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v70 = type metadata accessor for ShelfLayoutContext();
  v9 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E1AF01FC();
  v59 = *(v66 - 8);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(*a1 + 16))
  {
    v60 = (*(v74 + 32))(v75, v12);
    if (v60)
    {
      v15 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v20 = v59 + 16;
      v21 = (v9 + 48);
      v22 = (v59 + 8);

      v23 = 0;
      v24 = v66;
      v56 = v14 + 64;
      v55 = v19;
      v63 = v11;
      v57 = v14;
LABEL_7:
      if (v18)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v19)
        {

          return;
        }

        v18 = *(v15 + 8 * v25);
        ++v23;
        if (v18)
        {
          v23 = v25;
LABEL_12:
          v62 = v18;
          v26 = *(v14 + 48);
          v61 = v23;
          v27 = (v26 + ((v23 << 10) | (16 * __clz(__rbit64(v18)))));
          v28 = *v27;
          v29 = v27[1];

          v30 = v60;
          v67 = v28;
          v31 = sub_1E1AF5DBC();
          v64 = v30;
          v32 = [v30 indexPathsForVisibleSupplementaryElementsOfKind_];

          v33 = sub_1E1AF621C();
          v34 = *(v33 + 16);
          if (v34)
          {
            v69 = v29;
            v35 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v58 = v33;
            v36 = v33 + v35;
            v37 = *(v59 + 72);
            v71 = *(v59 + 16);
            v72 = v37;
            v38 = v68;
            v71(v68, v33 + v35, v24);
            while (1)
            {
              ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v75, v74, v8);
              if ((*v21)(v8, 1, v70) == 1)
              {
                break;
              }

              sub_1E14C5CB8(v8, v11);
              ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v75, v74);
              v42 = v41;
              ObjectType = swift_getObjectType();
              (*(v42 + 24))(&v76, v67, v69, v11, v65, ObjectType, v42);
              swift_unknownObjectRelease();
              if (!v77)
              {
                sub_1E14C5D1C(v11);
                v38 = v68;
                v24 = v66;
                (*v22)(v68, v66);
                v39 = &v76;
                v40 = &qword_1ECEB4638;
                goto LABEL_15;
              }

              sub_1E1361B28(&v76, v78);
              v44 = v8;
              v46 = v79;
              v45 = v80;
              __swift_project_boxed_opaque_existential_1Tm(v78, v79);
              v47 = *(v45 + 32);
              v48 = v22;
              v49 = v21;
              v50 = v20;
              v51 = v68;
              v52 = v46;
              v53 = v45;
              v8 = v44;
              v54 = v63;
              v47(v68, v64, v52, v53);
              v38 = v51;
              v20 = v50;
              v21 = v49;
              v22 = v48;
              v11 = v54;
              sub_1E14C5D1C(v54);
              v24 = v66;
              (*v22)(v38, v66);
              __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_16:
              v36 += v72;
              if (!--v34)
              {
                goto LABEL_6;
              }

              v71(v38, v36, v24);
            }

            (*v22)(v38, v24);
            v39 = v8;
            v40 = &qword_1ECEB35C0;
LABEL_15:
            sub_1E1308058(v39, v40);
            goto LABEL_16;
          }

LABEL_6:

          v14 = v57;
          v18 = (v62 - 1) & v62;

          v15 = v56;
          v19 = v55;
          v23 = v61;
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

unint64_t sub_1E14C4AB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*(*a1 + 16) || (result = sub_1E13018F8(a2, a3), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = v10;
LABEL_6:
    result = sub_1E1599470(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14C4B74(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = result;
    result = sub_1E13018F8(a2, a3);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * result);
      if (v8 < 2)
      {
        return sub_1E1496A10(a2, a3);
      }

      else
      {
        v9 = v8 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v6;
        result = sub_1E1599470(v9, a2, a3, isUniquelyReferenced_nonNull_native);
        *v6 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1E14C4C34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_1E1AF320C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  swift_beginAccess();
  v15 = *(v4 + 16);
  v23 = v12;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v25 = v16;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v19 = sub_1E14C5B48;
  v20 = &v22;
  v21 = v15;
  sub_1E1AF68FC();

  (*(v7 + 8))(v9, v6);
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14C4F10(uint64_t a1)
{
  v13 = a1;
  v12 = sub_1E1AF68DC();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v6);
  v11 = sub_1E1361A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v14 = v7;
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  v8 = sub_1E1AF692C();
  v9 = v13;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  return v1;
}

uint64_t sub_1E14C51E8(int a1)
{
  v11 = a1;
  v10 = sub_1E1AF68DC();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1E1361A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v12 = v7;
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v10);
  *(v1 + 16) = sub_1E1AF692C();
  *(v1 + 24) = v11;
  return v1;
}

void *sub_1E14C54C4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_1E1AF68DC();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v7);
  v13[1] = sub_1E1361A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v17 = v8;
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v14);
  v9 = sub_1E1AF692C();
  v11 = v15;
  v10 = v16;
  v2[2] = v9;
  v2[3] = v11;
  v2[4] = v10;
  return v2;
}

uint64_t sub_1E14C57A0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);

  a1(&v6);
}

uint64_t sub_1E14C582C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_1E14C58C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  v22 = v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v24 = v15;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v18 = sub_1E14C5C48;
  v19 = &v21;
  v20 = v14;
  sub_1E1AF68FC();

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E14C5C50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t sub_1E14C5CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14C5D1C(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E14C5E10(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A18);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v50 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0);
  MEMORY[0x1EEE9AC00](v59);
  v58 = (&v50 - v3);
  v4 = sub_1E1AEFCCC();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A20);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - v9;
  v63 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36E0);
    v10 = sub_1E1AF72CC();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v63 + 64;
  v12 = 1 << *(v63 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v63 + 64);
  v15 = (v12 + 63) >> 6;
  v52 = v62 + 16;
  v65 = v62 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v53 = v10;
  v50 = v15;
  v51 = v11;
  v57 = v6;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v23 = v62;
    v24 = *(v63 + 56);
    v25 = (*(v63 + 48) + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    v64 = *(v62 + 72);
    v28 = v56;
    v29 = v54;
    (*(v62 + 16))(&v54[*(v56 + 48)], v24 + v64 * v22, v4);
    *v29 = v27;
    v29[1] = v26;
    v30 = v55;
    sub_1E14C8D30(v29, v55);
    v31 = v4;
    v32 = *(v28 + 48);
    v33 = *(v61 + 48);
    v34 = *(v30 + 1);
    *&v66 = *v30;
    *(&v66 + 1) = v34;

    v35 = v60;
    swift_dynamicCast();
    v36 = *(v23 + 32);
    v36(&v35[v33], &v30[v32], v31);
    v37 = v58;
    v38 = *(v59 + 48);
    v39 = *(v35 + 1);
    *v58 = *v35;
    v37[1] = v39;
    *(v37 + 4) = *(v35 + 4);
    v36(v37 + v38, &v35[v33], v31);
    v40 = v37[1];
    v66 = *v37;
    v67 = v40;
    v68 = *(v37 + 4);
    v41 = v37 + v38;
    v4 = v31;
    v42 = v57;
    v36(v57, v41, v31);
    v10 = v53;
    result = sub_1E1AF6F2C();
    v43 = -1 << *(v10 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v16 + 8 * (v44 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *(v16 + 8 * v45);
        if (v49 != -1)
        {
          v19 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v44) & ~*(v16 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v20 = *(v10 + 48) + 40 * v19;
    *v20 = v66;
    *(v20 + 16) = v67;
    *(v20 + 32) = v68;
    result = (v36)(*(v10 + 56) + v19 * v64, v42, v4);
    ++*(v10 + 16);
    v15 = v50;
    v11 = v51;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E14C6348(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    swift_dynamicCast();
    result = sub_1E1AF6F2C();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 32) = v23;
    *(*(v2 + 56) + 8 * v10) = v13;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E14C65A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E137A5C4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1E1301CF0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E1301CF0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E1301CF0(v31, v32);
    result = sub_1E1AF6F2C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1E1301CF0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E14C6870(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E1301CF0(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E1301CF0(v29, v30);
    result = sub_1E1AF6F2C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1E1301CF0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1E14C6B28(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A28);
    v2 = sub_1E1AF72CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1E1380D6C();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v28);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * v29)));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
          swift_dynamicCast();
          result = sub_1E1595C9C(v30);
          if (v31)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * result);
            *(v25 + 8 * result) = v30;
            v27 = result;

            *(*(v2 + 56) + 8 * v27) = v33;

            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v32 = *(v2 + 16);
            if (v32 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v30;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v32 + 1;
            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v28 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
      swift_dynamicCast();
      result = sub_1E1AF6CFC();
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v15;
      *(*(v2 + 56) + 8 * v13) = v33;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1E14C6EF0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0);
    v3 = sub_1E1AF72CC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v13);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v15 = (*(a1 + 48) + ((v13 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];

        swift_dynamicCast();
        sub_1E1301CF0(&v24, v26);
        sub_1E1301CF0(v26, v27);
        sub_1E1301CF0(v27, &v25);
        result = a2(v17, v16);
        if (v18)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v17;
          v10[1] = v16;
          v11 = result;

          v12 = (v3[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1E1301CF0(&v25, v12);
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v3[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1E1301CF0(&v25, (v3[7] + 32 * result));
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v3[2] = v22;
          v9 = v13;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v9;
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

uint64_t ShelfBatch.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShelfBatch.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShelfBatch.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v74 = v2;
  v68 = *v3;
  v5 = sub_1E1AF39DC();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = sub_1E1AF40DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v24 = *(v13 + 8);
  v22 = v13 + 8;
  v23 = v24;
  v25 = v17;
  v26 = v12;
  v24(v25, v12);
  v27 = *(v19 + 48);
  if (v27(v11, 1, v18) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2B28);
    v28 = sub_1E1AF5A7C();
    sub_1E14C8DA0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v29 = 0x7365766C656873;
    v30 = v68;
    v29[1] = 0xE700000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E69AB690], v28);
    swift_willThrow();
    v23(v70, v26);
    type metadata accessor for ShelfBatch();
    swift_deallocPartialClassInstance();
    (*(v71 + 8))(v73, v72);
    return v74;
  }

  v60 = v27;
  v61 = v19;
  v62 = v23;
  v63 = v22;
  v64 = v26;
  v31 = *(v19 + 32);
  v68 = v18;
  v31(v21, v11, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x1E69E7CC0];
  v75 = v32;
  v33 = v21;
  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  __swift_project_value_buffer(v34, qword_1EE1E3BD0);
  v35 = v69;
  v36 = v73;
  sub_1E1AF395C();

  v76 = MEMORY[0x1E69E7CC8];
  MEMORY[0x1EEE9AC00](v37);
  *(&v59 - 4) = v35;
  *(&v59 - 3) = &v76;
  *(&v59 - 2) = v36;
  type metadata accessor for Shelf();
  v38 = v66;
  v39 = sub_1E1AF40AC();
  v40 = v70;
  if (v38)
  {
    goto LABEL_17;
  }

  v41 = v39;
  v66 = v33;
  v42 = v65;
  sub_1E1AF381C();
  v43 = v67;
  sub_1E1AF368C();
  v62(v42, v64);
  v44 = v60(v43, 1, v68);
  if (v44 == 1)
  {
    sub_1E1308058(v43, &qword_1ECEB2B28);
    sub_1E15F0974();
    v74[2] = v41;
    v46 = v71;
    v45 = v72;
    v47 = v61;
LABEL_9:
    v49 = sub_1E15A054C(MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  v48 = v41;
  MEMORY[0x1EEE9AC00](v44);
  *(&v59 - 2) = v69;
  *(&v59 - 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v49 = sub_1E1AF40AC();
  v50 = v43;
  v46 = v71;
  v45 = v72;
  v47 = v61;
  (*(v61 + 8))(v50, v68);
  sub_1E15F0974();
  v74[2] = v48;
  if (!v49)
  {
    goto LABEL_9;
  }

LABEL_10:
  v74[3] = v49;
  v51 = v76;
  v52 = *(v76 + 16);
  if (!v52)
  {
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v53 = sub_1E1545AF8(*(v76 + 16), 0);
  v54 = *(sub_1E1AF516C() - 8);
  sub_1E1546668(&v75, (v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80))), v52, v51);
  v56 = v55;

  sub_1E1337ECC();
  if (v56 == v52)
  {
    v45 = v72;
    v36 = v73;
    v40 = v70;
    v46 = v71;
    v47 = v61;
LABEL_14:
    v62(v40, v64);
    (*(v47 + 8))(v66, v68);
    v74[4] = v53;

    v57 = *(v46 + 8);
    v57(v69, v45);
    v57(v36, v45);
    return v74;
  }

  __break(1u);
LABEL_17:

  type metadata accessor for ShelfBatch();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E14C7A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (**a6)(unint64_t, char *, uint64_t)@<X5>, _OWORD *a7@<X8>)
{
  v92 = a6;
  v105 = a5;
  v100 = a4;
  v101 = a3;
  v84 = a2;
  v104 = a1;
  v94 = a7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v83 - v7;
  v8 = sub_1E1AF5A7C();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v93 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = sub_1E1AF516C();
  v103 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v109 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v83 - v14;
  v88 = sub_1E1AF5A6C();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v83 - v17;
  v18 = sub_1E1AF39DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  v24 = sub_1E1AF380C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - v29;
  type metadata accessor for Shelf();
  (*(v25 + 16))(v30, v101, v24);
  v33 = *(v19 + 16);
  v31 = v19 + 16;
  v32 = v33;
  (v33)(v23, v100, v18);
  v34 = v99;
  v35 = Shelf.__allocating_init(deserializing:using:)(v30, v23);
  if (v34)
  {
    v36 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1E1B02CC0;
    *(v37 + 32) = v34;
    v38 = v93;
    *v93 = 0x7365766C656873;
    v38[1] = 0xE700000000000000;
    v38[2] = v36;
    v38[3] = v37;
    v40 = v97;
    v39 = v98;
    (*(v97 + 104))(v38, *MEMORY[0x1E69AB6A0], v98);
    v41 = v34;
    v42 = v89;
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
    sub_1E1AF39FC();
    (*(v90 + 1))(v42, v91);
    sub_1E14C8DE8(v108, v106);
    if (v107)
    {
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      sub_1E14C8DA0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      v43 = swift_allocError();
      (*(v40 + 16))(v44, v38, v39);
      sub_1E1AF4EBC();

      sub_1E1308058(v108, &qword_1ECEB43C8);
      (*(v40 + 8))(v38, v39);

      result = __swift_destroy_boxed_opaque_existential_1(v106);
    }

    else
    {

      sub_1E1308058(v108, &qword_1ECEB43C8);
      (*(v40 + 8))(v38, v39);
      result = sub_1E1308058(v106, &qword_1ECEB43C8);
    }

    v52 = v94;
    v94[1] = 0u;
    v52[2] = 0u;
    *v52 = 0u;
    return result;
  }

  v97 = v31;
  v98 = v32;
  v99 = v18;
  v46 = v85;
  v90 = v35;
  v91 = 0;
  sub_1E1AF381C();
  v47 = v86;
  sub_1E1AF374C();
  (*(v25 + 8))(v27, v24);
  v48 = v87;
  v49 = v88;
  if ((*(v87 + 48))(v47, 1, v88) == 1)
  {
    sub_1E1308058(v47, &qword_1ECEB1F90);
    v50 = v84;
    v51 = v104;
LABEL_26:
    v108[0] = v51;
    v108[1] = v50;

    v82 = v94;
    result = sub_1E1AF6F6C();
    *(v82 + 5) = v90;
    return result;
  }

  v53 = v102;
  (*(v48 + 32))(v102, v47, v49);
  (*(v48 + 16))(v46, v53, v49);
  (v98)(v83, v100, v99);
  v54 = v96;
  v55 = sub_1E1AF631C();
  v56 = v103;
  v51 = v104;
  v100 = *(v55 + 16);
  v101 = v55;
  v57 = v95;
  if (!v100)
  {
LABEL_25:

    (*(v87 + 8))(v53, v88);
    v50 = v84;
    goto LABEL_26;
  }

  v58 = 0;
  v99 = (v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)));
  v93 = (v103 + 32);
  v98 = (v103 + 8);
  v92 = (v103 + 40);
  v97 = v103 + 16;
  while (v58 < *(v101 + 16))
  {
    v59 = *(v56 + 72);
    v60 = *(v56 + 16);
    v60(v57, &v99[v59 * v58], v54);
    v61 = sub_1E1AF515C();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v60(v109, v57, v54);
      v65 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = *v65;
      v67 = v108[0];
      *v65 = 0x8000000000000000;
      v68 = sub_1E13018F8(v63, v64);
      v70 = *(v67 + 16);
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_29;
      }

      v74 = v69;
      if (*(v67 + 24) >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v78 = v68;
        sub_1E1417A58();
        v68 = v78;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v76 = v68;

        v77 = v108[0];
        v54 = v96;
        (*v92)(*(v108[0] + 56) + v76 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
      }

      else
      {
        sub_1E168C0CC(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_1E13018F8(v63, v64);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_31;
        }

LABEL_19:
        if (v74)
        {
          goto LABEL_20;
        }

LABEL_22:
        v77 = v108[0];
        *(v108[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v79 = (v77[6] + 16 * v68);
        *v79 = v63;
        v79[1] = v64;
        v54 = v96;
        (*v93)(v77[7] + v68 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
        v80 = v77[2];
        v72 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v72)
        {
          goto LABEL_30;
        }

        v77[2] = v81;
      }

      *v105 = v77;

      goto LABEL_11;
    }

    (*v98)(v57, v54);
LABEL_11:
    v53 = v102;
    v56 = v103;
    ++v58;
    v51 = v104;
    if (v100 == v58)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E14C85B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = a5;
  v38 = a1;
  v39 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v43 = sub_1E1AF5A7C();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1E1AF39DC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF380C();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a3, v19);
  (*(v15 + 16))(v17, a4, v14);
  v23 = sub_1E1AF56FC();
  sub_1E14C8DA0(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
  v24 = swift_allocError();
  v25 = v44;
  JSError.init(deserializing:using:)(v21, v17, v26);
  if (v25)
  {
    v44 = a6;
    MEMORY[0x1E69012F0](v24, v23);
    v27 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1E1B02CC0;
    *(v28 + 32) = v25;
    *v13 = 0x726F727265;
    v13[1] = 0xE500000000000000;
    v13[2] = v27;
    v13[3] = v28;
    v29 = v43;
    (*(v48 + 104))(v13, *MEMORY[0x1E69AB6A0], v43);
    v30 = v25;
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
    sub_1E1AF39FC();
    (*(v40 + 8))(v11, v41);
    sub_1E14C8DE8(v47, v45);
    if (v46)
    {
      __swift_project_boxed_opaque_existential_1Tm(v45, v46);
      sub_1E14C8DA0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      v31 = swift_allocError();
      v32 = v48;
      (*(v48 + 16))(v33, v13, v29);
      sub_1E1AF4EBC();

      sub_1E1308058(v47, &qword_1ECEB43C8);
      (*(v32 + 8))(v13, v29);

      result = __swift_destroy_boxed_opaque_existential_1(v45);
    }

    else
    {

      sub_1E1308058(v47, &qword_1ECEB43C8);
      (*(v48 + 8))(v13, v29);
      result = sub_1E1308058(v45, &qword_1ECEB43C8);
    }

    v36 = v44;
    *v44 = 0;
    v36[1] = 0;
    v36[2] = 0;
  }

  else
  {
    v35 = v39;
    *a6 = v38;
    a6[1] = v35;
    a6[2] = v24;
  }

  return result;
}

void *ShelfBatch.__allocating_init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = sub_1E14C6348(a1);

  v6[2] = v7;
  v6[3] = a2;
  v6[4] = a3;
  return v6;
}

void *ShelfBatch.init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E14C6348(a1);

  v3[2] = v6;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t ShelfBatch.deinit()
{

  return v0;
}

uint64_t ShelfBatch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14C8C38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShelfBatch();
  v7 = swift_allocObject();
  result = ShelfBatch.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E14C8D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14C8DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E14C8DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAdRotationFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchAdRotationFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchAdRotationFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1D28F8 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
  __swift_project_value_buffer(v3, qword_1EE1D2900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
  sub_1E1AF4AAC();
  if (v14)
  {
    sub_1E1361B28(&v13, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    v7 = MEMORY[0x1E69E6530];
    v14 = MEMORY[0x1E69E6530];
    *&v13 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (!v1)
    {
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      v10 = (*(v9 + 16))(v8, v9);
      v14 = v7;
      *&v13 = v10;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_1E1AF4A1C();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_1E14C9278(&v13);
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v12 = sub_1E1AF591C();
    __swift_project_value_buffer(v12, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E14C9278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SearchAdRotationFieldsProvider()
{
  result = qword_1EE1E8058;
  if (!qword_1EE1E8058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD000000000000023;
  *(a2 + 1) = 0x80000001E1B10440;
  v4 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() + 20);
  v5 = sub_1E1AEFCCC();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesPageIntent()
{
  result = qword_1ECEB4A40;
  if (!qword_1ECEB4A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchChartsAndCategoriesPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchChartsAndCategoriesPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall SearchChartsAndCategoriesPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for SearchChartsAndCategoriesPageIntent();
    v7 = sub_1E1AEFBDC();
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14C96C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E14C973C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1D5D90);
  __swift_project_value_buffer(v4, qword_1EE1D5D90);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E14C9890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E14D3A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E14C9930(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E14D3A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t FloatingUnifiedMessageCoordinator.actionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1);
  return v2;
}

uint64_t FloatingUnifiedMessageCoordinator.actionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1300EA8(v6);
}

uint64_t sub_1E14C9B14()
{
  v0 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E1AF591C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EE1D5D90);
  (*(v2 + 16))(v4, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    Strong = sub_1E13006E4(0, &unk_1EE1D24E0);
  }

  else
  {
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v7;
  v9[3] = Strong;
  sub_1E1AF385C();
  sub_1E1308058(v9, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v2 + 8))(v4, v1);
}

char *FloatingUnifiedMessageCoordinator.init(objectGraph:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1E1AF436C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_actionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_engagement;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v1[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_objectGraph] = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  (*(v5 + 32))(&v1[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_metricsPipeline], v7, v4);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, sel_init);
  v11 = qword_1EE1D5D88;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_1E1AF591C();
  __swift_project_value_buffer(v13, qword_1EE1D5D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v14 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_engagement;
  v15 = *&v12[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_engagement];
  v16 = v12;
  v17 = v15;
  sub_1E14D1B60(v16, &unk_1F5C28678, v17);

  v18 = *&v12[v14];
  v19 = v16;
  v20 = v18;
  sub_1E14D1B60(v19, &unk_1F5C286A8, v20);

  return v19;
}

AppStoreKit::UnifiedMessagingPlacement_optional FloatingUnifiedMessageCoordinator.register(tabBarItem:with:for:)(void *a1, void *a2)
{
  v7._countAndFlagsBits = StoreTab.Identifier.rawValue.getter();
  v7._object = v5;
  MEMORY[0x1E68FECA0](0x7449726142626154, 0xEA00000000006D65);
  result.value = UnifiedMessagingPlacement.init(rawValue:)(v7).value;
  if (LOBYTE(v7._countAndFlagsBits) != 30)
  {

    return sub_1E14D1C5C(a1, a2, v7._countAndFlagsBits, v2);
  }

  return result;
}

Swift::Void __swiftcall FloatingUnifiedMessageCoordinator.registerViewController(forAppLevelMessages:)(UIViewController *forAppLevelMessages)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements;
  v5 = byte_1F5C286F0;
  v6 = [(UIViewController *)forAppLevelMessages view];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = type metadata accessor for UnifiedMessagingRegisteredPlacement();
  v9 = objc_allocWithZone(v8);
  v10 = v7;
  v11 = forAppLevelMessages;
  sub_1E14D20A0(v5, v10, v11, v9);

  v12 = swift_beginAccess();
  MEMORY[0x1E68FEF20](v12);
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  swift_endAccess();

  v13 = byte_1F5C286F1;
  v14 = [(UIViewController *)v11 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_allocWithZone(v8);
    v17 = v15;
    sub_1E14D20A0(v13, v17, v11, v16);

    v18 = swift_beginAccess();
    MEMORY[0x1E68FEF20](v18);
    if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    swift_endAccess();
  }

  else
  {
LABEL_8:
    __break(1u);
  }
}

AppStoreKit::UnifiedMessagingPlacement_optional FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)(void *a1, void *a2)
{
  v11._countAndFlagsBits = StoreTab.Identifier.rawValue.getter();
  v11._object = v5;
  MEMORY[0x1E68FECA0](0x42746E756F636341, 0xED00006E6F747475);
  result.value = UnifiedMessagingPlacement.init(rawValue:)(v11).value;
  if (LOBYTE(v11._countAndFlagsBits) != 30)
  {
    v7 = objc_allocWithZone(type metadata accessor for UnifiedMessagingRegisteredPlacement());
    v8 = a1;
    sub_1E14D20A0(v11._countAndFlagsBits, v8, a2, v7);

    v9 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements;
    v10 = swift_beginAccess();
    MEMORY[0x1E68FEF20](v10);
    if (*((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall FloatingUnifiedMessageCoordinator.viewControllerDidDissappear(_:)(UIViewController *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E13006E4(0, &unk_1EE1D24E0);
    v4 = a1;
    v5 = sub_1E1AF6D0C();

    if (v5)
    {
      swift_unknownObjectWeakAssign();

      sub_1E14C9B14();
    }
  }
}

Swift::Void __swiftcall FloatingUnifiedMessageCoordinator.viewControllerDidAppear(_:)(UIViewController *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  swift_unknownObjectWeakAssign();
  sub_1E14C9B14();
  v6 = OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_registeredPlacements;
  swift_beginAccess();
  v41 = v1;
  v7 = *&v1[v6];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v39 = v5;
    v10 = 0;
    v5 = (v7 & 0xC000000000000001);
    while (1)
    {
      if (v5)
      {
        v11 = MEMORY[0x1E68FFD80](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v15 = Strong, sub_1E13006E4(0, &unk_1EE1D24E0), v16 = v42, v17 = sub_1E1AF6D0C(), v16, v15, (v17 & 1) != 0))
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        v18 = aBlock[0];
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_1E1AF71CC())
    {
      v36 = sub_1E1AF71CC();
      v25 = MEMORY[0x1E69E7CC0];
      if (!v36)
      {
LABEL_27:
        v26 = objc_allocWithZone(MEMORY[0x1E698C8E0]);
        v27 = sub_1E1AF5DBC();
        sub_1E13006E4(0, &qword_1EE1E3358);
        v28 = sub_1E1AF620C();
        v29 = [v26 initWithServiceType:v27 placementInfo:v28];

        v30 = v41;
        v31 = [*&v41[OBJC_IVAR____TtC11AppStoreKit33FloatingUnifiedMessageCoordinator_engagement] enqueueMessageEvent_];
        v32 = swift_allocObject();
        v32[2] = v29;
        v32[3] = v25;
        v32[4] = v18;
        v32[5] = v30;
        v32[6] = ObjectType;
        v45 = sub_1E14D23C0;
        v46 = v32;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1E14CC840;
        v44 = &block_descriptor_20;
        v33 = _Block_copy(aBlock);
        v34 = v29;
        v35 = v30;

        [v31 addFinishBlock_];
        _Block_release(v33);

        return;
      }

      v19 = v36;
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1AF70EC();
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E68FFD80](v20, v18);
          }

          else
          {
            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          ++v20;
          v47 = *(v21 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
          UnifiedMessagingPlacement.rawValue.getter();
          v23 = objc_allocWithZone(MEMORY[0x1E698C900]);
          v24 = sub_1E1AF5DBC();

          [v23 initWithPlacement:v24 context:0];

          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        while (v19 != v20);
        v25 = aBlock[0];
        goto LABEL_27;
      }

      __break(1u);
    }
  }

  else
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      aBlock[0] = v9;
      sub_1E1AF70EC();
      goto LABEL_21;
    }
  }

  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v37 = sub_1E1AF591C();
  __swift_project_value_buffer(v37, qword_1EE1D5D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v44 = sub_1E13006E4(0, &unk_1EE1D24E0);
  aBlock[0] = v42;
  v38 = v42;
  sub_1E1AF385C();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();
}

uint64_t sub_1E14CAC50(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v31 = sub_1E1AF320C();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v32 = sub_1E1AF68EC();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v19 = v29;
  v18 = v30;
  v17[6] = a5;
  v17[7] = v19;
  v17[8] = v18;
  aBlock[4] = sub_1E14D3ADC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_57_0;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = a1;

  v23 = v19;
  v24 = a3;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  v25 = v31;
  sub_1E1AF6EEC();
  v26 = v32;
  MEMORY[0x1E68FF640](0, v16, v13, v20);
  _Block_release(v20);

  (*(v35 + 8))(v13, v25);
  return (*(v33 + 8))(v16, v34);
}

void sub_1E14CAF2C(unint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  v89 = a3;
  v11 = sub_1E1AF591C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  if (a1)
  {
    v17 = a1;
    if (qword_1EE1D5D88 != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_3;
  }

  v87 = v14;
  v83 = a5;
  if (!a4)
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v93 + 1) = sub_1E13006E4(0, &unk_1EE1D2448);
    *&v92 = a2;
    v58 = a2;
    sub_1E1AF385C();
    sub_1E1308058(&v92, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B90);
    *&v92 = v89;

    sub_1E1AF385C();
    sub_1E1308058(&v92, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    return;
  }

  v61 = a4;
  v22 = [v61 messageActions];
  if (!v22)
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v93 + 1) = sub_1E13006E4(0, &unk_1EE1E3300);
    *&v92 = v61;
    v59 = v61;
    sub_1E1AF385C();
    sub_1E1308058(&v92, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B90);
    *&v92 = v89;

    sub_1E1AF385C();
    sub_1E1308058(&v92, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    return;
  }

  a2 = v22;
  sub_1E13006E4(0, &unk_1ECEB4BA0);
  v23 = sub_1E1AF621C();

  if (v23 >> 62)
  {
    v24 = sub_1E1AF71CC();
    a1 = v83;
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_98:

    return;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a1 = v83;
  if (!v24)
  {
    goto LABEL_98;
  }

LABEL_8:
  v77 = v24;
  if (a1 >> 62)
  {
    v85 = sub_1E1AF71CC();
  }

  else
  {
    v85 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = 0;
  v78 = v23 & 0xC000000000000001;
  v63 = v23 & 0xFFFFFFFFFFFFFF8;
  v64 = v23;
  v62 = v23 + 32;
  v84 = a1 & 0xC000000000000001;
  v68 = 0x80000001E1B55BC0;
  v67 = 0x80000001E1B55BA0;
  v66 = 0x80000001E1B55B80;
  v76 = 0x80000001E1B55B60;
  v75 = 0x80000001E1B55B40;
  v65 = 0x80000001E1B55B20;
  v74 = 0x80000001E1B55B00;
  v73 = 0x80000001E1B55AE0;
  v72 = 0x80000001E1B55AC0;
  v71 = 0x80000001E1B55A80;
  v70 = 0x80000001E1B55A60;
  v69 = 0x80000001E1B55980;
  v81 = "age actions on response ";
  v82 = (v12 + 16);
  v80 = (v12 + 8);
  while (1)
  {
    if (v78)
    {
      v26 = v25;
      v27 = MEMORY[0x1E68FFD80]();
    }

    else
    {
      if (v25 >= *(v63 + 16))
      {
        goto LABEL_95;
      }

      v26 = v25;
      v27 = *(v62 + 8 * v25);
    }

    v86 = v27;
    v28 = __OFADD__(v26, 1);
    v29 = v26 + 1;
    if (v28)
    {
      goto LABEL_93;
    }

    v79 = v29;
    if (v85)
    {
      break;
    }

LABEL_11:

    v25 = v79;
    if (v79 == v77)
    {

      return;
    }
  }

  if (v85 < 1)
  {
    goto LABEL_94;
  }

  v30 = 0;
  while (2)
  {
    if (v84)
    {
      v31 = MEMORY[0x1E68FFD80](v30, a1);
    }

    else
    {
      v31 = *(a1 + 8 * v30 + 32);
    }

    a2 = v31;
    ++v30;
    v88 = OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement;
    v32 = 0xEE00746565685368;
    v33 = 0x636E75614C707061;
    switch(*(v31 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement))
    {
      case 1:
        goto LABEL_61;
      case 2:
        v36 = 1701144659;
        goto LABEL_37;
      case 3:
        v36 = 1935765332;
        goto LABEL_37;
      case 4:
        v36 = 1919249473;
LABEL_37:
        v32 = v36 | 0xED00007400000000;
        v33 = 0x6C6576654C707061;
        goto LABEL_61;
      case 5:
        v40 = 0x507961646F74;
        goto LABEL_53;
      case 6:
        v37 = 0x507961646F74;
        goto LABEL_47;
      case 7:
        v38 = 0x507961646F74;
        goto LABEL_51;
      case 8:
        v40 = 0x5073656D6167;
LABEL_53:
        v33 = v40 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
        v32 = 0xEF72656461654865;
        goto LABEL_61;
      case 9:
        v37 = 0x5073656D6167;
LABEL_47:
        v33 = v37 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
        v32 = 0xEC00000064694D65;
        goto LABEL_61;
      case 0xA:
        v38 = 0x5073656D6167;
LABEL_51:
        v33 = v38 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
        v32 = 0xEF7265746F6F4665;
        goto LABEL_61;
      case 0xB:
        v35 = 1684104520;
        goto LABEL_44;
      case 0xC:
        v32 = 0xEB0000000064694DLL;
        goto LABEL_45;
      case 0xD:
        v35 = 1953460038;
LABEL_44:
        v32 = v35 | 0xEE00726500000000;
LABEL_45:
        v33 = 0x6567615073707061;
        goto LABEL_61;
      case 0xE:
        v33 = 0xD000000000000010;
        v34 = &v98;
        goto LABEL_60;
      case 0xF:
        v32 = 0xED000064694D6567;
        v33 = 0x6150656461637261;
        goto LABEL_61;
      case 0x10:
        v33 = 0xD000000000000010;
        v34 = &v99;
        goto LABEL_60;
      case 0x11:
        v39 = 0x547961646F74;
        goto LABEL_49;
      case 0x12:
        v39 = 0x5473656D6167;
LABEL_49:
        v33 = v39 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v32 = 0xEF6D657449726142;
        goto LABEL_61;
      case 0x13:
        v32 = 0xEE006D6574497261;
        v33 = 0x4262615473707061;
        goto LABEL_61;
      case 0x14:
        v33 = 0xD000000000000010;
        v34 = &v100;
        goto LABEL_60;
      case 0x15:
        v33 = 0xD000000000000010;
        v34 = &v101;
        goto LABEL_60;
      case 0x16:
        v33 = 0xD000000000000012;
        v34 = &v102;
        goto LABEL_60;
      case 0x17:
        v33 = 0xD000000000000012;
        v34 = &v93 + 1;
        goto LABEL_60;
      case 0x18:
        v33 = 0xD000000000000011;
        v34 = &v103;
        goto LABEL_60;
      case 0x19:
        v33 = 0xD000000000000013;
        v34 = &v104;
        goto LABEL_60;
      case 0x1A:
        v33 = 0xD000000000000013;
        v34 = &v94;
        goto LABEL_60;
      case 0x1B:
        v32 = 0xEB00000000656761;
        v33 = 0x50746375646F7270;
        goto LABEL_61;
      case 0x1C:
        v33 = 0xD000000000000011;
        v34 = &v95;
        goto LABEL_60;
      case 0x1D:
        v33 = 0xD000000000000011;
        v34 = &v96;
        goto LABEL_60;
      default:
        v33 = 0xD000000000000013;
        v34 = &v97;
LABEL_60:
        v32 = *(v34 - 32);
LABEL_61:
        v41 = [v86 placementsMap];
        v89 = v30;
        if (!v41)
        {
          goto LABEL_73;
        }

        v42 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4BB0);
        v43 = sub_1E1AF5C7C();

        if (!*(v43 + 16))
        {

LABEL_73:

          v49 = 0;
LABEL_74:
          v52 = a6;
          v53 = v87;
          if (qword_1EE1D5D88 != -1)
          {
            swift_once();
          }

          v54 = __swift_project_value_buffer(v11, qword_1EE1D5D90);
          (*v82)(v53, v54, v11);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
          sub_1E1AF388C();
          sub_1E1AF387C();
          if (v49)
          {
            *(&v93 + 1) = sub_1E13006E4(0, &qword_1ECEB6180);
            *&v92 = v49;
          }

          else
          {
            v92 = 0u;
            v93 = 0u;
          }

          v55 = v49;
          sub_1E1AF385C();
          sub_1E1308058(&v92, &qword_1ECEB2DF0);
          sub_1E1AF387C();
          v56 = *(a2 + v88);
          *(&v93 + 1) = &type metadata for UnifiedMessagingPlacement;
          LOBYTE(v92) = v56;
          sub_1E1AF385C();
          sub_1E1308058(&v92, &qword_1ECEB2DF0);
          sub_1E1AF387C();
          sub_1E1AF38AC();
          v57 = v87;
          sub_1E1AF548C();

          (*v80)(v57, v11);
          a6 = v52;
          a1 = v83;
          v30 = v89;
          goto LABEL_80;
        }

        v44 = sub_1E13018F8(v33, v32);
        v46 = v45;

        if ((v46 & 1) == 0)
        {
          goto LABEL_73;
        }

        v47 = *(*(v43 + 56) + 8 * v44);

        if (v47 >> 62)
        {
          if (!sub_1E1AF71CC())
          {
            goto LABEL_73;
          }
        }

        else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1E68FFD80](0, v47);
LABEL_69:
          v49 = v48;

          v50 = [v49 makeDialogRequest];
          if (!v50)
          {
            goto LABEL_74;
          }

          v51 = v50;
          sub_1E14CC0A0(v50, a2);

LABEL_80:
          if (v85 == v30)
          {
            goto LABEL_11;
          }

          continue;
        }

        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v48 = *(v47 + 32);
          goto LABEL_69;
        }

        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        swift_once();
LABEL_3:
        __swift_project_value_buffer(v11, qword_1EE1D5D90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF388C();
        sub_1E1AF387C();
        swift_getErrorValue();
        v18 = v90;
        v19 = v91;
        *(&v93 + 1) = v91;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
        (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
        sub_1E1AF385C();
        sub_1E1308058(&v92, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        *(&v93 + 1) = sub_1E13006E4(0, &unk_1EE1D2448);
        *&v92 = a2;
        v21 = a2;
        sub_1E1AF385C();
        sub_1E1308058(&v92, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        *(&v93 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B90);
        *&v92 = v89;

        sub_1E1AF385C();
        sub_1E1308058(&v92, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF548C();

        return;
    }
  }
}

void sub_1E14CC0A0(void *a1, void *a2)
{
  v3 = v2;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF591C();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_1EE1D5D90);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v12 = *(sub_1E1AF38EC() - 8);
  v13 = ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v37 = *(v12 + 72);
  v38 = v11;
  v14 = swift_allocObject();
  v36 = xmmword_1E1B02CC0;
  *(v14 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v49 = sub_1E13006E4(0, &qword_1ECEB4A70);
  aBlock = a1;
  v43 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v49 = type metadata accessor for UnifiedMessagingRegisteredPlacement();
  aBlock = v45;
  v15 = v45;
  sub_1E1AF385C();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v45 = v13;
  sub_1E1AF38AC();
  v40 = v5;
  sub_1E1AF548C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = swift_unknownObjectWeakLoadStrong();
  v18 = v17;
  if (!Strong)
  {
    if (!v17)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!v17)
  {
    v18 = Strong;
LABEL_10:

    goto LABEL_11;
  }

  sub_1E13006E4(0, &unk_1EE1D24E0);
  v19 = sub_1E1AF6D0C();

  if (v19)
  {
    goto LABEL_12;
  }

LABEL_11:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
LABEL_12:
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1AF527C();

    sub_1E13006E4(0, &qword_1EE1E3480);
    sub_1E1AF55EC();
    v20 = aBlock;
    v21 = [aBlock ams_activeiTunesAccount];

    v22 = objc_allocWithZone(MEMORY[0x1E698CC80]);
    v23 = [v22 initWithRequest_];
    [v23 setDelegate_];
    v24 = [v23 loadPromise];
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = v15;
    v25[4] = ObjectType;
    v50 = sub_1E14D3AB4;
    v51 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1E16D4010;
    v49 = &block_descriptor_39_0;
    v26 = _Block_copy(&aBlock);
    v27 = v15;
    v28 = v23;

    [v24 addFinishBlock_];
    _Block_release(v26);
    swift_unknownObjectRelease();

    return;
  }

  (*(v42 + 16))(v41, v10, v40);
  *(swift_allocObject() + 16) = v36;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v29 = swift_unknownObjectWeakLoadStrong();
  v30 = v29;
  if (v29)
  {
    v29 = sub_1E13006E4(0, &unk_1EE1D24E0);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  aBlock = v30;
  v49 = v29;
  sub_1E1AF385C();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v31 = *(v15 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
  v49 = &type metadata for UnifiedMessagingPlacement;
  LOBYTE(aBlock) = v31;
  sub_1E1AF385C();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v32 = swift_unknownObjectWeakLoadStrong();
  v33 = v32;
  if (v32)
  {
    v32 = sub_1E13006E4(0, &unk_1EE1D24E0);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  aBlock = v33;
  v49 = v32;
  sub_1E1AF385C();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  v34 = v40;
  v35 = v41;
  sub_1E1AF548C();

  (*(v42 + 8))(v35, v34);
}

void sub_1E14CC840(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1E14CC8CC(char a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v9 = sub_1E1AF320C();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E1AF324C();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  v17 = v24;
  *(v16 + 40) = a2;
  *(v16 + 48) = v17;
  aBlock[4] = sub_1E14D3AC0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  v19 = a3;
  v20 = a4;
  v21 = a2;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v18);
  _Block_release(v18);

  (*(v26 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v25);
}

void sub_1E14CCB8C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_1E1AF591C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  if (a1)
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v24 = sub_1E13006E4(0, &qword_1ECEB4B78);
    v23[0] = a2;
    v13 = a2;
    sub_1E1AF385C();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v14 = *(v22 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v24 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v23[0]) = v14;
    sub_1E1AF385C();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    sub_1E15E2F5C(v13);
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_1EE1D5D90);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v24 = sub_1E13006E4(0, &qword_1ECEB4B78);
    v23[0] = a2;
    v16 = a2;
    sub_1E1AF385C();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v17 = *(v22 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v24 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v23[0]) = v17;
    sub_1E1AF385C();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    if (a4)
    {
      swift_getErrorValue();
      v18 = sub_1E1AF75AC();
      v20 = MEMORY[0x1E69E6158];
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v23[2] = 0;
    }

    v23[0] = v18;
    v23[1] = v19;
    v24 = v20;
    sub_1E1AF385C();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1E14CD160(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (qword_1EE1D5D88 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE1D5D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v18 = sub_1E13006E4(0, &qword_1ECEB4A70);
  aBlock[0] = a1;
  v7 = a1;
  sub_1E1AF385C();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v18 = type metadata accessor for UnifiedMessagingRegisteredPlacement();
  aBlock[0] = a2;
  v8 = a2;
  sub_1E1AF385C();
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v9 = [objc_allocWithZone(MEMORY[0x1E698CD38]) initWithRequest_];
  [v9 setDelegate_];
  v10 = [v9 loadPromise];
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = ObjectType;
  v19 = sub_1E14D3A94;
  v20 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E16D4010;
  v18 = &block_descriptor_27;
  v12 = _Block_copy(aBlock);
  v13 = v7;
  v14 = v8;
  v15 = v9;

  [v10 addFinishBlock_];
  _Block_release(v12);
}

uint64_t sub_1E14CD4EC(char a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v28 = a2;
  v29 = a6;
  v10 = sub_1E1AF320C();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AF324C();
  v13 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v30 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  v17 = a5;
  *(v16 + 40) = a5;
  v19 = v28;
  v18 = v29;
  *(v16 + 48) = v28;
  *(v16 + 56) = v18;
  aBlock[4] = sub_1E14D3AA0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_33_0;
  v20 = _Block_copy(aBlock);
  v21 = a3;
  v22 = a4;
  v23 = v17;
  v24 = v19;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v25 = v30;
  MEMORY[0x1E68FF640](0, v15, v12, v20);
  _Block_release(v20);

  (*(v32 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v31);
}

void sub_1E14CD7B8(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v9 = sub_1E1AF591C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  if (a1)
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v28 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v27[0] = a2;
    v15 = a2;
    sub_1E1AF385C();
    sub_1E1308058(v27, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v16 = *(v26 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v28 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v27[0]) = v16;
    sub_1E1AF385C();
    sub_1E1308058(v27, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_1EE1D5D90);
    (*(v10 + 16))(v12, v19, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v28 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v27[0] = a2;
    v20 = a2;
    sub_1E1AF385C();
    sub_1E1308058(v27, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v21 = *(v26 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v28 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(v27[0]) = v21;
    sub_1E1AF385C();
    sub_1E1308058(v27, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    if (a5)
    {
      swift_getErrorValue();
      v22 = sub_1E1AF75AC();
      v24 = MEMORY[0x1E69E6158];
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v27[2] = 0;
    }

    v27[0] = v22;
    v27[1] = v23;
    v28 = v24;
    sub_1E1AF385C();
    sub_1E1308058(v27, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v10 + 8))(v12, v9);
  }
}

void sub_1E14CDDA4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [objc_allocWithZone(MEMORY[0x1E698CC50]) initWithRequest:a1 presentingViewController:Strong];
    v9 = [v8 present];
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = a2;
    v10[4] = ObjectType;
    v19 = sub_1E14D3AD0;
    v20 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1619988;
    v18 = &block_descriptor_51;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = a2;

    [v9 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    if (qword_1EE1D5D88 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE1D5D90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v18 = sub_1E13006E4(0, &qword_1ECEB4A70);
    aBlock[0] = a1;
    v15 = a1;
    sub_1E1AF385C();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v16 = *(a2 + OBJC_IVAR____TtC11AppStoreKit35UnifiedMessagingRegisteredPlacement_placement);
    v18 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(aBlock[0]) = v16;
    sub_1E1AF385C();
    sub_1E1308058(aBlock, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }
}
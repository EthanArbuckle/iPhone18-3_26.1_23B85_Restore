uint64_t sub_1E1A1D388(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageUrls();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ArcadeDiffablePagePresenter()
{
  result = qword_1EE1D7B90;
  if (!qword_1EE1D7B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A1D440()
{
  result = type metadata accessor for ArcadePageUrls();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1E1A1DDBC(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

void *sub_1E1A1DE08(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = result;

    return sub_1E1300E34(a2);
  }

  else if (!a4)
  {
  }

  return result;
}

void *sub_1E1A1DE6C(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_1E1300EA8(a2);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t sub_1E1A1DED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadePageUrls();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_52Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t CrossfireReferralAction.__allocating_init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v8 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8 + v13, a2, v14);
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    v25[1] = v21;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a2, v14);
  sub_1E1308058(v29, &unk_1ECEB5670);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t CrossfireReferralAction.init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v3 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v20;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  (*(v14 + 16))(v16, a2, v13);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v37, &v31);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v7;
    v26 = v25;
    (*(v24 + 8))(v9, v6);
    v30[1] = v23;
    v30[2] = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v37, &unk_1ECEB5670);
  v27 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 32) = v36;
  v28 = v35;
  *v27 = v34;
  *(v27 + 16) = v28;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *CrossfireReferralAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_1E1AF39DC();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v50 = sub_1E1AF380C();
  v12 = *(v50 - 8);
  v13 = MEMORY[0x1EEE9AC00](v50);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  sub_1E1AF381C();
  if (sub_1E1AF37AC())
  {
    v21 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v22, "referrerData");
    v23 = v44;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    (*(v7 + 8))(v46, v45);
    v24 = *(v12 + 8);
    v25 = v50;
    v24(a1, v50);
    v24(v20, v25);
  }

  else
  {
    v40 = *(v12 + 16);
    v41 = a1;
    v40(v18, v20, v50);
    v39 = *(v7 + 16);
    v39(v11, v46, v45);
    v26 = v43;
    ReferrerData.init(deserializing:using:)(v18, v11, v47);
    if (!v26)
    {
      v30 = v48;
      v31 = v49;
      v32 = &v2[OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData];
      v33 = v47[1];
      *v32 = v47[0];
      *(v32 + 1) = v33;
      *(v32 + 4) = v30;
      v32[40] = v31;
      v34 = v41;
      v40(v15, v41, v50);
      v35 = v42;
      v39(v42, v46, v45);
      v4 = Action.init(deserializing:using:)(v15, v35);
      (*(v7 + 8))(v46, v45);
      v36 = *(v12 + 8);
      v37 = v34;
      v38 = v50;
      v36(v37, v50);
      v36(v20, v38);
      return v4;
    }

    (*(v7 + 8))(v46, v45);
    v27 = *(v12 + 8);
    v28 = v50;
    v27(v41, v50);
    v27(v20, v28);
  }

  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t CrossfireReferralAction.referrerData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = *(v2 + 40);
  *(a1 + 40) = v5;

  return sub_1E13E23E4(v4, v5);
}

uint64_t sub_1E1A1EC5C()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v3 = *(v1 + 40);

  return sub_1E137B778(v2, v3);
}

uint64_t CrossfireReferralAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_1E137B778(v3, v4);
  return v0;
}

uint64_t CrossfireReferralAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_1E137B778(v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CrossfireReferralAction()
{
  result = qword_1EE1EBFD0;
  if (!qword_1EE1EBFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IconRowViewLayout.init(metrics:iconViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1A1F018(a1, a3);
  result = type metadata accessor for IconRowViewLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1E1A1F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A1F0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IconRowViewLayout.iconViews.getter()
{
  type metadata accessor for IconRowViewLayout(0);
}

uint64_t IconRowViewLayout.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t IconRowViewLayout.Metrics.init(iconAspectRatio:interItemSpacing:alignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  v8 = sub_1E1AF127C();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = v7;
  return result;
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IconRowViewLayout.Metrics.interItemSpacing.setter(double a1)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

CGSize __swiftcall IconRowViewLayout.iconSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  v3 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_1E1A1F5A4() + 16);

  if (v6)
  {
    sub_1E1A1F0C8(v1, v5);
    sub_1E1AF122C();
    v8 = v7;
    v9 = sub_1E1AF127C();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else
  {
    v8 = 0.0;
    height = 0.0;
  }

  v10 = v8;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

uint64_t sub_1E1A1F5A4()
{
  result = type metadata accessor for IconRowViewLayout(0);
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      sub_1E1300B24(v5, &v11);
      __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
      if ((sub_1E1AF117C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1Tm(&v11, v12), (sub_1E1AF112C() & 1) == 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v11);
      }

      else
      {
        sub_1E1361B28(&v11, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C248(0, *(v6 + 16) + 1, 1);
          v6 = v13;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1E135C248((v8 > 1), v9 + 1, 1);
          v6 = v13;
        }

        *(v6 + 16) = v9 + 1;
        result = sub_1E1361B28(v10, v6 + 40 * v9 + 32);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t IconRowViewLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(sub_1E1A1F5A4() + 16);

  if (v15)
  {
    v16 = *(sub_1E1A1F5A4() + 16);

    if (v16)
    {
      sub_1E1A1F0C8(v6, v14);
      sub_1E1AF122C();
      v18 = v17;
      v19 = sub_1E1AF127C();
      (*(*(v19 - 8) + 8))(v14, v19);
    }

    else
    {
      v18 = 0.0;
    }

    if (*(v6 + *(v12 + 24)))
    {
      _s11AppStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0();
      v22 = v21;
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      MinX = CGRectGetMinX(v34);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      v24 = MinX + (v22 - CGRectGetWidth(v35)) * -0.5;
    }

    else
    {
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      v24 = CGRectGetMinX(v36);
    }

    v25 = [a1 traitCollection];
    v26 = sub_1E1AF697C();

    v27 = *(v6 + *(type metadata accessor for IconRowViewLayout(0) + 20));

    if (v26)
    {
      v27 = sub_1E190CA04(v27);
    }

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v27 + 32;
      do
      {
        sub_1E1300B24(v29, v31);
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        if ((sub_1E1AF117C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1Tm(v31, v32), (sub_1E1AF112C() & 1) == 0))
        {
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          sub_1E1AF116C();
        }

        else
        {
          v37.origin.x = a2;
          v37.origin.y = a3;
          v37.size.width = a4;
          v37.size.height = a5;
          CGRectGetMinY(v37);
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          sub_1E1AF116C();
          v24 = v24 + v18 + *(v6 + *(v12 + 20));
        }

        __swift_destroy_boxed_opaque_existential_1(v31);
        v29 += 40;
        --v28;
      }

      while (v28);
    }

    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetMinX(v38);
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetMinY(v39);
    return sub_1E1AF106C();
  }

  else
  {

    return sub_1E1AF10AC();
  }
}

uint64_t _s11AppStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0()
{
  v1 = v0;
  v2 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1E1A1F5A4() + 16);

  if (v5)
  {
    v7 = *(sub_1E1A1F5A4() + 16);

    if (v7)
    {
      sub_1E1A1F0C8(v1, v4);
      sub_1E1AF122C();
      v8 = sub_1E1AF127C();
      return (*(*(v8 - 8) + 8))(v4, v8);
    }
  }

  return result;
}

unint64_t sub_1E1A1FC40()
{
  result = qword_1ECEBCD38;
  if (!qword_1ECEBCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCD38);
  }

  return result;
}

void sub_1E1A1FCBC()
{
  type metadata accessor for IconRowViewLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_1E15025D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E1A1FD78()
{
  result = sub_1E1AF127C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TapToRate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_1E1AF39DC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - v7;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v40 = v9;
  v22 = *(v9 + 8);
  v22(v18, v8);
  v23 = (v3 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_title);
  *v23 = v19;
  v23[1] = v21;
  sub_1E1AF381C();
  v24 = sub_1E1AF375C();
  v48 = v8;
  v22(v15, v8);
  if ((v24 & 0x100000000) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v45 = v3;
  v46 = a1;
  v26 = v3 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_rating;
  *v26 = v25;
  *(v26 + 4) = 0;
  v27 = v42;
  sub_1E1AF381C();
  v28 = v47;
  v29 = v43;
  v38 = *(v47 + 16);
  v38(v43, v50, v49);
  type metadata accessor for RateAction();
  v30 = swift_allocObject();
  v31 = v44;
  v32 = RateAction.init(deserializing:using:)(v27, v29);
  if (v31)
  {
    (*(v28 + 8))(v50, v49);
    v22(v46, v48);

    type metadata accessor for TapToRate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v22;
    v33 = v46;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_rateAction) = v32;
    v34 = v39;
    (*(v40 + 16))(v39, v33, v48);
    v35 = v41;
    v36 = v49;
    v38(v41, v50, v49);
    v30 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v34, v35);
    (*(v47 + 8))(v50, v36);
    v44(v33, v48);
  }

  return v30;
}

uint64_t type metadata accessor for TapToRate()
{
  result = qword_1EE1E4038;
  if (!qword_1EE1E4038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_title);

  return v1;
}

uint64_t sub_1E1A20388()
{
}

uint64_t TapToRate.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t Array.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v17 = 0;
    v18 = sub_1E1AF62BC();
    v19 = a1;
    MEMORY[0x1EEE9AC00](v18);
    v16[2] = a3;
    v16[3] = a1;
    v16[4] = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD60);
    v7 = sub_1E1AF635C();
    v8 = sub_1E1A20E8C();
    return sub_1E1A2068C(sub_1E1A20E68, v16, v6, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  }

  else
  {
    sub_1E1AF635C();
    sub_1E1AF743C();
    swift_allocObject();
    v11 = sub_1E1AF623C();
    *v12 = a2;
    v17 = v11;
    v13 = sub_1E1AF635C();
    nullsub_5(v13, v14, v15);

    return v17;
  }
}

uint64_t sub_1E1A2068C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1E1AF6D9C();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1E1AF60BC();
  v63 = sub_1E1AF712C();
  v58 = sub_1E1AF713C();
  sub_1E1AF70DC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1E1AF60AC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1E1AF6DBC();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1E1AF711C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1E1AF6DBC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1E1AF711C();
      sub_1E1AF6DBC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t *sub_1E1A20D80@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = (*result + a2);
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1E1AF62BC();
    if (result < v4)
    {
      result = sub_1E1AF62BC();
      v4 = result;
    }

    if (v4 >= v3)
    {
      sub_1E1AF63AC();
      sub_1E1AF6ECC();
      swift_getWitnessTable();
      result = sub_1E1AF639C();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A20E8C()
{
  result = qword_1ECEBCD68;
  if (!qword_1ECEBCD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCD68);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v14[-v4];
  sub_1E1AF666C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1E1AF617C();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_1E1AF66FC();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v9, v10);
    v7(v14, 0);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t Collection.hasIndex(_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_1E1AF666C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1E1AF617C();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t Collection.asDictionary<A, B>(key:value:)()
{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v1;
}

{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v1;
}

{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v1;
}

{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v1;
}

uint64_t sub_1E1A2142C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = a1;
  v7 = *a3;
  v26[0] = a4;
  v8 = *MEMORY[0x1E69E77B0];
  v9 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v10 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v17 = *(v7 + v8 + 8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v26 - v23;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  (*(v18 + 16))(v21, v24, v17);
  (*(v13 + 16))(v12, v16, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v13 + 8))(v16, v9);
  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_1E1A2180C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a7;
  v29[1] = a5;
  v29[2] = a4;
  v30 = a3;
  v31 = a9;
  v32 = a1;
  v11 = *(*a5 + *MEMORY[0x1E69E77B0] + 8);
  v12 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v29 - v25;
  v30(a2, v24);
  swift_getAtKeyPath();
  v27 = v29[0];
  (*(v19 + 16))(v22, v26, v29[0]);
  (*(v15 + 16))(v14, v18, v11);
  (*(v15 + 56))(v14, 0, 1, v11);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v15 + 8))(v18, v11);
  return (*(v19 + 8))(v26, v27);
}

uint64_t sub_1E1A21BCC(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = a5;
  v29 = a4;
  v28[1] = a3;
  v30 = a9;
  v31 = a1;
  v11 = *a3;
  v12 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v28 - v25;
  swift_getAtKeyPath();
  v29(a2);
  (*(v20 + 16))(v23, v26, v19);
  (*(v15 + 16))(v14, v18, a7);
  (*(v15 + 56))(v14, 0, 1, a7);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v15 + 8))(v18, a7);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_1E1A21F64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a4;
  v34 = a6;
  v35 = a5;
  v33 = a3;
  v36 = a11;
  v37 = a1;
  v13 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v30 - v26;
  v33(a2, v25);
  v35(a2);
  v28 = v31;
  (*(v20 + 16))(v23, v27, v31);
  (*(v16 + 16))(v15, v19, a9);
  (*(v16 + 56))(v15, 0, 1, a9);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v16 + 8))(v19, a9);
  return (*(v20 + 8))(v27, v28);
}

uint64_t Collection.itemCount(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v25 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v11 + 16))(v14, v26, a3, v16);
  sub_1E1AF60AC();
  swift_getAssociatedConformanceWitness();
  v19 = 0;
  v20 = (v5 + 48);
  v21 = (v5 + 32);
  v22 = (v5 + 8);
LABEL_2:
  v26 = v19;
  while (1)
  {
    sub_1E1AF6DBC();
    if ((*v20)(v10, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v21)(v7, v10, AssociatedTypeWitness);
    v23 = v27(v7);
    (*v22)(v7, AssociatedTypeWitness);
    if (v23)
    {
      v19 = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }
  }

  (*(v25 + 8))(v18, v15);
  return v26;
}

uint64_t Collection.itemCount<A>(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v45 = a1;
  v46 = a2;
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF6D9C();
  v9 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v39 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v39 - v18;
  (*(v12 + 16))(v15, v49, a3, v17);
  v20 = v19;
  sub_1E1AF60AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = 0;
  v42 = (v6 + 8);
  v43 = (v6 + 32);
  v23 = (v6 + 48);
  v39[1] = v8 - 8;
LABEL_2:
  v41 = v22;
  sub_1E1AF6DBC();
  v24 = *(v8 - 8);
  v25 = *(v24 + 48);
  if (v25(v11, 1, v8) != 1)
  {
    v26 = *v23;
    v48 = v24 + 48;
    v49 = v26;
    v47 = (v24 + 8);
    for (i = v26(v11, 1, v4); ; i = v49(v11, 1, v4))
    {
      if (i == 1)
      {
        (*v47)(v11, v8);
      }

      else
      {
        v28 = v25;
        v29 = v23;
        v30 = AssociatedConformanceWitness;
        v31 = v20;
        v32 = AssociatedTypeWitness;
        v33 = v8;
        v34 = v4;
        v35 = v44;
        (*v43)(v44, v11, v34);
        v36 = v45(v35);
        v37 = v35;
        v4 = v34;
        v8 = v33;
        AssociatedTypeWitness = v32;
        v20 = v31;
        AssociatedConformanceWitness = v30;
        v23 = v29;
        v25 = v28;
        (*v42)(v37, v4);
        if (v36)
        {
          v22 = v41 + 1;
          if (!__OFADD__(v41, 1))
          {
            goto LABEL_2;
          }

          __break(1u);
          break;
        }
      }

      sub_1E1AF6DBC();
      if (v25(v11, 1, v8) == 1)
      {
        break;
      }
    }
  }

  (*(v40 + 8))(v20, AssociatedTypeWitness);
  return v41;
}

uint64_t AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for AppShowcaseLockupViewLayout(0);
  sub_1E1A22C20(a1, a9 + *(v18 + 48));
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF11AC();
  sub_1E134FD1C(a3, a9 + 40, &qword_1ECEB4E00);
  sub_1E1300B24(a4, a9 + 80);
  sub_1E1300B24(a5, a9 + 120);
  __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
  type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1E1308058(a3, &qword_1ECEB4E00);
  sub_1E1A22CA4(a1);
  sub_1E1308EC0(a7, a9 + 200);
  v19 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v19;
  *(a9 + 272) = *(a8 + 32);
  v20 = *(a10 + 16);
  *(a9 + 280) = *a10;
  *(a9 + 296) = v20;
  *(a9 + 312) = *(a10 + 32);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1E1A22C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A22CA4(uint64_t a1)
{
  v2 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  sub_1E1308EC0(a2, a9 + 24);
  v23 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v24 = v23[7];
  v25 = sub_1E1AF166C();
  v26 = *(*(v25 - 8) + 32);
  v26(a9 + v24, a3, v25);
  sub_1E1308EC0(a4, a9 + v23[8]);
  v26(a9 + v23[9], a5, v25);
  v26(a9 + v23[10], a6, v25);
  v26(a9 + v23[11], a7, v25);
  v26(a9 + v23[12], a8, v25);
  v27 = (a9 + v23[13]);
  *v27 = a12;
  v27[1] = a13;
  sub_1E1308EC0(a14, a9 + v23[14]);
  sub_1E1308EC0(a15, a9 + v23[15]);
  v28 = a9 + v23[16];

  return sub_1E1308EC0(a16, v28);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.wordmarkSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);

  return sub_1E1308EC0(a1, v1 + 24);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 56);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 60);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 64);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);

  return sub_1E1A22C20(v3, a1);
}

double AppShowcaseLockupViewLayout.measurements(fitting:in:)(double a1, double a2)
{
  v5 = sub_1E1AF745C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v2[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
  v21 = a1;
  *&v20[1] = a2;
  sub_1E1AF11CC();
  v20[0] = v8;
  v9 = v2 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v10 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v11 = sub_1E1AF166C();
  v12 = MEMORY[0x1E69AB980];
  sub_1E1AF12FC();
  sub_1E1AF12FC();
  sub_1E134FD1C((v2 + 5), &v24, &qword_1ECEB4E00);
  if (v25)
  {
    sub_1E1308EC0(&v24, v26);
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v9 + 3, *(v9 + 6));
      sub_1E13BC274();
      sub_1E1AF12DC();
      (*(v22 + 8))(v7, v23);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1E1308058(&v24, &qword_1ECEB4E00);
  }

  v27 = v11;
  v28 = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 25, v2[28]);
  v14 = sub_1E1AF117C();
  v15 = 48;
  if (v14)
  {
    v15 = 40;
  }

  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, &v9[*(v10 + v15)], v11);
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v20[0] = v9;
  v16 = v23;
  v17 = *(v22 + 8);
  v17(v7, v23);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 25, v2[28]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    sub_1E1AF102C();
    sub_1E1AF12DC();
    v17(v7, v16);
  }

  __swift_project_boxed_opaque_existential_1Tm(v2 + 20, v2[23]);
  v18 = v21;
  sub_1E1AF11DC();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

uint64_t AppShowcaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v195 = a1;
  v183 = a2;
  v182 = sub_1E1AF111C();
  v12 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v164 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v163 - v15;
  v187 = sub_1E1AF18BC();
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1E1AF18DC();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v163 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v163 - v20;
  v175 = sub_1E1AF745C();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1E1AF189C();
  v196 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v176 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v163 - v24;
  v198 = sub_1E1AF184C();
  v199 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v197 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF188C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v177 = v27;
  v31 = *(v27 + 104);
  v32 = MEMORY[0x1E69ABA18];
  if (!*v30)
  {
    v32 = MEMORY[0x1E69ABA08];
  }

  v33 = *v32;
  v178 = v26;
  v31(v29, v33, v26);
  sub_1E134FD1C((v7 + 5), &v212, &qword_1ECEB4E00);
  v34 = MEMORY[0x1E69E7DE0];
  v193 = v7;
  v200 = v29;
  v201 = v30;
  v181 = v12;
  v189 = v16;
  if (!v213)
  {
    sub_1E1308058(&v212, &qword_1ECEB4E00);
    goto LABEL_7;
  }

  sub_1E1308EC0(&v212, &v215);
  __swift_project_boxed_opaque_existential_1Tm(&v215, v216);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v215);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
    v169 = v196[9];
    v35 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v170 = (2 * v169);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1E1B03760;
    v172 = v36;
    v184 = (v36 + v35);
    v37 = *(v30 + 2);
    v216 = v34;
    v217 = MEMORY[0x1E69AB858];
    v215 = v37;
    *&v212 = MEMORY[0x1E69E7CC0];
    v186 = sub_1E1425840();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
    v190 = sub_1E1383E14();
    v38 = v197;
    v39 = v198;
    sub_1E1AF6EEC();
    v7 = v193;
    sub_1E1AF186C();
    v185 = *(v199 + 8);
    v185(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    v40 = v7[13];
    v41 = v7[14];
    v42 = __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v40);
    v216 = v40;
    v217 = *(v41 + 8);
    v43 = __swift_allocate_boxed_opaque_existential_0(&v215);
    (*(*(v40 - 8) + 16))(v43, v42, v40);
    v167 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v44 = *(v167 + 28);
    v45 = sub_1E1AF166C();
    v213 = v45;
    v46 = MEMORY[0x1E69AB980];
    v214 = MEMORY[0x1E69AB980];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v212);
    v48 = *(v45 - 8);
    v165 = *(v48 + 16);
    v166 = v48 + 16;
    v165(boxed_opaque_existential_0, &v201[v44], v45);
    *&v209 = MEMORY[0x1E69E7CC0];
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    v185(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v212);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    v49 = v7[18];
    v50 = v7[19];
    v51 = __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v49);
    v216 = v49;
    v217 = *(v50 + 8);
    v52 = __swift_allocate_boxed_opaque_existential_0(&v215);
    v53 = v51;
    v54 = v46;
    (*(*(v49 - 8) + 16))(v52, v53, v49);
    v55 = *(v167 + 36);
    v213 = v45;
    v214 = v46;
    v56 = __swift_allocate_boxed_opaque_existential_0(&v212);
    v165(v56, &v201[v55], v45);
    *&v209 = MEMORY[0x1E69E7CC0];
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    v57 = v39;
    v58 = v201;
    v185(v38, v57);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
  v186 = v196[9];
  v59 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1E1B05090;
  v172 = v60;
  v184 = (v60 + v59);
  v61 = *(v30 + 2);
  v213 = v34;
  v214 = MEMORY[0x1E69AB858];
  *&v212 = v61;
  *&v209 = MEMORY[0x1E69E7CC0];
  v62 = sub_1E1425840();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  v185 = sub_1E1383E14();
  v64 = v197;
  v65 = v198;
  v190 = v62;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v66 = v199 + 8;
  v170 = *(v199 + 8);
  v170(v64, v65);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440);
  v168 = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF183C();
  *&v212 = v67;
  v169 = v63;
  sub_1E1AF6EEC();
  v68 = v186;
  sub_1E1AF186C();
  v69 = v170;
  v170(v64, v65);
  v167 = 2 * v68;
  v70 = v7[13];
  v71 = v7[14];
  v72 = __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v70);
  v213 = v70;
  v214 = *(v71 + 8);
  v73 = __swift_allocate_boxed_opaque_existential_0(&v212);
  (*(*(v70 - 8) + 16))(v73, v72, v70);
  v74 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  *&v209 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v69(v64, v65);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  v75 = v7[18];
  v76 = v7[19];
  v77 = __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v75);
  v213 = v75;
  v78 = *(v76 + 8);
  v58 = v201;
  v214 = v78;
  v79 = __swift_allocate_boxed_opaque_existential_0(&v212);
  (*(*(v75 - 8) + 16))(v79, v77, v75);
  v80 = *(v74 + 36);
  v45 = sub_1E1AF166C();
  v210 = v45;
  v211 = MEMORY[0x1E69AB980];
  v81 = __swift_allocate_boxed_opaque_existential_0(&v209);
  (*(*(v45 - 8) + 16))(v81, &v58[v80], v45);
  *&v206 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v170(v64, v65);
  v54 = MEMORY[0x1E69AB980];
  __swift_destroy_boxed_opaque_existential_1(&v209);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(&v212);
  __swift_destroy_boxed_opaque_existential_1(&v215);
  sub_1E1AF166C();
  v216 = v45;
  v217 = v54;
  v82 = __swift_allocate_boxed_opaque_existential_0(&v215);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 25, v7[28]);
  v83 = sub_1E1AF117C();
  v84 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v85 = v84;
  v86 = *(*(v45 - 8) + 16);
  v87 = 48;
  if (v83)
  {
    v87 = 40;
  }

  v88 = &v58[*(v84 + v87)];
  v186 = v82;
  v86(v82, v88, v45);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 25, v7[28]);
  v89 = sub_1E1AF117C();
  v90 = v7;
  v190 = v85;
  if (v89)
  {
    v91 = v189;
    v92 = v172;
  }

  else
  {
    v93 = v58;
    v94 = v90[28];
    v95 = v90[29];
    v96 = __swift_project_boxed_opaque_existential_1Tm(v90 + 25, v94);
    v213 = v94;
    v214 = *(v95 + 8);
    v97 = __swift_allocate_boxed_opaque_existential_0(&v212);
    (*(*(v94 - 8) + 16))(v97, v96, v94);
    v98 = *(v85 + 44);
    v210 = v45;
    v211 = v54;
    v99 = __swift_allocate_boxed_opaque_existential_0(&v209);
    v86(v99, &v93[v98], v45);
    *&v206 = MEMORY[0x1E69E7CC0];
    sub_1E1425840();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
    sub_1E1383E14();
    v100 = v197;
    v101 = v198;
    sub_1E1AF6EEC();
    v102 = v171;
    sub_1E1AF186C();
    (*(v199 + 8))(v100, v101);
    __swift_destroy_boxed_opaque_existential_1(&v209);
    __swift_destroy_boxed_opaque_existential_1(&v212);
    v92 = v172;
    v104 = *(v172 + 2);
    v103 = *(v172 + 3);
    if (v104 >= v103 >> 1)
    {
      v92 = sub_1E172D494(v103 > 1, v104 + 1, 1, v172);
    }

    v91 = v189;
    *(v92 + 2) = v104 + 1;
    (v196[4])(&v92[((*(v196 + 80) + 32) & ~*(v196 + 80)) + v196[9] * v104], v102, v191);
  }

  __swift_project_boxed_opaque_existential_1Tm(&v215, v216);
  v105 = v173;
  sub_1E13BC274();
  sub_1E1AF12DC();
  v107 = v106;
  (*(v174 + 8))(v105, v175);
  v108 = v107 + *&v201[*(v190 + 52) + 8];
  v213 = MEMORY[0x1E69E7DE0];
  v214 = MEMORY[0x1E69AB858];
  *&v212 = v108;
  *&v209 = MEMORY[0x1E69E7CC0];
  v109 = sub_1E1425840();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  sub_1E1383E14();
  v111 = v197;
  v185 = v110;
  v112 = v198;
  v186 = v109;
  sub_1E1AF6EEC();
  v113 = v176;
  sub_1E1AF186C();
  v114 = *(v199 + 8);
  v199 += 8;
  v184 = v114;
  v114(v111, v112);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  v116 = *(v92 + 2);
  v115 = *(v92 + 3);
  if (v116 >= v115 >> 1)
  {
    v92 = sub_1E172D494(v115 > 1, v116 + 1, 1, v92);
  }

  *(v92 + 2) = v116 + 1;
  v117 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  (v196[4])(&v92[v117 + v196[9] * v116], v113, v191);
  v118 = *MEMORY[0x1E69ABA28];
  v119 = *(v194 + 104);
  v120 = *MEMORY[0x1E69ABA28];
  v194 += 104;
  v196 = v119;
  (v119)(v188, v120, v187);
  v191 = sub_1E1AF140C();
  v213 = v191;
  v214 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v212);
  sub_1E1AF13FC();
  v121 = v192;
  sub_1E1AF18CC();
  sub_1E1AF182C();
  v218.origin.x = a3;
  v218.origin.y = a4;
  v218.size.width = a5;
  v218.size.height = a6;
  Width = CGRectGetWidth(v218);
  v123 = sub_1E1AF108C();
  *v124 = Width;
  v123(&v212, 0);
  sub_1E1AF109C();
  v125 = sub_1E1AF10FC();
  sub_1E1AF1D3C();
  v125(&v212, 0);
  v126 = sub_1E1AF10FC();
  sub_1E1AF1D0C();
  v126(&v212, 0);
  v127 = v193;
  sub_1E134FD1C((v193 + 30), &v209, &qword_1ECEB2AD0);
  if (v210)
  {
    sub_1E1308EC0(&v209, &v212);
    sub_1E134FD1C((v127 + 35), &v206, &qword_1ECEB2AD0);
    if (v207)
    {
      v128 = v127;
      sub_1E1308EC0(&v206, &v209);
      __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
        if (sub_1E1AF112C())
        {
          sub_1E134FD1C((v127 + 5), &v203, &qword_1ECEB4E00);
          LODWORD(v176) = v118;
          if (v204)
          {
            sub_1E1308EC0(&v203, &v206);
            __swift_project_boxed_opaque_existential_1Tm(&v206, v207);
            if ((sub_1E1AF117C() & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1Tm(&v206, v207);
              sub_1E1AF115C();
              CGRectGetMaxY(v220);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
              v145 = swift_allocObject();
              *(v145 + 16) = xmmword_1E1B02CD0;
              v175 = v145;
              v174 = v145 + v117;
              v146 = v213;
              v147 = v214;
              v148 = __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
              v204 = v146;
              v205 = *(v147 + 8);
              v149 = __swift_allocate_boxed_opaque_existential_0(&v203);
              (*(*(v146 - 8) + 16))(v149, v148, v146);
              v202 = MEMORY[0x1E69E7CC0];
              v150 = v197;
              v151 = v198;
              sub_1E1AF6EEC();
              v139 = v200;
              sub_1E1AF186C();
              v152 = v184;
              v184(v150, v151);
              __swift_destroy_boxed_opaque_existential_1(&v203);
              v154 = v210;
              v153 = v211;
              v155 = __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
              v204 = v154;
              v205 = *(v153 + 8);
              v156 = __swift_allocate_boxed_opaque_existential_0(&v203);
              (*(*(v154 - 8) + 16))(v156, v155, v154);
              v202 = MEMORY[0x1E69E7CC0];
              sub_1E1AF6EEC();
              sub_1E1AF186C();
              v152(v150, v151);
              __swift_destroy_boxed_opaque_existential_1(&v203);
              goto LABEL_34;
            }

            __swift_destroy_boxed_opaque_existential_1(&v206);
          }

          else
          {
            sub_1E1308058(&v203, &qword_1ECEB4E00);
          }

          __swift_project_boxed_opaque_existential_1Tm(v127, v127[3]);
          sub_1E1AF115C();
          CGRectGetMaxY(v219);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
          v132 = swift_allocObject();
          *(v132 + 16) = xmmword_1E1B02CD0;
          v175 = v132;
          v174 = v132 + v117;
          v133 = v213;
          v134 = v214;
          v135 = __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
          v207 = v133;
          v208 = *(v134 + 8);
          v136 = __swift_allocate_boxed_opaque_existential_0(&v206);
          (*(*(v133 - 8) + 16))(v136, v135, v133);
          *&v203 = MEMORY[0x1E69E7CC0];
          v137 = v197;
          v138 = v198;
          sub_1E1AF6EEC();
          v139 = v200;
          sub_1E1AF186C();
          v140 = v184;
          v184(v137, v138);
          __swift_destroy_boxed_opaque_existential_1(&v206);
          v141 = v210;
          v142 = v211;
          v143 = __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
          v207 = v141;
          v208 = *(v142 + 8);
          v144 = __swift_allocate_boxed_opaque_existential_0(&v206);
          (*(*(v141 - 8) + 16))(v144, v143, v141);
          *&v203 = MEMORY[0x1E69E7CC0];
          sub_1E1AF6EEC();
          sub_1E1AF186C();
          v140(v137, v138);
LABEL_34:
          __swift_destroy_boxed_opaque_existential_1(&v206);
          __swift_project_boxed_opaque_existential_1Tm(v128 + 20, v128[23]);
          sub_1E1AF115C();
          CGRectGetMinY(v221);
          v222.origin.x = a3;
          v222.origin.y = a4;
          v222.size.width = a5;
          v222.size.height = a6;
          CGRectGetMinX(v222);
          v223.origin.x = a3;
          v223.origin.y = a4;
          v223.size.width = a5;
          v223.size.height = a6;
          CGRectGetWidth(v223);
          (v196)(v188, v176, v187);
          v207 = v191;
          v208 = MEMORY[0x1E69AB908];
          __swift_allocate_boxed_opaque_existential_0(&v206);
          sub_1E1AF13FC();
          v157 = v163;
          sub_1E1AF18CC();
          v158 = v164;
          sub_1E1AF182C();
          v130 = v181;
          v159 = v182;
          (*(v181 + 8))(v158, v182);
          v160 = *(v179 + 8);
          v161 = v157;
          v162 = v180;
          v160(v161, v180);
          v160(v192, v162);
          (*(v177 + 8))(v139, v178);
          __swift_destroy_boxed_opaque_existential_1(&v209);
          __swift_destroy_boxed_opaque_existential_1(&v212);
          v129 = v159;
          v91 = v189;
          goto LABEL_30;
        }
      }

      (*(v179 + 8))(v192, v180);
      (*(v177 + 8))(v200, v178);
      __swift_destroy_boxed_opaque_existential_1(&v209);
    }

    else
    {
      (*(v179 + 8))(v192, v180);
      (*(v177 + 8))(v200, v178);
      sub_1E1308058(&v206, &qword_1ECEB2AD0);
    }

    __swift_destroy_boxed_opaque_existential_1(&v212);
  }

  else
  {
    (*(v179 + 8))(v121, v180);
    (*(v177 + 8))(v200, v178);
    sub_1E1308058(&v209, &qword_1ECEB2AD0);
  }

  v129 = v182;
  v130 = v181;
LABEL_30:
  (*(v130 + 32))(v183, v91, v129);
  return __swift_destroy_boxed_opaque_existential_1(&v215);
}

void sub_1E1A25D6C()
{
  sub_1E138432C(319, &qword_1EE1D2AE0);
  if (v0 <= 0x3F)
  {
    sub_1E1300690(319, &qword_1EE1D2AD0, &qword_1ECEB2AC0);
    if (v1 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AB0);
      if (v2 <= 0x3F)
      {
        sub_1E1300690(319, &unk_1EE1D2AA0, &qword_1ECEB2AC8);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AppShowcaseLockupViewLayout.Metrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E1A25EB8()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AC0);
    if (v1 <= 0x3F)
    {
      sub_1E1AF166C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id ArtworkItemProvider.init(artworkLoader:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoader] = a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig] = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *MEMORY[0x1E6963860];
  v13[4] = sub_1E13571A0;
  v13[5] = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1A26138;
  v13[3] = &block_descriptor_100;
  v9 = _Block_copy(v13);
  v10 = v7;
  v11 = v8;
  [v10 registerDataRepresentationForTypeIdentifier:v11 visibility:3 loadHandler:v9];
  _Block_release(v9);

  return v10;
}

id sub_1E1A26138(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1E1A26A6C, v4);

  return v5;
}

id ArtworkItemProvider.loadDataRepresentation(forTypeIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (sub_1E1AF5DFC() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_1E1AF74AC();

    if ((v13 & 1) == 0)
    {
      v14 = sub_1E1AF5DBC();
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1A26488;
      aBlock[3] = &block_descriptor_3_2;
      v15 = _Block_copy(aBlock);

      v25.receiver = v5;
      v25.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v25, sel_loadDataRepresentationForTypeIdentifier_completionHandler_, v14, v15);
      _Block_release(v15);

      return v16;
    }
  }

  v18 = [objc_opt_self() progressWithTotalUnitCount_];
  v19 = *&v5[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig];
  v20 = [sub_1E1AA9ED4() hash];
  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;

  sub_1E1AF6F6C();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v21;
  v23[4] = v22;
  v23[5] = v20;
  v24 = v18;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v19, 1, aBlock, sub_1E1A26A10, v23);

  sub_1E13E2E98(aBlock);

  return v24;
}

uint64_t sub_1E1A26488(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1E1AEFD3C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1E1337F64(v4, v8);
}

uint64_t sub_1E1A26534(UIImage *a1, int a2, int a3, uint64_t a4, id a5, uint64_t a6)
{
  [a5 setCompletedUnitCount_];
  swift_beginAccess();
  v9 = *(a6 + 16);
  if (v9)
  {
    if (a1)
    {

      v10 = UIImagePNGRepresentation(a1);
      if (v10)
      {
        v11 = v10;
        a1 = sub_1E1AEFD3C();
        v13 = v12;

LABEL_8:
        v9(a1, v13, a4);
        sub_1E1300EA8(v9);
        sub_1E1337F64(a1, v13);
        goto LABEL_9;
      }

      a1 = 0;
    }

    else
    {
    }

    v13 = 0xF000000000000000;
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E1AF6F6C();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v16, 1);

    sub_1E134B88C(v16);
  }

  swift_beginAccess();
  v14 = *(a6 + 16);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  return sub_1E1300EA8(v14);
}

void sub_1E1A2677C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1E1AEFB1C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1E1AEFD2C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id ArtworkItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkItemProvider.__allocating_init(item:typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1E1AF5DBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithItem:a1 typeIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id ArtworkItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E1A26F10(void *a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1E1AEF3AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  v22.receiver = v4;
  v22.super_class = v16;
  result = objc_msgSendSuper2(&v22, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v18 = result;
      sub_1E1AEF33C();

      (*(v10 + 32))(v15, v12, v9);
      sub_1E1AEF37C();
      if (v19)
      {
        v20 = sub_1E1AF5DBC();

        v21 = sub_1E1AF5DBC();
        [a1 setValue:v20 forHTTPHeaderField:v21];
      }

      return (*(v10 + 8))(v15, v9);
    }
  }

  return result;
}

id sub_1E1A271D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E1A27230(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1E1AEF3AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4, v16);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v20 = result;
      sub_1E1AEF33C();

      (*(v12 + 32))(v18, v14, v11);
      sub_1E1AEF37C();
      if (v21)
      {
        v22 = sub_1E1AF5DBC();

        v23 = sub_1E1AF5DBC();
        [a1 setValue:v22 forHTTPHeaderField:v23];
      }

      return (*(v12 + 8))(v18, v11);
    }
  }

  return result;
}

__n128 DeepLinkWithReferrerIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = sub_1E1AEFCCC();
  v14 = *(a3 + 16);
  v15 = *a3;
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for DeepLinkWithReferrerIntent();
  *(a4 + *(v11 + 20)) = a2;
  v12 = a4 + *(v11 + 24);
  result = v15;
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for DeepLinkWithReferrerIntent()
{
  result = qword_1ECEBCD88;
  if (!qword_1ECEBCD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLinkWithReferrerIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeepLinkWithReferrerIntent.referrerData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeepLinkWithReferrerIntent() + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_1E13E23E4(v5, v6);
}

JSValue __swiftcall DeepLinkWithReferrerIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = result.super.isa;
  v14 = sub_1E1AEFBDC();
  v7 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v14, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1E1AF6C5C();
  v8 = type metadata accessor for DeepLinkWithReferrerIntent();
  LOBYTE(v15) = *(v1 + *(v8 + 20));
  v9 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v15}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  v10 = (v1 + *(v8 + 24));
  v11 = v10[4];
  v12 = *(v10 + 40);
  v16 = *v10;
  v17 = *(v10 + 1);
  v18 = v10[3];
  LOBYTE(v19) = v12;

  sub_1E13E23E4(v11, v12);
  v13 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v16, v17, v18, v11, v19}];
  result.super.isa = swift_unknownObjectRelease();
  if (v13)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1E1A27984()
{
  result = qword_1ECEBCC00;
  if (!qword_1ECEBCC00)
  {
    type metadata accessor for DeepLinkWithReferrerIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC00);
  }

  return result;
}

uint64_t sub_1E1A279DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E1A27A94()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ProductPageIconDimension.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1A27C18()
{
  result = qword_1ECEBCD98[0];
  if (!qword_1ECEBCD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBCD98);
  }

  return result;
}

id TodayCard.Style.cardHeadingTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];
      v5 = [v4 colorWithAlphaComponent_];
    }

    else
    {
      sub_1E1355E88();
      v4 = sub_1E1AF6CAC();
      v5 = [v4 colorWithAlphaComponent_];
    }

    v6 = v5;

    return v6;
  }

  else
  {
    if (qword_1EE1E3248 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3250;

    return v2;
  }
}

id TodayCard.Style.cardTitleTextColor.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v3 = [objc_opt_self() whiteColor];

      return v3;
    }

    else
    {
      sub_1E1355E88();
      return sub_1E1AF6CAC();
    }
  }

  else
  {
    if (qword_1EE1E3260 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1E3268;

    return v1;
  }
}

uint64_t TodayCard.Style.overlayBackgroundColor.getter()
{
  if (*v0 > 1u)
  {
    return 0;
  }

  if (qword_1EE1D2318 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D2320;
  v2 = qword_1EE1D2320;
  return v1;
}

id TodayCard.Style.overlayTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];
    }

    else
    {
      v4 = [objc_opt_self() blackColor];
    }

    return v4;
  }

  else
  {
    if (qword_1EE1E3260 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3268;

    return v2;
  }
}

id TodayCard.Style.overlayDetailTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];

      return v4;
    }

    else
    {
      v5 = [objc_opt_self() blackColor];
      v6 = [v5 colorWithAlphaComponent_];

      return v6;
    }
  }

  else
  {
    if (qword_1EE1E3248 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3250;

    return v2;
  }
}

Swift::Void __swiftcall ProductPresenter.reloadTopLockup()()
{
  if (sub_1E1AF74AC())
  {
    return;
  }

  v1 = sub_1E184ADBC();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

LABEL_29:
  v3 = sub_1E1AF71CC();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v12 = v0;
  v4 = 0;
  v0 = 0xE500000000000000;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E68FFD80](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (*(v5 + 16) <= 1u && *(v5 + 16))
    {
      break;
    }

    v6 = sub_1E1AF74AC();

    if (v6)
    {
      goto LABEL_20;
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

LABEL_20:

  if (*(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v8 = *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v8 = *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v8)
    {
      return;
    }
  }

  sub_1E18426E4(v8);
  v9 = v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Int __swiftcall ProductPresenter.numberOfNonShelfRows(for:)(Swift::Int a1)
{
  v3 = sub_1E184ADBC();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);

      v5 = *(v4 + 16);

      if (v5 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_29;
  }

  v15 = MEMORY[0x1E68FFD80](a1, v3);

  v16 = *(v15 + 16);
  swift_unknownObjectRelease();
  if (v16 == 2)
  {
LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded) == 1)
    {
      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
      }

      else
      {
        v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
      swift_beginAccess();
      v10 = *(v7 + v9);

      if (!(v10 >> 62))
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

        return v11;
      }

LABEL_29:
      v11 = sub_1E1AF71CC();
      goto LABEL_14;
    }

    if (v6)
    {
      v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return 1;
      }
    }

    v12 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
    swift_beginAccess();
    v13 = *(v8 + v12);

    if (v13 >> 62)
    {
      v11 = sub_1E1AF71CC();
    }

    else
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      return v11;
    }

    return 1;
  }

LABEL_24:

  return sub_1E184C07C(a1);
}

double ProductPresenter.data(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (sub_1E1AF01AC() < 2)
  {
    if (qword_1ECEB1280 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEF4B98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    v7 = sub_1E1AF01FC();
    v27 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);
    sub_1E1AF38BC();
    sub_1E13E44F8(v26);
    sub_1E1AF382C();
    v9 = sub_1E1AF01AC();
    v27 = MEMORY[0x1E69E6530];
    v26[0] = v9;
    sub_1E1AF38BC();
    sub_1E13E44F8(v26);
    sub_1E1AF382C();
    sub_1E1AF54AC();

    goto LABEL_44;
  }

  v10 = sub_1E184ADBC();
  if (v10 >> 62)
  {
    v11 = sub_1E1AF71CC();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_1E1AF019C() >= v11)
  {
    goto LABEL_44;
  }

  v12 = sub_1E184ADBC();
  v13 = sub_1E1AF019C();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 8 * v13 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_38;
  }

  v14 = MEMORY[0x1E68FFD80](v13, v12);
LABEL_12:

  if (*(v14 + 16) != 2)
  {
    sub_1E184C9E0(a2);

    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
LABEL_43:

LABEL_44:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -256;
      return result;
    }
  }

  v17 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  v12 = *(v15 + v17);

  if (!(v12 >> 62))
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1E1AF70EC();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  if (!sub_1E1AF71CC())
  {
LABEL_42:

    goto LABEL_43;
  }

  v25 = sub_1E1AF71CC();
  if (!v25)
  {
    goto LABEL_48;
  }

  v18 = v25;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E1AF70EC();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  v20 = v12 & 0xC000000000000001;
  do
  {
    if (v20)
    {
      MEMORY[0x1E68FFD80](v19, v12);
    }

    else
    {
    }

    ++v19;

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
  }

  while (v18 != v19);
  for (i = v28; ; i = MEMORY[0x1E69E7CC0])
  {
    v22 = sub_1E1AF018C();
    if (v20)
    {
      break;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v12 + 8 * v22 + 32);

      goto LABEL_33;
    }

    __break(1u);
LABEL_48:
    v20 = v12 & 0xC000000000000001;
  }

  v23 = MEMORY[0x1E68FFD80](v22, v12);
LABEL_33:

  v24 = *(v3 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded);
  *a2 = v23;
  *(a2 + 8) = i;
  *(a2 + 16) = v24;
  *(a2 + 41) = 1;
  return result;
}

unint64_t ProductPresenter.isSelectable(at:)()
{
  v0 = sub_1E184ADBC();
  result = sub_1E1AF019C();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E68FFD80](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A28C20()
{
  v0 = sub_1E184ADBC();
  result = sub_1E1AF019C();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E68FFD80](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

double UpsellGridLayout.init(metrics:icons:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

double UpsellGridLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

double UpsellGridLayout.metrics.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 16) = result;
  return result;
}

uint64_t UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t static UpsellGridLayout.iconCount(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  sub_1E1A28E58(&v7, v10, a2, a3, 0.0, 0.0);
  v5 = *(v10[0] + 16);

  return v5;
}

double sub_1E1A28E58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v17 = *a1;
  v18 = 7 * *a1;
  if ((*a1 * 7) >> 64 != v18 >> 63)
  {
    goto LABEL_109;
  }

  v19 = a3;
  if (a4 < a3)
  {
    a3 = a4;
  }

  if (v19 > a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = a4;
  }

  if (v17 <= 1)
  {
    v17 = 1;
  }

  v21 = v17 - 1;
  if (!*(a1 + 8))
  {
    a3 = v20;
  }

  v10 = a3 / (v18 + v21);
  v267 = *(a1 + 2) * (v10 * 7.0);
  v22 = v10 + v267 + v267;
  if (!*(a1 + 8))
  {
    a5 = 0.0;
  }

  if (!*(a1 + 8))
  {
    a6 = 0.0;
  }

  v272.origin.x = a5;
  v272.origin.y = a6;
  v272.size.width = v19;
  v272.size.height = a4;
  v26 = CGRectGetMidX(v272) - v22 * 0.5;
  v273.origin.x = a5;
  v273.origin.y = a6;
  v273.size.width = v19;
  v273.size.height = a4;
  v9 = a5;
  v266 = a6;
  v11 = a4;
  v253 = CGRectGetMidY(v273) - v22 * 0.5;
  v254 = v26;
  rect = v10 + v267 + v267;
  sub_1E1AF6B1C();
  v14 = v27;
  v15 = v28;
  v12 = v29;
  v13 = v30;
  v6 = sub_1E172D670(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v17 = *(v6 + 3);
  v7 = v8 + 1;
  v257 = v19;
  if (v8 >= v17 >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    *(v6 + 2) = v7;
    v31 = &v6[32 * v8];
    *(v31 + 4) = v14;
    *(v31 + 5) = v15;
    *(v31 + 6) = v12;
    *(v31 + 7) = v13;
    v274.origin.y = v253;
    v274.origin.x = v254;
    v274.size.width = rect;
    v274.size.height = rect;
    v32 = CGRectGetMinY(v274) - v10;
    v268 = v9;
    v275.origin.x = v9;
    v33 = v266;
    v275.origin.y = v266;
    v275.size.width = v257;
    v34 = v11;
    v275.size.height = v11;
    v264 = v10 + v267;
    v252 = v10;
    if (CGRectGetMinY(v275) < v32)
    {
      v63 = v257;
      v64 = v268;
      do
      {
        v277.origin.y = v253;
        v277.origin.x = v254;
        v277.size.width = rect;
        v277.size.height = rect;
        v35 = v34;
        MinX = CGRectGetMinX(v277);
        v278.origin.x = v64;
        v278.origin.y = v33;
        v278.size.width = v63;
        v278.size.height = v35;
        v327.origin.x = MinX;
        v327.origin.y = v32 - v267;
        v327.size.width = v267;
        v327.size.height = v267;
        if (CGRectIntersectsRect(v278, v327))
        {
          sub_1E1AF6B1C();
          v42 = *(v6 + 2);
          v41 = *(v6 + 3);
          v43 = MinX;
          if (v42 >= v41 >> 1)
          {
            v262 = v37;
            v54 = v38;
            v55 = v39;
            v56 = v40;
            v57 = sub_1E172D670((v41 > 1), v42 + 1, 1, v6);
            v40 = v56;
            v39 = v55;
            v38 = v54;
            v37 = v262;
            v6 = v57;
          }

          *(v6 + 2) = v42 + 1;
          v44 = &v6[32 * v42];
          *(v44 + 4) = v37;
          *(v44 + 5) = v38;
          *(v44 + 6) = v39;
          *(v44 + 7) = v40;
        }

        else
        {
          v43 = MinX;
        }

        v34 = v35;
        v279.origin.y = v253;
        v279.origin.x = v254;
        v279.size.width = rect;
        v279.size.height = rect;
        v45 = CGRectGetMaxX(v279) - v267;
        v280.origin.x = v43;
        v280.origin.y = v32 - v267;
        v280.size.width = v267;
        v280.size.height = v267;
        MinY = CGRectGetMinY(v280);
        v281.origin.x = v268;
        v33 = v266;
        v281.origin.y = v266;
        v281.size.width = v257;
        v281.size.height = v35;
        v328.origin.x = v45;
        v328.origin.y = MinY;
        v328.size.width = v267;
        v328.size.height = v267;
        if (CGRectIntersectsRect(v281, v328))
        {
          sub_1E1AF6B1C();
          v52 = *(v6 + 2);
          v51 = *(v6 + 3);
          if (v52 >= v51 >> 1)
          {
            v58 = v47;
            v59 = v48;
            v60 = v49;
            v61 = v50;
            v62 = sub_1E172D670((v51 > 1), v52 + 1, 1, v6);
            v50 = v61;
            v49 = v60;
            v48 = v59;
            v47 = v58;
            v6 = v62;
          }

          v10 = v252;
          *(v6 + 2) = v52 + 1;
          v53 = &v6[32 * v52];
          *(v53 + 4) = v47;
          *(v53 + 5) = v48;
          *(v53 + 6) = v49;
          *(v53 + 7) = v50;
          v64 = v268;
        }

        else
        {
          v10 = v252;
          v64 = v268;
        }

        v32 = v32 - v264;
        v276.origin.x = v64;
        v276.origin.y = v266;
        v63 = v257;
        v276.size.width = v257;
        v276.size.height = v35;
      }

      while (CGRectGetMinY(v276) < v32);
    }

    else
    {
      v63 = v257;
      v64 = v268;
    }

    v282.origin.y = v253;
    v282.origin.x = v254;
    v65 = rect;
    v282.size.width = rect;
    v282.size.height = rect;
    v66 = v10 + CGRectGetMaxY(v282);
    v283.origin.x = v64;
    v283.origin.y = v33;
    v283.size.width = v63;
    v283.size.height = v34;
    v67 = v63;
    v265 = v34;
    if (v66 >= CGRectGetMaxY(v283))
    {
      v9 = v268;
    }

    else
    {
      v9 = v268;
      do
      {
        v285.origin.y = v253;
        v285.origin.x = v254;
        v285.size.width = v65;
        v285.size.height = v65;
        v68 = v34;
        v69 = CGRectGetMinX(v285);
        v286.origin.x = v9;
        v286.origin.y = v33;
        v286.size.width = v67;
        v286.size.height = v68;
        v329.origin.x = v69;
        v329.origin.y = v66;
        v329.size.width = v267;
        v329.size.height = v267;
        if (CGRectIntersectsRect(v286, v329))
        {
          sub_1E1AF6B1C();
          v75 = *(v6 + 2);
          v74 = *(v6 + 3);
          if (v75 >= v74 >> 1)
          {
            v86 = v70;
            v87 = v71;
            v88 = v72;
            v89 = v73;
            v90 = sub_1E172D670((v74 > 1), v75 + 1, 1, v6);
            v73 = v89;
            v72 = v88;
            v71 = v87;
            v70 = v86;
            v6 = v90;
          }

          *(v6 + 2) = v75 + 1;
          v76 = &v6[32 * v75];
          *(v76 + 4) = v70;
          *(v76 + 5) = v71;
          *(v76 + 6) = v72;
          *(v76 + 7) = v73;
        }

        v287.origin.y = v253;
        v287.origin.x = v254;
        v287.size.width = rect;
        v287.size.height = rect;
        v77 = CGRectGetMaxX(v287) - v267;
        v288.origin.x = v69;
        v288.origin.y = v66;
        v288.size.width = v267;
        v288.size.height = v267;
        v78 = CGRectGetMinY(v288);
        v289.origin.x = v268;
        v34 = v265;
        v33 = v266;
        v289.origin.y = v266;
        v289.size.width = v67;
        v289.size.height = v265;
        v330.origin.x = v77;
        v330.origin.y = v78;
        v330.size.width = v267;
        v330.size.height = v267;
        if (CGRectIntersectsRect(v289, v330))
        {
          sub_1E1AF6B1C();
          v84 = *(v6 + 2);
          v83 = *(v6 + 3);
          if (v84 >= v83 >> 1)
          {
            v91 = v79;
            v92 = v80;
            v93 = v81;
            v94 = v82;
            v95 = sub_1E172D670((v83 > 1), v84 + 1, 1, v6);
            v82 = v94;
            v67 = v257;
            v81 = v93;
            v80 = v92;
            v79 = v91;
            v6 = v95;
          }

          *(v6 + 2) = v84 + 1;
          v85 = &v6[32 * v84];
          *(v85 + 4) = v79;
          *(v85 + 5) = v80;
          *(v85 + 6) = v81;
          *(v85 + 7) = v82;
          v9 = v268;
          v65 = rect;
        }

        else
        {
          v65 = rect;
          v9 = v268;
        }

        v66 = v264 + v66;
        v284.origin.x = v9;
        v284.origin.y = v266;
        v284.size.width = v67;
        v284.size.height = v265;
      }

      while (v66 < CGRectGetMaxY(v284));
    }

    v290.origin.x = v254;
    v96 = v65;
    v290.origin.y = v253;
    v290.size.width = v65;
    v290.size.height = v65;
    v97 = v252 + CGRectGetMaxX(v290);
    v291.origin.x = v254;
    v291.origin.y = v253;
    v291.size.width = v65;
    v291.size.height = v65;
    v98 = CGRectGetMaxY(v291) - v264;
    v292.origin.x = v9;
    v292.origin.y = v33;
    v292.size.width = v67;
    v292.size.height = v34;
    v270.x = v97;
    v270.y = v98;
    if (!CGRectContainsPoint(v292, v270))
    {
      break;
    }

    v251 = v252 + v96;
    v8 = 1;
    while (1)
    {
      v250 = v98;
      v99 = rect;
      v293.origin.x = v254;
      v293.origin.y = v253;
      v293.size.width = rect;
      v293.size.height = rect;
      v258 = CGRectGetMinX(v293);
      v294.origin.x = v254;
      v294.origin.y = v253;
      v12 = v257;
      v294.size.width = rect;
      v294.size.height = rect;
      MaxY = CGRectGetMaxY(v294);
      v260 = v98 - rect;
      sub_1E1AF6B1C();
      v105 = *(v6 + 2);
      v104 = *(v6 + 3);
      if (v105 >= v104 >> 1)
      {
        v239 = v100;
        v240 = v101;
        v241 = v102;
        v242 = v103;
        v243 = sub_1E172D670((v104 > 1), v105 + 1, 1, v6);
        v103 = v242;
        v12 = v257;
        v102 = v241;
        v101 = v240;
        v100 = v239;
        v9 = v268;
        v99 = rect;
        v6 = v243;
      }

      *(v6 + 2) = v105 + 1;
      v106 = &v6[32 * v105];
      *(v106 + 4) = v100;
      *(v106 + 5) = v101;
      *(v106 + 6) = v102;
      *(v106 + 7) = v103;
      v263 = v97;
      v295.origin.x = v97;
      v295.origin.y = v260;
      v295.size.width = v99;
      v295.size.height = v99;
      for (i = CGRectGetMinY(v295) - v252; ; i = i - v264)
      {
        v296.origin.x = v9;
        v296.origin.y = v33;
        v296.size.width = v12;
        v296.size.height = v34;
        if (CGRectGetMinY(v296) >= i)
        {
          break;
        }

        v297.origin.y = v260;
        v297.origin.x = v97;
        v297.size.width = v99;
        v297.size.height = v99;
        v108 = v12;
        v109 = v34;
        v110 = CGRectGetMinX(v297);
        v298.origin.x = v9;
        v298.origin.y = v33;
        v298.size.width = v108;
        v298.size.height = v109;
        v331.origin.x = v110;
        v331.origin.y = i - v267;
        v331.size.width = v267;
        v331.size.height = v267;
        if (CGRectIntersectsRect(v298, v331))
        {
          sub_1E1AF6B1C();
          v113 = v112;
          v115 = v114;
          v117 = v116;
          v119 = *(v6 + 2);
          v118 = *(v6 + 3);
          v120 = v110;
          if (v119 >= v118 >> 1)
          {
            v131 = v111;
            v132 = sub_1E172D670((v118 > 1), v119 + 1, 1, v6);
            v111 = v131;
            v6 = v132;
          }

          *(v6 + 2) = v119 + 1;
          v121 = &v6[32 * v119];
          *(v121 + 4) = v113;
          *(v121 + 5) = v111;
          *(v121 + 6) = v115;
          *(v121 + 7) = v117;
          v34 = v265;
          v12 = v257;
        }

        else
        {
          v120 = v110;
          v34 = v109;
          v12 = v108;
        }

        v299.size.width = rect;
        v299.origin.y = v260;
        v299.origin.x = v97;
        v299.size.height = rect;
        v122 = CGRectGetMaxX(v299) - v267;
        v300.origin.x = v120;
        v300.origin.y = i - v267;
        v300.size.width = v267;
        v300.size.height = v267;
        v123 = CGRectGetMinY(v300);
        v301.origin.x = v268;
        v33 = v266;
        v301.origin.y = v266;
        v301.size.width = v12;
        v301.size.height = v34;
        v332.origin.x = v122;
        v332.origin.y = v123;
        v332.size.width = v267;
        v332.size.height = v267;
        if (CGRectIntersectsRect(v301, v332))
        {
          sub_1E1AF6B1C();
          v129 = *(v6 + 2);
          v128 = *(v6 + 3);
          if (v129 >= v128 >> 1)
          {
            v133 = v124;
            v134 = v125;
            v135 = v126;
            v136 = v127;
            v137 = sub_1E172D670((v128 > 1), v129 + 1, 1, v6);
            v127 = v136;
            v126 = v135;
            v125 = v134;
            v12 = v257;
            v124 = v133;
            v6 = v137;
          }

          *(v6 + 2) = v129 + 1;
          v130 = &v6[32 * v129];
          *(v130 + 4) = v124;
          *(v130 + 5) = v125;
          *(v130 + 6) = v126;
          *(v130 + 7) = v127;
          v9 = v268;
          v99 = rect;
        }

        else
        {
          v99 = rect;
          v9 = v268;
        }
      }

      v302.origin.y = v260;
      v302.origin.x = v97;
      v302.size.width = v99;
      v302.size.height = v99;
      v138 = v252 + CGRectGetMaxY(v302);
      v303.origin.x = v9;
      v303.origin.y = v33;
      v303.size.width = v12;
      v303.size.height = v34;
      if (v138 >= CGRectGetMaxY(v303))
      {
        v139 = v267;
      }

      else
      {
        v139 = v267;
        do
        {
          v305.origin.y = v260;
          v305.origin.x = v263;
          v305.size.width = v99;
          v140 = v99;
          v305.size.height = v99;
          v141 = v12;
          v142 = v34;
          v143 = CGRectGetMinX(v305);
          v306.origin.x = v9;
          v306.origin.y = v33;
          v306.size.width = v141;
          v306.size.height = v142;
          v333.origin.x = v143;
          v333.origin.y = v138;
          v333.size.width = v139;
          v333.size.height = v139;
          if (CGRectIntersectsRect(v306, v333))
          {
            sub_1E1AF6B1C();
            v149 = *(v6 + 2);
            v148 = *(v6 + 3);
            if (v149 >= v148 >> 1)
            {
              v160 = v144;
              v161 = v145;
              v162 = v146;
              v163 = v147;
              v164 = sub_1E172D670((v148 > 1), v149 + 1, 1, v6);
              v147 = v163;
              v141 = v257;
              v146 = v162;
              v140 = rect;
              v145 = v161;
              v144 = v160;
              v6 = v164;
            }

            *(v6 + 2) = v149 + 1;
            v150 = &v6[32 * v149];
            *(v150 + 4) = v144;
            *(v150 + 5) = v145;
            *(v150 + 6) = v146;
            *(v150 + 7) = v147;
          }

          v307.origin.y = v260;
          v307.origin.x = v263;
          v307.size.width = v140;
          v307.size.height = v140;
          v151 = CGRectGetMaxX(v307) - v139;
          v308.origin.x = v143;
          v308.origin.y = v138;
          v308.size.width = v139;
          v308.size.height = v139;
          v152 = CGRectGetMinY(v308);
          v309.origin.x = v268;
          v33 = v266;
          v309.origin.y = v266;
          v309.size.width = v141;
          v309.size.height = v265;
          v334.origin.x = v151;
          v334.origin.y = v152;
          v334.size.width = v139;
          v334.size.height = v139;
          if (CGRectIntersectsRect(v309, v334))
          {
            sub_1E1AF6B1C();
            v158 = *(v6 + 2);
            v157 = *(v6 + 3);
            if (v158 >= v157 >> 1)
            {
              v165 = v153;
              v166 = v154;
              v167 = v155;
              v168 = v156;
              v169 = sub_1E172D670((v157 > 1), v158 + 1, 1, v6);
              v156 = v168;
              v12 = v257;
              v155 = v167;
              v154 = v166;
              v153 = v165;
              v6 = v169;
            }

            else
            {
              v12 = v141;
            }

            *(v6 + 2) = v158 + 1;
            v159 = &v6[32 * v158];
            *(v159 + 4) = v153;
            *(v159 + 5) = v154;
            *(v159 + 6) = v155;
            *(v159 + 7) = v156;
            v9 = v268;
            v99 = rect;
            v34 = v265;
            v139 = v267;
          }

          else
          {
            v9 = v268;
            v34 = v265;
            v12 = v141;
            v99 = rect;
          }

          v138 = v264 + v138;
          v304.origin.x = v9;
          v304.origin.y = v266;
          v304.size.width = v12;
          v304.size.height = v34;
        }

        while (v138 < CGRectGetMaxY(v304));
      }

      v170 = v258 - v251 * v8;
      v259 = v264 * (v8 - 1) + MaxY - v139;
      v261 = v170;
      sub_1E1AF6B1C();
      v176 = *(v6 + 2);
      v175 = *(v6 + 3);
      v7 = v176 + 1;
      if (v176 >= v175 >> 1)
      {
        v244 = v171;
        v245 = v172;
        v246 = v173;
        v247 = v174;
        v248 = sub_1E172D670((v175 > 1), v176 + 1, 1, v6);
        v174 = v247;
        v12 = v257;
        v173 = v246;
        v172 = v245;
        v177 = v252;
        v171 = v244;
        v9 = v268;
        v99 = rect;
        v6 = v248;
      }

      else
      {
        v177 = v252;
      }

      *(v6 + 2) = v7;
      v178 = &v6[32 * v176];
      *(v178 + 4) = v171;
      *(v178 + 5) = v172;
      *(v178 + 6) = v173;
      *(v178 + 7) = v174;
      v310.origin.y = v259;
      v310.origin.x = v261;
      v310.size.width = v99;
      v310.size.height = v99;
      v11 = CGRectGetMinY(v310) - v177;
      v311.origin.x = v9;
      v311.origin.y = v33;
      v311.size.width = v12;
      v311.size.height = v34;
      v179 = CGRectGetMinY(v311) < v11;
      v180 = v34;
      v15 = v33;
      v13 = v180;
      if (v179)
      {
        do
        {
          v256 = v11;
          v181 = v11 - v267;
          v315.origin.y = v259;
          v315.origin.x = v261;
          v315.size.width = v99;
          v315.size.height = v99;
          v182 = CGRectGetMinX(v315);
          v316.origin.x = v9;
          v316.origin.y = v15;
          v316.size.width = v12;
          v316.size.height = v13;
          v335.origin.x = v182;
          v335.origin.y = v181;
          v335.size.width = v267;
          v335.size.height = v267;
          if (CGRectIntersectsRect(v316, v335))
          {
            sub_1E1AF6B1C();
            v188 = *(v6 + 2);
            v187 = *(v6 + 3);
            v7 = v188 + 1;
            v189 = v182;
            if (v188 >= v187 >> 1)
            {
              v201 = v183;
              v202 = v184;
              v203 = v185;
              v204 = v186;
              v205 = sub_1E172D670((v187 > 1), v188 + 1, 1, v6);
              v186 = v204;
              v185 = v203;
              v99 = rect;
              v184 = v202;
              v183 = v201;
              v6 = v205;
            }

            v190 = v256;
            *(v6 + 2) = v7;
            v191 = &v6[32 * v188];
            *(v191 + 4) = v183;
            *(v191 + 5) = v184;
            *(v191 + 6) = v185;
            *(v191 + 7) = v186;
          }

          else
          {
            v189 = v182;
            v190 = v256;
          }

          v317.origin.y = v259;
          v317.origin.x = v261;
          v317.size.width = v99;
          v317.size.height = v99;
          v192 = CGRectGetMaxX(v317) - v267;
          v318.origin.x = v189;
          v318.origin.y = v181;
          v318.size.width = v267;
          v318.size.height = v267;
          v193 = CGRectGetMinY(v318);
          v319.origin.x = v268;
          v13 = v265;
          v15 = v266;
          v319.origin.y = v266;
          v12 = v257;
          v319.size.width = v257;
          v319.size.height = v265;
          v336.origin.x = v192;
          v336.origin.y = v193;
          v336.size.width = v267;
          v336.size.height = v267;
          if (CGRectIntersectsRect(v319, v336))
          {
            sub_1E1AF6B1C();
            v199 = *(v6 + 2);
            v198 = *(v6 + 3);
            v7 = v199 + 1;
            if (v199 >= v198 >> 1)
            {
              v206 = v194;
              v207 = v195;
              v208 = v196;
              v209 = v197;
              v210 = sub_1E172D670((v198 > 1), v199 + 1, 1, v6);
              v197 = v209;
              v13 = v265;
              v196 = v208;
              v195 = v207;
              v12 = v257;
              v194 = v206;
              v6 = v210;
            }

            *(v6 + 2) = v7;
            v200 = &v6[32 * v199];
            *(v200 + 4) = v194;
            *(v200 + 5) = v195;
            *(v200 + 6) = v196;
            *(v200 + 7) = v197;
            v9 = v268;
            v99 = rect;
          }

          else
          {
            v99 = rect;
            v9 = v268;
          }

          v11 = v190 - v264;
          v314.origin.x = v9;
          v314.origin.y = v266;
          v314.size.width = v12;
          v314.size.height = v13;
        }

        while (CGRectGetMinY(v314) < v11);
      }

      v312.origin.y = v259;
      v312.origin.x = v261;
      v312.size.width = v99;
      v312.size.height = v99;
      v10 = v252 + CGRectGetMaxY(v312);
      v313.origin.x = v9;
      v313.origin.y = v15;
      v313.size.width = v12;
      v313.size.height = v13;
      if (v10 < CGRectGetMaxY(v313))
      {
        v13 = v265;
        v11 = v266;
        do
        {
          v321.origin.y = v259;
          v321.origin.x = v261;
          v321.size.width = rect;
          v321.size.height = rect;
          v212 = CGRectGetMinX(v321);
          v322.origin.x = v9;
          v322.origin.y = v11;
          v322.size.width = v12;
          v322.size.height = v13;
          v337.origin.x = v212;
          v337.origin.y = v10;
          v337.size.width = v267;
          v337.size.height = v267;
          if (CGRectIntersectsRect(v322, v337))
          {
            sub_1E1AF6B1C();
            v218 = *(v6 + 2);
            v217 = *(v6 + 3);
            v7 = v218 + 1;
            if (v218 >= v217 >> 1)
            {
              v233 = v213;
              v234 = v214;
              v235 = v215;
              v236 = v216;
              v237 = sub_1E172D670((v217 > 1), v218 + 1, 1, v6);
              v216 = v236;
              v215 = v235;
              v214 = v234;
              v219 = v267;
              v213 = v233;
              v6 = v237;
            }

            else
            {
              v219 = v267;
            }

            *(v6 + 2) = v7;
            v220 = &v6[32 * v218];
            *(v220 + 4) = v213;
            *(v220 + 5) = v214;
            *(v220 + 6) = v215;
            *(v220 + 7) = v216;
          }

          else
          {
            v219 = v267;
          }

          v323.origin.y = v259;
          v323.origin.x = v261;
          v323.size.width = rect;
          v323.size.height = rect;
          v15 = CGRectGetMaxX(v323) - v219;
          v324.origin.x = v212;
          v324.origin.y = v10;
          v324.size.width = v219;
          v324.size.height = v219;
          v221 = CGRectGetMinY(v324);
          v9 = v268;
          v325.origin.x = v268;
          v325.origin.y = v266;
          v325.size.width = v257;
          v325.size.height = v265;
          v338.origin.x = v15;
          v338.origin.y = v221;
          v338.size.width = v219;
          v338.size.height = v219;
          if (CGRectIntersectsRect(v325, v338))
          {
            sub_1E1AF6B1C();
            v227 = *(v6 + 2);
            v226 = *(v6 + 3);
            v7 = v227 + 1;
            if (v227 >= v226 >> 1)
            {
              v228 = v222;
              v229 = v223;
              v230 = v224;
              v231 = v225;
              v232 = sub_1E172D670((v226 > 1), v227 + 1, 1, v6);
              v225 = v231;
              v224 = v230;
              v223 = v229;
              v222 = v228;
              v6 = v232;
            }

            *(v6 + 2) = v7;
            v211 = &v6[32 * v227];
            *(v211 + 4) = v222;
            *(v211 + 5) = v223;
            *(v211 + 6) = v224;
            *(v211 + 7) = v225;
            v9 = v268;
          }

          v13 = v265;
          v10 = v264 + v10;
          v320.origin.x = v9;
          v11 = v266;
          v320.origin.y = v266;
          v12 = v257;
          v320.size.width = v257;
          v320.size.height = v265;
        }

        while (v10 < CGRectGetMaxY(v320));
      }

      v238 = __OFADD__(v8++, 1);
      v14 = v263;
      if (v238)
      {
        break;
      }

      v34 = v265;
      v98 = v250 - v264;
      v97 = v251 + v263;
      v326.origin.x = v9;
      v33 = v266;
      v326.origin.y = v266;
      v326.size.width = v12;
      v326.size.height = v265;
      v271.x = v251 + v263;
      v271.y = v250 - v264;
      if (!CGRectContainsPoint(v326, v271))
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    v6 = sub_1E172D670((v17 > 1), v7, 1, v6);
  }

LABEL_107:
  *a2 = v6;
  *(a2 + 8) = v252;
  *(a2 + 16) = v267;
  result = rect;
  *(a2 + 24) = v267;
  *(a2 + 32) = rect;
  *(a2 + 40) = rect;
  return result;
}

uint64_t static UpsellGridLayout.iconSizes(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v14 = *a1;
  v15 = v3;
  v16 = v4;
  sub_1E1A28E58(&v14, v17, a2, a3, 0.0, 0.0);
  v5 = v17[0];
  v6 = *(v17[0] + 16);
  if (v6)
  {
    v17[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C440(0, v6, 0);
    v7 = v17[0];
    v8 = *(v17[0] + 16);
    v9 = 48;
    do
    {
      v10 = *(v5 + v9);
      v17[0] = v7;
      v11 = *(v7 + 24);
      if (v8 >= v11 >> 1)
      {
        v13 = v10;
        sub_1E135C440((v11 > 1), v8 + 1, 1);
        v10 = v13;
        v7 = v17[0];
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 16 * v8 + 32) = v10;
      v9 += 32;
      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t *static UpsellGridLayout.largeIconSize(fitting:using:in:)(uint64_t *result)
{
  if ((*result * 7) >> 64 != (7 * *result) >> 63)
  {
    __break(1u);
  }

  return result;
}

void UpsellGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *&v15 = *v4;
  BYTE8(v15) = v6;
  v16 = v7;
  sub_1E1A28E58(&v15, v17, a3, a4, a1, a2);
  v9 = v17[0];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    v13 = v17[0] + 56;
    while (v11 < *(v8 + 16))
    {
      sub_1E1300B24(v12, &v15);
      v14 = *(v9 + 16);
      if (v11 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_9;
      }

      if (v11 >= v14)
      {
        goto LABEL_11;
      }

      ++v11;
      sub_1E1361B28(&v15, v17);
      __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(v17);
      v12 += 40;
      v13 += 32;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    sub_1E1AF106C();
  }
}

uint64_t getEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

Swift::Void __swiftcall DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 104))();
  if (!v4)
  {
    v4 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
  }

  v5 = v4;
  v36 = v4;
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v6 = off_1EE1F3438;
  *&v31 = 0x746E6F4365676170;
  *(&v31 + 1) = 0xEB00000000747865;
  v7 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  v8 = v6[3];
  if (v8)
  {
    v9 = v6[2];
    v32 = v7;
    *&v31 = v9;
    *(&v31 + 1) = v8;
    sub_1E1301CF0(&v31, &v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v5;
    sub_1E15988B4(&v33, v35, isUniquelyReferenced_nonNull_native);
    sub_1E134B88C(v35);
    v36 = v5;
  }

  else
  {
    sub_1E14966E0(v35, &v31);
    sub_1E13E44F8(&v31);
    sub_1E134B88C(v35);
  }

  v11 = (*(v2 + 24))(v3, v2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v31 = 0x6C7255666572;
    *(&v31 + 1) = 0xE600000000000000;
    sub_1E1AF6F6C();
    v32 = v7;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    sub_1E1301CF0(&v31, &v33);
    v15 = v36;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v15;
    sub_1E15988B4(&v33, v35, v16);
    sub_1E134B88C(v35);
    v36 = v15;
  }

  *&v31 = 0x707041666572;
  *(&v31 + 1) = 0xE600000000000000;
  v17 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  swift_beginAccess();
  v18 = v6[19];
  if (v18 >= 3)
  {
    v19 = v6[18];
    v34 = v17;
    *&v33 = v19;
    *(&v33 + 1) = v18;
    sub_1E1301CF0(&v33, &v31);

    v20 = v36;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(&v31, v35, v21);
    sub_1E134B88C(v35);
    v36 = v20;
  }

  else
  {
    sub_1E14966E0(v35, &v31);
    sub_1E13E44F8(&v31);
    sub_1E134B88C(v35);
  }

  *&v29 = 0x7255666552747865;
  *(&v29 + 1) = 0xE90000000000006CLL;
  v22 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  if ((v6[19] - 1) >= 2 && (v23 = v6[21]) != 0)
  {
    v24 = v6[20];
    v30 = v22;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_1E1301CF0(&v29, v28);

    v25 = v36;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(v28, &v31, v26);
    sub_1E134B88C(&v31);
    v27 = v25;
  }

  else
  {
    sub_1E14966E0(&v31, &v29);
    sub_1E13E44F8(&v29);
    sub_1E134B88C(&v31);
    v27 = v36;
  }

  (*(v2 + 112))(v27, v3, v2);
}

void DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 80))(a3, a4);
  if (v8)
  {
    v10 = v9;
    v15 = v8;
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 16))(a3, a4);
    [v15 bounds];
    (*(v10 + 8))(a1, a2, v12, ObjectType, v10, v13, v14);

    (*(a4 + 144))(a3, a4);
  }
}

uint64_t JSONObject.requiredString(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = sub_1E1AF37CC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    v10 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    (*(*(v10 - 8) + 104))(v13, *MEMORY[0x1E69AB690], v10);
    swift_willThrow();
  }

  return v10;
}

uint64_t DeepLink.referrerKind.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1E1AF58AC();
  if (!v7)
  {
    result = sub_1E13E44F8(v6);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = v8[0];
  sub_1E1AF6F6C();
  if (!*(v8[0] + 16) || (v4 = sub_1E135FCF4(v6), (v5 & 1) == 0))
  {

    result = sub_1E134B88C(v6);
    goto LABEL_9;
  }

  sub_1E137A5C4(*(v3 + 56) + 32 * v4, v8);
  sub_1E134B88C(v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = -1;
  }

  return result;
}

uint64_t DeepLink.referrerKind.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1E1AF58AC();
  v3 = v11;
  sub_1E13E44F8(v10);
  if (v3)
  {
    sub_1E1AF58AC();
    if (!v11)
    {
      sub_1E1A2B02C(v1, v2);
      return sub_1E13E44F8(v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    if (!swift_dynamicCast())
    {
      return sub_1E1A2B02C(v1, v2);
    }

    v4 = v8;
  }

  else
  {
    v4 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
  }

  v12 = v4;
  *&v8 = 0xD00000000000002CLL;
  *(&v8 + 1) = 0x80000001E1B845D0;
  sub_1E1AF6F6C();
  if (v2 == 255)
  {
    sub_1E14966E0(v10, &v8);
    sub_1E13E44F8(&v8);
    sub_1E134B88C(v10);
    v4 = v12;
  }

  else
  {
    v9 = &type metadata for ReferrerData.Kind;
    *&v8 = v1;
    BYTE8(v8) = v2;
    sub_1E1301CF0(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(v7, v10, isUniquelyReferenced_nonNull_native);
    sub_1E134B88C(v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
  v10[0] = v4;
  return sub_1E1AF58BC();
}

uint64_t (*DeepLink.referrerKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  DeepLink.referrerKind.getter(a1);
  return sub_1E1A2AF98;
}

uint64_t sub_1E1A2AF98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_1E1A2B040(v2, v3);
    DeepLink.referrerKind.setter(&v5);

    return sub_1E1A2B02C(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    return DeepLink.referrerKind.setter(&v5);
  }
}

uint64_t sub_1E1A2B02C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E137B778(a1, a2);
  }

  return a1;
}

uint64_t sub_1E1A2B040(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E13E23E4(a1, a2);
  }

  return a1;
}

uint64_t PrivacyFooter.__allocating_init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v17, &unk_1ECEB5670);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t PrivacyFooter.init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v18, &unk_1ECEB5670);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t PrivacyFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v77 = a2;
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v62 = sub_1E1AF5A6C();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E1AF380C();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  type metadata accessor for LinkableText();
  v67 = a1;
  sub_1E1AF381C();
  (*(v9 + 16))(v11, v77, v8);
  sub_1E1A2BD00(&qword_1EE1F5FA0, 255, type metadata accessor for LinkableText);
  sub_1E1AF464C();
  if (v76[0])
  {
    v56 = v76[0];
    v61 = v9;
    v55 = v8;
    v20 = v77;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v21 = *(v12 + 8);
    v22 = v16;
    v23 = v12 + 8;
    v21(v22, v66);
    v24 = v62;
    if ((*(v64 + 48))(v6, 1, v62) == 1)
    {
      sub_1E1308058(v6, &qword_1ECEB1F90);
      v54 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = v64;
      v29 = v57;
      (*(v64 + 32))(v57, v6, v24);
      v30 = type metadata accessor for Action();
      MEMORY[0x1EEE9AC00](v30);
      *(&v54 - 2) = v31;
      *(&v54 - 1) = v20;
      v54 = sub_1E1AF59FC();
      (*(v28 + 8))(v29, v24);
    }

    v32 = v67;
    sub_1E1AF381C();
    sub_1E1AF36EC();
    v33 = v19;
    v34 = v66;
    v35 = v23;
    v21(v33, v66);
    v36 = v63;
    sub_1E1AF381C();
    v37 = sub_1E1AF37CC();
    if (v38)
    {
      *&v70 = v37;
      *(&v70 + 1) = v38;
    }

    else
    {
      v39 = v58;
      sub_1E1AEFE9C();
      v40 = sub_1E1AEFE7C();
      v42 = v41;
      (*(v59 + 8))(v39, v60);
      *&v70 = v40;
      *(&v70 + 1) = v42;
    }

    sub_1E1AF6F6C();
    v21(v36, v34);
    v25 = swift_allocObject();
    sub_1E138853C(v76, &v70);
    v43 = v55;
    v44 = v61;
    if (*(&v71 + 1))
    {
      v21(v32, v34);
      sub_1E1308058(v76, &unk_1ECEB5670);
      v73 = v70;
      v74 = v71;
      v75 = v72;
    }

    else
    {
      v45 = v58;
      sub_1E1AEFE9C();
      v46 = sub_1E1AEFE7C();
      v65 = v35;
      v47 = v34;
      v48 = v32;
      v50 = v49;
      (*(v59 + 8))(v45, v60);
      v68 = v46;
      v69 = v50;
      sub_1E1AF6F6C();
      v21(v48, v47);
      sub_1E1308058(v76, &unk_1ECEB5670);
      v44 = v61;
      sub_1E1308058(&v70, &unk_1ECEB5670);
    }

    v51 = v74;
    *(v25 + 32) = v73;
    *(v25 + 48) = v51;
    *(v25 + 64) = v75;
    v52 = v54;
    *(v25 + 16) = v56;
    *(v25 + 24) = v52;
    (*(v44 + 8))(v77, v43);
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1A2BD00(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v26 = 0x7478655479646F62;
    v27 = v65;
    v26[1] = 0xE800000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v12 + 8))(v67, v66);
    (*(v9 + 8))(v77, v8);
  }

  return v25;
}

uint64_t PrivacyFooter.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t PrivacyFooter.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A2BD00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E1A2BD6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyFooter.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ReusableCellRegistration.init(reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ReusableCellRegistration.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReusableCellRegistration.configurationHandler.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E1A2BE58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PageTabChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v26 = *v3;
  v30 = sub_1E1AF39DC();
  v34 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v32 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v33 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v29 + OBJC_IVAR____TtC11AppStoreKit19PageTabChangeAction_selectedTabId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v32;
    (*(v7 + 16))(v9, v32, v33);
    v6 = v27;
    v20 = v30;
    v19 = v31;
    (*(v34 + 16))(v27, v31, v30);
    v21 = v28;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v34 + 8))(v19, v20);
    v16(v18, v33);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v24, "selectedTabId");
    *(v24 + 7) = -4864;
    *(v24 + 2) = v26;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v34 + 8))(v31, v30);
    v16(v32, v33);
    type metadata accessor for PageTabChangeAction();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t type metadata accessor for PageTabChangeAction()
{
  result = qword_1EE1DCAC0;
  if (!qword_1EE1DCAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageTabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t PageTabChangeAction.selectedTabId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19PageTabChangeAction_selectedTabId);

  return v1;
}

uint64_t PageTabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t SearchHintLayout.Metrics.leadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t SearchHintLayout.Metrics.trailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t SearchHintLayout.Metrics.textLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t SearchHintLayout.Metrics.iconHorizontalCenterMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);
  result = sub_1E1308EC0(a4, a5 + 120);
  *(a5 + 160) = a6;
  *(a5 + 168) = a7;
  return result;
}

uint64_t SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[9];
  a5[8] = a1[8];
  a5[9] = v8;
  a5[10] = a1[10];
  v9 = a1[5];
  a5[4] = a1[4];
  a5[5] = v9;
  v10 = a1[7];
  a5[6] = a1[6];
  a5[7] = v10;
  v11 = a1[1];
  *a5 = *a1;
  a5[1] = v11;
  v12 = a1[3];
  a5[2] = a1[2];
  a5[3] = v12;
  sub_1E1308EC0(a2, (a5 + 11));
  sub_1E1308EC0(a3, a5 + 216);

  return sub_1E1308EC0(a4, (a5 + 16));
}

void SearchHintLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_1E1AF745C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v6 = *(v3 + 8);
  v6(v5, v2);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v6(v5, v2);
  sub_1E1AF6B5C();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 10, v1[13]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v6(v5, v2);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 27, v1[30]);
  sub_1E1AF6B5C();
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 32, v1[35]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v0 + 32, v0[35]);
    sub_1E1AF11CC();
  }

  __swift_project_boxed_opaque_existential_1Tm(v0 + 27, v0[30]);
  v7 = sub_1E1AF148C();
  if (v7)
  {
    v8 = v7;
    [v7 _bodyLeading];
  }

  else
  {
    __break(1u);
  }
}

uint64_t SearchHintLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v40.origin.y = a3;
  v40.origin.x = a2;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v34[1] = v14;
  v15 = *(v11 + 8);
  v15(v13, v10);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v6[8]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v38 = v16;
  v15(v13, v10);
  v40.size.width = a4;
  v40.size.height = a5;
  sub_1E1AF6B0C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v26 = v25;
  v15(v13, v10);
  v44.origin.x = v18;
  v44.origin.y = v20;
  v44.size.width = v22;
  v44.size.height = v24;
  v37 = CGRectGetWidth(v44) - v26;
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetHeight(v45);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 32, v6[35]);
  sub_1E1AF11CC();
  v39 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 27, v6[30]);
  sub_1E1AF11CC();
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetMinX(v46);
  v47.origin.x = v18;
  v47.origin.y = v20;
  v47.size.width = v22;
  v47.size.height = v24;
  CGRectGetHeight(v47);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 27, v6[30]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v28 = [a1 traitCollection];
  [v28 horizontalSizeClass];

  v38 = v18;
  v48.origin.x = v18;
  v37 = v20;
  v48.origin.y = v20;
  v36 = v22;
  v48.size.width = v22;
  v35 = v24;
  v48.size.height = v24;
  CGRectGetMinX(v48);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  CGRectGetMaxY(v40);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  CGRectGetWidth(v49);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 32, v6[35]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E14F59A8((v6 + 22), &v41);
  if (v42)
  {
    sub_1E1308EC0(&v41, v43);
    v50.origin.x = v38;
    v50.origin.y = v37;
    v50.size.width = v36;
    v50.size.height = v35;
    CGRectGetMinX(v50);
    __swift_project_boxed_opaque_existential_1Tm(v6 + 15, v6[18]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v13, v10);
    CGRectGetHeight(v40);
    __swift_project_boxed_opaque_existential_1Tm(v43, v43[3]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1E14F60F8(&v41);
  }

  return sub_1E1AF106C();
}

uint64_t sub_1E1A2D32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_1E1A2D374(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1A2D410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1E1A2D458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArcadeShowcase.__allocating_init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a2;
  v37 = a3;
  v35 = a10;
  v38 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_1E134FD1C(a1, &v41, &unk_1ECEB5670);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 80) = v41;
    *(v20 + 96) = v21;
    *(v20 + 112) = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v33 = a4;
    v34 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v17 + 8))(v19, v16);
    v39 = v25;
    v40 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v33;
    a5 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v35, v20 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
  v29 = v37;
  *(v20 + 16) = v36;
  *(v20 + 24) = v29;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v30 = v38;
  *(v20 + 64) = a8;
  *(v20 + 72) = v30;
  return v20;
}

uint64_t ArcadeShowcase.init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a2;
  v38 = a3;
  v36 = a10;
  v39 = a9;
  v18 = sub_1E1AEFEAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v42, &unk_1ECEB5670);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v34 = a4;
    v35 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v19 + 8))(v21, v18);
    v40 = v25;
    v41 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v34;
    a5 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v29 = v46;
  *(v11 + 80) = v45;
  *(v11 + 96) = v29;
  *(v11 + 112) = v47;
  sub_1E134B7C8(v36, v11 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
  v30 = v38;
  *(v11 + 16) = v37;
  *(v11 + 24) = v30;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  v31 = v39;
  *(v11 + 64) = a8;
  *(v11 + 72) = v31;
  return v11;
}

uint64_t sub_1E1A2D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  sub_1E1A2EB54(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork);
  return sub_1E1AF464C();
}

uint64_t ArcadeShowcase.unsubscribedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArcadeShowcase.subscribedDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *sub_1E1A2DB90()
{
  result = *(v0 + 64);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

uint64_t ArcadeShowcase.deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t ArcadeShowcase.__deallocating_deinit()
{
  ArcadeShowcase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A2DC88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E1A2DD14(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1E1A2DCB4()
{
  result = *(*v0 + 64);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

uint64_t sub_1E1A2DD14(char *a1, uint64_t a2)
{
  v109 = a2;
  v90 = sub_1E1AEFEAC();
  v98 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = v88 - v5;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v116 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v88 - v10;
  v12 = sub_1E1AF380C();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v97 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = v88 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v100 = v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v101 = v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v99 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v88 - v30;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v106 = v7;
  v32 = v7 + 16;
  v33 = *(v7 + 16);
  v34 = v11;
  v35 = v11;
  v36 = v109;
  v33(v35, v109, v6);
  v107 = v31;
  v92 = v26;
  v94 = v34;
  sub_1E1AF464C();
  v37 = v116;
  v108 = v6;
  v33(v116, v36, v6);
  type metadata accessor for Action();
  v38 = v101;
  v104 = a1;
  sub_1E1AF381C();
  v39 = v38;
  v40 = v105;
  v41 = static Action.makeInstance(byDeserializing:using:)(v38, v37);
  if (v40)
  {
    v42 = *(v106 + 8);
    v43 = v108;
    v42(v109, v108);
    v44 = v103;
    v45 = *(v102 + 8);
    v45(v104, v103);
    v45(v39, v44);
    v46 = v116;
    sub_1E1308058(v107, &unk_1ECEB1770);
    v42(v46, v43);
  }

  else
  {
    v88[0] = v33;
    v88[1] = v32;
    v105 = v41;
    v47 = *(v102 + 8);
    v48 = v103;
    v47(v38, v103);
    v49 = v100;
    v50 = v104;
    sub_1E1AF381C();
    v51 = v116;
    v101 = static Action.makeInstance(byDeserializing:using:)(v49, v116);
    v102 = 0;
    v47(v100, v48);
    v53 = v91;
    sub_1E1AF381C();
    v54 = v93;
    sub_1E1AF374C();
    v47(v53, v48);
    v55 = sub_1E1AF5A6C();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v54, 1, v55);
    if (v57 == 1)
    {
      sub_1E1308058(v54, &qword_1ECEB1F90);
      v100 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v57);
      v88[-2] = v116;
      type metadata accessor for ImpressionableArtwork();
      v58 = v102;
      v100 = sub_1E1AF59FC();
      v102 = v58;
      v51 = v116;
      (*(v56 + 8))(v54, v55);
    }

    v59 = v98;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    (v88[0])(v94, v51, v108);
    sub_1E1A2EB54(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
    sub_1E1AF464C();
    v104 = v115[0];
    v60 = v95;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    if (v62)
    {
      *&v112 = v61;
      *(&v112 + 1) = v62;
      sub_1E1AF6F6C();
      v47(v60, v48);
      v63 = v47;
    }

    else
    {
      v63 = v47;
      v64 = v89;
      sub_1E1AEFE9C();
      v65 = sub_1E1AEFE7C();
      v67 = v66;
      (*(v59 + 8))(v64, v90);
      *&v112 = v65;
      *(&v112 + 1) = v67;
      sub_1E1AF6F6C();
      v63(v60, v48);
    }

    v68 = v97;
    v69 = v96;
    sub_1E1AF381C();
    v103 = sub_1E1AF37CC();
    v97 = v70;
    v63(v69, v48);
    v71 = v50;
    sub_1E1AF381C();
    v96 = sub_1E1AF37CC();
    v95 = v72;
    v73 = v48;
    v63(v68, v48);
    sub_1E134FD1C(v107, v99, &unk_1ECEB1770);
    type metadata accessor for ArcadeShowcase();
    v39 = swift_allocObject();
    sub_1E134FD1C(v115, &v112, &unk_1ECEB5670);
    v74 = v109;
    v75 = v106;
    if (*(&v113 + 1))
    {
      v76 = v113;
      *(v39 + 80) = v112;
      *(v39 + 96) = v76;
      *(v39 + 112) = v114;
    }

    else
    {
      v77 = v89;
      sub_1E1AEFE9C();
      v78 = sub_1E1AEFE7C();
      v80 = v79;
      (*(v98 + 8))(v77, v90);
      v110 = v78;
      v111 = v80;
      v75 = v106;
      v74 = v109;
      sub_1E1AF6F6C();
      sub_1E1308058(&v112, &unk_1ECEB5670);
    }

    v81 = *(v75 + 8);
    v82 = v74;
    v83 = v108;
    v81(v82, v108);
    v63(v71, v73);
    sub_1E1308058(v115, &unk_1ECEB5670);
    sub_1E1308058(v107, &unk_1ECEB1770);
    sub_1E134B7C8(v99, v39 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
    v84 = v103;
    *(v39 + 16) = v105;
    *(v39 + 24) = v84;
    v85 = v101;
    *(v39 + 32) = v97;
    *(v39 + 40) = v85;
    v86 = v95;
    *(v39 + 48) = v96;
    *(v39 + 56) = v86;
    v87 = v104;
    *(v39 + 64) = v100;
    *(v39 + 72) = v87;
    v81(v116, v83);
  }

  return v39;
}

uint64_t type metadata accessor for ArcadeShowcase()
{
  result = qword_1EE1F4268;
  if (!qword_1EE1F4268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A2E994(uint64_t a1)
{
  result = sub_1E1A2EB54(qword_1EE1F4288, type metadata accessor for ArcadeShowcase);
  *(a1 + 8) = result;
  return result;
}

void sub_1E1A2E9F4()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1A2EB54(unint64_t *a1, void (*a2)(uint64_t))
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

char *LockupCollectionSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v95 = sub_1E1AEFEAC();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v100 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v104 = &v85 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v85 - v14;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v96 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v85 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v102 = &v85 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v85 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - v27;
  v110 = a1;
  sub_1E1AF381C();
  v97 = sub_1E1AF37CC();
  v30 = v29;
  v33 = *(v16 + 8);
  v31 = v16 + 8;
  v32 = v33;
  v33(v28, v15);
  if (!v30)
  {
    v51 = sub_1E1AF5A7C();
    sub_1E1A2FEF0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v52 = 0x676E6964616568;
    v53 = v108;
    v52[1] = 0xE700000000000000;
    v52[2] = v53;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x1E69AB690], v51);
    swift_willThrow();
    (*(v5 + 8))(v109, v4);
LABEL_7:
    v32(v110, v15);
    return v21;
  }

  v34 = v108;
  v98 = v30;
  v106 = v5;
  v105 = v4;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v32(v26, v15);
  if (!v37)
  {

    v54 = sub_1E1AF5A7C();
    sub_1E1A2FEF0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v55 = 0x656C746974;
    v55[1] = 0xE500000000000000;
    v55[2] = v34;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v106 + 8))(v109, v105);
    goto LABEL_7;
  }

  v87 = v35;
  v90 = v37;
  v91 = v32;
  v92 = v31;
  v108 = v15;
  sub_1E1AF46DC();
  v38 = v102;
  v88 = v21;
  sub_1E1AF381C();
  v40 = (v106 + 16);
  v39 = *(v106 + 16);
  v41 = v103;
  v42 = v109;
  v43 = v105;
  v39(v103, v109, v105);
  sub_1E1AF464C();
  v44 = v104;
  v45 = v42;
  v46 = v38;
  v39(v104, v45, v43);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v39(v41, v44, v43);
  sub_1E1A2FEF0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v89 = v118[0];
  v47 = v44;
  sub_1E1AF381C();
  v39(v100, v44, v43);
  type metadata accessor for Lockup();
  sub_1E1A2FEF0(&qword_1EE1E4F60, type metadata accessor for Lockup);
  v48 = v101;
  v49 = sub_1E1AF62EC();
  if (v48)
  {

    v21 = (v106 + 8);
    v50 = *(v106 + 8);
    v50(v109, v43);
    v91(v110, v108);
    v50(v47, v43);
    sub_1E1308058(v107, &unk_1ECEB1770);
  }

  else
  {
    v86 = v49;
    v88 = v39;
    v100 = v40;
    v101 = 0;
    type metadata accessor for Action();
    v57 = v110;
    sub_1E1AF381C();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v47);
    v58 = v108;
    v59 = v91;
    v91(v46, v108);
    v60 = v96;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    if (v62)
    {
      v116 = v61;
      v117 = v62;
    }

    else
    {
      v63 = v93;
      sub_1E1AEFE9C();
      v64 = sub_1E1AEFE7C();
      v66 = v65;
      (*(v94 + 8))(v63, v95);
      v116 = v64;
      v117 = v66;
    }

    sub_1E1AF6F6C();
    v59(v60, v58);
    v67 = v106;
    v68 = v109;
    v69 = v103;
    v70 = v99;
    sub_1E134FD1C(v107, v99, &unk_1ECEB1770);
    type metadata accessor for SearchAdOpportunity();
    v71 = v57;
    sub_1E1AF381C();
    v88(v69, v68, v105);
    sub_1E1A2FEF0(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
    sub_1E1AF464C();
    v106 = v118[7];
    type metadata accessor for LockupCollectionSearchResult();
    v21 = swift_allocObject();
    v72 = &v21[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading];
    v73 = v98;
    *v72 = v97;
    v72[1] = v73;
    *&v21[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork] = v89;
    v74 = &v21[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title];
    v75 = v90;
    *v74 = v87;
    *(v74 + 1) = v75;
    *&v21[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items] = v86;
    *&v21[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction] = v85;
    sub_1E134FD1C(v118, &v116, &unk_1ECEB5670);
    *(v21 + 4) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 12) = 0;
    sub_1E134FD1C(v70, &v21[OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics], &unk_1ECEB1770);
    *&v21[OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity] = 0;
    sub_1E134FD1C(&v116, &v113, &unk_1ECEB5670);
    v76 = v104;
    if (*(&v114 + 1))
    {
      v77 = v114;
      *(v21 + 24) = v113;
      *(v21 + 40) = v77;
      *(v21 + 7) = v115;
    }

    else
    {
      v78 = v93;
      sub_1E1AEFE9C();
      v79 = sub_1E1AEFE7C();
      v81 = v80;
      (*(v94 + 8))(v78, v95);
      v111 = v79;
      v112 = v81;
      sub_1E1AF6F6C();
      sub_1E1308058(&v113, &unk_1ECEB5670);
    }

    v82 = *(v67 + 8);
    v83 = v105;
    v82(v68, v105);
    v91(v71, v108);
    sub_1E1308058(&v116, &unk_1ECEB5670);
    sub_1E1308058(v99, &unk_1ECEB1770);
    sub_1E1308058(v118, &unk_1ECEB5670);
    v82(v76, v83);
    sub_1E1308058(v107, &unk_1ECEB1770);
    *(v21 + 8) = 1281;
    v84 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *&v21[v84] = v106;
  }

  return v21;
}

uint64_t LockupCollectionSearchResult.__allocating_init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v32 = a10;
  v17 = sub_1E1AEFEAC();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v21 = a2;
  v21[1] = a3;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v22 = (v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v22 = a5;
  v22[1] = a6;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = a7;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v31;
  sub_1E134FD1C(a1, v38, &unk_1ECEB5670);
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0;
  sub_1E134FD1C(a9, v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v38, &v35, &unk_1ECEB5670);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *(v20 + 24) = v35;
    *(v20 + 40) = v23;
    *(v20 + 56) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v33 = v24;
    v34 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  sub_1E1308058(a9, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v38, &unk_1ECEB5670);
  *(v20 + 16) = 1281;
  v27 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v27) = v32;
  return v20;
}

uint64_t LockupCollectionSearchResult.init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v33 = sub_1E1AEFEAC();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v32 - v21;
  v23 = (v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v23 = a2;
  v23[1] = a3;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v24 = (v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v24 = a5;
  v24[1] = a6;
  v25 = v35;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = v34;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v25;
  sub_1E134FD1C(a1, v45, &unk_1ECEB5670);
  sub_1E134FD1C(a9, v22, &unk_1ECEB1770);
  *(v11 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v45, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v28 = v27;
    (*(v32 + 8))(v19, v33);
    v37 = v26;
    v38 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a9, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v45, &unk_1ECEB5670);
  v29 = v43;
  *(v11 + 24) = v42;
  *(v11 + 40) = v29;
  *(v11 + 56) = v44;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  sub_1E134B7C8(v22, v11 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v11 + 16) = 1281;
  v30 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v11 + v30) = v36;

  return v11;
}

uint64_t sub_1E1A2FEF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LockupCollectionSearchResult()
{
  result = qword_1EE1D66A8;
  if (!qword_1EE1D66A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LockupCollectionSearchResult.__allocating_init(from:withItems:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_1E1AEFEAC();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  sub_1E134E724(a1 + 24, v36);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading + 8);
  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title + 8);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, v6, &unk_1ECEB1770);
  v13 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v29 = *(a1 + v13);
  type metadata accessor for LockupCollectionSearchResult();
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v15 = v7;
  v15[1] = v8;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = v9;
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v16 = v10;
  v16[1] = v11;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = v28;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v12;
  sub_1E134FD1C(v36, v35, &unk_1ECEB5670);
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0;
  sub_1E134FD1C(v6, v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v35, &v32, &unk_1ECEB5670);
  if (*(&v33 + 1))
  {
    v17 = v33;
    *(v14 + 24) = v32;
    *(v14 + 40) = v17;
    *(v14 + 56) = v34;
    v18 = v29;
  }

  else
  {
    v18 = v29;

    v19 = v25;
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v26 + 8))(v19, v27);
    v30 = v20;
    v31 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  sub_1E1308058(v35, &unk_1ECEB5670);
  sub_1E1308058(v6, &unk_1ECEB1770);
  sub_1E1308058(v36, &unk_1ECEB5670);
  *(v14 + 16) = 1281;
  v23 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v18;
  return v14;
}

uint64_t LockupCollectionSearchResult.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);

  return v1;
}

uint64_t LockupCollectionSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);

  return v1;
}

uint64_t sub_1E1A30430()
{
}

uint64_t LockupCollectionSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t LockupCollectionSearchResult.__deallocating_deinit()
{
  LockupCollectionSearchResult.deinit();

  return swift_deallocClassInstance();
}

AppStoreKit::ArcadeSeeAllGamesPage::DisplayStyle_optional __swiftcall ArcadeSeeAllGamesPage.DisplayStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArcadeSeeAllGamesPage.DisplayStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E1A30708(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E1A30790()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A30808()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A30864()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A308D8@<X0>(char *a1@<X8>)
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

void sub_1E1A30938(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a4;
  v89 = a8;
  LODWORD(v83) = a7;
  v81 = a5;
  v75 = a3;
  v74 = a2;
  v84 = a15;
  v77 = a10;
  v78 = a9;
  v82 = a13;
  v80 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  v33 = swift_allocObject();
  v34 = *(a11 + 16);
  v35 = *(a11 + 24);
  v36 = v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v36 = *a11;
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v80;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v82;
  v82 = a6;
  sub_1E134FD1C(a6, v91, &qword_1ECEB2DF0);
  v76 = v28;
  v37 = *(v28 + 16);
  v80 = a14;
  (v37)(v32, a14, v27);
  v79 = a16;
  sub_1E134FD1C(a16, v26, &qword_1ECEB3B28);
  v38 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v39 = sub_1E175EC2C(a1);
  v41 = v40;

  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v39;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v41;
  v42 = (v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v43 = v75;
  *v42 = v74;
  v42[1] = v43;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v88;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v81;
  sub_1E134FD1C(v91, v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v83;
  swift_beginAccess();
  *(v33 + v38) = v89;
  v45 = v84;
  v44 = v85;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v81 = v32;
  v46 = v44;
  v37();
  v83 = v26;
  v47 = v86;
  sub_1E134FD1C(v26, v86, &qword_1ECEB3B28);
  *(v33 + 16) = 0;
  (v37)(v33 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v46, v27);
  v48 = v47;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v45;
  v49 = v87;
  sub_1E134FD1C(v47, v87, &qword_1ECEB3B28);
  v50 = sub_1E1AF39DC();
  v75 = *(v50 - 8);
  v51 = *(v75 + 48);
  if (v51(v49, 1, v50) == 1)
  {

    sub_1E1308058(v79, &qword_1ECEB3B28);
    v52 = *(v76 + 8);
    v52(v80, v27);
    sub_1E1308058(v82, &qword_1ECEB2DF0);
    sub_1E1308058(v48, &qword_1ECEB3B28);
    v52(v46, v27);
    sub_1E1308058(v83, &qword_1ECEB3B28);
    v52(v81, v27);
    sub_1E1308058(v91, &qword_1ECEB2DF0);
    v53 = v49;
    v54 = &qword_1ECEB3B28;
  }

  else
  {
    v55 = v76;
    v56 = qword_1EE1E3BC8;

    if (v56 != -1)
    {
      swift_once();
    }

    v74 = v27;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v57, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v58 = v90;
    v59 = v55;
    v60 = v75;
    if (v90)
    {
    }

    v61 = *(v60 + 8);
    v61(v87, v50);
    v62 = v83;
    v63 = v73;
    if (v58)
    {
      v64 = v86;
      sub_1E134FD1C(v86, v73, &qword_1ECEB3B28);
      if (v51(v63, 1, v50) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v79, &qword_1ECEB3B28);
        v70 = *(v59 + 8);
        v71 = v62;
        v72 = v74;
        v70(v80, v74);
        sub_1E1308058(v82, &qword_1ECEB2DF0);
        sub_1E1308058(v64, &qword_1ECEB3B28);
        v70(v85, v72);
        sub_1E1308058(v71, &qword_1ECEB3B28);
        v70(v81, v72);
        sub_1E1308058(v91, &qword_1ECEB2DF0);
        v61(v73, v50);
        return v33;
      }

      sub_1E1308058(v79, &qword_1ECEB3B28);
      v65 = *(v59 + 8);
      v66 = v74;
      v65(v80, v74);
      sub_1E1308058(v82, &qword_1ECEB2DF0);
      sub_1E1308058(v64, &qword_1ECEB3B28);
      v65(v85, v66);
      sub_1E1308058(v62, &qword_1ECEB3B28);
      v65(v81, v66);
      sub_1E1308058(v91, &qword_1ECEB2DF0);
      v53 = v73;
      v54 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v79, &qword_1ECEB3B28);
      v67 = *(v59 + 8);
      v68 = v74;
      v67(v80, v74);
      sub_1E1308058(v82, &qword_1ECEB2DF0);
      sub_1E1308058(v86, &qword_1ECEB3B28);
      v67(v85, v68);
      sub_1E1308058(v62, &qword_1ECEB3B28);
      v67(v81, v68);
      v53 = v91;
      v54 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v53, v54);
  return v33;
}

uint64_t ArcadeSeeAllGamesPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v83 = a8;
  LODWORD(v81) = a7;
  v79 = a5;
  v86 = a4;
  v73 = a3;
  v72 = a2;
  v71 = a1;
  v82 = a15;
  v75 = a10;
  v76 = a9;
  v80 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v70 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v69 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v87 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  v33 = *(a11 + 16);
  v34 = *(a11 + 24);
  v35 = v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v35 = *a11;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = a12;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v80;
  v80 = a6;
  sub_1E134FD1C(a6, v89, &qword_1ECEB2DF0);
  v74 = v28;
  v36 = *(v28 + 16);
  v78 = a14;
  v36(v32, a14, v27);
  v77 = a16;
  sub_1E134FD1C(a16, v26, &qword_1ECEB3B28);
  v37 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v38 = sub_1E175EC2C(v71);
  v40 = v39;

  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v38;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v40;
  v41 = (v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v42 = v73;
  *v41 = v72;
  v41[1] = v42;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v86;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v79;
  sub_1E134FD1C(v89, v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v81;
  swift_beginAccess();
  *(v16 + v37) = v83;

  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v43 = v87;
  v79 = v32;
  v36(v87, v32, v27);
  v81 = v26;
  v44 = v84;
  sub_1E134FD1C(v81, v84, &qword_1ECEB3B28);
  *(v16 + 16) = 0;
  v45 = v27;
  v36((v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v43, v27);
  v73 = v16;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v82;
  v46 = v85;
  sub_1E134FD1C(v44, v85, &qword_1ECEB3B28);
  v47 = sub_1E1AF39DC();
  v72 = *(v47 - 8);
  v48 = *(v72 + 48);
  v49 = v46;
  v50 = v47;
  v51 = v49;
  if (v48() == 1)
  {

    sub_1E1308058(v77, &qword_1ECEB3B28);
    v52 = *(v74 + 8);
    v52(v78, v45);
    sub_1E1308058(v80, &qword_1ECEB2DF0);
    sub_1E1308058(v44, &qword_1ECEB3B28);
    v52(v87, v45);
    sub_1E1308058(v81, &qword_1ECEB3B28);
    v52(v79, v45);
    sub_1E1308058(v89, &qword_1ECEB2DF0);
    v53 = v51;
    v54 = &qword_1ECEB3B28;
  }

  else
  {
    v55 = v74;
    v56 = v45;
    v57 = qword_1EE1E3BC8;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v58, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v59 = v88;
    v60 = v55;
    v61 = v72;
    if (v88)
    {
    }

    v62 = *(v61 + 8);
    v62(v85, v50);
    v63 = v84;
    if (v59)
    {
      v64 = v70;
      sub_1E134FD1C(v84, v70, &qword_1ECEB3B28);
      if ((v48)(v64, 1, v50) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v77, &qword_1ECEB3B28);
        v68 = *(v60 + 8);
        v68(v78, v56);
        sub_1E1308058(v80, &qword_1ECEB2DF0);
        sub_1E1308058(v63, &qword_1ECEB3B28);
        v68(v87, v56);
        sub_1E1308058(v81, &qword_1ECEB3B28);
        v68(v79, v56);
        sub_1E1308058(v89, &qword_1ECEB2DF0);
        v62(v70, v50);
        return v73;
      }

      sub_1E1308058(v77, &qword_1ECEB3B28);
      v65 = *(v60 + 8);
      v65(v78, v56);
      sub_1E1308058(v80, &qword_1ECEB2DF0);
      sub_1E1308058(v63, &qword_1ECEB3B28);
      v65(v87, v56);
      sub_1E1308058(v81, &qword_1ECEB3B28);
      v65(v79, v56);
      sub_1E1308058(v89, &qword_1ECEB2DF0);
      v53 = v64;
      v54 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v77, &qword_1ECEB3B28);
      v66 = *(v60 + 8);
      v66(v78, v56);
      sub_1E1308058(v80, &qword_1ECEB2DF0);
      sub_1E1308058(v63, &qword_1ECEB3B28);
      v66(v87, v56);
      sub_1E1308058(v81, &qword_1ECEB3B28);
      v66(v79, v56);
      v53 = v89;
      v54 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v53, v54);
  return v73;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t))
{
  v93 = a8;
  LODWORD(v86) = a7;
  v83 = a5;
  v94 = a4;
  v82 = a3;
  v81 = a2;
  v80 = a1;
  v98 = a13;
  v95 = a12;
  v87 = a10;
  v88 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v25 = sub_1E1AF3C3C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v100 = &v78 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v78 - v32;
  v90 = a6;
  sub_1E134FD1C(a6, v103, &qword_1ECEB2DF0);
  v34 = MEMORY[0x1E69E7CC0];
  v35 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
  v85 = v26;
  v36 = *(v26 + 16);
  v89 = a11;
  v36(v33, a11, v25);
  sub_1E134FD1C(v98, v24, &qword_1ECEB3B28);
  type metadata accessor for ArcadeSeeAllGamesPage();
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 0;
  *(v38 + 24) = 0;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v35;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v34;
  sub_1E134FD1C(v103, v102, &qword_1ECEB2DF0);
  v91 = v33;
  v36(v30, v33, v25);
  v92 = v24;
  v39 = v97;
  sub_1E134FD1C(v24, v97, &qword_1ECEB3B28);
  v40 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v41 = sub_1E175EC2C(v80);
  v43 = v42;

  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v41;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v43;
  v44 = v94;
  v45 = v25;
  v46 = (v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v47 = v82;
  *v46 = v81;
  v46[1] = v47;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v44;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v83;
  sub_1E134FD1C(v102, v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v86;
  swift_beginAccess();
  *(v37 + v40) = v93;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v48 = v99;
  v36(v99, v100, v25);
  v49 = v96;
  sub_1E134FD1C(v39, v96, &qword_1ECEB3B28);
  *(v37 + 16) = 0;
  v86 = v45;
  v36((v37 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v48, v45);
  *(v37 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v95;
  v50 = v84;
  sub_1E134FD1C(v49, v84, &qword_1ECEB3B28);
  v51 = sub_1E1AF39DC();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v51;
  if ((v53)(v50, 1) == 1)
  {

    sub_1E1308058(v98, &qword_1ECEB3B28);
    v55 = *(v85 + 8);
    v56 = v86;
    v55(v89, v86);
    sub_1E1308058(v90, &qword_1ECEB2DF0);
    sub_1E1308058(v49, &qword_1ECEB3B28);
    v55(v99, v56);
    sub_1E1308058(v39, &qword_1ECEB3B28);
    v55(v100, v56);
    sub_1E1308058(v102, &qword_1ECEB2DF0);
    sub_1E1308058(v92, &qword_1ECEB3B28);
    v55(v91, v56);
    sub_1E1308058(v103, &qword_1ECEB2DF0);
    v57 = v50;
    v58 = &qword_1ECEB3B28;
  }

  else
  {
    v83 = v52;
    v59 = v50;
    v60 = v85;
    v61 = qword_1EE1E3BC8;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v62, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v63 = v101;
    v64 = v60;
    v65 = v54;
    if (v101)
    {
    }

    v66 = *(v83 + 8);
    v83 += 8;
    v66(v59, v65);
    v67 = v96;
    if (v63)
    {
      v68 = v79;
      sub_1E134FD1C(v96, v79, &qword_1ECEB3B28);
      if (v53(v68, 1, v65) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v98, &qword_1ECEB3B28);
        v98 = v66;
        v74 = v64;
        v75 = v67;
        v76 = v86;
        v77 = *(v74 + 8);
        v77(v89, v86);
        sub_1E1308058(v90, &qword_1ECEB2DF0);
        sub_1E1308058(v75, &qword_1ECEB3B28);
        v77(v99, v76);
        sub_1E1308058(v97, &qword_1ECEB3B28);
        v77(v100, v76);
        sub_1E1308058(v102, &qword_1ECEB2DF0);
        sub_1E1308058(v92, &qword_1ECEB3B28);
        v77(v91, v76);
        sub_1E1308058(v103, &qword_1ECEB2DF0);
        v98(v79, v65);
        return v37;
      }

      sub_1E1308058(v98, &qword_1ECEB3B28);
      v69 = *(v64 + 8);
      v70 = v86;
      v69(v89, v86);
      sub_1E1308058(v90, &qword_1ECEB2DF0);
      sub_1E1308058(v67, &qword_1ECEB3B28);
      v69(v99, v70);
      sub_1E1308058(v97, &qword_1ECEB3B28);
      v69(v100, v70);
      sub_1E1308058(v102, &qword_1ECEB2DF0);
      sub_1E1308058(v92, &qword_1ECEB3B28);
      v69(v91, v70);
      sub_1E1308058(v103, &qword_1ECEB2DF0);
      v57 = v68;
      v58 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v98, &qword_1ECEB3B28);
      v71 = *(v64 + 8);
      v72 = v86;
      v71(v89, v86);
      sub_1E1308058(v90, &qword_1ECEB2DF0);
      sub_1E1308058(v67, &qword_1ECEB3B28);
      v71(v99, v72);
      sub_1E1308058(v97, &qword_1ECEB3B28);
      v71(v100, v72);
      sub_1E1308058(v102, &qword_1ECEB2DF0);
      sub_1E1308058(v92, &qword_1ECEB3B28);
      v71(v91, v72);
      v57 = v103;
      v58 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v57, v58);
  return v37;
}

uint64_t ArcadeSeeAllGamesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = v50 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v50 - v13;
  v62 = sub_1E1AF380C();
  v15 = *(v62 - 8);
  v16 = MEMORY[0x1EEE9AC00](v62);
  v52 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v50[1] = v50 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v50 - v20;
  sub_1E1AF381C();
  v59 = v8;
  v22 = *(v8 + 16);
  v56 = v7;
  v60 = v22;
  v61 = v8 + 16;
  v22(v14, a2, v7);
  sub_1E14E6264();
  sub_1E1AF464C();
  v23 = v64;
  v24 = v65;
  v25 = v66;
  v26 = v66 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v26 = v63;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = a1;
  sub_1E1AF381C();
  v28 = v15;
  v29 = *(v15 + 56);
  v30 = v62;
  v29(v6, 0, 1, v62);
  v31 = *(v26 + 8);
  v32 = *(v26 + 16);
  v33 = *(v26 + 24);
  *&v63 = *v26;
  *(&v63 + 1) = v31;
  v64 = v32;
  v65 = v33;
  sub_1E13C0418(v63);
  v58 = a2;
  v34 = _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v6, &v63, a2);
  sub_1E13C045C(v63);
  sub_1E1308058(v6, &qword_1ECEB4D20);
  *(v25 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v34;
  v35 = v27;
  sub_1E1AF381C();
  LOBYTE(v6) = sub_1E1AF37AC();
  v53 = v28;
  v55 = *(v28 + 8);
  v55(v21, v30);
  if (v6)
  {
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v27;
  }

  else
  {
    v40 = v27;
    sub_1E1AF381C();
    v41 = v58;
    v36 = v56;
    v60(v51, v58, v56);
    sub_1E1A33E20();
    v42 = v57;
    v39 = sub_1E1AF62EC();
    v37 = v42;
    if (v42)
    {
      (*(v59 + 8))(v41, v36);
      v55(v35, v62);
      sub_1E13C045C(*v26);

      type metadata accessor for ArcadeSeeAllGamesPage();
      return swift_deallocPartialClassInstance();
    }

    v38 = v41;
  }

  *(v66 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v39;
  v44 = v52;
  v45 = v62;
  (*(v53 + 16))(v52, v40, v62);
  v46 = v54;
  v60(v54, v38, v36);
  v47 = GenericPage.init(deserializing:using:)(v44, v46);
  if (v37)
  {
    (*(v59 + 8))(v38, v36);
    return (v55)(v40, v45);
  }

  else
  {
    v48 = v40;
    v49 = v47;
    (*(v59 + 8))(v38, v36);
    v55(v48, v45);
    return v49;
  }
}

uint64_t ArcadeSeeAllGamesPage.facets.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_1E13C0418(v3);
}

uint64_t sub_1E1A32EDC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v18 = sub_1E1AF3C3C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v101 = v25;
    v102 = v17;
    v103 = v19;

    v28 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v110 = v28;
    sub_1E1728208(v29);
    v91 = v110;
    v30 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
    v88 = v30;
    if (v30)
    {
      v92 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v90 = v30;
    }

    else
    {
      v31 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
      v92 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v90 = v31;
    }

    v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction);
    v89 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
    sub_1E134FD1C(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v110, &qword_1ECEB2DF0);
    v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) == 1;
    v34 = v103;
    v79 = v7;
    v93 = a1;
    v99 = v32;
    v35 = v18;
    if (v33)
    {
      v87 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v87 = 0;
    }

    v98 = v14;
    v36 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    swift_beginAccess();
    v37 = *(v2 + v36);
    v85 = v37;
    if (!v37)
    {
      swift_beginAccess();
    }

    v100 = v37;
    v80 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
    v38 = v80;
    v39 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v82 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v81 = v39;
    v97 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    v96 = *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments);
    v40 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    v41 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    swift_beginAccess();
    v42 = *(v34 + 16);
    v43 = v2 + v40;
    v44 = v101;
    v42(v101, v43, v18);
    v84 = v34 + 16;
    v83 = v42;
    v86 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v94 = sub_1E1AF39DC();
    v106 = *(v94 - 8);
    v45 = v102;
    (*(v106 + 56))(v102, 1, 1, v94);
    type metadata accessor for ArcadeSeeAllGamesPage();
    v2 = swift_allocObject();
    v46 = v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
    *v46 = v38;
    v47 = v81;
    *(v46 + 8) = v82;
    *(v46 + 16) = v47;
    *(v46 + 24) = v41;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v97;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v96;
    sub_1E134FD1C(&v110, v109, &qword_1ECEB2DF0);
    v48 = v107;
    v42(v107, v44, v35);
    v49 = v98;
    sub_1E134FD1C(v45, v98, &qword_1ECEB3B28);
    v50 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

    sub_1E13C0418(v80);

    v51 = sub_1E175EC2C(v91);
    v53 = v52;

    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v51;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v53;
    v54 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v55 = v90;
    *v54 = v92;
    v54[1] = v55;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v99;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v89;
    sub_1E134FD1C(v109, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v87;
    swift_beginAccess();
    *(v2 + v50) = v100;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v56 = v105;
    v57 = v83;
    v83(v105, v48, v35);
    v58 = v95;
    sub_1E134FD1C(v49, v95, &qword_1ECEB3B28);
    *(v2 + 16) = 0;
    v97 = v35;
    v57(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v56, v35);
    v59 = v58;
    v60 = v94;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v86;
    v61 = v104;
    sub_1E134FD1C(v59, v104, &qword_1ECEB3B28);
    v62 = *(v106 + 48);
    if (v62(v61, 1, v60) == 1)
    {

      sub_1E1308058(v59, &qword_1ECEB3B28);
      v63 = v61;
      v64 = *(v103 + 8);
      v65 = v97;
      v64(v56, v97);
      sub_1E1308058(v98, &qword_1ECEB3B28);
      v64(v107, v65);
      sub_1E1308058(v109, &qword_1ECEB2DF0);
      sub_1E1308058(v102, &qword_1ECEB3B28);
      v64(v101, v65);
    }

    else
    {
      v96 = v62;
      v66 = v97;
      v67 = v60;
      v68 = qword_1EE1E3BC8;

      if (v68 != -1)
      {
        swift_once();
      }

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v69, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      sub_1E1AF39EC();
      v70 = v108;
      v63 = v79;
      if (v108)
      {
      }

      v71 = *(v106 + 8);
      v106 += 8;
      v71(v104, v67);
      if (!v70)
      {

        sub_1E1308058(v59, &qword_1ECEB3B28);
        v75 = *(v103 + 8);
        v75(v105, v66);
        sub_1E1308058(v98, &qword_1ECEB3B28);
        v75(v107, v66);
        sub_1E1308058(v109, &qword_1ECEB2DF0);
        sub_1E1308058(v102, &qword_1ECEB3B28);
        v75(v101, v66);
        sub_1E1308058(&v110, &qword_1ECEB2DF0);
        return v2;
      }

      sub_1E134FD1C(v59, v63, &qword_1ECEB3B28);
      v72 = v96(v63, 1, v67);
      v73 = v107;
      if (v72 != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v59, &qword_1ECEB3B28);
        v76 = *(v103 + 8);
        v76(v105, v66);
        sub_1E1308058(v98, &qword_1ECEB3B28);
        v76(v73, v66);
        sub_1E1308058(v109, &qword_1ECEB2DF0);
        sub_1E1308058(v102, &qword_1ECEB3B28);
        v76(v101, v66);
        sub_1E1308058(&v110, &qword_1ECEB2DF0);
        v71(v63, v94);
        return v2;
      }

      sub_1E1308058(v59, &qword_1ECEB3B28);
      v74 = *(v103 + 8);
      v74(v105, v66);
      sub_1E1308058(v98, &qword_1ECEB3B28);
      v74(v73, v66);
      sub_1E1308058(v109, &qword_1ECEB2DF0);
      sub_1E1308058(v102, &qword_1ECEB3B28);
      v74(v101, v66);
    }

    sub_1E1308058(&v110, &qword_1ECEB2DF0);
    sub_1E1308058(v63, &qword_1ECEB3B28);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1E1A33C44()
{
  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets));
}

uint64_t ArcadeSeeAllGamesPage.deinit()
{
  v0 = GenericPage.deinit();
  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets));

  return v0;
}

uint64_t ArcadeSeeAllGamesPage.__deallocating_deinit()
{
  v0 = *(GenericPage.deinit() + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);

  sub_1E13C045C(v0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPage()
{
  result = qword_1EE1DB080;
  if (!qword_1EE1DB080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1A33E20()
{
  result = qword_1ECEBCE20;
  if (!qword_1ECEBCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE20);
  }

  return result;
}

unint64_t sub_1E1A33E78()
{
  result = qword_1ECEBCE28;
  if (!qword_1ECEBCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE28);
  }

  return result;
}

unint64_t sub_1E1A33ED0()
{
  result = qword_1ECEBCE30;
  if (!qword_1ECEBCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE30);
  }

  return result;
}

uint64_t View.metricsActivityAware(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v6 = off_1EE1F3438;
  swift_beginAccess();
  v13 = v6[11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BD8);
  sub_1E1AF2BEC();
  v7 = v10;
  v8 = v11;
  v10 = a1;
  v11 = v7;
  v12 = v8;
  MEMORY[0x1E68FB770](&v10, a2, &type metadata for MetricsActivityAwareViewModifier, a3);
}

unint64_t sub_1E1A340F4()
{
  result = qword_1ECEBCE40;
  if (!qword_1ECEBCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE40);
  }

  return result;
}

uint64_t sub_1E1A34174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a1;
  v70 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  v10 = sub_1E1AF4A9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE48);
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v52 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE50);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v52 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF413C();
  v73 = a3;
  v74 = v83[8];
  v71 = a4;
  v72 = v83[9];
  v83[0] = a3;
  v83[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE58);
  sub_1E1AF2BFC();
  v75 = v82[0];
  if (!v82[0])
  {
    v75 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  }

  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v22 = off_1EE1F3438;
  swift_beginAccess();
  v56 = *(v22 + 80);
  swift_beginAccess();
  sub_1E134FD1C((v22 + 12), v83, &unk_1ECEB7230);
  v23 = type metadata accessor for SearchGhostHintMetricsTracker();
  sub_1E1AF413C();
  if (v82[0])
  {
    v24 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v82[1] = 0;
    v82[2] = 0;
  }

  v82[3] = v23;
  v82[4] = v24;
  swift_beginAccess();
  v25 = v22[17];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  v61 = v25;

  v55 = v26;
  sub_1E1AF413C();
  v60 = v80;
  v54 = v81;
  sub_1E1AF4A8C();
  v27 = v74;
  if (v74)
  {
    v28 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
    __swift_project_value_buffer(v29, qword_1EE1E3950);
    v78 = v27;
    v79 = v72;
    sub_1E1AF4A3C();
    (*(v11 + 8))(v16, v10);
    swift_unknownObjectRelease();
    (*(v11 + 32))(v16, v13, v10);
  }

  v62 = v22;
  v72 = a2;
  LOBYTE(v78) = 0;
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v53, qword_1EE1E3930);
  sub_1E1AF4A3C();
  v30 = *(v11 + 8);
  v30(v16, v10);
  v31 = *(v11 + 32);
  v31(v16, v13, v10);
  v78 = v75;
  v32 = v57;
  sub_1E1AF4A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  sub_1E1AF4A3C();
  v33 = v30;
  (*(v58 + 8))(v32, v59);
  v30(v16, v10);
  v31(v16, v13, v10);
  if (v56 != 2)
  {
    LOBYTE(v78) = v56 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v53, qword_1EE1D2960);
    sub_1E1AF4A3C();
    v30(v16, v10);
    v31(v16, v13, v10);
  }

  sub_1E134FD1C(v83, &v76, &unk_1ECEB7230);
  if (v77)
  {
    sub_1E1308EC0(&v76, &v78);
    v34 = v61;
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v35, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v33(v16, v10);
    v31(v16, v13, v10);
  }

  else
  {
    sub_1E1308058(&v76, &unk_1ECEB7230);
    v34 = v61;
  }

  sub_1E134FD1C(v82, &v76, &qword_1ECEB2B70);
  if (!v77)
  {
    sub_1E1308058(&v76, &qword_1ECEB2B70);
    if (!v34)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1E1308EC0(&v76, &v78);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v36, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v33(v16, v10);
  v31(v16, v13, v10);
  if (v34)
  {
LABEL_29:
    v78 = v34;
    v37 = qword_1ECEB0E78;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v38, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    v33(v16, v10);

    v31(v16, v13, v10);
  }

LABEL_32:
  v61 = v31;
  if (v60)
  {
    v78 = v60;
    v79 = v54;
    v39 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
    __swift_project_value_buffer(v40, qword_1EE1D2920);
    sub_1E1AF4A3C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41 = v33;
    v33(v16, v10);
    sub_1E1308058(v83, &unk_1ECEB7230);
    swift_unknownObjectRelease();
    v42 = v61;
    v61(v16, v13, v10);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1E1308058(v83, &unk_1ECEB7230);
    v41 = v33;
    v42 = v61;
  }

  v43 = v63;
  v42(v63, v16, v10);
  sub_1E1308058(v82, &qword_1ECEB2B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE60);
  sub_1E1302CD4(&qword_1ECEBCE68, &qword_1ECEBCE60);
  v44 = v66;
  sub_1E1AF294C();
  v41(v43, v10);
  v45 = [objc_opt_self() defaultCenter];
  if (qword_1EE1DF920 != -1)
  {
    swift_once();
  }

  v47 = v64;
  v46 = v65;
  sub_1E1AF6A7C();

  v48 = swift_allocObject();
  v49 = v73;
  *(v48 + 2) = v72;
  *(v48 + 3) = v49;
  *(v48 + 4) = v71;
  (*(v68 + 32))(v47, v44, v69);
  v50 = (v47 + *(v46 + 56));
  *v50 = sub_1E1A34E94;
  v50[1] = v48;
  sub_1E1334118(v47, v70);
}

uint64_t sub_1E1A34DD4()
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE58);
  return sub_1E1AF2C0C();
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

UIEdgeInsets __swiftcall NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v1 = v2;
  }

  v4 = v3;
  result.right = v4;
  result.left = v1;
  return result;
}

uint64_t ASDIAPInfo.isExpired.getter()
{
  v1 = v0;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = [v1 expirationDate];
  if (v13)
  {
    v14 = v13;
    sub_1E1AEFE3C();

    (*(v3 + 32))(v12, v8, v2);
    sub_1E1AEFE5C();
    sub_1E1A350CC();
    v15 = sub_1E1AF5D7C();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v12, v2);
    v17 = v15 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

unint64_t sub_1E1A350CC()
{
  result = qword_1EE1FADC0;
  if (!qword_1EE1FADC0)
  {
    sub_1E1AEFE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1FADC0);
  }

  return result;
}

uint64_t sub_1E1A35128(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t))
{
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v14 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (!a2)
  {
    v35 = v7;
    v36 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v16 = a1;
      v39 = MEMORY[0x1E69E7CC0];
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
      {
        v30[1] = a4;
        v31 = v16;
        v19 = 0;
        v37 = v16 & 0xC000000000000001;
        v32 = v8 + 1;
        v33 = i;
        v34 = v17;
        while (1)
        {
          if (v37)
          {
            v20 = MEMORY[0x1E68FFD80](v19, v16);
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_26;
            }

            v20 = *(v16 + 8 * v19 + 32);
          }

          v8 = v20;
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v22 = [v20 expirationDate];
          if (v22)
          {
            v23 = v36;
            v24 = v22;
            sub_1E1AEFE3C();

            sub_1E1AEFE5C();
            sub_1E1A350CC();
            v25 = v35;
            v26 = sub_1E1AF5D7C();
            a4 = v32;
            v27 = *v32;
            (*v32)(v10, v25);
            v27(v23, v25);
            if ((v26 & 1) != 0 && ([v8 type] & 0xFE) == 2)
            {
              sub_1E1AF70BC();
              sub_1E1AF70FC();
              sub_1E1AF710C();
              sub_1E1AF70CC();
            }

            else
            {
            }

            v16 = v31;
            i = v33;
            v17 = v34;
          }

          else
          {
          }

          ++v19;
          if (v21 == i)
          {
            v15 = v39;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      v15 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_21:
      if (v15 >> 62)
      {
LABEL_29:
        v28 = sub_1E1AF71CC();
        goto LABEL_23;
      }
    }

    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:

    v40 = v28 > 0;
    return sub_1E1AF586C();
  }

  v38 = 1;
  return sub_1E1AF586C();
}

uint64_t sub_1E1A35478(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E1A35854();
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t _sSo13ASDIAPHistoryC11AppStoreKitE16hasSubscriptions9JetEngine7PromiseCySbGyFZ_0()
{
  v0 = sub_1E1AF0F7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v7 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v9 = [objc_opt_self() sharedInstance];
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v1 + 32))(v12 + v10, v3, v0);
  *(v12 + v11) = v7;
  aBlock[4] = sub_1E1A357A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1A35478;
  aBlock[3] = &block_descriptor_101;
  v13 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v13);

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1E1A357A8(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1A35128(a1, a2, v2 + v6, v7);
}

unint64_t sub_1E1A35854()
{
  result = qword_1EE1E34C8;
  if (!qword_1EE1E34C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E34C8);
  }

  return result;
}

JSValue __swiftcall AppUpdateMetadata.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = result.super.isa;
  v21[1] = *v2;

  v14 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
  v15 = [v11 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v11 valueWithBool:*(v2 + 8) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1E1AF6C5C();
  updated = type metadata accessor for AppUpdateMetadata();
  sub_1E1380BEC(v2 + *(updated + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E153DF88(v6);
    v17 = in.super.isa;
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = in.super.isa;
    v18 = sub_1E1AF748C();
    (*(v8 + 8))(v10, v7);
  }

  v20 = [v11 valueWithObject:v18 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v20)
  {
    goto LABEL_13;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v11 valueWithBool:*(v2 + *(updated + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_1E1AF6C5C();

    return v14;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppUpdateMetadata()
{
  result = qword_1ECEBCE90;
  if (!qword_1ECEBCE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall AppUpdateLockupsIntent.makeValue(in:)(JSContext in)
{
  updated = type metadata accessor for AppUpdateMetadata();
  v4 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v11 = *(v7 + 16);
    if (v11)
    {
      v19 = MEMORY[0x1E69E7CC0];
      v12 = result.super.isa;
      sub_1E1AF70EC();
      v13 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v14 = *(v4 + 72);
      do
      {
        sub_1E1A35EC0(v13, v6);
        AppUpdateMetadata.makeValue(in:)(in);
        sub_1E1A35F24(v6);
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
        v13 += v14;
        --v11;
      }

      while (v11);
      v15 = v19;
    }

    else
    {
      v16 = result.super.isa;
      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
    v17 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v17)
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

uint64_t sub_1E1A35EC0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AppUpdateMetadata();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1E1A35F24(uint64_t a1)
{
  updated = type metadata accessor for AppUpdateMetadata();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_1E1A35FA0()
{
  result = qword_1ECEBCE78;
  if (!qword_1ECEBCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE78);
  }

  return result;
}

unint64_t sub_1E1A35FFC()
{
  result = qword_1ECEBCE80;
  if (!qword_1ECEBCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB85E0);
    sub_1E1A36080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE80);
  }

  return result;
}

unint64_t sub_1E1A36080()
{
  result = qword_1ECEBCE88;
  if (!qword_1ECEBCE88)
  {
    type metadata accessor for UpdatesLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE88);
  }

  return result;
}

void sub_1E1A36104()
{
  sub_1E1A36190();
  if (v0 <= 0x3F)
  {
    sub_1E13A8B64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1A36190()
{
  if (!qword_1ECEBCEA0)
  {
    v0 = sub_1E1AF5CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEBCEA0);
    }
  }
}

uint64_t SignOutAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1E1AF3E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1E1AF3DFC();
  v12 = sub_1E1AF46DC();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_1E138853C(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v21, &unk_1ECEB5670);
  }

  sub_1E1308058(v27, &unk_1ECEB5670);
  v17 = v11 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_1E134B7C8(v6, v11 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_1E1B4D5A0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignOutAction.init()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E1AF3DFC();
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_1E138853C(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  sub_1E1308058(v28, &unk_1ECEB5670);
  v18 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_1E134B7C8(v8, v1 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v1 + 16) = xmmword_1E1B4D5A0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignOutAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignOutAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignOutAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t SignOutAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignOutAction()
{
  result = qword_1EE1F4810;
  if (!qword_1EE1F4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interpolator.init(fromValue:toValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = type metadata accessor for Interpolator();
  v9 = *(a3 - 8);
  v10 = *(v9 + 16);
  v10(&a4[*(v8 + 36)], a1, a3);
  v10(&a4[*(v8 + 40)], a2, a3);
  v11 = TimingCurve.caMediaTimingFunction.getter();
  v12 = *(v9 + 8);
  v12(a2, a3);
  result = (v12)(a1, a3);
  *a4 = v11;
  return result;
}

uint64_t Interpolator.value(forInput:)(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

unint64_t sub_1E1A37114()
{
  result = sub_1E1A37588();
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

uint64_t sub_1E1A3719C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1E1A3732C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 8) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1E1A37588()
{
  result = qword_1EE1D2460;
  if (!qword_1EE1D2460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D2460);
  }

  return result;
}

uint64_t JSError.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v28 = sub_1E1AF380C();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v4 + 8);
  v20 = v15;
  v21 = v28;
  v19(v20, v28);
  if (v18)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v18)
  {
    v23 = v18;
  }

  v30 = v23;
  v31 = v22;
  sub_1E1AF381C();
  v29 = sub_1E1AF36EC();
  v27[3] = v24;
  v19(v12, v21);
  sub_1E1AF381C();
  sub_1E1AF36EC();
  v19(v9, v21);
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v19(v6, v21);
  sub_1E1AF569C();
  v25 = sub_1E1AF39DC();
  (*(*(v25 - 8) + 8))(v33, v25);
  return (v19)(a1, v21);
}

AppStoreKit::PerformanceTestType_optional __swiftcall PerformanceTestType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PerformanceTestType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A69736572;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

uint64_t sub_1E1A3794C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657A69736572;
  }

  else
  {
    v2 = 0x6C6C6F726373;
  }

  if (*a2)
  {
    v3 = 0x657A69736572;
  }

  else
  {
    v3 = 0x6C6C6F726373;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E1A379CC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A37A3C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A37A90()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A37AFC@<X0>(char *a1@<X8>)
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

void sub_1E1A37B5C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6F726373;
  if (*v1)
  {
    v2 = 0x657A69736572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

unsigned __int8 *PerformanceTestCase.init(name:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v111 = a3;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  v108 = a4;
  v109 = a1;
  *a4 = a1;
  a4[1] = a2;

  v26 = v111;
  sub_1E1AF381C();
  sub_1E1A384B8();
  v27 = v110;
  sub_1E1AF36AC();
  v110 = v27;
  if (v27)
  {

    v28 = *(v8 + 8);
    v28(v26, v7);
    v28(v25, v7);
  }

  v102 = v19;
  v103 = v16;
  v31 = *(v8 + 8);
  v30 = (v8 + 8);
  v32 = v25;
  v33 = v7;
  v104 = v31;
  v31(v32, v7);
  v34 = v108;
  *(v108 + 17) = v112[0];
  v35 = sub_1E1AF602C();

  if (v35)
  {
    v36 = v30;
    *(v34 + 16) = 0;
    v37 = v7;
    v38 = v34;
    v39 = v102;
  }

  else
  {
    v40 = v111;
    sub_1E1AF381C();
    sub_1E1A3850C();
    v41 = v110;
    sub_1E1AF36AC();
    v39 = v102;
    if (v41)
    {
      v42 = v33;
      v43 = v33;
      v44 = v104;
      v104(v40, v43);
      v44(v22, v42);
    }

    v110 = 0;
    v37 = v33;
    v36 = v30;
    v104(v22, v33);
    v38 = v34;
    *(v34 + 16) = v112[0];
  }

  v45 = v111;
  sub_1E1AF381C();
  v46 = sub_1E1AF37CC();
  v48 = v47;
  v49 = v39;
  v50 = v37;
  v51 = v104;
  v104(v49, v37);
  if (v48)
  {
    v52 = v103;
    if (v46 == 5457241 && v48 == 0xE300000000000000)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_1E1AF74AC();
    }

    v54 = v36;
  }

  else
  {
    v53 = 0;
    v52 = v103;
    v54 = v36;
  }

  *(v38 + 18) = v53 & 1;
  sub_1E1AF381C();
  v55 = type metadata accessor for PerformanceTestCase();
  sub_1E1AF36FC();
  v51(v52, v50);
  v56 = v107;
  sub_1E1AF381C();
  v57 = sub_1E1AF37CC();
  v59 = v58;
  result = (v51)(v56, v50);
  if (!v59)
  {
    goto LABEL_78;
  }

  v60 = HIBYTE(v59) & 0xF;
  v61 = v57 & 0xFFFFFFFFFFFFLL;
  if ((v59 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v59) & 0xF;
  }

  else
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

    goto LABEL_78;
  }

  if ((v59 & 0x1000000000000000) != 0)
  {
    v64 = sub_1E15B8398(v57, v59, 10);

    if ((v64 & 0x100000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if ((v59 & 0x2000000000000000) != 0)
  {
    v112[0] = v57;
    v112[1] = v59 & 0xFFFFFFFFFFFFFFLL;
    if (v57 == 43)
    {
      if (v60)
      {
        if (--v60)
        {
          LODWORD(v64) = 0;
          v74 = v112 + 1;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v64;
            if (v76 != v76)
            {
              break;
            }

            LODWORD(v64) = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_99:
      __break(1u);
      return result;
    }

    if (v57 != 45)
    {
      if (v60)
      {
        LODWORD(v64) = 0;
        v79 = v112;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v64;
          if (v81 != v81)
          {
            break;
          }

          LODWORD(v64) = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    if (v60)
    {
      if (--v60)
      {
        LODWORD(v64) = 0;
        v68 = v112 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = 10 * v64;
          if (v70 != v70)
          {
            break;
          }

          LODWORD(v64) = v70 - v69;
          if (__OFSUB__(v70, v69))
          {
            break;
          }

          ++v68;
          if (!--v60)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    result = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1E1AF709C();
  }

  v63 = *result;
  if (v63 == 43)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v71 = result + 1;
          while (1)
          {
            v72 = *v71 - 48;
            if (v72 > 9)
            {
              goto LABEL_76;
            }

            v73 = 10 * v64;
            if (v73 != v73)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_76;
            }

            ++v71;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_76;
    }

    goto LABEL_98;
  }

  if (v63 == 45)
  {
    if (v61 >= 1)
    {
      v60 = v61 - 1;
      if (v61 != 1)
      {
        LODWORD(v64) = 0;
        if (result)
        {
          v65 = result + 1;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              goto LABEL_76;
            }

            v67 = 10 * v64;
            if (v67 != v67)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v67 - v66;
            if (__OFSUB__(v67, v66))
            {
              goto LABEL_76;
            }

            ++v65;
            if (!--v60)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_68:
        LOBYTE(v60) = 0;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v61)
  {
    LODWORD(v64) = 0;
    if (result)
    {
      while (1)
      {
        v77 = *result - 48;
        if (v77 > 9)
        {
          goto LABEL_76;
        }

        v78 = 10 * v64;
        if (v78 != v78)
        {
          goto LABEL_76;
        }

        LODWORD(v64) = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          goto LABEL_76;
        }

        ++result;
        if (!--v61)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_76:
  LODWORD(v64) = 0;
  LOBYTE(v60) = 1;
LABEL_77:
  v113 = v60;
  v82 = v60;

  if (v82)
  {
LABEL_78:
    LODWORD(v64) = 0;
  }

LABEL_79:
  *(v38 + v55[9]) = v64;
  v83 = v105;
  sub_1E1AF381C();
  v84 = sub_1E1AF37CC();
  v86 = v85;
  v87 = v104;
  v111 = v54;
  v104(v83, v50);
  v88 = v50;
  if (v86)
  {
    v89 = sub_1E15B7B2C(v84, v86);
    if ((v89 & 0x100000000) != 0)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }
  }

  else
  {
    v90 = 0;
  }

  v91 = v106;
  *(v38 + v55[10]) = v90;
  v92 = v38;
  v93 = v103;
  sub_1E1AF381C();
  v94 = sub_1E1AF37CC();
  v96 = v95;
  v87(v93, v88);
  v97 = &v92[v55[11]];
  *v97 = v94;
  v97[1] = v96;
  sub_1E1AF381C();
  v98 = sub_1E1AF37CC();
  v100 = v99;
  v87(v91, v88);
  if (v100)
  {
    if (v98 == 5457241 && v100 == 0xE300000000000000)
    {
      v101 = 1;
    }

    else
    {
      v101 = sub_1E1AF74AC();
    }
  }

  else
  {
    v101 = 0;
  }

  result = (v87)(v45, v88);
  v92[v55[12]] = v101 & 1;
  return result;
}
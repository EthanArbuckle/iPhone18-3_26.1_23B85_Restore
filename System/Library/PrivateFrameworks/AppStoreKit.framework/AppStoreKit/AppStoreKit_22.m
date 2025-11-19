uint64_t sub_1E1535508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB52E8);
  v1 = sub_1E1AF570C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B05090;
  v6 = (v5 + v4);
  v17 = v0[1];
  *v6 = 7041889;
  v6[1] = 0xE300000000000000;
  v6[2] = v17;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x1E69AB628], v1);
  v8 = (v6 + v3);
  v16 = v0[2];
  *v8 = 0xD000000000000013;
  v8[1] = 0x80000001E1B64D80;
  v8[2] = v16;
  v7();
  v9 = (v6 + 2 * v3);
  v10 = v0[3];
  *v9 = 0x6B6F54616964656DLL;
  v9[1] = 0xEA00000000006E65;
  v9[2] = v10;
  v7();
  sub_1E1300B24((v0 + 4), v6 + 3 * v3);
  (v7)(v6 + 3 * v3, *MEMORY[0x1E69AB630], v1);
  v11 = v17;
  v12 = v16;
  v13 = v10;

  sub_1E17287E8(v14);
  return v5;
}

uint64_t sub_1E1535708(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E1535750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 BrickLayout.init(metrics:artworkView:labelView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BrickLayout(0);
  sub_1E1535840(a1, a4 + *(v8 + 24));
  sub_1E1308EC0(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t sub_1E1535840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for BrickLayout.Metrics(0);
  v13 = a6 + v12[5];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = v12[6];
  v15 = sub_1E1AF105C();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = sub_1E1AF127C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_1E13619D8(a2, v13, &unk_1ECEB47F0);
  result = sub_1E13619D8(a3, a6 + v14, &qword_1ECEB52F0);
  *(a6 + v12[7]) = a4;
  *(a6 + v12[8]) = a5;
  return result;
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BrickLayout.Metrics.isLabelFullWidth.setter(char a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t BrickLayout.Metrics.numberOfLines.setter(uint64_t a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t BrickLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrickLayout(0) + 24);

  return sub_1E1535E58(v3, a1);
}

uint64_t sub_1E1535E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + *(type metadata accessor for BrickLayout(0) + 24);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetWidth(v17);
  sub_1E1AF123C();
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMinY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetWidth(v20);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v10 = type metadata accessor for BrickLayout.Metrics(0);
  sub_1E134FD1C(&v9[*(v10 + 20)], &v14, &unk_1ECEB47F0);
  if (v15)
  {
    sub_1E1308EC0(&v14, v16);
    sub_1E134FD1C((v4 + 5), &v12, &qword_1ECEB2AD0);
    if (v13)
    {
      sub_1E1308EC0(&v12, &v14);
      __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
      sub_1E1AF11CC();
      __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
      sub_1E1AF12FC();
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      CGRectGetMinX(v21);
      __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
      sub_1E1AF113C();
      CGRectGetMaxY(v22);
      if (v9[*(v10 + 28)] == 1)
      {
        v23.origin.x = a1;
        v23.origin.y = a2;
        v23.size.width = a3;
        v23.size.height = a4;
        CGRectGetWidth(v23);
      }

      __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      sub_1E1308058(&v12, &qword_1ECEB2AD0);
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1E1308058(&v14, &unk_1ECEB47F0);
  }

  return sub_1E1AF106C();
}

uint64_t sub_1E1536204(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E1536884(&qword_1ECEB5300);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit11BrickLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB52F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-1] - v7;
  v9 = sub_1E1AF745C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF123C();
  v13 = type metadata accessor for BrickLayout.Metrics(0);
  sub_1E134FD1C(a1 + *(v13 + 20), v22, &unk_1ECEB47F0);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_1E134FD1C(a1 + *(v13 + 24), v8, &qword_1ECEB52F0);
    v14 = sub_1E1AF105C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      v18 = [a2 traitCollection];
      v19 = sub_1E1AF104C();

      (*(v15 + 8))(v8, v14);
      [v19 lineHeight];
      sub_1E1AF6BBC();
      [v19 descender];

      return a3;
    }

    v16 = &qword_1ECEB52F0;
    v17 = v8;
  }

  else
  {
    v16 = &unk_1ECEB47F0;
    v17 = v22;
  }

  sub_1E1308058(v17, v16);
  return a3;
}

void sub_1E1536620()
{
  sub_1E15366D4();
  if (v0 <= 0x3F)
  {
    sub_1E1300690(319, &unk_1EE1D2AA0, &qword_1ECEB2AC8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BrickLayout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E15366D4()
{
  result = qword_1EE1D2AE0;
  if (!qword_1EE1D2AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1D2AE0);
  }

  return result;
}

void sub_1E1536760()
{
  sub_1E1AF127C();
  if (v0 <= 0x3F)
  {
    sub_1E1300690(319, &qword_1EE1D2AB8, &qword_1ECEB52F8);
    if (v1 <= 0x3F)
    {
      sub_1E153682C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E153682C()
{
  if (!qword_1EE1E3CF0)
  {
    sub_1E1AF105C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3CF0);
    }
  }
}

uint64_t sub_1E1536884(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrickLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

AppStoreKit::RateAction::Parameter_optional __swiftcall RateAction.Parameter.init(rawValue:)(Swift::String rawValue)
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

uint64_t RateAction.Parameter.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x676E69746172;
  }
}

uint64_t sub_1E1536968(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x676E69746172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001E1B561A0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x676E69746172;
  }

  if (*a2)
  {
    v6 = 0x80000001E1B561A0;
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

uint64_t sub_1E1536A10()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1536A94()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1536B04()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1536B84@<X0>(char *a1@<X8>)
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

void sub_1E1536BE4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001E1B561A0;
  v3 = 0x676E69746172;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t RateAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_adamId);
  a1[1] = v2;
}

uint64_t sub_1E1536C3C()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E1536C88(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t *RateAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v30 = *v3;
  v33 = sub_1E1AF39DC();
  v37 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = v3 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating;
  *v13 = 0;
  v13[8] = 1;
  v35 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v7 + 8);
  v36 = v6;
  v17(v12, v6);
  if (v16)
  {
    v18 = (v3 + OBJC_IVAR____TtC11AppStoreKit10RateAction_adamId);
    *v18 = v14;
    v18[1] = v16;
    v19 = v35;
    (*(v7 + 16))(v9, v35, v36);
    v20 = v31;
    v22 = v33;
    v21 = v34;
    (*(v37 + 16))(v31, v34, v33);
    v23 = v32;
    v24 = HttpTemplateAction.init(deserializing:using:)(v9, v20);
    if (!v23)
    {
      v3 = v24;
    }

    (*(v37 + 8))(v21, v22);
    v17(v19, v36);
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v26 = 0x64496D616461;
    v27 = v30;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v37 + 8))(v34, v33);
    v17(v35, v36);
    type metadata accessor for RateAction();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for RateAction()
{
  result = qword_1EE1F7F60;
  if (!qword_1EE1F7F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RateAction.deinit()
{
  v0 = HttpTemplateAction.deinit();

  return v0;
}

uint64_t RateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1537284()
{
  result = qword_1ECEB5308;
  if (!qword_1ECEB5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5308);
  }

  return result;
}

void __swiftcall SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)(AppStoreKit::SearchTextSnapshot *__return_ptr retstr, Swift::String prefixText, Swift::Bool prefixIsProvisional, Swift::String_optional expansionText)
{
  retstr->prefixText = prefixText;
  retstr->prefixIsProvisional = prefixIsProvisional;
  retstr->expansionText = expansionText;
}

uint64_t _s11AppStoreKit18SearchTextSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v9 = sub_1E1AF74AC();
  result = 0;
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
LABEL_9:
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (sub_1E1AF74AC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E15374DC(uint64_t a1, int a2)
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

uint64_t sub_1E1537524(uint64_t result, int a2, int a3)
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

uint64_t sub_1E153757C()
{
  v0 = sub_1E1497BA0(&unk_1F5C287A8);
  result = swift_arrayDestroy();
  qword_1EE1ED7A0 = v0;
  return result;
}

uint64_t MetricsTopicProvider.init(bag:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ASKBagContract();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v6 = sub_1E1AF539C();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v4 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *a2 = v4;
  return result;
}

uint64_t MetricsTopicProvider.currentMetricsTopic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  if (qword_1EE1E31A0 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  (*(v5 + 8))(v7, v4);
  if (v9[1])
  {
    return v9[0];
  }

  if (qword_1EE1E2F68 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  if (LOBYTE(v9[0]) == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x615F706D615F7078;
  }
}

uint64_t MetricsTopicProvider.shouldHaveAnonymousEvents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5[-v2];
  if (qword_1EE1E2F68 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v1 + 8))(v3, v0);
  return v5[15];
}

uint64_t MetricsTopicProvider.anonymousMetricsTopics.getter()
{
  v0 = sub_1E1497BA0(&unk_1F5C287E8);
  sub_1E1455104(&unk_1F5C28808);
  return v0;
}

Swift::String __swiftcall MetricsTopicProvider.replacementTopic(for:)(Swift::String a1)
{
  object = a1._object;
  if (qword_1EE1ED798 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v2 = a1._countAndFlagsBits;
  if (sub_1E14AACA8(a1._countAndFlagsBits, object, qword_1EE1ED7A0))
  {
    v3 = MetricsTopicProvider.currentMetricsTopic.getter();
    object = v4;
  }

  else
  {

    v3 = v2;
  }

  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1E1537B8C(void *a1, uint64_t a2)
{
  v2 = sub_1E1537BF8(a1, a2);

  return v2;
}

id sub_1E1537BB8(void *a1)
{
  v2 = sub_1E1537BF8(a1, v1);

  return v2;
}

void *sub_1E1537BF8(void *a1, uint64_t a2)
{
  v4 = [a1 topic];
  v5 = sub_1E1AF5DFC();
  v7 = v6;

  if (qword_1EE1ED798 != -1)
  {
    swift_once();
  }

  if (sub_1E14AACA8(v5, v7, qword_1EE1ED7A0))
  {

    *&v15 = a2;
    MetricsTopicProvider.currentMetricsTopic.getter();
  }

  v8 = sub_1E1AF5DBC();

  [a1 setTopic_];

  v9 = [a1 account];
  if (!v9)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_14:
    sub_1E13E44F8(&v15);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v9 ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:?];

  if (v11)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast() && (v13 & 1) != 0)
  {
    [a1 setAnonymous_];
  }

LABEL_15:
  if ([a1 isAnonymous])
  {
    [a1 setAccount_];
  }

  return a1;
}

void sub_1E1537E3C()
{
  sub_1E153C2CC(319, &qword_1ECEB5330, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E153C2CC(319, &qword_1ECEB3BE0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E1537F58();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AccessibilityFeatures();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1537F58()
{
  if (!qword_1ECEB5338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5340);
    v0 = sub_1E1AF20BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB5338);
    }
  }
}

uint64_t sub_1E1537FD8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v50 = type metadata accessor for AccessibilityFeaturesCardView.Content(0);
  MEMORY[0x1EEE9AC00](v50);
  v3 = (&v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5348);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v38 - v4;
  v47 = sub_1E1AF22DC();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityFeaturesCardView(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5358);
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v38 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5360);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v38 - v14;
  v16 = *(v1 + *(v6 + 28));
  v17 = *(v16 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_clickAction);
  if (v17)
  {
    v39 = v13;
    v18 = sub_1E1AF206C();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v54 = type metadata accessor for Action();
    v55 = sub_1E153B34C(qword_1EE1D2F80, type metadata accessor for Action);
    v51 = v17;
    sub_1E153B394(v1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessibilityFeaturesCardView);
    v19 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v20 = swift_allocObject();
    sub_1E153C5C0(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AccessibilityFeaturesCardView);
    v40 = sub_1E153B34C(&qword_1ECEB5380, type metadata accessor for AccessibilityFeaturesCardView.Content);
    swift_retain_n();
    sub_1E1AF0C7C();
    v21 = v42;
    sub_1E1AF22CC();
    v22 = sub_1E1302CD4(&qword_1ECEB5370, &qword_1ECEB5358);
    v23 = sub_1E153B34C(&qword_1ECEB5378, MEMORY[0x1E697C248]);
    v24 = v44;
    v25 = v47;
    sub_1E1AF299C();
    (*(v43 + 8))(v21, v25);
    (*(v41 + 8))(v12, v24);
    v26 = v39;
    v27 = v45;
    (*(v39 + 16))(v48, v15, v45);
    swift_storeEnumTagMultiPayload();
    v51 = v24;
    v52 = v25;
    v53 = v22;
    v54 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1E1AF259C();

    return (*(v26 + 8))(v15, v27);
  }

  else
  {
    v29 = *(v1 + *(v6 + 32));
    *v3 = v16;
    v3[1] = v29;
    v30 = v50;
    v31 = *(v50 + 24);
    *(v3 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368);
    swift_storeEnumTagMultiPayload();
    v32 = v30[7];
    *(v3 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
    swift_storeEnumTagMultiPayload();
    *(v3 + v30[8]) = 0x403A000000000000;
    *(v3 + v30[9]) = 0x403A000000000000;
    *(v3 + v30[10]) = 0x4034000000000000;
    v33 = (v3 + v30[11]);
    *v33 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for ScaledSpaceMetric();
    *(v33 + *(v34 + 20)) = 0x4014000000000000;
    v35 = (v3 + v30[12]);
    *v35 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v35 + *(v34 + 20)) = 0x4034000000000000;
    sub_1E153B394(v3, v48, type metadata accessor for AccessibilityFeaturesCardView.Content);
    swift_storeEnumTagMultiPayload();
    v36 = sub_1E1302CD4(&qword_1ECEB5370, &qword_1ECEB5358);
    v37 = sub_1E153B34C(&qword_1ECEB5378, MEMORY[0x1E697C248]);

    v51 = v44;
    v52 = v47;
    v53 = v36;
    v54 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1E153B34C(&qword_1ECEB5380, type metadata accessor for AccessibilityFeaturesCardView.Content);
    sub_1E1AF259C();
    return sub_1E153C0F4(v3, type metadata accessor for AccessibilityFeaturesCardView.Content);
  }
}

uint64_t sub_1E153886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityFeaturesCardView(0);
  sub_1E15388CC(*(a1 + *(v4 + 28)), a2, *(a1 + *(v4 + 32)));
}

uint64_t sub_1E15388CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  v4 = type metadata accessor for AccessibilityFeaturesCardView.Content(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = 0x403A000000000000;
  *(a2 + v4[9]) = 0x403A000000000000;
  *(a2 + v4[10]) = 0x4034000000000000;
  v7 = (a2 + v4[11]);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ScaledSpaceMetric();
  *(v7 + *(v8 + 20)) = 0x4014000000000000;
  v9 = (a2 + v4[12]);
  *v9 = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  *(v9 + *(v8 + 20)) = 0x4034000000000000;
  return result;
}

__n128 sub_1E1538A18@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1E1AF227C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53B8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v55 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53C0);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v55 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53C8);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v55 - v14;
  v16 = type metadata accessor for AccessibilityFeaturesCardView.Content(0);
  sub_1E18710E0(v16);
  v17 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v4 + 8))(v6, v3);
  if (v17)
  {
    v18 = sub_1E1AF257C();
  }

  else
  {
    v18 = sub_1E1AF256C();
  }

  *v9 = v18;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53D0);
  sub_1E1538E84(v2, &v9[*(v19 + 44)]);
  v20 = sub_1E1AF26EC();
  sub_1E1AF207C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1E137F600(v9, v11, &qword_1ECEB53B0);
  v29 = &v11[*(v56 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_1E1AF26FC();
  sub_1E1AF207C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1E137F600(v11, v13, &qword_1ECEB53B8);
  v39 = &v13[*(v57 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1E1AF26CC();
  sub_1E1AF207C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1E137F600(v13, v15, &qword_1ECEB53C0);
  v49 = &v15[*(v58 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_1E1AF2D1C();
  sub_1E1AF230C();
  v50 = v59;
  sub_1E137F600(v15, v59, &qword_1ECEB53C8);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53D8) + 36);
  v52 = v65;
  *(v51 + 64) = v64;
  *(v51 + 80) = v52;
  *(v51 + 96) = v66;
  v53 = v61;
  *v51 = v60;
  *(v51 + 16) = v53;
  result = v63;
  *(v51 + 32) = v62;
  *(v51 + 48) = result;
  return result;
}

uint64_t sub_1E1538E84@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = (&v74 - v7);
  v8 = sub_1E1AF227C();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53E0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  v16 = *a1;
  v74 = a1;
  v17 = v16[9];
  v18 = type metadata accessor for SwiftUIArtworkView(0);
  v19 = v18[6];
  v20 = *MEMORY[0x1E6981698];
  v21 = sub_1E1AF2BAC();
  (*(*(v21 - 8) + 104))(&v15[v19], v20, v21);
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = v17;
  v15[24] = 1;
  v22 = &v15[v18[7]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v15[v18[8]] = 2;
  v15[v18[9]] = 0;

  v23 = sub_1E1AF273C();
  KeyPath = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C28) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53E8);
  sub_1E1AF221C();
  LOBYTE(KeyPath) = sub_1E1AF26FC();
  v26 = type metadata accessor for AccessibilityFeaturesCardView.Content(0);
  ScaledSpaceMetric.wrappedValue.getter();
  sub_1E1AF207C();
  v27 = &v15[*(v11 + 44)];
  *v27 = KeyPath;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v75 = v16;
  v32 = v16[8];
  v94 = v16[7];
  v95 = v32;
  sub_1E13B8AA4();

  v33 = sub_1E1AF293C();
  v35 = v34;
  LOBYTE(v19) = v36;
  sub_1E1AF283C();
  sub_1E1AF27CC();

  sub_1E1AF27FC();

  sub_1E1AF27CC();

  v37 = sub_1E1AF28EC();
  v76 = v38;
  v77 = v37;
  LOBYTE(v11) = v39;
  v78 = v40;
  sub_1E1431100(v33, v35, v19 & 1);

  v42 = v74;
  v43 = v82;
  sub_1E18710E0(v41);
  LOBYTE(v32) = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v83 + 8))(v43, v84);
  LODWORD(v84) = (v32 & 1) == 0;
  v82 = swift_getKeyPath();
  LODWORD(v83) = sub_1E1AF26FC();
  ScaledSpaceMetric.wrappedValue.getter();
  sub_1E1AF207C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v81 = v11 & 1;
  v116 = v11 & 1;
  v111 = 0;
  v52 = v75[10];
  v53 = v42[1] - (*(v42 + *(v26 + 40)) + *(v42 + *(v26 + 40)));
  v54 = v4[7];
  v55 = swift_getKeyPath();
  v56 = v85;
  *(v85 + v54) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  swift_storeEnumTagMultiPayload();
  v94 = 0x4060400000000000;
  sub_1E153C0A0();

  sub_1E1AF20EC();
  *(v56 + v4[10]) = 0x4034000000000000;
  *(v56 + v4[11]) = 3;
  *v56 = v52;
  v57 = (v56 + v4[8]);
  *&v87 = v53;
  sub_1E1AF2BEC();
  v58 = v95;
  *v57 = v94;
  v57[1] = v58;
  v59 = v86;
  sub_1E134FD1C(v15, v86, &qword_1ECEB53E0);
  v60 = v79;
  sub_1E153B394(v56, v79, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  v61 = v80;
  sub_1E134FD1C(v59, v80, &qword_1ECEB53E0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB53F8);
  v63 = v61 + v62[12];
  v64 = v76;
  v65 = v77;
  *&v87 = v77;
  *(&v87 + 1) = v76;
  LOBYTE(v88) = v81;
  *(&v88 + 1) = *v115;
  DWORD1(v88) = *&v115[3];
  v66 = v78;
  *(&v88 + 1) = v78;
  LOBYTE(v89) = 1;
  *(&v89 + 1) = *v114;
  DWORD1(v89) = *&v114[3];
  *(&v89 + 1) = v82;
  LOBYTE(v90) = v84;
  DWORD1(v90) = *&v113[3];
  *(&v90 + 1) = *v113;
  BYTE8(v90) = v83;
  HIDWORD(v90) = *&v112[3];
  *(&v90 + 9) = *v112;
  *&v91 = v45;
  *(&v91 + 1) = v47;
  *&v92 = v49;
  *(&v92 + 1) = v51;
  v93 = 0;
  v67 = v88;
  *v63 = v87;
  *(v63 + 16) = v67;
  v68 = v89;
  v69 = v90;
  v70 = v91;
  v71 = v92;
  *(v63 + 96) = 0;
  *(v63 + 64) = v70;
  *(v63 + 80) = v71;
  *(v63 + 32) = v68;
  *(v63 + 48) = v69;
  sub_1E153B394(v60, v61 + v62[16], type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  v72 = v61 + v62[20];
  *v72 = 0;
  *(v72 + 8) = 0;
  sub_1E134FD1C(&v87, &v94, &qword_1ECEB5400);
  sub_1E153C0F4(v85, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  sub_1E1308058(v15, &qword_1ECEB53E0);
  sub_1E153C0F4(v60, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  v94 = v65;
  v95 = v64;
  v96 = v81;
  *v97 = *v115;
  *&v97[3] = *&v115[3];
  v98 = v66;
  v99 = 1;
  *v100 = *v114;
  *&v100[3] = *&v114[3];
  v101 = v82;
  v102 = v84;
  *v103 = *v113;
  *&v103[3] = *&v113[3];
  v104 = v83;
  *&v105[3] = *&v112[3];
  *v105 = *v112;
  v106 = v45;
  v107 = v47;
  v108 = v49;
  v109 = v51;
  v110 = 0;
  sub_1E1308058(&v94, &qword_1ECEB5400);
  return sub_1E1308058(v86, &qword_1ECEB53E0);
}

uint64_t sub_1E153960C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  sub_1E134FD1C(v1 + *(v10 + 20), v9, &qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF227C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E1539814@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_1E1AF261C();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v6;
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5460);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v39 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5468) - 8;
  MEMORY[0x1EEE9AC00](v47);
  v46 = v39 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5470);
  MEMORY[0x1EEE9AC00](v49);
  v13 = v39 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5478);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v39 - v14;
  v15 = sub_1E1AF251C();
  v16 = *(v1 + *(v4 + 40));
  *v10 = v15;
  *(v10 + 1) = v16;
  v10[16] = 0;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5480) + 44);
  v17 = *v1;
  v18 = (v1 + *(v4 + 32));
  v44 = v1;
  v19 = *v18;
  v20 = v18[1];
  *&v59 = v19;
  *(&v59 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5488);
  sub_1E1AF2BFC();
  v21 = sub_1E1539F88(v17, v57);
  *&v59 = v21;
  v39[1] = swift_getKeyPath();
  v45 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid;
  v40 = v7;
  sub_1E153B394(v1, v7, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  v22 = *(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v42 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid;
  sub_1E153C5C0(v7, v23 + ((v22 + 24) & ~v22), type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5498);
  sub_1E1302CD4(&qword_1ECEB54A0, &qword_1ECEB5490);
  sub_1E153C640();
  sub_1E1302CD4(&qword_1ECEB54C0, &qword_1ECEB5498);
  sub_1E1AF2CAC();
  sub_1E1AF2D1C();
  sub_1E1AF230C();
  v24 = v46;
  sub_1E137F600(v10, v46, &qword_1ECEB5460);
  v25 = (v24 + *(v47 + 44));
  v26 = v64;
  v25[4] = v63;
  v25[5] = v26;
  v25[6] = v65;
  v27 = v60;
  *v25 = v59;
  v25[1] = v27;
  v28 = v62;
  v25[2] = v61;
  v25[3] = v28;
  v29 = v44;
  v30 = v40;
  sub_1E153B394(v44, v40, v45);
  v31 = swift_allocObject();
  sub_1E153C5C0(v30, v31 + ((v22 + 16) & ~v22), v42);
  sub_1E137F600(v24, v13, &qword_1ECEB5468);
  v32 = *&v49;
  v33 = &v13[*(v49 + 36)];
  *v33 = sub_1E153A840;
  *(v33 + 1) = 0;
  *(v33 + 2) = sub_1E153C6F4;
  *(v33 + 3) = v31;
  v34 = v52;
  sub_1E1AF25FC();
  v35 = sub_1E153C764();
  v36 = v48;
  sub_1E1AF29FC();
  (*(v53 + 8))(v34, v54);
  sub_1E1308058(v13, &qword_1ECEB5470);
  v56 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB54F0);
  v57 = v32;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1E153C8DC();
  v37 = v50;
  sub_1E1AF29CC();
  return (*(v51 + 8))(v36, v37);
}

uint64_t sub_1E1539F88(unint64_t a1, double a2)
{
  v3 = sub_1E153B18C(a2);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v8 = MEMORY[0x1E69E7CC8];
    a1 = *(MEMORY[0x1E69E7CC8] + 16);
    if (!a1)
    {
      goto LABEL_46;
    }

LABEL_36:
    v25 = sub_1E1545C08(a1, 0);
    v26 = sub_1E154690C(&v38, v25 + 4, a1, v8);

    v3 = sub_1E1337ECC();
    if (v26 == a1)
    {
      break;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v27 = v3;
    v4 = sub_1E1AF71CC();
    v3 = v27;
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = 0;
      v35 = v3 - 1;
      v7 = __OFSUB__(v3, 1);
      v37 = v7;
      v8 = MEMORY[0x1E69E7CC8];
      v36 = v4;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1E68FFD80](v5, a1);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }
        }

        if (v8[2] && (v10 = sub_1E15A47C8(v6), (v11 & 1) != 0))
        {
          v38 = *(v8[7] + 8 * v10);
        }

        else
        {
          v38 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1E68FEF20](v12);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
        v13 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v8;
        v3 = sub_1E15A47C8(v6);
        v16 = v8[2];
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_39;
        }

        v20 = v15;
        if (v8[3] < v19)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v22 = v3;
        sub_1E14186A8();
        v3 = v22;
        v8 = v39;
        if ((v20 & 1) == 0)
        {
LABEL_27:
          v8[(v3 >> 6) + 8] |= 1 << v3;
          *(v8[6] + 8 * v3) = v6;
          *(v8[7] + 8 * v3) = v13;

          v23 = v8[2];
          v18 = __OFADD__(v23, 1);
          v24 = v23 + 1;
          if (v18)
          {
            goto LABEL_42;
          }

          v8[2] = v24;
          goto LABEL_29;
        }

LABEL_25:
        *(v8[7] + 8 * v3) = v13;

LABEL_29:
        if (__OFADD__(v6, 1))
        {
          goto LABEL_40;
        }

        if (v37)
        {
          goto LABEL_41;
        }

        if (v35 >= v6 + 1)
        {
          ++v6;
        }

        else
        {
          v6 = 0;
        }

        ++v5;
        if (v9 == v36)
        {
          a1 = v8[2];
          if (a1)
          {
            goto LABEL_36;
          }

LABEL_46:
          v25 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }
      }

      sub_1E168D474(v19, isUniquelyReferenced_nonNull_native);
      v3 = sub_1E15A47C8(v6);
      if ((v20 & 1) != (v21 & 1))
      {
        sub_1E1AF757C();
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_24:
      v8 = v39;
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

LABEL_47:
  v38 = v25;

  sub_1E153B74C(&v38);

  v28 = *(v38 + 16);
  if (v28)
  {
    v29 = (v38 + 40);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = *v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1E172E830(0, v30[2] + 1, 1, v30);
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_1E172E830((v32 > 1), v33 + 1, 1, v30);
      }

      v30[2] = v33 + 1;
      v30[v33 + 4] = v31;
      v29 += 2;
      --v28;
    }

    while (v28);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  return v30;
}

uint64_t sub_1E153A3E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *a1;
  *a4 = sub_1E1AF257C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5508);
  v15[1] = v11;
  swift_getKeyPath();
  sub_1E153B394(a3, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_1E153C5C0(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB54B0);
  type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid.FeatureLabel(0);
  sub_1E1302CD4(&qword_1ECEB5500, &qword_1ECEB54B0);
  sub_1E153B34C(&qword_1ECEB54B8, type metadata accessor for AccessibilityFeature);
  sub_1E153B34C(&qword_1ECEB5510, type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid.FeatureLabel);
  return sub_1E1AF2CAC();
}

uint64_t sub_1E153A660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF227C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + 16);

  if (v11 == 1)
  {
    sub_1E153960C(v9);
    v12 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v7 + 8))(v9, v6);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v13 & 1;
  v14 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid.FeatureLabel(0);
  v19[1] = 0x4036000000000000;
  sub_1E1430A8C();
  sub_1E1AF20EC();
  v15 = (a3 + *(v14 + 28));
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for ScaledSpaceMetric();
  *(v15 + *(v16 + 20)) = 0x4024000000000000;
  v17 = (a3 + *(v14 + 32));
  *v17 = swift_getKeyPath();
  result = swift_storeEnumTagMultiPayload();
  *(v17 + *(v16 + 20)) = 0x4022000000000000;
  return result;
}

uint64_t sub_1E153A840@<X0>(void *a1@<X8>)
{
  result = sub_1E1AF216C();
  *a1 = v3;
  return result;
}

double *sub_1E153A86C(double *result)
{
  v1 = *result;
  if (*result > 0.0)
  {
    type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5488);
    result = sub_1E1AF2BFC();
    if (v2 != v1)
    {
      return sub_1E1AF2C0C();
    }
  }

  return result;
}

uint64_t sub_1E153A918()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB54B0);
  sub_1E1302CD4(&qword_1ECEB5500, &qword_1ECEB54B0);
  sub_1E153B34C(&qword_1ECEB54B8, type metadata accessor for AccessibilityFeature);
  return sub_1E1AF2CAC();
}

uint64_t sub_1E153AA38@<X0>(uint64_t a1@<X8>)
{
  sub_1E13B8AA4();

  result = sub_1E1AF293C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1E153AAA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_1E1AF27EC();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5530);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v11 = *a1;
  v12 = *(*a1 + 88);
  v13 = type metadata accessor for SwiftUIArtworkView(0);
  v14 = v13[6];
  v15 = *MEMORY[0x1E6981688];
  v16 = sub_1E1AF2BAC();
  (*(*(v16 - 8) + 104))(&v10[v14], v15, v16);
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = v12;
  v10[24] = 1;
  v17 = &v10[v13[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v10[v13[8]] = 2;
  v10[v13[9]] = 0;

  v18 = sub_1E1AF275C();
  sub_1E1AF27BC();
  sub_1E1AF279C();
  sub_1E1AF27DC();

  sub_1E1AF27FC();

  sub_1E1AF27CC();

  KeyPath = swift_getKeyPath();
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C28) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3C30) + 36)] = 1;
  v73 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid.FeatureLabel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BB8);
  sub_1E1AF20FC();
  v72 = a1;
  sub_1E1AF20FC();
  sub_1E1AF2D1C();
  sub_1E1AF214C();
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5538) + 36)];
  v22 = v103;
  *v21 = v102;
  *(v21 + 1) = v22;
  *(v21 + 2) = v104;
  LOBYTE(KeyPath) = sub_1E1AF271C();
  ScaledSpaceMetric.wrappedValue.getter();
  sub_1E1AF207C();
  v23 = &v10[*(v6 + 44)];
  *v23 = KeyPath;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = *(v11 + 64);
  v84 = *(v11 + 56);
  v85 = v28;
  sub_1E13B8AA4();

  v29 = sub_1E1AF293C();
  v70 = v30;
  v71 = v29;
  v68 = v31;
  v69 = v32;
  sub_1E1AF282C();
  v33 = *MEMORY[0x1E6980EA8];
  v34 = v74;
  v35 = v75;
  v36 = *(v75 + 104);
  v37 = v76;
  v36(v74, v33, v76);
  v67 = sub_1E1AF280C();

  v38 = *(v35 + 8);
  v38(v34, v37);
  sub_1E1AF275C();

  sub_1E1AF281C();
  v36(v34, v33, v37);
  sub_1E1AF280C();

  v38(v34, v37);
  sub_1E1AF275C();

  LOBYTE(v37) = v68;
  v40 = v70;
  v39 = v71;
  v41 = sub_1E1AF28EC();
  v75 = v42;
  v76 = v43;
  LOBYTE(v6) = v44;
  sub_1E1431100(v39, v40, v37 & 1);

  v71 = swift_getKeyPath();
  LOBYTE(v40) = sub_1E1AF272C();
  v45 = v72;
  ScaledSpaceMetric.wrappedValue.getter();
  sub_1E1AF207C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LOBYTE(v6) = v6 & 1;
  LOBYTE(v84) = v6;
  LOBYTE(v79) = 0;
  LODWORD(v74) = *(v45 + 8);
  v54 = v78;
  sub_1E134FD1C(v10, v78, &qword_1ECEB5530);
  v55 = v77;
  sub_1E134FD1C(v54, v77, &qword_1ECEB5530);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5540);
  v57 = (v55 + *(v56 + 48));
  v58 = v75;
  v59 = v76;
  *&v79 = v41;
  *(&v79 + 1) = v75;
  LOBYTE(v80) = v6;
  *(&v80 + 1) = *v101;
  DWORD1(v80) = *&v101[3];
  v60 = v71;
  *(&v80 + 1) = v76;
  *&v81 = v71;
  BYTE8(v81) = 0;
  HIDWORD(v81) = *&v100[3];
  *(&v81 + 9) = *v100;
  LOBYTE(v82) = v40;
  DWORD1(v82) = *&v99[3];
  *(&v82 + 1) = *v99;
  *(&v82 + 1) = v47;
  *&v83[0] = v49;
  *(&v83[0] + 1) = v51;
  *&v83[1] = v53;
  BYTE8(v83[1]) = 0;
  v61 = v80;
  *v57 = v79;
  v57[1] = v61;
  v62 = v81;
  v63 = v82;
  v64 = v83[0];
  *(v57 + 73) = *(v83 + 9);
  v57[3] = v63;
  v57[4] = v64;
  v57[2] = v62;
  v65 = v55 + *(v56 + 64);
  *v65 = 0;
  *(v65 + 8) = 0;
  *(v65 + 9) = v74;
  sub_1E134FD1C(&v79, &v84, &qword_1ECEB5548);
  sub_1E1308058(v10, &qword_1ECEB5530);
  v84 = v41;
  v85 = v58;
  v86 = v6;
  *v87 = *v101;
  *&v87[3] = *&v101[3];
  v88 = v59;
  v89 = v60;
  v90 = 0;
  *v91 = *v100;
  *&v91[3] = *&v100[3];
  v92 = v40;
  *v93 = *v99;
  *&v93[3] = *&v99[3];
  v94 = v47;
  v95 = v49;
  v96 = v51;
  v97 = v53;
  v98 = 0;
  sub_1E1308058(&v84, &qword_1ECEB5548);
  return sub_1E1308058(v78, &qword_1ECEB5530);
}

uint64_t sub_1E153B13C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E1AF252C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5528);
  return sub_1E153AAA8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1E153B18C(double a1)
{
  v2 = v1;
  v4 = sub_1E1AF227C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E153960C(v7);
  v8 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return 1;
  }

  v10 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408);
  result = sub_1E1AF20FC();
  v11 = *(v2 + *(v10 + 32));
  v12 = floor((v11 + a1) / (v13[1] + v11));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (*(v2 + *(v10 + 36)) >= v12)
  {
    return v12;
  }

  else
  {
    return *(v2 + *(v10 + 36));
  }
}

uint64_t sub_1E153B34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E153B394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E153B3FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityFeaturesCardView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E153886C(v4, a1);
}

void sub_1E153B494()
{
  type metadata accessor for AccessibilityFeatures();
  if (v0 <= 0x3F)
  {
    sub_1E153C2CC(319, &qword_1ECEB5330, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E153C2CC(319, &qword_1ECEB3BE0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ScaledSpaceMetric();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E153B5B4()
{
  result = qword_1ECEB53A0;
  if (!qword_1ECEB53A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB53A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5358);
    sub_1E1AF22DC();
    sub_1E1302CD4(&qword_1ECEB5370, &qword_1ECEB5358);
    sub_1E153B34C(&qword_1ECEB5378, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E153B34C(&qword_1ECEB5380, type metadata accessor for AccessibilityFeaturesCardView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB53A0);
  }

  return result;
}

uint64_t sub_1E153B74C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E1969090(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1E1AF741C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2810);
      v7 = sub_1E1AF628C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E153B8C0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E153B8C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E1968F00(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1E153BE48((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1E172D878((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1E153BE48((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E153BE48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1E153C04C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF23FC();
  *a1 = result;
  return result;
}

unint64_t sub_1E153C0A0()
{
  result = qword_1ECEB53F0;
  if (!qword_1ECEB53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB53F0);
  }

  return result;
}

uint64_t sub_1E153C0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E153C17C()
{
  sub_1E153C2CC(319, &qword_1ECEB5420, type metadata accessor for AccessibilityFeature, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E153C2CC(319, &qword_1ECEB3BE0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E153C330();
      if (v2 <= 0x3F)
      {
        sub_1E153CCA0(319, &qword_1ECEB5430, sub_1E153C0A0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E153C2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E153C330()
{
  if (!qword_1ECEB5428)
  {
    v0 = sub_1E1AF2C2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB5428);
    }
  }
}

unint64_t sub_1E153C380()
{
  result = qword_1ECEB5438;
  if (!qword_1ECEB5438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB53D8);
    sub_1E153C438(&qword_1ECEB5440, &qword_1ECEB53C8, &unk_1E1B15DB8, sub_1E153C4BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5438);
  }

  return result;
}

uint64_t sub_1E153C438(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E153C4EC()
{
  result = qword_1ECEB5450;
  if (!qword_1ECEB5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB53B8);
    sub_1E1302CD4(&qword_1ECEB5458, &qword_1ECEB53B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5450);
  }

  return result;
}

uint64_t sub_1E153C5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E153C640()
{
  result = qword_1ECEB54A8;
  if (!qword_1ECEB54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB54B0);
    sub_1E153B34C(&qword_1ECEB54B8, type metadata accessor for AccessibilityFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB54A8);
  }

  return result;
}

double *sub_1E153C6F4(double *a1)
{
  type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);

  return sub_1E153A86C(a1);
}

unint64_t sub_1E153C764()
{
  result = qword_1ECEB54C8;
  if (!qword_1ECEB54C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5470);
    sub_1E153C81C();
    sub_1E1302CD4(&qword_1ECEB54E0, &qword_1ECEB54E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB54C8);
  }

  return result;
}

unint64_t sub_1E153C81C()
{
  result = qword_1ECEB54D0;
  if (!qword_1ECEB54D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5468);
    sub_1E1302CD4(&qword_1ECEB54D8, &qword_1ECEB5460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB54D0);
  }

  return result;
}

unint64_t sub_1E153C8DC()
{
  result = qword_1ECEB54F8;
  if (!qword_1ECEB54F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB54F8);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E1AF227C();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5408);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1E153CAF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AccessibilityFeaturesCardView.FeaturesGrid(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

void sub_1E153CBD8()
{
  type metadata accessor for AccessibilityFeature();
  if (v0 <= 0x3F)
  {
    sub_1E153CCA0(319, &qword_1ECEB3BD8, sub_1E1430A8C);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScaledSpaceMetric();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E153CCA0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1E1AF210C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E153CD1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E655265676170;
  }

  else
  {
    v3 = 6778732;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x646E655265676170;
  }

  else
  {
    v5 = 6778732;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1E153CDC0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E153CE40()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E153CEAC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E153CF28@<X0>(char *a1@<X8>)
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

void sub_1E153CF88(uint64_t *a1@<X8>)
{
  v2 = 6778732;
  if (*v1)
  {
    v2 = 0x646E655265676170;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E153CFC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE1EC448);
  __swift_project_value_buffer(v0, qword_1EE1EC448);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E153D060()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE1EC420);
  __swift_project_value_buffer(v0, qword_1EE1EC420);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E153D0FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for MetricsSamplingLottery(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsSamplingLottery(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E153D24C()
{
  result = qword_1ECEB5560;
  if (!qword_1ECEB5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5560);
  }

  return result;
}

uint64_t sub_1E153D2A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5568);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v16 = v8;
  v17 = v9;
  v14 = 0xD000000000000022;
  v15 = 0x80000001E1B64E80;
  v14 = sub_1E1AF608C();
  v15 = v10;
  sub_1E1AF5F5C();

  sub_1E1AF3F9C();
  sub_1E1AF3C8C();

  (*(v4 + 8))(v6, v3);
  if (v17)
  {
    v11 = 1;
  }

  else
  {
    sub_1E1AEFD5C();
    v11 = 0;
  }

  v12 = sub_1E1AEFE6C();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_1E153D4D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5568);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *v1;
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  v8 = 6778732;
  if (v7)
  {
    v8 = 0x646E655265676170;
    v9 = 0xEA00000000007265;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  v19 = v8;
  v20 = v9;
  v17 = 0xD000000000000022;
  v18 = 0x80000001E1B64E80;
  v17 = sub_1E1AF608C();
  v18 = v10;
  sub_1E1AF5F5C();

  sub_1E1AF3F9C();
  sub_1E1380BEC(a1, v5);
  v11 = sub_1E1AEFE6C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  if (v13 == 1)
  {
    sub_1E153DF88(v5);
    v14 = 0;
  }

  else
  {
    sub_1E1AEFD6C();
    v14 = v15;
    (*(v12 + 8))(v5, v11);
  }

  v19 = v14;
  LOBYTE(v20) = v13 == 1;
  sub_1E1AF3C9C();

  return sub_1E153DF88(a1);
}

uint64_t sub_1E153D768()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - v3;
  v5 = *v0;
  v6 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B03760;
  *(v7 + 32) = @"debug";
  *(v7 + 40) = @"convergence";
  *(v7 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v8 = @"debug";
  v9 = @"convergence";
  v10 = @"internal";
  v11 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v6, v11);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    swift_allocObject();
    sub_1E1AF44AC();
    if (qword_1EE1EC440 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1EE1EC448);
    sub_1E1AF3C8C();

    if (v20 == 2 || (v20 & 1) == 0)
    {
      sub_1E1AF44BC();
      v14 = 6778732;
      if (v5)
      {
        v14 = 0x646E655265676170;
        v15 = 0xEA00000000007265;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v20 = v14;
      v21 = v15;
      v18 = 0xD00000000000001FLL;
      v19 = 0x80000001E1B64E60;
      v18 = sub_1E1AF608C();
      v19 = v16;
      sub_1E1AF5F5C();

      sub_1E1AF3F9C();
      sub_1E1AF3C8C();

      (*(v2 + 8))(v4, v1);
      v13 = v20;
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

  return v13 & 1;
}

uint64_t sub_1E153DAB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v29 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v29 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - v18;
  v20 = *v0;
  v22 = v0[1];
  v21 = *(v0 + 2);
  v31 = *v0;
  v32 = v22;
  v33 = v21;
  if (sub_1E153D768())
  {
    return 1;
  }

  if (v22 <= 0.0)
  {
    return 0;
  }

  if (v22 >= 1.0)
  {
    return 1;
  }

  v31 = v20;
  v32 = v22;
  v33 = v21;
  sub_1E153D2A0(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v24 = *(v8 + 32);
    v29[1] = v8 + 32;
    v30 = v24;
    v24(v14, v6, v7);
    sub_1E1AEFDAC();
    v25 = *(v8 + 8);
    v25(v14, v7);
    v30(v19, v17, v7);
    sub_1E1AEFE5C();
    v26 = sub_1E1AEFDDC();
    v25(v11, v7);
    v25(v19, v7);
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 1;
  }

  sub_1E153DF88(v6);
LABEL_10:
  v27 = sub_1E15BAC74(0x20000000000001uLL);
  result = 0;
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL);
  if (v28 > 0.0 && v28 <= v22)
  {
    v31 = v20;
    v32 = v22;
    v33 = v21;
    sub_1E1AEFE5C();
    (*(v8 + 56))(v4, 0, 1, v7);
    sub_1E153D4D4(v4);
    return 1;
  }

  return result;
}

uint64_t sub_1E153DDDC()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B03760;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    sub_1E1AF44CC();
    swift_allocObject();
    sub_1E1AF44AC();
    if (qword_1EE1EC418 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
    __swift_project_value_buffer(v7, qword_1EE1EC420);
    sub_1E1AF3C8C();

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E153DF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GenericPage.init(deserializing:using:)(char *a1, void (*a2)(void, void, void))
{
  v97 = a2;
  v100 = a1;
  v89 = *v2;
  v3 = sub_1E1AF39DC();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v94 = &v80 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v84 = &v80 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = &v80 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v80 - v23;
  v25 = sub_1E1AF5A6C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v83 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v80 - v29;
  v95 = v2;
  v93 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v31 = v25;
  v87 = v15;
  v32 = v15 + 8;
  v33 = *(v15 + 8);
  v34 = v24;
  v35 = v14;
  v33(v34, v14);
  if ((*(v26 + 48))(v13, 1, v31) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB1F90);
    v36 = sub_1E1AF5A7C();
    sub_1E1540C6C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v37 = 0x7365766C656873;
    v38 = v89;
    v37[1] = 0xE700000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v98 + 8))(v97, v99);
    v33(v100, v14);

    type metadata accessor for GenericPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v98;
    v88 = v26;
    v89 = v31;
    (*(v26 + 32))(v30, v13, v31);
    sub_1E1AF381C();
    v40 = sub_1E1AF370C();
    v92 = v35;
    v82 = v33;
    v33(v22, v35);
    v81 = v40;
    v80 = v32;
    v41 = v30;
    if (v40)
    {
      v42 = v95;
      v43 = v84;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v44, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v45 = v97;
      sub_1E1AF396C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v46 = swift_allocObject();
      *(v46 + 16) = MEMORY[0x1E69E7CC0];
      *&v101 = v46;
      v42 = v95;
      v43 = v84;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v47, qword_1EE1E3BD0);
      v45 = v97;
      sub_1E1AF395C();
    }

    v48 = v96;
    v49 = v88;
    v50 = v43;
    v51 = v99;
    (*(v39 + 32))(v96, v50, v99);
    v52 = *(v49 + 16);
    v84 = v41;
    v52(v83, v41, v89);
    v53 = *(v39 + 16);
    v95 = (v39 + 16);
    v97 = v53;
    v53(v94, v48, v51);
    type metadata accessor for Shelf();
    sub_1E1540C6C(&qword_1EE1E5488, type metadata accessor for Shelf);
    v54 = sub_1E1AF631C();
    v55 = sub_1E175EC2C(v54);
    v57 = v56;

    *(v42 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v55;
    *(v42 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v57;
    v58 = v85;
    v59 = v100;
    sub_1E1AF381C();
    v60 = sub_1E1AF37CC();
    v62 = v61;
    v63 = v92;
    v64 = v42;
    v65 = v82;
    v82(v58, v92);
    v66 = (v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    *v66 = v60;
    v66[1] = v62;
    v83 = type metadata accessor for Action();
    sub_1E1AF381C();
    v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v65(v58, v63);
    *(v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v67;
    sub_1E1AF381C();
    *(v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = _sSo26ASKPagePresentationOptionsV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v58);
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v65(v58, v63);
    v68 = (v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage);
    v69 = v102;
    *v68 = v101;
    v68[1] = v69;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v70 = v99;
    v97(v94, v45, v99);
    sub_1E1540C6C(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v71 = v103;
    v72 = v93;
    swift_beginAccess();
    *(v64 + v72) = v71;

    sub_1E1AF381C();
    v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v74 = v92;
    v65(v58, v92);
    *(v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = v73;
    *(v64 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v81 & 1;
    v75 = v86;
    (*(v87 + 16))(v86, v59, v74);
    v76 = v90;
    v97(v90, v45, v70);
    v77 = v91;
    v26 = BasePage.init(deserializing:using:)(v75, v76);
    if (v77)
    {
      v26 = *(v98 + 8);
      (v26)(v45, v70);
      v65(v59, v74);
      (v26)(v96, v70);
    }

    else
    {
      v78 = *(v98 + 8);
      v78(v45, v70);
      v65(v59, v74);
      v78(v96, v70);
    }

    (*(v88 + 8))(v84, v89);
  }

  return v26;
}

uint64_t type metadata accessor for GenericPage()
{
  result = qword_1EE1F7490;
  if (!qword_1EE1F7490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  LODWORD(v62) = a7;
  v69 = a6;
  v58 = a3;
  v59 = a5;
  v57 = a2;
  v64 = a13;
  v65 = a4;
  v63 = a12;
  v67 = a8;
  v68 = a11;
  v66 = a10;
  v61 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = sub_1E1AF3C3C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v29 = sub_1E175EC2C(a1);
  v31 = v30;

  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v29;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v31;
  v32 = (v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v33 = v58;
  *v32 = v57;
  v32[1] = v33;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v65;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v59;
  sub_1E134FD1C(v69, v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v62;
  swift_beginAccess();
  *(v14 + v28) = v67;

  *(v14 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v60 = v25;
  v34 = *(v25 + 16);
  v34(v27, v68, v24);
  v35 = v64;
  sub_1E134FD1C(v64, v23, &qword_1ECEB3B28);
  *(v14 + 16) = v66;
  v62 = v27;
  v34((v14 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v27, v24);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v63;
  sub_1E134FD1C(v23, v20, &qword_1ECEB3B28);
  v36 = sub_1E1AF39DC();
  v58 = *(v36 - 8);
  v37 = *(v58 + 48);
  if (v37(v20, 1, v36) == 1)
  {

    sub_1E1308058(v35, &qword_1ECEB3B28);
    v38 = *(v60 + 8);
    v38(v68, v24);
    sub_1E1308058(v69, &qword_1ECEB2DF0);
    sub_1E1308058(v23, &qword_1ECEB3B28);
    v38(v62, v24);
    v39 = v20;
  }

  else
  {
    v55 = v37;
    v59 = v20;
    v40 = qword_1EE1E3BC8;

    if (v40 != -1)
    {
      swift_once();
    }

    v57 = v24;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v41, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v42 = v70;
    v43 = v23;
    v44 = v58;
    if (v70)
    {
    }

    v45 = *(v44 + 8);
    v45(v59, v36);
    v46 = v62;
    if (!v42)
    {

      sub_1E1308058(v64, &qword_1ECEB3B28);
      v50 = *(v60 + 8);
      v51 = v57;
      v50(v68, v57);
      sub_1E1308058(v69, &qword_1ECEB2DF0);
      sub_1E1308058(v23, &qword_1ECEB3B28);
      v50(v46, v51);
      return v14;
    }

    v47 = v56;
    sub_1E134FD1C(v23, v56, &qword_1ECEB3B28);
    if (v55(v47, 1, v36) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v64, &qword_1ECEB3B28);
      v52 = *(v60 + 8);
      v53 = v57;
      v52(v68, v57);
      sub_1E1308058(v69, &qword_1ECEB2DF0);
      sub_1E1308058(v43, &qword_1ECEB3B28);
      v52(v46, v53);
      v45(v47, v36);
      return v14;
    }

    sub_1E1308058(v64, &qword_1ECEB3B28);
    v48 = *(v60 + 8);
    v49 = v57;
    v48(v68, v57);
    sub_1E1308058(v69, &qword_1ECEB2DF0);
    sub_1E1308058(v23, &qword_1ECEB3B28);
    v48(v46, v49);
    v39 = v47;
  }

  sub_1E1308058(v39, &qword_1ECEB3B28);
  return v14;
}

uint64_t GenericPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);

  return v0;
}

uint64_t sub_1E153F4E0(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  v5 = sub_1E14E6CA4(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_1E153F56C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v39 - v6;
  v44 = sub_1E1AF3C3C();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v4;
  v8 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
  v9 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  result = swift_beginAccess();
  if (v12)
  {
    v15 = 0;
    v16 = v10 + 32;
    v40 = v12 - 1;
    v42 = v8;
    v41 = v10 + 32;
    while (1)
    {
      v17 = v16 + 40 * v15;
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E134E724(v17, v49);
        if (*(*(a1 + v13) + 16))
        {
          break;
        }

LABEL_4:
        ++v18;
        result = sub_1E134B88C(v49);
        v17 += 40;
        if (v12 == v18)
        {
          v8 = v42;
          goto LABEL_14;
        }
      }

      sub_1E135FCF4(v49);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = sub_1E134B88C(v49);
      MEMORY[0x1E68FEF20](v20);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v15 = v18 + 1;
      result = sub_1E1AF62AC();
      v11 = v48;
      v8 = v42;
      v16 = v41;
      if (v40 == v18)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_4;
  }

LABEL_14:

  v49[0] = v8;
  sub_1E1728208(v11);
  v21 = v49[0];
  v22 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  if (v22)
  {
    v42 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v41 = v22;
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
    v42 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v41 = v23;
  }

  v24 = v44;
  v25 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction);
  v26 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v49, &qword_1ECEB2DF0);
  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) == 1)
  {
    LODWORD(v40) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
  }

  else
  {
    LODWORD(v40) = 0;
  }

  v27 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v28 = *(v2 + v27);
  if (!v28)
  {
    v29 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    swift_beginAccess();
    v28 = *(a1 + v29);
  }

  v30 = v2[2];
  v44 = v26;
  v31 = *(a1 + 16);

  if (v30)
  {
    v31 = sub_1E16F6684(v31);
  }

  else
  {
  }

  v32 = v25;
  v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v34 = v45;
  (*(v43 + 16))(v45, v2 + v33, v24);
  v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v36 = sub_1E1AF39DC();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v38 = *(v47 + 224);

  return v38(v21, v42, v41, v32, v44, v49, v40, v28, 0, v31, v34, v35, v37);
}

uint64_t sub_1E153FAF0(uint64_t a1, uint64_t *a2)
{
  result = sub_1E1AF37CC();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (result == 0xD000000000000011 && 0x80000001E1B64F70 == v4 || (sub_1E1AF74AC() & 1) != 0)
    {

      if (*a2)
      {
        return result;
      }

      v7 = *a2 | 1;
      goto LABEL_7;
    }

    if (v5 == 0xD000000000000019 && 0x80000001E1B64F90 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 2) == 0)
      {
        v7 = *a2 | 2;
LABEL_7:
        *a2 = v7;
      }
    }

    else if (v5 == 0xD000000000000025 && 0x80000001E1B64FB0 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v7 = *a2 | 4;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001ALL && 0x80000001E1B64FE0 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v7 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000014 && 0x80000001E1B65000 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 0x10) == 0)
      {
        v7 = *a2 | 0x10;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001CLL && 0x80000001E1B65020 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 0x20) == 0)
      {
        v7 = *a2 | 0x20;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000024 && 0x80000001E1B65040 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 0x40) == 0)
      {
        v7 = *a2 | 0x40;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000016 && 0x80000001E1B65070 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 0x80) == 0)
      {
        v7 = *a2 | 0x80;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000022 && 0x80000001E1B65090 == v6 || (sub_1E1AF74AC() & 1) != 0)
    {

      if ((*a2 & 0x100) == 0)
      {
        v7 = *a2 | 0x100;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_1EE1D27B0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      v9[3] = MEMORY[0x1E69E6158];
      v9[0] = v5;
      v9[1] = v6;
      sub_1E1AF38BC();
      sub_1E1308058(v9, &qword_1ECEB2DF0);
      sub_1E1AF54BC();
    }
  }

  return result;
}

uint64_t GenericPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v66) = a7;
  v63 = a3;
  v64 = a5;
  v62 = a2;
  v69 = a13;
  v70 = a8;
  v67 = a4;
  v68 = a12;
  v72 = a11;
  v73 = a6;
  v71 = a10;
  v65 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v22 = sub_1E1AF3C3C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v28 = sub_1E175EC2C(a1);
  v30 = v29;

  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v28;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v30;
  v31 = (v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v32 = v63;
  *v31 = v62;
  v31[1] = v32;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v67;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v64;
  sub_1E134FD1C(v73, v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v66;
  swift_beginAccess();
  *(v26 + v27) = v70;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v64 = v23;
  v33 = *(v23 + 16);
  v33(v25, v72, v22);
  v34 = v69;
  sub_1E134FD1C(v69, v21, &qword_1ECEB3B28);
  *(v26 + 16) = v71;
  v33((v26 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v25, v22);
  *(v26 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v68;
  v66 = v21;
  sub_1E134FD1C(v21, v18, &qword_1ECEB3B28);
  v35 = sub_1E1AF39DC();
  v62 = *(v35 - 8);
  v36 = *(v62 + 48);
  if (v36(v18, 1, v35) == 1)
  {

    sub_1E1308058(v34, &qword_1ECEB3B28);
    v37 = *(v64 + 8);
    v37(v72, v22);
    sub_1E1308058(v73, &qword_1ECEB2DF0);
    sub_1E1308058(v66, &qword_1ECEB3B28);
    v37(v25, v22);
    v38 = v18;
  }

  else
  {
    v58 = v36;
    v59 = v25;
    v63 = v18;
    v39 = v64;
    v40 = qword_1EE1E3BC8;

    if (v40 != -1)
    {
      swift_once();
    }

    v60 = v22;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v41, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v42 = v74;
    v43 = v72;
    v44 = v62;
    if (v74)
    {
    }

    v45 = *(v44 + 8);
    v45(v63, v35);
    v46 = v61;
    if (!v42)
    {

      sub_1E1308058(v69, &qword_1ECEB3B28);
      v51 = *(v39 + 8);
      v52 = v43;
      v53 = v60;
      v51(v52, v60);
      sub_1E1308058(v73, &qword_1ECEB2DF0);
      sub_1E1308058(v66, &qword_1ECEB3B28);
      v51(v59, v53);
      return v26;
    }

    v47 = v66;
    sub_1E134FD1C(v66, v61, &qword_1ECEB3B28);
    if (v58(v46, 1, v35) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v69, &qword_1ECEB3B28);
      v54 = *(v39 + 8);
      v55 = v60;
      v54(v43, v60);
      sub_1E1308058(v73, &qword_1ECEB2DF0);
      sub_1E1308058(v47, &qword_1ECEB3B28);
      v54(v59, v55);
      v45(v46, v35);
      return v26;
    }

    sub_1E1308058(v69, &qword_1ECEB3B28);
    v48 = *(v39 + 8);
    v49 = v43;
    v50 = v60;
    v48(v49, v60);
    sub_1E1308058(v73, &qword_1ECEB2DF0);
    sub_1E1308058(v47, &qword_1ECEB3B28);
    v48(v59, v50);
    v38 = v46;
  }

  sub_1E1308058(v38, &qword_1ECEB3B28);
  return v26;
}

uint64_t GenericPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);

  return v1;
}

uint64_t sub_1E15407B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E1540838()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
}

uint64_t GenericPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15409AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 312))(*a1);
  *a2 = result;
  return result;
}

uint64_t _sSo26ASKPagePresentationOptionsV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1E1AF5A6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_1E1AF374C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_1E1AF380C();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_1E1308058(v4, &qword_1ECEB1F90);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x1EEE9AC00](v10);
    *(&v13 - 2) = &v14;
    sub_1E1AF5A2C();
    v11 = sub_1E1AF380C();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_1E1540C6C(unint64_t *a1, void (*a2)(uint64_t))
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

void *ArcadeDiffablePageContentPresenter.__allocating_init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  swift_allocObject();
  v16 = sub_1E1542B4C(a1, a2, a3, a4, a5, a6, a7, a8);

  return v16;
}

void *ArcadeDiffablePageContentPresenter.init(objectGraph:subscriptionManager:subscriptionState:stateTimeOut:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = sub_1E1542B4C(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

uint64_t sub_1E1540FB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v88 = a6;
  v89 = a7;
  v84 = a5;
  LODWORD(v90) = a4;
  v87 = a3;
  v85 = type metadata accessor for ArcadePageIntent();
  MEMORY[0x1EEE9AC00](v85);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF320C();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E1AF324C();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1E1AF326C();
  v77 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v68 - v17;
  v74 = sub_1E1AF591C();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - v21;
  v23 = sub_1E1AEFCCC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v68 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68 - v29;
  v32 = v31;
  v34 = v33;
  sub_1E134FD1C(a2, v22, &unk_1ECEB4B60);
  if ((*(v32 + 48))(v22, 1, v34) == 1)
  {
    sub_1E1308058(v22, &unk_1ECEB4B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5578);
    sub_1E1302CD4(&qword_1ECEB5580, &qword_1ECEB5578);
    swift_allocError();
    *v35 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    v37 = v90;
    v38 = *(v32 + 32);
    v90 = (v32 + 32);
    v71 = v38;
    v39 = (v38)(v30, v22, v34);
    v40 = v34;
    v41 = v37 >> 6;
    if (v37 >> 6 == 3)
    {
      v69 = v30;
      v70 = v32;
      v85 = v40;
      v42 = v87;
      if (v87)
      {
        sub_1E1A1E038(v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B03760;
        sub_1E1AF382C();
        v94 = &type metadata for ArcadeState;
        aBlock = v42;
        LOBYTE(v92) = v37;
        sub_1E1AF38BC();
        sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v43 = v74;
        sub_1E1AF54AC();

        (*(v73 + 8))(v19, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B0);
        v44 = sub_1E1AF588C();
        LOBYTE(aBlock) = -63;
        swift_retain_n();
        v87 = ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&aBlock);
        v45 = v70;
        v46 = v72;
        v47 = v69;
        v48 = v85;
        (*(v70 + 16))(v72, v69, v85);
        v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
        v50 = (v24 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
        v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v71(v52 + v49, v46, v48);
        *(v52 + v50) = v88;
        *(v52 + v51) = v89;
        *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
        v53 = sub_1E1361A80();

        v54 = sub_1E1AF68EC();
        v94 = v53;
        v95 = MEMORY[0x1E69AB720];
        aBlock = v54;
        sub_1E1AF57FC();

        (*(v45 + 8))(v47, v48);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        return v44;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B0);
        v58 = sub_1E1AF588C();
        sub_1E1361A80();

        v89 = sub_1E1AF68EC();
        sub_1E1AF325C();
        v59 = v76;
        sub_1E1AF32DC();
        v90 = *(v77 + 8);
        v90(v15, v86);
        v95 = sub_1E1543CFC;
        v96 = v58;
        aBlock = MEMORY[0x1E69E9820];
        v92 = 1107296256;
        v93 = sub_1E1302D64;
        v94 = &block_descriptor_23;
        v60 = _Block_copy(&aBlock);

        v61 = v78;
        sub_1E1AF322C();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1E139D5D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
        sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
        v62 = v80;
        v63 = v83;
        sub_1E1AF6EEC();
        v64 = v89;
        MEMORY[0x1E68FF5E0](v59, v61, v62, v60);
        _Block_release(v60);

        (*(v82 + 8))(v62, v63);
        (*(v79 + 8))(v61, v81);
        v90(v59, v86);
        (*(v70 + 8))(v69, v85);
        return v58;
      }
    }

    else
    {
      v55 = v40;
      (*(v32 + 16))(v25, v30);
      if (v37 > 0x3F)
      {
        if (v41 == 2)
        {
          v57 = 0;
          v56 = (v37 & 0x3F) == 1;
        }

        else
        {
          v56 = 0;
          v57 = 0;
        }
      }

      else
      {
        v56 = 0;
        v57 = v87 == 1;
      }

      v71(v10, v25, v55);
      v65 = v85;
      v10[*(v85 + 20)] = v41 == 2;
      v10[*(v65 + 24)] = v57;
      v10[*(v65 + 28)] = v56;
      type metadata accessor for JSIntentDispatcher();
      sub_1E1AF421C();
      sub_1E1AF55EC();
      sub_1E1AF4C1C();

      sub_1E1AF422C();
      sub_1E1AF4BEC();

      v66 = sub_1E1AF4BFC();

      v67 = sub_1E1367448(v10, v66, "AppStoreKit/ArcadeDiffablePageContentPresenter.swift", 52, 2);

      sub_1E1543CA0(v10);
      (*(v32 + 8))(v30, v55);
      return v67;
    }
  }
}

uint64_t sub_1E1541B78(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  v25[2] = a5;
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArcadePageIntent();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[8];
  (*(v8 + 16))(v10, a2, v7, v12);
  v17 = v16 >> 6;
  if (v16 > 0x3F)
  {
    if (v17 == 2)
    {
      v19 = 0;
      v18 = (v16 & 0x3F) == 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = v15 == 1;
  }

  v20 = v17 == 2;
  (*(v8 + 32))(v14, v10, v7);
  v14[v11[5]] = v20;
  v14[v11[6]] = v19;
  v14[v11[7]] = v18;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v21 = sub_1E1AF4BFC();

  sub_1E1367448(v14, v21, "AppStoreKit/ArcadeDiffablePageContentPresenter.swift", 52, 2);
  v22 = sub_1E1361A80();
  swift_retain_n();
  v23 = sub_1E1AF68EC();
  v26[3] = v22;
  v26[4] = MEMORY[0x1E69AB720];
  v26[0] = v23;
  sub_1E1AF57FC();

  sub_1E1543CA0(v14);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_1E1541E70()
{
  sub_1E1543DE4();
  v0 = swift_allocError();
  sub_1E1AF584C();
}

uint64_t sub_1E1541EC8(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/ArcadeDiffablePageContentPresenter.swift", 52, 2);

  return v3;
}

uint64_t sub_1E1541FB8(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v6);
  sub_1E1300B24(a2, &v7);
  sub_1E134FD1C(v6, v4, &qword_1ECEB2858);
  sub_1E1542058(v4, v5);
  sub_1E1308058(v6, &qword_1ECEB2858);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E1542058(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v9);
  sub_1E1300B24(a2, &v10);
  v8 = MEMORY[0x1E69E7CC0];
  v7 = 0;
  v4[2] = v9;
  v4[3] = &v7;
  v4[4] = &v8;
  sub_1E188829C(1, sub_1E1543C74, v4);
  v5 = v8;
  v6 = 17;

  sub_1E1AF5BCC();
  sub_1E1360914(v5, v6);

  return sub_1E1308058(v9, &qword_1ECEB2858);
}

uint64_t (*sub_1E154213C(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1543C6C;
  *(v2 + 24) = a1;

  return sub_1E137B768;
}

void *sub_1E15421B4(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF3FEC();
  v9 = MEMORY[0x1E68FFC60](a1 + v8, v17);
  v10 = sub_1E134B88C(v17);
  if (v9)
  {
    v11 = a1[3];
    MEMORY[0x1EEE9AC00](v10);
    v16[2] = a2;

    v12 = sub_1E188E208(sub_1E1543C80, v16, v11);
    if (*(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
    {
      v13 = 1;
    }

    else if (*(v11 + 16))
    {
      v13 = *(v12 + 16) == 0;
    }

    else
    {
      v13 = 0;
    }

    *a3 = v13;
    v17[0] = 100;
    a1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v12, v17, 1, v13);

    MEMORY[0x1E68FEF20](v14);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
  }

  else
  {
  }

  return a1;
}

BOOL sub_1E1542378(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF3FEC();
  __swift_project_boxed_opaque_existential_1Tm((a2 + 40), *(a2 + 64));
  sub_1E1AF3FEC();
  v3 = MEMORY[0x1E68FFC60](v6, v5);
  sub_1E134B88C(v5);
  sub_1E134B88C(v6);
  return (v3 & 1) == 0;
}

uint64_t ArcadeDiffablePageContentPresenter.deinit()
{
  v0 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return v0;
}

uint64_t _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0()
{
  sub_1E1A1DFF0();

  sub_1E1308058(v0 + qword_1EE216678, &unk_1ECEB4B60);

  sub_1E1300EA8(*(v0 + qword_1EE1E9E00));
  sub_1E1300EA8(*(v0 + qword_1EE1E9EA0));
  sub_1E1300EA8(*(v0 + qword_1EE1E9E08));
  sub_1E1300EA8(*(v0 + qword_1EE1E9DF0));
  sub_1E1300EA8(*(v0 + qword_1EE1E9E98));

  sub_1E1360B10(v0 + qword_1EE216698);

  sub_1E1308058(v0 + qword_1EE1E9DD8, &qword_1ECEB5570);
  sub_1E1308058(v0 + qword_1EE1E9DE0, &qword_1ECEB5570);
  return v0;
}

uint64_t ArcadeDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1542714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E154277C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0);
  result = sub_1E1AF729C();
  v8 = result;
  v9 = 0;
  v47 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v44 = qword_1EE1D58A0;
  v16 = (v13 + 63) >> 6;
  v39[3] = v3 + 16;
  v39[2] = v3 + 32;
  v41 = v3;
  v39[1] = v3 + 8;
  v46 = result + 64;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = v47;
      sub_1E134E724(*(v47 + 48) + 40 * v20, v51);
      v22 = *(*(v21 + 56) + 8 * v20);
      v48 = v51[0];
      v49 = v51[1];
      v50 = v52;
      if (*(v22 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
      {
        break;
      }

LABEL_18:
      *(v46 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v34 = v8[6] + 40 * v20;
      v35 = v49;
      *v34 = v48;
      *(v34 + 16) = v35;
      *(v34 + 32) = v50;
      *(v8[7] + 8 * v20) = v22;
      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v8[2] = v38;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v53 = v15;
    v24 = v44;
    v23 = v45;
    swift_beginAccess();
    v25 = *(v23 + v24);
    if (*(v25 + 16))
    {
      v26 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

      v27 = sub_1E135FCF4(v22 + v26);
      if (v28)
      {
        v29 = *(v25 + 56);
        v39[0] = v8;
        v30 = v41;
        v31 = v40;
        v32 = v42;
        (*(v41 + 16))(v40, v29 + *(v41 + 72) * v27, v42);
        (*(v30 + 32))(v43, v31, v32);
        swift_endAccess();
        sub_1E1AF35AC();

        v33 = *(v30 + 8);
        v8 = v39[0];
        result = v33(v43, v32);
LABEL_17:
        v15 = v53;
        goto LABEL_18;
      }
    }

    else
    {
    }

    swift_endAccess();

    goto LABEL_17;
  }

LABEL_5:
  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {

      return v8;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_1E1542B4C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v88 = a5;
  v97 = a2;
  v98 = a1;
  v96 = *v9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v91 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v95 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v89 = &v87 - v18;
  v93 = *a3;
  v92 = *(a3 + 8);
  v20 = qword_1EE1D58A0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v9 + v20) = sub_1E159D714(MEMORY[0x1E69E7CC0]);
  v100 = a4;
  sub_1E134FD1C(a4, v19, &unk_1ECEB4B60);
  *(v9 + qword_1EE1E9D48) = 0;
  *(v9 + qword_1EE1E9DF8) = v21;
  v22 = qword_1EE2166A0;
  v99 = a7;

  v94 = a6;

  *(v9 + v22) = sub_1E159D6F0(v21);
  v23 = (v9 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v9 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v9 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v9 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v9 + qword_1EE2166D0) = 0;
  *(v9 + qword_1EE1E9D50) = 0;
  *(v9 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v9 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3268);
  swift_allocObject();
  *(v9 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v9 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3278);
  swift_allocObject();
  *(v9 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v9 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v9 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v9 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE1E9DD8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v37 = *(*(v36 - 8) + 56);
  v37(v9 + v35, 1, 1, v36);
  v38 = v36;
  v39 = v88;
  v37(v9 + qword_1EE1E9DE0, 1, 1, v38);
  v9[2] = v98;
  sub_1E13E23F8(v89, v9 + qword_1EE216678);
  v40 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_1E1300EA8(v40);
  v41 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_1E1300EA8(v41);
  if (v39)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    v43 = sub_1E1445E6C;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = *v24;
  *v24 = v43;
  v24[1] = v42;
  sub_1E1300EA8(v44);
  v45 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_1E1300EA8(v45);
  v46 = *v27;
  *v27 = 0;
  v27[1] = 0;
  sub_1E1300EA8(v46);
  v47 = v95;
  *(v9 + qword_1EE1E9E90) = v94;
  v48 = v100;
  *(v9 + qword_1EE216690) = v99;
  sub_1E134FD1C(v48, v47, &unk_1ECEB4B60);
  v49 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v50 = (v49 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v49 + v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_1E13E23F8(v47, v55 + v49);
  v56 = v55 + v50;
  *v56 = v93;
  *(v56 + 8) = v92;
  v57 = v96;
  v58 = v97;
  *(v55 + v51) = v97;
  v59 = v98;
  *(v55 + v52) = v98;
  v60 = v99;
  *(v55 + v53) = v99;
  *(v55 + v54) = a8;
  *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v61 = swift_allocObject();
  *(v61 + 16) = v59;
  *(v61 + 24) = v60;
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1E15434E8;
  *(v63 + 24) = v55;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1E1543608;
  *(v64 + 24) = v63;
  v65 = (v9 + qword_1EE1E9E00);
  v66 = *(v9 + qword_1EE1E9E00);
  *v65 = sub_1E13E24A0;
  v65[1] = v64;
  swift_retain_n();
  swift_retain_n();

  v67 = v58;

  sub_1E1300EA8(v66);
  v68 = (v9 + qword_1EE1E9EA0);
  v69 = *(v9 + qword_1EE1E9EA0);
  v70 = *(v9 + qword_1EE1E9EA0 + 8);
  if (v69)
  {
    v71 = swift_allocObject();
    *(v71 + 16) = v69;
    *(v71 + 24) = v70;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1E154366C;
    *(v72 + 24) = v71;
    v73 = sub_1E13E24C0;
  }

  else
  {
    v73 = 0;
    v72 = *(v9 + qword_1EE1E9EA0 + 8);
  }

  *v68 = v73;
  v68[1] = v72;
  sub_1E1300E34(v69);
  sub_1E1300EA8(v69);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E15435DC;
  *(v74 + 24) = v62;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1E1543638;
  *(v75 + 24) = v74;
  v76 = (v9 + qword_1EE1E9E08);
  v77 = *(v9 + qword_1EE1E9E08);
  *v76 = sub_1E13E24B0;
  v76[1] = v75;

  sub_1E1300EA8(v77);
  v78 = (v9 + qword_1EE1E9DF0);
  v79 = *(v9 + qword_1EE1E9DF0);
  *v78 = sub_1E15435D4;
  v78[1] = v61;

  sub_1E1300EA8(v79);
  v80 = (v9 + qword_1EE1E9E98);
  v81 = *(v9 + qword_1EE1E9E98);
  v82 = *(v9 + qword_1EE1E9E98 + 8);
  if (v81)
  {
    v83 = swift_allocObject();
    *(v83 + 16) = v81;
    *(v83 + 24) = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_1E1543608;
    *(v84 + 24) = v83;
    v85 = sub_1E13E24A0;
  }

  else
  {
    v85 = 0;
    v84 = *(v9 + qword_1EE1E9E98 + 8);
  }

  *v80 = v85;
  v80[1] = v84;
  sub_1E1300E34(v81);
  sub_1E1300EA8(v81);

  sub_1E1308058(v100, &unk_1ECEB4B60);
  return v9;
}

uint64_t type metadata accessor for ArcadeDiffablePageContentPresenter()
{
  result = qword_1EE1D5888;
  if (!qword_1EE1D5888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15434E8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v6;
  v11 = *v10;
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *(v10 + 8);

  return sub_1E1540FB4(a1, v1 + v4, v11, v16, v12, v13, v14, v15);
}

uint64_t sub_1E15435DC(uint64_t a1)
{
  sub_1E154369C(a1);
}

uint64_t sub_1E1543608@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1E1543638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E154366C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1E154369C(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v43 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = v38 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1;
  }

  v8 = Strong;
  v9 = qword_1EE2166A0;
  swift_beginAccess();

  v11 = sub_1E154277C(v10, v8);

  *(v8 + v9) = v11;

  v12 = sub_1E159D714(MEMORY[0x1E69E7CC0]);
  v13 = qword_1EE1D58A0;
  swift_beginAccess();
  v48 = v13;
  *(v8 + v13) = v12;

  v14 = sub_1E16356BC();
  v15 = v14;
  v38[0] = a1;
  if (v14 >> 62)
  {
LABEL_30:
    v16 = sub_1E1AF71CC();
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_31:

    return v38[0];
  }

LABEL_4:
  v17 = v4;
  v18 = 0;
  v45 = v15 & 0xC000000000000001;
  v39 = v15 & 0xFFFFFFFFFFFFFF8;
  v44 = (v43 + 32);
  v38[1] = v43 + 40;
  v41 = v15;
  v40 = v16;
  while (1)
  {
    if (v45)
    {
      v19 = MEMORY[0x1E68FFD80](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v18 >= *(v39 + 16))
      {
        goto LABEL_28;
      }

      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (*(v19 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
    {
      break;
    }

LABEL_6:
    ++v18;
    if (v20 == v16)
    {
      goto LABEL_31;
    }
  }

  v47 = v20;
  v46 = v19;
  sub_1E134E724(v19 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
  sub_1E1302CD4(&qword_1EE1D2A58, &qword_1ECEB28C8);

  sub_1E1AF3CDC();
  type metadata accessor for ArcadeDiffablePageContentPresenter();
  v21 = v42;
  sub_1E1AF3CEC();
  __swift_destroy_boxed_opaque_existential_1(v50);
  v4 = v48;
  swift_beginAccess();
  v22 = v8;
  v8 = *v44;
  v23 = v21;
  v24 = isUniquelyReferenced_nonNull_native;
  (*v44)(v17, v23, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *&v4[v22];
  v25 = v49;
  v15 = v22;
  *&v4[v22] = 0x8000000000000000;
  v27 = sub_1E135FCF4(v51);
  v28 = v25[2];
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    goto LABEL_27;
  }

  v4 = v26;
  if (v25[3] >= v30)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v49;
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1E14186BC();
      v33 = v49;
      if (v4)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v33[(v27 >> 6) + 8] |= 1 << v27;
    sub_1E134E724(v51, v33[6] + 40 * v27);
    isUniquelyReferenced_nonNull_native = v24;
    v8(v33[7] + *(v43 + 72) * v27, v17, v24);
    sub_1E134B88C(v51);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_29;
    }

    v33[2] = v36;
    goto LABEL_25;
  }

  sub_1E168D488(v30, isUniquelyReferenced_nonNull_native);
  v31 = sub_1E135FCF4(v51);
  if ((v4 & 1) == (v32 & 1))
  {
    v27 = v31;
    v33 = v49;
    if ((v4 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = v24;
    (*(v43 + 40))(v33[7] + *(v43 + 72) * v27, v17, v24);
    sub_1E134B88C(v51);
LABEL_25:
    v8 = v15;
    *&v48[v15] = v33;

    swift_endAccess();

    v15 = v41;
    v16 = v40;
    v20 = v47;
    goto LABEL_6;
  }

  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1543CA0(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1543D04(unsigned __int8 *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1541B78(a1, v1 + v4, v7, v8, v9);
}

unint64_t sub_1E1543DE4()
{
  result = qword_1EE1D5898;
  if (!qword_1EE1D5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D5898);
  }

  return result;
}

AppStoreKit::PersonalizedOfferType_optional __swiftcall PersonalizedOfferType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PersonalizedOfferType.rawValue.getter()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6573616863727570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E1543F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574656C706D6F63;
  if (*a2 != 1)
  {
    v8 = 0x6573616863727570;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

unint64_t sub_1E154402C()
{
  result = qword_1ECEB5588;
  if (!qword_1ECEB5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5588);
  }

  return result;
}

uint64_t sub_1E1544080()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1544120()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E15441AC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1544254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6574656C706D6F63;
  if (v2 != 1)
  {
    v5 = 0x6573616863727570;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for EmphasizedViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E154438C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5590);
  sub_1E15443F0();
  return sub_1E1AF2A2C();
}

unint64_t sub_1E15443F0()
{
  result = qword_1ECEB5598;
  if (!qword_1ECEB5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5598);
  }

  return result;
}

uint64_t Array<A>.indicesOfShelves<A>(using:)(uint64_t a1, unint64_t a2)
{
  result = sub_1E1AF00DC();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v5, a2);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_1E13C50E8();

        v7 = sub_1E1AF65AC();

        if ((v7 & 1) == 0)
        {
          sub_1E1AF00AC();
        }

        ++v5;
        if (v6 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1E1AF71CC();
      v4 = result;
    }

    while (result);
  }

  return result;
}

__int128 *Array<A>.personalizedShelves(with:)(__int128 *result, unint64_t a2)
{
  v8 = result[1];
  v9 = *result;
  v11 = MEMORY[0x1E69E7CC0];
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1E1AF71CC();
  v3 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](i, a2);
      }

      else
      {
        v6 = *(a2 + 8 * i + 32);
      }

      if (*(*(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) + 16))
      {
        v10[0] = v9;
        v10[1] = v8;
        Shelf.makePersonalizedShelf(with:)(v10);

        MEMORY[0x1E68FEF20](v5);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
      }

      else
      {

        MEMORY[0x1E68FEF20](v7);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
      }
    }

    return v11;
  }

  return result;
}

void Array<A>.identifiersOfShelves<A>(using:)(uint64_t a1, unint64_t a2)
{
  v13 = MEMORY[0x1E69E7CD0];
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E68FFD80](i, a2);
      }

      else
      {
        v5 = *(a2 + 8 * i + 32);
      }

      sub_1E13C50E8();

      v6 = sub_1E1AF65AC();

      if (v6)
      {
      }

      else
      {
        sub_1E134E724(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v11);
        sub_1E18940C8(&v12, v11);

        sub_1E138867C(&v12);
      }
    }

    v7 = v13;
    v8 = *(v13 + 16);
    if (v8)
    {
      while (1)
      {
        v9 = sub_1E1545A68(v8, 0);
        v10 = sub_1E15463AC(&v12, (v9 + 4), v8, v7);
        sub_1E1337ECC();
        if (v10 == v8)
        {
          break;
        }

        __break(1u);
LABEL_15:
        v3 = sub_1E1AF71CC();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_16:
        v7 = MEMORY[0x1E69E7CD0];
        v8 = *(MEMORY[0x1E69E7CD0] + 16);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
    }
  }
}

id Shelf.makePersonalizedShelf(with:)(__int128 *a1)
{
  v2 = v1;
  v115 = *v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v93 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v89 - v4;
  v5 = sub_1E1AEFEAC();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v89 - v14;
  v15 = v2[3];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v15 + 32;
    v19 = a1[1];
    v116 = *a1;
    v117 = v19;
    while (1)
    {
      sub_1E1300B24(v18, v139);
      sub_1E1300B24(v139, &v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1E1308EC0(&v130, &v136);
      v20 = *(&v137 + 1);
      v21 = v138;
      __swift_project_boxed_opaque_existential_1Tm(&v136, *(&v137 + 1));
      if ((PersonalizableModel.needsClientPersonalization.getter(v20, v21) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);
        goto LABEL_14;
      }

      v22 = *(&v137 + 1);
      v23 = v138;
      __swift_project_boxed_opaque_existential_1Tm(&v136, *(&v137 + 1));
      PersonalizableModel.unpersonalized.getter(v22, v23, &v133);
      v24 = *(&v134 + 1);
      v25 = v135;
      __swift_project_boxed_opaque_existential_1Tm(&v133, *(&v134 + 1));
      v126 = v116;
      v127 = v117;
      PersonalizableModel.personalized(with:)(&v126, v24, v25, &v130);
      sub_1E1300B24(&v130, &v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1E172D098(0, v17[2] + 1, 1, v17);
      }

      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v17 = sub_1E172D098((v26 > 1), v27 + 1, 1, v17);
      }

      __swift_destroy_boxed_opaque_existential_1(&v130);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v17[2] = v27 + 1;
      sub_1E1308EC0(&v126, &v17[5 * v27 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_4:
      v18 += 40;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    sub_1E1308058(&v130, &qword_1ECEB55B0);
LABEL_14:
    sub_1E1300B24(v139, &v136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1E172D098(0, v17[2] + 1, 1, v17);
    }

    v29 = v17[2];
    v28 = v17[3];
    if (v29 >= v28 >> 1)
    {
      v17 = sub_1E172D098((v28 > 1), v29 + 1, 1, v17);
    }

    __swift_destroy_boxed_opaque_existential_1(v139);
    v17[2] = v29 + 1;
    sub_1E1308EC0(&v136, &v17[5 * v29 + 4]);
    goto LABEL_4;
  }

LABEL_18:
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  LODWORD(v116) = *(v2 + 16);
  v102 = *(v2 + 17);
  *&v112 = v2[5];
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v110, &unk_1ECEB4B60);
  LODWORD(v105) = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched);
  v30 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8);
  v104 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v106 = v30;
  v95 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  *&v117 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
  v103 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden);
  v98 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
  v31 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8);
  v94 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  v99 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  v36 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
  v97 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
  v37 = sub_1E1AEFE6C();
  (*(*(v37 - 8) + 56))(v109, 1, 1, v37);
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, v111, &unk_1ECEB1770);
  v38 = sub_1E1AEFCCC();
  (*(*(v38 - 8) + 56))(v108, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
  swift_allocObject();
  v96 = v31;

  sub_1E15470AC(v117);
  v39 = v32;
  v40 = v32;
  v41 = v33;
  v42 = v33;
  v43 = v35;
  v101 = v34;
  v100 = v36;
  sub_1E151F120(v40, v42, v35, v34, v36);
  v107 = sub_1E1AF35CC();
  v44 = swift_allocObject();
  sub_1E134FD1C(v139, &v133, &unk_1ECEB5670);
  if (*(&v134 + 1))
  {
    v136 = v133;
    v137 = v134;
    v138 = v135;
  }

  else
  {
    v45 = v90;
    sub_1E1AEFE9C();
    v46 = v41;
    v47 = v39;
    v48 = sub_1E1AEFE7C();
    v50 = v49;
    (*(v91 + 8))(v45, v92);
    *&v130 = v48;
    v39 = v47;
    v41 = v46;
    v43 = v35;
    *(&v130 + 1) = v50;
    sub_1E1AF6F6C();
    sub_1E1308058(&v133, &unk_1ECEB5670);
  }

  v51 = v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v52 = v137;
  *v51 = v136;
  *(v51 + 16) = v52;
  *(v51 + 32) = v138;
  sub_1E134FD1C(v111, v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  v53 = v116;
  *(v44 + 16) = v116;
  *(v44 + 17) = v102;
  *(v44 + 18) = 1;
  *(v44 + 24) = v17;
  LOBYTE(v136) = v53;

  *(v44 + 32) = sub_1E1956360(v54, &v136);
  sub_1E134FD1C(v110, v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v105;
  v55 = (v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v56 = v106;
  *v55 = v104;
  v55[1] = v56;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v44 + 40) = v112;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v103;
  v57 = v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0u;
  *(v57 + 48) = 3221225472;
  if (v117 < 2)
  {

LABEL_25:
    v63 = (v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v64 = v95;
    v65 = v96;
    *v63 = v94;
    v63[1] = v65;
    *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v64;
    *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v117;

    goto LABEL_27;
  }

  v105 = v43;
  v58 = objc_opt_self();

  result = [v58 defaultWorkspace];
  if (!result)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v60 = result;

  v61 = sub_1E1AF5DBC();
  v62 = [v60 applicationIsInstalled_];

  v43 = v105;
  if (v62)
  {
    goto LABEL_25;
  }

  sub_1E1547120(v117);

  v66 = (v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v66 = 0;
  v66[1] = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_27:
  v67 = MEMORY[0x1E69E7CC0];
  sub_1E134FD1C(v109, v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v108, v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v97;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v98;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 1;
  v68 = v99;
  if (!v99)
  {
    LOBYTE(v136) = v116;
    v68 = sub_1E1956580();
  }

  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v68;
  v69 = v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v69 = v39;
  *(v69 + 8) = v41;
  v70 = v101;
  *(v69 + 16) = v43;
  *(v69 + 24) = v70;
  *(v69 + 32) = v100;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v107;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v67;
  *&v116 = v44;
  v71 = *(v44 + 24);
  v72 = sub_1E13C50E8();

  v73 = 0;
  v129 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v72);
  v74 = v71 + 32;
  v75 = 0uLL;
  v112 = xmmword_1E1B16440;
  *&v117 = v71 + 32;
  while (2)
  {
    v76 = *(v71 + 16);
    if (v73 == v76)
    {
LABEL_33:
      v124 = 0;
      v73 = v76;
      v122 = v75;
      v123 = v75;
      goto LABEL_37;
    }

    while (1)
    {
      if ((v73 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v84 = sub_1E1AF71CC();
        if (!v84)
        {
          goto LABEL_65;
        }

LABEL_55:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
        if (v84 >= 1)
        {
          *&v117 = v72 & 0xC000000000000001;
          v85 = (v93 + 8);

          v86 = 0;
          v87 = v72;
          do
          {
            if (v117)
            {
              MEMORY[0x1E68FFD80](v86, v72);
            }

            else
            {
            }

            ++v86;
            sub_1E15470BC();
            sub_1E1AF3CDC();
            v88 = v113;
            sub_1E1AF3CEC();

            __swift_destroy_boxed_opaque_existential_1(&v136);
            (*v85)(v88, v114);
            v72 = v87;
          }

          while (v84 != v86);

          v73 = v116;
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }

      if (v73 >= *(v71 + 16))
      {
        goto LABEL_63;
      }

      sub_1E1300B24(v74 + 40 * v73++, &v122);
LABEL_37:
      v120[0] = v122;
      v120[1] = v123;
      v121 = v124;
      if (!*(&v123 + 1))
      {
        memset(v125, 0, 24);
        *(&v125[1] + 8) = v112;
LABEL_45:
        sub_1E1308058(v125, &qword_1ECEB55B8);
        v132 = 0;
        v130 = 0u;
        v131 = 0u;
        goto LABEL_46;
      }

      sub_1E1308EC0(v120, v119);
      sub_1E1300B24(v119, &v118);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v125, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v119);
      if (*(&v125[1] + 1) == 1)
      {
        goto LABEL_45;
      }

      v126 = v125[0];
      v127 = v125[1];
      v128 = *&v125[2];
      if (*(&v125[1] + 1))
      {
        break;
      }

      sub_1E1308058(&v126, &qword_1ECEB55B0);
      v75 = 0uLL;
      if (v73 == v76)
      {
        goto LABEL_33;
      }
    }

    *(&v127 + 1) = *(&v125[1] + 1);
    result = sub_1E134FD1C(&v126, v125, &qword_1ECEB55B0);
    if (!*(&v125[1] + 1))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    sub_1E1308EC0(v125, &v130);
    sub_1E1308058(&v126, &qword_1ECEB55B0);
    if (!*(&v131 + 1))
    {
LABEL_46:
      sub_1E1308058(&v130, &qword_1ECEB55B0);
      v136 = 0u;
      v137 = 0u;
      v138 = 0;
      goto LABEL_47;
    }

    sub_1E1308EC0(&v130, &v133);
    v79 = *(&v134 + 1);
    v80 = v135;
    v81 = __swift_project_boxed_opaque_existential_1Tm(&v133, *(&v134 + 1));
    v82 = v79;
    v72 = v81;
    if ((PersonalizableModel.needsClientPersonalization.getter(v82, v80) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v133);
LABEL_31:
      v74 = v117;
      v75 = 0uLL;
      continue;
    }

    break;
  }

  sub_1E1308EC0(&v133, &v136);
LABEL_47:
  v133 = v136;
  v134 = v137;
  v135 = v138;
  if (*(&v137 + 1))
  {
    sub_1E1308EC0(&v133, &v130);
    v77 = *(&v131 + 1);
    v78 = v132;
    __swift_project_boxed_opaque_existential_1Tm(&v130, *(&v131 + 1));
    (*(v78 + 16))(&v126, v77, v78);
    LOBYTE(v78) = v126;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v72 = &v129;
    sub_1E1893F1C(&v136, v78);
    goto LABEL_31;
  }

  v73 = v116;
  *(v116 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v129;
  v83 = (v73 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v83 = 0u;
  v83[1] = 0u;
  v72 = *(v73 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v72 >> 62)
  {
    goto LABEL_64;
  }

  v84 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    goto LABEL_55;
  }

LABEL_65:

LABEL_66:
  sub_1E1308058(v108, &unk_1ECEB4B60);
  sub_1E1308058(v111, &unk_1ECEB1770);
  sub_1E1308058(v109, &unk_1ECEBB780);
  sub_1E1308058(v110, &unk_1ECEB4B60);
  sub_1E1308058(v139, &unk_1ECEB5670);
  return v73;
}

void *sub_1E1545A68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_1E1545AF8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55D0);
  v4 = *(sub_1E1AF516C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E1545C1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_1E1545C98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1E1545D20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t (*sub_1E1545DA4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E68FFD80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1E1547134;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E1545E24(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E68FFD80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1E1545EA4;
  }

  __break(1u);
  return result;
}

void (*sub_1E1545EAC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E68FFD80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E1545F2C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E1545F34(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E68FFD80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E1547138;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E1545FB4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_1E154601C;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1546024(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 >> 62;
      v14 = a1;
      v6 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v10 = 0;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v9 == v10)
          {
            v8 = v9;
LABEL_21:
            a1 = v14;
            goto LABEL_22;
          }

          if ((a4 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1E68FFD80](v10, a4);
            if (!v5)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v12 = *(a4 + 8 * v10 + 32);

            if (!v5)
            {
LABEL_12:
              a1 = *(v6 + 16);
              goto LABEL_15;
            }
          }

          a1 = sub_1E1AF71CC();
LABEL_15:
          if (v10 >= a1)
          {
            goto LABEL_24;
          }

          *(v4 + 8 * v10) = v12;
          if (v11 == v8)
          {
            goto LABEL_21;
          }

          ++v10;
          if (v11 >= v8)
          {
            __break(1u);
            goto LABEL_19;
          }
        }
      }
    }

    v9 = sub_1E1AF71CC();
    goto LABEL_6;
  }

LABEL_22:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

void *sub_1E154615C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E15462B0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1E15463AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1E141CF00(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1E1546514(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1E1546668(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1E1AF516C();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1E154690C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E1546A64(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E1546BBC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E1546D10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v7 = result;
      v8 = a5;
      v9 = 0;
      v10 = a4;
      v11 = a4 + 32;
      v12 = a3;
      v13 = a3 - 1;
      while (1)
      {
        sub_1E141CF00(v11, v6);
        if (v13 == v9)
        {
          break;
        }

        v6 += 40;
        v11 += 40;
        if (v5 == ++v9)
        {
          a3 = v5;
          a5 = v8;
          a4 = v10;
          result = v7;
          goto LABEL_12;
        }
      }

      a5 = v8;
      a4 = v10;
      result = v7;
      a3 = v12;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_1E1546DEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1E1546F54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1E15470AC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E15470BC()
{
  result = qword_1EE1E3C40;
  if (!qword_1EE1E3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB55C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C40);
  }

  return result;
}

void sub_1E1547120(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1E1547140()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1547178(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(v9, ObjectType, v3);
  v5 = *(v2 + 24);
  v6 = swift_getObjectType();
  (*(v5 + 8))(v8, v6, v5);
  LOBYTE(v5) = MEMORY[0x1E68FFC60](v9, v8);
  sub_1E134B88C(v8);
  sub_1E134B88C(v9);
  return v5 & 1;
}

uint64_t sub_1E1547220()
{
  v1 = *v0;
  sub_1E1AF762C();
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(v5, ObjectType, v2);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E134B88C(v5);
  return sub_1E1AF767C();
}

uint64_t sub_1E1547298()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v4, ObjectType, v1);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E134B88C(v4);
}

uint64_t sub_1E1547308()
{
  sub_1E1AF762C();
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v4, ObjectType, v1);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E134B88C(v4);
  return sub_1E1AF767C();
}

uint64_t sub_1E154737C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB55D8);
  __swift_project_value_buffer(v4, qword_1ECEB55D8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E15474D0()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      sub_1E134E724(v6, v17);
      sub_1E134E724(v17, &v14);
      v8 = sub_1E1547654(&v14);
      sub_1E13E2E98(&v14);
      if (v8)
      {
        v14 = v17[0];
        v15 = v17[1];
        v16 = v18;
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1E135C2E8(0, *(v7 + 16) + 1, 1);
          v7 = v19;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1E135C2E8((v9 > 1), v10 + 1, 1);
          v7 = v19;
        }

        *(v7 + 16) = v10 + 1;
        v11 = v7 + 40 * v10;
        v12 = v14;
        v13 = v15;
        *(v11 + 64) = v16;
        *(v11 + 32) = v12;
        *(v11 + 48) = v13;
      }

      else
      {
        result = sub_1E134B88C(v17);
      }

      ++v5;
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_13:

    *(v1 + 64) = v7;
  }

  return result;
}

BOOL sub_1E1547654(uint64_t a1)
{
  v2 = v1;
  sub_1E138853C(a1, &v59);
  if (!*(&v60 + 1))
  {
    sub_1E13E2E98(&v59);
    return 0;
  }

  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
LABEL_11:
    sub_1E134B88C(v62);
    return 0;
  }

  v4 = sub_1E135FCF4(v62);
  if ((v5 & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [*(v6 + 16) superview];
  if (!v7)
  {

    goto LABEL_11;
  }

  sub_1E1547A18(v6);
  v9 = v8;
  v11 = v10;
  v55 = v13;
  v56 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  v57 = v11;
  v58 = v9;
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (v17)
    {
      [v17 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v17 safeAreaInsets];
      v30 = v29;
      v32 = v31;

      v15 = UIEdgeInsetsInsetRect(v22, v24, v26, v28, v30, v32);
      v18 = v33;
      v19 = v34;
      v20 = v35;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  v64.origin.x = v15;
  v64.origin.y = v18;
  v64.size.width = v19;
  v64.size.height = v20;
  v37 = CGRectGetWidth(v64) * *(v2 + 16);
  v65.origin.x = v15;
  v65.origin.y = v18;
  v65.size.width = v19;
  v65.size.height = v20;
  v38 = CGRectGetHeight(v65) * *(v2 + 24);
  v66.origin.x = v15;
  v66.origin.y = v18;
  v66.size.width = v19;
  v66.size.height = v20;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v15;
  v67.origin.y = v18;
  v67.size.width = v19;
  v67.size.height = v20;
  v40 = MinX + (CGRectGetWidth(v67) - v37) * 0.5;
  v68.origin.x = v15;
  v68.origin.y = v18;
  v68.size.width = v19;
  v68.size.height = v20;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v15;
  v69.origin.y = v18;
  v69.size.width = v19;
  v69.size.height = v20;
  v70.origin.y = MinY + (CGRectGetHeight(v69) - v38) * 0.5;
  v70.origin.x = v40;
  v70.size.width = v37;
  v70.size.height = v38;
  v76.origin.x = v58;
  v76.origin.y = v57;
  v76.size.width = v56;
  v76.size.height = v55;
  v71 = CGRectIntersection(v70, v76);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  if (CGRectEqualToRect(v71, *MEMORY[0x1E695F050]))
  {
    sub_1E134B88C(v62);

    return 0;
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v54 = CGRectGetWidth(v72);
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v46 = v54 * CGRectGetHeight(v73);
  v74.origin.x = v58;
  v74.origin.y = v57;
  v74.size.width = v56;
  v74.size.height = v55;
  v47 = CGRectGetWidth(v74);
  v75.origin.x = v58;
  v75.origin.y = v57;
  v75.size.width = v56;
  v75.size.height = v55;
  v48 = CGRectGetHeight(v75);
  v49 = *(v6 + 24);
  v50 = v46 / (v47 * v48);
  ObjectType = swift_getObjectType();
  v52 = (*(v49 + 16))(ObjectType, v49);
  sub_1E134B88C(v62);

  v53 = 40;
  if (v52)
  {
    v53 = 32;
  }

  return *(v2 + v53) < v50;
}

void sub_1E1547A18(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    [v4 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = (*(v5 + 48))(ObjectType, v5);
    if (!v15 || (v16 = v15, [v15 frame], v18 = v17, v20 = v19, v22 = v21, v24 = v23, v16, v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = 0.0, v34.size.height = 0.0, v32.origin.x = v18, v32.origin.y = v20, v32.size.width = v22, v32.size.height = v24, CGRectEqualToRect(v32, v34)))
    {
      [v4 frame];
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = 0.0;
      v35.size.height = 0.0;
      if (CGRectEqualToRect(v33, v35))
      {
        if (*(a1 + 64))
        {
          v18 = v8;
          v20 = v10;
          v22 = v12;
          v24 = v14;
        }

        else
        {
          v22 = *(a1 + 48);
          v24 = *(a1 + 56);
          v18 = *(a1 + 32);
          v20 = *(a1 + 40);
        }

        goto LABEL_11;
      }

      [v4 frame];
      v18 = v25;
      v20 = v26;
      v22 = v27;
      v24 = v28;
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 1;
LABEL_11:
    v29 = [v3 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v4 superview];
      [v30 convertRect:v31 fromView:{v18, v20, v22, v24}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E1547C2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + 8);
    v10 = a1;
    v9(v19, ObjectType, a2);
    swift_beginAccess();
    if (*(*(v4 + 48) + 16))
    {

      sub_1E135FCF4(v19);
      if (v11)
      {

        return sub_1E134B88C(v19);
      }
    }

    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    v15 = *(a3 + 16);
    *(v14 + 32) = *a3;
    *(v14 + 48) = v15;
    *(v14 + 64) = *(a3 + 32);
    swift_beginAccess();
    v16 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_1E15995A0(v14, v19, isUniquelyReferenced_nonNull_native);
    *(v4 + 48) = v18;
    swift_endAccess();

    return sub_1E134B88C(v19);
  }

  if (qword_1ECEB0E60 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1ECEB55D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54BC();
}

uint64_t sub_1E1547EC8()
{

  MEMORY[0x1E6901750](v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1547F64()
{
  result = qword_1ECEB55F0;
  if (!qword_1ECEB55F0)
  {
    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB55F0);
  }

  return result;
}

uint64_t sub_1E1547FBC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = __dst;
    if (__dst != __src || &__src[8 * v9] <= __dst)
    {
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
    }

    v195 = &v13[8 * v9];
    if (v7 >= 8 && v5 < v4)
    {
      v15 = &selRef_updateAutoPlayVideoSettings;
      while (1)
      {
        v191 = v5;
        v193 = v13;
        v16 = *v5;
        v17 = *v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = *(v16 + 16);
          v21 = *(v16 + 24);
          v22 = v15;
          ObjectType = swift_getObjectType();

          [v20 v22[262]];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v32 = (*(v21 + 48))(ObjectType, v21);
          if (v32 && (v33 = v32, [v32 v22[262]], v35 = v34, v37 = v36, v39 = v38, v41 = v40, v33, v220.origin.x = 0.0, v220.origin.y = 0.0, v220.size.width = 0.0, v220.size.height = 0.0, v200.origin.x = v35, v200.origin.y = v37, v200.size.width = v39, v200.size.height = v41, !CGRectEqualToRect(v200, v220)))
          {
            *(v16 + 32) = 0u;
            *(v16 + 48) = 0u;
            *(v16 + 64) = 1;
            v15 = v22;
          }

          else
          {
            [v20 v22[262]];
            v221.origin.x = 0.0;
            v221.origin.y = 0.0;
            v221.size.width = 0.0;
            v221.size.height = 0.0;
            v15 = v22;
            if (CGRectEqualToRect(v201, v221))
            {
              if (*(v16 + 64))
              {
                v35 = v25;
                v37 = v27;
                v39 = v29;
                v41 = v31;
              }

              else
              {
                v39 = *(v16 + 48);
                v41 = *(v16 + 56);
                v35 = *(v16 + 32);
                v37 = *(v16 + 40);
              }
            }

            else
            {
              [v20 v22[262]];
              v35 = v46;
              v37 = v47;
              v39 = v48;
              v41 = v49;
              *(v16 + 32) = 0u;
              *(v16 + 48) = 0u;
              *(v16 + 64) = 1;
            }
          }

          result = [v19 view];
          if (!result)
          {
            goto LABEL_104;
          }

          v51 = result;
          v52 = [v20 superview];
          [v51 convertRect:v52 fromView:{v35, v37, v39, v41}];
          v42 = v53;
          v43 = v54;
          v44 = v55;
          v45 = v56;
        }

        else
        {

          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
          v45 = 0.0;
        }

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          v59 = v15;
          v60 = *(v17 + 16);
          v61 = *(v17 + 24);
          v62 = swift_getObjectType();
          [v60 v59[262]];
          rect = v63;
          v187 = v65;
          v189 = v64;
          v185 = v66;
          v67 = (*(v61 + 48))(v62, v61);
          if (v67 && (v68 = v67, [v67 v59[262]], v70 = v69, v72 = v71, v74 = v73, v76 = v75, v68, v222.origin.x = 0.0, v222.origin.y = 0.0, v222.size.width = 0.0, v222.size.height = 0.0, v202.origin.x = v70, v202.origin.y = v72, v202.size.width = v74, v202.size.height = v76, !CGRectEqualToRect(v202, v222)))
          {
            *(v17 + 32) = 0u;
            *(v17 + 48) = 0u;
            *(v17 + 64) = 1;
            v15 = v59;
          }

          else
          {
            [v60 v59[262]];
            v223.origin.x = 0.0;
            v223.origin.y = 0.0;
            v223.size.width = 0.0;
            v223.size.height = 0.0;
            v15 = v59;
            if (CGRectEqualToRect(v203, v223))
            {
              if (*(v17 + 64))
              {
                v70 = rect;
                v74 = v187;
                v72 = v189;
                v76 = v185;
              }

              else
              {
                v74 = *(v17 + 48);
                v76 = *(v17 + 56);
                v70 = *(v17 + 32);
                v72 = *(v17 + 40);
              }
            }

            else
            {
              [v60 v59[262]];
              v70 = v80;
              v72 = v81;
              v74 = v82;
              v76 = v83;
              *(v17 + 32) = 0u;
              *(v17 + 48) = 0u;
              *(v17 + 64) = 1;
            }
          }

          result = [v58 view];
          if (!result)
          {
            __break(1u);
            goto LABEL_103;
          }

          v84 = result;
          v85 = [v60 superview];
          [v84 convertRect:v85 fromView:{v70, v72, v74, v76}];
          recta = v86;
          v77 = v87;
          v78 = v88;
          v79 = v89;
        }

        else
        {
          recta = 0.0;
          v77 = 0.0;
          v78 = 0.0;
          v79 = 0.0;
        }

        v204.origin.x = v42;
        v204.origin.y = v43;
        v204.size.width = v44;
        v204.size.height = v45;
        v90 = v45;
        v91 = v44;
        v92 = v43;
        v93 = v42;
        MinY = CGRectGetMinY(v204);
        v205.origin.x = recta;
        v205.origin.y = v77;
        v205.size.width = v78;
        v205.size.height = v79;
        if (MinY < CGRectGetMinY(v205))
        {
          break;
        }

        v206.origin.x = v93;
        v206.origin.y = v92;
        v206.size.width = v91;
        v206.size.height = v90;
        v95 = CGRectGetMinY(v206);
        v207.origin.x = recta;
        v207.origin.y = v77;
        v207.size.width = v78;
        v207.size.height = v79;
        if (v95 == CGRectGetMinY(v207))
        {
          v208.origin.x = v93;
          v208.origin.y = v92;
          v208.size.width = v91;
          v208.size.height = v90;
          MinX = CGRectGetMinX(v208);
          v209.origin.x = recta;
          v209.origin.y = v77;
          v209.size.width = v78;
          v209.size.height = v79;
          v97 = CGRectGetMinX(v209);

          if (MinX < v97)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }

        v5 = v191;
        v98 = v193;
        v13 = v193 + 8;
        if (v6 != v193)
        {
          goto LABEL_41;
        }

LABEL_42:
        v6 += 8;
        if (v13 >= v195 || v5 >= v4)
        {
          goto LABEL_95;
        }
      }

LABEL_40:
      v13 = v193;
      v98 = v191;
      v5 = v191 + 8;
      if (v6 == v191)
      {
        goto LABEL_42;
      }

LABEL_41:
      *v6 = *v98;
      goto LABEL_42;
    }

LABEL_95:
    v182 = v6;
LABEL_98:
    if (v182 != v13 || v182 >= &v13[(v195 - v13 + (v195 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v182, v13, 8 * ((v195 - v13) / 8));
    }

    return 1;
  }

  if (__dst != a2 || &a2[8 * v12] <= __dst)
  {
    v99 = __dst;
    memmove(__dst, a2, 8 * v12);
    v5 = a2;
    __dst = v99;
  }

  v195 = &__dst[8 * v12];
  v13 = __dst;
  if (v10 < 8 || v5 <= v6)
  {
    v182 = v5;
    goto LABEL_98;
  }

  v101 = &selRef_updateAutoPlayVideoSettings;
  v190 = v6;
  v194 = __dst;
LABEL_54:
  v192 = v5;
  v102 = v5 - 8;
  v4 -= 8;
  v103 = v195;
  v188 = v5 - 8;
  while (1)
  {
    v105 = *(v103 - 1);
    v103 -= 8;
    v104 = v105;
    v106 = *v102;
    v107 = swift_unknownObjectWeakLoadStrong();
    if (!v107)
    {

      v131 = 0.0;
      v132 = 0.0;
      v133 = 0.0;
      v134 = 0.0;
      goto LABEL_69;
    }

    v108 = v107;
    v109 = v101;
    v110 = *(v104 + 16);
    v111 = *(v104 + 24);
    v112 = swift_getObjectType();

    [v110 v109[262]];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v121 = (*(v111 + 48))(v112, v111);
    if (v121 && (v122 = v121, [v121 v109[262]], v124 = v123, v126 = v125, v128 = v127, v130 = v129, v122, v224.origin.x = 0.0, v224.origin.y = 0.0, v224.size.width = 0.0, v224.size.height = 0.0, v210.origin.x = v124, v210.origin.y = v126, v210.size.width = v128, v210.size.height = v130, !CGRectEqualToRect(v210, v224)))
    {
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *(v104 + 64) = 1;
      v101 = v109;
    }

    else
    {
      [v110 v109[262]];
      v225.origin.x = 0.0;
      v225.origin.y = 0.0;
      v225.size.width = 0.0;
      v225.size.height = 0.0;
      v101 = v109;
      if (CGRectEqualToRect(v211, v225))
      {
        v6 = v190;
        if (*(v104 + 64))
        {
          v124 = v114;
          v126 = v116;
          v128 = v118;
          v130 = v120;
        }

        else
        {
          v128 = *(v104 + 48);
          v130 = *(v104 + 56);
          v124 = *(v104 + 32);
          v126 = *(v104 + 40);
        }

        goto LABEL_67;
      }

      [v110 v109[262]];
      v124 = v135;
      v126 = v136;
      v128 = v137;
      v130 = v138;
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *(v104 + 64) = 1;
    }

    v6 = v190;
LABEL_67:
    result = [v108 view];
    if (!result)
    {
      goto LABEL_105;
    }

    v139 = result;
    v140 = [v110 superview];
    [v139 convertRect:v140 fromView:{v124, v126, v128, v130}];
    v131 = v141;
    v132 = v142;
    v133 = v143;
    v134 = v144;

LABEL_69:
    v145 = swift_unknownObjectWeakLoadStrong();
    if (!v145)
    {
      rectc = 0.0;
      v165 = 0.0;
      v166 = 0.0;
      v167 = 0.0;
      goto LABEL_82;
    }

    v146 = v145;
    v147 = v101;
    v148 = *(v106 + 16);
    v149 = *(v106 + 24);
    v150 = swift_getObjectType();
    [v148 v147[262]];
    rectb = v151;
    v184 = v153;
    v186 = v152;
    v183 = v154;
    v155 = (*(v149 + 48))(v150, v149);
    if (v155)
    {
      v156 = v155;
      [v155 v147[262]];
      v158 = v157;
      v160 = v159;
      v162 = v161;
      v164 = v163;

      v226.origin.x = 0.0;
      v226.origin.y = 0.0;
      v226.size.width = 0.0;
      v226.size.height = 0.0;
      v212.origin.x = v158;
      v212.origin.y = v160;
      v212.size.width = v162;
      v212.size.height = v164;
      if (!CGRectEqualToRect(v212, v226))
      {
        *(v106 + 32) = 0u;
        *(v106 + 48) = 0u;
        *(v106 + 64) = 1;
        v101 = v147;
        goto LABEL_78;
      }
    }

    [v148 v147[262]];
    v227.origin.x = 0.0;
    v227.origin.y = 0.0;
    v227.size.width = 0.0;
    v227.size.height = 0.0;
    v101 = v147;
    if (!CGRectEqualToRect(v213, v227))
    {
      [v148 v147[262]];
      v158 = v168;
      v160 = v169;
      v162 = v170;
      v164 = v171;
      *(v106 + 32) = 0u;
      *(v106 + 48) = 0u;
      *(v106 + 64) = 1;
LABEL_78:
      v6 = v190;
      goto LABEL_80;
    }

    v6 = v190;
    if (*(v106 + 64))
    {
      v158 = rectb;
      v162 = v184;
      v160 = v186;
      v164 = v183;
    }

    else
    {
      v162 = *(v106 + 48);
      v164 = *(v106 + 56);
      v158 = *(v106 + 32);
      v160 = *(v106 + 40);
    }

LABEL_80:
    result = [v146 view];
    if (!result)
    {
      break;
    }

    v172 = result;
    v173 = [v148 superview];
    [v172 convertRect:v173 fromView:{v158, v160, v162, v164}];
    rectc = v174;
    v165 = v175;
    v166 = v176;
    v167 = v177;

LABEL_82:
    v214.origin.x = v131;
    v214.origin.y = v132;
    v214.size.width = v133;
    v214.size.height = v134;
    v178 = CGRectGetMinY(v214);
    v215.origin.x = rectc;
    v215.origin.y = v165;
    v215.size.width = v166;
    v215.size.height = v167;
    v102 = v188;
    if (v178 < CGRectGetMinY(v215))
    {

LABEL_90:
      if (v4 + 8 != v192)
      {
        *v4 = *v188;
      }

      v13 = v194;
      if (v195 <= v194 || (v5 = v188, v188 <= v6))
      {
        v182 = v188;
        goto LABEL_98;
      }

      goto LABEL_54;
    }

    v216.origin.x = v131;
    v216.origin.y = v132;
    v216.size.width = v133;
    v216.size.height = v134;
    v179 = CGRectGetMinY(v216);
    v217.origin.x = rectc;
    v217.origin.y = v165;
    v217.size.width = v166;
    v217.size.height = v167;
    if (v179 == CGRectGetMinY(v217))
    {
      v218.origin.x = v131;
      v218.origin.y = v132;
      v218.size.width = v133;
      v218.size.height = v134;
      v180 = CGRectGetMinX(v218);
      v219.origin.x = rectc;
      v219.origin.y = v165;
      v219.size.width = v166;
      v219.size.height = v167;
      v181 = CGRectGetMinX(v219);

      if (v180 < v181)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    if (v4 + 8 != v195)
    {
      *v4 = *v103;
    }

    v4 -= 8;
    v195 = v103;
    if (v103 <= v194)
    {
      v195 = v103;
      v182 = v192;
      v13 = v194;
      goto LABEL_98;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_1E1548BA0(char **a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_1E1968F00(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __src = (v9 + 8 * *v11);
      v14 = (v9 + 8 * *v12);
      v15 = (v9 + 8 * v13);

      sub_1E1547FBC(__src, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1548D48(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v296 = MEMORY[0x1E69E7CC0];
  if (v4 >= 1)
  {
    swift_retain_n();
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v269 = a4;
LABEL_5:
    v8 = v6 + 1;
    v272 = v6;
    if (v6 + 1 >= v4)
    {
      goto LABEL_52;
    }

    v9 = *a3;
    v10 = *(*a3 + 8 * v8);
    v11 = *(*a3 + 8 * v6);

    sub_1E1547A18(v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1E1547A18(v11);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    rect = v13;
    v297.origin.x = v13;
    v297.origin.y = v15;
    v297.size.width = v17;
    v297.size.height = v19;
    MinY = CGRectGetMinY(v297);
    v298.origin.x = v21;
    v298.origin.y = v23;
    v298.size.width = v25;
    v298.size.height = v27;
    if (MinY >= CGRectGetMinY(v298))
    {
      v299.origin.x = rect;
      v299.origin.y = v15;
      v299.size.width = v17;
      v299.size.height = v19;
      v30 = CGRectGetMinY(v299);
      v300.origin.x = v21;
      v300.origin.y = v23;
      v300.size.width = v25;
      v300.size.height = v27;
      if (v30 != CGRectGetMinY(v300))
      {

        v285 = 0;
        goto LABEL_11;
      }

      v301.origin.x = rect;
      v301.origin.y = v15;
      v301.size.width = v17;
      v301.size.height = v19;
      MinX = CGRectGetMinX(v301);
      v302.origin.x = v21;
      v302.origin.y = v23;
      v302.size.width = v25;
      v302.size.height = v27;
      v32 = CGRectGetMinX(v302);

      v29 = MinX < v32;
    }

    else
    {

      v29 = 1;
    }

    v285 = v29;
LABEL_11:
    v33 = v6 + 2;
    if (v6 + 2 >= v4)
    {
      v35 = v6 + 2;
      goto LABEL_48;
    }

    v34 = (v9 + 8 * v6 + 16);
    v283 = v4;
    while (1)
    {
      v287 = v33;
      v36 = *(v34 - 1);
      v37 = *v34;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        v61 = 0.0;
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0.0;
        goto LABEL_28;
      }

      v39 = Strong;
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      ObjectType = swift_getObjectType();

      [v40 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = (*(v41 + 48))(ObjectType, v41);
      if (!v51 || (v52 = v51, [v51 frame], v54 = v53, v56 = v55, v58 = v57, v60 = v59, v52, v323.origin.x = 0.0, v323.origin.y = 0.0, v323.size.width = 0.0, v323.size.height = 0.0, v303.origin.x = v54, v303.origin.y = v56, v303.size.width = v58, v303.size.height = v60, CGRectEqualToRect(v303, v323)))
      {
        [v40 frame];
        v324.origin.x = 0.0;
        v324.origin.y = 0.0;
        v324.size.width = 0.0;
        v324.size.height = 0.0;
        if (CGRectEqualToRect(v304, v324))
        {
          if (*(v37 + 64))
          {
            v54 = v44;
            v56 = v46;
            v58 = v48;
            v60 = v50;
          }

          else
          {
            v58 = *(v37 + 48);
            v60 = *(v37 + 56);
            v54 = *(v37 + 32);
            v56 = *(v37 + 40);
          }

          goto LABEL_26;
        }

        [v40 frame];
        v54 = v65;
        v56 = v66;
        v58 = v67;
        v60 = v68;
      }

      *(v37 + 32) = 0u;
      *(v37 + 48) = 0u;
      *(v37 + 64) = 1;
LABEL_26:
      v69 = [v39 view];
      if (!v69)
      {
        goto LABEL_187;
      }

      v70 = v69;
      v71 = [v40 superview];
      [v70 convertRect:v71 fromView:{v54, v56, v58, v60}];
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v64 = v75;

LABEL_28:
      v76 = swift_unknownObjectWeakLoadStrong();
      if (!v76)
      {
        rectb = 0.0;
        v95 = 0.0;
        v96 = 0.0;
        v97 = 0.0;
        goto LABEL_40;
      }

      v77 = v76;
      v78 = *(v36 + 16);
      v79 = *(v36 + 24);
      v80 = swift_getObjectType();
      [v78 frame];
      recta = v81;
      v281 = v82;
      v274 = v84;
      v276 = v83;
      v85 = (*(v79 + 48))(v80, v79);
      if (!v85 || (v86 = v85, [v85 frame], v88 = v87, v90 = v89, v92 = v91, v94 = v93, v86, v325.origin.x = 0.0, v325.origin.y = 0.0, v325.size.width = 0.0, v325.size.height = 0.0, v305.origin.x = v88, v305.origin.y = v90, v305.size.width = v92, v305.size.height = v94, CGRectEqualToRect(v305, v325)))
      {
        [v78 frame];
        v326.origin.x = 0.0;
        v326.origin.y = 0.0;
        v326.size.width = 0.0;
        v326.size.height = 0.0;
        if (CGRectEqualToRect(v306, v326))
        {
          if (*(v36 + 64))
          {
            v88 = recta;
            v90 = v281;
            v94 = v274;
            v92 = v276;
          }

          else
          {
            v92 = *(v36 + 48);
            v94 = *(v36 + 56);
            v88 = *(v36 + 32);
            v90 = *(v36 + 40);
          }

          goto LABEL_38;
        }

        [v78 frame];
        v88 = v98;
        v90 = v99;
        v92 = v100;
        v94 = v101;
      }

      *(v36 + 32) = 0u;
      *(v36 + 48) = 0u;
      *(v36 + 64) = 1;
LABEL_38:
      v102 = [v77 view];
      if (!v102)
      {
        goto LABEL_188;
      }

      v103 = v102;
      v104 = [v78 superview];
      [v103 convertRect:v104 fromView:{v88, v90, v92, v94}];
      rectb = v105;
      v95 = v106;
      v96 = v107;
      v97 = v108;

LABEL_40:
      v307.origin.x = v61;
      v307.origin.y = v62;
      v307.size.width = v63;
      v307.size.height = v64;
      v109 = v64;
      v110 = v63;
      v111 = v62;
      v112 = v61;
      v113 = CGRectGetMinY(v307);
      v308.origin.x = rectb;
      v308.origin.y = v95;
      v308.size.width = v96;
      v308.size.height = v97;
      if (v113 < CGRectGetMinY(v308))
      {

LABEL_44:
        v6 = v272;
        v35 = v283;
        v33 = v287;
        if (!v285)
        {
          v8 = v287;
          a4 = v269;
          goto LABEL_52;
        }

        goto LABEL_15;
      }

      v309.origin.x = v112;
      v309.origin.y = v111;
      v309.size.width = v110;
      v309.size.height = v109;
      v114 = CGRectGetMinY(v309);
      v310.origin.x = rectb;
      v310.origin.y = v95;
      v310.size.width = v96;
      v310.size.height = v97;
      if (v114 == CGRectGetMinY(v310))
      {
        v311.origin.x = v112;
        v311.origin.y = v111;
        v311.size.width = v110;
        v311.size.height = v109;
        v115 = CGRectGetMinX(v311);
        v312.origin.x = rectb;
        v312.origin.y = v95;
        v312.size.width = v96;
        v312.size.height = v97;
        v116 = CGRectGetMinX(v312);

        if (v115 < v116)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v6 = v272;
      v35 = v283;
      v33 = v287;
      if (v285)
      {
        v117 = v287 - 1;
        a4 = v269;
        if (v287 >= v272)
        {
          goto LABEL_50;
        }

LABEL_182:
        __break(1u);
LABEL_183:

        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:

        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:

        __break(1u);
LABEL_190:

        __break(1u);
LABEL_191:

        __break(1u);
        return result;
      }

LABEL_15:
      ++v33;
      ++v34;
      if (v35 == v33)
      {
        v8 = v33 - 1;
        v33 = v35;
LABEL_48:
        v117 = v8;
        v8 = v35;
        a4 = v269;
        if (!v285)
        {
          goto LABEL_52;
        }

        if (v33 < v6)
        {
          goto LABEL_182;
        }

LABEL_50:
        if (v6 <= v117)
        {
          v260 = 8 * v33 - 8;
          v261 = 8 * v6;
          v262 = v33;
          v263 = v6;
          do
          {
            if (v263 != --v262)
            {
              v264 = *a3;
              if (!*a3)
              {
                goto LABEL_189;
              }

              v265 = *(v264 + v261);
              *(v264 + v261) = *(v264 + v260);
              *(v264 + v260) = v265;
            }

            ++v263;
            v260 -= 8;
            v261 += 8;
          }

          while (v263 < v262);
        }

        v8 = v33;
LABEL_52:
        v118 = a3[1];
        if (v8 >= v118)
        {
          goto LABEL_97;
        }

        if (__OFSUB__(v8, v6))
        {
          goto LABEL_179;
        }

        if (v8 - v6 >= a4)
        {
          goto LABEL_97;
        }

        v119 = v6 + a4;
        if (__OFADD__(v6, a4))
        {
          goto LABEL_180;
        }

        if (v119 >= v118)
        {
          v119 = a3[1];
        }

        if (v119 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v8 == v119)
        {
          goto LABEL_97;
        }

        v268 = v7;
        v288 = *a3;
        v120 = *a3 + 8 * v8 - 8;
        v121 = v6 - v8;
        v271 = v119;
        while (2)
        {
          v122 = *(v288 + 8 * v8);
          v273 = v121;
          v275 = v120;
          v277 = v8;
          v123 = v120;
          while (2)
          {
            v124 = *v123;
            v125 = swift_unknownObjectWeakLoadStrong();
            if (!v125)
            {

              v148 = 0.0;
              v149 = 0.0;
              v150 = 0.0;
              v151 = 0.0;
              goto LABEL_76;
            }

            v126 = v125;
            v127 = *(v122 + 16);
            v128 = *(v122 + 24);
            v129 = swift_getObjectType();

            [v127 frame];
            v131 = v130;
            v133 = v132;
            v135 = v134;
            v137 = v136;
            v138 = (*(v128 + 48))(v129, v128);
            if (v138)
            {
              v139 = v138;
              [v138 frame];
              v141 = v140;
              v143 = v142;
              v145 = v144;
              v147 = v146;

              v327.origin.x = 0.0;
              v327.origin.y = 0.0;
              v327.size.width = 0.0;
              v327.size.height = 0.0;
              v313.origin.x = v141;
              v313.origin.y = v143;
              v313.size.width = v145;
              v313.size.height = v147;
              if (!CGRectEqualToRect(v313, v327))
              {
                goto LABEL_72;
              }
            }

            [v127 frame];
            v328.origin.x = 0.0;
            v328.origin.y = 0.0;
            v328.size.width = 0.0;
            v328.size.height = 0.0;
            if (!CGRectEqualToRect(v314, v328))
            {
              [v127 frame];
              v141 = v152;
              v143 = v153;
              v145 = v154;
              v147 = v155;
LABEL_72:
              *(v122 + 32) = 0u;
              *(v122 + 48) = 0u;
              *(v122 + 64) = 1;
              goto LABEL_74;
            }

            if (*(v122 + 64))
            {
              v141 = v131;
              v143 = v133;
              v145 = v135;
              v147 = v137;
            }

            else
            {
              v145 = *(v122 + 48);
              v147 = *(v122 + 56);
              v141 = *(v122 + 32);
              v143 = *(v122 + 40);
            }

LABEL_74:
            v156 = [v126 view];
            if (!v156)
            {
              goto LABEL_184;
            }

            v157 = v156;
            v158 = [v127 superview];
            [v157 convertRect:v158 fromView:{v141, v143, v145, v147}];
            v148 = v159;
            v149 = v160;
            v150 = v161;
            v151 = v162;

LABEL_76:
            v163 = swift_unknownObjectWeakLoadStrong();
            if (!v163)
            {
              rectd = 0.0;
              v182 = 0.0;
              v183 = 0.0;
              v184 = 0.0;
              goto LABEL_88;
            }

            v164 = v163;
            v165 = *(v124 + 16);
            v166 = *(v124 + 24);
            v167 = swift_getObjectType();
            [v165 frame];
            rectc = v168;
            v284 = v170;
            v286 = v169;
            v282 = v171;
            v172 = (*(v166 + 48))(v167, v166);
            if (v172)
            {
              v173 = v172;
              [v172 frame];
              v175 = v174;
              v177 = v176;
              v179 = v178;
              v181 = v180;

              v329.origin.x = 0.0;
              v329.origin.y = 0.0;
              v329.size.width = 0.0;
              v329.size.height = 0.0;
              v315.origin.x = v175;
              v315.origin.y = v177;
              v315.size.width = v179;
              v315.size.height = v181;
              if (!CGRectEqualToRect(v315, v329))
              {
                goto LABEL_84;
              }
            }

            [v165 frame];
            v330.origin.x = 0.0;
            v330.origin.y = 0.0;
            v330.size.width = 0.0;
            v330.size.height = 0.0;
            if (!CGRectEqualToRect(v316, v330))
            {
              [v165 frame];
              v175 = v185;
              v177 = v186;
              v179 = v187;
              v181 = v188;
LABEL_84:
              *(v124 + 32) = 0u;
              *(v124 + 48) = 0u;
              *(v124 + 64) = 1;
              goto LABEL_86;
            }

            if (*(v124 + 64))
            {
              v175 = rectc;
              v179 = v284;
              v177 = v286;
              v181 = v282;
            }

            else
            {
              v179 = *(v124 + 48);
              v181 = *(v124 + 56);
              v175 = *(v124 + 32);
              v177 = *(v124 + 40);
            }

LABEL_86:
            v189 = [v164 view];
            if (!v189)
            {
              goto LABEL_185;
            }

            v190 = v189;
            v191 = [v165 superview];
            [v190 convertRect:v191 fromView:{v175, v177, v179, v181}];
            rectd = v192;
            v182 = v193;
            v183 = v194;
            v184 = v195;

LABEL_88:
            v317.origin.x = v148;
            v317.origin.y = v149;
            v317.size.width = v150;
            v317.size.height = v151;
            v196 = v151;
            v197 = v150;
            v198 = v149;
            v199 = v148;
            v200 = CGRectGetMinY(v317);
            v318.origin.x = rectd;
            v318.origin.y = v182;
            v318.size.width = v183;
            v318.size.height = v184;
            if (v200 < CGRectGetMinY(v318))
            {

              goto LABEL_92;
            }

            v319.origin.x = v199;
            v319.origin.y = v198;
            v319.size.width = v197;
            v319.size.height = v196;
            v201 = CGRectGetMinY(v319);
            v320.origin.x = rectd;
            v320.origin.y = v182;
            v320.size.width = v183;
            v320.size.height = v184;
            if (v201 == CGRectGetMinY(v320))
            {
              v321.origin.x = v199;
              v321.origin.y = v198;
              v321.size.width = v197;
              v321.size.height = v196;
              v202 = CGRectGetMinX(v321);
              v322.origin.x = rectd;
              v322.origin.y = v182;
              v322.size.width = v183;
              v322.size.height = v184;
              v203 = CGRectGetMinX(v322);

              if (v202 >= v203)
              {
                goto LABEL_62;
              }

LABEL_92:
              if (!v288)
              {
                goto LABEL_183;
              }

              v204 = *v123;
              v122 = v123[1];
              *v123 = v122;
              v123[1] = v204;
              --v123;
              if (__CFADD__(v121++, 1))
              {
                goto LABEL_62;
              }

              continue;
            }

            break;
          }

LABEL_62:
          v8 = v277 + 1;
          v120 = v275 + 8;
          v121 = v273 - 1;
          if (v277 + 1 != v271)
          {
            continue;
          }

          break;
        }

        v8 = v271;
        v7 = v268;
        v6 = v272;
LABEL_97:
        if (v8 < v6)
        {
          goto LABEL_178;
        }

        v278 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E172D878(0, *(v7 + 2) + 1, 1, v7);
        }

        v207 = *(v7 + 2);
        v206 = *(v7 + 3);
        v208 = v207 + 1;
        if (v207 >= v206 >> 1)
        {
          v7 = sub_1E172D878((v206 > 1), v207 + 1, 1, v7);
        }

        *(v7 + 2) = v208;
        v209 = v7 + 32;
        v210 = &v7[16 * v207 + 32];
        *v210 = v6;
        *(v210 + 1) = v278;
        v296 = v7;
        recte = *a1;
        if (!*a1)
        {
          goto LABEL_190;
        }

        if (v207)
        {
          v289 = v7 + 32;
          while (1)
          {
            v211 = v208 - 1;
            if (v208 >= 4)
            {
              break;
            }

            if (v208 == 3)
            {
              v212 = *(v7 + 4);
              v213 = *(v7 + 5);
              v222 = __OFSUB__(v213, v212);
              v214 = v213 - v212;
              v215 = v222;
LABEL_118:
              if (v215)
              {
                goto LABEL_169;
              }

              v228 = &v7[16 * v208];
              v230 = *v228;
              v229 = *(v228 + 1);
              v231 = __OFSUB__(v229, v230);
              v232 = v229 - v230;
              v233 = v231;
              if (v231)
              {
                goto LABEL_172;
              }

              v234 = &v209[16 * v211];
              v236 = *v234;
              v235 = *(v234 + 1);
              v222 = __OFSUB__(v235, v236);
              v237 = v235 - v236;
              if (v222)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v232, v237))
              {
                goto LABEL_176;
              }

              if (v232 + v237 >= v214)
              {
                if (v214 < v237)
                {
                  v211 = v208 - 2;
                }

                goto LABEL_139;
              }

              goto LABEL_132;
            }

            v238 = &v7[16 * v208];
            v240 = *v238;
            v239 = *(v238 + 1);
            v222 = __OFSUB__(v239, v240);
            v232 = v239 - v240;
            v233 = v222;
LABEL_132:
            if (v233)
            {
              goto LABEL_171;
            }

            v241 = &v209[16 * v211];
            v243 = *v241;
            v242 = *(v241 + 1);
            v222 = __OFSUB__(v242, v243);
            v244 = v242 - v243;
            if (v222)
            {
              goto LABEL_174;
            }

            if (v244 < v232)
            {
              goto LABEL_3;
            }

LABEL_139:
            if (v211 - 1 >= v208)
            {
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v249 = *a3;
            if (!*a3)
            {
              goto LABEL_186;
            }

            v250 = v7;
            v251 = &v209[16 * v211 - 16];
            v252 = *v251;
            v253 = v211;
            v254 = &v209[16 * v211];
            v255 = *(v254 + 1);
            v256 = (v249 + 8 * *v251);
            v257 = (v249 + 8 * *v254);
            v258 = (v249 + 8 * v255);

            sub_1E1547FBC(v256, v257, v258, recte);
            if (v280)
            {

              goto LABEL_160;
            }

            if (v255 < v252)
            {
              goto LABEL_164;
            }

            v259 = *(v250 + 2);
            if (v253 > v259)
            {
              goto LABEL_165;
            }

            *v251 = v252;
            *(v251 + 1) = v255;
            if (v253 >= v259)
            {
              goto LABEL_166;
            }

            v208 = v259 - 1;
            memmove(v254, v254 + 16, 16 * (v259 - 1 - v253));
            v7 = v250;
            *(v250 + 2) = v259 - 1;
            v209 = v289;
            if (v259 <= 2)
            {
LABEL_3:
              v296 = v7;
              goto LABEL_4;
            }
          }

          v216 = &v209[16 * v208];
          v217 = *(v216 - 8);
          v218 = *(v216 - 7);
          v222 = __OFSUB__(v218, v217);
          v219 = v218 - v217;
          if (v222)
          {
            goto LABEL_167;
          }

          v221 = *(v216 - 6);
          v220 = *(v216 - 5);
          v222 = __OFSUB__(v220, v221);
          v214 = v220 - v221;
          v215 = v222;
          if (v222)
          {
            goto LABEL_168;
          }

          v223 = &v7[16 * v208];
          v225 = *v223;
          v224 = *(v223 + 1);
          v222 = __OFSUB__(v224, v225);
          v226 = v224 - v225;
          if (v222)
          {
            goto LABEL_170;
          }

          v222 = __OFADD__(v214, v226);
          v227 = v214 + v226;
          if (v222)
          {
            goto LABEL_173;
          }

          if (v227 >= v219)
          {
            v245 = &v209[16 * v211];
            v247 = *v245;
            v246 = *(v245 + 1);
            v222 = __OFSUB__(v246, v247);
            v248 = v246 - v247;
            if (v222)
            {
              goto LABEL_177;
            }

            if (v214 < v248)
            {
              v211 = v208 - 2;
            }

            goto LABEL_139;
          }

          goto LABEL_118;
        }

LABEL_4:
        v6 = v278;
        v4 = a3[1];
        a4 = v269;
        if (v278 >= v4)
        {
          goto LABEL_157;
        }

        goto LABEL_5;
      }
    }
  }

  swift_retain_n();
LABEL_157:
  v266 = *a1;
  if (!*a1)
  {
    goto LABEL_191;
  }

  sub_1E1548BA0(&v296, v266, a3);
  if (v280)
  {

LABEL_160:
  }

  else
  {
  }
}
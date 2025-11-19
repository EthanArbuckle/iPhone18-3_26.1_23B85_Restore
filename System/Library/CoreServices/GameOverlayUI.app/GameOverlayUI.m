uint64_t sub_1000025D0(uint64_t *a1)
{
  v1 = *a1;
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002638(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000272C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100003F30(&qword_10012CC50, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000272C()
{
  result = qword_10012CC48;
  if (!qword_10012CC48)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CC48);
  }

  return result;
}

uint64_t sub_10000277C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v37 = a6;
    v38 = a7;
    v39 = v8;
    v36 = type metadata accessor for _TaskModifier2();
    v17 = *(v36 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin();
    v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v41, "View.task @ ");
      BYTE5(v41[1]) = 0;
      HIWORD(v41[1]) = -5120;
      v27._countAndFlagsBits = a3;
      v27._object = a4;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v40 = a5;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = *(*(type metadata accessor for TaskPriority() - 8) + 64);
    __chkstk_darwin();
    (*(v32 + 16))(&v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v33 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
    (*(*(v33 - 8) + 16))(a8, v39, v33);
    v34 = sub_100002B38(&qword_10012CC60, &qword_1000E8E60);
    return (*(v17 + 32))(a8 + *(v34 + 36), v20, v36);
  }

  else
  {
    v21 = (a8 + *(sub_100002B38(&qword_10012CC68, &qword_1000E8E68) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

uint64_t sub_100002B38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002B80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v34 = a6;
    v35 = a7;
    v36 = v8;
    v33 = type metadata accessor for _TaskModifier2();
    v17 = *(v33 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin();
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v38, "View.task @ ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      v25._countAndFlagsBits = a3;
      v25._object = a4;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v37 = a5;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = *(*(type metadata accessor for TaskPriority() - 8) + 64);
    __chkstk_darwin();
    (*(v30 + 16))(&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_1000035B4(v36, a8, &qword_10012CC70, &unk_1000E8E70);
    v31 = sub_100002B38(&qword_10012CC78, &qword_1000EDC40);
    return (*(v17 + 32))(a8 + *(v31 + 36), v20, v33);
  }

  else
  {
    v21 = (a8 + *(sub_100002B38(&qword_10012CC80, &unk_1000E8E80) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_1000035B4(v8, a8, &qword_10012CC70, &unk_1000E8E70);
  }
}

uint64_t sub_100002EBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v37 = a6;
    v38 = a7;
    v39 = v8;
    v36 = type metadata accessor for _TaskModifier2();
    v17 = *(v36 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin();
    v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v41, "View.task @ ");
      BYTE5(v41[1]) = 0;
      HIWORD(v41[1]) = -5120;
      v27._countAndFlagsBits = a3;
      v27._object = a4;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v40 = a5;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = *(*(type metadata accessor for TaskPriority() - 8) + 64);
    __chkstk_darwin();
    (*(v32 + 16))(&v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v33 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
    (*(*(v33 - 8) + 16))(a8, v39, v33);
    v34 = sub_100002B38(&qword_10012CC90, &qword_1000E8E90);
    return (*(v17 + 32))(a8 + *(v34 + 36), v20, v36);
  }

  else
  {
    v21 = (a8 + *(sub_100002B38(&qword_10012CC98, &qword_1000E8E98) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = sub_100002B38(&qword_10012CC88, &unk_1000EDBA0);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

uint64_t sub_100003278@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v34 = a6;
    v35 = a7;
    v36 = v8;
    v33 = type metadata accessor for _TaskModifier2();
    v17 = *(v33 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin();
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v38, "View.task @ ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      v25._countAndFlagsBits = a3;
      v25._object = a4;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v37 = a5;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = *(*(type metadata accessor for TaskPriority() - 8) + 64);
    __chkstk_darwin();
    (*(v30 + 16))(&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_1000035B4(v36, a8, &qword_10012CCA0, &qword_1000E8EA0);
    v31 = sub_100002B38(&qword_10012CCA8, &qword_1000E8EA8);
    return (*(v17 + 32))(a8 + *(v31 + 36), v20, v33);
  }

  else
  {
    v21 = (a8 + *(sub_100002B38(&qword_10012CCB0, &unk_1000E8EB0) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    return sub_1000035B4(v8, a8, &qword_10012CCA0, &qword_1000E8EA0);
  }
}

uint64_t sub_1000035B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000361C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v37 = a6;
    v38 = a7;
    v39 = v8;
    v36 = type metadata accessor for _TaskModifier2();
    v17 = *(v36 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin();
    v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v41, "View.task @ ");
      BYTE5(v41[1]) = 0;
      HIWORD(v41[1]) = -5120;
      v27._countAndFlagsBits = a3;
      v27._object = a4;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v40 = a5;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);
    }

    v30 = *(*(type metadata accessor for TaskPriority() - 8) + 64);
    __chkstk_darwin();
    (*(v32 + 16))(&v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    v33 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
    (*(*(v33 - 8) + 16))(a8, v39, v33);
    v34 = sub_100002B38(&qword_10012CCC0, &unk_1000E8EC0);
    return (*(v17 + 32))(a8 + *(v34 + 36), v20, v36);
  }

  else
  {
    v21 = (a8 + *(sub_100002B38(&qword_10012CCC8, &unk_1000EDD50) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;
    v24 = sub_100002B38(&qword_10012CCB8, &unk_1000EDC90);
    v25 = *(*(v24 - 8) + 16);

    return v25(a8, v8, v24);
  }
}

uint64_t variable initialization expression of OverlayFlowAuthorityProvider.flowAuthority@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for FlowOrigin();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin();
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FlowPresentationContext();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for ActionMetrics() - 8) + 64);
  __chkstk_darwin();
  v13 = (*(*(sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v28 - v14;
  v16 = (*(*(sub_100002B38(&unk_1001324E0, &unk_1000EAAE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = &v28 - v17;
  v19 = *(*(type metadata accessor for FlowPage() - 8) + 64);
  __chkstk_darwin();
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v21 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.page(_:));
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = type metadata accessor for ReferrerData();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v34 = 0u;
  v35 = 0u;
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v8 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v4 + 104))(v7, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v31 + 104))(v30, enum case for FlowOrigin.inapp(_:), v32);
  v24 = type metadata accessor for FlowAction();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v36 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_100003F30(&qword_10012CCD8, &type metadata accessor for FlowAction);
  sub_100003F30(&qword_10012CCE0, &type metadata accessor for FlowAction);
  return FlowAuthority.init(content:)();
}

uint64_t sub_100003F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003F90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BootstrapResult();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of DashboardRequest.deepLinkDestination@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 3;
  return result;
}

__n128 sub_10000408C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000040B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ChildSlideTransition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ChildSlideTransition.Track(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ChildSlideTransition.Track(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000041F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004268(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for ParentPushPopAnimator.Track(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000042F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100004370@<X0>(uint64_t a1@<X8>)
{
  v36 = static VerticalAlignment.center.getter();
  sub_10000548C();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000054E0(v2, v4, v6 & 1);

  sub_1000054F0(v7, v9, v11 & 1);

  sub_1000054E0(v7, v9, v11 & 1);

  v37 = v11 & 1;
  v35 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v33 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static Color.white.getter();
  v22 = Color.opacity(_:)();

  LOBYTE(v2) = static Edge.Set.all.getter();
  v23 = (a1 + *(sub_100002B38(&qword_10012CD68, &qword_1000E9098) + 36));
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #20.0 }

  *v23 = _Q0;
  result = sub_100002B38(&qword_10012CDE0, &qword_1000E90D0);
  *&v23[*(result + 36)] = 256;
  *a1 = v36;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v37;
  *(a1 + 48) = v13;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v35;
  *(a1 + 88) = v33;
  *(a1 + 96) = v15;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = v21;
  *(a1 + 128) = 0;
  *(a1 + 136) = v22;
  *(a1 + 144) = v2;
  return result;
}

double sub_1000045E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100002B38(&qword_10012CD48, &qword_1000E9078);
  sub_100004690(a1, a2, a3 + *(v8 + 44), a4);
  LOBYTE(a2) = static Edge.Set.all.getter();
  v9 = a3 + *(sub_100002B38(&qword_10012CD18, &qword_1000E9058) + 36);
  *v9 = a2;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_100004690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v43 = a3;
  v7 = sub_100002B38(&qword_10012CD50, &qword_1000E9080);
  v41 = *(v7 - 8);
  v8 = v41;
  v42 = v7;
  v9 = *(v41 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_100002B38(&qword_10012CD58, &qword_1000E9088);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0x4030000000000000;
  v22[16] = 0;
  v23 = sub_100002B38(&qword_10012CD60, &qword_1000E9090);
  sub_1000049F8(a1, a2, &v22[*(v23 + 44)], a4);
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v25 = &v22[*(v16 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a1;
  *(v30 + 32) = a2;
  sub_10000519C(a1);
  sub_100002B38(&qword_10012CD68, &qword_1000E9098);
  sub_1000051AC();
  ForEach<>.init(_:content:)();
  sub_1000035B4(v22, v20, &qword_10012CD58, &qword_1000E9088);
  v31 = *(v8 + 16);
  v32 = v14;
  v33 = v14;
  v34 = v42;
  v31(v12, v32, v42);
  v35 = v43;
  sub_1000035B4(v20, v43, &qword_10012CD58, &qword_1000E9088);
  v36 = sub_100002B38(&qword_10012CDE8, &qword_1000E90D8);
  v31((v35 + *(v36 + 48)), v12, v34);
  v37 = v35 + *(v36 + 64);
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = *(v41 + 8);
  v38(v33, v34);
  sub_100005688(v22, &qword_10012CD58, &qword_1000E9088);
  v38(v12, v34);
  return sub_100005688(v20, &qword_10012CD58, &qword_1000E9088);
}

uint64_t sub_1000049F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v46 = a1;
  v47 = a2;
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  v8 = *(v7 + 64);
  (__chkstk_darwin)();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100002B38(&qword_10012CDF8, &qword_1000E9110);
  v50 = *(v48 - 8);
  v11 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v13 = &v42 - v12;
  v14 = (sub_100002B38(&qword_10012CE00, &qword_1000E9118) - 8);
  v15 = *(*v14 + 64);
  v16 = (__chkstk_darwin)();
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.title.getter();
  v25 = Text.font(_:)();
  v42 = v26;
  v43 = v25;
  v44 = v27;
  v45 = v28;

  sub_1000054E0(v20, v22, v24 & 1);

  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  v30 = v46;
  v31 = v47;
  *(v29 + 24) = v46;
  *(v29 + 32) = v31;
  sub_10000519C(v30);
  sub_100002B38(&qword_10012CE08, &unk_1000E9120);
  sub_100005578();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_1000057D8(&qword_10012CE28, &qword_10012CDF8, &qword_1000E9110);
  sub_100005630();
  v32 = v48;
  v33 = v51;
  View.buttonStyle<A>(_:)();
  (*(v52 + 8))(v10, v33);
  (*(v50 + 8))(v13, v32);
  v34 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v19[v14[11]];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = v49;
  sub_1000035B4(v19, v49, &qword_10012CE00, &qword_1000E9118);
  v39 = v42;
  v38 = v43;
  *a3 = v43;
  *(a3 + 8) = v39;
  LOBYTE(v34) = v44 & 1;
  *(a3 + 16) = v44 & 1;
  *(a3 + 24) = v45;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v40 = sub_100002B38(&qword_10012CE38, &qword_1000E9130);
  sub_1000035B4(v37, a3 + *(v40 + 64), &qword_10012CE00, &qword_1000E9118);
  sub_1000054F0(v38, v39, v34);

  sub_100005688(v19, &qword_10012CE00, &qword_1000E9118);
  sub_100005688(v37, &qword_10012CE00, &qword_1000E9118);
  sub_1000054E0(v38, v39, v34);
}

uint64_t sub_100004E64@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.largeTitle.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_100004EC8@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_100004370(a1);
}

uint64_t sub_100004FA4@<X0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  v7 = *(v1 + 1);
  static Axis.Set.vertical.getter();
  sub_100002B38(&qword_10012CD18, &qword_1000E9058);
  sub_10000508C();
  ScrollView.init(_:showsIndicators:content:)();
  v3 = a1 + *(sub_100002B38(&qword_10012CD38, &qword_1000E9068) + 36);
  static Material.regular.getter();
  v4 = static Edge.Set.all.getter();
  result = sub_100002B38(&qword_10012CD40, &qword_1000E9070);
  *(v3 + *(result + 36)) = v4;
  return result;
}

unint64_t sub_10000508C()
{
  result = qword_10012CD20;
  if (!qword_10012CD20)
  {
    sub_100005144(&qword_10012CD18, &qword_1000E9058);
    sub_1000057D8(&qword_10012CD28, &qword_10012CD30, &qword_1000E9060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD20);
  }

  return result;
}

uint64_t sub_100005144(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005190@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100004EC8(a1);
}

uint64_t sub_10000519C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000051AC()
{
  result = qword_10012CD70;
  if (!qword_10012CD70)
  {
    sub_100005144(&qword_10012CD68, &qword_1000E9098);
    sub_100005264();
    sub_1000057D8(&qword_10012CDD8, &qword_10012CDE0, &qword_1000E90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD70);
  }

  return result;
}

unint64_t sub_100005264()
{
  result = qword_10012CD78;
  if (!qword_10012CD78)
  {
    sub_100005144(&qword_10012CD80, &qword_1000E90A0);
    sub_10000531C();
    sub_1000057D8(&qword_10012CDC8, &qword_10012CDD0, &qword_1000E90C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD78);
  }

  return result;
}

unint64_t sub_10000531C()
{
  result = qword_10012CD88;
  if (!qword_10012CD88)
  {
    sub_100005144(&qword_10012CD90, &qword_1000E90A8);
    sub_1000053A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD88);
  }

  return result;
}

unint64_t sub_1000053A8()
{
  result = qword_10012CD98;
  if (!qword_10012CD98)
  {
    sub_100005144(&qword_10012CDA0, &qword_1000E90B0);
    sub_1000057D8(&qword_10012CDA8, &qword_10012CDB0, &qword_1000E90B8);
    sub_1000057D8(&qword_10012CDB8, &qword_10012CDC0, &qword_1000E90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CD98);
  }

  return result;
}

unint64_t sub_10000548C()
{
  result = qword_10012CDF0;
  if (!qword_10012CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CDF0);
  }

  return result;
}

uint64_t sub_1000054E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000054F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005508()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_100005548()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

unint64_t sub_100005578()
{
  result = qword_10012CE10;
  if (!qword_10012CE10)
  {
    sub_100005144(&qword_10012CE08, &unk_1000E9120);
    sub_1000057D8(&qword_10012CE18, &qword_10012CE20, &qword_1000EC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE10);
  }

  return result;
}

unint64_t sub_100005630()
{
  result = qword_10012CE30;
  if (!qword_10012CE30)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE30);
  }

  return result;
}

uint64_t sub_100005688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002B38(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000056F4()
{
  result = qword_10012CE40;
  if (!qword_10012CE40)
  {
    sub_100005144(&qword_10012CD38, &qword_1000E9068);
    sub_1000057D8(&qword_10012CE48, &qword_10012CE50, &unk_1000E9168);
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CE40);
  }

  return result;
}

uint64_t sub_1000057D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessPointShaderTransitionView.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessPointShaderTransitionView.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000059A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[14];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[16];
    goto LABEL_7;
  }

  v11 = type metadata accessor for AccessPointContainer();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[17];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[18]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100005B24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
  }

  else
  {
    v12 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[16];
    }

    else
    {
      result = type metadata accessor for AccessPointContainer();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[18]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[17];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_100005CA8()
{
  sub_100005F3C(319, &qword_10012CED0, type metadata accessor for RemoteAlertAccessPointContext, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100013714(319, &qword_10012CED8, &type metadata for AccessPointShaderTransitionView.AnimationState, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100013714(319, &qword_10012CEE0, &type metadata for Int, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100013714(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100005F3C(319, &qword_10012CEF0, type metadata accessor for CGPoint, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100005F3C(319, &qword_10012CEF8, &type metadata accessor for AccessPointAnchoring, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100005F3C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                type metadata accessor for AccessPointContainer();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for GameDashboardLaunchContext();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for BaseObjectGraph();
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

void sub_100005F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100005FA4()
{
  result = qword_10012CF68;
  if (!qword_10012CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CF68);
  }

  return result;
}

double sub_100005FF8@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v42 = 1;
  sub_10000633C(&v26);
  v56 = v38;
  v57 = v39;
  v58[0] = v40[0];
  *(v58 + 9) = *(v40 + 9);
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v59[12] = v38;
  v59[13] = v39;
  v60[0] = v40[0];
  *(v60 + 9) = *(v40 + 9);
  v59[8] = v34;
  v59[9] = v35;
  v59[10] = v36;
  v59[11] = v37;
  v59[4] = v30;
  v59[5] = v31;
  v59[6] = v32;
  v59[7] = v33;
  v59[0] = v26;
  v59[1] = v27;
  v59[2] = v28;
  v59[3] = v29;
  sub_1000035B4(&v44, &v25, &qword_10012D510, &qword_1000E98B8);
  sub_100005688(v59, &qword_10012D510, &qword_1000E98B8);
  *&v41[199] = v56;
  *&v41[215] = v57;
  *&v41[231] = v58[0];
  *&v41[240] = *(v58 + 9);
  *&v41[135] = v52;
  *&v41[151] = v53;
  *&v41[167] = v54;
  *&v41[183] = v55;
  *&v41[71] = v48;
  *&v41[87] = v49;
  *&v41[103] = v50;
  *&v41[119] = v51;
  *&v41[7] = v44;
  *&v41[23] = v45;
  *&v41[39] = v46;
  *&v41[55] = v47;
  v3 = v42;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v43[7] = v26;
  *&v43[23] = v27;
  *&v43[39] = v28;
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  v5 = static Edge.Set.all.getter();
  v6 = (a1 + *(sub_100002B38(&qword_10012D500, &qword_1000E98A8) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  *&v6[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  v15 = *&v41[208];
  *(a1 + 209) = *&v41[192];
  *(a1 + 225) = v15;
  v16 = *&v41[240];
  *(a1 + 241) = *&v41[224];
  *(a1 + 257) = v16;
  v17 = *&v41[144];
  *(a1 + 145) = *&v41[128];
  *(a1 + 161) = v17;
  v18 = *&v41[176];
  *(a1 + 177) = *&v41[160];
  *(a1 + 193) = v18;
  v19 = *&v41[80];
  *(a1 + 81) = *&v41[64];
  *(a1 + 97) = v19;
  v20 = *&v41[112];
  *(a1 + 113) = *&v41[96];
  *(a1 + 129) = v20;
  v21 = *&v41[16];
  *(a1 + 17) = *v41;
  *(a1 + 33) = v21;
  v22 = *&v41[48];
  *(a1 + 49) = *&v41[32];
  *(a1 + 65) = v22;
  v23 = *&v43[16];
  *(a1 + 273) = *v43;
  *(a1 + 289) = v23;
  result = *&v43[32];
  *(a1 + 305) = *&v43[32];
  *(a1 + 320) = *&v43[47];
  *(a1 + 328) = v4;
  *(a1 + 336) = v5;
  return result;
}

uint64_t sub_10000633C@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v73[0]) = 1;
  *&v56[6] = v58;
  *&v56[22] = v59;
  *&v56[38] = v60;
  LOBYTE(v2) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = static HorizontalAlignment.center.getter();
  LOBYTE(v73[0]) = 1;
  sub_10000680C(v61);
  *&v55[7] = v61[0];
  *&v55[23] = v61[1];
  *&v55[39] = v61[2];
  *&v55[55] = v61[3];
  LOBYTE(v3) = v73[0];
  v17 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v63[0] = v7;
  v63[1] = 0;
  LOWORD(v64[0]) = 257;
  *(v64 + 2) = *v56;
  *(&v64[1] + 2) = *&v56[16];
  *(&v64[2] + 2) = *&v56[32];
  *&v64[3] = *&v56[46];
  BYTE8(v64[3]) = v2;
  HIDWORD(v64[3]) = *&v57[3];
  *(&v64[3] + 9) = *v57;
  *&v65 = v9;
  *(&v65 + 1) = v11;
  *&v66 = v13;
  *(&v66 + 1) = v15;
  LOBYTE(v54[0]) = 0;
  v52 = v65;
  v53 = v66;
  v51 = v64[3];
  v49 = v64[1];
  v50 = v64[2];
  v47 = v7;
  v48 = v64[0];
  v68[0] = v16;
  v68[1] = 0;
  LOBYTE(v69[0]) = v3;
  v18 = *v55;
  *(v69 + 1) = *v55;
  *&v69[4] = *&v55[63];
  v19 = *&v55[48];
  *(&v69[3] + 1) = *&v55[48];
  v20 = *&v55[32];
  *(&v69[2] + 1) = *&v55[32];
  v21 = *&v55[16];
  *(&v69[1] + 1) = *&v55[16];
  BYTE8(v69[4]) = v17;
  HIDWORD(v69[4]) = *&v62[3];
  *(&v69[4] + 9) = *v62;
  *&v70 = v22;
  *(&v70 + 1) = v23;
  *&v71 = v24;
  *(&v71 + 1) = v25;
  *(&v54[7] + 8) = v71;
  BYTE8(v54[8]) = 0;
  *(&v54[6] + 8) = v70;
  *(&v54[5] + 8) = v69[4];
  *(v54 + 8) = v16;
  *(&v54[4] + 8) = v69[3];
  *(&v54[3] + 8) = v69[2];
  *(&v54[2] + 8) = v69[1];
  *(&v54[1] + 8) = v69[0];
  v26 = v54[6];
  a1[12] = v54[5];
  a1[13] = v26;
  a1[14] = v54[7];
  *(a1 + 233) = *(&v54[7] + 9);
  v27 = v54[2];
  a1[8] = v54[1];
  a1[9] = v27;
  v28 = v54[4];
  a1[10] = v54[3];
  a1[11] = v28;
  v29 = v52;
  a1[4] = v51;
  a1[5] = v29;
  v30 = v54[0];
  a1[6] = v53;
  a1[7] = v30;
  v31 = v48;
  *a1 = v47;
  a1[1] = v31;
  v32 = v50;
  a1[2] = v49;
  a1[3] = v32;
  v67 = 0;
  v72 = 0;
  v73[0] = v16;
  v73[1] = 0;
  v74 = v3;
  v76 = v21;
  v77 = v20;
  *v78 = v19;
  *&v78[15] = *&v55[63];
  v75 = v18;
  v79 = v17;
  *v80 = *v62;
  *&v80[3] = *&v62[3];
  v81 = v22;
  v82 = v23;
  v83 = v24;
  v84 = v25;
  v85 = 0;
  sub_1000035B4(v63, v35, &qword_10012D518, &qword_1000E98C0);
  sub_1000035B4(v68, v35, &qword_10012D520, &qword_1000E98C8);
  sub_100005688(v73, &qword_10012D520, &qword_1000E98C8);
  v35[0] = v7;
  v35[1] = 0;
  v36 = 257;
  v37 = *v56;
  v38 = *&v56[16];
  *v39 = *&v56[32];
  *&v39[14] = *&v56[46];
  v40 = v2;
  *v41 = *v57;
  *&v41[3] = *&v57[3];
  v42 = v9;
  v43 = v11;
  v44 = v13;
  v45 = v15;
  v46 = 0;
  return sub_100005688(v35, &qword_10012D518, &qword_1000E98C0);
}

uint64_t sub_10000680C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v25 = v8;
  v26 = v7;
  v24 = v9;
  v27 = v10;

  sub_1000054E0(v2, v4, v6 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  static Font.footnote.getter();
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1000054E0(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_1000054F0(v26, v25, v24 & 1);

  sub_1000054F0(v16, v18, v20 & 1);

  sub_1000054E0(v16, v18, v20 & 1);

  sub_1000054E0(v26, v25, v24 & 1);
}

uint64_t sub_100006A18@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100002B38(&qword_10012D528, &qword_1000E98D0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v25 = &v24 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100002B38(&qword_10012D530, &qword_1000E98D8);
  sub_100006CE8(&v17[*(v18 + 44)]);
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100006CE8(&v15[*(v18 + 44)]);
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_100006CE8(&v12[*(v18 + 44)]);
  sub_1000035B4(v17, v9, &qword_10012D528, &qword_1000E98D0);
  v19 = v25;
  sub_1000035B4(v15, v25, &qword_10012D528, &qword_1000E98D0);
  v20 = v26;
  sub_1000035B4(v12, v26, &qword_10012D528, &qword_1000E98D0);
  v21 = v27;
  sub_1000035B4(v9, v27, &qword_10012D528, &qword_1000E98D0);
  v22 = sub_100002B38(&qword_10012D538, &qword_1000E98E0);
  sub_1000035B4(v19, v21 + *(v22 + 48), &qword_10012D528, &qword_1000E98D0);
  sub_1000035B4(v20, v21 + *(v22 + 64), &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v12, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v15, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v17, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v20, &qword_10012D528, &qword_1000E98D0);
  sub_100005688(v19, &qword_10012D528, &qword_1000E98D0);
  return sub_100005688(v9, &qword_10012D528, &qword_1000E98D0);
}

uint64_t sub_100006CE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002B38(&qword_10012D500, &qword_1000E98A8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  sub_100005FF8(&v17 - v13);
  sub_100005FF8(v12);
  sub_1000035B4(v14, v9, &qword_10012D500, &qword_1000E98A8);
  sub_1000035B4(v12, v6, &qword_10012D500, &qword_1000E98A8);
  sub_1000035B4(v9, a1, &qword_10012D500, &qword_1000E98A8);
  v15 = sub_100002B38(&qword_10012D508, &qword_1000E98B0);
  sub_1000035B4(v6, a1 + *(v15 + 48), &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v12, &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v14, &qword_10012D500, &qword_1000E98A8);
  sub_100005688(v6, &qword_10012D500, &qword_1000E98A8);
  return sub_100005688(v9, &qword_10012D500, &qword_1000E98A8);
}

uint64_t sub_100006E94@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100002B38(&qword_10012D4E8, &qword_1000E9890);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v25 = &v24 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100002B38(&qword_10012D4F0, &qword_1000E9898);
  sub_100006CE8(&v17[*(v18 + 44)]);
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100006CE8(&v15[*(v18 + 44)]);
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_100006CE8(&v12[*(v18 + 44)]);
  sub_1000035B4(v17, v9, &qword_10012D4E8, &qword_1000E9890);
  v19 = v25;
  sub_1000035B4(v15, v25, &qword_10012D4E8, &qword_1000E9890);
  v20 = v26;
  sub_1000035B4(v12, v26, &qword_10012D4E8, &qword_1000E9890);
  v21 = v27;
  sub_1000035B4(v9, v27, &qword_10012D4E8, &qword_1000E9890);
  v22 = sub_100002B38(&qword_10012D4F8, &qword_1000E98A0);
  sub_1000035B4(v19, v21 + *(v22 + 48), &qword_10012D4E8, &qword_1000E9890);
  sub_1000035B4(v20, v21 + *(v22 + 64), &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v12, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v15, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v17, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v20, &qword_10012D4E8, &qword_1000E9890);
  sub_100005688(v19, &qword_10012D4E8, &qword_1000E9890);
  return sub_100005688(v9, &qword_10012D4E8, &qword_1000E9890);
}

uint64_t sub_100007164@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_100002B38(&qword_10012D418, &qword_1000E97F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v40 - v7);
  v9 = sub_100002B38(&qword_10012D420, &qword_1000E97F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_100002B38(&qword_10012D428, &qword_1000E9800);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_100002B38(&qword_10012D430, &qword_1000E9808);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  *v8 = static Alignment.topTrailing.getter();
  v8[1] = v23;
  v24 = sub_100002B38(&qword_10012D438, &qword_1000E9810);
  sub_100007548(a1, a2, v8 + *(v24 + 44));
  static Alignment.center.getter();
  v25 = &v12[*(sub_100002B38(&qword_10012D440, &qword_1000E9818) + 44)];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v8, v25, &qword_10012D418, &qword_1000E97F0);
  v26 = (v25 + *(sub_100002B38(&qword_10012D448, &qword_1000E9820) + 36));
  v27 = v46;
  v26[4] = v45;
  v26[5] = v27;
  v26[6] = v47;
  v28 = v42;
  *v26 = v41;
  v26[1] = v28;
  v29 = v44;
  v26[2] = v43;
  v26[3] = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v12, v17, &qword_10012D420, &qword_1000E97F8);
  v30 = &v17[*(v14 + 44)];
  v31 = v53;
  *(v30 + 4) = v52;
  *(v30 + 5) = v31;
  *(v30 + 6) = v54;
  v32 = v49;
  *v30 = v48;
  *(v30 + 1) = v32;
  v33 = v51;
  *(v30 + 2) = v50;
  *(v30 + 3) = v33;
  v34 = static Color.teal.getter();
  LOBYTE(v14) = static Edge.Set.all.getter();
  sub_100014830(v17, v22, &qword_10012D428, &qword_1000E9800);
  v35 = &v22[*(v19 + 44)];
  *v35 = v34;
  v35[8] = v14;
  v36 = static SafeAreaRegions.all.getter();
  LOBYTE(v14) = static Edge.Set.all.getter();
  v37 = v40;
  sub_100014830(v22, v40, &qword_10012D430, &qword_1000E9808);
  result = sub_100002B38(&qword_10012D450, &qword_1000E9828);
  v39 = v37 + *(result + 36);
  *v39 = v36;
  *(v39 + 8) = v14;
  return result;
}

uint64_t sub_100007548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v82 = a1;
  v83 = a2;
  v80 = a3;
  v74 = type metadata accessor for Image.ResizingMode();
  v3 = *(v74 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v74);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012D458, &qword_1000E9830);
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = *(v78 + 64);
  v9 = __chkstk_darwin(v7);
  v77 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v74 - v11;
  v12 = sub_100002B38(&qword_10012D460, &qword_1000E9838);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v16 = sub_100002B38(&qword_10012D468, &qword_1000E9840);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v74 - v18;
  v20 = sub_100002B38(&qword_10012D470, &qword_1000E9848);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v74 - v22;
  v24 = sub_100002B38(&qword_10012D478, &qword_1000E9850);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v75 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = &v74 - v28;
  GeometryProxy.size.getter();
  v30 = v29;
  GeometryProxy.size.getter();
  if (v31 >= v30)
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v42 = sub_100002B38(&qword_10012D480, &qword_1000E9858);
    sub_100006A18(&v15[*(v42 + 44)]);
    v43 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v44 = &v15[*(v12 + 36)];
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_1000035B4(v15, v19, &qword_10012D460, &qword_1000E9838);
    swift_storeEnumTagMultiPayload();
    sub_100014898();
    sub_100014950();
    _ConditionalContent<>.init(storage:)();
    v39 = v15;
    v40 = &qword_10012D460;
    v41 = &qword_1000E9838;
  }

  else
  {
    *v23 = static HorizontalAlignment.center.getter();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v32 = sub_100002B38(&qword_10012D4E0, &qword_1000E9888);
    sub_100006E94(&v23[*(v32 + 44)]);
    v33 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v34 = &v23[*(v20 + 36)];
    *v34 = v33;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_1000035B4(v23, v19, &qword_10012D470, &qword_1000E9848);
    swift_storeEnumTagMultiPayload();
    sub_100014898();
    sub_100014950();
    _ConditionalContent<>.init(storage:)();
    v39 = v23;
    v40 = &qword_10012D470;
    v41 = &qword_1000E9848;
  }

  sub_100005688(v39, v40, v41);
  Image.init(systemName:)();
  v49 = v74;
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v74);
  v50 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v49);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v96;
  v52 = v97;
  v53 = v98;
  v54 = v99;
  v55 = v100;
  v56 = v101;
  v57 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v93 = v52;
  v92 = v54;
  v91 = 0;
  *&v84 = v50;
  *(&v84 + 1) = v51;
  LOBYTE(v85) = v52;
  *(&v85 + 1) = v53;
  LOBYTE(v86) = v54;
  *(&v86 + 1) = v55;
  *&v87 = v56;
  BYTE8(v87) = v57;
  *&v88 = v58;
  *(&v88 + 1) = v59;
  *&v89 = v60;
  *(&v89 + 1) = v61;
  v90 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v82;
  *(v62 + 24) = v83;

  sub_100002B38(&qword_10012D4B8, &qword_1000E9870);
  sub_100014A08();
  v63 = v76;
  View.onTapGesture(count:perform:)();

  v94[4] = v88;
  v94[5] = v89;
  v95 = v90;
  v94[0] = v84;
  v94[1] = v85;
  v94[2] = v86;
  v94[3] = v87;
  sub_100005688(v94, &qword_10012D4B8, &qword_1000E9870);
  v64 = v81;
  v65 = v75;
  sub_1000035B4(v81, v75, &qword_10012D478, &qword_1000E9850);
  v67 = v77;
  v66 = v78;
  v68 = *(v78 + 16);
  v69 = v79;
  v68(v77, v63, v79);
  v70 = v80;
  sub_1000035B4(v65, v80, &qword_10012D478, &qword_1000E9850);
  v71 = sub_100002B38(&qword_10012D4D8, &qword_1000E9880);
  v68((v70 + *(v71 + 48)), v67, v69);
  v72 = *(v66 + 8);
  v72(v63, v69);
  sub_100005688(v64, &qword_10012D478, &qword_1000E9850);
  v72(v67, v69);
  return sub_100005688(v65, &qword_10012D478, &qword_1000E9850);
}

uint64_t sub_100007C9C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_100014828;
  a1[1] = v5;
}

Swift::Int sub_100007D1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100007D90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

double sub_100007DF0()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  sub_100002B38(&qword_10012D008, &qword_1000E9430);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  return v8 / v3;
}

uint64_t sub_100007EC8()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPointShaderTransitionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 48);
  LOBYTE(v31) = *(v0 + 40);
  *(&v31 + 1) = v14;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (!v30)
  {
    v31 = *(v0 + 56);
    sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
    State.wrappedValue.getter();
    v16 = v30;
    v17 = v0 + *(v2 + 68);
    v18 = *(AccessPointContainer.items.getter() + 16);

    if (v16 < v18)
    {
      v19 = v3;
      v20 = *(v1 + 8);
      v21 = *(v1 + 16);

      if ((v21 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v22 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v19 = v3;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v10 + 8))(v13, v9);
        v20 = v31;
      }

      swift_getKeyPath();
      *&v31 = v20;
      sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v20 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
      {
        swift_getKeyPath();
        *&v31 = v20;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v23 = *(v20 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

        if (v23 > 0)
        {
          return result;
        }

        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
        v25 = v29;
        sub_100013BE4(v1, v29, type metadata accessor for AccessPointShaderTransitionView);
        type metadata accessor for MainActor();
        v26 = static MainActor.shared.getter();
        v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = &protocol witness table for MainActor;
        sub_10001212C(v25, v28 + v27, type metadata accessor for AccessPointShaderTransitionView);
        sub_100014BBC(0, 0, v8, &unk_1000E93A0, v28);
      }
    }
  }

  return result;
}

uint64_t sub_100008330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for AccessPointShaderTransitionView(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_100008468, v9, v8);
}

uint64_t sub_100008468()
{
  v1 = *(*(v0 + 48) + 68);
  *(v0 + 16) = *(*(v0 + 40) + 56);
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v3 = floor(AccessPointContainer.displayDuration(for:)(*(v0 + 32)) * 1000000000.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v2);
  }

  v4 = v3;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100008594;
  v2 = v4;

  return static Task<>.sleep(nanoseconds:)(v2);
}

uint64_t sub_100008594()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_100014BB8;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1000086B8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000086B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_100013BE4(v7, v3, type metadata accessor for AccessPointShaderTransitionView);
  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10001212C(v3, v11 + v10, type metadata accessor for AccessPointShaderTransitionView);
  sub_100014BBC(0, 0, v4, &unk_1000E93B0, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100008828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = type metadata accessor for AccessPointUseCase();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000899C, v12, v11);
}

uint64_t sub_10000899C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 160);

  v7 = type metadata accessor for AccessPointShaderTransitionView(0);
  v8 = *(v6 + *(v7 + 72));
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  (*(v4 + 104))(v3, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v5);
  sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
  LOBYTE(v8) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v2, v5);
  if ((v8 & 1) == 0)
  {
    v10 = *(v0 + 160);
    v12 = *(v10 + 56);
    v11 = *(v10 + 64);
    *(v0 + 16) = v12;
    *(v0 + 24) = v11;
    sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
    State.wrappedValue.getter();
    v13 = *(v0 + 128);
    v14 = *(v7 + 68);
    v15 = *(AccessPointContainer.items.getter() + 16);

    if (v13 >= v15 - 1)
    {
      v30 = *(v0 + 176);
      v29 = *(v0 + 184);
      v32 = *(v0 + 160);
      v31 = *(v0 + 168);
      AccessPointContainer.useCase.getter();
      v33 = AccessPointUseCase.isEphemeral.getter();
      (*(v30 + 8))(v29, v31);
      if (v33)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      v35 = *(v32 + 48);
      *(v0 + 32) = *(v32 + 40);
      *(v0 + 40) = v35;
      *(v0 + 248) = v34;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.setter();
      goto LABEL_15;
    }

    *(v0 + 48) = v12;
    *(v0 + 56) = v11;

    result = State.wrappedValue.getter();
    v17 = *(v0 + 136);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return result;
    }

    *(v0 + 64) = v12;
    *(v0 + 72) = v11;
    *(v0 + 144) = v19;
    State.wrappedValue.setter();

    *(v0 + 80) = v12;
    *(v0 + 88) = v11;
    State.wrappedValue.getter();
    if (*(v0 + 152) != 1)
    {
      goto LABEL_14;
    }

    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    AccessPointContainer.useCase.getter();
    (*(v23 + 104))(v21, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v22);
    sub_1000113C0(&qword_10012CFE8, &type metadata accessor for AccessPointUseCase);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    if (*(v0 + 96) == *(v0 + 112) && *(v0 + 104) == *(v0 + 120))
    {
      v28 = *(v27 + 8);
      v28(*(v0 + 192), *(v0 + 168));
      v28(v24, v26);
    }

    else
    {
      v36 = *(v0 + 104);
      v37 = *(v0 + 120);
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v39 = *(v27 + 8);
      v39(v25, v26);
      v39(v24, v26);

      if ((v38 & 1) == 0)
      {
LABEL_14:
        v41 = *(v0 + 160);
        sub_100007EC8();
        goto LABEL_15;
      }
    }

    v40 = *(v0 + 160);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    *(swift_task_alloc() + 16) = v40;
    withAnimation<A>(_:_:)();

    goto LABEL_14;
  }

LABEL_15:
  v43 = *(v0 + 224);
  v42 = *(v0 + 232);
  v45 = *(v0 + 192);
  v44 = *(v0 + 200);
  v46 = *(v0 + 184);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100008E1C()
{
  v0 = type metadata accessor for AccessPointAnchoring();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v8 = type metadata accessor for AccessPointShaderTransitionView(0);
  v9 = *(v8 + 60);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.getter();
  v10 = *(v8 + 56);
  (*(v1 + 16))(v5, v7, v0);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_100008F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = type metadata accessor for AccessPointAnchoring();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  __chkstk_darwin(v3);
  v80 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012D118, &qword_1000E9508);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  __chkstk_darwin(v6);
  v94 = &v79 - v8;
  v79 = type metadata accessor for AccessPointShaderTransitionView(0);
  v9 = *(v79 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v79);
  v11 = sub_100002B38(&qword_10012D120, &qword_1000E9510);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  v15 = sub_100002B38(&qword_10012D128, &qword_1000E9518);
  v99 = *(v15 - 8);
  v100 = v15;
  v16 = *(v99 + 64);
  __chkstk_darwin(v15);
  v92 = &v79 - v17;
  v96 = sub_100002B38(&qword_10012D130, &unk_1000E9520);
  v18 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v101 = &v79 - v19;
  v91 = static HorizontalAlignment.center.getter();
  sub_100013BE4(v2, &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
  v20 = *(v9 + 80);
  v21 = (v20 + 16) & ~v20;
  v102 = v10;
  v93 = v20;
  v22 = swift_allocObject();
  v95 = v21;
  v90 = v22;
  v103 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001212C(v103, v22 + v21, type metadata accessor for AccessPointShaderTransitionView);
  v89 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v118 = 0;
  v117 = 0;
  v31 = *(v2 + 24);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v119[3] + 7) = *(&v119[10] + 8);
  *(&v119[4] + 7) = *(&v119[11] + 8);
  *(&v119[5] + 7) = *(&v119[12] + 8);
  *(&v119[6] + 7) = *(&v119[13] + 8);
  *(v119 + 7) = *(&v119[7] + 8);
  *(&v119[1] + 7) = *(&v119[8] + 8);
  *(&v119[2] + 7) = *(&v119[9] + 8);
  v33 = *(v2 + 48);
  v112[0] = *(v2 + 40);
  v32 = v112[0];
  v113 = v33;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  v104 = v2;
  State.projectedValue.getter();
  v87 = v108;
  v88 = v107;
  v86 = v109;
  LOBYTE(v107) = v32;
  v108 = v33;
  State.wrappedValue.getter();
  v112[0] = v112[0] == 1;
  State.init(wrappedValue:)();
  v84 = v107;
  v85 = v108;
  v34 = static Color.clear.getter();
  v35 = &v14[*(v11 + 36)];
  v36 = v35 + *(sub_100002B38(&qword_10012D138, &unk_1000EA180) + 36);
  GameLayerBackgroundBlurView.init()();
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = &v36[*(sub_100002B38(&qword_10012D140, &qword_1000E9530) + 36)];
  *v40 = v37;
  v40[1] = v39;
  *v35 = v34;
  v41 = v35 + *(sub_100002B38(&qword_10012D148, &unk_1000EA190) + 36);
  v42 = *(type metadata accessor for RoundedRectangle() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  v45 = *(*(v44 - 8) + 104);
  v83 = v11;
  v45(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #30.0 }

  *v41 = _Q0;
  *&v41[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  v51 = static Alignment.center.getter();
  v53 = v52;
  v54 = (v35 + *(sub_100002B38(&qword_10012D150, &qword_1000E9538) + 36));
  *v54 = v51;
  v54[1] = v53;
  *v14 = v91;
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 5) = *&v112[3];
  *(v14 + 17) = *v112;
  v55 = v90;
  *(v14 + 3) = sub_100012828;
  *(v14 + 4) = v55;
  v14[40] = v89;
  *(v14 + 11) = *&v116[3];
  *(v14 + 41) = *v116;
  *(v14 + 6) = v24;
  *(v14 + 7) = v26;
  *(v14 + 8) = v28;
  *(v14 + 9) = v30;
  v14[80] = 0;
  v56 = v119[5];
  *(v14 + 145) = v119[4];
  *(v14 + 161) = v56;
  *(v14 + 177) = v119[6];
  v57 = *(&v119[6] + 15);
  v58 = v119[1];
  *(v14 + 81) = v119[0];
  *(v14 + 97) = v58;
  v59 = v119[3];
  *(v14 + 113) = v119[2];
  *(v14 + 129) = v59;
  v60 = v87;
  v61 = v88;
  *(v14 + 24) = v57;
  *(v14 + 25) = v61;
  *(v14 + 26) = v60;
  v14[216] = v86;
  *(v14 + 55) = *&v115[3];
  *(v14 + 217) = *v115;
  v14[224] = v84;
  *(v14 + 57) = *&v114[3];
  *(v14 + 225) = *v114;
  *(v14 + 29) = v85;
  v110 = type metadata accessor for Capsule();
  v111 = sub_1000113C0(&qword_10012D158, &type metadata accessor for Capsule);
  v62 = sub_100012854(&v107);
  v63 = v104;
  v45(v62, v43, v44);
  sub_1000128B8();
  v64 = v94;
  StrokeFocusEffect.init(shape:)();
  sub_1000057D8(&qword_10012D1B8, &qword_10012D118, &qword_1000E9508);
  v65 = v92;
  v66 = v98;
  View.focusEffect<A>(_:)();
  (*(v97 + 8))(v64, v66);
  sub_100005688(v14, &qword_10012D120, &qword_1000E9510);
  v67 = *(v63 + 136);
  LOBYTE(v107) = *(v63 + 128);
  v108 = v67;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v68 = 0.0;
  if ((v106 & 1) == 0)
  {
    v69 = *(v79 + 56);
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
    v70 = v80;
    State.wrappedValue.getter();
    LOBYTE(v69) = AccessPointAnchoring.bottom.getter();
    (*(v81 + 8))(v70, v82);
    if (v69)
    {
      v68 = 200.0;
    }

    else
    {
      v68 = -200.0;
    }
  }

  v71 = v101;
  (*(v99 + 32))(v101, v65, v100);
  v72 = v71 + *(v96 + 36);
  *v72 = 0;
  *(v72 + 8) = v68;
  v73 = v103;
  sub_100013BE4(v63, v103, type metadata accessor for AccessPointShaderTransitionView);
  v74 = v95;
  v75 = swift_allocObject();
  sub_10001212C(v73, v75 + v74, type metadata accessor for AccessPointShaderTransitionView);
  v76 = v105;
  sub_100014830(v71, v105, &qword_10012D130, &unk_1000E9520);
  result = sub_100002B38(&qword_10012D1C0, &qword_1000E9560);
  v78 = (v76 + *(result + 36));
  *v78 = sub_100012B34;
  v78[1] = v75;
  v78[2] = 0;
  v78[3] = 0;
  return result;
}

uint64_t sub_100009964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v53 = a3;
  v4 = type metadata accessor for AccessPointShaderTransitionView(0);
  v5 = v4 - 8;
  v47 = *(v4 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v4);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for GeometryProxy();
  v7 = *(v42 - 8);
  v44 = *(v7 + 64);
  __chkstk_darwin(v42);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TapGesture();
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002B38(&qword_10012D1C8, &qword_1000E9568);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v43 = &v40 - v17;
  v18 = type metadata accessor for AccessPointContentView(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v5 + 76);
  v23 = type metadata accessor for AccessPointContainer();
  (*(*(v23 - 8) + 16))(v21, a2 + v22, v23);
  v24 = *(a2 + 64);
  v56 = *(a2 + 56);
  v25 = v56;
  v57 = v24;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.projectedValue.getter();
  v40 = v54;
  v26 = v55;
  *&v54 = v25;
  *(&v54 + 1) = v24;
  State.wrappedValue.getter();
  v27 = &v21[*(v18 + 20)];
  *v27 = v40;
  *(v27 + 2) = v26;
  v28 = *(v18 + 24);
  State.init(wrappedValue:)();
  *&v21[v28] = v54;
  TapGesture.init(count:)();
  v30 = v41;
  v29 = v42;
  (*(v7 + 16))(v41, v46, v42);
  v31 = v45;
  sub_100013BE4(a2, v45, type metadata accessor for AccessPointShaderTransitionView);
  v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = (v44 + *(v47 + 80) + v32) & ~*(v47 + 80);
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v32, v30, v29);
  sub_10001212C(v31, v34 + v33, type metadata accessor for AccessPointShaderTransitionView);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100012F00;
  *(v35 + 24) = v34;
  v36 = v43;
  v37 = v49;
  Gesture.onEnded(_:)();

  (*(v50 + 8))(v13, v37);
  static GestureMask.all.getter();
  sub_1000113C0(&qword_10012D1D0, type metadata accessor for AccessPointContentView);
  sub_1000057D8(&qword_10012D1D8, &qword_10012D1C8, &qword_1000E9568);
  v38 = v51;
  View.simultaneousGesture<A>(_:including:)();
  (*(v52 + 8))(v36, v38);
  return sub_100012FF4(v21);
}

uint64_t sub_100009EC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GlobalCoordinateSpace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v4 + 8))(v7, v3);
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  MidY = CGRectGetMidY(v24);
  v18 = *(a2 + 120);
  v21 = *(a2 + 104);
  v22 = v18;
  *v20 = MidX;
  *&v20[1] = MidY;
  sub_100002B38(&qword_10012D008, &qword_1000E9430);
  return State.wrappedValue.setter();
}

uint64_t sub_10000A03C(uint64_t a1)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (!v3)
  {
    v2 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10000A11C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = sub_100002B38(&qword_10012D0A8, &qword_1000E94B8);
  v3 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v56 = (&v56 - v4);
  v62 = sub_100002B38(&qword_10012D0B0, &qword_1000E94C0);
  v5 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v57 = &v56 - v6;
  v65 = sub_100002B38(&qword_10012D0B8, &qword_1000E94C8);
  v7 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v67 = &v56 - v8;
  v59 = sub_100002B38(&qword_10012D0C0, &qword_1000E94D0);
  v9 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v61 = &v56 - v10;
  v66 = sub_100002B38(&qword_10012D0C8, &qword_1000E94D8);
  v11 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v63 = &v56 - v12;
  v60 = sub_100002B38(&qword_10012D0D0, &qword_1000E94E0);
  v13 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v58 = (&v56 - v14);
  v64 = sub_100002B38(&qword_10012D0D8, &qword_1000E94E8);
  v15 = *(*(v64 - 8) + 64);
  v16 = __chkstk_darwin(v64);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  v21 = type metadata accessor for AccessPointAnchoring();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for AccessPointShaderTransitionView(0) + 56);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v27 = a1;
  State.wrappedValue.getter();
  LOBYTE(a1) = AccessPointAnchoring.centered.getter();
  v28 = *(v22 + 8);
  v28(v25, v21);
  if (a1)
  {
    sub_100008F80(v20);
    v29 = *v27;
    v30 = Namespace.wrappedValue.getter();
    v31 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v32 = &v20[*(v64 + 36)];
    *v32 = 1936683112;
    *(v32 + 1) = 0xE400000000000000;
    *(v32 + 2) = v30;
    *(v32 + 6) = v31;
    *(v32 + 4) = v33;
    *(v32 + 5) = v34;
    v32[48] = 1;
    sub_1000035B4(v20, v18, &qword_10012D0D8, &qword_1000E94E8);
    v35 = v58;
    *v58 = 0;
    *(v35 + 8) = 0;
    v36 = sub_100002B38(&qword_10012D110, &qword_1000E9500);
    sub_1000035B4(v18, v35 + *(v36 + 48), &qword_10012D0D8, &qword_1000E94E8);
    v37 = v35 + *(v36 + 64);
    *v37 = 0;
    *(v37 + 8) = 0;
    sub_100005688(v18, &qword_10012D0D8, &qword_1000E94E8);
    sub_1000035B4(v35, v61, &qword_10012D0D0, &qword_1000E94E0);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0);
    sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0);
    v38 = v63;
    _ConditionalContent<>.init(storage:)();
    sub_1000035B4(v38, v67, &qword_10012D0C8, &qword_1000E94D8);
    swift_storeEnumTagMultiPayload();
    sub_100012748();
    sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8);
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v38, &qword_10012D0C8, &qword_1000E94D8);
    sub_100005688(v35, &qword_10012D0D0, &qword_1000E94E0);
    v39 = v20;
  }

  else
  {
    State.wrappedValue.getter();
    v40 = AccessPointAnchoring.leading.getter();
    v28(v25, v21);
    sub_100008F80(v20);
    v41 = *v27;
    v42 = Namespace.wrappedValue.getter();
    v43 = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v44 = &v20[*(v64 + 36)];
    *v44 = 1936683112;
    *(v44 + 1) = 0xE400000000000000;
    *(v44 + 2) = v42;
    *(v44 + 6) = v43;
    *(v44 + 4) = v45;
    *(v44 + 5) = v46;
    v44[48] = 1;
    sub_1000035B4(v20, v18, &qword_10012D0D8, &qword_1000E94E8);
    v39 = v20;
    if (v40)
    {
      v47 = v57;
      sub_1000035B4(v18, v57, &qword_10012D0D8, &qword_1000E94E8);
      v48 = v47 + *(sub_100002B38(&qword_10012D108, &qword_1000E94F8) + 48);
      *v48 = 0;
      *(v48 + 8) = 0;
      sub_100005688(v18, &qword_10012D0D8, &qword_1000E94E8);
      v49 = &qword_10012D0B0;
      v50 = &qword_1000E94C0;
      sub_1000035B4(v47, v61, &qword_10012D0B0, &qword_1000E94C0);
      swift_storeEnumTagMultiPayload();
      sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0);
      sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0);
      v51 = v63;
      _ConditionalContent<>.init(storage:)();
      sub_1000035B4(v51, v67, &qword_10012D0C8, &qword_1000E94D8);
      swift_storeEnumTagMultiPayload();
      sub_100012748();
      sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8);
      _ConditionalContent<>.init(storage:)();
      sub_100005688(v51, &qword_10012D0C8, &qword_1000E94D8);
      v52 = v47;
    }

    else
    {
      v53 = v56;
      *v56 = 0;
      *(v53 + 8) = 0;
      v54 = sub_100002B38(&qword_10012D0E0, &qword_1000E94F0);
      sub_1000035B4(v18, v53 + *(v54 + 48), &qword_10012D0D8, &qword_1000E94E8);
      sub_100005688(v18, &qword_10012D0D8, &qword_1000E94E8);
      v49 = &qword_10012D0A8;
      v50 = &qword_1000E94B8;
      sub_1000035B4(v53, v67, &qword_10012D0A8, &qword_1000E94B8);
      swift_storeEnumTagMultiPayload();
      sub_100012748();
      sub_1000057D8(&qword_10012D100, &qword_10012D0A8, &qword_1000E94B8);
      _ConditionalContent<>.init(storage:)();
      v52 = v53;
    }

    sub_100005688(v52, v49, v50);
  }

  return sub_100005688(v39, &qword_10012D0D8, &qword_1000E94E8);
}

uint64_t sub_10000AA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v139 = a2;
  v136 = a3;
  v121 = type metadata accessor for GlobalCoordinateSpace();
  v120 = *(v121 - 8);
  v4 = *(v120 + 64);
  __chkstk_darwin(v121);
  v119 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AccessPointAnchoring();
  v116 = *(v135 - 8);
  v6 = *(v116 + 64);
  __chkstk_darwin(v135);
  v115 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for EnvironmentValues();
  v113 = *(v114 - 1);
  v8 = *(v113 + 8);
  __chkstk_darwin(v114);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for GeometryProxy();
  v138 = *(v126 - 8);
  v10 = *(v138 + 64);
  __chkstk_darwin(v126);
  v133 = v11;
  v137 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessPointShaderTransitionView(0);
  v132 = *(v12 - 8);
  v13 = *(v132 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_100002B38(&qword_10012D010, &qword_1000E9438);
  v15 = *(*(v140 - 1) + 64);
  __chkstk_darwin(v140);
  v17 = &v103 - v16;
  v18 = sub_100002B38(&qword_10012D018, &qword_1000E9440);
  v118 = *(v18 - 8);
  v19 = *(v118 + 64);
  __chkstk_darwin(v18);
  v134 = &v103 - v20;
  v21 = sub_100002B38(&qword_10012D020, &qword_1000E9448);
  v123 = *(v21 - 8);
  v22 = *(v123 + 64);
  __chkstk_darwin(v21);
  v122 = &v103 - v23;
  v24 = sub_100002B38(&qword_10012D028, &qword_1000E9450);
  v125 = *(v24 - 8);
  v25 = *(v125 + 64);
  __chkstk_darwin(v24);
  v124 = &v103 - v26;
  v27 = sub_100002B38(&qword_10012D030, &qword_1000E9458);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v103 - v29;
  v31 = *(a1 + 96);
  LOBYTE(v145) = *(a1 + 88);
  v146 = v31;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v141 == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CGRect(255);
    v33 = v32;
    v34 = sub_100012558();
    v35 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
    v145 = v140;
    v146 = v135;
    v147 = v34;
    v148 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = sub_1000113C0(&qword_10012D058, type metadata accessor for CGRect);
    v145 = v18;
    v146 = v33;
    v147 = OpaqueTypeConformance2;
    v148 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = sub_100005FA4();
    v145 = v21;
    v146 = &type metadata for AccessPointShaderTransitionView.AnimationState;
    v147 = v38;
    v148 = v39;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v107 = v27;
    v108 = v18;
    v109 = v30;
    v110 = v21;
    v111 = v24;
    *v17 = static HorizontalAlignment.center.getter();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v41 = sub_100002B38(&qword_10012D038, &qword_1000E9460);
    sub_10000B9C8(a1, &v17[*(v41 + 44)]);
    sub_100013BE4(a1, &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
    v43 = v137;
    v42 = v138;
    v44 = *(v138 + 16);
    v45 = v126;
    v131 = v138 + 16;
    v130 = v44;
    v44(v137, v139, v126);
    v46 = *(v132 + 80);
    v47 = (v46 + 16) & ~v46;
    v48 = *(v42 + 80);
    v49 = (v13 + v48 + v47) & ~v48;
    v128 = v46 | v48;
    v129 = v49 + v133;
    v50 = swift_allocObject();
    v132 = v47;
    v117 = v14;
    sub_10001212C(v14, v50 + v47, type metadata accessor for AccessPointShaderTransitionView);
    v52 = *(v42 + 32);
    v51 = v42 + 32;
    v133 = v49;
    v127 = v52;
    v52(v50 + v49, v43, v45);
    v53 = v140[9];
    v106 = v17;
    v54 = &v17[v53];
    *v54 = sub_1000121B4;
    *(v54 + 1) = v50;
    *(v54 + 2) = 0;
    *(v54 + 3) = 0;
    v55 = *(a1 + 8);
    LOBYTE(v49) = *(a1 + 16);

    v56 = v45;
    v57 = a1;
    if ((v49 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v58 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v59 = v112;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v113 + 1))(v59, v114);
      v55 = v145;
    }

    swift_getKeyPath();
    v145 = v55;
    sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v61 = v116;
    v62 = v115;
    v63 = v135;
    (*(v116 + 16))(v115, v55 + v60, v135);

    v114 = type metadata accessor for AccessPointShaderTransitionView;
    v64 = v117;
    sub_100013BE4(v57, v117, type metadata accessor for AccessPointShaderTransitionView);
    v65 = v137;
    v66 = v57;
    v67 = v139;
    v130(v137, v139, v56);
    v68 = swift_allocObject();
    v113 = type metadata accessor for AccessPointShaderTransitionView;
    sub_10001212C(v64, v68 + v132, type metadata accessor for AccessPointShaderTransitionView);
    v127(v68 + v133, v65, v56);
    v104 = sub_100012558();
    v69 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
    v138 = v51;
    v70 = v66;
    v105 = v66;
    v112 = v69;
    v71 = v140;
    v72 = v106;
    View.onChange<A>(of:initial:_:)();

    (*(v61 + 8))(v62, v63);
    sub_100005688(v72, &qword_10012D010, &qword_1000E9438);
    v73 = v119;
    static CoordinateSpaceProtocol<>.global.getter();
    v74 = v121;
    GeometryProxy.frame<A>(in:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    (*(v120 + 8))(v73, v74);
    v145 = v76;
    v146 = v78;
    v147 = v80;
    v148 = v82;
    v83 = v117;
    sub_100013BE4(v70, v117, v114);
    v84 = v137;
    v85 = v67;
    v86 = v126;
    v130(v137, v85, v126);
    v87 = swift_allocObject();
    sub_10001212C(v83, v87 + v132, v113);
    v127(v87 + v133, v84, v86);
    type metadata accessor for CGRect(0);
    v121 = v88;
    v141 = v71;
    v142 = v63;
    v143 = v104;
    v144 = v112;
    v140 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    v89 = swift_getOpaqueTypeConformance2();
    v90 = sub_1000113C0(&qword_10012D058, type metadata accessor for CGRect);
    v91 = v122;
    v92 = v108;
    v93 = v134;
    View.onChange<A>(of:initial:_:)();

    (*(v118 + 8))(v93, v92);
    v94 = v105;
    v95 = *(v105 + 48);
    LOBYTE(v145) = *(v105 + 40);
    v146 = v95;
    sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
    State.wrappedValue.getter();
    sub_100013BE4(v94, v83, v114);
    v130(v84, v139, v86);
    v96 = swift_allocObject();
    sub_10001212C(v83, v96 + v132, v113);
    v127(v96 + v133, v84, v86);
    v145 = v92;
    v146 = v121;
    v147 = v89;
    v148 = v90;
    v97 = swift_getOpaqueTypeConformance2();
    v98 = sub_100005FA4();
    v99 = v124;
    v100 = v110;
    View.onChange<A>(of:initial:_:)();

    (*(v123 + 8))(v91, v100);
    v101 = v125;
    v102 = v111;
    (*(v125 + 16))(v109, v99, v111);
    swift_storeEnumTagMultiPayload();
    v145 = v100;
    v146 = &type metadata for AccessPointShaderTransitionView.AnimationState;
    v147 = v97;
    v148 = v98;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v101 + 8))(v99, v102);
  }
}

uint64_t sub_10000B9C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_100002B38(&qword_10012D060, &qword_1000E9480);
  v3 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v39 = &v38 - v4;
  v40 = sub_100002B38(&qword_10012D068, &qword_1000E9488);
  v5 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v7 = &v38 - v6;
  v41 = sub_100002B38(&qword_10012D070, &qword_1000E9490);
  v8 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v10 = &v38 - v9;
  v11 = sub_100002B38(&qword_10012D078, &qword_1000E9498);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for AccessPointAnchoring();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for AccessPointShaderTransitionView(0) + 56);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.getter();
  LOBYTE(v24) = AccessPointAnchoring.bottom.getter();
  (*(v20 + 8))(v23, v19);
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v25 = sub_100002B38(&qword_10012D080, &qword_1000E94A0);
  sub_10000A11C(a1, &v18[*(v25 + 44)]);
  v26 = *a1;
  v27 = Namespace.wrappedValue.getter();
  LODWORD(v19) = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v28 = &v18[*(v12 + 44)];
  *v28 = 1936683126;
  *(v28 + 1) = 0xE400000000000000;
  *(v28 + 2) = v27;
  *(v28 + 6) = v19;
  *(v28 + 4) = v29;
  *(v28 + 5) = v30;
  v28[48] = 1;
  sub_1000035B4(v18, v16, &qword_10012D078, &qword_1000E9498);
  if (v24)
  {
    *v10 = 0;
    v10[8] = 1;
    v31 = sub_100002B38(&qword_10012D0A0, &qword_1000E94B0);
    sub_1000035B4(v16, &v10[*(v31 + 48)], &qword_10012D078, &qword_1000E9498);
    sub_100005688(v16, &qword_10012D078, &qword_1000E9498);
    v32 = &qword_10012D070;
    v33 = &qword_1000E9490;
    sub_1000035B4(v10, v7, &qword_10012D070, &qword_1000E9490);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D090, &qword_10012D070, &qword_1000E9490);
    sub_1000057D8(&qword_10012D098, &qword_10012D060, &qword_1000E9480);
    _ConditionalContent<>.init(storage:)();
    v34 = v10;
  }

  else
  {
    v35 = v39;
    sub_1000035B4(v16, v39, &qword_10012D078, &qword_1000E9498);
    v36 = v35 + *(sub_100002B38(&qword_10012D088, &qword_1000E94A8) + 48);
    *v36 = 0;
    *(v36 + 8) = 1;
    sub_100005688(v16, &qword_10012D078, &qword_1000E9498);
    v32 = &qword_10012D060;
    v33 = &qword_1000E9480;
    sub_1000035B4(v35, v7, &qword_10012D060, &qword_1000E9480);
    swift_storeEnumTagMultiPayload();
    sub_1000057D8(&qword_10012D090, &qword_10012D070, &qword_1000E9490);
    sub_1000057D8(&qword_10012D098, &qword_10012D060, &qword_1000E9480);
    _ConditionalContent<>.init(storage:)();
    v34 = v35;
  }

  sub_100005688(v34, v32, v33);
  return sub_100005688(v18, &qword_10012D078, &qword_1000E9498);
}

uint64_t sub_10000BEFC(uint64_t a1)
{
  v2 = v1;
  v54[1] = a1;
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v59 = v54 - v5;
  v6 = type metadata accessor for AccessPointAnchoring();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GlobalCoordinateSpace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);

  v55 = v20;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v54[0] = v10;
    v22 = v21;
    os_log(_:dso:log:_:_:)();

    v10 = v54[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    (*(v10 + 8))(v13, v9);
    if (*(v2 + 24) >= v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = *(v2 + 24);
    }

    if ((v55 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v15 + 8))(v18, v14);
      v19 = v63;
    }

    swift_getKeyPath();
    v63 = v19;
    sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v37 = v56;
    v36 = v57;
    v38 = v19 + v35;
    v39 = v58;
    (*(v57 + 16))(v56, v38, v58);

    v40 = (*(v36 + 88))(v37, v39);
    if (v40 == enum case for AccessPointAnchoring.topTrailing(_:))
    {
      v64.origin.x = v26;
      v64.origin.y = v28;
      v64.size.width = v30;
      v64.size.height = v32;
      MaxX = CGRectGetMaxX(v64);
      v42 = *(v2 + 48);
      v61 = *(v2 + 40);
      v62 = v42;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.getter();
      v43 = v33;
      if (v60 == 1)
      {
        v43 = *(v2 + 32);
      }

      v26 = MaxX - v43;
      goto LABEL_20;
    }

    if (v40 != enum case for AccessPointAnchoring.bottomLeading(_:))
    {
      if (v40 != enum case for AccessPointAnchoring.bottomTrailing(_:))
      {
        (*(v36 + 8))(v37, v39);
        goto LABEL_20;
      }

      v65.origin.x = v26;
      v65.origin.y = v28;
      v65.size.width = v30;
      v65.size.height = v32;
      v44 = CGRectGetMaxX(v65);
      v45 = *(v2 + 48);
      v61 = *(v2 + 40);
      v62 = v45;
      sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
      State.wrappedValue.getter();
      v46 = v33;
      if (v60 == 1)
      {
        v46 = *(v2 + 32);
      }

      v26 = v44 - v46;
    }

    v66.origin.x = v26;
    v66.origin.y = v28;
    v66.size.width = v30;
    v66.size.height = v32;
    v28 = CGRectGetMaxY(v66) - *(v2 + 32);
LABEL_20:
    v47 = *(v2 + 48);
    v61 = *(v2 + 40);
    v62 = v47;
    sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
    State.wrappedValue.getter();
    v48 = *(v2 + 32);
    if (v60 == 1)
    {
      v49 = *(v2 + 32);
    }

    else
    {
      v49 = v33;
    }

    v50 = type metadata accessor for TaskPriority();
    v51 = v59;
    (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v52 = static MainActor.shared.getter();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = &protocol witness table for MainActor;
    *(v53 + 32) = Strong;
    *(v53 + 40) = v26;
    *(v53 + 48) = v28;
    *(v53 + 56) = v49;
    *(v53 + 64) = v48;
    sub_100014BBC(0, 0, v51, &unk_1000E9478, v53);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000C5D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v113 = type metadata accessor for AccessPointAnchoring();
  v96 = *(v113 - 8);
  v3 = *(v96 + 64);
  __chkstk_darwin(v113);
  v95 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for EnvironmentValues();
  v100 = *(v102 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v102);
  v97 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointShaderTransitionView(0);
  v8 = v7 - 8;
  v109 = *(v7 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v7);
  v114 = v10;
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v112 = *(v92 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v92);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_10012CF70, &qword_1000E92B8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v87 - v17);
  v19 = sub_100002B38(&qword_10012CF78, &qword_1000E92C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  v107 = sub_100002B38(&qword_10012CF80, &qword_1000E92C8);
  v93 = *(v107 - 8);
  v23 = *(v93 + 64);
  __chkstk_darwin(v107);
  v91 = &v87 - v24;
  v110 = sub_100002B38(&qword_10012CF88, &qword_1000E92D0);
  v94 = *(v110 - 8);
  v25 = *(v94 + 64);
  __chkstk_darwin(v110);
  v108 = (&v87 - v26);
  v99 = sub_100002B38(&qword_10012CF90, &qword_1000E92D8);
  v98 = *(v99 - 8);
  v27 = *(v98 + 64);
  __chkstk_darwin(v99);
  v111 = &v87 - v28;
  v104 = sub_100002B38(&qword_10012CF98, &qword_1000E92E0);
  v103 = *(v104 - 8);
  v29 = *(v103 + 64);
  __chkstk_darwin(v104);
  v101 = &v87 - v30;
  *v18 = static Alignment.topLeading.getter();
  v18[1] = v31;
  v32 = v18 + *(sub_100002B38(&qword_10012CFA0, &qword_1000E92E8) + 44);
  v115 = v1;
  sub_10000D4FC(v1, v32);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v89 = v22;
  sub_100014830(v18, v22, &qword_10012CF70, &qword_1000E92B8);
  v88 = v19;
  v33 = &v22[*(v19 + 36)];
  v34 = v126;
  v35 = v127;
  *(v33 + 4) = v125;
  *(v33 + 5) = v34;
  *(v33 + 6) = v35;
  v36 = v122;
  *v33 = v121;
  *(v33 + 1) = v36;
  v37 = v124;
  *(v33 + 2) = v123;
  *(v33 + 3) = v37;
  v38 = *(v1 + *(v8 + 80));
  v39 = v14;
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  v106 = type metadata accessor for AccessPointShaderTransitionView;
  sub_100013BE4(v2, v11, type metadata accessor for AccessPointShaderTransitionView);
  v40 = *(v109 + 80);
  v41 = ((v40 + 16) & ~v40);
  v42 = swift_allocObject();
  v90 = type metadata accessor for AccessPointShaderTransitionView;
  v43 = v11;
  sub_10001212C(v11, v41 + v42, type metadata accessor for AccessPointShaderTransitionView);
  v44 = sub_100011090();
  v45 = sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
  v46 = v92;
  v47 = v89;
  View.onChange<A>(of:initial:_:)();

  (*(v112 + 8))(v39, v46);
  sub_100005688(v47, &qword_10012CF78, &qword_1000E92C0);
  v48 = v115;
  v49 = *(v115 + 48);
  LOBYTE(v117) = *(v115 + 40);
  v118 = v49;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  State.wrappedValue.getter();
  sub_100013BE4(v48, v43, v106);
  v109 = v40;
  v50 = swift_allocObject();
  v106 = v41;
  v112 = v43;
  sub_10001212C(v43, v41 + v50, v90);
  v117 = v88;
  v118 = v46;
  v119 = v44;
  v120 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_100005FA4();
  v53 = v107;
  v54 = v91;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v54, v53);
  v55 = *(v48 + 8);
  LODWORD(v54) = *(v48 + 16);

  v56 = v55;
  LODWORD(v93) = v54;
  if ((v54 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v58 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v100 + 8))(v58, v102);
    v56 = v117;
  }

  swift_getKeyPath();
  v117 = v56;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v60 = v96;
  v61 = v95;
  v62 = v113;
  (*(v96 + 16))(v95, v56 + v59, v113);

  v63 = v112;
  sub_100013BE4(v115, v112, type metadata accessor for AccessPointShaderTransitionView);
  v64 = v106;
  v65 = swift_allocObject();
  sub_10001212C(v63, v64 + v65, type metadata accessor for AccessPointShaderTransitionView);
  v117 = v107;
  v118 = &type metadata for AccessPointShaderTransitionView.AnimationState;
  v119 = OpaqueTypeConformance2;
  v120 = v52;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  v68 = v110;
  v107 = v66;
  v69 = v108;
  View.onChange<A>(of:initial:_:)();

  (*(v60 + 8))(v61, v62);
  (*(v94 + 8))(v69, v68);

  if ((v93 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v97;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v100 + 8))(v71, v102);
    v55 = v117;
  }

  swift_getKeyPath();
  v117 = v55;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v55 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v117 = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v72 = *(v55 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v73 = v72 > 0;
  }

  else
  {

    v73 = 1;
  }

  v116 = v73;
  v108 = type metadata accessor for AccessPointShaderTransitionView;
  v74 = v115;
  v75 = v112;
  sub_100013BE4(v115, v112, type metadata accessor for AccessPointShaderTransitionView);
  v76 = v106;
  v77 = swift_allocObject();
  sub_10001212C(v75, v76 + v77, type metadata accessor for AccessPointShaderTransitionView);
  v117 = v110;
  v118 = v113;
  v119 = v107;
  v120 = v67;
  swift_getOpaqueTypeConformance2();
  v78 = v101;
  v79 = v99;
  v80 = v111;
  View.onChange<A>(of:initial:_:)();

  (*(v98 + 8))(v80, v79);
  sub_100013BE4(v74, v75, v108);
  v81 = swift_allocObject();
  sub_10001212C(v75, v76 + v81, type metadata accessor for AccessPointShaderTransitionView);
  v82 = sub_100002B38(&qword_10012CFD8, &qword_1000E9358);
  v83 = v105;
  v84 = (v105 + *(v82 + 36));
  v85 = v84 + *(type metadata accessor for _TaskModifier() + 20);
  static TaskPriority.userInitiated.getter();
  *v84 = &unk_1000E9350;
  v84[1] = v81;
  return (*(v103 + 32))(v83, v78, v104);
}

uint64_t sub_10000D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = type metadata accessor for RippleView(0);
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v43);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100002B38(&qword_10012CFF8, &qword_1000E9420);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v42 - v11;
  v12 = type metadata accessor for AccessPointShaderTransitionView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100013BE4(a1, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_10001212C(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AccessPointShaderTransitionView);
  v44 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v51 = 0;
  v25 = *(a1 + 80);
  v49 = *(a1 + 72);
  v50 = v25;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v48 == 1)
  {
    v26 = sub_100007DF0();
    v28 = v27;
    v29 = *(v12 + 64);
    v30 = v43;
    sub_1000035B4(a1 + v29, v6 + *(v43 + 20), &qword_100132410, &unk_1000E9F30);
    sub_100013BE4(a1, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointShaderTransitionView);
    v31 = swift_allocObject();
    sub_10001212C(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v15, type metadata accessor for AccessPointShaderTransitionView);
    *v6 = v26;
    *(v6 + 1) = v28;
    *(v6 + v30[6]) = 1.0;
    v32 = v6 + v30[7];
    Date.init()();
    v33 = (v6 + v30[8]);
    *v33 = sub_100012114;
    v33[1] = v31;
    v34 = v45;
    sub_10001212C(v6, v45, type metadata accessor for RippleView);
    v35 = 0;
    v36 = v30;
    v37 = v34;
  }

  else
  {
    v35 = 1;
    v36 = v43;
    v37 = v45;
  }

  (*(v46 + 56))(v37, v35, 1, v36);
  v38 = v51;
  v39 = v47;
  sub_1000035B4(v37, v47, &qword_10012CFF8, &qword_1000E9420);
  *a2 = sub_100012094;
  *(a2 + 8) = v16;
  *(a2 + 16) = v44;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24;
  *(a2 + 56) = v38;
  v40 = sub_100002B38(&qword_10012D000, &qword_1000E9428);
  sub_1000035B4(v39, a2 + *(v40 + 48), &qword_10012CFF8, &qword_1000E9420);

  sub_100005688(v37, &qword_10012CFF8, &qword_1000E9420);
  sub_100005688(v39, &qword_10012CFF8, &qword_1000E9420);
}

uint64_t sub_10000D960(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10000DA5C(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  v4 = __chkstk_darwin(v2);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = type metadata accessor for AccessPointUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessPointShaderTransitionView(0);
  v18 = *(a1 + v17[18]);
  (*(v13 + 104))(v16, enum case for GameDashboardLaunchContext.LaunchTarget.none(_:), v12);
  dispatch thunk of GameDashboardLaunchContext.launchTarget.setter();
  v19 = v17[17];
  v20 = *(AccessPointContainer.items.getter() + 16);

  v37 = *(a1 + 56);
  v38 = v20 - 1;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.setter();
  AccessPointContainer.useCase.getter();
  LOBYTE(v19) = AccessPointUseCase.isEphemeral.getter();
  (*(v8 + 8))(v11, v7);
  if (v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v23 = *(a1 + 48);
  LOBYTE(v37) = *(a1 + 40);
  v22 = v37;
  *(&v37 + 1) = v23;
  LOBYTE(v38) = v21;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  State.wrappedValue.setter();
  LOBYTE(v37) = v22;
  *(&v37 + 1) = v23;
  State.wrappedValue.getter();
  if (v38 == 2)
  {
    v24 = *(a1 + 136);
    LOBYTE(v37) = *(a1 + 128);
    *(&v37 + 1) = v24;
    LOBYTE(v38) = 0;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v26 = v34;
    v25 = v35;
    v27 = v36;
    (*(v35 + 104))(v34, enum case for AccessPointAnchoring.topCentered(_:), v36);
    v28 = v17[14];
    (*(v25 + 16))(v33, v26, v27);
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  }

  else
  {
    v29 = v17[15];
    sub_100002B38(&qword_10012CE60, qword_1000E91C0);
    v26 = v34;
    State.wrappedValue.getter();
    v30 = v17[14];
    v25 = v35;
    v27 = v36;
    (*(v35 + 16))(v33, v26, v36);
  }

  State.wrappedValue.setter();
  return (*(v25 + 8))(v26, v27);
}

uint64_t sub_10000DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v57 = v52 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  __chkstk_darwin(v9);
  v54 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v13[13];
  (v17)(v16, enum case for GameDashboardLaunchContext.LaunchTarget.onboarding(_:), v12);
  v18 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
  v19 = v13[1];
  v19(v16, v12);
  if (v18)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100011F80(v20, qword_100135C88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Requesting invocation of onboarding flow from client.", v23, 2u);
    }

    v24 = *(a3 + 8);
    v25 = *(a3 + 16);

    if ((v25 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v27 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v55 + 8))(v27, v56);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v30 = type metadata accessor for TaskPriority();
      v31 = v57;
      (*(*(v30 - 8) + 56))(v57, 1, 1, v30);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v32 = static MainActor.shared.getter();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = &protocol witness table for MainActor;
      v33[4] = Strong;
      sub_100014BBC(0, 0, v31, &unk_1000E9418, v33);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v52[2] = a1;
    v53 = enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:);
    v17(v16);
    v34 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
    v19(v16, v12);
    if (v34)
    {
      v52[0] = v17;
      v52[1] = a2;
      v36 = *(a3 + 80);
      LOBYTE(v61) = *(a3 + 72);
      v35 = v61;
      v62 = v36;

      sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
      State.wrappedValue.getter();
      v59 = v35;
      v17 = v52[0];
      v60 = v36;
      v58 = (v63 & 1) == 0;
      State.wrappedValue.setter();
    }

    v37 = *(a3 + 8);
    v38 = *(a3 + 16);

    if ((v38 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v39 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v40 = v54;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v55 + 8))(v40, v56);
    }

    v41 = swift_unknownObjectWeakLoadStrong();

    if (v41)
    {
      v42 = v53;
      (v17)(v16, v53, v12);
      v43 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
      v19(v16, v12);
      if (v43 & 1) != 0 || ((v17)(v16, v42, v12), v44 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)(), v19(v16, v12), (v44))
      {
        sub_100011E2C();
        (v17)(v16, v42, v12);
        v45 = static GameDashboardLaunchContext.LaunchTarget.== infix(_:_:)();
        v19(v16, v12);
        isa = NSNumber.init(BOOLeanLiteral:)(v45 & 1).super.super.isa;
        v47 = type metadata accessor for TaskPriority();
        v48 = v57;
        (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();
        v49 = isa;
        v50 = static MainActor.shared.getter();
        v51 = swift_allocObject();
        v51[2] = v50;
        v51[3] = &protocol witness table for MainActor;
        v51[4] = v41;
        v51[5] = v49;
        sub_100014BBC(0, 0, v48, &unk_1000E9408, v51);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10000E5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E648, v6, v5);
}

uint64_t sub_10000E648()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 requireOnboardingFlow];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E750, v7, v6);
}

uint64_t sub_10000E750()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  [v3 isPresentingDashboardFromAccessPoint:v2];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000E7C8(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AccessPointShaderTransitionView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v10;
  sub_100002B38(&qword_10012CFC0, &qword_1000E92F0);
  result = State.wrappedValue.getter();
  if (v17 == 2)
  {
    v12 = *(a1 + 80);
    v18 = *(a1 + 72);
    v19 = v12;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    result = State.wrappedValue.getter();
    if ((v17 & 1) == 0)
    {
      v13 = static Animation.spring(response:dampingFraction:blendDuration:)();
      __chkstk_darwin(v13);
      *&v16[-16] = a1;
      sub_100013BE4(a1, &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessPointShaderTransitionView);
      v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v15 = swift_allocObject();
      sub_10001212C(&v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for AccessPointShaderTransitionView);
      static AnimationCompletionCriteria.logicallyComplete.getter();
      withAnimation<A>(_:completionCriteria:_:completion:)();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_10000EA90(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointShaderTransitionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);

  if ((v16 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v28 = a1;
    v18 = v9;
    v19 = v5;
    v20 = v3;
    v21 = v17;
    os_log(_:dso:log:_:_:)();

    v3 = v20;
    v5 = v19;
    v9 = v18;
    a1 = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
    v15 = v29;
  }

  swift_getKeyPath();
  v29 = v15;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v15 + 24);

  if (v22)
  {

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    sub_100013BE4(a1, v5, type metadata accessor for AccessPointShaderTransitionView);
    type metadata accessor for MainActor();
    v25 = static MainActor.shared.getter();
    v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_10001212C(v5, v27 + v26, type metadata accessor for AccessPointShaderTransitionView);
    sub_100014BBC(0, 0, v9, &unk_1000E93F0, v27);
  }

  return result;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v9;
  v4[9] = v8;

  return _swift_task_switch(sub_10000EF34, v9, v8);
}

uint64_t sub_10000EF34()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_100135CD8;
  v0[10] = qword_100135CD8;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  if ((v4 & 1) == 0)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = v0[2];
  }

  v0[11] = v3;

  return _swift_task_switch(sub_10000F088, v2, 0);
}

uint64_t sub_10000F088()
{
  sub_10002CE40(v0[11], 1, v0[10]);

  v1 = v0[8];
  v2 = v0[9];

  return _swift_task_switch(sub_10000F0FC, v1, v2);
}

uint64_t sub_10000F0FC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000F164(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v30 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v43 = a1;
  v13 = *(a1 + 16);

  v14 = v12;
  v35 = v13;
  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v16 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v16, v8);
    v14 = v42;
  }

  v30 = v9;
  v31 = v8;
  v36 = v12;
  swift_getKeyPath();
  v42 = v14;
  v33 = sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v18 = *(v3 + 16);
  v19 = v39;
  v18(v39, v14 + v17, v2);

  v38 = type metadata accessor for AccessPointShaderTransitionView(0);
  v20 = *(v38 + 60);
  v21 = v40;
  v34 = v18;
  v32 = v3 + 16;
  v18(v40, v19, v2);
  sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  State.wrappedValue.setter();
  v22 = *(v3 + 8);
  v22(v19, v2);
  v38 = *(v38 + 56);
  State.wrappedValue.getter();
  (*(v3 + 104))(v21, enum case for AccessPointAnchoring.topCentered(_:), v2);
  sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22(v21, v2);
  result = (v22)(v19, v2);
  if ((v17 & 1) == 0)
  {
    v24 = v36;

    if ((v35 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v26 = v37;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v30 + 8))(v26, v31);
      v24 = v41;
    }

    swift_getKeyPath();
    v41 = v24;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v28 = v39;
    v29 = v34;
    v34(v39, v24 + v27, v2);

    v29(v40, v28, v2);
    State.wrappedValue.setter();
    return (v22)(v28, v2);
  }

  return result;
}

uint64_t sub_10000F6CC()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return sub_100007EC8();
}

uint64_t sub_10000F754(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v7 = v15;
  }

  swift_getKeyPath();
  v15 = v7;
  sub_1000113C0(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v15 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v7 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v11 = v10 > 0;
  }

  else
  {

    v11 = 1;
  }

  v12 = *(a1 + 96);
  LOBYTE(v15) = *(a1 + 88);
  v16 = v12;
  v14[15] = v11;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_10000F9BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FA54, v3, v2);
}

uint64_t sub_10000FA54()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100007EC8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000FAB8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 16) = a8;
  type metadata accessor for MainActor();
  *(v8 + 56) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FB58, v10, v9);
}

id sub_10000FB58()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  result = BSValueWithRect();
  if (result)
  {
    v6 = result;
    v7 = v0[7];
    v8 = v0[2];

    [v8 updateAccessPointFrameCoordinates:v6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FBF8(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012D330, &qword_1000E96D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v16[-1] - v5;
  v22 = *(v1 + 24);
  v18 = *(v1 + 24);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = sub_100002B38(&qword_10012D338, &qword_1000E96E0);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = &v6[*(v3 + 36)];
  v9 = v19;
  *v8 = v18;
  *(v8 + 1) = v9;
  *(v8 + 2) = v20;
  v11 = *(v1 + 8);
  LOBYTE(v8) = *(v1 + 16);
  v16[0] = *v1;
  v10 = v16[0];
  v16[1] = v11;
  v17 = v8;
  sub_100002B38(&qword_10012D340, &qword_1000E96E8);
  Binding.wrappedValue.getter();
  v21 = v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  sub_100013A6C(&v21, v16);

  sub_1000035B4(&v22, v16, &qword_10012CFF0, &qword_1000ED780);
  sub_100013AC8();
  sub_100005FA4();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v6, &qword_10012D330, &qword_1000E96D8);
}

uint64_t sub_10000FE5C(__int128 *a1)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  sub_100002B38(&qword_10012D340, &qword_1000E96E8);
  result = Binding.wrappedValue.getter();
  if (v3 == 1)
  {
    v2 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10000FF6C()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPointContentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_100002B38(&qword_10012D358, &qword_1000E96F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100002B38(&qword_10012D360, &qword_1000E96F8);
  sub_1000101C0(v1, &v9[*(v10 + 44)]);
  *&v9[*(v6 + 36)] = static Color.white.getter();
  v11 = v1 + *(v3 + 28);
  v12 = *v11;
  v13 = *(v11 + 16);
  v18 = v12;
  v19 = v13;
  sub_100002B38(&qword_10012D368, &qword_1000E9700);
  Binding.wrappedValue.getter();
  sub_100013BE4(v1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AccessPointContentView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10001212C(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for AccessPointContentView);
  sub_100013D94();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v9, &qword_10012D358, &qword_1000E96F0);
}

uint64_t sub_1000101C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_100002B38(&qword_10012D398, &qword_1000E9718);
  v3 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v5 = &v25 - v4;
  v6 = sub_100002B38(&qword_10012D3A0, &qword_1000E9720);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_100002B38(&qword_10012D3A8, &qword_1000E9728);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = *(type metadata accessor for AccessPointContentView(0) + 24);
  v25 = a1;
  v19 = (a1 + v18);
  v21 = v19[1];
  v28 = *v19;
  v20 = v28;
  v29 = v21;
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  State.wrappedValue.getter();
  v28 = v20;
  v29 = v21;
  State.wrappedValue.getter();
  AccessPointContainer.componentView(for:)();
  (*(v7 + 16))(v5, v10, v6);
  swift_storeEnumTagMultiPayload();
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v7 + 8))(v10, v6);
  sub_1000035B4(v17, v15, &qword_10012D3A8, &qword_1000E9728);
  v22 = v27;
  sub_1000035B4(v15, v27, &qword_10012D3A8, &qword_1000E9728);
  v23 = v22 + *(sub_100002B38(&qword_10012D3B0, &qword_1000E9730) + 48);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_100005688(v17, &qword_10012D3A8, &qword_1000E9728);
  return sub_100005688(v15, &qword_10012D3A8, &qword_1000E9728);
}

uint64_t sub_1000104D8()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100010540(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointContentView(0);
  v3 = (a1 + *(v2 + 20));
  v5 = *v3;
  v7 = *(v3 + 2);
  sub_100002B38(&qword_10012D368, &qword_1000E9700);
  Binding.wrappedValue.getter();
  v6 = *(a1 + *(v2 + 24));
  sub_100002B38(&qword_10012CFE0, &qword_1000E9390);
  return State.wrappedValue.setter();
}

uint64_t sub_1000105F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for RippleView(0);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AnimationTimelineSchedule();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v27);
  v26 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  sub_100013BE4(a2, v10, type metadata accessor for RippleView);
  v17 = a1;
  v18 = v5;
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v5);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = (v9 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_10001212C(v10, v21 + v19, type metadata accessor for RippleView);
  (*(v6 + 32))(v21 + v20, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v22 = v27;
  (*(v11 + 16))(v26, v16, v27);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100014168;
  *(v23 + 24) = v21;
  sub_100002B38(&qword_10012D3B8, &qword_1000E9738);
  sub_1000113C0(&qword_10012D3C0, &type metadata accessor for AnimationTimelineSchedule);
  sub_10001428C();
  TimelineView<>.init(_:content:)();
  return (*(v11 + 8))(v16, v22);
}

uint64_t sub_100010984@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v43 = a3;
  v4 = type metadata accessor for ShaderFunction();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shader();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RippleView(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002B38(&qword_10012D3F8, &qword_1000E9758);
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  __chkstk_darwin(v16);
  v35 = &v34 - v18;
  sub_100013BE4(a1, v15, type metadata accessor for RippleView);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_10001212C(v15, v20 + v19, type metadata accessor for RippleView);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v44 = sub_1000145D8;
  *(&v44 + 1) = v20;
  static ShaderLibrary.subscript.getter();
  sub_100002B38(&qword_10012D400, &qword_1000E9760);
  v21 = *(type metadata accessor for Shader.Argument() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_1000E91A0;
  v24 = *(v12 + 36);
  Date.timeIntervalSinceNow.getter();
  v25 = *(a1 + *(v12 + 32));
  static Shader.Argument._float(_:)();
  GeometryProxy.size.getter();
  static Shader.Argument._float2(_:_:)();
  v26 = *a1;
  v27 = a1[1];
  static Shader.Argument._float2(_:_:)();
  v28 = v34;
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v37 + 8))(v7, v38);
  Date.timeIntervalSinceNow.getter();
  sub_100002B38(&qword_10012D3D0, &qword_1000E9740);
  sub_100014388(&qword_10012D3D8, &qword_10012D3D0, &qword_1000E9740, sub_10001440C);
  v29 = v35;
  View.layerEffect(_:maxSampleOffset:isEnabled:)();
  (*(v41 + 8))(v28, v42);
  v52[4] = v48;
  v52[5] = v49;
  v52[6] = v50;
  v52[7] = v51;
  v52[0] = v44;
  v52[1] = v45;
  v52[2] = v46;
  v52[3] = v47;
  sub_100005688(v52, &qword_10012D3D0, &qword_1000E9740);
  v30 = static SafeAreaRegions.all.getter();
  LOBYTE(v12) = static Edge.Set.all.getter();
  v31 = v43;
  (*(v39 + 32))(v43, v29, v40);
  result = sub_100002B38(&qword_10012D3B8, &qword_1000E9738);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v12;
  return result;
}

uint64_t sub_100010EF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100013BE4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RippleView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001212C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for RippleView);
  *a2 = sub_100013E98;
  a2[1] = v7;
  return result;
}

uint64_t sub_100011010(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000DE88(a1, a2, v6);
}

unint64_t sub_100011090()
{
  result = qword_10012CFA8;
  if (!qword_10012CFA8)
  {
    sub_100005144(&qword_10012CF78, &qword_1000E92C0);
    sub_1000057D8(&qword_10012CFB0, &qword_10012CF70, &qword_1000E92B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012CFA8);
  }

  return result;
}

uint64_t sub_100011148()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v25 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *(v2 + 1);

  v4 = *(v2 + 6);

  v5 = *(v2 + 8);

  v6 = *(v2 + 10);

  v7 = *(v2 + 12);

  v8 = *(v2 + 15);

  v9 = *(v2 + 17);

  v10 = &v2[v1[14]];
  v11 = type metadata accessor for AccessPointAnchoring();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v13 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v14 = *&v10[*(v13 + 28)];

  v15 = &v2[v1[15]];
  v12(v15, v11);
  v16 = *&v15[*(v13 + 28)];

  v17 = v1[16];
  v18 = type metadata accessor for Game();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v2[v17], 1, v18))
  {
    (*(v19 + 8))(&v2[v17], v18);
  }

  v20 = v1[17];
  v21 = type metadata accessor for AccessPointContainer();
  (*(*(v21 - 8) + 8))(&v2[v20], v21);
  v22 = *&v2[v1[18]];

  v23 = *&v2[v1[19]];

  return swift_deallocObject();
}

uint64_t sub_1000113C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000114E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100011558()
{
  v2 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014BAC;

  return sub_10000F9BC(v0 + v3);
}

uint64_t sub_100011630(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_100008330(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011720()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100011814()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v27 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 48);

  v7 = *(v0 + v2 + 64);

  v8 = *(v0 + v2 + 80);

  v9 = *(v0 + v2 + 96);

  v10 = *(v0 + v2 + 120);

  v11 = *(v0 + v2 + 136);

  v12 = v0 + v2 + v1[14];
  v13 = type metadata accessor for AccessPointAnchoring();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  v15 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v16 = *(v12 + *(v15 + 28));

  v17 = v0 + v2 + v1[15];
  v14(v17, v13);
  v18 = *(v17 + *(v15 + 28));

  v19 = v1[16];
  v20 = type metadata accessor for Game();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v2 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  v22 = v1[17];
  v23 = type metadata accessor for AccessPointContainer();
  (*(*(v23 - 8) + 8))(v4 + v22, v23);
  v24 = *(v4 + v1[18]);

  v25 = *(v4 + v1[19]);

  return swift_deallocObject();
}

uint64_t sub_100011A74(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100008828(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011BF4(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000EE40(a1, v6, v7, v1 + v5);
}

uint64_t sub_100011CE4(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100002B38(&qword_10012D3E8, &qword_1000E9748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_100002B38(&qword_10012D3F0, &qword_1000E9750);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100011E2C()
{
  result = qword_100131140;
  if (!qword_100131140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131140);
  }

  return result;
}

uint64_t sub_100011E78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100011EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_10000E6B8(a1, v4, v5, v7, v6);
}

uint64_t sub_100011F80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100011FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_10000E5B0(a1, v4, v5, v6);
}

uint64_t sub_100012094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000AA14(v6, a1, a2);
}

uint64_t sub_10001212C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000121B8()
{
  v1 = type metadata accessor for AccessPointShaderTransitionView(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v30 = type metadata accessor for GeometryProxy();
  v3 = *(v30 - 8);
  v4 = *(v3 + 80);
  v29 = *(v3 + 64);
  v31 = v0;
  v5 = (v0 + ((v2 + 16) & ~v2));
  v6 = *(v5 + 1);

  v7 = *(v5 + 6);

  v8 = *(v5 + 8);

  v9 = *(v5 + 10);

  v10 = *(v5 + 12);

  v11 = *(v5 + 15);

  v12 = *(v5 + 17);

  v13 = &v5[v1[14]];
  v14 = type metadata accessor for AccessPointAnchoring();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v17 = *&v13[*(v16 + 28)];

  v18 = &v5[v1[15]];
  v15(v18, v14);
  v19 = *&v18[*(v16 + 28)];

  v20 = v1[16];
  v21 = type metadata accessor for Game();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v5[v20], 1, v21))
  {
    (*(v22 + 8))(&v5[v20], v21);
  }

  v23 = v1[17];
  v24 = type metadata accessor for AccessPointContainer();
  (*(*(v24 - 8) + 8))(&v5[v23], v24);
  v25 = *&v5[v1[18]];

  v26 = *&v5[v1[19]];

  (*(v3 + 8))(v31 + ((((v2 + 16) & ~v2) + v28 + v4) & ~v4), v30);

  return swift_deallocObject();
}

uint64_t sub_100012498()
{
  v1 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  return sub_10000BEFC(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_100012558()
{
  result = qword_10012D040;
  if (!qword_10012D040)
  {
    sub_100005144(&qword_10012D010, &qword_1000E9438);
    sub_1000057D8(&qword_10012D048, &qword_10012D050, &qword_1000E9468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D040);
  }

  return result;
}

uint64_t sub_100012618()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100012664(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014BAC;

  return sub_10000FAB8(v7, v8, v9, v10, a1, v4, v5, v6);
}

unint64_t sub_100012748()
{
  result = qword_10012D0E8;
  if (!qword_10012D0E8)
  {
    sub_100005144(&qword_10012D0C8, &qword_1000E94D8);
    sub_1000057D8(&qword_10012D0F0, &qword_10012D0D0, &qword_1000E94E0);
    sub_1000057D8(&qword_10012D0F8, &qword_10012D0B0, &qword_1000E94C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D0E8);
  }

  return result;
}

uint64_t *sub_100012854(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000128B8()
{
  result = qword_10012D160;
  if (!qword_10012D160)
  {
    sub_100005144(&qword_10012D120, &qword_1000E9510);
    sub_100012970();
    sub_1000057D8(&qword_10012D1B0, &qword_10012D150, &qword_1000E9538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D160);
  }

  return result;
}

unint64_t sub_100012970()
{
  result = qword_10012D168;
  if (!qword_10012D168)
  {
    sub_100005144(&qword_10012D170, &qword_1000E9540);
    sub_100014388(&qword_10012D178, &qword_10012D180, &qword_1000E9548, sub_100012A28);
    sub_100012AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D168);
  }

  return result;
}

unint64_t sub_100012A28()
{
  result = qword_10012D188;
  if (!qword_10012D188)
  {
    sub_100005144(&qword_10012D190, &qword_1000E9550);
    sub_1000057D8(&qword_10012D198, &qword_10012D1A0, &qword_1000E9558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D188);
  }

  return result;
}

unint64_t sub_100012AE0()
{
  result = qword_10012D1A8;
  if (!qword_10012D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D1A8);
  }

  return result;
}

uint64_t sub_100012B68()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_100012BF0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012C28()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AccessPointShaderTransitionView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v30 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = *(v0 + v6 + 8);

  v9 = *(v0 + v6 + 48);

  v10 = *(v0 + v6 + 64);

  v11 = *(v0 + v6 + 80);

  v12 = *(v0 + v6 + 96);

  v13 = *(v0 + v6 + 120);

  v14 = *(v0 + v6 + 136);

  v15 = v0 + v6 + v5[14];
  v16 = type metadata accessor for AccessPointAnchoring();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  v18 = sub_100002B38(&qword_10012CE60, qword_1000E91C0);
  v19 = *(v15 + *(v18 + 28));

  v20 = v0 + v6 + v5[15];
  v17(v20, v16);
  v21 = *(v20 + *(v18 + 28));

  v22 = v5[16];
  v23 = type metadata accessor for Game();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v0 + v6 + v22, 1, v23))
  {
    (*(v24 + 8))(v7 + v22, v23);
  }

  v25 = v5[17];
  v26 = type metadata accessor for AccessPointContainer();
  (*(*(v26 - 8) + 8))(v7 + v25, v26);
  v27 = *(v7 + v5[18]);

  v28 = *(v7 + v5[19]);

  return swift_deallocObject();
}

uint64_t sub_100012F00()
{
  v1 = *(type metadata accessor for GeometryProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AccessPointShaderTransitionView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100009EC8(v0 + v2, v5);
}

uint64_t sub_100012FCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100012FF4(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013064(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for Date();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10001329C()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_100005F3C(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_100013388();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100013388()
{
  result = qword_10012D248;
  if (!qword_10012D248)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10012D248);
  }

  return result;
}

__n128 sub_1000133D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000133EC(uint64_t a1, int a2)
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

uint64_t sub_100013434(uint64_t result, int a2, int a3)
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

uint64_t sub_1000134A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessPointContainer();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100013574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessPointContainer();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100013630()
{
  type metadata accessor for AccessPointContainer();
  if (v0 <= 0x3F)
  {
    sub_100013714(319, &unk_10012D2F0, &type metadata for Int, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_100013714(319, &qword_10012CEE0, &type metadata for Int, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100013768()
{
  result = qword_10012D328;
  if (!qword_10012D328)
  {
    sub_100005144(&qword_10012CFD8, &qword_1000E9358);
    sub_100005144(&qword_10012CF90, &qword_1000E92D8);
    sub_100005144(&qword_10012CF88, &qword_1000E92D0);
    type metadata accessor for AccessPointAnchoring();
    sub_100005144(&qword_10012CF80, &qword_1000E92C8);
    sub_100005144(&qword_10012CF78, &qword_1000E92C0);
    type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
    sub_100011090();
    sub_1000113C0(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
    swift_getOpaqueTypeConformance2();
    sub_100005FA4();
    swift_getOpaqueTypeConformance2();
    sub_1000113C0(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000113C0(&qword_10012CC50, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D328);
  }

  return result;
}

uint64_t sub_100013A1C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return swift_deallocObject();
}

unint64_t sub_100013AC8()
{
  result = qword_10012D348;
  if (!qword_10012D348)
  {
    sub_100005144(&qword_10012D330, &qword_1000E96D8);
    sub_1000057D8(&qword_10012D350, &qword_10012D338, &qword_1000E96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D348);
  }

  return result;
}

uint64_t sub_100013B80()
{
  v2 = *(*(v0 + 16) + 24);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_100013BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013C4C()
{
  v1 = (type metadata accessor for AccessPointContentView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = type metadata accessor for AccessPointContainer();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = (v3 + v1[7]);
  v6 = *v5;

  v7 = v5[1];

  v8 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

unint64_t sub_100013D94()
{
  result = qword_10012D370;
  if (!qword_10012D370)
  {
    sub_100005144(&qword_10012D358, &qword_1000E96F0);
    sub_1000057D8(&qword_10012D378, &qword_10012D380, &qword_1000E9708);
    sub_1000057D8(&qword_10012D388, &qword_10012D390, &qword_1000E9710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D370);
  }

  return result;
}

uint64_t sub_100013EC4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100013F5C()
{
  v1 = type metadata accessor for RippleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v17 = type metadata accessor for GeometryProxy();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = v1[5];
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = (v3 + v15 + v5) & ~v5;
  v11 = v1[7];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = *(v6 + v1[8] + 8);

  (*(v4 + 8))(v0 + v10, v17);

  return swift_deallocObject();
}

uint64_t sub_100014168@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RippleView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100010984((v1 + v4), v7, a1);
}

uint64_t sub_10001424C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_10001428C()
{
  result = qword_10012D3C8;
  if (!qword_10012D3C8)
  {
    sub_100005144(&qword_10012D3B8, &qword_1000E9738);
    sub_100005144(&qword_10012D3D0, &qword_1000E9740);
    sub_100014388(&qword_10012D3D8, &qword_10012D3D0, &qword_1000E9740, sub_10001440C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D3C8);
  }

  return result;
}

uint64_t sub_100014388(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001440C()
{
  result = qword_10012D3E0;
  if (!qword_10012D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D3E0);
  }

  return result;
}

uint64_t sub_100014460()
{
  v1 = type metadata accessor for RippleView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = v1[5];
  v5 = type metadata accessor for Game();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1000145D8()
{
  v1 = type metadata accessor for RippleView(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_100014644(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001468C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000146D8()
{
  sub_100005144(&qword_10012D330, &qword_1000E96D8);
  sub_100013AC8();
  sub_100005FA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014750()
{
  sub_100005144(&qword_10012D358, &qword_1000E96F0);
  sub_100013D94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100014898()
{
  result = qword_10012D488;
  if (!qword_10012D488)
  {
    sub_100005144(&qword_10012D470, &qword_1000E9848);
    sub_1000057D8(&qword_10012D490, &qword_10012D498, &qword_1000E9860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D488);
  }

  return result;
}

unint64_t sub_100014950()
{
  result = qword_10012D4A0;
  if (!qword_10012D4A0)
  {
    sub_100005144(&qword_10012D460, &qword_1000E9838);
    sub_1000057D8(&qword_10012D4A8, &qword_10012D4B0, &qword_1000E9868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4A0);
  }

  return result;
}

unint64_t sub_100014A08()
{
  result = qword_10012D4C0;
  if (!qword_10012D4C0)
  {
    sub_100005144(&qword_10012D4B8, &qword_1000E9870);
    sub_100014A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4C0);
  }

  return result;
}

unint64_t sub_100014A94()
{
  result = qword_10012D4C8;
  if (!qword_10012D4C8)
  {
    sub_100005144(&qword_10012D4D0, &qword_1000E9878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012D4C8);
  }

  return result;
}

uint64_t sub_100014BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000035B4(a3, v27 - v11, &unk_100130F10, &qword_1000EA660);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005688(v12, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000035B4(a3, v27 - v11, &unk_100130F10, &qword_1000EA660);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005688(v12, &unk_100130F10, &qword_1000EA660);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100002B38(&qword_10012DC90, &qword_1000E9F20);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100005688(a3, &unk_100130F10, &qword_1000EA660);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005688(a3, &unk_100130F10, &qword_1000EA660);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100002B38(&qword_10012DC90, &qword_1000E9F20);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000151D0()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D550 = result;
  return result;
}

uint64_t sub_100015200()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D558 = result;
  return result;
}

uint64_t sub_100015238()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D560 = result;
  return result;
}

uint64_t sub_100015268()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D568 = result;
  return result;
}

uint64_t sub_10001529C()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D570 = result;
  return result;
}

uint64_t sub_1000152D4()
{
  result = static Animation.spring(response:dampingFraction:blendDuration:)();
  qword_10012D578 = result;
  return result;
}

uint64_t sub_100015384()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);
}

uint64_t sub_10001542C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);
  return result;
}

uint64_t sub_1000154DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100015678(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100015718@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000157F4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100015948@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *a1;
  swift_beginAccess();
  v6 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_100015A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_100015B3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for AccessPointAnchoring();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = *a2;
  return a5(v11);
}

uint64_t sub_100015C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a3;
  v19[1] = a4;
  v6 = v4;
  v8 = type metadata accessor for AccessPointAnchoring();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_beginAccess();
  v14 = *(v9 + 16);
  v14(v12, v6 + v13, v8);
  sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  v20 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (a1)
  {
    v14(v12, v20, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v13, v12, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17 = v20;
    v19[-2] = v6;
    v19[-1] = v17;
    v21 = v6;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v15)(v20, v8);
}

uint64_t sub_100015EC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = type metadata accessor for AccessPointAnchoring();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_100015F60()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  v2 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);

  return v1;
}

uint64_t sub_10001601C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  a2[1] = v4;
}

uint64_t sub_1000160D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  v6 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100016264(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
}

uint64_t sub_100016308@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1000163E8(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001651C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden) = 0;
  v6 = type metadata accessor for APAnimationController();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller) = APAnimationController.init(highlightIndex:)();
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) = 0;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed) = 1;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__showDashboard) = 0;
  *(v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 0;
  v9 = (v2 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
  type metadata accessor for BasicImpressionsTracker();
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker) = BasicImpressionsTracker.__allocating_init(threshold:)();
  ObservationRegistrar.init()();
  v10 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  v11 = type metadata accessor for AccessPointContainer();
  (*(*(v11 - 8) + 32))(v3 + v10, a1, v11);
  v12 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  v13 = type metadata accessor for AccessPointAnchoring();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a2, v13);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor, a2, v13);
  return v3;
}

uint64_t sub_1000166C8()
{
  v1 = v0;
  v2 = type metadata accessor for ImpressionsContext();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  v4 = __chkstk_darwin(v2);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v50 - v6;
  v55 = type metadata accessor for Date();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v55);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012DC88, &qword_1000E9EB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v58 = &v50 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for AccessPointContainer();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AccessPointHighlight();
  v62 = *(v24 - 8);
  v25 = *(v62 + 64);
  __chkstk_darwin(v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v63[0] = v1;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  v50 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v30 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v32 = __OFSUB__(v30, 1);
  v33 = v30 - 1;
  if (v32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
    return result;
  }

  v34 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v20 + 16))(v23, v1 + v34, v19);
  v35 = AccessPointContainer.items.getter();
  result = (*(v20 + 8))(v23, v19);
  if (v33 >= *(v35 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_10002E8A8(v35 + 40 * v33 + 32, v63);

  sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
  v36 = swift_dynamicCast();
  v37 = v62;
  v38 = *(v62 + 56);
  if ((v36 & 1) == 0)
  {
    v38(v18, 1, 1, v24);
    v41 = &qword_10012DC78;
    v42 = &unk_1000E9E50;
    return sub_100005688(v18, v41, v42);
  }

  v38(v18, 0, 1, v24);
  (*(v37 + 32))(v27, v18, v24);
  v18 = v58;
  AccessPointHighlight.impressionMetrics.getter();
  v40 = v60;
  v39 = v61;
  if ((*(v60 + 48))(v18, 1, v61) == 1)
  {
    (*(v37 + 8))(v27, v24);
    v41 = &qword_10012DC88;
    v42 = &qword_1000E9EB0;
    return sub_100005688(v18, v41, v42);
  }

  (*(v40 + 32))(v59, v18, v39);
  swift_getKeyPath();
  v63[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker);

  v44 = v51;
  Date.init()();
  v45 = v52;
  ImpressionsContext.init()();
  v46 = v54;
  ImpressionsContext.withPosition(_:)();
  v47 = v57;
  v48 = *(v56 + 8);
  v48(v45, v57);
  v49 = v59;
  BasicImpressionsTracker.elementDidLeaveView(_:on:with:)();

  v48(v46, v47);
  (*(v53 + 8))(v44, v55);
  (*(v60 + 8))(v49, v61);
  return (*(v62 + 8))(v27, v24);
}

uint64_t sub_100016DAC()
{
  v1 = v0;
  v63 = type metadata accessor for ImpressionsContext();
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  v3 = __chkstk_darwin(v63);
  v58 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = v56 - v5;
  v61 = type metadata accessor for Date();
  v59 = *(v61 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v61);
  v57 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012DC88, &qword_1000E9EB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v64 = v56 - v10;
  v68 = type metadata accessor for ImpressionMetrics();
  v66 = *(v68 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v69 = v56 - v15;
  v73 = type metadata accessor for AccessPointHighlight();
  v70 = *(v73 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v73);
  v67 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessPointContainer();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v72 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v56 - v23;
  sub_1000166C8();
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v76[0] = v0;
  v26 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  v75 = v25;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller;
  v27 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v28 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v29 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v71 = v19[2];
  v71(v24, v1 + v29, v18);
  v30 = AccessPointContainer.items.getter();
  v31 = v19[1];
  v31(v24, v18);
  v32 = *(v30 + 16);

  if (v28 < v32)
  {
    swift_getKeyPath();
    v76[0] = v1;
    v56[1] = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v1 + v74);

    v35 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v36 = v72;
    v71(v72, v1 + v29, v18);
    v37 = AccessPointContainer.items.getter();
    result = (v31)(v36, v18);
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v35 < *(v37 + 16))
    {
      sub_10002E8A8(v37 + 40 * v35 + 32, v76);

      sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
      v38 = v69;
      v39 = v73;
      v40 = swift_dynamicCast();
      v41 = v70;
      v42 = *(v70 + 56);
      if (v40)
      {
        v42(v38, 0, 1, v39);
        v43 = v67;
        (*(v41 + 32))(v67, v38, v39);
        v44 = v64;
        AccessPointHighlight.impressionMetrics.getter();
        v45 = v66;
        v46 = v68;
        if ((*(v66 + 48))(v44, 1, v68) == 1)
        {
          (*(v41 + 8))(v43, v39);
          return sub_100005688(v44, &qword_10012DC88, &qword_1000E9EB0);
        }

        else
        {
          (*(v45 + 32))(v65, v44, v46);
          swift_getKeyPath();
          v76[0] = v1;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v47 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker);

          v48 = v57;
          Date.init()();
          v49 = v58;
          ImpressionsContext.init()();
          swift_getKeyPath();
          v76[0] = v1;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v50 = *(v1 + v74);

          dispatch thunk of APAnimationController.highlightIndex.getter();

          v51 = v60;
          ImpressionsContext.withPosition(_:)();
          v52 = *(v62 + 8);
          v53 = v49;
          v54 = v63;
          v52(v53, v63);
          v55 = v65;
          BasicImpressionsTracker.elementDidEnterView(_:on:with:)();

          v52(v51, v54);
          (*(v59 + 8))(v48, v61);
          (*(v45 + 8))(v55, v68);
          return (*(v41 + 8))(v67, v73);
        }
      }

      else
      {
        v42(v38, 1, 1, v39);
        return sub_100005688(v38, &qword_10012DC78, &unk_1000E9E50);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100017618()
{
  v1 = v0;
  v2 = type metadata accessor for PageMetrics();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v7);
  AccessPointContainer.pageMetrics.getter();
  (*(v8 + 8))(v11, v7);
  v13 = PageMetrics.pageFields.getter();
  result = (*(v3 + 8))(v6, v2);
  if (v13)
  {
    if (*(v13 + 16))
    {
      swift_getKeyPath();
      v18 = v1;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
      v16 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);
      swift_getKeyPath();
      v18 = v1;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker);

      static AccessPointMetricsHelper.postImpressionsEvent(pageFields:hostApp:tracker:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000178D8()
{
  v1 = v0;
  v2 = sub_100002B38(&qword_10012DC70, &qword_1000E9E48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = v43 - v4;
  v5 = type metadata accessor for PageMetrics();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  v7 = __chkstk_darwin(v5);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = v43 - v9;
  v10 = sub_100002B38(&qword_10012DC78, &unk_1000E9E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v43 - v12;
  v14 = type metadata accessor for AccessPointContainer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessPointHighlight();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v47 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v50[0] = v1;
  v43[0] = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  v43[1] = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v25 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v15 + 16))(v18, v1 + v26, v14);
  v27 = AccessPointContainer.items.getter();
  result = (*(v15 + 8))(v18, v14);
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *(v27 + 16))
  {
    sub_10002E8A8(v27 + 40 * v25 + 32, v50);

    sub_100002B38(&qword_10012DC80, &qword_1000ED7F0);
    v29 = swift_dynamicCast();
    v30 = v20[7];
    if (v29)
    {
      v31 = v20;
      v30(v13, 0, 1, v19);
      v32 = v20[4];
      v33 = v47;
      v32(v47, v13, v19);
      v34 = v46;
      AccessPointHighlight.pageMetrics.getter();
      v36 = v48;
      v35 = v49;
      if ((*(v48 + 48))(v34, 1, v49) != 1)
      {
        v37 = v45;
        (*(v36 + 32))(v45, v34, v35);
        v38 = PageMetrics.pageFields.getter();
        if (v38)
        {
          if (*(v38 + 16))
          {
            v46 = v38;
            sub_100017618();
            (*(v36 + 16))(v44, v37, v35);
            swift_beginAccess();
            AccessPointContainer.pageMetrics.setter();
            swift_endAccess();
            type metadata accessor for BasicImpressionsTracker();
            v39 = BasicImpressionsTracker.__allocating_init(threshold:)();
            sub_1000163C0(v39);
            swift_getKeyPath();
            v40 = v31;
            v50[0] = v1;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v41 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID);
            v42 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);

            static AccessPointMetricsHelper.postPageEvent(hostApp:pageFields:)();

            (*(v36 + 8))(v37, v35);
            (v40[1])(v33, v19);
            return sub_100016DAC();
          }
        }

        (*(v36 + 8))(v37, v35);
        (v31[1])(v33, v19);
        return sub_100016DAC();
      }

      (v31[1])(v33, v19);
      sub_100005688(v34, &qword_10012DC70, &qword_1000E9E48);
    }

    else
    {
      v30(v13, 1, 1, v19);
      sub_100005688(v13, &qword_10012DC78, &unk_1000E9E50);
    }

    return sub_100016DAC();
  }

  __break(1u);
  return result;
}

uint64_t sub_100017F24()
{
  v1 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  v2 = type metadata accessor for AccessPointContainer();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v4 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  v5 = type metadata accessor for AccessPointAnchoring();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor, v5);
  v7 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__gameBundleID + 8);

  v8 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__tracker);

  v9 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel___observationRegistrar;
  v10 = type metadata accessor for ObservationRegistrar();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000180CC()
{
  result = type metadata accessor for AccessPointContainer();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for AccessPointAnchoring();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100018204()
{
  swift_getKeyPath();
  sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000182A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100018374(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DC68, type metadata accessor for GameModeNotifier);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100018484()
{
  v0 = type metadata accessor for GameModeNotifier(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  result = ObservationRegistrar.init()();
  qword_100135BA8 = v3;
  return result;
}

uint64_t sub_1000184D4()
{
  v1 = OBJC_IVAR____TtC13GameOverlayUI16GameModeNotifier___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100018598()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for AccessPointModel.AnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessPointModel.AnimationState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100018798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100018878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(&qword_10012DA68, &unk_1000E99C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100018960()
{
  sub_100018A6C(319, &qword_10012DAD8, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100018A6C(319, &unk_10012DAE0, type metadata accessor for AccessPointModel, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10002F480(319, &qword_10012CEE8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100018A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100018ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100018B00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100018B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100018BC8()
{
  v1 = type metadata accessor for AccessPointAnimationView(0);
  v2 = v1 - 8;
  v43 = *(v1 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin(v1);
  v44 = v4;
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v42 = &v41 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessPointContainer();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 36);
  v49 = v0;
  v16 = (v0 + v15);
  v18 = *v16;
  v17 = v16[1];
  v53 = *v16;
  v54 = v17;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v19 = v51;
  swift_getKeyPath();
  v53 = v19;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (!v20)
  {
    v53 = v18;
    v54 = v17;
    State.wrappedValue.getter();
    v22 = v51;
    swift_getKeyPath();
    v53 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

    v24 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v53 = v18;
    v54 = v17;
    State.wrappedValue.getter();
    v25 = v51;
    v26 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v27 = v50;
    (*(v50 + 16))(v14, v25 + v26, v11);

    v28 = AccessPointContainer.items.getter();
    (*(v27 + 8))(v14, v11);
    v29 = *(v28 + 16);

    if (v24 < v29)
    {
      v30 = *(v49 + 8);
      v31 = *(v49 + 16);

      if ((v31 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v32 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v33 = v46;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v47 + 8))(v33, v48);
        v30 = v51;
      }

      swift_getKeyPath();
      v51 = v30;
      sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v30 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
      {
        swift_getKeyPath();
        v51 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v34 = *(v30 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

        if (v34 > 0)
        {
          return result;
        }

        v51 = v18;
        v52 = v17;
        State.wrappedValue.getter();
        sub_100016DAC();

        v35 = type metadata accessor for TaskPriority();
        v36 = v42;
        (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
        v37 = v45;
        sub_10002D940(v49, v45, type metadata accessor for AccessPointAnimationView);
        type metadata accessor for MainActor();
        v38 = static MainActor.shared.getter();
        v39 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        *(v40 + 24) = &protocol witness table for MainActor;
        sub_10002D7B8(v37, v40 + v39, type metadata accessor for AccessPointAnimationView);
        sub_100014BBC(0, 0, v36, &unk_1000EA0A0, v40);
      }
    }
  }

  return result;
}

uint64_t sub_100019220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for AccessPointAnimationView(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v9;
  v4[14] = v8;

  return _swift_task_switch(sub_100019358, v9, v8);
}

uint64_t sub_100019358()
{
  v1 = (v0[5] + *(v0[6] + 28));
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v4 = sub_100019728(v0[4]);

  v6 = floor(v4 * 1000000000.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v5);
  }

  v7 = v6;
  v8 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100019498;
  v5 = v7;

  return static Task<>.sleep(nanoseconds:)(v5);
}

uint64_t sub_100019498()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1000321E4;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1000195BC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000195BC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_10002D940(v7, v3, type metadata accessor for AccessPointAnimationView);
  v9 = static MainActor.shared.getter();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v3, v11 + v10, type metadata accessor for AccessPointAnimationView);
  sub_100014BBC(0, 0, v4, &unk_1000EA0B0, v11);

  v12 = v0[1];

  return v12();
}

double sub_100019728(uint64_t a1)
{
  v3 = type metadata accessor for AccessPointContainer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(type metadata accessor for AccessPointAnimationView(0) + 24);
  sub_10007A024(v12);
  LOBYTE(v13) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v14 = 1.5;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v4 + 16))(v7, a1 + v15, v3);
  swift_getKeyPath();
  v20 = a1;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(a1 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v17 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v18 = AccessPointContainer.displayDuration(for:)(v17);
  (*(v4 + 8))(v7, v3);
  return v14 * v18;
}

uint64_t sub_1000199A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[57] = a4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v4[58] = v5;
  v6 = *(v5 - 8);
  v4[59] = v6;
  v7 = *(v6 + 64) + 15;
  v4[60] = swift_task_alloc();
  v8 = type metadata accessor for EnvironmentValues();
  v4[61] = v8;
  v9 = *(v8 - 8);
  v4[62] = v9;
  v10 = *(v9 + 64) + 15;
  v4[63] = swift_task_alloc();
  v11 = type metadata accessor for AccessPointUseCase();
  v4[64] = v11;
  v12 = *(v11 - 8);
  v4[65] = v12;
  v13 = *(v12 + 64) + 15;
  v4[66] = swift_task_alloc();
  v14 = type metadata accessor for AccessPointContainer();
  v4[67] = v14;
  v15 = *(v14 - 8);
  v4[68] = v15;
  v16 = *(v15 + 64) + 15;
  v4[69] = swift_task_alloc();
  v17 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v4[70] = v17;
  v18 = *(v17 - 8);
  v4[71] = v18;
  v19 = *(v18 + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[74] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100019C14, v21, v20);
}

uint64_t sub_100019C14()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[57];

  v7 = type metadata accessor for AccessPointAnimationView(0);
  v8 = *(v6 + *(v7 + 52));
  dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  (*(v4 + 104))(v3, enum case for GameDashboardLaunchContext.LaunchTarget.dashboard(_:), v5);
  sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
  LOBYTE(v8) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v2, v5);
  if ((v8 & 1) == 0)
  {
    v10 = (v0[57] + *(v7 + 28));
    v12 = *v10;
    v11 = v10[1];
    v0[17] = *v10;
    v13 = v0[69];
    v96 = v0[68];
    v92 = v0[67];
    v0[18] = v11;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v14 = v0[55];
    swift_getKeyPath();
    v0[51] = v14;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v14 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

    v16 = dispatch thunk of APAnimationController.highlightIndex.getter();

    v17 = v11;

    v18 = v12;
    v0[33] = v12;
    v0[34] = v11;
    State.wrappedValue.getter();
    v19 = v0[49];
    v20 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
    swift_beginAccess();
    v21 = *(v96 + 16);
    v21(v13, v19 + v20, v92);

    v22 = AccessPointContainer.items.getter();
    v95 = *(v96 + 8);
    v95(v13, v92);
    v23 = *(v22 + 16);

    v91 = v21;
    if (v16 >= v23 - 1)
    {
      v92 = v11;
      v97 = v18;
      v46 = v0[57];
      v47 = *(v46 + 8);
      v48 = *(v46 + 16);

      if ((v48 & 1) == 0)
      {
        v50 = v0[62];
        v49 = v0[63];
        v51 = v0[61];
        static os_log_type_t.fault.getter();
        v52 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v50 + 8))(v49, v51);
        v47 = v0[37];
      }

      v53 = v0[69];
      v54 = v0[67];
      v55 = v0[66];
      v56 = v0[65];
      v57 = v0[64];
      *(v47 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = 0;

      v0[21] = v97;
      v0[22] = v11;
      State.wrappedValue.getter();
      v58 = v0[53];
      v59 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
      swift_beginAccess();
      v91(v53, v58 + v59, v54);

      AccessPointContainer.useCase.getter();
      v95(v53, v54);
      LOBYTE(v58) = AccessPointUseCase.isEphemeral.getter();
      (*(v56 + 8))(v55, v57);
      if (v58)
      {
        v0[19] = v97;
        v0[20] = v11;
        State.wrappedValue.getter();
        v60 = v0[40];
        if (*(v60 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) == 2)
        {
LABEL_19:

          goto LABEL_26;
        }

        swift_getKeyPath();
        v61 = swift_task_alloc();
        *(v61 + 16) = v60;
        *(v61 + 24) = 2;
        v0[41] = v60;
LABEL_22:
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_26;
      }

      v64 = v0[59];
      v65 = v0[60];
      v66 = v0[58];
      v17 = v97;
      v0[27] = v97;
      v0[28] = v92;
      State.wrappedValue.getter();
      v67 = v0[46];
      swift_getKeyPath();
      v0[42] = v67;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v68 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
      swift_beginAccess();
      (*(v64 + 16))(v65, v67 + v68, v66);

      LOBYTE(v68) = AccessPointAnchoring.bottom.getter();
      (*(v64 + 8))(v65, v66);
      if (v68)
      {
LABEL_18:
        v0[35] = v17;
        v0[36] = v92;
        State.wrappedValue.getter();
        v70 = v0[39];
        if (*(v70 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state) == 1)
        {
          goto LABEL_19;
        }

        swift_getKeyPath();
        v76 = swift_task_alloc();
        *(v76 + 16) = v70;
        *(v76 + 24) = 1;
        v0[38] = v70;
        goto LABEL_22;
      }

      if (qword_10012CB40 == -1)
      {
LABEL_17:
        v69 = v0[57];
        *(swift_task_alloc() + 16) = v69;
        withAnimation<A>(_:_:)();

        goto LABEL_18;
      }
    }

    else
    {
      v0[31] = v18;
      v0[32] = v11;
      State.wrappedValue.getter();
      v24 = v0[43];
      swift_getKeyPath();
      v0[44] = v24;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller;
      v26 = *(v24 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

      v27 = dispatch thunk of APAnimationController.highlightIndex.getter();

      if (!__OFADD__(v27, 1))
      {
        v93 = v0[69];
        v90 = v0[67];
        swift_getKeyPath();
        v0[45] = v24;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v28 = *(v24 + v25);

        dispatch thunk of APAnimationController.highlightIndex.setter();

        v0[29] = v18;
        v0[30] = v17;
        State.wrappedValue.getter();
        v29 = v0[47];
        swift_getKeyPath();
        v0[48] = v29;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v30 = *(v29 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

        v31 = dispatch thunk of APAnimationController.highlightIndex.getter();

        v0[25] = v18;
        v0[26] = v17;
        State.wrappedValue.getter();
        v32 = v0[50];
        v33 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
        swift_beginAccess();
        v21(v93, v32 + v33, v90);

        v34 = AccessPointContainer.items.getter();
        v95(v93, v90);
        v35 = *(v34 + 16);

        if (v31 >= v35 - 1)
        {
          goto LABEL_13;
        }

        v36 = v0[69];
        v37 = v0[67];
        v38 = v0[66];
        v39 = v0[65];
        v94 = v0[64];
        v0[23] = v18;
        v0[24] = v17;
        State.wrappedValue.getter();
        v40 = v0[54];
        v41 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
        swift_beginAccess();
        v91(v36, v40 + v41, v37);

        AccessPointContainer.useCase.getter();
        v95(v36, v37);
        LOBYTE(v40) = AccessPointUseCase.isEphemeral.getter();
        (*(v39 + 8))(v38, v94);
        if (v40)
        {
          v42 = v0[57];
          v43 = *(v42 + 8);
          v44 = *(v42 + 16);

          if (v44)
          {
            v45 = 1;
LABEL_25:
            v81 = v0[57];
            *(v43 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) = v45;

            sub_100018BC8();
            goto LABEL_26;
          }

          v71 = v0 + 56;
          v77 = v0[62];
          v78 = v0[63];
          v79 = v0[61];
          static os_log_type_t.fault.getter();
          v80 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v77 + 8))(v78, v79);
          v45 = 1;
        }

        else
        {
LABEL_13:
          v62 = v0[57];
          v43 = *(v62 + 8);
          v63 = *(v62 + 16);

          if (v63)
          {
            v45 = 0;
            goto LABEL_25;
          }

          v71 = v0 + 52;
          v72 = v0[62];
          v73 = v0[63];
          v74 = v0[61];
          static os_log_type_t.fault.getter();
          v75 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v72 + 8))(v73, v74);
          v45 = 0;
        }

        v43 = *v71;
        goto LABEL_25;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

LABEL_26:
  v82 = v0[73];
  v83 = v0[72];
  v84 = v0[69];
  v85 = v0[66];
  v86 = v0[63];
  v87 = v0[60];

  v88 = v0[1];

  return v88();
}

uint64_t sub_10001A7EC(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointAnchoring();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v9 = v7[1];
  v14 = *v7;
  v8 = v14;
  v15 = v9;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v14 = v8;
  v15 = v9;
  State.wrappedValue.getter();
  v10 = v16;
  swift_getKeyPath();
  v14 = v10;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__destAnchor;
  swift_beginAccess();
  (*(v3 + 16))(v6, v10 + v11, v2);

  sub_10001590C(v6);
}

uint64_t sub_10001A9C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v150 = a1;
  v3 = type metadata accessor for AccessPointAnimationView(0);
  v4 = v3 - 8;
  v149 = *(v3 - 8);
  v148 = *(v149 + 64);
  __chkstk_darwin(v3);
  v147 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100002B38(&qword_10012DED8, &qword_1000EA238);
  v146 = *(v145 - 8);
  v6 = *(v146 + 64);
  __chkstk_darwin(v145);
  v143 = &v109 - v7;
  v134 = type metadata accessor for DefaultGlassEffectShape();
  v135 = *(v134 - 8);
  v8 = *(v135 + 64);
  __chkstk_darwin(v134);
  v129 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Glass();
  v131 = *(v132 - 8);
  v10 = *(v131 + 64);
  __chkstk_darwin(v132);
  v128 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for AccessPointContainer();
  v124 = *(v125 - 8);
  v12 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100002B38(&qword_10012DEE0, &qword_1000EA240);
  v14 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v16 = &v109 - v15;
  v133 = sub_100002B38(&qword_10012DEE8, &qword_1000EA248);
  v137 = *(v133 - 8);
  v17 = *(v137 + 64);
  __chkstk_darwin(v133);
  v127 = &v109 - v18;
  v19 = sub_100002B38(&qword_10012DEF0, &qword_1000EA250);
  v20 = *(v19 - 8);
  v136 = v19 - 8;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v130 = &v109 - v22;
  v23 = sub_100002B38(&qword_10012DEF8, &qword_1000EA258);
  v24 = *(v23 - 8);
  v139 = v23 - 8;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  v138 = &v109 - v26;
  v27 = sub_100002B38(&qword_10012DF00, &qword_1000EA260);
  v28 = *(v27 - 8);
  v141 = v27 - 8;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v140 = &v109 - v30;
  v144 = sub_100002B38(&qword_10012DF08, &qword_1000EA268);
  v31 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v142 = &v109 - v32;
  v33 = (v2 + *(v4 + 36));
  v153 = v2;
  v34 = v33[1];
  v155 = *v33;
  v156 = v34;
  v35 = v155;
  v36 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.projectedValue.getter();
  v122 = v159;
  v121 = v160;
  v159 = v35;
  *&v160 = v34;
  State.wrappedValue.getter();
  v37 = v155;
  swift_getKeyPath();
  v159 = v37;
  v154 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v37 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v39 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v40 = type metadata accessor for AccessPointHighlightComponent.GestureHandler();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = AccessPointHighlightComponent.GestureHandler.init()();
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  v120 = Environment.init<A>(_:)();
  v45 = v44;
  v155 = v39;
  State.init(wrappedValue:)();
  v119 = v159;
  v118 = v160;
  LOBYTE(v155) = 0;
  State.init(wrappedValue:)();
  v117 = v159;
  v116 = v160;
  v155 = v43;
  State.init(wrappedValue:)();
  v113 = v159;
  v115 = v160;
  LOBYTE(v37) = v45 & 1;
  v163 = v45 & 1;
  v46 = *v2;
  v114 = Namespace.wrappedValue.getter();
  v112 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v48 = v47;
  v50 = v49;
  v155 = v35;
  v156 = v34;
  v151 = v36;
  v152 = v34;
  State.projectedValue.getter();
  v51 = v159;
  v111 = v160;
  v159 = v35;
  *&v160 = v34;
  v52 = v35;
  State.wrappedValue.getter();
  v53 = v155;
  v54 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  v55 = v124;
  v56 = v123;
  v57 = v125;
  (*(v124 + 16))(v123, v53 + v54, v125);
  swift_getKeyPath();
  v159 = v53;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v53 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v59 = dispatch thunk of APAnimationController.highlightIndex.getter();

  LOBYTE(v58) = AccessPointContainer.isCollapsibleItem(at:)(v59);

  (*(v55 + 8))(v56, v57);
  v60 = v126;
  v61 = &v16[*(v126 + 36)];
  *v61 = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  v62 = type metadata accessor for CollapsibleContentFrame(0);
  v63 = v61 + v62[5];
  *v63 = v51;
  *(v63 + 8) = v111;
  v64 = v61 + v62[6];
  LOBYTE(v155) = v58 & 1;
  State.init(wrappedValue:)();
  v65 = v160;
  *v64 = v159;
  *(v64 + 1) = v65;
  v66 = v61 + v62[7];
  LOBYTE(v155) = 0;
  State.init(wrappedValue:)();
  v67 = v160;
  *v66 = v159;
  *(v66 + 1) = v67;
  *v16 = v120;
  v16[8] = v37;
  *(v16 + 2) = v122;
  *(v16 + 24) = v121;
  v68 = v118;
  *(v16 + 5) = v119;
  *(v16 + 6) = v68;
  v16[56] = v117;
  v69 = v113;
  *(v16 + 8) = v116;
  *(v16 + 9) = v69;
  *(v16 + 10) = v115;
  *(v16 + 11) = 0x3FF0000000000000;
  *(v16 + 12) = 0x7974696361706FLL;
  *(v16 + 13) = 0xE700000000000000;
  *(v16 + 14) = v114;
  *(v16 + 30) = v112;
  *(v16 + 16) = v48;
  *(v16 + 17) = v50;
  v16[144] = 1;
  v70 = v128;
  static Glass.regular.getter();
  v71 = v129;
  DefaultGlassEffectShape.init()();
  v72 = sub_100031820();
  v73 = sub_10002B454(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape);
  v74 = v127;
  v75 = v134;
  View.glassEffect<A>(_:in:)();
  (*(v135 + 8))(v71, v75);
  (*(v131 + 8))(v70, v132);
  sub_100005688(v16, &qword_10012DEE0, &qword_1000EA240);
  v161 = type metadata accessor for Capsule();
  v162 = sub_10002B454(&qword_10012D158, &type metadata accessor for Capsule);
  v76 = sub_100012854(&v159);
  v77 = enum case for RoundedCornerStyle.continuous(_:);
  v78 = type metadata accessor for RoundedCornerStyle();
  (*(*(v78 - 8) + 104))(v76, v77, v78);
  v155 = v60;
  v156 = v75;
  v157 = v72;
  v158 = v73;
  swift_getOpaqueTypeConformance2();
  v79 = v143;
  v80 = v133;
  StrokeFocusEffect.init(shape:)();
  sub_1000057D8(&qword_10012DF60, &qword_10012DED8, &qword_1000EA238);
  v81 = v130;
  v82 = v145;
  View.focusEffect<A>(_:)();
  (*(v146 + 8))(v79, v82);
  (*(v137 + 8))(v74, v80);
  v83 = v153;
  sub_10001B9EC();
  v85 = v84;
  static UnitPoint.center.getter();
  v86 = &v81[*(v136 + 44)];
  *v86 = v85;
  *(v86 + 1) = v85;
  *(v86 + 2) = v87;
  *(v86 + 3) = v88;
  v110 = v52;
  v89 = v152;
  v159 = v52;
  *&v160 = v152;
  State.wrappedValue.getter();
  v90 = v155;
  swift_getKeyPath();
  v159 = v90;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v77) = *(v90 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  if (v77 == 3)
  {
    v91 = -200.0;
  }

  else
  {
    v91 = 0.0;
  }

  v92 = v81;
  v93 = v138;
  sub_100014830(v92, v138, &qword_10012DEF0, &qword_1000EA250);
  v94 = v93 + *(v139 + 44);
  *v94 = 0;
  *(v94 + 8) = v91;
  v159 = v52;
  *&v160 = v89;
  State.wrappedValue.getter();
  v95 = v155;
  swift_getKeyPath();
  v159 = v95;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v96 = *(v95 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

  if (v96)
  {
    v97 = 1.0;
  }

  else
  {
    v97 = 0.5;
  }

  v98 = v140;
  sub_100014830(v93, v140, &qword_10012DEF8, &qword_1000EA258);
  *(v98 + *(v141 + 44)) = v97;
  v99 = v147;
  sub_10002D940(v83, v147, type metadata accessor for AccessPointAnimationView);
  v100 = (*(v149 + 80) + 16) & ~*(v149 + 80);
  v101 = swift_allocObject();
  sub_10002D7B8(v99, v101 + v100, type metadata accessor for AccessPointAnimationView);
  v102 = v142;
  sub_100014830(v98, v142, &qword_10012DF00, &qword_1000EA260);
  v103 = (v102 + *(v144 + 36));
  *v103 = sub_100031A74;
  v103[1] = v101;
  v103[2] = 0;
  v103[3] = 0;
  v159 = v110;
  *&v160 = v152;
  State.wrappedValue.getter();
  v104 = v155;
  swift_getKeyPath();
  v159 = v104;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v105 = *(v104 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  v106 = dispatch thunk of APAnimationController.highlightIndex.getter();

  v159 = v106;
  sub_10002D940(v153, v99, type metadata accessor for AccessPointAnimationView);
  v107 = swift_allocObject();
  sub_10002D7B8(v99, v107 + v100, type metadata accessor for AccessPointAnimationView);
  sub_100031ACC();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v102, &qword_10012DF08, &qword_1000EA268);
}

uint64_t sub_10001B9EC()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPointAnimationView(0);
  v3 = (v0 + *(v2 + 28));
  v8 = *v3;
  v10 = v3[1];
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal);

  if (v4 == 1)
  {
    v6 = (v1 + *(v2 + 32));
    v9 = *v6;
    v11 = *(v6 + 1);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    result = State.wrappedValue.getter();
    if (v7 == 1)
    {
      return static AccessPointHighlightComponent.highlightScaleFactor.getter();
    }
  }

  return result;
}

uint64_t sub_10001BB3C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v7 = *v6;
  v25 = v6[1];
  v26 = v7;
  v30 = v7;
  v31 = v25;
  v24[1] = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v8 = v29;
  v9 = *(a1 + 8);
  v24[0] = a1;
  v10 = *(a1 + 16);

  v11 = v9;
  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v5, v2);
    v11 = v30;
  }

  v27 = v2;
  swift_getKeyPath();
  v30 = v11;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active))
  {
    swift_getKeyPath();
    v30 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v14 = v13 > 0;
    v15 = (v8 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    if (((v14 ^ *(v8 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden)) & 1) == 0)
    {
LABEL_5:
      *v15 = v14;

      goto LABEL_8;
    }
  }

  else
  {

    v15 = (v8 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);
    LOBYTE(v14) = 1;
    if (*(v8 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden))
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v24[-2] = v8;
  LOBYTE(v24[-1]) = v14;
  v30 = v8;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_8:

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v5, v27);
    v9 = v30;
  }

  swift_getKeyPath();
  v30 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) != 1)
  {
  }

  swift_getKeyPath();
  v30 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v9 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

  if (v18 <= 0)
  {
    v30 = v26;
    v31 = v25;
    State.wrappedValue.getter();
    v20 = v29;
    swift_getKeyPath();
    v30 = v20;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (!v21)
    {
      goto LABEL_14;
    }

    v30 = v26;
    v31 = v25;
    State.wrappedValue.getter();
    v22 = v29;
    swift_getKeyPath();
    v30 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v22 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v23 == 1)
    {
LABEL_14:
      if (qword_10012CB48 != -1)
      {
        swift_once();
      }

      __chkstk_darwin(qword_10012D558);
      v24[-2] = v24[0];
      return withAnimation<A>(_:_:)();
    }
  }

  return result;
}

uint64_t sub_10001C184(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v5 = *v1;
  v6 = v1[1];
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  if (*(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) == 1)
  {
    *(v4 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__reveal) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10001C2F8(uint64_t a1)
{
  v15 = type metadata accessor for AnimationCompletionCriteria();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v15);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessPointAnimationView(0);
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v16);
  if (qword_10012CB60 != -1)
  {
    v8 = swift_once();
  }

  __chkstk_darwin(v8);
  *(&v15 - 2) = a1;
  sub_10002D940(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_10002D7B8(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AccessPointAnimationView);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v2 + 8))(v5, v15);
  if (qword_10012CB40 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10012D550);
  *(&v15 - 2) = a1;
  withAnimation<A>(_:_:)();
  v11 = (a1 + *(v16 + 28));
  v13 = *v11;
  v12 = v11[1];
  v17 = v13;
  v18 = v12;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  sub_1000178D8();
}

uint64_t sub_10001C624(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C6A8(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for AccessPointContainer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessPointAnimationView(0);
  v8 = (a1 + *(v7 + 28));
  v9 = v8[1];
  *&v33 = *v8;
  v10 = v33;
  *(&v33 + 1) = v9;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v11 = v29;
  v12 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel_container;
  swift_beginAccess();
  (*(v3 + 16))(v6, v11 + v12, v2);

  *&v33 = v10;
  *(&v33 + 1) = v9;
  State.wrappedValue.getter();
  v13 = v29;
  swift_getKeyPath();
  *&v33 = v13;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__controller);

  dispatch thunk of APAnimationController.highlightIndex.getter();

  AccessPointContainer.cornerRadii(for:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v6, v2);
  v23 = (v28 + *(v7 + 60));
  v24 = *(v23 + 4);
  v25 = v23[1];
  v33 = *v23;
  v34 = v25;
  v35 = v24;
  v29 = v16;
  v30 = v18;
  v31 = v20;
  v32 = v22;
  sub_100002B38(&qword_10012DF88, &qword_1000EA2B8);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v57 = sub_100002B38(&qword_10012DEC8, &qword_1000EA228);
  v3 = *(*(v57 - 8) + 64);
  v4 = __chkstk_darwin(v57);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v51 - v6;
  v7 = type metadata accessor for AccessPointAnchoring();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v51 - v14;
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = *(type metadata accessor for AccessPointAnimationView(0) + 28);
  v56 = a1;
  v19 = (a1 + v18);
  v20 = v19[1];
  v62 = *v19;
  v72 = v62;
  v73 = v20;
  v61 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v21 = v70;
  swift_getKeyPath();
  v72 = v21;
  v63 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v23 = v8[2];
  v23(v17, v21 + v22, v7);

  LOBYTE(v21) = AccessPointAnchoring.centered.getter();
  v24 = v8[1];
  v24(v17, v7);
  v53 = v15;
  v60 = v8 + 1;
  v54 = v24;
  if (v21)
  {
    v55 = 0;
  }

  else
  {
    v70 = v62;
    v71 = v20;
    v52 = v12;
    v25 = v24;
    State.wrappedValue.getter();
    v26 = v68;
    swift_getKeyPath();
    v70 = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
    swift_beginAccess();
    v23(v15, v26 + v27, v7);

    v55 = AccessPointAnchoring.leading.getter();
    v25(v15, v7);
    v12 = v52;
  }

  v28 = v64;
  v29 = v56;
  sub_10001A9C8(v64);
  v30 = *v29;
  v31 = Namespace.wrappedValue.getter();
  LODWORD(v29) = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v32 = v28 + *(v57 + 36);
  *v32 = 1936683112;
  *(v32 + 8) = 0xE400000000000000;
  *(v32 + 16) = v31;
  *(v32 + 24) = v29;
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  *(v32 + 48) = 1;
  v35 = v62;
  v68 = v62;
  v69 = v20;
  State.wrappedValue.getter();
  v36 = v65;
  swift_getKeyPath();
  v68 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v23(v12, v36 + v37, v7);

  LOBYTE(v36) = AccessPointAnchoring.centered.getter();
  v38 = v54;
  v54(v12, v7);
  if (v36)
  {
    v39 = 0;
  }

  else
  {
    v65 = v35;
    v66 = v20;
    v40 = v38;
    State.wrappedValue.getter();
    v41 = v67;
    swift_getKeyPath();
    v65 = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
    swift_beginAccess();
    v43 = v41 + v42;
    v44 = v53;
    v23(v53, v43, v7);

    LOBYTE(v41) = AccessPointAnchoring.leading.getter();
    v40(v44, v7);
    v39 = v41 ^ 1;
  }

  v45 = v64;
  v46 = v58;
  sub_1000035B4(v64, v58, &qword_10012DEC8, &qword_1000EA228);
  v47 = v59;
  *v59 = 0;
  *(v47 + 8) = 0;
  *(v47 + 9) = v55 & 1;
  v48 = sub_100002B38(&qword_10012DED0, &qword_1000EA230);
  sub_1000035B4(v46, v47 + *(v48 + 48), &qword_10012DEC8, &qword_1000EA228);
  v49 = v47 + *(v48 + 64);
  *v49 = 0;
  v49[8] = 0;
  v49[9] = v39 & 1;
  sub_100005688(v45, &qword_10012DEC8, &qword_1000EA228);
  return sub_100005688(v46, &qword_10012DEC8, &qword_1000EA228);
}

uint64_t sub_10001CF5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v138 = a2;
  v123 = type metadata accessor for GlobalCoordinateSpace();
  v122 = *(v123 - 8);
  v4 = *(v122 + 64);
  __chkstk_darwin(v123);
  v121 = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessPointAnchoring();
  v119 = *(v6 - 8);
  v7 = *(v119 + 64);
  __chkstk_darwin(v6);
  v118 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for EnvironmentValues();
  v110 = *(v111 - 8);
  v9 = *(v110 + 8);
  __chkstk_darwin(v111);
  v109 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for GeometryProxy();
  v141 = *(v128 - 8);
  v11 = *(v141 + 64);
  __chkstk_darwin(v128);
  v135 = v12;
  v113 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessPointAnimationView(0);
  v14 = v13 - 8;
  v131 = *(v13 - 8);
  v15 = *(v131 + 64);
  __chkstk_darwin(v13);
  v134 = v16;
  v112 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100002B38(&qword_10012DE68, &qword_1000EA1C8);
  v17 = *(*(v139 - 1) + 64);
  __chkstk_darwin(v139);
  v19 = v103 - v18;
  v20 = sub_100002B38(&qword_10012DE70, &qword_1000EA1D0);
  v120 = *(v20 - 8);
  v21 = *(v120 + 64);
  __chkstk_darwin(v20);
  v136 = v103 - v22;
  v23 = sub_100002B38(&qword_10012DE78, &qword_1000EA1D8);
  v125 = *(v23 - 8);
  v24 = *(v125 + 64);
  __chkstk_darwin(v23);
  v124 = v103 - v25;
  v26 = sub_100002B38(&qword_10012DE80, &qword_1000EA1E0);
  v127 = *(v26 - 8);
  v27 = *(v127 + 64);
  __chkstk_darwin(v26);
  v126 = v103 - v28;
  v29 = sub_100002B38(&qword_10012DE88, &qword_1000EA1E8);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = v103 - v31;
  v33 = *(v14 + 36);
  v140 = a1;
  v34 = (a1 + v33);
  v36 = *v34;
  v35 = v34[1];
  v117 = v36;
  v146 = v36;
  v147 = v35;
  v116 = v35;
  v115 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v37 = v142;
  swift_getKeyPath();
  v146 = v37;
  v114 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v14) = *(v37 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__accessPointHidden);

  if (v14 == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CGRect(255);
    v39 = v38;
    v40 = sub_10003163C();
    v41 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
    v146 = v139;
    v147 = v6;
    v148 = v40;
    v149 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = sub_10002B454(&qword_10012D058, type metadata accessor for CGRect);
    v146 = v20;
    v147 = v39;
    v148 = OpaqueTypeConformance2;
    v149 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v45 = sub_10002B3AC();
    v146 = v23;
    v147 = &type metadata for AccessPointModel.AnimationState;
    v148 = v44;
    v149 = v45;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v103[1] = v29;
    v104 = v6;
    v105 = v20;
    v106 = v32;
    v107 = v23;
    v108 = v26;
    *v19 = static HorizontalAlignment.center.getter();
    *(v19 + 1) = 0;
    v19[16] = 0;
    v47 = sub_100002B38(&qword_10012DE90, &qword_1000EA1F0);
    v48 = v140;
    sub_10001DFEC(v140, &v19[*(v47 + 44)]);
    v49 = v112;
    sub_10002D940(v48, v112, type metadata accessor for AccessPointAnimationView);
    v50 = v141;
    v51 = *(v141 + 16);
    v52 = v113;
    v53 = v128;
    v133 = v141 + 16;
    v132 = v51;
    v51(v113, v138, v128);
    v54 = *(v131 + 80);
    v55 = (v54 + 16) & ~v54;
    v56 = *(v50 + 80);
    v57 = (v134 + v56 + v55) & ~v56;
    v130 = v54 | v56;
    v131 = v57 + v135;
    v58 = swift_allocObject();
    v134 = v55;
    sub_10002D7B8(v49, v58 + v55, type metadata accessor for AccessPointAnimationView);
    v59 = *(v50 + 32);
    v141 = v50 + 32;
    v135 = v57;
    v129 = v59;
    v59(v58 + v57, v52, v53);
    v60 = v139[9];
    v103[0] = v19;
    v61 = &v19[v60];
    *v61 = sub_1000312C4;
    *(v61 + 1) = v58;
    *(v61 + 2) = 0;
    *(v61 + 3) = 0;
    v62 = v48[1];
    v63 = *(v48 + 16);

    v64 = v52;
    if ((v63 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v65 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v66 = v109;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v110 + 1))(v66, v111);
      v62 = v146;
    }

    swift_getKeyPath();
    v146 = v62;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v68 = v119;
    v69 = v118;
    v70 = v104;
    (*(v119 + 16))(v118, v62 + v67, v104);

    v71 = v49;
    v110 = type metadata accessor for AccessPointAnimationView;
    sub_10002D940(v140, v49, type metadata accessor for AccessPointAnimationView);
    v72 = v138;
    v132(v64, v138, v53);
    v73 = swift_allocObject();
    sub_10002D7B8(v71, v73 + v134, type metadata accessor for AccessPointAnimationView);
    v129(v73 + v135, v64, v53);
    v111 = sub_10003163C();
    v74 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
    v75 = v139;
    v76 = v103[0];
    View.onChange<A>(of:initial:_:)();

    (*(v68 + 8))(v69, v70);
    sub_100005688(v76, &qword_10012DE68, &qword_1000EA1C8);
    v77 = v121;
    static CoordinateSpaceProtocol<>.global.getter();
    v78 = v123;
    GeometryProxy.frame<A>(in:)();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    (*(v122 + 8))(v77, v78);
    v146 = v80;
    v147 = v82;
    v148 = v84;
    v149 = v86;
    v87 = v110;
    sub_10002D940(v140, v71, v110);
    v88 = v128;
    v132(v64, v72, v128);
    v89 = swift_allocObject();
    v90 = v87;
    sub_10002D7B8(v71, v89 + v134, v87);
    v129(v89 + v135, v64, v88);
    type metadata accessor for CGRect(0);
    v122 = v91;
    v142 = v75;
    v143 = v70;
    v144 = v111;
    v145 = v74;
    v139 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    v121 = swift_getOpaqueTypeConformance2();
    v123 = sub_10002B454(&qword_10012D058, type metadata accessor for CGRect);
    v92 = v124;
    v93 = v105;
    v94 = v136;
    View.onChange<A>(of:initial:_:)();

    (*(v120 + 8))(v94, v93);
    v146 = v117;
    v147 = v116;
    State.wrappedValue.getter();
    v95 = v142;
    swift_getKeyPath();
    v146 = v95;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v94) = *(v95 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    LOBYTE(v142) = v94;
    sub_10002D940(v140, v71, v90);
    v132(v64, v138, v88);
    v96 = swift_allocObject();
    sub_10002D7B8(v71, v96 + v134, v90);
    v129(v96 + v135, v64, v88);
    v146 = v93;
    v147 = v122;
    v148 = v121;
    v149 = v123;
    v97 = swift_getOpaqueTypeConformance2();
    v98 = sub_10002B3AC();
    v99 = v126;
    v100 = v107;
    View.onChange<A>(of:initial:_:)();

    (*(v125 + 8))(v92, v100);
    v101 = v127;
    v102 = v108;
    (*(v127 + 16))(v106, v99, v108);
    swift_storeEnumTagMultiPayload();
    v146 = v100;
    v147 = &type metadata for AccessPointModel.AnimationState;
    v148 = v97;
    v149 = v98;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v101 + 8))(v99, v102);
  }
}

uint64_t sub_10001DFEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v48 = a2;
  v3 = sub_100002B38(&qword_10012DEB0, &qword_1000EA210);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for AccessPointAnchoring();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 + *(type metadata accessor for AccessPointAnimationView(0) + 28));
  v16 = *v15;
  v45 = v15[1];
  v46 = v16;
  v52 = v16;
  v53 = v45;
  v44 = sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v17 = v49;
  swift_getKeyPath();
  v52 = v17;
  v41 = sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v19 = v11[2];
  v19(v14, v17 + v18, v10);

  v20 = AccessPointAnchoring.bottom.getter();
  LOBYTE(v18) = v20;
  v43 = v20;
  v21 = v11[1];
  v21(v14, v10);
  v42 = v18 & 1;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = sub_100002B38(&qword_10012DEB8, &qword_1000EA218);
  v23 = v40;
  sub_10001C938(v40, &v9[*(v22 + 44)]);
  v24 = *v23;
  v25 = Namespace.wrappedValue.getter();
  v26 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v27 = &v9[*(v4 + 44)];
  *v27 = 1936683126;
  *(v27 + 1) = 0xE400000000000000;
  *(v27 + 2) = v25;
  *(v27 + 6) = v26;
  *(v27 + 4) = v28;
  *(v27 + 5) = v29;
  v27[48] = 1;
  v49 = v46;
  v50 = v45;
  State.wrappedValue.getter();
  v30 = v51;
  swift_getKeyPath();
  v49 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__anchor;
  swift_beginAccess();
  v19(v14, v30 + v31, v10);

  LOBYTE(v30) = AccessPointAnchoring.bottom.getter();
  v21(v14, v10);
  v32 = v47;
  sub_1000035B4(v9, v47, &qword_10012DEB0, &qword_1000EA210);
  v33 = v48;
  *v48 = 0;
  v34 = v43;
  *(v33 + 8) = v42;
  *(v33 + 9) = (v34 & 1) == 0;
  v35 = v33;
  v36 = sub_100002B38(&qword_10012DEC0, &qword_1000EA220);
  sub_1000035B4(v32, v35 + *(v36 + 48), &qword_10012DEB0, &qword_1000EA210);
  v37 = v35 + *(v36 + 64);
  *v37 = 0;
  *(v37 + 8) = (v30 & 1) == 0;
  *(v37 + 9) = v30 & 1;
  sub_100005688(v9, &qword_10012DEB0, &qword_1000EA210);
  return sub_100005688(v32, &qword_10012DEB0, &qword_1000EA210);
}

uint64_t sub_10001E434(uint64_t a1)
{
  v81 = a1;
  v2 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v80 = &v73 - v4;
  v5 = type metadata accessor for AccessPointAnchoring();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  __chkstk_darwin(v5);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DynamicTypeSize();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v75);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GlobalCoordinateSpace();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EnvironmentValues();
  v82 = *(v17 - 8);
  v83 = v17;
  v18 = *(v82 + 64);
  __chkstk_darwin(v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 8);
  v79 = v1;
  v22 = *(v1 + 16);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v82 + 8))(v20, v83);
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v74 = Strong;
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    (*(v13 + 8))(v16, v12);
    static AccessPointHighlightComponent.maxAccessPointExpandedWidth.getter();
    if (v34 >= v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v34;
    }

    v36 = type metadata accessor for AccessPointAnimationView(0);
    v37 = v79;
    v38 = v79 + *(v36 + 24);
    sub_10007A024(v11);
    static AccessPointHighlightComponent.accessPointHeight(for:)();
    v40 = v39;
    (*(v8 + 8))(v11, v75);

    if ((v22 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v82 + 8))(v20, v83);
      v21 = v87;
    }

    swift_getKeyPath();
    v87 = v21;
    sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
    swift_beginAccess();
    v44 = v76;
    v43 = v77;
    v45 = v21 + v42;
    v46 = v78;
    (*(v77 + 16))(v76, v45, v78);

    v47 = (*(v43 + 88))(v44, v46);
    if (v47 == enum case for AccessPointAnchoring.topTrailing(_:))
    {
      v88.origin.x = v27;
      v88.origin.y = v29;
      v88.size.width = v31;
      v88.size.height = v33;
      MaxX = CGRectGetMaxX(v88);
      v49 = (v37 + *(v36 + 28));
      v51 = *v49;
      v50 = v49[1];
      v85 = v51;
      v86 = v50;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v52 = v84;
      swift_getKeyPath();
      v85 = v52;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v53 = *(v52 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

      if (v53 == 1)
      {
        v54 = v40;
      }

      else
      {
        v54 = v35;
      }

      v27 = MaxX - v54;
      goto LABEL_22;
    }

    if (v47 != enum case for AccessPointAnchoring.bottomLeading(_:))
    {
      if (v47 != enum case for AccessPointAnchoring.bottomTrailing(_:))
      {
        (*(v43 + 8))(v44, v46);
        goto LABEL_22;
      }

      v89.origin.x = v27;
      v89.origin.y = v29;
      v89.size.width = v31;
      v89.size.height = v33;
      v55 = CGRectGetMaxX(v89);
      v56 = (v37 + *(v36 + 28));
      v58 = *v56;
      v57 = v56[1];
      v85 = v58;
      v86 = v57;
      sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
      State.wrappedValue.getter();
      v59 = v84;
      swift_getKeyPath();
      v85 = v59;
      sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v60 = *(v59 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

      if (v60 == 1)
      {
        v61 = v40;
      }

      else
      {
        v61 = v35;
      }

      v27 = v55 - v61;
    }

    v90.origin.x = v27;
    v90.origin.y = v29;
    v90.size.width = v31;
    v90.size.height = v33;
    v29 = CGRectGetMaxY(v90) - v40;
LABEL_22:
    v62 = (v37 + *(v36 + 28));
    v64 = *v62;
    v63 = v62[1];
    v85 = v64;
    v86 = v63;
    sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
    State.wrappedValue.getter();
    v65 = v84;
    swift_getKeyPath();
    v85 = v65;
    sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *(v65 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

    if (v66 == 1)
    {
      v67 = v40;
    }

    else
    {
      v67 = v35;
    }

    v68 = type metadata accessor for TaskPriority();
    v69 = v80;
    (*(*(v68 - 8) + 56))(v80, 1, 1, v68);
    type metadata accessor for MainActor();
    v70 = v74;
    swift_unknownObjectRetain();
    v71 = static MainActor.shared.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = &protocol witness table for MainActor;
    *(v72 + 32) = v70;
    *(v72 + 40) = v27;
    *(v72 + 48) = v29;
    *(v72 + 56) = v67;
    *(v72 + 64) = v40;
    sub_100014BBC(0, 0, v69, &unk_1000EA208, v72);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001ED10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v147 = a1;
  v146 = sub_100002B38(&qword_10012CC58, &qword_1000E9FB0);
  v145 = *(v146 - 8);
  v3 = *(v145 + 64);
  __chkstk_darwin(v146);
  v157 = &v135 - v4;
  v144 = sub_100002B38(&qword_10012DD68, &qword_1000E9FB8);
  v143 = *(v144 - 8);
  v5 = *(v143 + 64);
  __chkstk_darwin(v144);
  v156 = &v135 - v6;
  v155 = sub_100002B38(&qword_10012DD70, &qword_1000E9FC0);
  v142 = *(v155 - 8);
  v7 = *(v142 + 64);
  __chkstk_darwin(v155);
  v154 = &v135 - v8;
  v153 = sub_100002B38(&qword_10012DD78, &qword_1000E9FC8);
  v141 = *(v153 - 8);
  v9 = *(v141 + 64);
  __chkstk_darwin(v153);
  v152 = &v135 - v10;
  v151 = sub_100002B38(&qword_10012DD80, &qword_1000E9FD0);
  v140 = *(v151 - 8);
  v11 = v140[8];
  __chkstk_darwin(v151);
  v150 = &v135 - v12;
  v148 = sub_100002B38(&qword_10012DD88, &qword_1000E9FD8);
  v13 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v15 = (&v135 - v14);
  *v15 = static Alignment.center.getter();
  v15[1] = v16;
  v17 = sub_100002B38(&qword_10012DD90, &unk_1000E9FE0);
  sub_100020320(v1, v15 + *(v17 + 44));
  v18 = type metadata accessor for AccessPointAnimationView(0);
  v19 = (v1 + *(v18 + 40));
  v20 = *v19;
  v21 = v19[1];
  v164 = v20;
  v165 = v21;
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.getter();
  v22 = v163;
  v23 = sub_100002B38(&qword_10012DDA0, &qword_1000E9FF0);
  *(v15 + *(v23 + 36)) = v22;
  v24 = *(v18 - 8);
  v160 = (v18 - 8);
  v25 = v24;
  v26 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002D940(v2, &v135 - v27, type metadata accessor for AccessPointAnimationView);
  v28 = *(v25 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = swift_allocObject();
  sub_10002D7B8(&v135 - v27, v30 + v29, type metadata accessor for AccessPointAnimationView);
  v31 = sub_100002B38(&qword_10012DDA8, &qword_1000E9FF8);
  v32 = (v15 + *(v31 + 36));
  *v32 = sub_10002F4EC;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  __chkstk_darwin(v31);
  v149 = v27;
  sub_10002D940(v2, &v135 - v27, type metadata accessor for AccessPointAnimationView);
  v33 = swift_allocObject();
  sub_10002D7B8(&v135 - v27, v33 + v29, type metadata accessor for AccessPointAnimationView);
  v34 = (v15 + *(v148 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_10002F738;
  v34[3] = v33;
  v35 = *(v160 + 15);
  v36 = v2;
  v161 = v2;
  v37 = *(v2 + v35);
  v136 = type metadata accessor for GameDashboardLaunchContext.LaunchTarget();
  v38 = *(v136 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v136);
  v41 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = dispatch thunk of GameDashboardLaunchContext.launchTarget.getter();
  __chkstk_darwin(v42);
  v139 = type metadata accessor for AccessPointAnimationView;
  sub_10002D940(v36, &v135 - v27, type metadata accessor for AccessPointAnimationView);
  v43 = swift_allocObject();
  sub_10002D7B8(&v135 - v27, v43 + v29, type metadata accessor for AccessPointAnimationView);
  v138 = sub_10002F81C();
  v137 = sub_10002B454(&qword_10012CFB8, &type metadata accessor for GameDashboardLaunchContext.LaunchTarget);
  v44 = v148;
  v45 = v136;
  View.onChange<A>(of:initial:_:)();

  v46 = v45;
  (*(v38 + 8))(v41, v45);
  sub_100005688(v15, &qword_10012DD88, &qword_1000E9FD8);
  v47 = v161;
  v48 = (v161 + *(v160 + 9));
  v50 = *v48;
  v49 = v48[1];
  v164 = v50;
  v165 = v49;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v51 = v163;
  swift_getKeyPath();
  v164 = v51;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v37) = *(v51 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__state);

  LOBYTE(v163) = v37;
  __chkstk_darwin(v52);
  v53 = &v135 - v149;
  v54 = v139;
  sub_10002D940(v47, &v135 - v149, v139);
  v159 = v28;
  v160 = v26;
  v55 = swift_allocObject();
  v158 = v29;
  sub_10002D7B8(v53, v55 + v29, v54);
  v164 = v44;
  v165 = v46;
  v166 = v138;
  v167 = v137;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_10002B3AC();
  v58 = v151;
  v148 = OpaqueTypeConformance2;
  v139 = v57;
  v59 = v150;
  View.onChange<A>(of:initial:_:)();

  (v140[1])(v59, v58);
  v60 = *(v47 + 8);
  LODWORD(v58) = *(v47 + 16);

  v61 = v60;
  LODWORD(v150) = v58;
  if ((v58 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v63 = type metadata accessor for EnvironmentValues();
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    __chkstk_darwin(v63);
    v67 = &v135 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v64 + 8))(v67, v63);
    v61 = v164;
  }

  v68 = type metadata accessor for AccessPointAnchoring();
  v140 = &v135;
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  v72 = &v135 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v164 = v61;
  sub_10002B454(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  (*(v69 + 16))(v72, v61 + v73, v68);

  __chkstk_darwin(v74);
  v75 = &v135 - v149;
  sub_10002D940(v161, &v135 - v149, type metadata accessor for AccessPointAnimationView);
  v76 = v158;
  v77 = swift_allocObject();
  sub_10002D7B8(v75, v76 + v77, type metadata accessor for AccessPointAnimationView);
  v164 = v151;
  v165 = &type metadata for AccessPointModel.AnimationState;
  v166 = v148;
  v167 = v139;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_10002B454(&qword_10012CFD0, &type metadata accessor for AccessPointAnchoring);
  v80 = v153;
  v151 = v78;
  v81 = v152;
  View.onChange<A>(of:initial:_:)();

  (*(v69 + 8))(v72, v68);
  (*(v141 + 8))(v81, v80);

  v82 = v60;
  if ((v150 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v83 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v84 = type metadata accessor for EnvironmentValues();
    v85 = *(v84 - 8);
    v86 = *(v85 + 64);
    __chkstk_darwin(v84);
    v88 = &v135 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v85 + 8))(v88, v84);
    v82 = v164;
  }

  swift_getKeyPath();
  v164 = v82;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v82 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__active) == 1)
  {
    swift_getKeyPath();
    v164 = v82;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v89 = *(v82 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);

    v91 = v89 > 0;
  }

  else
  {

    v91 = 1;
  }

  v92 = v160;
  v152 = ~v159;
  LOBYTE(v162) = v91;
  __chkstk_darwin(v90);
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002D940(v161, &v135 - v93, type metadata accessor for AccessPointAnimationView);
  v94 = v158;
  v95 = swift_allocObject();
  sub_10002D7B8(&v135 - v93, v94 + v95, type metadata accessor for AccessPointAnimationView);
  v164 = v153;
  v165 = v68;
  v166 = v151;
  v167 = v79;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v155;
  v98 = v154;
  View.onChange<A>(of:initial:_:)();

  (*(v142 + 8))(v98, v97);

  if ((v150 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v99 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v100 = type metadata accessor for EnvironmentValues();
    v101 = *(v100 - 8);
    v102 = *(v101 + 64);
    __chkstk_darwin(v100);
    v104 = &v135 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v101 + 8))(v104, v100);
    v60 = v164;
  }

  v105 = *(v60 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_newHighlightsVersion);

  v162 = v105;
  __chkstk_darwin(v106);
  v107 = v161;
  sub_10002D940(v161, &v135 - v93, type metadata accessor for AccessPointAnimationView);
  v108 = v158;
  v109 = v159;
  v110 = swift_allocObject();
  sub_10002D7B8(&v135 - v93, v108 + v110, type metadata accessor for AccessPointAnimationView);
  v164 = v155;
  v165 = &type metadata for Bool;
  v166 = v96;
  v167 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v111 = v156;
  v112 = v144;
  View.onChange<A>(of:initial:_:)();

  v113 = (*(v143 + 8))(v111, v112);
  v158 = &v135;
  __chkstk_darwin(v113);
  v114 = &v135 - v93;
  sub_10002D940(v107, &v135 - v93, type metadata accessor for AccessPointAnimationView);
  type metadata accessor for MainActor();
  v115 = static MainActor.shared.getter();
  v116 = (v109 + 32) & v152;
  v117 = swift_allocObject();
  *(v117 + 16) = v115;
  *(v117 + 24) = &protocol witness table for MainActor;
  sub_10002D7B8(v114, v117 + v116, type metadata accessor for AccessPointAnimationView);
  v118 = type metadata accessor for TaskPriority();
  v119 = *(v118 - 8);
  v120 = *(v119 + 64);
  __chkstk_darwin(v118);
  v121 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = &v135 - v121;
  static TaskPriority.userInitiated.getter();
  if (sub_1000E13F8(2, 26, 4, 0))
  {
    v159 = type metadata accessor for _TaskModifier2();
    v160 = &v135;
    v156 = *(v159 - 8);
    v123 = *(v156 + 8);
    __chkstk_darwin(v159);
    v161 = &v135;
    v125 = &v135 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
    v164 = 0;
    v165 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v164 = 0xD000000000000039;
    v165 = 0x80000001000E6F30;
    v162 = 452;
    v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v126);

    __chkstk_darwin(v127);
    (*(v119 + 16))(&v135 - v121, &v135 - v121, v118);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v119 + 8))(&v135 - v121, v118);
    v128 = v147;
    (*(v145 + 32))(v147, v157, v146);
    v129 = sub_100002B38(&qword_10012CC60, &qword_1000E8E60);
    return (*(v156 + 4))(v128 + *(v129 + 36), v125, v159);
  }

  else
  {
    v131 = sub_100002B38(&qword_10012CC68, &qword_1000E8E68);
    v132 = v147;
    v133 = (v147 + *(v131 + 36));
    v134 = type metadata accessor for _TaskModifier();
    (*(v119 + 32))(&v133[*(v134 + 20)], v122, v118);
    *v133 = &unk_1000EA068;
    *(v133 + 1) = v117;
    return (*(v145 + 32))(v132, v157, v146);
  }
}

uint64_t sub_100020320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = sub_100002B38(&qword_10012DDF0, &qword_1000EA160);
  v3 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v5 = &v61 - v4;
  v62 = sub_100002B38(&qword_10012DDF8, &qword_1000EA168);
  v6 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v8 = &v61 - v7;
  v9 = type metadata accessor for AccessPointAnimationView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (a1 + *(__chkstk_darwin(v9 - 8) + 36));
  v14 = *v12;
  v13 = v12[1];
  *&v90[0] = v14;
  *(&v90[0] + 1) = v13;
  sub_100002B38(&qword_10012DDD8, &qword_1000EA008);
  State.wrappedValue.getter();
  v15 = v79;
  swift_getKeyPath();
  *&v90[0] = v15;
  sub_10002B454(&qword_10012DB48, type metadata accessor for AccessPointModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + OBJC_IVAR____TtC13GameOverlayUI16AccessPointModel__collapsed);

  if (v16 == 1)
  {
    sub_10002D940(a1, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointAnimationView);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    sub_10002D7B8(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AccessPointAnimationView);
    v19 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v90[0]) = 0;
    *v8 = sub_100031240;
    *(v8 + 1) = v18;
    v8[16] = v19;
    *(v8 + 3) = v20;
    *(v8 + 4) = v21;
    *(v8 + 5) = v22;
    *(v8 + 6) = v23;
    v8[56] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012DE20, &qword_1000EA1B0);
    sub_100031018();
    sub_1000310D0();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v61 = static HorizontalAlignment.center.getter();
    v78 = 0;
    sub_1000209CC(a1, &v66);
    v87 = v74;
    v88 = v75;
    v83 = v70;
    v84 = v71;
    v85 = v72;
    v86 = v73;
    v79 = v66;
    v80 = v67;
    v81 = v68;
    v82 = v69;
    v90[8] = v74;
    v90[9] = v75;
    v90[4] = v70;
    v90[5] = v71;
    v90[6] = v72;
    v90[7] = v73;
    v90[0] = v66;
    v90[1] = v67;
    v89 = v76;
    v91 = v76;
    v90[2] = v68;
    v90[3] = v69;
    sub_1000035B4(&v79, &v65, &qword_10012DE00, &qword_1000EA170);
    sub_100005688(v90, &qword_10012DE00, &qword_1000EA170);
    *&v77[119] = v86;
    *&v77[135] = v87;
    *&v77[151] = v88;
    *&v77[55] = v82;
    *&v77[71] = v83;
    *&v77[87] = v84;
    *&v77[103] = v85;
    *&v77[7] = v79;
    *&v77[23] = v80;
    v77[167] = v89;
    *&v77[39] = v81;
    v25 = v78;
    v26 = static Color.clear.getter();
    v27 = &v5[*(sub_100002B38(&qword_10012DE08, &qword_1000EA178) + 36)];
    v28 = v27 + *(sub_100002B38(&qword_10012D138, &unk_1000EA180) + 36);
    GameLayerBackgroundBlurView.init()();
    v29 = static Alignment.center.getter();
    v31 = v30;
    v32 = &v28[*(sub_100002B38(&qword_10012D140, &qword_1000E9530) + 36)];
    *v32 = v29;
    v32[1] = v31;
    *v27 = v26;
    v33 = v27 + *(sub_100002B38(&qword_10012D148, &unk_1000EA190) + 36);
    v34 = *(type metadata accessor for RoundedRectangle() + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = type metadata accessor for RoundedCornerStyle();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #20.0 }

    *v33 = _Q0;
    *&v33[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
    v42 = *a1;
    v43 = Namespace.wrappedValue.getter();
    LODWORD(v33) = static MatchedGeometryProperties.frame.getter();
    static UnitPoint.center.getter();
    v45 = v44;
    v47 = v46;
    v48 = v27 + *(sub_100002B38(&qword_10012DE10, &qword_1000EA1A0) + 36);
    *v48 = 0x756F72676B636162;
    *(v48 + 1) = 0xEA0000000000646ELL;
    *(v48 + 2) = v43;
    *(v48 + 6) = v33;
    *(v48 + 4) = v45;
    *(v48 + 5) = v47;
    v48[48] = 1;
    v49 = static Alignment.center.getter();
    v51 = v50;
    v52 = (v27 + *(sub_100002B38(&qword_10012DE18, &qword_1000EA1A8) + 36));
    *v52 = v49;
    v52[1] = v51;
    v53 = *&v77[48];
    *(v5 + 49) = *&v77[32];
    v54 = *v77;
    *(v5 + 33) = *&v77[16];
    *(v5 + 17) = v54;
    v55 = *&v77[112];
    *(v5 + 113) = *&v77[96];
    v56 = *&v77[64];
    *(v5 + 97) = *&v77[80];
    *(v5 + 81) = v56;
    *(v5 + 65) = v53;
    v57 = *&v77[128];
    *(v5 + 161) = *&v77[144];
    *(v5 + 145) = v57;
    *v5 = v61;
    *(v5 + 1) = 0;
    v5[16] = v25;
    *(v5 + 177) = *&v77[160];
    *(v5 + 129) = v55;
    v58 = static SafeAreaRegions.all.getter();
    v59 = static Edge.Set.all.getter();
    v60 = &v5[*(v63 + 36)];
    *v60 = v58;
    v60[8] = v59;
    sub_1000035B4(v5, v8, &qword_10012DDF0, &qword_1000EA160);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012DE20, &qword_1000EA1B0);
    sub_100031018();
    sub_1000310D0();
    _ConditionalContent<>.init(storage:)();
    return sub_100005688(v5, &qword_10012DDF0, &qword_1000EA160);
  }
}
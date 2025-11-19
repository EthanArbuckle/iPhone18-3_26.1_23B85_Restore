void sub_10007C44C()
{
  type metadata accessor for ButtonRole();
  if (v0 <= 0x3F)
  {
    sub_10007C4F0();
    if (v1 <= 0x3F)
    {
      sub_100031F48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10007C4F0()
{
  if (!qword_100209800)
  {
    type metadata accessor for LocalizedStringResource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100209800);
    }
  }
}

uint64_t sub_10007C580(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_1000059D4(a2);
  sub_100007888(a4, a2);
  return *(swift_getOpaqueTypeConformance2() + 8);
}

uint64_t sub_10007C630@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for ButtonRole();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100005804(&qword_100209840);
  v51 = *(v60 - 8);
  __chkstk_darwin(v60);
  v50 = &v44 - v3;
  v58 = sub_100005804(&qword_100209848);
  __chkstk_darwin(v58);
  v59 = &v44 - v4;
  v5 = type metadata accessor for SystemRoleButton();
  v6 = v5 - 8;
  v54 = *(v5 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v5);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100209850);
  __chkstk_darwin(v8 - 8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v57 = sub_100005804(&qword_100207F00);
  v49 = *(v57 - 8);
  __chkstk_darwin(v57);
  v47 = &v44 - v13;
  v14 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = *(v6 + 28);
  v25 = v53;
  sub_100006600(v53 + v24, v16, &qword_100208290);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100007710(v16, &qword_100208290);
    (*(v55 + 16))(v48, v25, v56);
    v26 = v52;
    sub_10007C094(v25, v52);
    v27 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v28 = swift_allocObject();
    sub_10007D0A0(v26, v28 + v27);
    v29 = v50;
    Button<>.init(role:action:)();
    v30 = v51;
    v31 = v60;
    (*(v51 + 16))(v59, v29, v60);
    swift_storeEnumTagMultiPayload();
    sub_100007888(&qword_100207EF8, &qword_100207F00);
    sub_100007888(&qword_100209858, &qword_100209840);
    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    v33 = *(v18 + 32);
    v45 = v23;
    v33(v23, v16, v17);
    (*(v18 + 16))(v20, v23, v17);
    v35 = v55;
    v34 = v56;
    (*(v55 + 16))(v12, v25, v56);
    (*(v35 + 56))(v12, 0, 1, v34);
    v36 = v52;
    sub_10007C094(v25, v52);
    v37 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v38 = swift_allocObject();
    sub_10007D0A0(v36, v38 + v37);
    v39 = sub_100006600(v12, v46, &qword_100209850);
    __chkstk_darwin(v39);
    *(&v44 - 2) = v20;
    v40 = v47;
    Button.init(role:action:label:)();
    sub_100007710(v12, &qword_100209850);
    v41 = *(v18 + 8);
    v41(v20, v17);
    v42 = v49;
    v43 = v57;
    (*(v49 + 16))(v59, v40, v57);
    swift_storeEnumTagMultiPayload();
    sub_100007888(&qword_100207EF8, &qword_100207F00);
    sub_100007888(&qword_100209858, &qword_100209840);
    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
    (*(v42 + 8))(v40, v43);
    return (v41)(v45, v17);
  }
}

uint64_t sub_10007CE4C(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for SystemRoleButton();
  (*(a1 + *(v2 + 28)))();
}

uint64_t sub_10007CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10007C630(a2);
  v5 = *(v2 + *(a1 + 24));
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = (v5 & 1) == 0;
  result = sub_100005804(&qword_100209838);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_1000072E4;
  v9[2] = v7;
  return result;
}

uint64_t sub_10007CFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_10007D0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemRoleButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007D10C()
{
  v1 = type metadata accessor for SystemRoleButton();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ButtonRole();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 20);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

unint64_t sub_10007D2F8()
{
  result = qword_100209860;
  if (!qword_100209860)
  {
    sub_1000059D4(&qword_100209838);
    sub_10007D3B0();
    sub_100007888(&qword_1002064D8, &qword_1002064E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209860);
  }

  return result;
}

unint64_t sub_10007D3B0()
{
  result = qword_100209868;
  if (!qword_100209868)
  {
    sub_1000059D4(&qword_100209870);
    sub_100007888(&qword_100207EF8, &qword_100207F00);
    sub_100007888(&qword_100209858, &qword_100209840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209868);
  }

  return result;
}

uint64_t sub_10007D4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100207610);
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

uint64_t sub_10007D5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_100207610);
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

uint64_t type metadata accessor for DocumentErrorAlertModifier()
{
  result = qword_1002098D0;
  if (!qword_1002098D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007D6B4()
{
  sub_10007D750();
  if (v0 <= 0x3F)
  {
    sub_10007D7A8();
    if (v1 <= 0x3F)
    {
      sub_100006DF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10007D750()
{
  if (!qword_1002098E0)
  {
    type metadata accessor for DocumentErrorViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002098E0);
    }
  }
}

void sub_10007D7A8()
{
  if (!qword_100209AF0[0])
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, qword_100209AF0);
    }
  }
}

uint64_t sub_10007D814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = a1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100005804(&qword_100207610);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  v49 = v3;
  sub_10007E448(v3, v11);
  v22 = type metadata accessor for DocumentErrorViewModel();
  Description = v22[-1].Description;
  v24 = Description[6](v11, 1, v22);
  v46 = v22;
  if (v24 == 1)
  {
    sub_100007710(v11, &qword_100207610);
    (*(v16 + 56))(v14, 1, 1, v15);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v41 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v43);
    static Locale.current.getter();
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_100007710(v14, &qword_100208290);
    }
  }

  else
  {
    sub_100187CB4();
    (Description[1])(v11, v22);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v21, v14, v15);
  }

  v42 = v21;
  v44 = v15;
  v25 = v49 + *(type metadata accessor for DocumentErrorAlertModifier() + 20);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  v53 = v26;
  v54 = v27;
  v55 = v25;
  sub_100005804(&unk_100209B50);
  v28 = Binding.projectedValue.getter();
  v45 = &v38;
  v40 = v51;
  v41 = v50;
  LODWORD(v43) = v52;
  v29 = __chkstk_darwin(v28);
  (*(v16 + 16))(v18, v21, v15, v29);
  v30 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v38 = v31;
  v39 = v30;
  v33 = v32;
  v35 = v34;
  sub_100005804(&qword_100209918);
  sub_100005804(&qword_100207F00);
  sub_100007888(&qword_100209920, &qword_100209918);
  sub_100007888(&qword_100207EF8, &qword_100207F00);
  v36 = v39;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)();
  sub_100028DF8(v36, v33, v35 & 1);

  return (*(v16 + 8))(v42, v44);
}

uint64_t sub_10007DE7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = type metadata accessor for DocumentErrorAlertModifier();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v21 = v3;
  v22 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v13 = v22;
  sub_10007E4C0(v23, v22);
  v14 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v15 = swift_allocObject();
  v16 = sub_10007E674(v13, v15 + v14);
  __chkstk_darwin(v16);
  *(&v18 - 2) = v12;
  Button.init(action:label:)();
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_10007E240(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for DocumentErrorAlertModifier();
  sub_100005804(&unk_100209B50);
  v3 = j___s7SwiftUI7BindingV12wrappedValuexvs();
  v4 = *(a1 + *(v2 + 24));
  if (v4)
  {
    v4(v3);
  }
}

uint64_t sub_10007E33C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100187E6C();
  sub_100022D38();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_10007E448(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentErrorAlertModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E524()
{
  v1 = type metadata accessor for DocumentErrorAlertModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = type metadata accessor for DocumentErrorViewModel();
  Description = v3[-1].Description;
  if (!(Description[6])(v0 + v2, 1, v3))
  {
    Description[1](v0 + v2, v3);
  }

  if (*(v0 + v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007E674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentErrorAlertModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E6D8()
{
  v1 = *(type metadata accessor for DocumentErrorAlertModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10007E240(v2);
}

uint64_t sub_10007E738()
{
  sub_1000059D4(&qword_100209918);
  sub_1000059D4(&qword_100207F00);
  type metadata accessor for DocumentErrorViewModel();
  sub_100007888(&qword_100209920, &qword_100209918);
  sub_100007888(&qword_100207EF8, &qword_100207F00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007E868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_1002090F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for NSNotificationCenter.Publisher();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10007E9AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_1002090F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for NSNotificationCenter.Publisher();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ImageDocumentView()
{
  result = qword_100209980;
  if (!qword_100209980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007EB28()
{
  sub_100069844();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageDocumentViewRepresentable.Components();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSNotificationCenter.Publisher();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007EBE0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ImageDocumentView();
  v5 = v4 - 8;
  v33 = *(v4 - 8);
  v32[1] = *(v33 + 64);
  __chkstk_darwin(v4);
  v32[0] = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_1002099C0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v32 - v9;
  v11 = *(v2 + *(v5 + 28));
  type metadata accessor for ImageDocumentViewModel();
  sub_10007F124(&qword_1002096E0, type metadata accessor for ImageDocumentViewModel);

  Bindable<A>.init(wrappedValue:)();
  *&v10[*(type metadata accessor for ImageDocumentViewRepresentable() + 20)] = v11;
  v12 = static SafeAreaRegions.all.getter();
  v13 = static Edge.Set.all.getter();
  v14 = &v10[*(v8 + 44)];
  *v14 = v12;
  v14[8] = v13;
  sub_100005804(&qword_1002090F8);
  Bindable.wrappedValue.getter();
  sub_10012C330();

  v15 = sub_100005804(&qword_1002099C8);
  sub_10007F0B4(v10, &a1[v15[9]]);
  v16 = sub_1000A670C();
  v18 = v17;
  *a1 = 0;
  type metadata accessor for ToolbarViewModel(0);
  sub_10007F124(&qword_100209618, type metadata accessor for ToolbarViewModel);
  Bindable<A>.init(wrappedValue:)();
  sub_10007F16C(v10);
  v19 = v15[11];
  *&a1[v19] = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  v20 = v15[12];
  *&a1[v20] = swift_getKeyPath();
  sub_100005804(&qword_1002099D0);
  swift_storeEnumTagMultiPayload();
  v21 = &a1[v15[13]];
  *v21 = swift_getKeyPath();
  *(v21 + 4) = 0;
  v22 = &a1[v15[14]];
  *v22 = v16;
  v22[1] = v18;
  v23 = *(v5 + 32);
  v24 = v32[0];
  sub_10007F1E8(v2, v32[0]);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_10007F37C(v24, v26 + v25);
  v27 = sub_100005804(&qword_1002099D8);
  v28 = *(v27 + 52);
  v29 = type metadata accessor for NSNotificationCenter.Publisher();
  result = (*(*(v29 - 8) + 16))(&a1[v28], v2 + v23, v29);
  v31 = &a1[*(v27 + 56)];
  *v31 = sub_10007F3E0;
  v31[1] = v26;
  return result;
}

uint64_t sub_10007EFB8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_1002090F8);
  Bindable.wrappedValue.getter();
  sub_10012C330();

  type metadata accessor for PreviewAction(0);
  v0 = sub_10015C4E4();
  sub_100122EC8(v0, 1);
}

uint64_t sub_10007F0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_1002099C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007F124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007F16C(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002099C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007F1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDocumentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007F24C()
{
  v1 = (type metadata accessor for ImageDocumentView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_100005804(&qword_1002090F8);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_10007F37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDocumentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007F3E0()
{
  type metadata accessor for ImageDocumentView();

  return sub_10007EFB8();
}

unint64_t sub_10007F454()
{
  result = qword_1002099E0;
  if (!qword_1002099E0)
  {
    sub_1000059D4(&qword_1002099D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002099E0);
  }

  return result;
}

id sub_10007F4B8()
{
  sub_100005804(&qword_100209B40);
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10019A9F0;
  v5 = type metadata accessor for DuplicateSheet(0);
  (*(v2 + 16))(v4 + v3, v0 + *(v5 + 24), v1);
  v6 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initForExportingURLs:isa asCopy:1];

  sub_100005804(&qword_100209B48);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v8 setDelegate:v10];

  return v8;
}

id sub_10007F880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateSheet.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007F8F0()
{
  result = type metadata accessor for DuplicateSheet(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007F9B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007FA74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007FB18()
{
  sub_10007D7A8();
  if (v0 <= 0x3F)
  {
    sub_100031F48();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007FBCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007FE90(v2, v5);
  v6 = type metadata accessor for DuplicateSheet.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_10007FE90(v5, v7 + OBJC_IVAR____TtCV7Preview14DuplicateSheet11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_10007FEF4(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_10007FC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FE4C(&qword_100209B38);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10007FD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007FE4C(&qword_100209B38);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007FD90()
{
  sub_10007FE4C(&qword_100209B38);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10007FE08(uint64_t a1)
{
  result = sub_10007FE4C(&qword_100209B38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007FE4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DuplicateSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007FE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DuplicateSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FEF4(uint64_t a1)
{
  v2 = type metadata accessor for DuplicateSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(type metadata accessor for DuplicateSheet(0) + 24);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(a7 + v14, a4, v15);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;

  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_100080078(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(type metadata accessor for URL() - 8);
    (*(v1 + OBJC_IVAR____TtCV7Preview14DuplicateSheet11Coordinator_parent + 24))(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  }

  sub_100005804(&unk_100209B50);
  return j___s7SwiftUI7BindingV12wrappedValuexvs();
}

void sub_100080160(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  URL._bridgeToObjectiveC()(&v19);
  v10 = v9;
  v11 = [v9 isDefaultCallingAppURL];

  if (v11)
  {
    v12 = objc_allocWithZone(TUDialRequest);
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v16 = [v12 initWithURL:v14];

    if (v16)
    {
      [v16 setShowUIPrompt:1];
      v17 = [v16 URL];
      if (v17)
      {
        v18 = v17;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v8, v6, v2);
        sub_10008034C(v8);

        (*(v3 + 8))(v8, v2);
        return;
      }
    }
  }

  sub_10008034C(a1);
}

void sub_10008034C(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for URL();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  URL.absoluteString.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  v10 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v9 addAction:v13];
  String.LocalizationValue.init(stringLiteral:)();
  v14 = [v5 mainBundle];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = v24;
  v16 = v25;
  (*(v1 + 16))(v24, v23, v25);
  v17 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v18 = swift_allocObject();
  (*(v1 + 32))(v18 + v17, v15, v16);
  v19 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000809DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009FE78;
  aBlock[3] = &unk_1001F1C58;
  v20 = j___Block_copy(aBlock);

  v21 = [v12 actionWithTitle:v19 style:0 handler:v20];
  j___Block_release(v20);

  [v9 addAction:v21];
  [v26 presentViewController:v9 animated:1 completion:0];
}

void sub_100080808()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  sub_1000062AC(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100080A64();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

uint64_t sub_100080954()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1000809DC()
{
  type metadata accessor for URL();

  sub_100080808();
}

uint64_t sub_100080A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100080A64()
{
  result = qword_1002062E8;
  if (!qword_1002062E8)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002062E8);
  }

  return result;
}

uint64_t sub_100080C74()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100080E18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100080E74()
{
  v0 = type metadata accessor for DocumentCreator.DocumentCreationError();
  v36[3] = v0[-1].Description;
  v36[4] = v0;
  v1 = __chkstk_darwin(v0);
  v36[2] = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v36[5] = v36 - v4;
  v5 = __chkstk_darwin(v3);
  v7 = v36 - v6;
  __chkstk_darwin(v5);
  v36[1] = v36 - v8;
  v9 = sub_100005804(&qword_10020A4B0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = v36 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  v16 = __chkstk_darwin(v14);
  v38 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v36 - v18;
  v20 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v20 - 8);
  v22 = v36 - v21;
  v23 = type metadata accessor for PreviewTelemetryAction();
  Description = v23[-1].Description;
  __chkstk_darwin(v23);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewTelemetryLogger();
  Description[13](v26, 8, v23);
  static UTType.png.getter();
  v27 = type metadata accessor for UTType();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  sub_100143D70(v26, v22);
  sub_100007710(v22, &qword_10020A0C0);
  (Description[1])(v26, v23);
  sub_1001452D0(v19);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    j___os_log_impl(&dword_100000000, v28, v29, "Creating a new empty image", v30, 2u);
  }

  (*(v40 + 8))(v19, v39);
  sub_100178048();
  sub_1000FF360(v7, v12, v31, v32);
  v33 = type metadata accessor for URL();
  (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
  v34 = v37;
  sub_100012DE4(v12, v37);
  sub_1001780C8();
  return sub_100007710(v34, &qword_10020A4B0);
}

uint64_t sub_10008159C()
{
  v0 = type metadata accessor for PreviewTelemetryAction();
  Description = v0[-1].Description;
  v95 = v0;
  __chkstk_darwin(v0);
  v93 = &v76[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_100005804(&qword_10020A0C0);
  v3 = __chkstk_darwin(v2 - 8);
  v92 = &v76[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v82 = &v76[-v5];
  v87 = type metadata accessor for DocumentCreator.DocumentCreationError();
  v85 = v87[-1].Description;
  v6 = __chkstk_darwin(v87);
  v84 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v97 = &v76[-v9];
  v10 = __chkstk_darwin(v8);
  v86 = &v76[-v11];
  __chkstk_darwin(v10);
  v83 = &v76[-v12];
  v13 = sub_100005804(&qword_10020A4B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v88 = &v76[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v76[-v20];
  __chkstk_darwin(v19);
  v89 = &v76[-v22];
  v23 = type metadata accessor for Logger();
  v98 = *(v23 - 8);
  v99 = v23;
  v24 = __chkstk_darwin(v23);
  v96 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v28 = &v76[-v27];
  __chkstk_darwin(v26);
  v30 = &v76[-v29];
  v31 = type metadata accessor for UTType();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v81 = &v76[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v37 = &v76[-v36];
  __chkstk_darwin(v35);
  v91 = &v76[-v38];
  static UTType.data.getter();
  v39 = [objc_opt_self() generalPasteboard];
  static UTType.image.getter();
  UTType.identifier.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 dataForPasteboardType:v40];

  if (v41)
  {
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v43;

    v79 = v32;
    v44 = *(v32 + 8);
    v80 = v31;
    v78 = v44;
    v44(v37, v31);
    sub_1001452D0(v30);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (j__os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      j___os_log_impl(&dword_100000000, v45, v46, "Creating a new image from Pasteboard data", v47, 2u);
    }

    (*(v98 + 8))(v30, v99);
    v77 = v42;
    sub_1000FFE98(v42, v90, v86, v21);
    v61 = type metadata accessor for URL();
    (*(*(v61 - 8) + 56))(v21, 0, 1, v61);
    v62 = v89;
    sub_100012DE4(v21, v89);
    v63 = v80;
    v64 = v91;
    v65 = v79;
    v66 = v88;
    sub_10000C9A8(v62, v88);
    type metadata accessor for URL();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      v68 = &qword_10020A4B0;
      v69 = v66;
    }

    else
    {
      URL.pathExtension.getter();
      (*(v67 + 8))(v66, v61);
      static UTType.data.getter();
      v70 = v82;
      UTType.init(filenameExtension:conformingTo:)();
      if ((*(v65 + 48))(v70, 1, v63) != 1)
      {
        v71 = v78;
        v78(v64, v63);
        (*(v65 + 32))(v64, v70, v63);
        goto LABEL_14;
      }

      v68 = &qword_10020A0C0;
      v69 = v70;
    }

    sub_100007710(v69, v68);
    v71 = v78;
LABEL_14:
    sub_1001780C8();
    sub_10006C344(v77, v90);
    sub_100007710(v62, &qword_10020A4B0);
    type metadata accessor for PreviewTelemetryLogger();
    v73 = v93;
    v72 = Description;
    v74 = v95;
    Description[13](v93, 9, v95);
    v75 = v92;
    (*(v65 + 16))(v92, v64, v63);
    (*(v65 + 56))(v75, 0, 1, v63);
    sub_100143D70(v73, v75);
    sub_100007710(v75, &qword_10020A0C0);
    (v72[1])(v73, v74);
    return v71(v64, v63);
  }

  v48 = *(v32 + 8);
  v48(v37, v31);
  sub_1001452D0(v28);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  v51 = v32;
  if (j__os_log_type_enabled(v49, v50))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    j___os_log_impl(&dword_100000000, v49, v50, "Error reading image data from Pasteboard", v52, 2u);
  }

  (*(v98 + 8))(v28, v99);
  v53 = type metadata accessor for URL();
  (*(*(v53 - 8) + 56))(v16, 1, 1, v53);
  sub_1001780C8();
  sub_100007710(v16, &qword_10020A4B0);
  type metadata accessor for PreviewTelemetryLogger();
  v55 = v93;
  v54 = Description;
  v56 = v95;
  Description[13](v93, 9, v95);
  v57 = *(v32 + 16);
  v58 = v92;
  v59 = v91;
  v57(v92, v91, v31);
  (*(v51 + 56))(v58, 0, 1, v31);
  sub_100143D70(v55, v58);
  sub_100007710(v58, &qword_10020A0C0);
  (v54[1])(v55, v56);
  return (v48)(v59, v31);
}

unint64_t sub_100082290()
{
  result = qword_100209BB0;
  if (!qword_100209BB0)
  {
    type metadata accessor for DocumentCreator.DocumentCreationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209BB0);
  }

  return result;
}

id sub_1000822E8(void *a1, char a2, void (*a3)(void))
{
  v4 = v3;
  [a1 willMoveToParentViewController:v3];
  if (a2)
  {
    result = [a1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = result;
    result = [v3 view];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v9 setFrame:{v12, v14, v16, v18}];
    result = [a1 view];
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v19 = result;
    [result setAutoresizingMask:18];
  }

  [v3 addChildViewController:a1];
  if (!a3)
  {
    result = [v3 view];
    if (result)
    {
      v21 = result;
      result = [a1 view];
      if (result)
      {
        v22 = result;
        [v21 addSubview:result];

        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  a3();

  sub_10000BDCC(a3);
LABEL_12:

  return [a1 didMoveToParentViewController:v4];
}

uint64_t sub_1000824E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082614();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082614();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000825B0()
{
  sub_100082614();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000825EC(uint64_t a1)
{
  result = sub_100082614();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100082614()
{
  result = qword_100209BB8;
  if (!qword_100209BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209BB8);
  }

  return result;
}

void sub_100082668(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for BannerViewModel.Configuration(0);
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = v3;
  v43 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v35 - v11;
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  v47 = v1;
  sub_100147CB0();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() systemImageNamed:v17];

    v41 = v18;
    v19 = v18;
  }

  else
  {
    v41 = 0;
  }

  sub_100147C00(v15);
  v20 = *(v8 + 16);
  v20(v12, v15, v7);
  v21 = String.init(localized:)();
  v39 = v22;
  v40 = v21;
  v23 = *(v8 + 8);
  v23(v15, v7);
  sub_100147C68(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100082B24(v6);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v20(v12, v6, v7);
    v24 = String.init(localized:)();
    v36 = v25;
    v37 = v24;
    v23(v6, v7);
  }

  v35[1] = sub_100029A4C();
  v26 = v47;
  sub_100147CF0(v12);
  v20(v38, v12, v7);
  v35[0] = String.init(localized:)();
  v23(v12, v7);
  v28 = v43;
  v27 = v44;
  v38 = *(v44 + 16);
  v29 = v45;
  (v38)(v43, v26, v45);
  v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = *(v27 + 32);
  v32(v31 + v30, v28, v29);
  v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  (v38)(v28, v47, v29);
  v33 = swift_allocObject();
  v32(v33 + v30, v28, v29);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34 = v41;
  BannerViewConfiguration.init(image:title:subtitle:primaryAction:dismissAction:)();
}

uint64_t sub_100082B24(uint64_t a1)
{
  v2 = sub_100005804(&qword_100208290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100082BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v6 = a4(isCurrentExecutor);
  v6();
}

uint64_t sub_100082C74()
{
  v1 = type metadata accessor for BannerViewModel.Configuration(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100082DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100207248);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100082E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_100207248);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PDFDocumentView()
{
  result = qword_100209C18;
  if (!qword_100209C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082F98()
{
  sub_10008301C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PDFDocumentViewRepresentable.Components();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10008301C()
{
  if (!qword_1002072B8)
  {
    type metadata accessor for PDFDocumentViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_1002072B8);
    }
  }
}

uint64_t sub_100083090@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100005804(&qword_100209C50);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for PDFDocumentView() + 20));
  type metadata accessor for PDFDocumentViewModel();
  sub_100083398(&qword_1002096E8, type metadata accessor for PDFDocumentViewModel);

  Bindable<A>.init(wrappedValue:)();
  *&v6[*(type metadata accessor for PDFDocumentViewRepresentable(0) + 20)] = v7;
  v8 = static SafeAreaRegions.all.getter();
  v9 = static Edge.Set.all.getter();
  v10 = &v6[*(v4 + 44)];
  *v10 = v8;
  v10[8] = v9;
  sub_100005804(&qword_100207248);
  Bindable.wrappedValue.getter();
  sub_10015A4E4();

  v11 = sub_100005804(&qword_100209C58);
  sub_100083328(v6, &a1[v11[9]]);
  v12 = sub_1000A670C();
  v14 = v13;
  *a1 = 0;
  type metadata accessor for ToolbarViewModel(0);
  sub_100083398(&qword_100209618, type metadata accessor for ToolbarViewModel);
  Bindable<A>.init(wrappedValue:)();
  sub_1000833E0(v6);
  v15 = v11[11];
  *&a1[v15] = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  v16 = v11[12];
  *&a1[v16] = swift_getKeyPath();
  sub_100005804(&qword_1002099D0);
  swift_storeEnumTagMultiPayload();
  v17 = &a1[v11[13]];
  result = swift_getKeyPath();
  *v17 = result;
  *(v17 + 4) = 0;
  v19 = &a1[v11[14]];
  *v19 = v12;
  v19[1] = v14;
  return result;
}

uint64_t sub_100083328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100209C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000833E0(uint64_t a1)
{
  v2 = sub_100005804(&qword_100209C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100083460()
{
  result = qword_100209C60;
  if (!qword_100209C60)
  {
    sub_1000059D4(&qword_100209C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100209C60);
  }

  return result;
}

uint64_t sub_1000834C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100083508@<X0>(void *a1@<X8>)
{
  sub_100030A80();
  result = FocusedValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100083558()
{
  sub_100030A80();

  return FocusedValues.subscript.setter();
}

uint64_t sub_1000835F8(uint64_t a1)
{
  sub_100006600(a1, v3, &qword_100209FB0);
  sub_100006600(v3, &v2, &qword_100209FB0);
  sub_100030B1C();
  FocusedValues.subscript.setter();
  return sub_100007710(v3, &qword_100209FB0);
}

void *sub_100083688()
{
  swift_getKeyPath();
  sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_100083730()
{
  swift_getKeyPath();
  sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1000837D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_100083890(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000085D8(0, &qword_10020A070);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

id sub_100083A20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_100083AD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100083B08(v1);
}

void sub_100083B08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for AppDelegate(0);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t sub_100083C88()
{
  type metadata accessor for AppEnvironmentModel(0);
  v0 = swift_allocObject();
  v0[2] = 0;
  type metadata accessor for ScannerPresentationModel();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  v0[3] = v1;
  v0[4] = 0;
  result = ObservationRegistrar.init()();
  qword_100222508 = v0;
  return result;
}

uint64_t sub_100083D08()
{

  v1 = OBJC_IVAR____TtC7Preview19AppEnvironmentModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100083DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005804(&unk_100209F80);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  type metadata accessor for AppDelegate(0);
  UIApplicationDelegateAdaptor.init(_:)();
  v5 = type metadata accessor for PreviewApp(0);
  v6 = v5[5];
  *(a1 + v6) = swift_getKeyPath();
  sub_100005804(&qword_100209608);
  v22[1] = v6;
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = (a1 + v5[7]);
  type metadata accessor for MenuViewModel();
  swift_allocObject();
  v25 = sub_10016414C();
  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  v9 = v23;
  v10 = v24;
  *v8 = v23;
  v8[1] = v10;
  v11 = v5[8];
  if (qword_100206060 != -1)
  {
    swift_once();
  }

  v12 = (a1 + v11);
  v25 = qword_100222508;
  type metadata accessor for AppEnvironmentModel(0);

  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  v13 = v23;
  v14 = v24;
  *v12 = v23;
  v12[1] = v14;
  swift_getKeyPath();
  FocusedValue.init(_:)();
  swift_getKeyPath();
  FocusedValue.init(_:)();
  sub_100005804(&unk_100209E80);
  v15 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v23 = v13;
  v24 = v14;
  sub_100005804(&qword_100209F90);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  *&v15[OBJC_IVAR____TtC7Preview11AppDelegate_appEnvironmentModel] = v25;

  v16 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  v23 = v9;
  v24 = v10;
  sub_100005804(&qword_100209F98);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  *&v16[OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel] = v25;

  sub_10005E290();

  v17 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  sub_10008A054(&qword_100209608, &type metadata accessor for OpenWindowAction, v4);
  v18 = type metadata accessor for OpenWindowAction();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC7Preview11AppDelegate_createNewDocumentOpenWindowFallback;
  swift_beginAccess();
  sub_10008A39C(v4, v17 + v19);
  swift_endAccess();

  v23 = v13;
  v24 = v14;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v20 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  sub_100083B08(v20);
}

uint64_t sub_100084170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v70 = sub_100005804(&qword_100207020);
  __chkstk_darwin(v70);
  v68 = &v64 - v3;
  v88 = type metadata accessor for PreviewApp(0);
  v4 = *(v88 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v88);
  v64 = sub_100005804(&qword_100209FB8);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v7 = &v64 - v6;
  v82 = sub_100005804(&qword_100209FC0);
  v67 = *(v82 - 1);
  __chkstk_darwin(v82);
  v9 = &v64 - v8;
  v72 = sub_100005804(&qword_100209FC8);
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v83 = &v64 - v10;
  v77 = sub_100005804(&qword_100209FD0);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v85 = &v64 - v11;
  v79 = sub_100005804(&qword_100209FD8);
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v64 - v12;
  v78 = sub_100005804(&qword_100209FE0);
  __chkstk_darwin(v78);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v64 - v15;
  type metadata accessor for BookmarkableURL(0);
  sub_10008A4C0(v2, &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v89 = v5;
  v87 = v16;
  v18 = swift_allocObject();
  v84 = v17;
  v86 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008A528(v86, v18 + v17);
  sub_100005804(&qword_100209FE8);
  sub_10008A478(&unk_100209FF0, type metadata accessor for BookmarkableURL);
  sub_10008A478(&qword_100208F80, type metadata accessor for BookmarkableURL);
  sub_10008A478(&qword_10020A000, type metadata accessor for BookmarkableURL);
  v19 = sub_1000059D4(&qword_10020A008);
  v20 = type metadata accessor for DocumentSceneView(255);
  v21 = sub_10008A478(&qword_10020A010, type metadata accessor for DocumentSceneView);
  v91 = v20;
  v92 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v19;
  v92 = OpaqueTypeConformance2;
  v23 = v64;
  swift_getOpaqueTypeConformance2();
  v24 = v81;
  WindowGroup.init<A, B>(for:content:)();
  v90 = v24;
  v25 = type metadata accessor for AppCommands();
  v26 = sub_100007888(&qword_10020A018, &qword_100209FB8);
  v27 = sub_10008A478(&qword_10020A020, type metadata accessor for AppCommands);
  v66 = v9;
  Scene.commands<A>(content:)();
  (*(v65 + 8))(v7, v23);
  sub_100005804(&qword_100209E90);
  FocusedValue.content.getter();
  if (BYTE1(v92) != 1)
  {
    sub_100007710(&v91, &qword_10020A028);
    v95 = 0;
    v96 = 1;
    goto LABEL_6;
  }

  sub_100023CD8(&v91, &v95, &qword_100209FB0);
  if (v96)
  {
LABEL_6:
    sub_100007710(&v95, &qword_100209FB0);
    v29 = v70;
    v30 = v68;
    goto LABEL_7;
  }

  Strong = swift_weakLoadStrong();
  sub_100022D9C(&v95);
  v29 = v70;
  v30 = v68;
  if (Strong)
  {
    sub_1001155BC(v68);

    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    goto LABEL_8;
  }

LABEL_7:
  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
LABEL_8:
  v33 = v86;
  sub_10008A4C0(v24, v86);
  v34 = v84;
  v35 = swift_allocObject();
  sub_10008A528(v33, v35 + v34);
  v91 = v23;
  v92 = v25;
  v93 = v26;
  v94 = v27;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_10008A8CC();
  v38 = v82;
  v39 = v66;
  Scene.onChange<A>(of:initial:_:)();

  sub_100007710(v30, &qword_100207020);
  (*(v67 + 8))(v39, v38);
  sub_100005804(&qword_100209E98);
  FocusedValue.content.getter();
  v40 = v91;
  if ((v92 & 1) == 0)
  {
    j__swift_release();
    v40 = 0;
  }

  v95 = v40;
  v41 = v86;
  sub_10008A4C0(v24, v86);
  v42 = v84;
  v43 = swift_allocObject();
  sub_10008A528(v41, v43 + v42);
  v70 = sub_100005804(&qword_10020A040);
  v91 = v82;
  v92 = v29;
  v93 = v36;
  v94 = v37;
  v44 = v24;
  v82 = &opaque type descriptor for <<opaque return type of Scene.onChange<A>(of:initial:_:)>>;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_10008AA04();
  v47 = v72;
  v48 = v83;
  Scene.onChange<A>(of:initial:_:)();

  (*(v69 + 8))(v48, v47);
  v49 = (v44 + *(v88 + 32));
  v51 = *v49;
  v50 = v49[1];
  v91 = v51;
  v92 = v50;
  sub_100005804(&qword_100209F90);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v52 = v95;
  swift_getKeyPath();
  v91 = v52;
  sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = v52[2];
  v54 = v53;

  v95 = v53;
  sub_10008A4C0(v44, v41);
  v55 = swift_allocObject();
  sub_10008A528(v41, v55 + v42);
  sub_100005804(&qword_10020A058);
  v91 = v47;
  v92 = v70;
  v93 = v45;
  v94 = v46;
  swift_getOpaqueTypeConformance2();
  sub_10008AAF4();
  v56 = v73;
  v57 = v77;
  v58 = v85;
  Scene.onChange<A>(of:initial:_:)();

  (*(v75 + 8))(v58, v57);
  sub_10008A4C0(v81, v41);
  v59 = swift_allocObject();
  sub_10008A528(v41, v59 + v42);
  v60 = v71;
  (*(v76 + 32))(v71, v56, v79);
  v61 = (v60 + *(v78 + 36));
  *v61 = sub_10008ABE0;
  v61[1] = v59;
  v61[2] = 0;
  v61[3] = 0;
  v62 = v74;
  sub_10008AC40(v60, v74);
  sub_10008ACB0();
  static SceneBuilder.buildBlock<A>(_:)();
  return sub_10008AF20(v62);
}

uint64_t sub_100084E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a3;
  v4 = type metadata accessor for PreviewApp(0);
  v57 = *(v4 - 8);
  v56 = *(v57 + 64);
  __chkstk_darwin(v4 - 8);
  v55 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v6 - 8);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = sub_100005804(&qword_10020A090);
  __chkstk_darwin(v11 - 8);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v44 - v14;
  v15 = sub_100005804(&qword_10020A098);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v44 - v17);
  v19 = sub_100005804(&qword_10020A0A0);
  v51 = *(v19 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v47 = &v44 - v20;
  v48 = type metadata accessor for DocumentSceneView(0);
  __chkstk_darwin(v48);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005804(&qword_10020A008);
  v25 = *(v24 - 8);
  v53 = v24;
  v54 = v25;
  __chkstk_darwin(v24);
  v45 = &v44 - v26;
  Binding.projectedValue.getter();
  sub_10001D9F8(v21, v23);
  v27 = [objc_opt_self() standardUserDefaults];
  sub_100145610(v18);
  sub_100189EE4(&type metadata for Bool, &off_1001F9B10, v60);

  (*(v16 + 8))(v18, v15);
  v28 = a1;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v29 = v46;
  sub_100154C20(v46);
  sub_100007710(v10, &qword_1002074C0);
  v30 = sub_100005804(&qword_10020A0A8);
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 0, 1, v30);
  v32 = v50;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v33 = v49;
  sub_10015547C(v49);
  sub_100007710(v32, &qword_1002074C0);
  v31(v33, 0, 1, v30);
  v34 = sub_10008A478(&qword_10020A010, type metadata accessor for DocumentSceneView);
  v35 = v45;
  v36 = v48;
  View.handlesExternalEvents(preferring:allowing:)();
  sub_100007710(v33, &qword_10020A090);
  sub_100007710(v29, &qword_10020A090);
  sub_10008B5EC(v23);
  v37 = v55;
  sub_10008A4C0(v58, v55);
  v38 = v47;
  sub_100006600(v28, v47, &qword_10020A0A0);
  v39 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v40 = (v56 + *(v51 + 80) + v39) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_10008A528(v37, v41 + v39);
  sub_100023CD8(v38, v41 + v40, &qword_10020A0A0);
  v60[0] = v36;
  v60[1] = v34;
  swift_getOpaqueTypeConformance2();
  v42 = v53;
  View.onOpenURL(perform:)();

  return (*(v54 + 8))(v35, v42);
}

uint64_t sub_100085528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v114 = a3;
  v142 = a1;
  v5 = sub_100005804(&qword_1002074C0);
  __chkstk_darwin(v5 - 8);
  v118 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v117 = v108 - v8;
  __chkstk_darwin(v9);
  v123 = v108 - v10;
  v11 = sub_100005804(&unk_10020A0B0);
  __chkstk_darwin(v11 - 8);
  v122 = v108 - v12;
  v13 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v13 - 8);
  v120 = v108 - v14;
  v125 = type metadata accessor for BookmarkableURL(0);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v116 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v140 = v108 - v17;
  v139 = sub_100005804(&qword_10020A0A0);
  v111 = *(v139 - 8);
  v112 = *(v111 + 64);
  __chkstk_darwin(v139);
  v113 = v108 - v18;
  v19 = type metadata accessor for OSSignpostID();
  v127 = *(v19 - 8);
  v128 = v19;
  __chkstk_darwin(v19);
  v126 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v131 = *(v21 - 8);
  v132 = v21;
  __chkstk_darwin(v21);
  v115 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v108[0] = v108 - v24;
  __chkstk_darwin(v25);
  v110 = v108 - v26;
  v27 = type metadata accessor for OpenURLOptions();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v119 = v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v30 - 8);
  v32 = v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v108 - v34;
  v36 = type metadata accessor for UTType();
  v137 = *(v36 - 8);
  v138 = v36;
  __chkstk_darwin(v36);
  __chkstk_darwin(v37);
  v145 = v108 - v38;
  v39 = sub_100005804(&qword_10020A0C8);
  __chkstk_darwin(v39 - 8);
  v41 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = v108 - v43;
  v45 = type metadata accessor for PreviewTelemetryAction();
  Description = v45[-1].Description;
  v135 = v45;
  __chkstk_darwin(v45);
  v147 = v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DocumentOpeningOptions();
  v143 = *(v47 - 8);
  v144 = v47;
  __chkstk_darwin(v47);
  v109 = v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108[1] = v48;
  __chkstk_darwin(v49);
  v146 = v108 - v50;
  type metadata accessor for MainActor();
  v133 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100086720(a2, v146);
  v130 = a2;
  sub_100006600(a2, v44, &qword_10020A0C8);
  v129 = *(v28 + 48);
  v51 = v129(v44, 1, v27);
  v136 = v27;
  v121 = v28;
  if (v51 == 1)
  {
    sub_100007710(v44, &qword_10020A0C8);
  }

  else
  {
    v52 = OpenURLOptions.sourceApplication.getter();
    v54 = v53;
    (*(v28 + 8))(v44, v27);
    if (v54)
    {
      goto LABEL_7;
    }
  }

  v52 = 0;
  v54 = 0xE000000000000000;
LABEL_7:
  sub_100144F24(v52, v54, v147);

  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  v55 = v137;
  v56 = v138;
  v57 = *(v137 + 48);
  if (v57(v35, 1, v138) == 1)
  {
    v58 = v145;
    static UTType.data.getter();
    v59 = v57(v35, 1, v56);
    v60 = v141;
    if (v59 != 1)
    {
      sub_100007710(v35, &qword_10020A0C0);
    }
  }

  else
  {
    v58 = v145;
    (*(v55 + 32))(v145, v35, v56);
    v60 = v141;
  }

  type metadata accessor for PreviewTelemetryLogger();
  (*(v55 + 16))(v32, v58, v56);
  (*(v55 + 56))(v32, 0, 1, v56);
  sub_100143D70(v147, v32);
  sub_100007710(v32, &qword_10020A0C0);
  sub_100006600(v130, v41, &qword_10020A0C8);
  v61 = v136;
  if (v129(v41, 1, v136) == 1)
  {
    sub_100007710(v41, &qword_10020A0C8);
  }

  else
  {
    v62 = v121;
    v63 = v119;
    (*(v121 + 32))(v119, v41, v61);
    v64 = OpenURLOptions.uiSceneOpenURLOptions.getter();
    v65 = [v64 openInPlace];

    if ((v65 & 1) == 0)
    {
      v84 = v110;
      sub_100145164(v110);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (j__os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        j___os_log_impl(&dword_100000000, v85, v86, "Opening a non-open in place document, so import first then open", v87, 2u);
      }

      (*(v131 + 8))(v84, v132);
      static os_signpost_type_t.begin.getter();
      v88 = sub_1001454D8();
      sub_100115224();
      v89 = v126;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v127 + 8))(v89, v128);
      sub_100005804(&unk_100209E80);
      v140 = UIApplicationDelegateAdaptor.wrappedValue.getter();
      v90 = v60;
      v91 = v113;
      sub_100006600(v90, v113, &qword_10020A0A0);
      v93 = v143;
      v92 = v144;
      v94 = v109;
      (*(v143 + 16))(v109, v146, v144);
      v95 = (*(v111 + 80) + 16) & ~*(v111 + 80);
      v96 = (v112 + *(v93 + 80) + v95) & ~*(v93 + 80);
      v97 = swift_allocObject();
      sub_100023CD8(v91, v97 + v95, &qword_10020A0A0);
      (*(v93 + 32))(v97 + v96, v94, v92);
      sub_10005FD5C(0xD000000000000013, 0x80000001001B2070, v142, sub_10008BC48, v97);

      (*(v121 + 8))(v119, v136);
      v55 = v137;
      v56 = v138;
      goto LABEL_28;
    }

    (*(v62 + 8))(v63, v61);
  }

  v66 = type metadata accessor for URL();
  v67 = *(v66 - 8);
  v68 = v120;
  (*(v67 + 16))(v120, v142, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  v70 = v143;
  v69 = v144;
  v71 = v122;
  (*(v143 + 16))(v122, v146, v144);
  (*(v70 + 56))(v71, 0, 1, v69);
  v72 = v140;
  sub_100152B90(v68, v71, v140);
  v73 = v123;
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  v74 = v124;
  v75 = v125;
  v76 = (*(v124 + 48))(v73, 1, v125);
  v77 = v145;
  if (v76 == 1)
  {
    sub_100007710(v73, &qword_1002074C0);
LABEL_25:
    v98 = v56;
    v99 = v115;
    sub_100145164(v115);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (j__os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      j___os_log_impl(&dword_100000000, v100, v101, "Opening an Open in place document, open it right away", v102, 2u);
    }

    (*(v131 + 8))(v99, v132);
    static os_signpost_type_t.begin.getter();
    v103 = sub_1001454D8();
    sub_100115224();
    v104 = v126;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    (*(v127 + 8))(v104, v128);
    v105 = v117;
    v106 = v140;
    (*(v74 + 16))(v117, v140, v75);
    (*(v74 + 56))(v105, 0, 1, v75);
    sub_100006600(v105, v118, &qword_1002074C0);
    j___s7SwiftUI7BindingV12wrappedValuexvs();
    sub_100007710(v105, &qword_1002074C0);
    (*(v74 + 8))(v106, v75);
    v56 = v98;
LABEL_28:
    v77 = v145;
    goto LABEL_29;
  }

  v78 = v116;
  (*(v74 + 32))(v116, v73, v75);
  if ((sub_100154938(v72, v78) & 1) == 0)
  {
    (*(v74 + 8))(v78, v75);
    goto LABEL_25;
  }

  v79 = v108[0];
  sub_100145164(v108[0]);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    j___os_log_impl(&dword_100000000, v80, v81, "Request to open in place for current document, don't do anything.", v82, 2u);
  }

  (*(v131 + 8))(v79, v132);
  v83 = *(v74 + 8);
  v83(v116, v75);
  v83(v72, v75);
LABEL_29:
  (*(v55 + 8))(v77, v56);
  Description[1](v147, v135);
  (*(v143 + 8))(v146, v144);
}

_BYTE *sub_100086720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentCloseButtonState();
  Description = v4[-1].Description;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_10020A0C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  sub_100138E84(a2);
  sub_100006600(a1, v10, &qword_10020A0C8);
  v11 = type metadata accessor for OpenURLOptions();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007710(v10, &qword_10020A0C8);
  }

  else
  {
    v13 = OpenURLOptions.sourceApplication.getter();
    v15 = v14;
    (*(v12 + 8))(v10, v11);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
  v15 = 0xE000000000000000;
LABEL_5:
  v16 = [objc_opt_self() processInfo];
  v17 = [v16 environment];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v18 + 16))
  {
    sub_10008BFA0(0x49545345545F4955, 0xEA0000000000474ELL);
    v20 = v19;

    if (v20)
    {
    }
  }

  else
  {
  }

  if (qword_100206020 != -1)
  {
    swift_once();
  }

  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 != 1 || v13 == 0xD000000000000015 && 0x80000001001B2090 == v15)
  {
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    Description[13](v7, 1, v4);
    return sub_100138820(v7);
  }

  return result;
}

uint64_t sub_100086AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v30 = a2;
  v3 = type metadata accessor for DocumentOpeningOptions();
  v4 = *(v3 - 8);
  v33 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  v7 = sub_100005804(&qword_1002074C0);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_100005804(&qword_10020A0A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v28 - v14;
  v16 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_100006600(v30, v15, &qword_10020A0A0);
  sub_100006600(v31, v10, &qword_1002074C0);
  v20 = v6;
  v21 = v3;
  (*(v4 + 16))(v20, v32, v3);
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = (v13 + *(v29 + 80) + v23) & ~*(v29 + 80);
  v25 = (v8 + *(v4 + 80) + v24) & ~*(v4 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_100023CD8(v15, v26 + v23, &qword_10020A0A0);
  sub_100023CD8(v10, v26 + v24, &qword_1002074C0);
  (*(v4 + 32))(v26 + v25, v28, v21);
  sub_10005DB88(0, 0, v18, &unk_10019F678, v26);
}

uint64_t sub_100086E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100005804(&unk_10020A0B0);
  v6[5] = swift_task_alloc();
  sub_100005804(&qword_10020A4B0);
  v6[6] = swift_task_alloc();
  sub_100005804(&qword_1002074C0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100086FF8, v9, v8);
}

uint64_t sub_100086FF8()
{
  v1 = v0[12];

  sub_100145164(v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    j___os_log_impl(&dword_100000000, v2, v3, "Document was imported, so now open it.", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[3];

  (*(v6 + 8))(v5, v7);
  sub_100006600(v9, v8, &qword_1002074C0);
  v10 = type metadata accessor for BookmarkableURL(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = v0[8];
  v14 = v0[6];
  if (v12 == 1)
  {
    sub_100007710(v0[8], &qword_1002074C0);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_100152830(v0[6]);
    (*(v11 + 8))(v13, v10);
  }

  v16 = v10;
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = type metadata accessor for DocumentOpeningOptions();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  sub_100152B90(v18, v20, v17);
  (*(v11 + 56))(v17, 0, 1, v16);
  sub_100006600(v17, v19, &qword_1002074C0);
  sub_100005804(&qword_10020A0A0);
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  sub_100007710(v17, &qword_1002074C0);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100087368@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&unk_100209E80);
  v2 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  type metadata accessor for PreviewApp(0);
  sub_100005804(&qword_100209F98);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  *a1 = v2;
  a1[1] = v5;
  v3 = *(type metadata accessor for AppCommands() + 24);
  *(a1 + v3) = swift_getKeyPath();
  sub_100005804(&qword_100209608);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000874A8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PreviewApp(0);
  sub_100005804(&qword_100209E90);
  FocusedValue.content.getter();
  if (v1[9] == 1)
  {
    sub_100023CD8(v1, &v2, &qword_100209FB0);
  }

  else
  {
    sub_100007710(v1, &qword_10020A028);
    v2 = 0;
    v3 = 1;
  }

  sub_1000875DC(&v2);
  sub_100007710(&v2, &qword_100209FB0);
}

uint64_t sub_1000875DC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + *(type metadata accessor for PreviewApp(0) + 28));
  v13 = *v11;
  v12 = v11[1];
  v26 = v13;
  v27 = v12;
  sub_100005804(&qword_100209F98);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  sub_100006600(a1, &v26, &qword_100209FB0);
  if (v27)
  {
    sub_100007710(&v26, &qword_100209FB0);
  }

  else
  {
    swift_weakLoadStrong();
    sub_100022D9C(&v26);
  }

  sub_100163124();

  sub_100006600(a1, &v26, &qword_100209FB0);
  if (v27 == 1)
  {
    sub_100007710(&v26, &qword_100209FB0);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_100022D9C(&v26);
    if (Strong)
    {
      v15 = sub_1001156B0();

      sub_1001830A4();

      v16 = URL.lastPathComponent.getter();
      v18 = v17;
      (*(v8 + 8))(v10, v7);
      goto LABEL_9;
    }
  }

  v18 = 0xE500000000000000;
  v16 = 0x2A6C696E2ALL;
LABEL_9:
  sub_1001450D4(v6);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (j__os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    v23 = sub_10008B044(v16, v18, &v26);

    *(v21 + 4) = v23;
    j___os_log_impl(&dword_100000000, v19, v20, "[AppCommand] focused toolbar changed to: %s", v21, 0xCu);
    sub_10000867C(v22);
  }

  else
  {
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100087974()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PreviewApp(0);
  sub_100005804(&qword_100209E98);
  FocusedValue.content.getter();
  v0 = v2;
  if ((v3 & 1) == 0)
  {
    j__swift_release();
    v0 = 0;
  }

  sub_100087A68(v0);

  sub_100087CE8();
}

uint64_t sub_100087A68(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for PreviewApp(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  v21 = *v7;
  v22 = v9;
  sub_100005804(&qword_100209F98);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v10 = sub_1001632E0();

  if (a1)
  {
    if (v10)
    {

      if (v10 == a1)
      {
        return result;
      }
    }
  }

  else
  {
    if (!v10)
    {
      return result;
    }
  }

  v21 = v8;
  v22 = v9;
  j___s7SwiftUI5StateV12wrappedValuexvg();

  sub_100163454(v12);

  sub_1001450D4(v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (j__os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[1] = a1;
    v21 = v16;
    *v15 = 136315138;

    sub_100005804(&qword_10020A040);
    v17 = String.init<A>(describing:)();
    v19 = sub_10008B044(v17, v18, &v21);

    *(v15 + 4) = v19;
    j___os_log_impl(&dword_100000000, v13, v14, "[AppCommand] focused documentCreationTarget changed to: %s", v15, 0xCu);
    sub_10000867C(v16);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100087CE8()
{
  v1 = type metadata accessor for OpenWindowAction();
  v60 = *(v1 - 8);
  v61 = v1;
  __chkstk_darwin(v1);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  v13 = (v0 + *(type metadata accessor for PreviewApp(0) + 32));
  v15 = *v13;
  v14 = v13[1];
  v68 = v15;
  v69 = v14;
  v63 = v14;
  v64 = sub_100005804(&qword_100209F90);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v16 = v67;
  swift_getKeyPath();
  v68 = v16;
  v62 = sub_10008A478(&unk_100209FA0, type metadata accessor for AppEnvironmentModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16 + 16);
  v18 = v17;

  if (!v17)
  {
    return result;
  }

  v20 = v18;
  v21 = sub_100088AA0();
  if (v21)
  {
    v22 = v21;
    v59 = v20;
    v58 = sub_100005804(&unk_100209E80);
    v23 = UIApplicationDelegateAdaptor.wrappedValue.getter();
    if (*&v23[OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel] && (, v24 = sub_1001632E0(), , v24))
    {
      v25 = sub_1001152D4();

      if (v25)
      {
        swift_unknownObjectRelease();
        sub_1001450D4(v12);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (j__os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v56 = v28;
          v57 = swift_slowAlloc();
          v67 = v22;
          v68 = v57;
          *v28 = 136315138;
          type metadata accessor for NewDocumentAction(0);

          v29 = String.init<A>(describing:)();
          LOBYTE(v28) = v27;
          v31 = sub_10008B044(v29, v30, &v68);

          v32 = v56;
          *(v56 + 1) = v31;
          j___os_log_impl(&dword_100000000, v26, v28, "Handling newDocument shortcut: %s.", v32, 0xCu);
          sub_10000867C(v57);
        }

        (*(v65 + 8))(v12, v66);
        v68 = v15;
        v69 = v63;
        j___s7SwiftUI5StateV12wrappedValuexvg();
        v33 = v67;
        if (*(v67 + 16))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *(&v55 - 2) = v33;
          *(&v55 - 1) = 0;
          v68 = v33;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v54 = UIApplicationDelegateAdaptor.wrappedValue.getter();
        sub_10008A054(&qword_100209608, &type metadata accessor for OpenWindowAction, v3);
        sub_10005D46C(v22, v3);

        return (*(v60 + 8))(v3, v61);
      }
    }

    else
    {
    }

    sub_1001450D4(v9);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (j__os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = v22;
      v68 = v38;
      *v37 = 136315138;
      type metadata accessor for NewDocumentAction(0);

      v39 = String.init<A>(describing:)();
      v41 = sub_10008B044(v39, v40, &v68);

      *(v37 + 4) = v41;
      j___os_log_impl(&dword_100000000, v35, v36, "Deferring handling newDocument shortcut: %s.", v37, 0xCu);
      sub_10000867C(v38);
    }

    else
    {
    }

    return (*(v65 + 8))(v9, v66);
  }

  sub_1001450D4(v6);
  v42 = v18;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (j__os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68 = v46;
    *v45 = 136315138;
    v47 = [v42 type];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = sub_10008B044(v48, v50, &v68);

    *(v45 + 4) = v51;
    j___os_log_impl(&dword_100000000, v43, v44, "Dropping unrecognized shortcut: %s.", v45, 0xCu);
    sub_10000867C(v46);
  }

  (*(v65 + 8))(v6, v66);
  v68 = v15;
  v69 = v63;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v52 = v67;
  if (*(v67 + 16))
  {
    v53 = swift_getKeyPath();
    __chkstk_darwin(v53);
    *(&v55 - 2) = v52;
    *(&v55 - 1) = 0;
    v68 = v52;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
  }
}

uint64_t sub_100088524(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewApp(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000085D8(0, &qword_100206DB0);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_10008A4C0(v26, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v25 + 80);
  v26 = v8;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  sub_10008A528(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = sub_10008AF88;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F1E08;
  v20 = j___Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10008A478(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100007888(&qword_100208010, &unk_100206DC0);
  v21 = v30;
  v22 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v20);

  (*(v31 + 8))(v21, v22);
  (*(v28 + 8))(v5, v29);
  v16(v14, v26);
}

uint64_t sub_1000889F4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100087CE8();
}

uint64_t sub_100088AA0()
{
  v1 = [v0 type];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2 == 0xD000000000000024 && 0x80000001001B1FD0 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    type metadata accessor for NewDocumentAction(0);
    return sub_10015DBC4();
  }

  if (v2 == 0xD000000000000022 && 0x80000001001B2000 == v4)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for NewDocumentAction(0);
  return sub_10015D96C();
}

NSString sub_100088BB4()
{
  result = String._bridgeToObjectiveC()();
  qword_100222510 = result;
  return result;
}

void sub_100088BEC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  byte_100209C70 = 0;
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_100206068 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_100222510 object:0];
}

id sub_100089024()
{
  v1 = OBJC_IVAR____TtC7Preview11AppDelegate_appEnvironmentModel;
  type metadata accessor for AppEnvironmentModel(0);
  v2 = swift_allocObject();
  v2[2] = 0;
  type metadata accessor for ScannerPresentationModel();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  ObservationRegistrar.init()();
  v2[3] = v3;
  v2[4] = 0;
  ObservationRegistrar.init()();
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC7Preview11AppDelegate_createNewDocumentOpenWindowFallback;
  v5 = type metadata accessor for OpenWindowAction();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v7, "init");
}

id sub_1000891C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t start()
{
  type metadata accessor for PreviewApp(0);
  sub_10008A478(&qword_100209C78, type metadata accessor for PreviewApp);
  static App.main()();
  return 0;
}

uint64_t sub_100089508()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000895DC()
{
  sub_100089D0C(319, &qword_100209DF0, &type metadata accessor for OpenWindowAction, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000896EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005804(&unk_100209E80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005804(&qword_100209480);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_100005804(&qword_100209E90);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = sub_100005804(&qword_100209E98);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000898EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005804(&unk_100209E80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100005804(&qword_100209480);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v16 = sub_100005804(&qword_100209E90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_100005804(&qword_100209E98);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_100089AD8()
{
  sub_100089D0C(319, &qword_100209F08, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v0 <= 0x3F)
  {
    sub_100089D0C(319, &qword_100209F10, &type metadata accessor for OpenWindowAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100089D70(319, &unk_100209508, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100089D0C(319, &qword_100209F20, type metadata accessor for MenuViewModel, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100089D0C(319, &qword_100209F28, type metadata accessor for AppEnvironmentModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100089D70(319, &qword_100209F30, &type metadata for ToolbarViewModelWeakWrapper, &type metadata accessor for FocusedValue);
            if (v5 <= 0x3F)
            {
              sub_100089D0C(319, &unk_100209F38, type metadata accessor for DocumentCreationTargetProvider, &type metadata accessor for FocusedValue);
              if (v6 <= 0x3F)
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

void sub_100089D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100089D70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100089E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = j___s7SwiftUI17EnvironmentValuesVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100207808);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100006600(v2, &v13 - v9, &qword_100207808);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023CD8(v10, a1, &unk_10020A0D0);
  }

  static os_log_type_t.fault.getter();
  v12 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
  os_log(_:dso:log:_:_:)();

  j___s7SwiftUI17EnvironmentValuesVACycfC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008A054@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = j___s7SwiftUI17EnvironmentValuesVMa();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005804(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_100006600(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10008A2A4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.supportsMultipleWindows.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10008A2D4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.supportsMultipleWindows.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10008A348@<X0>(void *a1@<X8>)
{
  sub_100030A80();
  result = FocusedValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10008A39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&unk_100209F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10008A410(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100083B08(v1);
}

void sub_10008A440()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_10008A478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008A4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PreviewApp(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100084E88(a1, v6, a2);
}

uint64_t sub_10008A614()
{
  v1 = type metadata accessor for PreviewApp(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_100005804(&unk_100209E80);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  sub_100005804(&qword_100209608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenWindowAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_10007B3D0(*(v2 + v1[6]), *(v2 + v1[6] + 8));

  v6 = v1[9];
  v7 = sub_100005804(&qword_100209E90);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = v1[10];
  v9 = sub_100005804(&qword_100209E98);
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_10008A84C()
{
  type metadata accessor for PreviewApp(0);

  return sub_1000874A8();
}

unint64_t sub_10008A8CC()
{
  result = qword_10020A030;
  if (!qword_10020A030)
  {
    sub_1000059D4(&qword_100207020);
    sub_10008A478(&qword_100207038, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A030);
  }

  return result;
}

uint64_t sub_10008A984()
{
  type metadata accessor for PreviewApp(0);

  return sub_100087974();
}

unint64_t sub_10008AA04()
{
  result = qword_10020A048;
  if (!qword_10020A048)
  {
    sub_1000059D4(&qword_10020A040);
    sub_10008A478(&qword_10020A050, type metadata accessor for DocumentCreationTargetProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A048);
  }

  return result;
}

void sub_10008AABC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100083890(v1);
}

unint64_t sub_10008AAF4()
{
  result = qword_10020A060;
  if (!qword_10020A060)
  {
    sub_1000059D4(&qword_10020A058);
    sub_10008AB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A060);
  }

  return result;
}

unint64_t sub_10008AB78()
{
  result = qword_10020A068;
  if (!qword_10020A068)
  {
    sub_1000085D8(255, &qword_10020A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A068);
  }

  return result;
}

uint64_t sub_10008ABE0()
{
  v1 = *(type metadata accessor for PreviewApp(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100088524(v2);
}

uint64_t sub_10008AC40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100209FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008ACB0()
{
  result = qword_10020A078;
  if (!qword_10020A078)
  {
    sub_1000059D4(&qword_100209FE0);
    sub_1000059D4(&qword_100209FD0);
    sub_1000059D4(&qword_10020A058);
    sub_1000059D4(&qword_100209FC8);
    sub_1000059D4(&qword_10020A040);
    sub_1000059D4(&qword_100209FC0);
    sub_1000059D4(&qword_100207020);
    sub_1000059D4(&qword_100209FB8);
    type metadata accessor for AppCommands();
    sub_100007888(&qword_10020A018, &qword_100209FB8);
    sub_10008A478(&qword_10020A020, type metadata accessor for AppCommands);
    swift_getOpaqueTypeConformance2();
    sub_10008A8CC();
    swift_getOpaqueTypeConformance2();
    sub_10008AA04();
    swift_getOpaqueTypeConformance2();
    sub_10008AAF4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A078);
  }

  return result;
}

uint64_t sub_10008AF20(uint64_t a1)
{
  v2 = sub_100005804(&qword_100209FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008AFF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10008B00C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_10008B044(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10008B110(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10004946C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000867C(v11);
  return v7;
}

unint64_t sub_10008B110(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          j__memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10008B21C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_10008B21C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10008B268(a1, a2);
  sub_10008B398(&off_1001EE730);
  return v3;
}

char *sub_10008B268(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10008B484(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    j__memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    j__memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10008B484(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10008B398(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10008B4F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  j__memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10008B484(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005804(&unk_10020A080);
  v4 = swift_allocObject();
  v5 = j_j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10008B4F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005804(&unk_10020A080);
    v10 = swift_allocObject();
    v11 = j_j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      j__memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    j__memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10008B5EC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentSceneView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B648()
{
  v1 = type metadata accessor for PreviewApp(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = sub_100005804(&qword_10020A0A0);
  v5 = (v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;
  v7 = sub_100005804(&unk_100209E80);
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[5];
  sub_100005804(&qword_100209608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenWindowAction();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  sub_10007B3D0(*(v6 + v1[6]), *(v6 + v1[6] + 8));

  v10 = v1[9];
  v11 = sub_100005804(&qword_100209E90);
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[10];
  v13 = sub_100005804(&qword_100209E98);
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  v14 = *(v4 + 32);
  v15 = type metadata accessor for BookmarkableURL(0);
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v5 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_10008B980(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PreviewApp(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100005804(&qword_10020A0A0) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100085528(a1, a2, v2 + v6, v9);
}

uint64_t sub_10008BA70()
{
  v1 = (sub_100005804(&qword_10020A0A0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v10 = *(*v1 + 64);
  v3 = type metadata accessor for DocumentOpeningOptions();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = v1[10];
  v7 = type metadata accessor for BookmarkableURL(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v2 + v6, v7);
  }

  (*(v4 + 8))(v0 + ((v2 + v10 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10008BC48(uint64_t a1)
{
  v3 = *(sub_100005804(&qword_10020A0A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for DocumentOpeningOptions() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100086AA0(a1, v1 + v4, v7);
}

unint64_t sub_10008BD28(uint64_t a1)
{
  type metadata accessor for FileEntityIdentifier();
  sub_10008A478(&qword_100208778, &type metadata accessor for FileEntityIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10008C018(a1, v2);
}

unint64_t sub_10008BDC4(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10008C1D8(a1 & 1, v2);
}

unint64_t sub_10008BE60(uint64_t a1)
{
  Hasher.init(_seed:)();
  Selector.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10008C30C(a1, v2);
}

unint64_t sub_10008BECC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10008C3A8(a1, v4);
}

unint64_t sub_10008BF10(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10008C528(a1, v2);
}

unint64_t sub_10008BFA0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10008C470(a1, a2, v4);
}

unint64_t sub_10008C018(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for FileEntityIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10008A478(&unk_10020A0F0, &type metadata accessor for FileEntityIdentifier);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10008C1D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 6710384;
    }

    else
    {
      v6 = 0x6567616D69;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 6710384 : 0x6567616D69;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE500000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10008C30C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      if (static Selector.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10008C3A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10008CA88(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10008CAE4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10008C470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10008C528(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10008C62C()
{
  v1 = (sub_100005804(&qword_10020A0A0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_100005804(&qword_1002074C0) - 8);
  v13 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v14 = *(v4 + 64);
  v15 = type metadata accessor for DocumentOpeningOptions();
  v5 = *(v15 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v1[10];
  v9 = type metadata accessor for BookmarkableURL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (!v11(v0 + v13, 1, v9))
  {
    (*(v10 + 8))(v0 + v13, v9);
  }

  (*(v5 + 8))(v0 + ((v13 + v14 + v6) & ~v6), v15);

  return swift_deallocObject();
}

uint64_t sub_10008C8BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100005804(&qword_10020A0A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100005804(&qword_1002074C0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for DocumentOpeningOptions() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100013194;

  return sub_100086E40(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10008CB38()
{
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v19 - 8);
  __chkstk_darwin(v19);
  v1 = &v16 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v18 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1000085D8(0, &qword_100206DB0);
  v12 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v8, v5);
  aBlock[4] = sub_100088BEC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F1EA8;
  v13 = j___Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10008A478(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100007888(&qword_100208010, &unk_100206DC0);
  v14 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v13);

  (*(v22 + 8))(v1, v14);
  (*(v20 + 8))(v4, v21);
  v17(v11, v18);
  return 1;
}

id sub_10008CEE8(void *a1, id a2)
{
  v3 = [a2 shortcutItem];
  if (v3)
  {
    v4 = v3;

    v5 = v4;
    sub_100083890(v4);
  }

  v6 = [a1 role];
  v7 = objc_allocWithZone(UISceneConfiguration);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithName:v8 sessionRole:v6];

  type metadata accessor for SceneDelegate();
  [v9 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v9;
}

uint64_t sub_10008D044(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005804(&qword_100209480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10008D114(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005804(&qword_100209480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppCommands()
{
  result = qword_10020A1C8;
  if (!qword_10020A1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008D210()
{
  type metadata accessor for AppDelegate(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuViewModel();
    if (v1 <= 0x3F)
    {
      sub_10008D2AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10008D2AC()
{
  if (!qword_100209F10)
  {
    type metadata accessor for OpenWindowAction();
    v0 = j___s7SwiftUI11EnvironmentVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_100209F10);
    }
  }
}

uint64_t sub_10008D320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = type metadata accessor for Divider();
  v21 = *(*(v5 - 8) + 16);
  v21(a2, v4, v5);
  v6 = sub_100005804(&qword_10020A308);
  v7 = v6[24];
  v8 = a1[4];
  v9 = sub_100005804(&qword_10020A2C0);
  v10 = *(*(v9 - 8) + 16);
  v10(a2 + v7, v8, v9);
  v10(a2 + v6[28], a1[5], v9);
  v10(a2 + v6[32], a1[6], v9);
  v10(a2 + v6[36], a1[7], v9);
  v21(a2 + v6[44], a1[9], v5);
  v11 = v6[48];
  v12 = a1[10];
  v13 = sub_100005804(&qword_10020A300);
  (*(*(v13 - 8) + 16))(a2 + v11, v12, v13);
  v21(a2 + v6[52], a1[11], v5);
  v14 = a2 + v6[56];
  v15 = a1[12];
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v19 = *(v15 + 24);
  LOBYTE(v15) = *(v15 + 25);
  *v14 = v17;
  *(v14 + 8) = v16;
  *(v14 + 16) = v18;
  *(v14 + 24) = v19;
  *(v14 + 25) = v15;
}

uint64_t sub_10008D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 25);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  v8 = sub_100005804(&qword_10020A2F0);
  sub_100096B74(*(a1 + 8), a2 + v8[12]);
  v9 = v8[20];
  v10 = *(a1 + 24);
  v11 = type metadata accessor for Divider();
  v12 = *(*(v11 - 8) + 16);
  v12(a2 + v9, v10, v11);
  v12(a2 + v8[40], *(a1 + 64), v11);
  v12(a2 + v8[48], *(a1 + 80), v11);
  v13 = v8[52];
  v14 = *(a1 + 88);
  v15 = sub_100005804(&qword_10020A2C0);
  v16 = *(*(v15 - 8) + 16);
  v16(a2 + v13, v14, v15);
  v16(a2 + v8[56], *(a1 + 96), v15);
  sub_100096B74(*(a1 + 104), a2 + v8[60]);
  sub_100096B74(*(a1 + 112), a2 + v8[64]);
  v16(a2 + v8[68], *(a1 + 120), v15);
}

uint64_t sub_10008D738@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v98 = sub_100005804(&qword_10020A208);
  __chkstk_darwin(v98);
  v67 = &v58 - v2;
  v3 = type metadata accessor for ToolbarCommands();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v99 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrintingCommands();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_10020A210);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v92 = &v58 - v8;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v80 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v104 = *(v84 - 8);
  __chkstk_darwin(v84);
  v78 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v75 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LocalizedStringResource();
  v103 = *(v63 - 8);
  __chkstk_darwin(v63);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v58 - v16;
  v17 = sub_100005804(&qword_10020A218);
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v105 = &v58 - v18;
  v19 = sub_100005804(&qword_10020A220);
  v94 = *(v19 - 8);
  v95 = v19;
  __chkstk_darwin(v19);
  v100 = &v58 - v20;
  v93 = sub_100005804(&qword_10020A228);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v101 = &v58 - v21;
  v22 = sub_100005804(&qword_10020A230);
  v89 = *(v22 - 8);
  v90 = v22;
  __chkstk_darwin(v22);
  v74 = &v58 - v23;
  v24 = sub_100005804(&qword_10020A238);
  v87 = *(v24 - 8);
  v88 = v24;
  __chkstk_darwin(v24);
  v76 = &v58 - v25;
  v26 = sub_100005804(&qword_10020A240);
  v85 = *(v26 - 8);
  v86 = v26;
  __chkstk_darwin(v26);
  v79 = &v58 - v27;
  v28 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v28 - 8);
  v29 = sub_100005804(&qword_10020A248);
  v82 = *(v29 - 8);
  v83 = v29;
  __chkstk_darwin(v29);
  v81 = &v58 - v30;
  static CommandGroupPlacement.newItem.getter();
  v113 = v1;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.importExport.getter();
  v112 = v1;
  sub_100005804(&qword_10020A250);
  sub_100007888(&qword_10020A258, &qword_10020A250);
  CommandGroup.init(before:addition:)();
  static CommandGroupPlacement.saveItem.getter();
  v111 = v1;
  sub_100005804(&qword_10020A260);
  sub_100007888(&qword_10020A268, &qword_10020A260);
  CommandGroup.init(after:addition:)();
  static CommandGroupPlacement.importExport.getter();
  v110 = v1;
  sub_100005804(&qword_10020A270);
  v73 = &protocol conformance descriptor for TupleView<A>;
  sub_100007888(&qword_10020A278, &qword_10020A270);
  CommandGroup.init(after:addition:)();
  static CommandGroupPlacement.textEditing.getter();
  v109 = v1;
  sub_100005804(&qword_10020A280);
  sub_100007888(&qword_10020A288, &qword_10020A280);
  CommandGroup.init(after:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  v108 = v1;
  v31 = v1;
  v62 = v1;
  sub_100005804(&qword_10020A290);
  sub_100007888(&qword_10020A298, &qword_10020A290);
  CommandGroup.init(before:addition:)();
  String.LocalizationValue.init(stringLiteral:)();
  v60 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = *(v104 + 104);
  v104 += 104;
  v61 = v32;
  v32(v78);
  static Locale.current.getter();
  v33 = v102;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v107 = v31;
  v34 = v103;
  v59 = *(v103 + 16);
  v35 = v63;
  v59(v77, v33, v63);
  j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v58 = v36;
  sub_100005804(&qword_10020A2A0);
  sub_100007888(&qword_10020A2A8, &qword_10020A2A0);
  CommandMenu.init(_:content:)();
  v37 = *(v34 + 8);
  v103 = v34 + 8;
  v58 = v37;
  v38 = v102;
  v37(v102, v35);
  String.LocalizationValue.init(stringLiteral:)();
  v61(v78, v60, v84);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v106 = v62;
  v59(v77, v38, v35);
  j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  sub_100005804(&qword_10020A2B0);
  sub_100007888(&qword_10020A2B8, &qword_10020A2B0);
  v39 = v92;
  CommandMenu.init(_:content:)();
  v58(v102, v35);
  v40 = v64;
  PrintingCommands.init()();
  ToolbarCommands.init()();
  v41 = v98[12];
  v42 = v98[16];
  v43 = v98[20];
  v44 = v98[24];
  v45 = v98[28];
  v46 = v98[32];
  v47 = v98[40];
  v102 = v98[36];
  v103 = v47;
  v104 = v98[44];
  v48 = v67;
  (*(v82 + 16))(v67, v81, v83);
  (*(v85 + 16))(&v48[v41], v79, v86);
  (*(v87 + 16))(&v48[v42], v76, v88);
  (*(v89 + 16))(&v48[v43], v74, v90);
  (*(v91 + 16))(&v48[v44], v101, v93);
  (*(v94 + 16))(&v48[v45], v100, v95);
  (*(v96 + 16))(&v48[v46], v105, v97);
  v50 = v65;
  v49 = v66;
  (*(v65 + 16))(&v102[v48], v39, v66);
  v52 = v68;
  v51 = v69;
  v53 = v40;
  (*(v68 + 16))(&v48[v103], v40, v69);
  v55 = v70;
  v54 = v71;
  v56 = v99;
  (*(v70 + 16))(&v48[v104], v99, v71);
  TupleCommandContent.init(_:)();
  (*(v55 + 8))(v56, v54);
  (*(v52 + 8))(v53, v51);
  (*(v50 + 8))(v92, v49);
  (*(v96 + 8))(v105, v97);
  (*(v94 + 8))(v100, v95);
  (*(v91 + 8))(v101, v93);
  (*(v89 + 8))(v74, v90);
  (*(v87 + 8))(v76, v88);
  (*(v85 + 8))(v79, v86);
  return (*(v82 + 8))(v81, v83);
}

uint64_t sub_10008E6AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AppCommands();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PreviewAction(0);
  v10 = sub_10015D96C();
  v11 = sub_100163720();
  static UTType.png.getter();
  sub_100096978(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1000969E0(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *v9 = v10;
  v9[8] = v11 & 1;
  v14 = &v9[*(v7 + 36)];
  *v14 = sub_1000974C0;
  v14[1] = v13;
  if (qword_100205FF0 != -1)
  {
    swift_once();
  }

  v15 = sub_10008E90C(qword_1002223C8);
  sub_100007710(v9, &qword_10020A2D0);

  *a2 = v15;
  return result;
}

uint64_t sub_10008E90C(void *a1)
{
  v2 = type metadata accessor for KeyEquivalent();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005804(&qword_10020A2C0);
  __chkstk_darwin(v33);
  v32 = &v32 - v5;
  v6 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_100205FF8 != -1)
  {
    swift_once();
  }

  a1 = qword_1002223D0;
LABEL_11:
  v15 = a1;
  sub_100005804(&qword_10020A320);
  inited = swift_initStackObject();
  v36 = xmmword_10019B3A0;
  *(inited + 16) = xmmword_10019B3A0;
  if (qword_100205FF8 != -1)
  {
    swift_once();
  }

  v17 = qword_1002223D0;
  *(inited + 32) = qword_1002223D0;
  v18 = v17;
  v19 = static EventModifiers.command.getter();
  v20 = EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v19)
  {
    v20 = EventModifiers.init(rawValue:)();
  }

  *(inited + 40) = v20;
  if (qword_100205FF0 != -1)
  {
    swift_once();
  }

  v21 = qword_1002223C8;
  *(inited + 48) = qword_1002223C8;
  sub_100005804(&qword_10020A2E8);
  v22 = swift_initStackObject();
  *(v22 + 16) = v36;
  v23 = v21;
  v24 = static EventModifiers.command.getter();
  *(v22 + 32) = v24;
  v25 = static EventModifiers.option.getter();
  *(v22 + 40) = v25;
  v26 = EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v24)
  {
    v26 = EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v25)
  {
    v26 = EventModifiers.init(rawValue:)();
  }

  *(inited + 56) = v26;
  v27 = sub_1000063D4(inited);
  swift_setDeallocating();
  sub_100005804(&qword_10020A328);
  swift_arrayDestroy();
  if (*(v27 + 16) && (sub_10008D02C(v15), (v28 & 1) != 0))
  {

    KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
    v29 = sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
    View.keyboardShortcut(_:modifiers:)();
    (*(v34 + 8))(v4, v35);
    v38 = v6;
    v39 = v29;
    swift_getOpaqueTypeConformance2();
  }

  else
  {

    sub_100096B74(v37, v8);
    sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
  }

  v30 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();

  return v30;
}

uint64_t sub_10008EE2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for AppCommands();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Divider();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v33 - v12;
  __chkstk_darwin(v13);
  v34 = &v33 - v14;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  type metadata accessor for MainActor();
  v37 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Divider.init()();
  type metadata accessor for PreviewAction(0);
  v18 = sub_10015DBC4();
  v19 = sub_100163DB0();
  static UTType.pdf.getter();
  v20 = v35;
  sub_100096978(a1, v35);
  v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v22 = swift_allocObject();
  sub_1000969E0(v20, v22 + v21);
  *v7 = v18;
  v7[8] = v19 & 1;
  v23 = &v7[*(v5 + 36)];
  *v23 = sub_100097310;
  v23[1] = v22;
  if (qword_100206000 != -1)
  {
    swift_once();
  }

  v24 = sub_10008E90C(qword_1002223D8);
  sub_100007710(v7, &qword_10020A2D0);
  v25 = v34;
  Divider.init()();
  v26 = *(v9 + 16);
  v27 = v39;
  v26(v39, v17, v8);
  v28 = v38;
  v26(v38, v25, v8);
  v29 = v40;
  v26(v40, v27, v8);
  v30 = sub_100005804(&qword_10020A318);
  *&v29[*(v30 + 48)] = v24;
  v26(&v29[*(v30 + 64)], v28, v8);
  v31 = *(v9 + 8);

  v31(v25, v8);
  v31(v17, v8);
  v31(v28, v8);

  v31(v27, v8);
}

uint64_t sub_10008F288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = type metadata accessor for OpenWindowAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NewDocumentAction(0);
  v8 = a3();
  type metadata accessor for AppCommands();
  sub_10008A02C(v7);
  sub_10005D46C(v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008F3A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v114 = a2;
  v101 = type metadata accessor for KeyEquivalent();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppCommands();
  v115 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v122 = v5;
  v123 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v6 - 8);
  v108 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v96 - v9;
  __chkstk_darwin(v10);
  v12 = &v96 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v96 - v18;
  __chkstk_darwin(v19);
  v119 = &v96 - v20;
  v124 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v124);
  v113 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v96 - v23;
  __chkstk_darwin(v24);
  v104 = (&v96 - v25);
  __chkstk_darwin(v26);
  v111 = &v96 - v27;
  __chkstk_darwin(v28);
  v99 = (&v96 - v29);
  __chkstk_darwin(v30);
  v118 = &v96 - v31;
  __chkstk_darwin(v32);
  v34 = &v96 - v33;
  __chkstk_darwin(v35);
  v37 = &v96 - v36;
  v110 = sub_100005804(&qword_10020A2C0);
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v121 = &v96 - v40;
  type metadata accessor for MainActor();
  v105 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v109 = v16;
  v116 = type metadata accessor for PreviewAction(0);
  v97 = sub_10015DC14();
  if (sub_100162EC4())
  {
    v41 = sub_100121098();
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_100162EC4();
  v120 = v14;
  if (v42)
  {
    v43 = v37;
    sub_1001193FC(v12);

    v117 = *(v14 + 56);
    v117(v12, 0, 1, v13);
    v44 = v119;
    (*(v14 + 32))(v119, v12, v13);
  }

  else
  {
    v43 = v37;
    v117 = *(v14 + 56);
    v117(v12, 1, 1, v13);
    static UTType.data.getter();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_100007710(v12, &qword_10020A0C0);
    }

    v44 = v119;
    v14 = v120;
  }

  v119 = a1;
  v45 = a1;
  v46 = v123;
  sub_100096978(v45, v123);
  v47 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v115 = *(v115 + 80);
  v48 = swift_allocObject();
  sub_1000969E0(v46, v48 + v47);
  *v34 = v97;
  v34[8] = v41 & 1;
  v49 = v124;
  v50 = &v34[*(v124 + 32)];
  v97 = *(v14 + 32);
  v97(v50, v44, v13);
  v51 = &v34[*(v49 + 36)];
  *v51 = sub_100097568;
  *(v51 + 1) = v48;
  v52 = v43;
  sub_100096A44(v34, v43);
  v53 = v98;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_100005804(&qword_10020A2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  v55 = static EventModifiers.command.getter();
  *(inited + 32) = v55;
  v56 = static EventModifiers.shift.getter();
  *(inited + 40) = v56;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v55)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v56)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
  View.keyboardShortcut(_:modifiers:)();
  (*(v100 + 8))(v53, v101);
  sub_100007710(v52, &qword_10020A2D0);
  v57 = sub_10015DC64();
  if (sub_100162EC4())
  {
    v58 = sub_10012123C();
  }

  else
  {
    v58 = 0;
  }

  v59 = v103;
  if (sub_100162EC4())
  {
    v60 = v102;
    sub_1001193FC(v102);

    v117(v60, 0, 1, v13);
    v61 = v60;
    v62 = v97;
    v97(v59, v61, v13);
  }

  else
  {
    v63 = v120;
    v64 = v102;
    v117(v102, 1, 1, v13);
    static UTType.data.getter();
    v65 = v63;
    v66 = v64;
    v67 = (*(v65 + 48))(v64, 1, v13);
    v62 = v97;
    if (v67 != 1)
    {
      sub_100007710(v66, &qword_10020A0C0);
    }
  }

  v68 = v123;
  sub_100096978(v119, v123);
  v69 = swift_allocObject();
  sub_1000969E0(v68, v69 + v47);
  v70 = v99;
  *v99 = v57;
  *(v70 + 8) = v58 & 1;
  v71 = v124;
  v62(v70 + *(v124 + 32), v59, v13);
  v72 = (v70 + *(v71 + 36));
  *v72 = sub_100097568;
  v72[1] = v69;
  sub_100096A44(v70, v118);
  v73 = sub_10015DCB4();
  if (sub_100162EC4())
  {
    v74 = sub_1001213E0();
  }

  else
  {
    v74 = 0;
  }

  if (sub_100162EC4())
  {
    v75 = v108;
    sub_1001193FC(v108);

    v117(v75, 0, 1, v13);
    v76 = v109;
    v62(v109, v75, v13);
  }

  else
  {
    v77 = v120;
    v78 = v108;
    v117(v108, 1, 1, v13);
    v76 = v109;
    static UTType.data.getter();
    if ((*(v77 + 48))(v78, 1, v13) != 1)
    {
      sub_100007710(v78, &qword_10020A0C0);
    }
  }

  v79 = v123;
  sub_100096978(v119, v123);
  v80 = swift_allocObject();
  sub_1000969E0(v79, v80 + v47);
  v81 = v104;
  *v104 = v73;
  *(v81 + 8) = v74 & 1;
  v82 = v124;
  v62(v81 + *(v124 + 32), v76, v13);
  v83 = (v81 + *(v82 + 36));
  *v83 = sub_100097568;
  v83[1] = v80;
  v84 = v111;
  sub_100096A44(v81, v111);
  v85 = v107;
  v86 = *(v107 + 16);
  v87 = v106;
  v88 = v110;
  v86(v106, v121, v110);
  v89 = v118;
  v90 = v112;
  sub_100096B74(v118, v112);
  v91 = v113;
  sub_100096B74(v84, v113);
  v92 = v114;
  v86(v114, v87, v88);
  v93 = sub_100005804(&qword_10020A310);
  sub_100096B74(v90, &v92[*(v93 + 48)]);
  sub_100096B74(v91, &v92[*(v93 + 64)]);
  sub_100007710(v84, &qword_10020A2D0);
  sub_100007710(v89, &qword_10020A2D0);
  v94 = *(v85 + 8);
  v94(v121, v88);
  sub_100007710(v91, &qword_10020A2D0);
  sub_100007710(v90, &qword_10020A2D0);
  v94(v87, v88);
}

uint64_t sub_1000900B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v48 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v43 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for MenuPlaceholderItem();
  __chkstk_darwin(v44);
  v38 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AppCommands();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v40 = v9;
  v41 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v17);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v35[-v21];
  __chkstk_darwin(v23);
  v25 = &v35[-v24];
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PreviewAction(0);
  v37 = sub_10015D754();
  if (sub_100162EC4())
  {
    v36 = sub_100120378();
  }

  else
  {
    v36 = 0;
  }

  if (sub_100162EC4())
  {
    sub_1001193FC(v12);

    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    static UTType.data.getter();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_100007710(v12, &qword_10020A0C0);
    }
  }

  v26 = v41;
  sub_100096978(v50, v41);
  v27 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v28 = swift_allocObject();
  sub_1000969E0(v26, v28 + v27);
  *v22 = v37;
  v22[8] = v36 & 1;
  (*(v14 + 32))(&v22[*(v17 + 32)], v16, v13);
  v29 = &v22[*(v17 + 36)];
  *v29 = sub_10009730C;
  v29[1] = v28;
  sub_100096A44(v22, v25);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v45 + 104))(v46, enum case for LocalizedStringResource.BundleDescription.main(_:), v47);
  static Locale.current.getter();
  v30 = v38;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = v44;
  v32 = (v30 + *(v44 + 20));
  *v32 = 0xD000000000000015;
  v32[1] = 0x80000001001B2280;
  v33 = (v30 + *(v31 + 24));
  *v33 = 0;
  v33[1] = 0;
  sub_100096AB4(v30);
  sub_100096B74(v25, v19);
  sub_100096B74(v19, v49);
  sub_100007710(v25, &qword_10020A2D0);
  sub_100007710(v19, &qword_10020A2D0);
}

uint64_t sub_10009075C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppCommands();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PreviewAction(0);
  v20 = sub_10015D484();
  sub_100096978(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = static MainActor.shared.getter();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1000969E0(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_100096978(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_1000969E0(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8);
  j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = sub_100162EC4();
  v16 = v15;
  if (!v15)
  {
    goto LABEL_8;
  }

  v17 = sub_10011E460();

  if ((v17 & 1) != 0 && sub_100162EC4())
  {
    v16 = sub_10011C77C();

LABEL_8:

    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  *a2 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 25) = v16 & 1;
  return result;
}

uint64_t sub_1000909E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v256 = a1;
  v213 = a2;
  v2 = sub_100005804(&qword_100209610);
  v210 = *(v2 - 8);
  __chkstk_darwin(v2);
  v208 = &v190 - v3;
  v234 = sub_100005804(&qword_10020A300);
  v214 = *(v234 - 8);
  __chkstk_darwin(v234);
  v233 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v232 = &v190 - v6;
  v7 = type metadata accessor for AppCommands();
  v235 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v252 = v8;
  v253 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v9 - 8);
  v204 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v200 = &v190 - v12;
  __chkstk_darwin(v13);
  v238 = &v190 - v14;
  __chkstk_darwin(v15);
  v215 = (&v190 - v16);
  v237 = type metadata accessor for UTType();
  v254 = *(v237 - 8);
  __chkstk_darwin(v237);
  v201 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v199 = &v190 - v19;
  __chkstk_darwin(v20);
  v195 = &v190 - v21;
  __chkstk_darwin(v22);
  v236 = &v190 - v23;
  v251 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v251);
  v202 = (&v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v203 = &v190 - v26;
  __chkstk_darwin(v27);
  v196 = (&v190 - v28);
  __chkstk_darwin(v29);
  v198 = &v190 - v30;
  __chkstk_darwin(v31);
  v193 = (&v190 - v32);
  __chkstk_darwin(v33);
  v194 = &v190 - v34;
  __chkstk_darwin(v35);
  v191 = (&v190 - v36);
  __chkstk_darwin(v37);
  v192 = &v190 - v38;
  v211 = sub_100005804(&qword_10020A2C0);
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v231 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v230 = &v190 - v41;
  __chkstk_darwin(v42);
  v229 = &v190 - v43;
  __chkstk_darwin(v44);
  v228 = &v190 - v45;
  __chkstk_darwin(v46);
  v248 = &v190 - v47;
  __chkstk_darwin(v48);
  v247 = &v190 - v49;
  __chkstk_darwin(v50);
  v246 = &v190 - v51;
  __chkstk_darwin(v52);
  v245 = &v190 - v53;
  v207 = type metadata accessor for Divider();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v225 = &v190 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v226 = &v190 - v56;
  __chkstk_darwin(v57);
  v227 = &v190 - v58;
  __chkstk_darwin(v59);
  v224 = &v190 - v60;
  __chkstk_darwin(v61);
  v243 = &v190 - v62;
  __chkstk_darwin(v63);
  v244 = &v190 - v64;
  v259 = type metadata accessor for KeyEquivalent();
  v65 = *(v259 - 8);
  __chkstk_darwin(v259);
  v223 = &v190 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v190 - v68;
  v70 = type metadata accessor for Locale();
  __chkstk_darwin(v70 - 8);
  v222 = &v190 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v72 = *(v250 - 8);
  __chkstk_darwin(v250);
  v220 = &v190 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v74 - 8);
  v217 = &v190 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for MenuPlaceholderItem();
  __chkstk_darwin(v221);
  v219 = &v190 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_100005804(&qword_10020A2C8);
  v77 = *(v249 - 8);
  __chkstk_darwin(v249);
  v218 = &v190 - v78;
  type metadata accessor for MainActor();
  v205 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v212 = v2;
  String.LocalizationValue.init(stringLiteral:)();
  v241 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v216 = *(v72 + 104);
  v242 = v72 + 104;
  v79 = v220;
  v216(v220);
  static Locale.current.getter();
  v80 = v219;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v81 = v221;
  v82 = (v80 + *(v221 + 20));
  *v82 = 0x6C6C6F726373;
  v82[1] = 0xE600000000000000;
  v83 = (v80 + *(v81 + 24));
  *v83 = 0;
  v83[1] = 0;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v240 = sub_100096BE4(&qword_10020A2D8, type metadata accessor for MenuPlaceholderItem);
  v84 = v218;
  View.keyboardShortcut(_:modifiers:)();
  v258 = *(v65 + 8);
  v258(v69, v259);
  sub_100096AB4(v80);
  v239 = *(v77 + 8);
  v239(v84, v249);
  String.LocalizationValue.init(stringLiteral:)();
  v85 = v216;
  (v216)(v79, v241, v250);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v86 = (v80 + *(v81 + 20));
  *v86 = 0x6C676E6174636572;
  v86[1] = 0xE900000000000065;
  v87 = (v80 + *(v81 + 24));
  *v87 = 0;
  v87[1] = 0;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v258(v69, v259);
  sub_100096AB4(v80);
  v239(v84, v249);
  String.LocalizationValue.init(stringLiteral:)();
  (v85)(v79, v241, v250);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v88 = (v80 + *(v81 + 20));
  *v88 = 0xD000000000000013;
  v88[1] = 0x80000001001B2220;
  v89 = (v80 + *(v81 + 24));
  *v89 = 0;
  v89[1] = 0;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v257 = (v65 + 8);
  v258(v69, v259);
  sub_100096AB4(v80);
  v197 = v77 + 8;
  v239(v84, v249);
  Divider.init()();
  v255 = type metadata accessor for PreviewAction(0);
  v90 = sub_10015C610();
  v260 = *(v256 + 8);
  if (sub_100162EC4())
  {
    v91 = sub_10011EFDC();
  }

  else
  {
    v91 = 0;
  }

  v92 = v254;
  v93 = v238;
  v94 = v236;
  v95 = v215;
  if (sub_100162EC4())
  {
    sub_1001193FC(v95);

    v96 = v237;
    v238 = *(v92 + 56);
    (v238)(v95, 0, 1, v237);
    (*(v92 + 32))(v94, v95, v96);
    v97 = v94;
  }

  else
  {
    v98 = v237;
    v238 = *(v92 + 56);
    (v238)(v95, 1, 1, v237);
    static UTType.data.getter();
    if ((*(v92 + 48))(v95, 1, v98) != 1)
    {
      sub_100007710(v95, &qword_10020A0C0);
    }

    v96 = v237;
    v92 = v254;
    v97 = v236;
  }

  v99 = v253;
  sub_100096978(v256, v253);
  v100 = (*(v235 + 80) + 16) & ~*(v235 + 80);
  v237 = *(v235 + 80);
  v101 = swift_allocObject();
  v236 = v100;
  sub_1000969E0(v99, v101 + v100);
  v102 = v191;
  *v191 = v90;
  *(v102 + 8) = v91 & 1;
  v103 = v251;
  v104 = v102 + *(v251 + 32);
  v215 = *(v92 + 32);
  v215(v104, v97, v96);
  v105 = (v102 + *(v103 + 36));
  *v105 = sub_100097568;
  v105[1] = v101;
  v106 = v192;
  sub_100096A44(v102, v192);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v235 = sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
  View.keyboardShortcut(_:modifiers:)();
  v258(v69, v259);
  sub_100007710(v106, &qword_10020A2D0);
  v107 = sub_10015C4E4();
  if (sub_100162EC4())
  {
    v108 = sub_10011EE38();
  }

  else
  {
    v108 = 0;
  }

  v109 = v93;
  v110 = sub_100162EC4();
  v111 = v215;
  v112 = v195;
  if (v110)
  {
    sub_1001193FC(v109);

    (v238)(v109, 0, 1, v96);
    v111(v112, v109, v96);
    v113 = v96;
  }

  else
  {
    v114 = v254;
    (v238)(v109, 1, 1, v96);
    static UTType.data.getter();
    v113 = v96;
    if ((*(v114 + 48))(v109, 1, v96) != 1)
    {
      sub_100007710(v109, &qword_10020A0C0);
    }
  }

  v115 = v253;
  sub_100096978(v256, v253);
  v116 = v236;
  v117 = swift_allocObject();
  sub_1000969E0(v115, &v116[v117]);
  v118 = v193;
  *v193 = v107;
  *(v118 + 8) = v108 & 1;
  v119 = v251;
  v111((v118 + *(v251 + 32)), v112, v113);
  v120 = (v118 + *(v119 + 36));
  *v120 = sub_100097568;
  v120[1] = v117;
  v121 = v194;
  sub_100096A44(v118, v194);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v258(v69, v259);
  sub_100007710(v121, &qword_10020A2D0);
  v122 = sub_10015C28C();
  if (sub_100162EC4())
  {
    v123 = sub_10011EAF0();
  }

  else
  {
    v123 = 0;
  }

  v124 = v200;
  if (sub_100162EC4())
  {
    sub_1001193FC(v124);

    (v238)(v124, 0, 1, v113);
    v125 = v199;
    v111(v199, v124, v113);
    v126 = v111;
  }

  else
  {
    v127 = v254;
    (v238)(v124, 1, 1, v113);
    v125 = v199;
    static UTType.data.getter();
    v126 = v111;
    if ((*(v127 + 48))(v124, 1, v113) != 1)
    {
      sub_100007710(v124, &qword_10020A0C0);
    }
  }

  v128 = v253;
  sub_100096978(v256, v253);
  v129 = v236;
  v130 = swift_allocObject();
  sub_1000969E0(v128, &v129[v130]);
  v131 = v196;
  *v196 = v122;
  *(v131 + 8) = v123 & 1;
  v132 = v251;
  v126(v131 + *(v251 + 32), v125, v113);
  v133 = (v131 + *(v132 + 36));
  *v133 = sub_100097568;
  v133[1] = v130;
  v134 = v198;
  sub_100096A44(v131, v198);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v258(v69, v259);
  sub_100007710(v134, &qword_10020A2D0);
  v135 = sub_10015C3B8();
  if (sub_100162EC4())
  {
    v136 = sub_10011EC94();
  }

  else
  {
    v136 = 0;
  }

  v137 = sub_100162EC4();
  v138 = v215;
  if (v137)
  {
    v139 = v204;
    sub_1001193FC(v204);

    (v238)(v139, 0, 1, v113);
    v140 = v201;
    v138(v201, v139, v113);
  }

  else
  {
    v141 = v254;
    v142 = v204;
    (v238)(v204, 1, 1, v113);
    v140 = v201;
    static UTType.data.getter();
    if ((*(v141 + 48))(v142, 1, v113) != 1)
    {
      sub_100007710(v142, &qword_10020A0C0);
    }
  }

  v143 = v253;
  sub_100096978(v256, v253);
  v144 = v236;
  v145 = swift_allocObject();
  sub_1000969E0(v143, &v144[v145]);
  v146 = v202;
  *v202 = v135;
  *(v146 + 8) = v136 & 1;
  v147 = v251;
  v138((v146 + *(v251 + 32)), v140, v113);
  v148 = (v146 + *(v147 + 36));
  *v148 = sub_100097568;
  v148[1] = v145;
  v149 = v203;
  sub_100096A44(v146, v203);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v150 = v259;
  v151 = v258;
  v258(v69, v259);
  sub_100007710(v149, &qword_10020A2D0);
  String.LocalizationValue.init(stringLiteral:)();
  (v216)(v220, v241, v250);
  static Locale.current.getter();
  v152 = v219;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v153 = v221;
  v154 = (v152 + *(v221 + 20));
  *v154 = 0xD000000000000014;
  v154[1] = 0x80000001001B2260;
  v155 = (v152 + *(v153 + 24));
  *v155 = 0;
  v155[1] = 0;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v156 = v218;
  View.keyboardShortcut(_:modifiers:)();
  v151(v69, v150);
  sub_100096AB4(v152);
  v239(v156, v249);
  Divider.init()();
  v157 = sub_10015D348();
  swift_getKeyPath();
  LOBYTE(v261[0]) = 0;
  if (sub_100162EC4())
  {
    type metadata accessor for ToolbarViewModel(0);
    sub_100096BE4(&qword_100209618, type metadata accessor for ToolbarViewModel);

    v158 = v208;
    Bindable<A>.init(_:)();
    v159 = v212;
    Bindable<A>.subscript.getter();

    v160 = v210;
    (*(v210 + 8))(v158, v159);
  }

  else
  {
    j___s7SwiftUI7BindingV8constantyACyxGxFZ();

    v159 = v212;
    v160 = v210;
    v158 = v208;
  }

  v161 = v264;
  v162 = v265;
  v163 = v266;
  if (sub_100162EC4())
  {
    v164 = sub_10011E2BC();
  }

  else
  {
    v164 = 0;
  }

  v264 = v157;
  v265 = v161;
  v266 = v162;
  LOBYTE(v267) = v163;
  BYTE1(v267) = v164 & 1;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_100005804(&qword_10020A2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  v166 = static EventModifiers.command.getter();
  *(inited + 32) = v166;
  v167 = static EventModifiers.shift.getter();
  *(inited + 40) = v167;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v166)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v167)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100005804(&qword_10020A280);
  sub_100007888(&qword_10020A288, &qword_10020A280);
  v168 = v223;
  View.keyboardShortcut(_:modifiers:)();
  v258(v168, v259);

  Divider.init()();
  v259 = sub_10015D614();
  swift_getKeyPath();
  LOBYTE(v261[0]) = 0;
  if (sub_100162EC4())
  {
    type metadata accessor for ToolbarViewModel(0);
    sub_100096BE4(&qword_100209618, type metadata accessor for ToolbarViewModel);

    Bindable<A>.init(_:)();
    Bindable<A>.subscript.getter();

    (*(v160 + 8))(v158, v159);
  }

  else
  {
    j___s7SwiftUI7BindingV8constantyACyxGxFZ();
  }

  v258 = v264;
  v257 = v265;
  LODWORD(v256) = v266;
  if (sub_100162EC4())
  {
    LODWORD(v260) = sub_100120EF4();
  }

  else
  {
    LODWORD(v260) = 0;
  }

  v169 = v206;
  v170 = *(v206 + 16);
  v171 = v227;
  v172 = v207;
  v170(v227, v244, v207);
  v267 = v171;
  v173 = v209;
  v174 = *(v209 + 16);
  v175 = v228;
  v176 = v211;
  v174(v228, v245, v211);
  v268 = v175;
  v177 = v229;
  v174(v229, v246, v176);
  v269 = v177;
  v178 = v230;
  v174(v230, v247, v176);
  v270 = v178;
  v179 = v231;
  v174(v231, v248, v176);
  v271 = v179;
  v180 = v226;
  v170(v226, v243, v172);
  v272 = v180;
  v181 = v214;
  v182 = v233;
  v183 = v232;
  (*(v214 + 16))(v233, v232, v234);
  v273 = v182;
  v184 = v225;
  v185 = v224;
  v170(v225, v224, v172);
  v261[0] = v259;
  v261[1] = v258;
  v261[2] = v257;
  v262 = v256;
  v263 = v260 & 1;
  v274 = v184;
  v275 = v261;
  sub_10008D320(&v264, v213);
  v186 = *(v169 + 8);
  v186(v185, v172);
  v260 = *(v181 + 8);
  v187 = v234;
  v260(v183, v234);
  v186(v243, v172);
  v188 = *(v173 + 8);
  v188(v248, v176);
  v188(v247, v176);
  v188(v246, v176);
  v188(v245, v176);
  v186(v244, v172);

  v186(v225, v172);
  v260(v233, v187);
  v186(v226, v172);
  v188(v231, v176);
  v188(v230, v176);
  v188(v229, v176);
  v188(v228, v176);
  v186(v227, v172);
}

BOOL sub_100092D3C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100119C00();
  *a1 = result;
  return result;
}

uint64_t sub_100092D94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011D40C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100092DEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v184 = a1;
  v164 = a2;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v161 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v157 = *(v174 - 8);
  __chkstk_darwin(v174);
  v158 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v154 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for MenuPlaceholderItem();
  __chkstk_darwin(v160);
  v159 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100005804(&qword_10020A2C8);
  v156 = *(v173 - 8);
  __chkstk_darwin(v173);
  v155 = &v137 - v8;
  v163 = type metadata accessor for Divider();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v175 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v182 = &v137 - v11;
  v12 = type metadata accessor for KeyEquivalent();
  v13 = *(v12 - 8);
  v185 = v12;
  v186 = v13;
  __chkstk_darwin(v12);
  v153 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v137 - v16;
  __chkstk_darwin(v18);
  v144 = &v137 - v19;
  __chkstk_darwin(v20);
  v183 = &v137 - v21;
  v22 = type metadata accessor for AppCommands();
  v169 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v176 = v23;
  v177 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v24 - 8);
  v146 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v139 = &v137 - v27;
  __chkstk_darwin(v28);
  v30 = &v137 - v29;
  v31 = type metadata accessor for UTType();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v141 = &v137 - v36;
  __chkstk_darwin(v37);
  v39 = &v137 - v38;
  v178 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v178);
  v145 = (&v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v148 = &v137 - v42;
  __chkstk_darwin(v43);
  v140 = (&v137 - v44);
  __chkstk_darwin(v45);
  v143 = &v137 - v46;
  __chkstk_darwin(v47);
  v49 = &v137 - v48;
  __chkstk_darwin(v50);
  v52 = &v137 - v51;
  v152 = sub_100005804(&qword_10020A2C0);
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v172 = &v137 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v171 = &v137 - v55;
  __chkstk_darwin(v56);
  v170 = &v137 - v57;
  __chkstk_darwin(v58);
  v181 = &v137 - v59;
  __chkstk_darwin(v60);
  v180 = &v137 - v61;
  __chkstk_darwin(v62);
  v179 = &v137 - v63;
  type metadata accessor for MainActor();
  v150 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v147 = v34;
  v167 = type metadata accessor for PreviewAction(0);
  v165 = sub_10015CD18();
  if (sub_100162EC4())
  {
    v64 = sub_10011FB58();
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_100162EC4();
  v149 = v17;
  if (v65)
  {
    sub_1001193FC(v30);

    v66 = v32;
    v168 = *(v32 + 56);
    v168(v30, 0, 1, v31);
    v67 = *(v32 + 32);
    v68 = v39;
    v67(v39, v30, v31);
  }

  else
  {
    v168 = *(v32 + 56);
    v168(v30, 1, 1, v31);
    static UTType.data.getter();
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      sub_100007710(v30, &qword_10020A0C0);
    }

    v66 = v32;
    v68 = v39;
  }

  v69 = v177;
  sub_100096978(v184, v177);
  v70 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v166 = *(v169 + 80);
  v71 = swift_allocObject();
  sub_1000969E0(v69, v71 + v70);
  *v49 = v165;
  v49[8] = v64 & 1;
  v72 = v178;
  v73 = &v49[*(v178 + 32)];
  v165 = *(v66 + 32);
  v165(v73, v68, v31);
  v74 = &v49[*(v72 + 36)];
  *v74 = sub_100097568;
  *(v74 + 1) = v71;
  sub_100096A44(v49, v52);
  v75 = v183;
  static KeyEquivalent.upArrow.getter();
  v76 = static EventModifiers.option.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v76)
  {
    EventModifiers.init(rawValue:)();
  }

  v169 = sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
  View.keyboardShortcut(_:modifiers:)();
  v77 = *(v186 + 8);
  v186 += 8;
  v183 = v77;
  (v77)(v75, v185);
  sub_100007710(v52, &qword_10020A2D0);
  v138 = sub_10015CE50();
  if (sub_100162EC4())
  {
    v78 = sub_10011FCFC();
  }

  else
  {
    v78 = 0;
  }

  v79 = sub_100162EC4();
  v80 = v178;
  v142 = v66;
  if (v79)
  {
    v81 = v139;
    sub_1001193FC(v139);

    v168(v81, 0, 1, v31);
    v82 = v141;
    v83 = v165;
    v165(v141, v81, v31);
  }

  else
  {
    v84 = v139;
    v168(v139, 1, 1, v31);
    v85 = v66;
    v82 = v141;
    static UTType.data.getter();
    v86 = (*(v85 + 48))(v84, 1, v31);
    v83 = v165;
    if (v86 != 1)
    {
      sub_100007710(v84, &qword_10020A0C0);
    }
  }

  v87 = v177;
  sub_100096978(v184, v177);
  v88 = swift_allocObject();
  sub_1000969E0(v87, v88 + v70);
  v89 = v140;
  *v140 = v138;
  *(v89 + 8) = v78 & 1;
  v83(v89 + *(v80 + 32), v82, v31);
  v90 = (v89 + *(v80 + 36));
  *v90 = sub_100097568;
  v90[1] = v88;
  v91 = v89;
  v92 = v143;
  sub_100096A44(v91, v143);
  v93 = v144;
  static KeyEquivalent.downArrow.getter();
  v94 = static EventModifiers.option.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v94)
  {
    EventModifiers.init(rawValue:)();
  }

  View.keyboardShortcut(_:modifiers:)();
  (v183)(v93, v185);
  sub_100007710(v92, &qword_10020A2D0);
  v167 = sub_10015CF84();
  if (sub_100162EC4())
  {
    v95 = sub_10011FEA0();
  }

  else
  {
    v95 = 0;
  }

  v96 = v142;
  if (sub_100162EC4())
  {
    v97 = v146;
    sub_1001193FC(v146);

    v168(v97, 0, 1, v31);
    v98 = v147;
    v99 = v31;
    v100 = v31;
    v101 = v165;
    v165(v147, v97, v99);
    v102 = v148;
  }

  else
  {
    v103 = v146;
    v168(v146, 1, 1, v31);
    v98 = v147;
    static UTType.data.getter();
    v104 = (*(v96 + 48))(v103, 1, v31);
    v102 = v148;
    v100 = v31;
    v101 = v165;
    if (v104 != 1)
    {
      sub_100007710(v103, &qword_10020A0C0);
    }
  }

  v105 = v177;
  sub_100096978(v184, v177);
  v106 = swift_allocObject();
  sub_1000969E0(v105, v106 + v70);
  v107 = v145;
  *v145 = v167;
  *(v107 + 8) = v95 & 1;
  v101(v107 + *(v80 + 32), v98, v100);
  v108 = (v107 + *(v80 + 36));
  *v108 = sub_100096C2C;
  v108[1] = v106;
  sub_100096A44(v107, v102);
  v109 = v149;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_100005804(&qword_10020A2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  v111 = static EventModifiers.command.getter();
  *(inited + 32) = v111;
  v112 = static EventModifiers.option.getter();
  *(inited + 40) = v112;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v111)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v112)
  {
    EventModifiers.init(rawValue:)();
  }

  View.keyboardShortcut(_:modifiers:)();
  v113 = v185;
  (v183)(v109, v185);
  sub_100007710(v102, &qword_10020A2D0);
  Divider.init()();
  String.LocalizationValue.init(stringLiteral:)();
  LODWORD(v184) = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v178 = *(v157 + 104);
  v114 = v158;
  (v178)(v158);
  static Locale.current.getter();
  v115 = v159;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v116 = v160;
  v117 = (v115 + *(v160 + 20));
  strcpy(v117, "arrow.backward");
  v117[15] = -18;
  v118 = (v115 + *(v116 + 24));
  *v118 = 0;
  v118[1] = 0;
  v119 = v153;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v177 = sub_100096BE4(&qword_10020A2D8, type metadata accessor for MenuPlaceholderItem);
  v120 = v155;
  View.keyboardShortcut(_:modifiers:)();
  (v183)(v119, v113);
  sub_100096AB4(v115);
  v176 = *(v156 + 8);
  v176(v120, v173);
  String.LocalizationValue.init(stringLiteral:)();
  (v178)(v114, v184, v174);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v121 = v115 + *(v116 + 20);
  strcpy(v121, "arrow.forward");
  *(v121 + 14) = -4864;
  v122 = (v115 + *(v116 + 24));
  *v122 = 0;
  v122[1] = 0;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  (v183)(v119, v185);
  sub_100096AB4(v115);
  v176(v120, v173);
  v123 = v151;
  v124 = *(v151 + 16);
  v125 = v170;
  v126 = v152;
  v124(v170, v179, v152);
  v127 = v171;
  v124(v171, v180, v126);
  v124(v172, v181, v126);
  v128 = v162;
  v186 = *(v162 + 16);
  v129 = v163;
  (v186)(v175, v182, v163);
  v130 = v164;
  v124(v164, v125, v126);
  v131 = sub_100005804(&qword_10020A2F8);
  v124(&v130[v131[12]], v127, v126);
  v132 = v172;
  v124(&v130[v131[16]], v172, v126);
  v133 = v175;
  (v186)(&v130[v131[20]], v175, v129);
  v134 = *(v128 + 8);
  v134(v182, v129);
  v135 = *(v123 + 8);
  v135(v181, v126);
  v135(v180, v126);
  v135(v179, v126);
  v134(v133, v129);
  v135(v132, v126);
  v135(v171, v126);
  v135(v170, v126);
}

uint64_t sub_100094384()
{
  result = sub_100162EC4();
  if (result)
  {
    sub_1001168E4(1);
  }

  return result;
}

uint64_t sub_1000943D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v291 = a1;
  v257 = a2;
  v260 = sub_100005804(&qword_10020A2C0);
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v258 = &v223 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v272 = &v223 - v4;
  __chkstk_darwin(v5);
  v271 = &v223 - v6;
  __chkstk_darwin(v7);
  v254 = &v223 - v8;
  __chkstk_darwin(v9);
  v280 = &v223 - v10;
  __chkstk_darwin(v11);
  v279 = &v223 - v12;
  v283 = type metadata accessor for KeyEquivalent();
  v285 = *(v283 - 8);
  __chkstk_darwin(v283);
  v253 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v241 = &v223 - v15;
  v261 = sub_100005804(&qword_10020A2C8);
  v233 = *(v261 - 1);
  __chkstk_darwin(v261);
  v231 = &v223 - v16;
  v256 = type metadata accessor for Divider();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v270 = &v223 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v269 = &v223 - v19;
  __chkstk_darwin(v20);
  v268 = &v223 - v21;
  __chkstk_darwin(v22);
  v278 = &v223 - v23;
  __chkstk_darwin(v24);
  v277 = &v223 - v25;
  __chkstk_darwin(v26);
  v276 = &v223 - v27;
  v28 = type metadata accessor for Locale();
  __chkstk_darwin(v28 - 8);
  v273 = (&v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v226 = *(v229 - 8);
  __chkstk_darwin(v229);
  v227 = &v223 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v225 = &v223 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MenuPlaceholderItem();
  __chkstk_darwin(v33);
  v35 = &v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AppCommands();
  v284 = *(v36 - 8);
  __chkstk_darwin(v36 - 8);
  v288 = v37;
  v289 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v38 - 8);
  v250 = &v223 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v247 = &v223 - v41;
  __chkstk_darwin(v42);
  v239 = &v223 - v43;
  __chkstk_darwin(v44);
  v236 = &v223 - v45;
  __chkstk_darwin(v46);
  v230 = &v223 - v47;
  __chkstk_darwin(v48);
  v281 = &v223 - v49;
  v282 = type metadata accessor for UTType();
  v287 = *(v282 - 8);
  __chkstk_darwin(v282);
  v51 = &v223 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v223 - v53;
  __chkstk_darwin(v55);
  v238 = &v223 - v56;
  __chkstk_darwin(v57);
  v235 = &v223 - v58;
  __chkstk_darwin(v59);
  v262 = &v223 - v60;
  __chkstk_darwin(v61);
  v274 = &v223 - v62;
  v290 = sub_100005804(&qword_10020A2D0);
  __chkstk_darwin(v290);
  v266 = &v223 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v265 = &v223 - v65;
  __chkstk_darwin(v66);
  v267 = &v223 - v67;
  __chkstk_darwin(v68);
  v251 = (&v223 - v69);
  __chkstk_darwin(v70);
  v240 = (&v223 - v71);
  __chkstk_darwin(v72);
  v264 = &v223 - v73;
  __chkstk_darwin(v74);
  v237 = (&v223 - v75);
  __chkstk_darwin(v76);
  v263 = &v223 - v77;
  __chkstk_darwin(v78);
  v232 = (&v223 - v79);
  __chkstk_darwin(v80);
  v234 = &v223 - v81;
  __chkstk_darwin(v82);
  v224 = (&v223 - v83);
  __chkstk_darwin(v84);
  v228 = &v223 - v85;
  __chkstk_darwin(v86);
  v88 = &v223 - v87;
  __chkstk_darwin(v89);
  v275 = &v223 - v90;
  v91 = sub_100005804(&qword_100209610);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v94 = &v223 - v93;
  type metadata accessor for MainActor();
  v252 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v243 = v54;
  v249 = v51;
  v286 = type metadata accessor for PreviewAction(0);
  v248 = sub_10015D524();
  swift_getKeyPath();
  LOBYTE(v293[0]) = 0;
  v292 = *(v291 + 8);
  if (sub_100162EC4())
  {
    type metadata accessor for ToolbarViewModel(0);
    sub_100096BE4(&qword_100209618, type metadata accessor for ToolbarViewModel);

    Bindable<A>.init(_:)();
    Bindable<A>.subscript.getter();

    (*(v92 + 8))(v94, v91);
  }

  else
  {
    j___s7SwiftUI7BindingV8constantyACyxGxFZ();
  }

  v95 = v274;
  v246 = v296;
  v245 = v297;
  v244 = v298;
  v96 = sub_100162EC4();
  v97 = v282;
  if (v96)
  {
    v242 = sub_1001206C0();
  }

  else
  {
    v242 = 0;
  }

  v223 = sub_10015D844();
  if (sub_100162EC4())
  {
    v98 = sub_100120BAC();
  }

  else
  {
    v98 = 0;
  }

  if (sub_100162EC4())
  {
    v99 = v281;
    sub_1001193FC(v281);

    v100 = v287;
    (*(v287 + 56))(v99, 0, 1, v97);
    (*(v100 + 32))(v95, v99, v97);
    v101 = v97;
  }

  else
  {
    v100 = v287;
    v102 = v281;
    (*(v287 + 56))(v281, 1, 1, v97);
    static UTType.data.getter();
    v101 = v97;
    if ((*(v100 + 48))(v102, 1, v97) != 1)
    {
      sub_100007710(v102, &qword_10020A0C0);
    }
  }

  v103 = v289;
  sub_100096978(v291, v289);
  v104 = (*(v284 + 80) + 16) & ~*(v284 + 80);
  v284 = *(v284 + 80);
  v105 = swift_allocObject();
  v274 = v104;
  sub_1000969E0(v103, v105 + v104);
  *v88 = v223;
  v88[8] = v98 & 1;
  v106 = v290;
  v107 = &v88[*(v290 + 32)];
  v223 = *(v100 + 32);
  v281 = v100 + 32;
  v223(v107, v95, v101);
  v108 = &v88[*(v106 + 36)];
  *v108 = sub_100097568;
  *(v108 + 1) = v105;
  sub_100096A44(v88, v275);
  String.LocalizationValue.init(stringLiteral:)();
  v109 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v110 = *(v226 + 104);
  v111 = v227;
  v112 = v229;
  v110(v227, enum case for LocalizedStringResource.BundleDescription.main(_:), v229);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v113 = &v35[*(v33 + 20)];
  *v113 = 0xD000000000000012;
  *(v113 + 1) = 0x80000001001B2120;
  v114 = &v35[*(v33 + 24)];
  *v114 = 0;
  *(v114 + 1) = 0;
  sub_100096AB4(v35);
  Divider.init()();
  String.LocalizationValue.init(stringLiteral:)();
  v110(v111, v109, v112);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v115 = &v35[*(v33 + 20)];
  *v115 = 0xD000000000000012;
  *(v115 + 1) = 0x80000001001B2160;
  v116 = &v35[*(v33 + 24)];
  *v116 = 0;
  *(v116 + 1) = 0;
  sub_100096AB4(v35);
  String.LocalizationValue.init(stringLiteral:)();
  v110(v111, v109, v112);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v117 = &v35[*(v33 + 20)];
  *v117 = 0xD000000000000010;
  *(v117 + 1) = 0x80000001001B21A0;
  v118 = &v35[*(v33 + 24)];
  *v118 = 0;
  *(v118 + 1) = 0;
  sub_100096AB4(v35);
  String.LocalizationValue.init(stringLiteral:)();
  v110(v111, v109, v112);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v119 = &v35[*(v33 + 20)];
  *v119 = 0xD000000000000014;
  *(v119 + 1) = 0x80000001001B21C0;
  v120 = &v35[*(v33 + 24)];
  *v120 = 0;
  *(v120 + 1) = 0;
  sub_100096AB4(v35);
  String.LocalizationValue.init(stringLiteral:)();
  v110(v111, v109, v112);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v121 = &v35[*(v33 + 20)];
  *v121 = 0x662E6E6F73726570;
  *(v121 + 1) = 0xEB000000006C6C69;
  v122 = &v35[*(v33 + 24)];
  *v122 = 0;
  *(v122 + 1) = 0;
  sub_100096AB4(v35);
  Divider.init()();
  String.LocalizationValue.init(stringLiteral:)();
  v110(v111, v109, v112);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v123 = &v35[*(v33 + 20)];
  *v123 = 0x6B72616D6B6F6F62;
  *(v123 + 1) = 0xE800000000000000;
  v124 = &v35[*(v33 + 24)];
  *v124 = 0;
  *(v124 + 1) = 0;
  v125 = v241;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  sub_100096BE4(&qword_10020A2D8, type metadata accessor for MenuPlaceholderItem);
  v126 = v231;
  View.keyboardShortcut(_:modifiers:)();
  v127 = *(v285 + 8);
  v285 += 8;
  v273 = v127;
  v127(v125, v283);
  sub_100096AB4(v35);
  (*(v233 + 8))(v126, v261);
  Divider.init()();
  v233 = sub_10015C868();
  if (sub_100162EC4())
  {
    v128 = sub_10011E7A8();
  }

  else
  {
    v128 = 0;
  }

  v129 = v230;
  v130 = v262;
  v131 = sub_100162EC4();
  v132 = v282;
  v133 = v274;
  v134 = v223;
  if (v131)
  {
    sub_1001193FC(v129);

    v261 = *(v287 + 56);
    (v261)(v129, 0, 1, v132);
    v134(v130, v129, v132);
  }

  else
  {
    v135 = v287;
    v261 = *(v287 + 56);
    (v261)(v129, 1, 1, v282);
    static UTType.data.getter();
    if ((*(v135 + 48))(v129, 1, v132) != 1)
    {
      sub_100007710(v129, &qword_10020A0C0);
    }

    v132 = v282;
    v130 = v262;
  }

  v136 = v289;
  sub_100096978(v291, v289);
  v137 = swift_allocObject();
  sub_1000969E0(v136, &v133[v137]);
  v138 = v224;
  *v224 = v233;
  *(v138 + 8) = v128 & 1;
  v139 = v290;
  v134((v138 + *(v290 + 32)), v130, v132);
  v140 = (v138 + *(v139 + 36));
  *v140 = sub_100097568;
  v140[1] = v137;
  v141 = v228;
  sub_100096A44(v138, v228);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v262 = sub_100007888(&qword_10020A2E0, &qword_10020A2D0);
  View.keyboardShortcut(_:modifiers:)();
  v273(v125, v283);
  sub_100007710(v141, &qword_10020A2D0);
  v142 = sub_10015C990();
  if (sub_100162EC4())
  {
    v143 = sub_10011E94C();
  }

  else
  {
    v143 = 0;
  }

  v144 = v261;
  v145 = sub_100162EC4();
  v146 = v282;
  if (v145)
  {
    v147 = v236;
    sub_1001193FC(v236);

    v144(v147, 0, 1, v146);
    v148 = v235;
    v134(v235, v147, v146);
  }

  else
  {
    v149 = v287;
    v150 = v236;
    v144(v236, 1, 1, v282);
    v148 = v235;
    static UTType.data.getter();
    if ((*(v149 + 48))(v150, 1, v146) != 1)
    {
      sub_100007710(v150, &qword_10020A0C0);
    }
  }

  v151 = v289;
  sub_100096978(v291, v289);
  v152 = v274;
  v153 = swift_allocObject();
  sub_1000969E0(v151, &v152[v153]);
  v154 = v232;
  *v232 = v142;
  *(v154 + 8) = v143 & 1;
  v155 = v290;
  v134((v154 + *(v290 + 32)), v148, v146);
  v156 = (v154 + *(v155 + 36));
  *v156 = sub_100097568;
  v156[1] = v153;
  v157 = v234;
  sub_100096A44(v154, v234);
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  View.keyboardShortcut(_:modifiers:)();
  v273(v125, v283);
  sub_100007710(v157, &qword_10020A2D0);
  v158 = sub_10015CAB8();
  if (sub_100162EC4())
  {
    v159 = sub_10011F4C8();
  }

  else
  {
    v159 = 0;
  }

  v160 = v238;
  v161 = sub_100162EC4();
  v162 = v274;
  v163 = v261;
  if (v161)
  {
    v164 = v239;
    sub_1001193FC(v239);

    v163(v164, 0, 1, v146);
    v134(v160, v164, v146);
  }

  else
  {
    v165 = v287;
    v166 = v239;
    (v261)(v239, 1, 1, v146);
    static UTType.data.getter();
    if ((*(v165 + 48))(v166, 1, v146) != 1)
    {
      sub_100007710(v166, &qword_10020A0C0);
    }
  }

  v167 = v289;
  sub_100096978(v291, v289);
  v168 = swift_allocObject();
  sub_1000969E0(v167, &v162[v168]);
  v169 = v237;
  *v237 = v158;
  *(v169 + 8) = v159 & 1;
  v170 = v290;
  v134((v169 + *(v290 + 32)), v160, v146);
  v171 = (v169 + *(v170 + 36));
  *v171 = sub_100097568;
  v171[1] = v168;
  sub_100096A44(v169, v263);
  v172 = sub_10015CBE4();
  v173 = v146;
  if (sub_100162EC4())
  {
    v174 = sub_10011F66C();
  }

  else
  {
    v174 = 0;
  }

  if (sub_100162EC4())
  {
    v175 = v247;
    sub_1001193FC(v247);

    v163(v175, 0, 1, v173);
    v176 = v243;
    v134(v243, v175, v173);
    v177 = v173;
  }

  else
  {
    v178 = v287;
    v179 = v247;
    v163(v247, 1, 1, v173);
    v176 = v243;
    static UTType.data.getter();
    v180 = (*(v178 + 48))(v179, 1, v173);
    v177 = v173;
    if (v180 != 1)
    {
      sub_100007710(v179, &qword_10020A0C0);
    }
  }

  v181 = v289;
  sub_100096978(v291, v289);
  v182 = swift_allocObject();
  sub_1000969E0(v181, &v162[v182]);
  v183 = v240;
  *v240 = v172;
  *(v183 + 8) = v174 & 1;
  v184 = v290;
  v134((v183 + *(v290 + 32)), v176, v177);
  v185 = (v183 + *(v184 + 36));
  *v185 = sub_100097568;
  v185[1] = v182;
  sub_100096A44(v183, v264);
  v186 = sub_10015D664();
  if (sub_100162EC4())
  {
    v187 = sub_10011F324();

    if ((v187 & 1) != 0 && sub_100162EC4())
    {
      v188 = sub_10011C97C();
    }

    else
    {
      v188 = 0;
    }

    v177 = v282;
  }

  else
  {
    v188 = 0;
  }

  if (sub_100162EC4())
  {
    v189 = v250;
    sub_1001193FC(v250);

    v163(v189, 0, 1, v177);
    v190 = v249;
    v134(v249, v189, v177);
  }

  else
  {
    v191 = v287;
    v192 = v250;
    v163(v250, 1, 1, v177);
    v190 = v249;
    static UTType.data.getter();
    if ((*(v191 + 48))(v192, 1, v177) != 1)
    {
      sub_100007710(v192, &qword_10020A0C0);
    }
  }

  v193 = v289;
  sub_100096978(v291, v289);
  v194 = swift_allocObject();
  sub_1000969E0(v193, &v162[v194]);
  v195 = v251;
  *v251 = v186;
  *(v195 + 8) = v188 & 1;
  v196 = v290;
  v134((v195 + *(v290 + 32)), v190, v177);
  v197 = (v195 + *(v196 + 36));
  *v197 = sub_100097568;
  v197[1] = v194;
  v198 = v253;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_100005804(&qword_10020A2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  v200 = static EventModifiers.command.getter();
  *(inited + 32) = v200;
  v201 = static EventModifiers.shift.getter();
  *(inited + 40) = v201;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v200)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v201)
  {
    EventModifiers.init(rawValue:)();
  }

  v202 = v254;
  View.keyboardShortcut(_:modifiers:)();
  v273(v198, v283);
  sub_100007710(v195, &qword_10020A2D0);
  v293[0] = v248;
  v293[1] = v246;
  v293[2] = v245;
  v294 = v244;
  v295 = v242 & 1;
  v296 = v293;
  v203 = v267;
  sub_100096B74(v275, v267);
  v297 = v203;
  v204 = v255;
  v205 = *(v255 + 16);
  v206 = v268;
  v207 = v256;
  v205(v268, v276, v256);
  v299 = v206;
  v208 = v269;
  v205(v269, v277, v207);
  v300 = v208;
  v209 = v270;
  v205(v270, v278, v207);
  v301 = v209;
  v210 = v259;
  v211 = *(v259 + 16);
  v212 = v271;
  v213 = v260;
  v211(v271, v279, v260);
  v302 = v212;
  v214 = v272;
  v211(v272, v280, v213);
  v303 = v214;
  v215 = v263;
  v216 = v265;
  sub_100096B74(v263, v265);
  v304 = v216;
  v217 = v264;
  v218 = v266;
  sub_100096B74(v264, v266);
  v305 = v218;
  v219 = v258;
  v211(v258, v202, v213);
  v306 = v219;
  sub_10008D54C(&v296, v257);
  v220 = *(v210 + 8);
  v220(v202, v213);
  sub_100007710(v217, &qword_10020A2D0);
  sub_100007710(v215, &qword_10020A2D0);
  v220(v280, v213);
  v220(v279, v213);
  v221 = *(v204 + 8);
  v221(v278, v207);
  v221(v277, v207);
  v221(v276, v207);
  sub_100007710(v275, &qword_10020A2D0);
  v220(v219, v213);
  sub_100007710(v266, &qword_10020A2D0);
  sub_100007710(v265, &qword_10020A2D0);
  v220(v272, v213);
  v220(v271, v213);
  v221(v270, v207);
  v221(v269, v207);
  v221(v268, v207);
  sub_100007710(v267, &qword_10020A2D0);
}

uint64_t sub_100096878(uint64_t a1)
{
  result = sub_100162EC4();
  if (result)
  {
    sub_100122EC8(a1, 1);
  }

  return result;
}

uint64_t sub_100096920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011AD6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100096978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppCommands();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000969E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppCommands();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096AB4(uint64_t a1)
{
  v2 = type metadata accessor for MenuPlaceholderItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100096B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100096C2C()
{
  type metadata accessor for AppCommands();

  return sub_100094384();
}

BOOL sub_100096C9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100119C00();
  *a1 = result;
  return result;
}

uint64_t sub_100096CF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10011D40C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100096D4C@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolbarViewModel.FormFillingState();
  Description = v2[-1].Description;
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_100162EC4())
  {
    sub_10011A188(v5);

    v6 = sub_100115644();
    Description[1](v5, v2);

    v8 = v6 & 1;
  }

  else
  {

    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_100096EC8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for AppCommands();

  return sub_100096D4C(a1);
}

uint64_t sub_100096F3C(unsigned __int8 *a1)
{
  v2 = sub_100005804(&qword_1002071C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ToolbarViewModel.FormFillingState();
  __chkstk_darwin(&v5[-1].Description);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_100162EC4())
  {
    v9 = type metadata accessor for ToolbarViewModel.FormFillingState.ActivationSource();
    Description = v9[-1].Description;
    Description[13](v4, 0, v9);
    (Description[7])(v4, 0, 1, v9);
    sub_100115634(v8, v4, v7);
    sub_100119F60(v7);
  }

  else
  {
  }
}

uint64_t sub_10009716C()
{
  v1 = (type metadata accessor for AppCommands() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  sub_100005804(&qword_100209608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenWindowAction();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100097298(unsigned __int8 *a1)
{
  type metadata accessor for AppCommands();

  return sub_100096F3C(a1);
}

uint64_t sub_10009739C()
{
  v1 = (type metadata accessor for AppCommands() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  sub_100005804(&qword_100209608);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenWindowAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100097588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100006600(a3, v22 - v9, &unk_100206DF0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007710(v10, &unk_100206DF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for URL();

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

  type metadata accessor for URL();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_100097800@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  *&v7 = a3;
  sub_100005804(&qword_10020A4C0);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  sub_100005804(&qword_10020A4C8);
  sub_1000998FC();
  sub_100099950();
  j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  return result;
}

uint64_t sub_1000978E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1001450D4(v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (j__os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    j___os_log_impl(&dword_100000000, v4, v5, "NewScanDocumentChooser: No choosingContext", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_100097A94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = j___s7SwiftUI17EnvironmentValuesVMa();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_10020A4B8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100006600(v2, &v13 - v9, &qword_10020A4B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100099644(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
  os_log(_:dso:log:_:_:)();

  j___s7SwiftUI17EnvironmentValuesVACycfC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100097C64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = swift_getKeyPath();
  sub_100005804(&qword_10020A4B8);
  swift_storeEnumTagMultiPayload();
  *(a1 + *(type metadata accessor for DocumentScannerViewRepresentable(0) + 20)) = v3;

  v4 = static SafeAreaRegions.all.getter();
  v5 = static Edge.Set.all.getter();
  result = sub_100005804(&qword_10020A4F0);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  v7[8] = v5;
  return result;
}

uint64_t sub_100097D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for PresentationMode();
  v5[4] = swift_task_alloc();
  v5[5] = sub_100005804(&unk_10020A460);
  v5[6] = swift_task_alloc();
  type metadata accessor for DocumentScannerViewRepresentable(0);
  v5[7] = swift_task_alloc();
  sub_100005804(&unk_100206DF0);
  v5[8] = swift_task_alloc();
  sub_100005804(&qword_10020A4B0);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100097E78, 0, 0);
}

uint64_t sub_100097E78()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_100097588(0, 0, v1, &unk_10019F9D0, v4);
  v0[10] = v6;
  sub_100007710(v1, &unk_100206DF0);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = type metadata accessor for URL();
  v0[12] = v8;
  v9 = sub_100005804(&qword_100208148);
  *v7 = v0;
  v7[1] = sub_100098004;
  v10 = v0[9];

  return Task.value.getter(v10, v6, v8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_100098004()
{

  if (v0)
  {

    v1 = sub_1000981FC;
  }

  else
  {
    v1 = sub_100098128;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100098128()
{

  (*(*(v0[12] - 8) + 56))(v0[9], 0, 1);
  type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000982C8, v2, v1);
}

uint64_t sub_1000981FC()
{
  (*(*(v0[12] - 8) + 56))(v0[9], 1, 1);
  type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000982C8, v2, v1);
}

uint64_t sub_1000982C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];

  sub_1001780C8();

  sub_100099270(v3 + OBJC_IVAR____TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator_parent, v2);
  sub_100097A94(v1);
  sub_1000992D4(v2);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  PresentationMode.dismiss()();
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  sub_100007710(v1, &unk_10020A460);

  return _swift_task_switch(sub_1000983E8, 0, 0);
}

uint64_t sub_1000983E8()
{
  sub_100007710(*(v0 + 72), &qword_10020A4B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100098634(uint64_t a1)
{
  v2 = type metadata accessor for PresentationMode();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100005804(&unk_10020A460);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for DocumentScannerViewRepresentable(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  sub_1001780C8();

  sub_100099270(a1 + OBJC_IVAR____TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator_parent, v8);
  sub_100097A94(v5);
  sub_1000992D4(v8);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  PresentationMode.dismiss()();
  j___s7SwiftUI7BindingV12wrappedValuexvs();
  sub_100007710(v5, &unk_10020A460);
  sub_100007710(v11, &qword_10020A4B0);
}

id sub_100098A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentScannerViewRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100098AB4()
{
  result = type metadata accessor for DocumentScannerViewRepresentable(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100098B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_10020A3E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100098C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_10020A3E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100098D24()
{
  sub_100098DA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URLDocumentCreationContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100098DA8()
{
  if (!qword_10020A458)
  {
    sub_1000059D4(&unk_10020A460);
    v0 = j___s7SwiftUI11EnvironmentVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_10020A458);
    }
  }
}

id sub_100098E0C()
{
  v0 = [objc_allocWithZone(VNDocumentCameraViewController) init];
  sub_100005804(&qword_10020A4A0);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_100098E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099228(&qword_10020A4A8, type metadata accessor for DocumentScannerViewRepresentable);
  v5 = *(v4 + 16);

  return v5(a1, a2, v4);
}

uint64_t sub_100098F18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 - 8;
  __chkstk_darwin(a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099270(v2, v6);
  v7 = *(v2 + *(v4 + 28));
  v8 = type metadata accessor for DocumentScannerViewRepresentable.Coordinator(0);
  v9 = objc_allocWithZone(v8);
  sub_100099270(v6, &v9[OBJC_IVAR____TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator_parent]);
  *&v9[OBJC_IVAR____TtCV7PreviewP33_687298B9FF6548CEDD432C856C87EEB132DocumentScannerViewRepresentable11Coordinator_urlCreationContext] = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  v10 = objc_msgSendSuper2(&v12, "init");
  result = sub_1000992D4(v6);
  *a2 = v10;
  return result;
}

uint64_t sub_100099008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099228(&qword_10020A498, type metadata accessor for DocumentScannerViewRepresentable);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10009909C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099228(&qword_10020A498, type metadata accessor for DocumentScannerViewRepresentable);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100099130()
{
  sub_100099228(&qword_10020A498, type metadata accessor for DocumentScannerViewRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000991D0(uint64_t a1)
{
  result = sub_100099228(&qword_10020A498, type metadata accessor for DocumentScannerViewRepresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100099228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100099270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentScannerViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000992D4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentScannerViewRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100069290();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = v18;
  v14 = j___Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100099228(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100012F08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  j___Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1000995D4()
{

  return swift_deallocObject();
}

uint64_t sub_10009962C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099644(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&unk_10020A460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000996D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009971C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_100097D10(a1, v4, v5, v7, v6);
}

uint64_t sub_1000997DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10009981C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013194;

  return sub_100029F4C(a1, v4, v5, v6);
}

unint64_t sub_1000998FC()
{
  result = qword_10020A4D0;
  if (!qword_10020A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A4D0);
  }

  return result;
}

unint64_t sub_100099950()
{
  result = qword_10020A4D8;
  if (!qword_10020A4D8)
  {
    sub_1000059D4(&qword_10020A4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A4D8);
  }

  return result;
}

unint64_t sub_1000999E8()
{
  result = qword_10020A4E0;
  if (!qword_10020A4E0)
  {
    sub_1000059D4(&qword_10020A4E8);
    sub_1000998FC();
    sub_100099950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A4E0);
  }

  return result;
}

unint64_t sub_100099AB8()
{
  result = qword_10020A4F8;
  if (!qword_10020A4F8)
  {
    sub_1000059D4(&qword_10020A4F0);
    sub_100099228(&qword_10020A490, type metadata accessor for DocumentScannerViewRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020A4F8);
  }

  return result;
}

uint64_t sub_100099B80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100099BBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100099BE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100099C20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100099C6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100099D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a7;
  v8 = type metadata accessor for ToolbarItemPlacement();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  (*(v9 + 16))(v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v10);
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  return (*(v9 + 8))(a3, v8);
}

uint64_t sub_100099EA8(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  if (v4 == 2)
  {
    return *a2 == 2;
  }

  if (v4 == 3)
  {
    return *a2 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v6 = v3 ^ v2;
  v7 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100099F1C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a3;
  v49 = a4;
  v45 = a2;
  v53 = a6;
  v8 = type metadata accessor for ToolbarCustomizationOptions();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v50 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PreviewActionSpec(0);
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a5;
  v15 = type metadata accessor for ToolbarActionItem.ContentView();
  WitnessTable = swift_getWitnessTable();
  v43 = v15;
  v16 = type metadata accessor for ToolbarItem();
  v44 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = swift_getWitnessTable();
  v54 = v16;
  v55 = v19;
  v41 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v38 - v25;
  v27 = a1;
  sub_10015C110(v14);
  v28 = sub_1001647BC();
  v38 = v29;
  v39 = v28;
  (*(v12 + 8))(v14, v40);
  v30 = v45;
  if (v45 == 3)
  {
    v31 = v46;
    v32 = static ToolbarItemPlacement.bottomBar.getter();
  }

  else
  {
    v31 = v46;
    if (v45 == 2)
    {
      v32 = static ToolbarItemPlacement.primaryAction.getter();
    }

    else
    {
      v32 = static ToolbarItemPlacement.secondaryAction.getter();
    }
  }

  __chkstk_darwin(v32);
  *(&v38 - 6) = v47;
  *(&v38 - 5) = v27;
  *(&v38 - 16) = v30;
  *(&v38 - 30) = BYTE2(v30) & 1;
  v33 = v49;
  *(&v38 - 3) = v48;
  *(&v38 - 2) = v33;
  sub_100099D6C(v39, v38, v31, sub_10009D910, (&v38 - 8), v43, WitnessTable);
  sub_10009A564(v30);
  v34 = v50;
  sub_10009A6C8(v30);
  v35 = v41;
  CustomizableToolbarContent.defaultCustomization(_:options:)();
  (*(v51 + 8))(v34, v52);
  (*(v44 + 8))(v18, v16);
  v54 = v16;
  v55 = v35;
  swift_getOpaqueTypeConformance2();
  (*(v21 + 16))(v26, v23, OpaqueTypeMetadata2);
  v36 = *(v21 + 8);
  v36(v23, OpaqueTypeMetadata2);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v36)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_10009A418(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = BYTE2(a2);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1;
  v12 = v6 & 1;
  v13 = a3;
  v14 = a4;
  v8 = type metadata accessor for ToolbarActionItem.ContentView();
  WitnessTable = swift_getWitnessTable();
  sub_1000A2A58(&v11, v8, WitnessTable);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  sub_1000A2A58(&v11, v8, WitnessTable);
}

uint64_t sub_10009A564(char a1)
{
  v2 = sub_100005804(&qword_10020A098);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - v4);
  v6 = [objc_opt_self() standardUserDefaults];
  sub_100145670(v5);
  sub_100189EE4(&type metadata for Bool, &off_1001F9B10, &v10);

  (*(v3 + 8))(v5, v2);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    return 1;
  }

  if (a1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if ((a1 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10009A6C8(__int16 a1)
{
  v2 = sub_100005804(&qword_10020A098);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - v4);
  v6 = [objc_opt_self() standardUserDefaults];
  sub_100145670(v5);
  sub_100189EE4(&type metadata for Bool, &off_1001F9B10, &v9);

  (*(v3 + 8))(v5, v2);
  if (v9 != 2 && (v9 & 1) != 0 || (a1 & 0xFE) != 2 && (a1 & 0x100) != 0)
  {
    return static ToolbarCustomizationOptions.alwaysAvailable.getter();
  }

  type metadata accessor for ToolbarCustomizationOptions();
  v9 = _swiftEmptyArrayStorage;
  sub_10009E4E4(&qword_10020A600, &type metadata accessor for ToolbarCustomizationOptions);
  sub_100005804(&qword_10020A608);
  sub_100007888(&qword_10020A610, &qword_10020A608);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10009A8E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalizedStringResource();
  v34 = *(v14 - 8);
  v35 = v14;
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  v33 = sub_100005804(&qword_1002064B0);
  __chkstk_darwin(v33);
  v21 = &v33 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  v39 = a5;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;

  sub_100005804(&qword_1002064A0);
  sub_100007888(&qword_1002064A8, &qword_1002064A0);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = a2 ^ 1;
  v25 = &v21[*(v33 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_10009D8D8;
  v25[2] = v24;
  sub_10015C110(v13);
  sub_100164D10(2u, v19);
  (*(v36 + 8))(v13, v37);
  v27 = v34;
  v26 = v35;
  (*(v34 + 16))(v16, v19, v35);
  v28 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v30 = v29;
  LOBYTE(v16) = v31;
  sub_1000077A4();
  View.accessibilityHint(_:)();
  sub_100028DF8(v28, v30, v16 & 1);

  (*(v27 + 8))(v19, v26);
  return sub_100007710(v21, &qword_1002064B0);
}

uint64_t sub_10009AC94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1);
}

uint64_t sub_10009AD4C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  Label.init(title:icon:)();
}

uint64_t sub_10009AEB0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewActionSpec(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v8);
  sub_1001647EC(v4);
  (*(v6 + 8))(v8, v5);
  v9 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_10009B070@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewActionSpec(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v5);
  if (static Solarium.isEnabled.getter())
  {
    sub_1001648C8();
  }

  else
  {
    sub_100164878();
  }

  (*(v3 + 8))(v5, v2);
  v6 = Image.init(_internalSystemName:)();

  *a1 = v6;
  return result;
}

uint64_t sub_10009B1E4()
{
  sub_100005804(&unk_100209B50);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10009B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_100099F1C(*v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), a2);
}

uint64_t sub_10009B2C8()
{

  return swift_deallocObject();
}

uint64_t sub_10009B328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v5 = type metadata accessor for ToolbarCustomizationOptions();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PreviewActionSpec(0);
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  v12 = type metadata accessor for ToolbarToggleItem.ContentView();
  WitnessTable = swift_getWitnessTable();
  v43 = v12;
  v41 = WitnessTable;
  v14 = type metadata accessor for ToolbarItem();
  v44 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = swift_getWitnessTable();
  v49 = v14;
  v50 = v17;
  v40 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v35 - v23;
  sub_10015C110(v11);
  v25 = sub_1001647BC();
  v36 = v26;
  v37 = v25;
  (*(v9 + 8))(v11, v38);
  v27 = *(v2 + 8);
  if (v27 == 3)
  {
    v28 = v39;
    v29 = static ToolbarItemPlacement.bottomBar.getter();
  }

  else
  {
    v28 = v39;
    if (v27 == 2)
    {
      v29 = static ToolbarItemPlacement.primaryAction.getter();
    }

    else
    {
      v29 = static ToolbarItemPlacement.secondaryAction.getter();
    }
  }

  __chkstk_darwin(v29);
  v30 = v43;
  *(&v35 - 2) = v42;
  *(&v35 - 1) = v3;
  sub_100099D6C(v37, v36, v28, sub_10009E780, (&v35 - 4), v30, v41);
  sub_10009A564(v27);
  v31 = v45;
  sub_10009A6C8(v27);
  v32 = v40;
  CustomizableToolbarContent.defaultCustomization(_:options:)();
  (*(v46 + 8))(v31, v47);
  (*(v44 + 8))(v16, v14);
  v49 = v14;
  v50 = v32;
  swift_getOpaqueTypeConformance2();
  (*(v19 + 16))(v24, v21, OpaqueTypeMetadata2);
  v33 = *(v19 + 8);
  v33(v21, OpaqueTypeMetadata2);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v33)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_10009B808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v5 - 8);
  v28 = &v27 - v6;
  v7 = type metadata accessor for ToolbarToggleItem.ContentView();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  v14 = type metadata accessor for ToolbarToggleItem();

  v15 = sub_10009B1E4();
  v17 = v16;
  v18 = a1;
  v20 = v19;
  v21 = *(v18 + 33);
  v22 = v18 + *(v14 + 40);
  v23 = v28;
  sub_10009E788(v22, v28);
  sub_10009BA90(v13, v15, v17, v20 & 1, v21, v23, a2, v9);
  WitnessTable = swift_getWitnessTable();
  sub_1000A2A58(v9, v7, WitnessTable);
  v25 = *(v29 + 8);
  v25(v9, v7);
  sub_1000A2A58(v12, v7, WitnessTable);
  v25(v12, v7);
}

uint64_t sub_10009BA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a4;
  v33 = a5;
  v34 = a5;
  v13 = sub_100005804(&qword_10020A0C0);
  v32 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  *a8 = a1;
  v29 = a1;
  v16 = type metadata accessor for ToolbarToggleItem.ContentView();
  v17 = a6;
  sub_10009E788(a6, a8 + *(v16 + 36));
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = v31;
  *(v19 + 48) = v31;
  sub_10009E788(a6, v15);

  v21 = static MainActor.shared.getter();
  v22 = (*(v32 + 80) + 72) & ~*(v32 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = v29;
  v25 = v30;
  *(v23 + 24) = &protocol witness table for MainActor;
  *(v23 + 32) = v25;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  *(v23 + 56) = v20;
  *(v23 + 64) = v24;
  sub_10009E988(v15, v23 + v22);
  j___s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC();

  result = sub_100007710(v17, &qword_10020A0C0);
  v27 = v36;
  v28 = v37;
  *(a8 + 8) = v35;
  *(a8 + 16) = v27;
  *(a8 + 24) = v28;
  *(a8 + 25) = (v33 == 2) | v34 & 1;
  return result;
}

uint64_t sub_10009BD04()
{
  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  return v1;
}

uint64_t sub_10009BD5C()
{
  sub_100005804(&unk_100209B50);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10009BDB8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
}

uint64_t sub_10009BE94(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v25 = a7;
  v26 = a4;
  v27 = a5;
  v10 = sub_100005804(&qword_1002064C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for PreviewActionSpec(0);
  v23 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewTelemetryAction();
  Description = v16[-1].Description;
  __chkstk_darwin(v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v26;
  v30 = v27;
  v31 = a6 & 1;
  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  if (v19 != v28)
  {
    if (v19)
    {
      sub_10015C110(v15);
      sub_100164588(v12);
      (*(v23 + 8))(v15, v13);
      v20 = Description;
      if (Description[6](v12, 1, v16) == 1)
      {
        sub_100007710(v12, &qword_1002064C0);
      }

      else
      {
        v20[4](v18, v12, v16);
        type metadata accessor for PreviewTelemetryLogger();
        sub_100143D70(v18, v22);
        (v20[1])(v18, v16);
      }
    }

    v29 = v26;
    v30 = v27;
    v31 = a6 & 1;
    v28 = v19;
    j___s7SwiftUI7BindingV12wrappedValuexvs();
  }
}

uint64_t sub_10009C1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for PreviewActionSpec(0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalizedStringResource();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v30 - v10;
  v11 = sub_100005804(&qword_10020A850);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v37 = sub_100005804(&qword_10020A858);
  __chkstk_darwin(v37);
  v31 = &v30 - v14;
  sub_10009BD5C();
  v40 = *(a1 + 16);
  v41 = v2;
  sub_100005804(&qword_1002064A0);
  sub_100007888(&qword_1002064A8, &qword_1002064A0);
  Toggle.init(isOn:label:)();
  v15 = *(v2 + 25);
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v15 & 1) == 0;
  v18 = &v13[*(v11 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_10009EDA8;
  v18[2] = v17;
  sub_10015C110(v6);
  v19 = sub_10009BD04();
  v20 = v39;
  sub_100164D10(v19 & 1, v39);
  (*(v35 + 8))(v6, v36);
  v21 = v33;
  v22 = v34;
  (*(v33 + 16))(v32, v20, v34);
  v23 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v25 = v24;
  v27 = v26;
  sub_10009E664();
  v28 = v31;
  View.accessibilityHint(_:)();
  sub_100028DF8(v23, v25, v27 & 1);

  (*(v21 + 8))(v39, v22);
  sub_100007710(v13, &qword_10020A850);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityValue(_:)();

  return sub_100007710(v28, &qword_10020A858);
}

uint64_t sub_10009C5F8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  Label.init(title:icon:)();
}

uint64_t sub_10009C72C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewActionSpec(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v8);
  sub_1001647EC(v4);
  (*(v6 + 8))(v8, v5);
  v9 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_10009C8EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewActionSpec(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v5);
  if (static Solarium.isEnabled.getter())
  {
    sub_1001648C8();
  }

  else
  {
    sub_100164878();
  }

  (*(v3 + 8))(v5, v2);
  v6 = Image.init(_internalSystemName:)();

  *a1 = v6;
  return result;
}

uint64_t sub_10009CA68@<X0>(char *a1@<X0>, int a2@<W1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v40 = a3;
  v33 = a2;
  v44 = a5;
  v6 = type metadata accessor for ToolbarCustomizationOptions();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ToolbarItemPlacement();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for PreviewActionSpec(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100005804(&qword_10020A8A0);
  v36 = *(v32 - 8);
  __chkstk_darwin(v32);
  v18 = &v31 - v17;
  v37 = sub_100005804(&qword_10020A8A8);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v31 - v19;
  sub_10015C110(v16);
  sub_1001647BC();
  (*(v14 + 8))(v16, v13);
  v20 = v33;
  if (v33 == 3)
  {
    v21 = static ToolbarItemPlacement.bottomBar.getter();
  }

  else if (v33 == 2)
  {
    v21 = static ToolbarItemPlacement.primaryAction.getter();
  }

  else
  {
    v21 = static ToolbarItemPlacement.secondaryAction.getter();
  }

  v22 = __chkstk_darwin(v21);
  v23 = v40;
  *(&v31 - 4) = v39;
  *(&v31 - 3) = a1;
  *(&v31 - 8) = v20;
  *(&v31 - 1) = v23;
  v24 = v38;
  (*(v8 + 16))(v34, v12, v38, v22);
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  (*(v8 + 8))(v12, v24);
  sub_10009A564(v20);
  v25 = v41;
  sub_10009A6C8(v20);
  v26 = sub_100007888(&qword_10020A8B0, &qword_10020A8A0);
  v27 = v31;
  v28 = v32;
  CustomizableToolbarContent.defaultCustomization(_:options:)();
  (*(v42 + 8))(v25, v43);
  (*(v36 + 8))(v18, v28);
  v45 = v28;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v37;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v35 + 8))(v27, v29);
}

uint64_t sub_10009CF78@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = a1;
  return result;
}

uint64_t sub_10009D030@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarCustomizationOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarItemPlacement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  v31 = sub_100005804(&qword_10020A878);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = v25 - v13;
  v30 = sub_100005804(&qword_10020A880);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = v25 - v14;
  v25[1] = *v1;
  v15 = *(v1 + 16);

  v34 = v3;
  v35 = a1;
  v33 = v4;
  if (v15 == 3)
  {
    v16 = static ToolbarItemPlacement.bottomBar.getter();
  }

  else if (v15 == 2)
  {
    v16 = static ToolbarItemPlacement.primaryAction.getter();
  }

  else
  {
    v16 = static ToolbarItemPlacement.secondaryAction.getter();
  }

  v25[0] = v25;
  v17 = __chkstk_darwin(v16);
  v25[-2] = v1;
  (*(v7 + 16))(v9, v12, v6, v17);
  sub_100005804(&qword_10020A888);
  sub_100007888(&qword_10020A890, &qword_10020A888);
  v18 = v27;
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  (*(v7 + 8))(v12, v6);
  sub_10009A564(v15);
  v19 = v32;
  sub_10009A6C8(v15);
  v20 = sub_100007888(&qword_10020A898, &qword_10020A878);
  v21 = v26;
  v22 = v31;
  CustomizableToolbarContent.defaultCustomization(_:options:)();
  (*(v33 + 8))(v19, v34);
  (*(v29 + 8))(v18, v22);
  v36 = v22;
  v37 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v28 + 8))(v21, v23);
}

uint64_t sub_10009D4D4()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  ControlGroup.init<A, B>(content:label:)();
}

uint64_t sub_10009D604@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 24);

  *a2 = v4;
  return result;
}

uint64_t sub_10009D6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for ToolbarGroup();
  (*(v5 + 16))(v7, a1 + *(v8 + 28), v4);
  v9 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_10009D814@<X0>(_BYTE *a1@<X8>)
{
  result = j___s7SwiftUI17EnvironmentValuesV9isEnabledSbvg();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009D844@<X0>(_BYTE *a1@<X8>)
{
  result = j___s7SwiftUI17EnvironmentValuesV9isEnabledSbvg();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10009D910()
{
  if (*(v0 + 34))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_10009A418(*(v0 + 24), v1 | *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacementGroup(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 65283;
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = a1[1];
        if (!a1[1])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 16)) - 65283;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for ToolbarItemPlacementGroup(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10009DAB0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_10009DACC(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_10009DB44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000059D4(a2);
    a4();
    sub_10009E4E4(&qword_100207870, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10009DC24()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_10007D7A8();
    if (v1 <= 0x3F)
    {
      sub_10009DE78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10009DCE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005804(&qword_10020A0C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10009DDB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005804(&qword_10020A0C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}
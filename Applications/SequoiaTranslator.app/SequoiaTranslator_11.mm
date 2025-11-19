uint64_t sub_100134570(unint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for LanguageAwareEditor(0);
  v10 = *(v5 + v9[13]);
  sub_100005AD4(&unk_1003B2860);
  Binding.wrappedValue.getter();
  v11 = *(v5 + v9[9]);
  v12 = *(v5 + v9[12]);
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache.Condition();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2 & 1;
  *(v13 + 40) = *&a3;
  *(v13 + 48) = a4 & 1;
  *(v13 + 56) = v28;
  *(v13 + 64) = v29;
  *(v13 + 72) = v11;
  *(v13 + 80) = v12;
  *(v13 + 88) = 0;
  v14 = v11;
  if (sub_10013BF0C(v13))
  {
    sub_10013BF0C(v13);
    v16 = v15;
  }

  else
  {
    if (v10)
    {
      sub_100134764(a1, a2 & 1, a3, a4 & 1, a5, v12);
      v16 = v18;
      v20 = v19;
    }

    else
    {
      v21 = *&a1;
      v22 = 0.0;
      if (a2)
      {
        v21 = 0.0;
      }

      if ((a4 & 1) == 0)
      {
        v22 = *&a3;
      }

      [a5 systemLayoutSizeFittingSize:{v21, v22, *&a3, a1}];
      v17 = 0;
      if (v12 > v23)
      {
        v23 = v12;
      }

      v16 = *&v23;
      v20 = v24;
    }

    sub_10013BC34(v16, v20, v17 & 1, v13);
  }

  return v16;
}

double sub_100134764(unint64_t a1, char a2, uint64_t a3, char a4, id a5, double a6)
{
  v9 = a2 & 1;
  v10 = INFINITY;
  if (a2)
  {
    v11 = INFINITY;
  }

  else
  {
    v11 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v10 = *&a3;
  }

  [a5 systemLayoutSizeFittingSize:{v11, v10}];
  v13 = (a1 >> 52) & 0x7FF;
  if (result < *&a1)
  {
    v14 = *&a1;
  }

  else
  {
    v14 = result;
  }

  if (v13 == 2047)
  {
    v14 = result;
  }

  if (!v13)
  {
    v14 = result;
  }

  if (!v9)
  {
    result = v14;
  }

  if (result < a6)
  {
    return a6;
  }

  return result;
}

uint64_t sub_1001348A8(void *a1)
{
  v3 = type metadata accessor for LanguageAwareEditor(0);
  __chkstk_darwin(v3);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LanguageAwareTextView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = v1 + OBJC_IVAR____TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator_languageAwareEditor;
    v9 = *(v1 + OBJC_IVAR____TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator_languageAwareEditor + *(v3 + 56));
    v10 = a1;
    if (v9)
    {
      sub_10001AD18(v9);
      v9(v7);
      sub_10001ABE4(v9);
    }

    sub_1001354A0(v8, v5);
    v11 = [v7 text];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = v5[1];
    v17 = v5[2];
    v18 = v5[3];
    v19[2] = *v5;
    v19[3] = v16;
    v19[4] = v17;
    v19[5] = v18;
    v19[0] = v13;
    v19[1] = v15;

    sub_100005AD4(&unk_1003B2860);
    Binding.wrappedValue.setter();

    sub_10005D614(v5);
  }

  return result;
}

id sub_100134D28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareEditor.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100134D98()
{
  result = type metadata accessor for LanguageAwareEditor(319);
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

uint64_t sub_100134E5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100134F1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100134FC0()
{
  sub_1001351C4(319, &unk_1003B27D0, &qword_1003AA740, &unk_1002D42F0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_100135174();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale();
      if (v2 <= 0x3F)
      {
        sub_10000A2CC(319, &qword_1003B2990);
        if (v3 <= 0x3F)
        {
          sub_10000A2CC(319, qword_1003B2390);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UIReturnKeyType(319);
            if (v5 <= 0x3F)
            {
              sub_1001351C4(319, &qword_1003B29B0, &unk_1003B27F0, &unk_1002D4010, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                type metadata accessor for LanguageAwareTextViewSizeThatFitsCache();
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

void sub_100135174()
{
  if (!qword_1003B27E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B27E0);
    }
  }
}

void sub_1001351C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100135230@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001354A0(v2, v5);
  v6 = type metadata accessor for LanguageAwareEditor.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1001354A0(v5, v7 + OBJC_IVAR____TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator_languageAwareEditor);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_10005D614(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_100135328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100135574(&qword_1003B2878);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001353A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100135574(&qword_1003B2878);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100135428()
{
  sub_100135574(&qword_1003B2878);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001354A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageAwareEditor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135504(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135574(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LanguageAwareEditor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001355B8(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 != 10 || a3 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  type metadata accessor for LanguageAwareTextView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = v3 + OBJC_IVAR____TtCV17SequoiaTranslator19LanguageAwareEditor11Coordinator_languageAwareEditor;
    v8 = *(v7 + *(type metadata accessor for LanguageAwareEditor(0) + 60));
    if (v8)
    {
      v9 = a1;
      sub_10001AD18(v8);
      v8(v6);
      sub_10001ABE4(v8);
    }

    return 0;
  }

  return result;
}

char *sub_100135690()
{
  v1 = [objc_allocWithZone(type metadata accessor for LanguageAwareTextView()) init];
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightDelegate + 8] = *(v0 + *(type metadata accessor for LanguageAwareText() + 52) + 8);
  swift_unknownObjectWeakAssign();
  sub_100005AD4(&qword_1003B2A50);
  UIViewRepresentableContext.coordinator.getter();
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_languageAwareTextViewDelegate + 8] = &off_1003857E8;
  swift_unknownObjectWeakAssign();

  v2 = v1;
  [v2 setEditable:0];
  UIViewRepresentableContext.coordinator.getter();
  [v2 setDelegate:v4];

  return v2;
}

id sub_1001357A0(char *a1)
{
  v19 = a1;
  v18 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v18);
  v17[1] = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for LayoutDirection();
  v2 = *(v17[0] - 8);
  v3 = __chkstk_darwin(v17[0]);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005AD4(&qword_1003B2A50);
  UIViewRepresentableContext.coordinator.getter();
  v12 = v20;
  sub_100135A74(v20);

  UIViewRepresentableContext.environment.getter();
  EnvironmentValues.layoutDirection.getter();
  (*(v9 + 8))(v11, v8);
  v13 = v17[0];
  (*(v2 + 104))(v5, enum case for LayoutDirection.leftToRight(_:), v17[0]);
  static LayoutDirection.== infix(_:_:)();
  v14 = *(v2 + 8);
  v14(v5, v13);
  v14(v7, v13);
  v15 = v19;
  UIView.traitOverrides.getter();
  UIMutableTraits.layoutDirection.setter();
  UIView.traitOverrides.setter();
  sub_100135B9C(v15);
  return [v15 layoutIfNeeded];
}

uint64_t sub_100135A74(uint64_t a1)
{
  v3 = type metadata accessor for LanguageAwareText();
  v4 = *(v1 + v3[19]);
  v5 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_asrBehaviour);
  *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_asrBehaviour) = v4;
  v6 = v4;

  v7 = (v1 + v3[16]);
  v8 = *v7;
  v9 = v7[1];
  v10 = (a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_disambiguationAction);
  v11 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_disambiguationAction);
  *v10 = v8;
  v10[1] = v9;
  sub_10001AD18(v8);
  sub_10001ABE4(v11);
  v12 = (v1 + v3[17]);
  v13 = *v12;
  v14 = v12[1];
  v15 = (a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_defineWordAction);
  v16 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_defineWordAction);
  *v15 = v13;
  v15[1] = v14;
  sub_10001AD18(v13);
  sub_10001ABE4(v16);
  v17 = (v1 + v3[18]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_emptyTapGestureHandler);
  v21 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_emptyTapGestureHandler);
  *v20 = v18;
  v20[1] = v19;
  sub_10001AD18(v18);
  sub_10001ABE4(v21);
  v22 = (v1 + v3[21]);
  v23 = *v22;
  v24 = v22[1];
  v25 = (a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_toggleHighlightAction);
  v26 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_toggleHighlightAction);
  *v25 = v23;
  v25[1] = v24;
  sub_10001AD18(v23);

  return sub_10001ABE4(v26);
}

void sub_100135B9C(char *a1)
{
  v84 = a1;
  v2 = type metadata accessor for Locale();
  v82 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v77[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100005AD4(&qword_1003AFCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v81 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v80 = &v77[-v8];
  __chkstk_darwin(v7);
  v10 = &v77[-v9];
  v11 = sub_100005AD4(&qword_1003B2A58);
  __chkstk_darwin(v11);
  v13 = &v77[-v12];
  v83 = v1;
  v14 = *v1;
  if (*v1)
  {
    v15 = *v1;
  }

  else
  {
    v15 = [objc_allocWithZone(NSAttributedString) init];
  }

  v16 = type metadata accessor for LanguageAwareText();
  v17 = v16;
  v18 = v83;
  v19 = *(v83 + *(v16 + 32));
  if (v19 == 1)
  {
    v20 = *(v83 + *(v16 + 36));
    v21 = v14;
    v22 = sub_100198D20(v20);

    v15 = v22;
  }

  else
  {
    v23 = v14;
  }

  v24 = v84;
  [v84 setAttributedText:v15];

  [v24 setFont:*(v18 + v17[7])];
  v25 = *(v18 + v17[20]) & (v19 ^ 1u);
  if (v25 != [v24 isSelectable])
  {
    [v24 setSelectable:v25];
  }

  v26 = &v24[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey];
  v27 = *&v24[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey + 8];
  v29 = v83[1];
  v28 = v83[2];
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v28 || (*v26 != v29 || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_16:
    *v26 = v29;
    *(v26 + 1) = v28;

    sub_10013AB10();
  }

LABEL_17:
  v30 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  v31 = v17[6];
  v32 = *(v11 + 48);
  sub_1000E1D20(&v24[v30], v13);
  v33 = v83;
  sub_1000E1D20(v83 + v31, &v13[v32]);
  v34 = *(v82 + 48);
  if (v34(v13, 1, v2) == 1)
  {
    v35 = v34(&v13[v32], 1, v2);
    v36 = v84;
    if (v35 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  sub_1000E1D20(v13, v10);
  if (v34(&v13[v32], 1, v2) == 1)
  {
    (*(v82 + 8))(v10, v2);
    v36 = v84;
LABEL_22:
    sub_100009EBC(v13, &qword_1003B2A58);
LABEL_23:
    v13 = v80;
    sub_1000E1D20(v33 + v31, v80);
    v37 = v81;
    sub_1000E1D20(&v36[v30], v81);
    swift_beginAccess();
    sub_100135504(v13, &v36[v30]);
    swift_endAccess();
    sub_100139B84(v37);
    sub_100009EBC(v37, &qword_1003AFCE0);
LABEL_24:
    sub_100009EBC(v13, &qword_1003AFCE0);
    goto LABEL_25;
  }

  v46 = v2;
  v47 = v82;
  v48 = v79;
  (*(v82 + 32))(v79, &v13[v32], v46);
  sub_100139614(&unk_1003B06F0, &type metadata accessor for Locale);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v47 + 8);
  v49(v48, v46);
  v49(v10, v46);
  sub_100009EBC(v13, &qword_1003AFCE0);
  v36 = v84;
  if ((v78 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_25:
  v38 = *(v33 + v17[9]);
  if (!v38)
  {
    goto LABEL_34;
  }

  v39 = v36;
  v40 = OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderColor;
  swift_beginAccess();
  v41 = *&v39[v40];
  if (!v41)
  {
    v50 = v38;
    v45 = v84;
    goto LABEL_32;
  }

  sub_10000A2CC(0, &qword_1003B2990);
  v42 = v38;
  v43 = v41;
  v44 = static NSObject.== infix(_:_:)();

  if ((v44 & 1) == 0)
  {
    v45 = v84;
    v41 = *&v84[v40];
LABEL_32:
    *&v45[v40] = v38;
    v51 = v38;

    PlaceholderTextView.updatePlaceholderProperties()();
  }

  v36 = v84;
LABEL_34:
  v52 = *&v36[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor];
  v53 = *(v33 + v17[14]);
  if (!v52)
  {
    if (!v53)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!v53 || (sub_10000A2CC(0, &qword_1003B2990), v54 = v53, v55 = v52, v56 = static NSObject.== infix(_:_:)(), v55, v54, (v56 & 1) == 0))
  {
LABEL_39:
    v57 = v53;
    sub_1001107E0(v53);
  }

LABEL_40:
  v58 = *(v33 + v17[15]);
  if (v36[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode] != v58)
  {
    v36[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode] = v58;
    sub_10010EBC4();
  }

  v59 = v33 + v17[12];
  if ((*(v59 + 16) & 1) != 0 || (v60 = *v59, v61 = *(v59 + 8), v62.location = *v59, v62.length = v61, (v63 = HighlightTextView.convertToTextRange(_:)(v62)) == 0))
  {
    [v36 setSelectedTextRange:0];
    v72 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges;
    swift_beginAccess();
    v73 = *&v36[v72];
    if (!(v73 >> 62))
    {
      if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v64 = v63;
    v82 = v60;
    v65 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges;
    swift_beginAccess();
    v66 = *&v36[v65];
    v81 = v61;
    v36 = (v66 & 0xFFFFFFFFFFFFFF8);
    if (v66 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = 0;
    while (1)
    {
      if (v67 == v68)
      {

        v85.value.length = v81;
        v85.value.location = v82;
        v85.is_nil = 0;
        v36 = v84;
        HighlightTextView.setHighlights(toRange:)(v85);

        goto LABEL_59;
      }

      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v69 = *(v66 + 8 * v68 + 32);
      }

      v70 = v69;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      sub_10000A2CC(0, &qword_1003B2A60);
      v71 = static NSObject.== infix(_:_:)();

      ++v68;
      if (v71)
      {

        v36 = v84;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_57:
    HighlightTextView.removeHighlights()();
  }

LABEL_59:
  v74 = sub_1001366E8();
  if (v74 != v36[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_hasTapGestureRecognizer])
  {
    v36[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_hasTapGestureRecognizer] = v74;
    if (v74)
    {
      v75 = &selRef_addGestureRecognizer_;
    }

    else
    {
      v75 = &selRef_removeGestureRecognizer_;
    }

    v76 = sub_100139F20();
    [v36 *v75];
  }

  sub_10013B038();
}

uint64_t sub_100136480(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v6 = v5;
  v9 = type metadata accessor for LanguageAwareText();
  v10 = *(v6 + v9[11]);
  if (*v6)
  {
    v11 = [*v6 string];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *(v6 + v9[7]);
  v16 = *(v6 + v9[10]);
  type metadata accessor for LanguageAwareTextViewSizeThatFitsCache.Condition();
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2 & 1;
  *(v17 + 40) = *&a3;
  *(v17 + 48) = a4 & 1;
  *(v17 + 56) = v12;
  *(v17 + 64) = v14;
  *(v17 + 72) = v15;
  *(v17 + 80) = v16;
  *(v17 + 88) = 0;
  v18 = v15;
  sub_100005AD4(&qword_1003B2910);
  LazyState.wrappedValue.getter();
  v19 = sub_10013BF0C(v17);

  if (v19)
  {
    LazyState.wrappedValue.getter();
    sub_10013BF0C(v17);
    v21 = v20;
  }

  else
  {
    if (v10)
    {
      v21 = sub_100134760(a1, v16);
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v26 = *&a1;
      v27 = 0.0;
      if (a2)
      {
        v26 = 0.0;
      }

      if ((a4 & 1) == 0)
      {
        v27 = *&a3;
      }

      [a5 systemLayoutSizeFittingSize:{v26, v27, a5}];
      v25 = 0;
      if (v16 > v28)
      {
        v28 = v16;
      }

      v21 = *&v28;
      v23 = v29;
    }

    LazyState.wrappedValue.getter();
    sub_10013BC34(v21, v23, v25 & 1, v17);
  }

  return v21;
}

BOOL sub_1001366E8()
{
  v1 = type metadata accessor for LanguageAwareText();
  if (*(v0 + *(v1 + 76)))
  {
    return 1;
  }

  if (!*(v0 + *(v1 + 72)))
  {
    return 0;
  }

  if (!*v0)
  {
    return 1;
  }

  v3 = [*v0 string];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 == 0;
}

uint64_t sub_100136830(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100005AD4(&unk_1003B28D0);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = *(a1 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_toggleHighlightAction);
  if (v10)
  {
    v11 = type metadata accessor for DisambiguationLinkInfo();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a2, v11);
    (*(v12 + 56))(v9, 0, 1, v11);

    v10(a3 & 1, v9);
    sub_10001ABE4(v10);
    return sub_100009EBC(v9, &unk_1003B28D0);
  }

  return result;
}

void sub_1001369BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v11, a5);

  swift_unknownObjectRelease();
}

void sub_100136A5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_asrBehaviour);
  if (v6)
  {
    v7 = v6;
    if (sub_100012674(a2))
    {
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000078E8(v8, qword_1003D28C0);
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v9, "Successfully handled gesture recognizer with ASRAlternativesBehaviour object", v10, 2u);
      }

LABEL_21:

      return;
    }

    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D28C0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tap on text view wasn't handled by ASRAlternativesBehaviour object", v14, 2u);
    }
  }

  v15 = *(v3 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_emptyTapGestureHandler);
  if (!v15)
  {
    if (qword_1003A9290 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D28C0);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "There's no handler for emptyTapGestureHandler, so not doing anything with tap gesture recognizer", v18, 2u);
    }

    goto LABEL_21;
  }

  v15(a1, a2);

  sub_10001ABE4(v15);
}

id sub_100136DE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareText.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100136EE0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for LanguageAwareText.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100136F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100139614(&qword_1003B2A48, type metadata accessor for LanguageAwareText);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100136FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100139614(&qword_1003B2A48, type metadata accessor for LanguageAwareText);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100137074()
{
  sub_100139614(&qword_1003B2A48, type metadata accessor for LanguageAwareText);
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_1001370CC(void *a1, void *a2)
{
  v120 = a1;
  v3 = sub_100005AD4(&unk_1003BBDE0);
  __chkstk_darwin(v3 - 8);
  v111 = &v109 - v4;
  v5 = type metadata accessor for UUID();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v114 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&unk_1003B28D0);
  __chkstk_darwin(v7 - 8);
  v118 = &v109 - v8;
  v9 = type metadata accessor for DisambiguationLinkInfo();
  v119 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v113 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v109 - v13;
  __chkstk_darwin(v12);
  v117 = &v109 - v14;
  v15 = type metadata accessor for String.Encoding();
  v122 = *(v15 - 8);
  v123 = v15;
  __chkstk_darwin(v15);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UITextItem.Content();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v109 - v23;
  v124 = a2;
  UITextItem.content.getter();
  v25 = *(v19 + 88);
  v26 = v25(v24, v18);
  v27 = enum case for UITextItem.Content.tag(_:);
  if (v26 != enum case for UITextItem.Content.tag(_:))
  {
    (*(v19 + 8))(v24, v18);
    goto LABEL_7;
  }

  v110 = v9;
  (*(v19 + 96))(v24, v18);
  type metadata accessor for DisambiguationResultModel();
  v28._countAndFlagsBits = static DisambiguationResultModel.dictionaryItemKey.getter();
  v29 = String.hasPrefix(_:)(v28);

  if (!v29)
  {

    v9 = v110;
LABEL_7:
    UITextItem.content.getter();
    if (v25(v22, v18) == v27)
    {
      (*(v19 + 96))(v22, v18);
      static String.Encoding.utf8.getter();
      v35 = String.data(using:allowLossyConversion:)();
      v37 = v36;

      (*(v122 + 8))(v17, v123);
      if (v37 >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100139614(&unk_1003B28E0, &type metadata accessor for DisambiguationLinkInfo);
        v38 = v118;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v65 = v119;
        (*(v119 + 56))(v38, 0, 1, v9);
        v66 = v117;
        (*(v65 + 32))(v117, v38, v9);
        v67 = *(v121 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_disambiguationAction);
        if (!v67 || (, v68 = v114, DisambiguationLinkInfo.sentenceUUID.getter(), v69 = DisambiguationLinkInfo.linkIndex.getter(), v70 = v67(v68, v69), sub_10001ABE4(v67), (*(v115 + 8))(v68, v116), !v70))
        {
          if (qword_1003A9238 != -1)
          {
            swift_once();
          }

          v90 = type metadata accessor for Logger();
          sub_1000078E8(v90, qword_1003D27B8);
          v91 = v113;
          (*(v65 + 16))(v113, v66, v9);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v123 = v37;
            v96 = v65;
            v97 = v95;
            v125[0] = v95;
            *v94 = 136446210;
            sub_100139614(&qword_1003B28F0, &type metadata accessor for DisambiguationLinkInfo);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v35;
            v100 = v99;
            v101 = *(v96 + 8);
            v101(v91, v9);
            v102 = sub_10028D78C(v98, v100, v125);

            *(v94 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v92, v93, "Client didn't return a menu from the disambiguationAction block; won't show menu for link with info %{public}s", v94, 0xCu);
            sub_100008664(v97);

            sub_100112CD4(v124, v123);

            v101(v66, v9);
          }

          else
          {
            sub_100112CD4(v35, v37);

            v103 = *(v65 + 8);
            v103(v91, v9);
            v103(v66, v9);
          }

          return 0;
        }

        if (qword_1003A9238 != -1)
        {
          swift_once();
        }

        v124 = v35;
        v71 = type metadata accessor for Logger();
        sub_1000078E8(v71, qword_1003D27B8);
        v72 = v112;
        (*(v65 + 16))(v112, v66, v9);
        v73 = v70;
        v74 = Logger.logObject.getter();
        v75 = v9;
        v76 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v74, v76))
        {
          v123 = v37;
          v77 = v75;
          v78 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v125[0] = v122;
          *v78 = 134349314;
          v79 = [v73 children];
          sub_10000A2CC(0, &unk_1003B2900);
          v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v80 >> 62)
          {
            v81 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v78 + 4) = v81;

          *(v78 + 12) = 2082;
          sub_100139614(&qword_1003B28F0, &type metadata accessor for DisambiguationLinkInfo);
          v82 = v112;
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          v85 = v84;
          v86 = *(v119 + 8);
          v86(v82, v77);
          v87 = sub_10028D78C(v83, v85, v125);

          *(v78 + 14) = v87;
          v88 = v76;
          v89 = v77;
          _os_log_impl(&_mh_execute_header, v74, v88, "Presenting menu with %{public}ld section(s) from link: %{public}s", v78, 0x16u);
          sub_100008664(v122);

          v37 = v123;
        }

        else
        {

          v86 = *(v65 + 8);
          v86(v72, v75);
          v89 = v75;
        }

        sub_10000A2CC(0, &qword_1003B28F8);
        v104 = enum case for UITextItemMenuConfiguration.Preview.default(_:);
        v105 = type metadata accessor for UITextItemMenuConfiguration.Preview();
        v106 = *(v105 - 8);
        v107 = v111;
        (*(v106 + 104))(v111, v104, v105);
        (*(v106 + 56))(v107, 0, 1, v105);
        v108 = UITextItemMenuConfiguration.init(preview:menu:)();
        sub_100112CD4(v124, v37);
        v86(v117, v89);
        return v108;
      }
    }

    else
    {
      (*(v19 + 8))(v22, v18);
    }

    if (qword_1003A9238 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000078E8(v39, qword_1003D27B8);
    v40 = v124;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to decode link info from textItemRequest %{public}@; won't present menu", v43, 0xCu);
      sub_100009EBC(v44, &unk_1003AECA0);
    }

    return 0;
  }

  v30 = [v124 range];
  v32 = v31;
  if (v30 == NSNotFound.getter())
  {

    v33 = 0;
    v34 = 0;
LABEL_18:
    if (qword_1003A9230 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000078E8(v50, qword_1003D27A0);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    v53 = os_log_type_enabled(v51, v52);
    v124 = v33;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v54 = 136643075;
      if (v34)
      {
        v55 = v33;
      }

      else
      {
        v55 = 0x6E776F6E6B6E75;
      }

      if (v34)
      {
        v56 = v34;
      }

      else
      {
        v56 = 0xE700000000000000;
      }

      v57 = sub_10028D78C(v55, v56, v125);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2082;
      v126.location = v30;
      v58 = v32;
      v126.length = v32;
      v59 = NSStringFromRange(v126);
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_10028D78C(v60, v62, v125);

      *(v54 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v51, v52, "Presenting dictionary from word: %{sensitive}s; range: %{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v58 = v32;
    }

    v64 = *(v121 + OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_defineWordAction);
    if (v64)
    {

      v64(v120, v30, v58, v124, v34);
      sub_10001ABE4(v64);
    }

    return 0;
  }

  result = [v120 text];
  if (result)
  {
    v47 = result;

    v48 = [v47 substringWithRange:{v30, v32}];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v49;

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_10013801C(void *a1, void *a2)
{
  v43 = a2;
  v3 = sub_100005AD4(&unk_1003B28D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for DisambiguationLinkInfo();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UITextItem.Content();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  UITextItem.content.getter();
  if ((*(v16 + 88))(v18, v15) == enum case for UITextItem.Content.tag(_:))
  {
    (*(v16 + 96))(v18, v15);
    type metadata accessor for DisambiguationResultModel();
    v19._countAndFlagsBits = static DisambiguationResultModel.dictionaryItemKey.getter();
    v20 = String.hasPrefix(_:)(v19);

    if (v20)
    {
    }

    else
    {
      static String.Encoding.utf8.getter();
      v21 = String.data(using:allowLossyConversion:)();
      v23 = v22;

      (*(v12 + 8))(v14, v11);
      if (v23 >> 60 == 15)
      {
        if (qword_1003A9238 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_1000078E8(v25, qword_1003D27B8);
        v26 = v47;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to decode link info from textItemRequest %{public}@; won't display extra highlight", v29, 0xCu);
          sub_100009EBC(v30, &unk_1003AECA0);
        }
      }

      else
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100139614(&unk_1003B28E0, &type metadata accessor for DisambiguationLinkInfo);
        v24 = v46;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v47 = v23;
        v32 = v45;
        (*(v45 + 56))(v5, 0, 1, v24);
        v33 = *(v32 + 32);
        v34 = v44;
        v33(v44, v5, v24);
        (*(v32 + 16))(v9, v34, v24);
        v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
        v36 = swift_allocObject();
        v37 = v21;
        v38 = v42;
        *(v36 + 16) = v42;
        v33((v36 + v35), v9, v24);
        aBlock[4] = sub_100138EA0;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100096948;
        aBlock[3] = &unk_100385870;
        v39 = _Block_copy(aBlock);
        v40 = v38;

        [v43 addAnimations:v39];
        sub_100112CD4(v37, v47);
        _Block_release(v39);
        (*(v32 + 8))(v44, v24);
      }
    }
  }

  else
  {
    (*(v16 + 8))(v18, v15);
  }
}

void sub_100138698(void *a1, void *a2)
{
  v45 = a2;
  v3 = sub_100005AD4(&unk_1003B28D0);
  v4 = __chkstk_darwin(v3 - 8);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for DisambiguationLinkInfo();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v44 - v12;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UITextItem.Content();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  UITextItem.content.getter();
  if ((*(v18 + 88))(v20, v17) == enum case for UITextItem.Content.tag(_:))
  {
    (*(v18 + 96))(v20, v17);
    type metadata accessor for DisambiguationResultModel();
    v21._countAndFlagsBits = static DisambiguationResultModel.dictionaryItemKey.getter();
    v22 = String.hasPrefix(_:)(v21);

    if (v22)
    {
    }

    else
    {
      static String.Encoding.utf8.getter();
      v23 = String.data(using:allowLossyConversion:)();
      v25 = v24;

      (*(v14 + 8))(v16, v13);
      if (v25 >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100139614(&unk_1003B28E0, &type metadata accessor for DisambiguationLinkInfo);
        v26 = v49;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v47 = v25;
        v36 = v48;
        (*(v48 + 56))(v7, 0, 1, v26);
        v37 = *(v36 + 32);
        v46 = v23;
        v38 = v44;
        v37(v44, v7, v26);
        (*(v36 + 16))(v11, v38, v26);
        v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v40 = swift_allocObject();
        v41 = v50;
        *(v40 + 16) = v50;
        v37((v40 + v39), v11, v26);
        aBlock[4] = sub_100138DBC;
        aBlock[5] = v40;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100096948;
        aBlock[3] = &unk_100385820;
        v42 = _Block_copy(aBlock);
        v43 = v41;

        [v45 addAnimations:v42];
        sub_100112CD4(v46, v47);
        _Block_release(v42);
        (*(v36 + 8))(v38, v26);
        return;
      }

      if (qword_1003A9238 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000078E8(v27, qword_1003D27B8);
      v28 = v46;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138543362;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to decode link info from textItemRequest %{public}@; won't display extra highlight", v31, 0xCu);
        sub_100009EBC(v32, &unk_1003AECA0);
      }
    }
  }

  else
  {
    (*(v18 + 8))(v20, v17);
  }

  v34 = *&v50[OBJC_IVAR____TtCV17SequoiaTranslator17LanguageAwareText11Coordinator_toggleHighlightAction];
  if (v34)
  {
    v35 = v47;
    (*(v48 + 56))(v47, 1, 1, v49);

    v34(0, v35);
    sub_10001ABE4(v34);
    sub_100009EBC(v35, &unk_1003B28D0);
  }
}

uint64_t sub_100138DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100138DDC()
{
  v1 = type metadata accessor for DisambiguationLinkInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100138F24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005AD4(&qword_1003AFCE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100005AD4(&qword_1003B2910);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[22];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100139078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100005AD4(&qword_1003AFCE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_100005AD4(&qword_1003B2910);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[22];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for LanguageAwareText()
{
  result = qword_1003B2970;
  if (!qword_1003B2970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100139204()
{
  sub_100139520(319, &qword_1003B2980, &qword_1003AC720);
  if (v0 <= 0x3F)
  {
    sub_100135174();
    if (v1 <= 0x3F)
    {
      sub_1001394BC(319, &qword_1003B3410, &type metadata accessor for Locale, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10000A2CC(319, qword_1003B2390);
        if (v3 <= 0x3F)
        {
          sub_100139520(319, &qword_1003B2988, &qword_1003B2990);
          if (v4 <= 0x3F)
          {
            sub_1001394BC(319, &qword_1003B2998, type metadata accessor for _NSRange, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100139578(319, &qword_1003B29A0, &qword_1003B29A8);
              if (v6 <= 0x3F)
              {
                sub_100139578(319, &qword_1003B29B0, &unk_1003B27F0);
                if (v7 <= 0x3F)
                {
                  sub_1001394BC(319, &qword_1003B29C0, type metadata accessor for ASRAlternativesBehaviour, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1001394BC(319, &unk_1003B29C8, type metadata accessor for LanguageAwareTextViewSizeThatFitsCache, &type metadata accessor for LazyState);
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

void sub_1001394BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100139520(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_10000A2CC(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100139578(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_100005EA8(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100139614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001396DC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B2AD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = [v0 traitCollection];
  UITraitCollection.typesettingLanguage.getter();

  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_100009EBC(v4, &qword_1003B2AD0);
  }

  v9 = Locale.Language.maximalIdentifier.getter();
  v11 = v10;
  (*(v7 + 8))(v4, v6);
  v12 = &v1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_lastAppliedAXLanguage];
  v13 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_lastAppliedAXLanguage + 8];
  if (!v13 || (*v12 == v9 ? (v14 = v13 == v11) : (v14 = 0), !v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10013B038();
    *v12 = v9;
    v12[1] = v11;
  }
}

id sub_100139B84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_100005AD4(&qword_1003AFCE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  sub_1000E1D20(a1, &v29 - v14);
  v16 = *(v5 + 48);
  if (v16(v15, 1, v4) == 1)
  {
    sub_100009EBC(v15, &qword_1003AFCE0);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = Locale.identifier.getter();
    v18 = v19;
    (*(v5 + 8))(v15, v4);
  }

  v20 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  result = (v16)(&v2[v20], 1, v4);
  if (result)
  {
    if (!v18)
    {
      return result;
    }

    goto LABEL_6;
  }

  v30 = v17;
  (*(v5 + 16))(v9, &v2[v20], v4);
  v29 = Locale.identifier.getter();
  v24 = v23;
  result = (*(v5 + 8))(v9, v4);
  if (!v18)
  {
    if (!v24)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v24)
  {
LABEL_6:

LABEL_7:
    [v2 reloadInputViews];
    sub_10013AB10();
    sub_1000E1D20(&v2[v20], v13);
    if (v16(v13, 1, v4) == 1)
    {
      sub_100009EBC(v13, &qword_1003AFCE0);
      v22 = 4;
    }

    else
    {
      v27 = v31;
      (*(v5 + 32))(v31, v13, v4);
      v28 = Locale.isRTL()();
      (*(v5 + 8))(v27, v4);
      if (v28)
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }
    }

    return [v2 setTextAlignment:v22];
  }

  if (v30 == v29 && v18 == v24)
  {
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_100139F20()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"textViewTapped:"];
    [v4 setNumberOfTapsRequired:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100139FB8()
{
  v1 = &v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_hasTapGestureRecognizer] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_languageAwareTextViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_lastAppliedAXLanguage];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = &v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_inputModeBeforeReloadWithoutLocaleChange] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer] = 0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LanguageAwareTextView();
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 quaternaryLabelColor];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderColor;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  v12 = v9;

  PlaceholderTextView.updatePlaceholderProperties()();
  v13 = [v7 clearColor];
  [v8 setBackgroundColor:v13];

  [v8 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v14 = v8;
  v15 = [v14 textContainer];
  [v15 setLineFragmentPadding:0.0];

  [v14 setAlwaysBounceVertical:0];
  [v14 setShowsVerticalScrollIndicator:0];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setScrollEnabled:0];

  [v14 setForceDisableDictation:1];
  return v14;
}

void *sub_10013A330()
{
  v1 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  sub_1000E1D20(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100009EBC(v3, &qword_1003AFCE0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v10 = *(v5 + 32);
    v10(v7, v3, v4);
    sub_100005AD4(qword_1003B5180);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002D3160;
    v10((v12 + v11), v7, v4);
    return v12;
  }
}

id sub_10013A558()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_inputModeBeforeReloadWithoutLocaleChange];
  v10 = v9;
  if (!v9)
  {
    v11 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
    swift_beginAccess();
    sub_1000E1D20(&v1[v11], v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100009EBC(v4, &qword_1003AFCE0);
      v12 = type metadata accessor for LanguageAwareTextView();
      v26.receiver = v1;
      v26.super_class = v12;
      v10 = objc_msgSendSuper2(&v26, "textInputMode");
      goto LABEL_12;
    }

    (*(v6 + 32))(v8, v4, v5);
    v13 = objc_opt_self();
    Locale.identifier.getter();
    v14 = String._bridgeToObjectiveC()();

    Locale.identifier.getter();
    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10013A900;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013A974;
    aBlock[3] = &unk_100385898;
    v16 = _Block_copy(aBlock);
    v17 = [v13 _inputModesForLocale:v14 language:v15 modeFetcher:v16];
    _Block_release(v16);

    if (v17)
    {
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v18)
      {
        if (*(v18 + 16))
        {
          sub_10000A37C(v18 + 32, aBlock);

          if (swift_dynamicCast())
          {
            v19 = String._bridgeToObjectiveC()();

            v10 = [objc_opt_self() keyboardInputModeWithIdentifier:v19];

LABEL_11:
            (*(v6 + 8))(v8, v5);
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }

    v20 = type metadata accessor for LanguageAwareTextView();
    v24.receiver = v1;
    v24.super_class = v20;
    v10 = objc_msgSendSuper2(&v24, "textInputMode");
    goto LABEL_11;
  }

LABEL_12:
  v21 = v9;
  return v10;
}

uint64_t sub_10013A900(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = TIGetDefaultInputModesForLanguage();

  if (!v3)
  {
    return 0;
  }

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

Class sub_10013A974(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v2(v3, v5);

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

void sub_10013AB10()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey);
    v10 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey + 8);
  }

  else
  {
    v10 = 0xEB00000000455059;
    v9 = 0x545F4F545F504154;
  }

  v11 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  swift_beginAccess();
  sub_1000E1D20(v1 + v11, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {

    sub_100009EBC(v8, &qword_1003AFCE0);
    v12 = [objc_opt_self() mainBundle];
    v27._object = 0xE000000000000000;
    v13._countAndFlagsBits = v9;
    v13._object = v10;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v27);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);

    sub_100009EBC(v8, &qword_1003AFCE0);
    v18 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19._object = 0xEB00000000656C62;
    v20._countAndFlagsBits = v9;
    v20._object = v10;
    v21 = Locale.ltLocalizedAppString(_:table:bundle:)(v20, v19, v18);
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;

    (*(v3 + 8))(v5, v2);
  }

  v22 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholder);
  swift_beginAccess();
  v23 = v22[1];
  if (v23 && (*v22 == countAndFlagsBits && v23 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {
    *v22 = countAndFlagsBits;
    v22[1] = object;

    v24 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator19PlaceholderTextView_placeholderTextView);

    v25 = String._bridgeToObjectiveC()();

    [v24 setText:v25];
  }
}

uint64_t sub_10013AE9C(void *a1)
{
  v2 = v1;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2890);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tap gesture recognizer for ASR Alts or focusing fired, informing delegate", v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100136A5C(v2, a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10013B038()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B2AD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 traitCollection];
  UITraitCollection.typesettingLanguage.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009EBC(v4, &qword_1003B2AD0);
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D2890);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_10013B81C();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Locale.Language.maximalIdentifier.getter();
    v36 = &type metadata for String;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    sub_10005128C(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v15;
    sub_100291800(v34, UIAccessibilitySpeechAttributeLanguage, isUniquelyReferenced_nonNull_native);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v1 setTypingAttributes:isa];

    v20 = [v1 markedTextRange];
    if (v20)
    {

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v21 = [v1 selectedRange];
      v31 = v22;
      v32 = v21;
      v23 = [v1 attributedText];
      if (!v23)
      {
        v23 = [objc_allocWithZone(NSAttributedString) init];
      }

      v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];

      sub_100005AD4(&unk_1003BBD30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002D3160;
      *(inited + 32) = UIAccessibilitySpeechAttributeLanguage;
      v25 = UIAccessibilitySpeechAttributeLanguage;
      v26 = Locale.Language.maximalIdentifier.getter();
      *(inited + 64) = &type metadata for String;
      *(inited + 40) = v26;
      *(inited + 48) = v27;
      sub_100292588(inited);
      swift_setDeallocating();
      sub_100009EBC(inited + 32, &qword_1003B3490);
      v28 = Dictionary._bridgeToObjectiveC()().super.isa;

      v29 = v30;
      [v29 addAttributes:v28 range:{0, objc_msgSend(v29, "length")}];

      [v1 setAttributedText:v29];
      [v1 setSelectedRange:{v32, v31}];

      (*(v6 + 8))(v8, v5);
    }
  }
}

void sub_10013B570()
{
  sub_10001ABE4(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder));
  sub_100012FF4(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_languageAwareTextViewDelegate);

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale, &qword_1003AFCE0);

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer);
}

id sub_10013B61C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LanguageAwareTextView()
{
  result = qword_1003B2AC0;
  if (!qword_1003B2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013B760()
{
  sub_1000E1CC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10013B81C()
{
  result = qword_1003A98E0;
  if (!qword_1003A98E0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A98E0);
  }

  return result;
}

uint64_t sub_10013B874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10013B88C()
{
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_willResignFirstResponder);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_hasTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_languageAwareTextViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_lastAppliedAXLanguage);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_locale;
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_placeholderLocalizableKey);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView_inputModeBeforeReloadWithoutLocaleChange) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LanguageAwareTextView____lazy_storage___tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10013B9A0()
{
  Hasher._combine(_:)(*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }

  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 64))
    {
LABEL_9:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
    if (*(v0 + 64))
    {
      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
LABEL_15:
  NSObject.hash(into:)();
  if (*(v0 + 88) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 80);
    Hasher._combine(_:)(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }
}

uint64_t sub_10013BAD0()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10013BB10()
{
  Hasher.init(_seed:)();
  sub_10013B9A0();
  return Hasher._finalize()();
}

Swift::Int sub_10013BB78()
{
  Hasher.init(_seed:)();
  sub_10013B9A0();
  return Hasher._finalize()();
}

BOOL sub_10013BBB8()
{
  Hasher.init(_seed:)();
  sub_10013B9A0();
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  sub_10013B9A0();
  return v0 == Hasher._finalize()();
}

uint64_t sub_10013BC34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(v4 + 16) + 16))
  {

    sub_10028DFF0(a4);
    v10 = v9;

    if (v10)
    {
      return result;
    }
  }

  swift_beginAccess();
  v12 = *(v4 + 24);
  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 100)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 100)
  {
LABEL_5:
    swift_beginAccess();
    sub_10013BE34();
    v14 = v13;
    swift_endAccess();
    swift_beginAccess();
    sub_1002B1AF4(v14);
    swift_endAccess();
  }

LABEL_6:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_100291940(a1, a2, a3 & 1, a4, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v16;
  swift_endAccess();
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_10013BE34()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_1002B5478(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10013BF0C(uint64_t a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return 0;
  }

  sub_10028DFF0(a1);
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (*(*(v1 + 16) + 16))
  {

    result = sub_10028DFF0(a1);
    if (v6)
    {

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013BFE8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10013C074()
{
  result = qword_1003B2C98;
  if (!qword_1003B2C98)
  {
    type metadata accessor for LanguageAwareTextViewSizeThatFitsCache.Condition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2C98);
  }

  return result;
}

double sub_10013C0C8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v26 = *(v1 + 12);
  v27 = v26;
  sub_100005AD4(&qword_1003AC8F8);
  State.projectedValue.getter();
  v11 = v23;
  v10 = v24;
  v12 = v25;
  v13 = *v1;
  v14 = *(v2 + 2);
  v21[1] = *(v2 + 2);
  v15 = swift_allocObject();
  v16 = *(v2 + 1);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 4);
  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 17) = v13;
  *(a1 + 19) = v14;
  *(a1 + 24) = sub_10013E408;
  *(a1 + 32) = v15;
  v17 = type metadata accessor for LanguageFlipperBindingView(0);

  sub_10001F620(&v27, &v23, &qword_1003AC8F8);
  UUID.init()();
  (*(v5 + 16))(v22, v9, v4);
  State.init(wrappedValue:)();
  (*(v5 + 8))(v9, v4);
  v18 = (a1 + *(v17 + 40));
  *&v26 = 0;
  State.init(wrappedValue:)();
  result = v23;
  v20 = v24;
  *v18 = v23;
  *(v18 + 1) = v20;
  return result;
}

uint64_t sub_10013C2F4(uint64_t a1)
{
  v5 = *(a1 + 24);
  v4[1] = *(a1 + 24);
  v6 = *(&v5 + 1);
  sub_10001F620(&v6, v4, &qword_1003B2DB0);
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.getter();
  v4[0] = v5;
  State.wrappedValue.setter();
  v2 = sub_100009EBC(&v5, &qword_1003AC8F8);
  return (*(a1 + 8))(v2);
}

uint64_t sub_10013C3D4@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v46 = a3;
  v44 = type metadata accessor for RoundTranslationActionButtonStyle(0);
  __chkstk_darwin(v44);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100005AD4(&qword_1003B2F08);
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v37 - v6;
  v40 = sub_100005AD4(&qword_1003B2F10);
  __chkstk_darwin(v40);
  v43 = &v37 - v8;
  v9 = type metadata accessor for Material._GlassVariant();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003B2F18);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for MaterialEffectItemConfiguration_V1();
  v37 = *(v16 - 8);
  v38 = v16;
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100005AD4(&qword_1003B2F20);
  __chkstk_darwin(v41);
  v21 = &v37 - v20;
  if (qword_1003A91F0 != -1)
  {
    v36 = v19;
    swift_once();
    v19 = v36;
  }

  if (byte_1003D26A0 == 1 && a2 == 1)
  {
    v22 = v19;
    MaterialEffectItemConfiguration_V1.init()();
    v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    Color.init(uiColor:)();
    static Material._GlassVariant.widgets(tint:)();
    static Material._glass(_:)();
    (*(v10 + 8))(v12, v9);

    v24 = type metadata accessor for Material();
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    MaterialEffectItemConfiguration_V1.material.setter();
    sub_10013EF74();
    MaterialEffectItemConfiguration_V1.setShape<A>(_:)();
    v25 = sub_100005AD4(&qword_1003B2F28);
    v26 = sub_10001BAEC(&qword_1003B2F30, &qword_1003B2F28);
    View.materialEffectItem_v1(_:)();
    (*(v37 + 8))(v18, v38);
    v27 = v41;
    (*(v22 + 16))(v43, v21, v41);
    swift_storeEnumTagMultiPayload();
    v47 = v25;
    v48 = v26;
    swift_getOpaqueTypeConformance2();
    v28 = sub_10013E7C0(&qword_1003B2F38, type metadata accessor for RoundTranslationActionButtonStyle);
    v47 = v25;
    v48 = v44;
    v49 = v26;
    v50 = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v22 + 8))(v21, v27);
  }

  else
  {
    v47 = 0x3FF0000000000000;
    sub_10005C738();
    ScaledMetric.init(wrappedValue:)();
    v30 = v44;
    v5[*(v44 + 20)] = a2;
    v5[*(v30 + 24)] = HIBYTE(a2) & 1;
    v31 = sub_100005AD4(&qword_1003B2F28);
    v32 = sub_10001BAEC(&qword_1003B2F30, &qword_1003B2F28);
    v33 = sub_10013E7C0(&qword_1003B2F38, type metadata accessor for RoundTranslationActionButtonStyle);
    View.buttonStyle<A>(_:)();
    sub_10013EF18(v5);
    v34 = v39;
    v35 = v45;
    (*(v39 + 16))(v43, v7, v45);
    swift_storeEnumTagMultiPayload();
    v47 = v31;
    v48 = v32;
    swift_getOpaqueTypeConformance2();
    v47 = v31;
    v48 = v30;
    v49 = v32;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v34 + 8))(v7, v35);
  }
}

uint64_t sub_10013CB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10013C3D4(a1, v3 | *v2, a2);
}

uint64_t sub_10013CB58()
{
  v1 = type metadata accessor for LanguageFlipperBindingView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = sub_100005AD4(&qword_1003B2E80);
  __chkstk_darwin(v4);
  v6 = &v14[-v5];
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = sub_100005AD4(&qword_1003B2E88);
  sub_10013CD94(v0, (v6 + *(v8 + 44)));
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  v15 = *v0;
  v16 = v9;
  v17 = v10;
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  LOBYTE(v15) = v14[7];
  sub_10013E824(v0, &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_10013E9BC(&v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  sub_10001BAEC(&qword_1003B2E90, &qword_1003B2E80);
  View.onChange<A>(of:initial:_:)();

  return sub_100009EBC(v6, &qword_1003B2E80);
}

uint64_t sub_10013CD94@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = sub_100005AD4(&qword_1003B2EA0);
  __chkstk_darwin(v38);
  v5 = &v36 - v4;
  v39 = sub_100005AD4(&qword_1003B2EA8);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v40 = sub_100005AD4(&qword_1003B2EB0);
  v8 = __chkstk_darwin(v40);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v13 = *(a1 + 18);
  v43 = v12;
  v44 = v10;
  v41 = v7;
  v36 = a2;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = [objc_opt_self() separatorColor];
      v42 = Color.init(uiColor:)();
    }

    else
    {
      static Color.translateAccentColor.getter();
      v42 = Color.opacity(_:)();
    }
  }

  else
  {
    v42 = static Color.appBackgroundColor.getter();
  }

  KeyPath = swift_getKeyPath();
  v49 = v66;
  v50 = v67;
  v51 = v68;
  v45 = v62;
  v46 = v63;
  v47 = v64;
  v48 = v65;
  __chkstk_darwin(KeyPath);

  sub_100005AD4(&qword_1003B2EB8);
  sub_10013EAC4();
  Button.init(action:label:)();
  v15 = *(a1 + 19);
  v16 = &v5[*(v38 + 36)];
  *v16 = v13;
  v16[1] = v15;
  sub_10013EBD4();
  v17 = v41;
  View.accessibilityIdentifier(_:)();
  sub_100009EBC(v5, &qword_1003B2EA0);
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v23 = v43;
  ModifiedContent<>.accessibility(label:)();
  sub_10002EA54(v18, v20, v22 & 1);

  sub_100009EBC(v17, &qword_1003B2EA8);
  type metadata accessor for LanguageFlipperBindingView(0);
  sub_100005AD4(&qword_1003B2DB8);
  State.wrappedValue.getter();
  v24 = v44;
  sub_10001F620(v23, v44, &qword_1003B2EB0);
  v26 = v50;
  v25 = v51;
  v27 = v48;
  v56 = v50;
  v57 = v51;
  v28 = v46;
  v54 = v48;
  v55 = v49;
  v29 = v45;
  v52[0] = v45;
  v52[1] = v46;
  v53 = v47;
  v30 = v36;
  v31 = KeyPath;
  v32 = v42;
  *&v58 = KeyPath;
  *(&v58 + 1) = v42;
  v36[4] = v49;
  v30[5] = v26;
  v33 = v58;
  v30[6] = v25;
  v30[7] = v33;
  *v30 = v29;
  v30[1] = v28;
  v30[2] = v53;
  v30[3] = v27;
  v34 = sub_100005AD4(&qword_1003B2EF8);
  sub_10001F620(v24, v30 + *(v34 + 48), &qword_1003B2EB0);
  sub_10001F620(v52, v59, &qword_1003B2F00);
  sub_100009EBC(v23, &qword_1003B2EB0);
  sub_100009EBC(v24, &qword_1003B2EB0);
  v59[4] = v49;
  v59[5] = v50;
  v59[6] = v51;
  v59[0] = v45;
  v59[1] = v46;
  v59[2] = v47;
  v59[3] = v48;
  v60 = v31;
  v61 = v32;
  return sub_100009EBC(v59, &qword_1003B2F00);
}

double sub_10013D2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = *(a1 + 17);
  static UnitPoint.center.getter();
  v7 = v6;
  v9 = v8;
  type metadata accessor for LanguageFlipperBindingView(0);
  sub_100005AD4(&qword_1003B2E98);
  State.wrappedValue.getter();
  if (v5)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.57079633;
  }

  if (v5)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  if (v5)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  static UnitPoint.center.getter();
  *a2 = v4;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v16;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  result = 0.0;
  *(a2 + 80) = xmmword_1002DFFC0;
  return result;
}

uint64_t sub_10013D3E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v8);
  v13 = &v15[-v12];
  if (*a1 != *a2)
  {
    UUID.init()();
    type metadata accessor for LanguageFlipperBindingView(0);
    (*(v7 + 16))(v10, v13, v6);
    sub_100005AD4(&qword_1003B2DB8);
    State.wrappedValue.setter();
    v14 = (*(v7 + 8))(v13, v6);
    __chkstk_darwin(v14);
    *&v15[-16] = a3;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10013D5B0()
{
  type metadata accessor for LanguageFlipperBindingView(0);

  sub_100005AD4(&qword_1003B2E98);
  State.wrappedValue.getter();
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  State.wrappedValue.setter();
}

uint64_t RoundTranslationActionButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B2CA0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_100005AD4(&qword_1003B2CA8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v40 = sub_100005AD4(&qword_1003B2CB0);
  __chkstk_darwin(v40);
  v45 = &v37 - v13;
  v44 = sub_100005AD4(&qword_1003B2CB8);
  __chkstk_darwin(v44);
  v43 = &v37 - v14;
  v41 = sub_100005AD4(&qword_1003B2CC0);
  __chkstk_darwin(v41);
  v42 = &v37 - v15;
  ButtonStyleConfiguration.label.getter();
  v39 = type metadata accessor for RoundTranslationActionButtonStyle(0);
  v16 = *(v1 + *(v39 + 20));
  sub_100005AD4(&qword_1003AC7D8);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v37 + 32))(v8, v4, v38);
  v17 = &v8[*(v6 + 44)];
  v18 = v48;
  *v17 = v47;
  *(v17 + 1) = v18;
  *(v17 + 2) = v49;
  v19 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  sub_100023BD4(v8, v12, &qword_1003B2CA0);
  v21 = &v12[*(v10 + 44)];
  *v21 = KeyPath;
  v21[1] = v19;
  if (v16)
  {
    if (v16 == 1)
    {
      v22 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
      v23 = Color.init(uiColor:)();
    }

    else
    {
      static Color.translateAccentColor.getter();
      v23 = Color.opacity(_:)();
    }
  }

  else
  {
    v23 = static Color.appBackgroundColor.getter();
  }

  v25 = v45;
  v24 = v46;
  v27 = v43;
  v26 = v44;
  v28 = v42;
  v29 = static Edge.Set.all.getter();
  sub_100023BD4(v12, v25, &qword_1003B2CA8);
  v30 = v25 + *(v40 + 36);
  *v30 = v23;
  *(v30 + 8) = v29;
  if (v16 == 2)
  {
    v31 = static Color.black.getter();
  }

  else
  {
    v31 = static Color.clear.getter();
  }

  v32 = v31;
  v33 = static Edge.Set.all.getter();
  sub_100023BD4(v25, v27, &qword_1003B2CB0);
  v34 = v27 + *(v26 + 36);
  *v34 = v32;
  *(v34 + 8) = v33;
  sub_100023BD4(v27, v28, &qword_1003B2CB8);
  *(v28 + *(v41 + 36)) = 256;
  if (*(v1 + *(v39 + 24)))
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_100023BD4(v28, v24, &qword_1003B2CC0);
  result = sub_100005AD4(&qword_1003B2CC8);
  *(v24 + *(result + 36)) = v35;
  return result;
}

uint64_t sub_10013DBF4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013DC20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013DCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AC7D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10013DDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003AC7D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_10013DE84()
{
  sub_10005C6DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10013DF0C()
{
  result = qword_1003B2D68;
  if (!qword_1003B2D68)
  {
    sub_100005EA8(&qword_1003B2CC8);
    sub_10013DF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D68);
  }

  return result;
}

unint64_t sub_10013DF98()
{
  result = qword_1003B2D70;
  if (!qword_1003B2D70)
  {
    sub_100005EA8(&qword_1003B2CC0);
    sub_10013E050();
    sub_10001BAEC(&qword_1003B2D98, &qword_1003B2DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D70);
  }

  return result;
}

unint64_t sub_10013E050()
{
  result = qword_1003B2D78;
  if (!qword_1003B2D78)
  {
    sub_100005EA8(&qword_1003B2CB8);
    sub_10013E108();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D78);
  }

  return result;
}

unint64_t sub_10013E108()
{
  result = qword_1003B2D80;
  if (!qword_1003B2D80)
  {
    sub_100005EA8(&qword_1003B2CB0);
    sub_10013E1C0();
    sub_10001BAEC(&qword_1003ADB10, &qword_1003ADB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D80);
  }

  return result;
}

unint64_t sub_10013E1C0()
{
  result = qword_1003B2D88;
  if (!qword_1003B2D88)
  {
    sub_100005EA8(&qword_1003B2CA8);
    sub_10013E278();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D88);
  }

  return result;
}

unint64_t sub_10013E278()
{
  result = qword_1003B2D90;
  if (!qword_1003B2D90)
  {
    sub_100005EA8(&qword_1003B2CA0);
    sub_10013E7C0(&qword_1003AB640, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2D90);
  }

  return result;
}

unint64_t sub_10013E358()
{
  result = qword_1003B2DA8;
  if (!qword_1003B2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2DA8);
  }

  return result;
}

uint64_t sub_10013E3C8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10013E444(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003B2DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10013E514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B2DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10013E5C4()
{
  sub_10013E728(319, &qword_1003ABC20, &type metadata for Bool, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10002ACA4();
    if (v1 <= 0x3F)
    {
      sub_10013E6D0();
      if (v2 <= 0x3F)
      {
        sub_10013E728(319, &unk_1003B2E30, &type metadata for Angle, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10013E6D0()
{
  if (!qword_1003B2E28)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B2E28);
    }
  }
}

void sub_10013E728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10013E7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013E824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageFlipperBindingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013E888()
{
  v1 = (type metadata accessor for LanguageFlipperBindingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[11];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100005AD4(&qword_1003B2DB8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10013E9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageFlipperBindingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013EA20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for LanguageFlipperBindingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10013D3E8(a1, a2, v6);
}

unint64_t sub_10013EAC4()
{
  result = qword_1003B2EC0;
  if (!qword_1003B2EC0)
  {
    sub_100005EA8(&qword_1003B2EB8);
    sub_10013EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2EC0);
  }

  return result;
}

unint64_t sub_10013EB50()
{
  result = qword_1003B2EC8;
  if (!qword_1003B2EC8)
  {
    sub_100005EA8(&qword_1003B2ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2EC8);
  }

  return result;
}

unint64_t sub_10013EBD4()
{
  result = qword_1003B2ED8;
  if (!qword_1003B2ED8)
  {
    sub_100005EA8(&qword_1003B2EA0);
    sub_10001BAEC(&qword_1003B2EE0, &qword_1003B2EE8);
    sub_10013EC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2ED8);
  }

  return result;
}

unint64_t sub_10013EC8C()
{
  result = qword_1003B2EF0;
  if (!qword_1003B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2EF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageFlipperStyleModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageFlipperStyleModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10013EE50()
{
  sub_100005EA8(&qword_1003B2E80);
  sub_10001BAEC(&qword_1003B2E90, &qword_1003B2E80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10013EF18(uint64_t a1)
{
  v2 = type metadata accessor for RoundTranslationActionButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013EF74()
{
  result = qword_1003B2F40;
  if (!qword_1003B2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2F40);
  }

  return result;
}

unint64_t sub_10013EFCC()
{
  result = qword_1003B2F48;
  if (!qword_1003B2F48)
  {
    sub_100005EA8(&qword_1003B2F50);
    sub_100005EA8(&qword_1003B2F28);
    sub_10001BAEC(&qword_1003B2F30, &qword_1003B2F28);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for RoundTranslationActionButtonStyle(255);
    sub_10013E7C0(&qword_1003B2F38, type metadata accessor for RoundTranslationActionButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B2F48);
  }

  return result;
}

uint64_t sub_10013F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2F58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003B2F60);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10013F29C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2F58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005AD4(&qword_1003B2F60);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LanguagePickerSection()
{
  result = qword_1003B2FC0;
  if (!qword_1003B2FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013F424()
{
  sub_10013F688(319, &qword_1003B2FD0, &qword_1003AFCE0, &unk_1002D5B00, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10013F5DC();
    if (v1 <= 0x3F)
    {
      sub_10013F634(319, &qword_1003ABC20, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10013F688(319, &qword_1003B2FE0, &qword_1003B2FE8, &unk_1002E0380, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_10002ACA4();
          if (v4 <= 0x3F)
          {
            sub_10013F634(319, &qword_1003AC878, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10013F688(319, &unk_1003B2FF0, &qword_1003AFCE0, &unk_1002D5B00, &type metadata accessor for State);
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

void sub_10013F5DC()
{
  if (!qword_1003B2FD8)
  {
    type metadata accessor for LanguageSelectionDownloadModel();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B2FD8);
    }
  }
}

void sub_10013F634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10013F688(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005EA8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10013F708@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v90 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Locale();
  v86 = *(v84 - 8);
  v5 = __chkstk_darwin(v84);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = &v77 - v7;
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100005AD4(&qword_1003AFCE0);
  v10 = __chkstk_darwin(v104);
  v85 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = (&v77 - v12);
  v106 = type metadata accessor for LanguagePickerSection();
  v13 = *(v106 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v106);
  v15 = sub_100005AD4(&qword_1003B3038);
  __chkstk_darwin(v15);
  v17 = &v77 - v16;
  v80 = sub_100005AD4(&qword_1003B3040);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v100 = &v77 - v18;
  v92 = sub_100005AD4(&qword_1003B3048);
  v88 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = &v77 - v19;
  v95 = sub_100005AD4(&qword_1003B3050);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v77 - v20;
  v97 = sub_100005AD4(&qword_1003B3058);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v77 - v21;
  v107 = v1;
  sub_100005AD4(&qword_1003B3060);
  sub_10001BAEC(&qword_1003B3068, &qword_1003B3060);
  v22 = v17;
  v103 = v17;
  Section<>.init(content:)();
  sub_1001456B0(v1, &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v13 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = v24 + v14;
  v26 = swift_allocObject();
  sub_100145718(&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24);
  v83 = v15;
  v27 = &v22[*(v15 + 36)];
  *v27 = sub_10014577C;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  sub_100005AD4(&qword_1003B2F58);
  v28 = v78;
  v99 = v2;
  Binding.wrappedValue.getter();
  v105 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001456B0(v2, v105);
  v29 = swift_allocObject();
  sub_100145718(&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v24);
  OpaqueTypeConformance2 = sub_1001457F0();
  v30 = sub_100145EC8(&qword_1003B3088, &unk_1003B06F0);
  v31 = v104;
  v32 = v103;
  View.onChange<A>(of:initial:_:)();

  sub_100009EBC(v28, &qword_1003AFCE0);
  sub_100009EBC(v32, &qword_1003B3038);
  v33 = v99;
  Binding.wrappedValue.getter();
  v34 = v105;
  sub_1001456B0(v33, v105);
  v102 = v25;
  v103 = v23;
  v35 = swift_allocObject();
  v89 = v24;
  v36 = v35 + v24;
  v37 = v80;
  sub_100145718(v34, v36);
  v108 = v83;
  *&v109 = v31;
  *(&v109 + 1) = OpaqueTypeConformance2;
  v110 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v30;
  v38 = v100;
  View.onChange<A>(of:initial:_:)();

  v39 = v86;
  sub_100009EBC(v28, &qword_1003AFCE0);
  (*(v81 + 8))(v38, v37);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 0xD00000000000002ALL;
  v40._object = 0x80000001002F5DC0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
  sub_100005AD4(&qword_1003B2F60);
  v41 = v33;
  v42 = v85;
  State.wrappedValue.getter();
  v43 = v84;
  if ((*(v39 + 48))(v42, 1))
  {
    sub_100009EBC(v42, &qword_1003AFCE0);
  }

  else
  {
    v46 = v87;
    (*(v39 + 16))(v87, v42, v43);
    sub_100009EBC(v42, &qword_1003AFCE0);
    v47 = v77;
    static Locale.current.getter();
    v44 = Locale.sqDisplayName(context:in:)();
    v45 = v48;
    v49 = *(v39 + 8);
    v49(v47, v43);
    v49(v46, v43);
    if (v45)
    {
      goto LABEL_5;
    }
  }

  v44 = 0;
  v45 = 0xE000000000000000;
LABEL_5:
  v108 = v44;
  *&v109 = v45;
  v50._countAndFlagsBits = String.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v50);

  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v108 = String.init(localized:table:bundle:locale:comment:)();
  *&v109 = v52;
  sub_10001F278();
  v85 = Text.init<A>(_:)();
  v84 = v53;
  v55 = v54;
  v82 = v56;
  v57 = (v41 + *(v106 + 28));
  v58 = v57[1];
  v100 = *v57;
  v90 = v58;
  LODWORD(v87) = *(v57 + 16);
  v108 = v100;
  *&v109 = v58;
  BYTE8(v109) = v87;
  v86 = sub_100005AD4(&qword_1003BA760);
  v59 = Binding.projectedValue.getter();
  v78 = &v77;
  __chkstk_darwin(v59);
  v81 = sub_100005AD4(&qword_1003AA540);
  v108 = v37;
  *&v109 = v104;
  *(&v109 + 1) = OpaqueTypeConformance2;
  v110 = v83;
  v104 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v83 = swift_getOpaqueTypeConformance2();
  v76 = sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  v60 = v92;
  v61 = v91;
  v62 = v85;
  v63 = v84;
  v64 = v101;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  sub_10002EA54(v62, v63, v55 & 1);

  (*(v88 + 8))(v64, v60);
  v108 = v100;
  *&v109 = v90;
  BYTE8(v109) = v87;
  Binding.wrappedValue.getter();
  v65 = v99;
  v66 = v105;
  sub_1001456B0(v99, v105);
  v67 = swift_allocObject();
  v68 = v89;
  sub_100145718(v66, v67 + v89);
  v108 = v60;
  *&v109 = v81;
  *(&v109 + 1) = v83;
  v110 = v76;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v94;
  v71 = v95;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v61, v71);
  v72 = v65 + *(v106 + 32);
  v108 = *v72;
  v109 = *(v72 + 8);
  sub_100005AD4(&qword_1003B3090);
  Binding.wrappedValue.getter();
  sub_1001456B0(v65, v66);
  v73 = swift_allocObject();
  sub_100145718(v66, v73 + v68);
  sub_100005AD4(&qword_1003B2FE8);
  v108 = v71;
  *&v109 = &type metadata for Bool;
  *(&v109 + 1) = v69;
  v110 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100145AF0();
  v74 = v97;
  View.onChange<A>(of:initial:_:)();

  return (*(v96 + 8))(v70, v74);
}

uint64_t sub_1001405FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = sub_100005AD4(&qword_1003B2F58);
  __chkstk_darwin(v39);
  v3 = sub_100005AD4(&qword_1003B30A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v38 - v5;
  v40 = sub_100005AD4(&qword_1003B30A8) - 8;
  v7 = __chkstk_darwin(v40);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v41 = v38 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v38 - v12;
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  Binding.projectedValue.getter();
  v47 = a1;
  v46 = a1;
  v38[4] = sub_100005AD4(&qword_1003AFCE0);
  v38[3] = sub_100005AD4(&qword_1003B30B0);
  v38[6] = sub_100145EC8(&qword_1003B30B8, &qword_1003AED28);
  v38[5] = sub_100145F94();
  Picker.init<A>(selection:content:label:currentValueLabel:)();
  v38[2] = sub_10001BAEC(&qword_1003B30C8, &qword_1003B30A0);
  v38[1] = sub_100146078();
  View.labeledContentStyle<A>(_:)();
  v16 = *(v4 + 8);
  v38[0] = v4 + 8;
  v17 = v3;
  v16(v6, v3);
  v18 = sub_100005AD4(&qword_1003B30D8);
  v19 = &v15[*(v18 + 36)];
  v19[32] = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v21 = v40;
  v22 = &v15[*(v40 + 44)];
  *v22 = v20;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  type metadata accessor for LanguagePickerSection();
  Binding.projectedValue.getter();
  v45 = a1;
  v44 = a1;
  Picker.init<A>(selection:content:label:currentValueLabel:)();
  View.labeledContentStyle<A>(_:)();
  v16(v6, v17);
  v27 = &v13[*(v18 + 36)];
  v27[32] = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  LOBYTE(v17) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = &v13[*(v21 + 44)];
  *v28 = v17;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v41;
  sub_1001460D4(v15, v41);
  v34 = v42;
  sub_1001460D4(v13, v42);
  v35 = v43;
  sub_1001460D4(v33, v43);
  v36 = sub_100005AD4(&qword_1003B30E0);
  sub_1001460D4(v34, v35 + *(v36 + 48));
  sub_100009EBC(v13, &qword_1003B30A8);
  sub_100009EBC(v15, &qword_1003B30A8);
  sub_100009EBC(v34, &qword_1003B30A8);
  return sub_100009EBC(v33, &qword_1003B30A8);
}

uint64_t sub_100140BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001F278();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_100140D18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_100005AD4(&qword_1003B2F58);
  Binding.wrappedValue.getter();
  v5 = sub_100140E00(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_100009EBC(v4, &qword_1003AFCE0);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_100140E00(uint64_t a1)
{
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v33 - v13;
  sub_10001F620(a1, v7, &qword_1003AFCE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100009EBC(v7, &qword_1003AFCE0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v35 = v15;
    sub_10001F278();
    return Text.init<A>(_:)();
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    if (sub_100144E04(v14))
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0xD000000000000029;
      v17._object = 0x80000001002F5E50;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
      static Locale.current.getter();
      v18 = Locale.sqDisplayName(context:in:)();
      v20 = v19;
      v21 = *(v9 + 8);
      v21(v12, v8);
      if (v20)
      {
        v22 = v18;
      }

      else
      {
        v22 = 0;
      }

      v23 = 0xE000000000000000;
      if (v20)
      {
        v23 = v20;
      }

      v34 = v22;
      v35 = v23;
      v24._countAndFlagsBits = String.init<A>(_:)();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v34 = String.init(localized:table:bundle:locale:comment:)();
      v35 = v26;
      sub_10001F278();
      v27 = Text.init<A>(_:)();
      v21(v14, v8);
      return v27;
    }

    else
    {
      static Locale.current.getter();
      v28 = Locale.sqDisplayName(context:in:)();
      v30 = v29;
      v31 = *(v9 + 8);
      v31(v12, v8);
      if (v30)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0;
      }

      v31(v14, v8);
      return v32;
    }
  }
}

uint64_t sub_100141294()
{
  type metadata accessor for LanguagePickerSection();
  swift_getKeyPath();

  sub_100005AD4(&qword_1003B30E8);
  sub_100005AD4(&qword_1003B30F0);
  sub_10001BAEC(&qword_1003B30F8, &qword_1003B30E8);
  sub_100145F50(&qword_1003AED28);
  type metadata accessor for Locale();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100141400@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  LanguageSelectionDownloadModel.locale.getter();
  static Locale.current.getter();
  v9 = Locale.sqDisplayName(context:in:)();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (!v11)
  {
    v11 = 0xE000000000000000;
  }

  LanguageSelectionDownloadModel.locale.getter();
  v14 = a1 + *(sub_100005AD4(&qword_1003A93E8) + 36);
  (*(v3 + 32))(v14, v8, v2);
  result = sub_100005AD4(&qword_1003A93F0);
  *(v14 + *(result + 36)) = 1;
  *a1 = v13;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001415C8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001F278();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_10014170C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  type metadata accessor for LanguagePickerSection();
  sub_100005AD4(&qword_1003B2F58);
  Binding.wrappedValue.getter();
  v5 = sub_100140E00(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_100009EBC(v4, &qword_1003AFCE0);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_100141808()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v29 - v6;
  v7 = sub_100005AD4(&qword_1003AFCE0);
  v8 = __chkstk_darwin(v7 - 8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = __chkstk_darwin(v10);
  v34 = &v29 - v14;
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  type metadata accessor for LanguagePickerSection();
  sub_100005AD4(&qword_1003B2F58);
  Binding.wrappedValue.getter();
  v17 = sub_100144BE8(v16);
  sub_100009EBC(v16, &qword_1003AFCE0);
  if (!v17)
  {
    (*(v3 + 56))(v16, 1, 1, v2);
    sub_10001F620(v16, v34, &qword_1003AFCE0);
    Binding.wrappedValue.setter();
    sub_100009EBC(v16, &qword_1003AFCE0);
  }

  Binding.wrappedValue.getter();
  v18 = sub_100144BE8(v16);
  sub_100009EBC(v16, &qword_1003AFCE0);
  if (!v18)
  {
    (*(v3 + 56))(v16, 1, 1, v2);
    sub_10001F620(v16, v34, &qword_1003AFCE0);
    Binding.wrappedValue.setter();
    sub_100009EBC(v16, &qword_1003AFCE0);
  }

  Binding.wrappedValue.getter();
  v19 = *(v3 + 48);
  if (v19(v12, 1, v2) == 1)
  {
    return sub_100009EBC(v12, &qword_1003AFCE0);
  }

  v20 = v1;
  v21 = v33;
  v30 = *(v3 + 32);
  v30(v33, v12, v2);
  v12 = v32;
  v29 = v20;
  Binding.wrappedValue.getter();
  v22 = v2;
  if (v19(v12, 1, v2) == 1)
  {
    (*(v3 + 8))(v21, v2);
    return sub_100009EBC(v12, &qword_1003AFCE0);
  }

  v24 = v12;
  v25 = v31;
  v30(v31, v24, v2);
  v26 = v21;
  if (static Locale.== infix(_:_:)())
  {
    (*(v3 + 56))(v16, 1, 1, v22);
    v27 = v22;
    sub_10001F620(v16, v34, &qword_1003AFCE0);
    Binding.wrappedValue.setter();
    sub_100009EBC(v16, &qword_1003AFCE0);
  }

  else
  {
    v27 = v22;
  }

  v28 = *(v3 + 8);
  v28(v25, v27);
  return (v28)(v26, v27);
}

uint64_t sub_100141CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v76 = sub_100005AD4(&qword_1003B2A58);
  __chkstk_darwin(v76);
  v78 = v62 - v5;
  v6 = sub_100005AD4(&qword_1003AFCE0);
  v7 = __chkstk_darwin(v6 - 8);
  v79 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v73 = v62 - v10;
  v11 = __chkstk_darwin(v9);
  v72 = v62 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v62 - v14;
  v16 = __chkstk_darwin(v13);
  v75 = v62 - v17;
  v18 = __chkstk_darwin(v16);
  v71 = v62 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v62 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v62 - v24;
  __chkstk_darwin(v23);
  v27 = v62 - v26;
  v28 = type metadata accessor for Locale();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v77 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v70 = v62 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = v62 - v35;
  __chkstk_darwin(v34);
  v80 = v62 - v37;
  v81 = v29;
  v38 = *(v29 + 48);
  result = v38(a2, 1, v28);
  if (result != 1)
  {
    sub_10001F620(a2, v27, &qword_1003AFCE0);
    if (v38(v27, 1, v28) == 1)
    {
      sub_100009EBC(v27, &qword_1003AFCE0);
LABEL_17:
      v57 = v79;
LABEL_18:
      sub_10001F620(a2, v57, &qword_1003AFCE0);
      if (v38(v57, 1, v28) == 1)
      {
        return sub_100009EBC(v57, &qword_1003AFCE0);
      }

      v60 = v81;
      v61 = v77;
      (*(v81 + 32))(v77, v57, v28);
      sub_1001425A8(v61);
      return (*(v60 + 8))(v61, v28);
    }

    v65 = v15;
    v66 = a2;
    v40 = a3;
    v41 = v80;
    v42 = v81;
    v62[0] = *(v81 + 32);
    v62[1] = v81 + 32;
    (v62[0])(v80, v27, v28);
    v63 = *(v42 + 16);
    v64 = v42 + 16;
    v63(v25, v41, v28);
    (*(v42 + 56))(v25, 0, 1, v28);
    v43 = *(type metadata accessor for LanguagePickerSection() + 20);
    v44 = sub_100005AD4(&qword_1003B2F58);
    v67 = v40;
    v68 = v44;
    v69 = v43;
    Binding.wrappedValue.getter();
    v45 = *(v76 + 48);
    v46 = v78;
    sub_10001F620(v25, v78, &qword_1003AFCE0);
    sub_10001F620(v22, v46 + v45, &qword_1003AFCE0);
    if (v38(v46, 1, v28) == 1)
    {
      sub_100009EBC(v22, &qword_1003AFCE0);
      sub_100009EBC(v25, &qword_1003AFCE0);
      if (v38(v46 + v45, 1, v28) == 1)
      {
        sub_100009EBC(v46, &qword_1003AFCE0);
LABEL_16:
        v59 = v72;
        sub_10001F620(v74, v72, &qword_1003AFCE0);
        sub_10001F620(v59, v73, &qword_1003AFCE0);
        Binding.wrappedValue.setter();
        sub_100009EBC(v59, &qword_1003AFCE0);
        (*(v81 + 8))(v80, v28);
        a2 = v66;
        goto LABEL_17;
      }
    }

    else
    {
      v47 = v71;
      sub_10001F620(v46, v71, &qword_1003AFCE0);
      if (v38(v46 + v45, 1, v28) != 1)
      {
        (v62[0])(v36, v46 + v45, v28);
        sub_100145F50(&unk_1003B06F0);
        LODWORD(v76) = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v81 + 8);
        v58(v36, v28);
        sub_100009EBC(v22, &qword_1003AFCE0);
        sub_100009EBC(v25, &qword_1003AFCE0);
        v58(v47, v28);
        sub_100009EBC(v78, &qword_1003AFCE0);
        if (v76)
        {
          goto LABEL_16;
        }

LABEL_10:
        v48 = v75;
        Binding.wrappedValue.getter();
        v49 = v38(v48, 1, v28);
        sub_100009EBC(v48, &qword_1003AFCE0);
        if (v49 == 1)
        {
          v50 = *(v81 + 8);
        }

        else
        {
          v51 = v70;
          v63(v70, v80, v28);
          v52 = v65;
          Binding.wrappedValue.getter();
          result = v38(v52, 1, v28);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v53 = objc_allocWithZone(_LTLocalePair);
          isa = Locale._bridgeToObjectiveC()().super.isa;
          v55 = Locale._bridgeToObjectiveC()().super.isa;
          v56 = [v53 initWithSourceLocale:isa targetLocale:v55];

          v50 = *(v81 + 8);
          v50(v51, v28);
          v50(v52, v28);
          LODWORD(v55) = [v56 isVariantPair];

          if (v55)
          {
            goto LABEL_16;
          }
        }

        v57 = v79;
        v50(v80, v28);
        a2 = v66;
        goto LABEL_18;
      }

      sub_100009EBC(v22, &qword_1003AFCE0);
      sub_100009EBC(v25, &qword_1003AFCE0);
      (*(v81 + 8))(v47, v28);
    }

    sub_100009EBC(v46, &qword_1003B2A58);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001425A8(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AFCE0);
  v8 = __chkstk_darwin(v7 - 8);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v28 = &v26 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - v13;
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *(v4 + 16);
  v30 = a1;
  v26 = v17;
  v17(&v26 - v15, a1, v3);
  v27 = *(v4 + 56);
  v27(v16, 0, 1, v3);
  sub_10001F620(v16, v14, &qword_1003AFCE0);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    sub_100009EBC(v16, &qword_1003AFCE0);
    return sub_100009EBC(v14, &qword_1003AFCE0);
  }

  else
  {
    (*(v4 + 32))(v6, v14, v3);
    v19 = type metadata accessor for LanguagePickerSection();
    __chkstk_darwin(v19);
    *(&v26 - 2) = v6;
    v21 = sub_100199188(sub_100145E70, (&v26 - 4), v20);
    sub_100009EBC(v16, &qword_1003AFCE0);
    result = (*(v4 + 8))(v6, v3);
    if (v21)
    {
      if (dispatch thunk of LanguageSelectionDownloadModel.state.getter() != 2 && dispatch thunk of LanguageSelectionDownloadModel.state.getter() != 1)
      {
        v22 = v28;
        v26(v28, v30, v3);
        v27(v22, 0, 1, v3);
        sub_10001F620(v22, v29, &qword_1003AFCE0);
        sub_100005AD4(&qword_1003B2F60);
        State.wrappedValue.setter();
        sub_100009EBC(v22, &qword_1003AFCE0);
        v23 = (v1 + *(v19 + 28));
        v24 = *v23;
        v25 = v23[1];
        LOBYTE(v23) = *(v23 + 16);
        v32 = v24;
        v33 = v25;
        v34 = v23;
        v31 = 1;

        sub_100005AD4(&qword_1003BA760);
        Binding.wrappedValue.setter();
      }
    }
  }

  return result;
}

uint64_t sub_1001429CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v63 = a1;
  v4 = sub_100005AD4(&qword_1003B2A58);
  __chkstk_darwin(v4);
  v66 = &v55 - v5;
  v6 = sub_100005AD4(&qword_1003AFCE0);
  v7 = __chkstk_darwin(v6 - 8);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = &v55 - v10;
  v11 = __chkstk_darwin(v9);
  v61 = &v55 - v12;
  v13 = __chkstk_darwin(v11);
  v64 = &v55 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v55 - v16;
  v17 = __chkstk_darwin(v15);
  v60 = &v55 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = type metadata accessor for Locale();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v55 - v33;
  __chkstk_darwin(v32);
  v68 = &v55 - v35;
  v70 = v28;
  v36 = *(v28 + 48);
  result = v36(a2, 1, v27);
  if (result != 1)
  {
    sub_10001F620(a2, v26, &qword_1003AFCE0);
    if (v36(v26, 1, v27) == 1)
    {
      sub_100009EBC(v26, &qword_1003AFCE0);
      v38 = v67;
      goto LABEL_17;
    }

    v57 = v31;
    v58 = a2;
    v39 = v70;
    v40 = v68;
    v55 = *(v70 + 32);
    v56 = v70 + 32;
    v55(v68, v26, v27);
    (*(v39 + 16))(v24, v40, v27);
    (*(v39 + 56))(v24, 0, 1, v27);
    v59 = sub_100005AD4(&qword_1003B2F58);
    Binding.wrappedValue.getter();
    v41 = *(v4 + 48);
    v42 = v66;
    sub_10001F620(v24, v66, &qword_1003AFCE0);
    sub_10001F620(v21, v42 + v41, &qword_1003AFCE0);
    if (v36(v42, 1, v27) == 1)
    {
      sub_100009EBC(v21, &qword_1003AFCE0);
      sub_100009EBC(v24, &qword_1003AFCE0);
      if (v36(v42 + v41, 1, v27) == 1)
      {
        sub_100009EBC(v42, &qword_1003AFCE0);
        v31 = v57;
        a2 = v58;
LABEL_16:
        v53 = v61;
        sub_10001F620(v63, v61, &qword_1003AFCE0);
        sub_10001F620(v53, v62, &qword_1003AFCE0);
        Binding.wrappedValue.setter();
        sub_100009EBC(v53, &qword_1003AFCE0);
        (*(v70 + 8))(v68, v27);
        v38 = v67;
LABEL_17:
        sub_10001F620(a2, v38, &qword_1003AFCE0);
        if (v36(v38, 1, v27) == 1)
        {
          return sub_100009EBC(v38, &qword_1003AFCE0);
        }

        v54 = v70;
        (*(v70 + 32))(v31, v38, v27);
        sub_1001425A8(v31);
        return (*(v54 + 8))(v31, v27);
      }
    }

    else
    {
      v43 = v60;
      sub_10001F620(v42, v60, &qword_1003AFCE0);
      if (v36(v42 + v41, 1, v27) != 1)
      {
        v55(v34, (v42 + v41), v27);
        sub_100145F50(&unk_1003B06F0);
        LODWORD(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
        v52 = *(v70 + 8);
        v52(v34, v27);
        sub_100009EBC(v21, &qword_1003AFCE0);
        sub_100009EBC(v24, &qword_1003AFCE0);
        v52(v43, v27);
        sub_100009EBC(v66, &qword_1003AFCE0);
        v31 = v57;
        a2 = v58;
        if (v56)
        {
          goto LABEL_16;
        }

LABEL_10:
        v44 = v65;
        Binding.wrappedValue.getter();
        v45 = v36(v44, 1, v27);
        sub_100009EBC(v44, &qword_1003AFCE0);
        if (v45 == 1)
        {
          v46 = *(v70 + 8);
        }

        else
        {
          v47 = v64;
          Binding.wrappedValue.getter();
          result = v36(v47, 1, v27);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v48 = objc_allocWithZone(_LTLocalePair);
          isa = Locale._bridgeToObjectiveC()().super.isa;
          v50 = Locale._bridgeToObjectiveC()().super.isa;
          v51 = [v48 initWithSourceLocale:isa targetLocale:v50];

          v46 = *(v70 + 8);
          v46(v64, v27);
          LODWORD(v50) = [v51 isVariantPair];

          if (v50)
          {
            goto LABEL_16;
          }
        }

        v38 = v67;
        v46(v68, v27);
        goto LABEL_17;
      }

      sub_100009EBC(v21, &qword_1003AFCE0);
      sub_100009EBC(v24, &qword_1003AFCE0);
      (*(v70 + 8))(v43, v27);
    }

    sub_100009EBC(v42, &qword_1003B2A58);
    v31 = v57;
    a2 = v58;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100143254(uint64_t a1)
{
  v2 = type metadata accessor for LanguagePickerSection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1001456B0(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100145718(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return Button.init(action:label:)();
}

uint64_t sub_100143388(uint64_t a1)
{
  v2 = type metadata accessor for LanguagePickerSection();
  sub_100005AD4(&qword_1003AC8F8);
  v3 = State.wrappedValue.setter();
  return (*(a1 + *(v2 + 36)))(v3);
}

uint64_t sub_10014341C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v35[-v8];
  v10 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000002CLL;
  v14._object = 0x80000001002F5DF0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  type metadata accessor for LanguagePickerSection();
  sub_100005AD4(&qword_1003B2F60);
  State.wrappedValue.getter();
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_100009EBC(v12, &qword_1003AFCE0);
  }

  else
  {
    (*(v4 + 16))(v9, v12, v3);
    sub_100009EBC(v12, &qword_1003AFCE0);
    static Locale.current.getter();
    v15 = Locale.sqDisplayName(context:in:)();
    v16 = v17;
    v18 = *(v4 + 8);
    v18(v7, v3);
    v18(v9, v3);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_5:
  v36 = v15;
  v37 = v16;
  v19._countAndFlagsBits = String.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v21;
  sub_10001F278();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_10002EA54(v22, v24, v26 & 1);

  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v33;
  return result;
}

uint64_t sub_10014383C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v79 = a3;
  v5 = type metadata accessor for Locale();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v72 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005AD4(&qword_1003B2A58);
  v8 = __chkstk_darwin(v7);
  v75 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v61[-v10];
  v12 = sub_100005AD4(&qword_1003AFCE0);
  v13 = __chkstk_darwin(v12 - 8);
  v71 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v77 = &v61[-v16];
  v17 = __chkstk_darwin(v15);
  v76 = &v61[-v18];
  v19 = __chkstk_darwin(v17);
  v73 = &v61[-v20];
  v21 = __chkstk_darwin(v19);
  v74 = &v61[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v61[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v61[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v61[-v30];
  result = __chkstk_darwin(v29);
  v34 = &v61[-v33];
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v35 = type metadata accessor for LanguagePickerSection();
    v36 = *(v35 + 44);
    v68 = sub_100005AD4(&qword_1003B2F60);
    v69 = v36;
    State.wrappedValue.getter();
    v70 = *(v78 + 48);
    LODWORD(v36) = v70(v34, 1, v5);
    result = sub_100009EBC(v34, &qword_1003AFCE0);
    if (v36 != 1)
    {
      v64 = v35;
      v37 = (v79 + *(v35 + 40));
      v38 = *v37;
      v39 = *(v37 + 1);
      v66 = v38;
      v81 = v38;
      v67 = v39;
      v82 = v39;
      v65 = sub_100005AD4(&qword_1003AC8F8);
      State.wrappedValue.getter();
      if (v80)
      {
        goto LABEL_22;
      }

      v63 = sub_100005AD4(&qword_1003B2F58);
      Binding.wrappedValue.getter();
      State.wrappedValue.getter();
      v40 = *(v7 + 48);
      sub_10001F620(v31, v11, &qword_1003AFCE0);
      sub_10001F620(v28, &v11[v40], &qword_1003AFCE0);
      v41 = v70;
      if (v70(v11, 1, v5) == 1)
      {
        sub_100009EBC(v28, &qword_1003AFCE0);
        sub_100009EBC(v31, &qword_1003AFCE0);
        v42 = v41(&v11[v40], 1, v5);
        v43 = v77;
        if (v42 == 1)
        {
          sub_100009EBC(v11, &qword_1003AFCE0);
LABEL_20:
          v60 = v74;
          (*(v78 + 56))(v74, 1, 1, v5);
          sub_10001F620(v60, v73, &qword_1003AFCE0);
          Binding.wrappedValue.setter();
          v52 = v60;
          v51 = &qword_1003AFCE0;
          goto LABEL_21;
        }
      }

      else
      {
        sub_10001F620(v11, v25, &qword_1003AFCE0);
        v44 = v40;
        v45 = v41(&v11[v40], 1, v5);
        v43 = v77;
        if (v45 != 1)
        {
          v53 = v72;
          (*(v78 + 32))(v72, &v11[v44], v5);
          sub_100145F50(&unk_1003B06F0);
          v62 = dispatch thunk of static Equatable.== infix(_:_:)();
          v54 = *(v78 + 8);
          v54(v53, v5);
          sub_100009EBC(v28, &qword_1003AFCE0);
          sub_100009EBC(v31, &qword_1003AFCE0);
          v54(v25, v5);
          v43 = v77;
          sub_100009EBC(v11, &qword_1003AFCE0);
          if (v62)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        sub_100009EBC(v28, &qword_1003AFCE0);
        sub_100009EBC(v31, &qword_1003AFCE0);
        (*(v78 + 8))(v25, v5);
      }

      sub_100009EBC(v11, &qword_1003B2A58);
LABEL_11:
      v79 = *(v64 + 20);
      v46 = v76;
      Binding.wrappedValue.getter();
      State.wrappedValue.getter();
      v47 = *(v7 + 48);
      v48 = v75;
      sub_10001F620(v46, v75, &qword_1003AFCE0);
      sub_10001F620(v43, &v48[v47], &qword_1003AFCE0);
      v49 = v70;
      if (v70(v48, 1, v5) == 1)
      {
        sub_100009EBC(v43, &qword_1003AFCE0);
        sub_100009EBC(v46, &qword_1003AFCE0);
        if (v49(&v48[v47], 1, v5) == 1)
        {
          sub_100009EBC(v48, &qword_1003AFCE0);
          goto LABEL_20;
        }

LABEL_16:
        v51 = &qword_1003B2A58;
        v52 = v48;
LABEL_21:
        sub_100009EBC(v52, v51);
        goto LABEL_22;
      }

      v50 = v71;
      sub_10001F620(v48, v71, &qword_1003AFCE0);
      if (v49(&v48[v47], 1, v5) == 1)
      {
        sub_100009EBC(v43, &qword_1003AFCE0);
        sub_100009EBC(v76, &qword_1003AFCE0);
        (*(v78 + 8))(v50, v5);
        goto LABEL_16;
      }

      v55 = v78;
      v56 = &v48[v47];
      v57 = v72;
      (*(v78 + 32))(v72, v56, v5);
      sub_100145F50(&unk_1003B06F0);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *(v55 + 8);
      v59(v57, v5);
      sub_100009EBC(v43, &qword_1003AFCE0);
      sub_100009EBC(v76, &qword_1003AFCE0);
      v59(v50, v5);
      sub_100009EBC(v48, &qword_1003AFCE0);
      if (v58)
      {
        goto LABEL_20;
      }

LABEL_22:
      v81 = v66;
      v82 = v67;
      v80 = 0;
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_1001441B0(uint64_t a1)
{
  v75 = sub_100005AD4(&qword_1003B2A58);
  v2 = __chkstk_darwin(v75);
  v76 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v58 - v4;
  v5 = sub_100005AD4(&qword_1003AFCE0);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v58 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = __chkstk_darwin(v10);
  v62 = &v58 - v14;
  v15 = __chkstk_darwin(v13);
  v61 = &v58 - v16;
  v17 = __chkstk_darwin(v15);
  v63 = &v58 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v58 - v20;
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = type metadata accessor for Locale();
  v25 = __chkstk_darwin(v24);
  v60 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v82 = &v58 - v28;
  v29 = *(a1 + 16);
  if (v29)
  {
    v31 = *(v27 + 16);
    v30 = v27 + 16;
    v73 = v31;
    v32 = (a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64)));
    v80 = (v30 + 40);
    v70 = (v30 + 32);
    v67 = *(v30 + 56);
    v59 = (v30 + 16);
    v74 = v30;
    v71 = v23;
    v72 = v21;
    v65 = v12;
    v69 = (v30 - 8);
    do
    {
      v77 = v29;
      v34 = v82;
      v35 = v73;
      v73(v82, v32, v24);
      v79 = sub_100005AD4(&qword_1003B2F58);
      Binding.wrappedValue.getter();
      v35(v21, v34, v24);
      v78 = *v80;
      v78(v21, 0, 1, v24);
      v36 = *(v75 + 48);
      v37 = v68;
      sub_10001F620(v23, v68, &qword_1003AFCE0);
      sub_10001F620(v21, v37 + v36, &qword_1003AFCE0);
      v38 = *v70;
      if ((*v70)(v37, 1, v24) == 1)
      {
        sub_100009EBC(v21, &qword_1003AFCE0);
        sub_100009EBC(v23, &qword_1003AFCE0);
        if (v38(v37 + v36, 1, v24) != 1)
        {
          goto LABEL_11;
        }

        sub_100009EBC(v37, &qword_1003AFCE0);
      }

      else
      {
        v39 = v63;
        sub_10001F620(v37, v63, &qword_1003AFCE0);
        if (v38(v37 + v36, 1, v24) == 1)
        {
          sub_100009EBC(v72, &qword_1003AFCE0);
          sub_100009EBC(v71, &qword_1003AFCE0);
          (*v69)(v39, v24);
LABEL_11:
          sub_100009EBC(v37, &qword_1003B2A58);
LABEL_12:
          v64 = *(type metadata accessor for LanguagePickerSection() + 20);
          v40 = v65;
          Binding.wrappedValue.getter();
          v41 = v66;
          v73(v66, v82, v24);
          v78(v41, 0, 1, v24);
          v42 = v76;
          v43 = *(v75 + 48);
          sub_10001F620(v40, v76, &qword_1003AFCE0);
          sub_10001F620(v41, v42 + v43, &qword_1003AFCE0);
          if (v38(v42, 1, v24) == 1)
          {
            sub_100009EBC(v41, &qword_1003AFCE0);
            sub_100009EBC(v40, &qword_1003AFCE0);
            v44 = v38(v76 + v43, 1, v24);
            v23 = v71;
            v45 = v69;
            if (v44 == 1)
            {
              sub_100009EBC(v76, &qword_1003AFCE0);
LABEL_22:
              v55 = v61;
              v78(v61, 1, 1, v24);
              sub_10001F620(v55, v62, &qword_1003AFCE0);
              Binding.wrappedValue.setter();
              sub_100009EBC(v55, &qword_1003AFCE0);
              (*v45)(v82, v24);
              goto LABEL_5;
            }

LABEL_17:
            sub_100009EBC(v76, &qword_1003B2A58);
            v48 = *v45;
          }

          else
          {
            v46 = v76;
            v47 = v58;
            sub_10001F620(v76, v58, &qword_1003AFCE0);
            if (v38(v46 + v43, 1, v24) == 1)
            {
              sub_100009EBC(v66, &qword_1003AFCE0);
              sub_100009EBC(v65, &qword_1003AFCE0);
              v45 = v69;
              (*v69)(v47, v24);
              v23 = v71;
              goto LABEL_17;
            }

            v52 = v76;
            v53 = v60;
            (*v59)(v60, v76 + v43, v24);
            sub_100145F50(&unk_1003B06F0);
            v54 = dispatch thunk of static Equatable.== infix(_:_:)();
            v45 = v69;
            v48 = *v69;
            (*v69)(v53, v24);
            sub_100009EBC(v66, &qword_1003AFCE0);
            sub_100009EBC(v65, &qword_1003AFCE0);
            v48(v47, v24);
            sub_100009EBC(v52, &qword_1003AFCE0);
            v23 = v71;
            if (v54)
            {
              goto LABEL_22;
            }
          }

          v48(v82, v24);
          goto LABEL_5;
        }

        v49 = v60;
        (*v59)(v60, v37 + v36, v24);
        sub_100145F50(&unk_1003B06F0);
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *v69;
        (*v69)(v49, v24);
        sub_100009EBC(v72, &qword_1003AFCE0);
        sub_100009EBC(v71, &qword_1003AFCE0);
        v51(v63, v24);
        sub_100009EBC(v68, &qword_1003AFCE0);
        if ((v50 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v33 = v61;
      v78(v61, 1, 1, v24);
      sub_10001F620(v33, v62, &qword_1003AFCE0);
      Binding.wrappedValue.setter();
      sub_100009EBC(v33, &qword_1003AFCE0);
      (*v69)(v82, v24);
      v23 = v71;
LABEL_5:
      v32 += v67;
      v29 = v77 - 1;
      v21 = v72;
    }

    while (v77 != 1);
  }

  v56 = (v81 + *(type metadata accessor for LanguagePickerSection() + 32));
  v84 = *v56;
  v85 = *(v56 + 1);
  v83 = _swiftEmptyArrayStorage;
  sub_100005AD4(&qword_1003B3090);
  return Binding.wrappedValue.setter();
}

BOOL sub_100144BE8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F620(a1, v4, &qword_1003AFCE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009EBC(v4, &qword_1003AFCE0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = type metadata accessor for LanguagePickerSection();
    __chkstk_darwin(v9);
    *&v14[-16] = v8;
    v11 = sub_100199188(sub_10014651C, &v14[-32], v10);
    (*(v6 + 8))(v8, v5);
    if (v11)
    {
      v12 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

      return v12 == 2;
    }
  }

  return 0;
}

BOOL sub_100144E04(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100005AD4(&qword_1003AFCE0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  (*(v3 + 16))(&v17[-v10], a1, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  sub_10001F620(v11, v9, &qword_1003AFCE0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_100009EBC(v11, &qword_1003AFCE0);
    sub_100009EBC(v9, &qword_1003AFCE0);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v12 = type metadata accessor for LanguagePickerSection();
    __chkstk_darwin(v12);
    *&v17[-16] = v5;
    v14 = sub_100199188(sub_10014651C, &v17[-32], v13);
    sub_100009EBC(v11, &qword_1003AFCE0);
    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

      return v15 == 1;
    }
  }

  return 0;
}

uint64_t sub_1001450C0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LanguageSelectionDownloadModel.locale.getter();
  v4 = Locale.identifier.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == Locale.identifier.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100145204@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_100005AD4(&qword_1003B3108);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v39 - v3;
  v5 = sub_100005AD4(&qword_1003B3110);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  __chkstk_darwin(v9);
  v40 = &v39 - v12;
  v13 = type metadata accessor for LabeledContentStyleConfiguration.Label();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v39 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  LabeledContentStyleConfiguration.label.getter();
  LabeledContentStyleConfiguration.content.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v4[*(sub_100005AD4(&qword_1003B3118) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = &v4[*(v2 + 44)];
  v22 = *(sub_100005AD4(&qword_1003B3120) + 28);
  v23 = enum case for Text.TruncationMode.tail(_:);
  v24 = type metadata accessor for Text.TruncationMode();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023BD4(v4, v11, &qword_1003B3108);
  v25 = &v11[*(v6 + 44)];
  v26 = v49;
  *(v25 + 4) = v48;
  *(v25 + 5) = v26;
  *(v25 + 6) = v50;
  v27 = v45;
  *v25 = v44;
  *(v25 + 1) = v27;
  v28 = v47;
  *(v25 + 2) = v46;
  *(v25 + 3) = v28;
  v29 = v40;
  sub_100023BD4(v11, v40, &qword_1003B3110);
  v30 = *(v14 + 16);
  v31 = v39;
  v30(v39, v18, v13);
  v43 = 0;
  v32 = v41;
  sub_10001F620(v29, v41, &qword_1003B3110);
  v33 = v42;
  v30(v42, v31, v13);
  v34 = sub_100005AD4(&qword_1003B3128);
  v35 = &v33[*(v34 + 48)];
  v36 = v43;
  *v35 = 0x4020000000000000;
  v35[8] = v36;
  sub_10001F620(v32, &v33[*(v34 + 64)], &qword_1003B3110);
  sub_100009EBC(v29, &qword_1003B3110);
  v37 = *(v14 + 8);
  v37(v18, v13);
  sub_100009EBC(v32, &qword_1003B3110);
  return (v37)(v31, v13);
}

uint64_t sub_10014564C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100005AD4(&qword_1003B3100);
  return sub_100145204((a1 + *(v2 + 44)));
}

uint64_t sub_1001456B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100145718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001457F0()
{
  result = qword_1003B3070;
  if (!qword_1003B3070)
  {
    sub_100005EA8(&qword_1003B3038);
    sub_10014587C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3070);
  }

  return result;
}

unint64_t sub_10014587C()
{
  result = qword_1003B3078;
  if (!qword_1003B3078)
  {
    sub_100005EA8(&qword_1003B3080);
    sub_10001BAEC(&qword_1003B3068, &qword_1003B3060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3078);
  }

  return result;
}

uint64_t sub_100145950(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LanguagePickerSection() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1001459EC(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for LanguagePickerSection() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10014383C(a1, a2, v6);
}

uint64_t sub_100145A6C(uint64_t a1, uint64_t *a2)
{
  result = type metadata accessor for LanguagePickerSection() - 8;
  if (!*(*a1 + 16))
  {
    result = *a2;
    if (*(*a2 + 16))
    {
      return sub_1001441B0(result);
    }
  }

  return result;
}

unint64_t sub_100145AF0()
{
  result = qword_1003B3098;
  if (!qword_1003B3098)
  {
    sub_100005EA8(&qword_1003B2FE8);
    sub_100145F50(&unk_1003B06F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3098);
  }

  return result;
}

uint64_t sub_100145B90()
{
  v1 = type metadata accessor for LanguagePickerSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v15 = v0;
  v4 = v0 + v3;

  v5 = sub_100005AD4(&qword_1003B2F58);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v4 + *(v1 + 20);

  v11 = *(v5 + 32);
  if (!v9(v10 + v11, 1, v7))
  {
    (*(v8 + 8))(v10 + v11, v7);
  }

  v12 = v4 + *(v1 + 44);
  if (!v9(v12, 1, v7))
  {
    (*(v8 + 8))(v12, v7);
  }

  sub_100005AD4(&qword_1003B2F60);

  return _swift_deallocObject(v15, v3 + v14, v2 | 7);
}

uint64_t sub_100145E08()
{
  v1 = *(type metadata accessor for LanguagePickerSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100143388(v2);
}

uint64_t sub_100145EC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(&qword_1003AFCE0);
    sub_100145F50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100145F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100145F94()
{
  result = qword_1003B30C0;
  if (!qword_1003B30C0)
  {
    sub_100005EA8(&qword_1003B30B0);
    type metadata accessor for Locale();
    sub_100145F50(&qword_1003AED28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B30C0);
  }

  return result;
}

unint64_t sub_100146078()
{
  result = qword_1003B30D0;
  if (!qword_1003B30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B30D0);
  }

  return result;
}

uint64_t sub_1001460D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B30A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146178()
{
  sub_100005EA8(&qword_1003B3058);
  sub_100005EA8(&qword_1003B2FE8);
  sub_100005EA8(&qword_1003B3050);
  sub_100005EA8(&qword_1003B3048);
  sub_100005EA8(&qword_1003AA540);
  sub_100005EA8(&qword_1003B3040);
  sub_100005EA8(&qword_1003AFCE0);
  sub_100005EA8(&qword_1003B3038);
  sub_1001457F0();
  sub_100145EC8(&qword_1003B3088, &unk_1003B06F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100145AF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001463F8(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_100146550(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3140);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001465DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3140);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100146678()
{
  sub_1001466E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001466E4()
{
  if (!qword_1003B31B0)
  {
    type metadata accessor for PersonalTranslatorStartViewModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B31B0);
    }
  }
}

Swift::Int sub_100146758()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LaunchConfigurationButtons.TranslateCondition(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10014862C(v1, v8, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    Hasher._combine(_:)(v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_100148160(&qword_1003AED28, &type metadata accessor for Locale);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_100146954()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014862C(v0, v7, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    Hasher._combine(_:)(v9);
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_100148160(&qword_1003AED28, &type metadata accessor for Locale);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int sub_100146B2C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10014862C(v1, v8, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    Hasher._combine(_:)(v10);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_100148160(&qword_1003AED28, &type metadata accessor for Locale);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_100146D30@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_100005AD4(&qword_1003B3140);
  v64 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63 = &v53 - v3;
  v4 = type metadata accessor for BorderedProminentButtonStyle();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LaunchConfigurationButtons.TranslateCondition(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = type metadata accessor for LaunchConfigurationButtons(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_100005AD4(&qword_1003B31E0);
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v56 = sub_100005AD4(&qword_1003B31E8);
  __chkstk_darwin(v56);
  v19 = &v53 - v18;
  v20 = sub_100005AD4(&qword_1003B31F0);
  v58 = *(v20 - 8);
  v59 = v20;
  __chkstk_darwin(v20);
  v57 = &v53 - v21;
  v66 = sub_100005AD4(&qword_1003B31F8);
  __chkstk_darwin(v66);
  v67 = &v53 - v22;
  sub_10014862C(v1, &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LaunchConfigurationButtons);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_100147F98(&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LaunchConfigurationButtons);
  sub_100005AD4(&qword_1003B3200);
  sub_100147C58();
  Button.init(action:label:)();
  Bindable.wrappedValue.getter();
  sub_1001C4B2C(v11);

  sub_100147F98(v11, v9, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  v25 = type metadata accessor for Locale();
  v26 = (*(*(v25 - 8) + 48))(v9, 2, v25);
  if (!v26)
  {
    sub_100148000(v9);
    goto LABEL_9;
  }

  if (v26 != 1)
  {
LABEL_9:
    v31 = 1;
    goto LABEL_12;
  }

  sub_100148000(v9);
  Bindable.wrappedValue.getter();
  v27 = v69;
  swift_getKeyPath();
  v69 = v27;
  sub_100148160(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + 40);

  if ((v28 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    if (!sub_1001C5120())
    {
LABEL_10:

      goto LABEL_11;
    }

    v29 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

    if (v29 == 2)
    {
      Bindable.wrappedValue.getter();
      if (sub_1001C5164())
      {
        v30 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

        v31 = v30 != 2;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v31 = 1;
LABEL_12:
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  (*(v54 + 32))(v19, v17, v55);
  v34 = &v19[*(v56 + 36)];
  *v34 = KeyPath;
  v34[1] = sub_10005CDFC;
  v34[2] = v33;
  v35 = v60;
  BorderedProminentButtonStyle.init()();
  sub_10014807C();
  sub_100148160(&qword_1003B3288, &type metadata accessor for BorderedProminentButtonStyle);
  v36 = v57;
  v37 = v62;
  View.buttonStyle<A>(_:)();
  (*(v61 + 8))(v35, v37);
  sub_100009EBC(v19, &qword_1003B31E8);
  v38 = static Color.translateAccentColor.getter();
  v39 = swift_getKeyPath();
  v69 = v38;
  v40 = AnyShapeStyle.init<A>(_:)();
  v41 = v67;
  (*(v58 + 32))(v67, v36, v59);
  v42 = &v41[*(v66 + 36)];
  *v42 = v39;
  v42[1] = v40;
  Bindable.wrappedValue.getter();
  v43 = v69;
  swift_getKeyPath();
  v69 = v43;
  sub_100148160(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 42);

  if (v44 == 2)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  else
  {
    v45 = sub_1001C3C3C(v44 & 1);
    v46 = v47;
  }

  v70 = v45;
  v71 = v46;
  v48 = v63;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v64 + 8))(v48, v2);
  Bindable.wrappedValue.getter();
  v49 = v68;
  swift_getKeyPath();
  v68 = v49;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v49 + 42);

  LOBYTE(v68) = v50;
  sub_100005AD4(&qword_1003AA540);
  sub_1001481C0();
  sub_10001F278();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  v51 = v67;
  View.alert<A, B, C, D>(_:isPresented:presenting:actions:message:)();

  return sub_100148304(v51);
}

uint64_t sub_100147764()
{
  sub_100005AD4(&qword_1003B3140);
  Bindable.wrappedValue.getter();
  sub_1001C5BF4();
}

uint64_t sub_1001477B8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001002F5EE0;
  v4.value._object = 0x80000001002F0080;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v34);

  sub_10001F278();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10002EA54(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v27[55] = v30;
  *&v27[71] = v31;
  *&v27[87] = v32;
  *&v27[103] = v33;
  *&v27[7] = v6;
  *&v27[23] = v28;
  *&v27[39] = v29;
  v21 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 113) = *&v27[48];
  *(a1 + 97) = *&v27[32];
  *(a1 + 81) = *&v27[16];
  *(a1 + 65) = *v27;
  *(a1 + 176) = *(&v33 + 1);
  *(a1 + 161) = *&v27[96];
  *(a1 + 145) = *&v27[80];
  *(a1 + 129) = *&v27[64];
  *(a1 + 184) = v21;
  *(a1 + 192) = v23;
  *(a1 + 200) = v24;
  *(a1 + 208) = v25;
  *(a1 + 216) = v26;
  *(a1 + 224) = 0;
  return result;
}

uint64_t sub_100147A38(char *a1)
{
  sub_1001C3DE0(*a1);
  sub_10001F278();
  return Button<>.init<A>(_:action:)();
}

uint64_t sub_100147AA0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001C3EB4(*a1);
  sub_10001F278();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100147B20()
{
  v1 = *(type metadata accessor for LaunchConfigurationButtons(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100005AD4(&qword_1003B3140);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100147BF8()
{
  type metadata accessor for LaunchConfigurationButtons(0);

  return sub_100147764();
}

unint64_t sub_100147C58()
{
  result = qword_1003B3208;
  if (!qword_1003B3208)
  {
    sub_100005EA8(&qword_1003B3200);
    sub_100147D10();
    sub_10001BAEC(&qword_1003B3260, &qword_1003B3268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3208);
  }

  return result;
}

unint64_t sub_100147D10()
{
  result = qword_1003B3210;
  if (!qword_1003B3210)
  {
    sub_100005EA8(&qword_1003B3218);
    sub_100147D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3210);
  }

  return result;
}

unint64_t sub_100147D9C()
{
  result = qword_1003B3220;
  if (!qword_1003B3220)
  {
    sub_100005EA8(&qword_1003B3228);
    sub_100147E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3220);
  }

  return result;
}

unint64_t sub_100147E28()
{
  result = qword_1003B3230;
  if (!qword_1003B3230)
  {
    sub_100005EA8(&qword_1003B3238);
    sub_100147EE0();
    sub_10001BAEC(&qword_1003B3250, &qword_1003B3258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3230);
  }

  return result;
}

unint64_t sub_100147EE0()
{
  result = qword_1003B3240;
  if (!qword_1003B3240)
  {
    sub_100005EA8(&qword_1003B3248);
    sub_10001BAEC(&qword_1003B1830, &qword_1003B1838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3240);
  }

  return result;
}

uint64_t sub_100147F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100148000(uint64_t a1)
{
  v2 = type metadata accessor for LaunchConfigurationButtons.TranslateCondition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10014807C()
{
  result = qword_1003B3278;
  if (!qword_1003B3278)
  {
    sub_100005EA8(&qword_1003B31E8);
    sub_10001BAEC(&qword_1003B3280, &qword_1003B31E0);
    sub_10001BAEC(&qword_1003B15C8, &qword_1003B15D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3278);
  }

  return result;
}

uint64_t sub_100148160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001481C0()
{
  result = qword_1003B3290;
  if (!qword_1003B3290)
  {
    sub_100005EA8(&qword_1003B31F8);
    sub_100005EA8(&qword_1003B31E8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10014807C();
    sub_100148160(&qword_1003B3288, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA590, &qword_1003AA598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3290);
  }

  return result;
}

uint64_t sub_100148304(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B31F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100148390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100148410(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100148494()
{
  v0 = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1001484EC()
{
  sub_100005EA8(&qword_1003B31F8);
  sub_100005EA8(&qword_1003AA540);
  sub_1001481C0();
  sub_10001F278();
  sub_10001BAEC(&qword_1003AA548, &qword_1003AA540);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10014862C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100148694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LaunchConfigurationButtons.TranslateCondition(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&qword_1003B3340);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10014862C(a1, &v21 - v13, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  sub_10014862C(a2, &v14[v15], type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_10014862C(v14, v10, type metadata accessor for LaunchConfigurationButtons.TranslateCondition);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = static Locale.== infix(_:_:)();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_100148000(v14);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_100009EBC(v14, &qword_1003B3340);
    v18 = 0;
    return v18 & 1;
  }

  sub_100148000(v14);
  v18 = 1;
  return v18 & 1;
}

id sub_10014897C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType];
  *v9 = 0;
  v9[8] = -1;
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_languageDownloadPresenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_stack] = v10;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_titleLabel] = v11;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_descriptionLabel] = v12;
  v13 = [objc_opt_self() buttonWithType:0];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button] = v13;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for LegacyInlineTranslationTabErrorView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_100148BA4();

  return v14;
}

id sub_100148BA4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_stack;
  v40 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_stack;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_stack] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_titleLabel;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_descriptionLabel;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_descriptionLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setAxis:1];
  [*&v0[v1] setDistribution:3];
  [*&v0[v1] setAlignment:3];
  [*&v0[v1] setSpacing:8.0];
  [*&v0[v1] setLayoutMarginsRelativeArrangement:1];
  [*&v0[v1] setLayoutMargins:{0.0, 8.0, 0.0, 8.0}];
  [*&v0[v1] setInsetsLayoutMarginsFromSafeArea:0];
  [v0 addSubview:*&v0[v1]];
  [*&v0[v2] setTextAlignment:1];
  v42 = v2;
  [*&v0[v2] setNumberOfLines:0];
  v3 = *&v0[v2];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:0];
  v39 = objc_opt_self();
  [v6 pointSize];
  v7 = [v39 systemFontOfSize:? weight:?];
  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
  v38 = objc_opt_self();
  v9 = UIContentSizeCategoryExtraExtraLarge;
  v10 = [v38 traitCollectionWithPreferredContentSizeCategory:v9];
  v11 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 compatibleWithTraitCollection:v10];

  [v11 pointSize];
  v13 = v12;

  v14 = [v8 scaledFontForFont:v7 maximumPointSize:v13];
  [v5 setFont:v14];

  v15 = *&v0[v42];
  v37 = objc_opt_self();
  v16 = v15;
  v17 = [v37 labelColor];
  [v16 setTextColor:v17];

  [*&v0[v42] setAdjustsFontSizeToFitWidth:1];
  [*&v0[v43] setTextAlignment:1];
  [*&v0[v43] setNumberOfLines:0];
  v18 = *&v0[v43];
  v19 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:0];
  [v19 pointSize];
  v20 = [v39 systemFontOfSize:? weight:?];
  v21 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v22 = v9;
  v23 = [v38 traitCollectionWithPreferredContentSizeCategory:v22];
  v24 = [v4 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v23];

  [v24 pointSize];
  v26 = v25;

  v27 = [v21 scaledFontForFont:v20 maximumPointSize:v26];
  [v18 setFont:v27];

  v28 = *&v0[v43];
  v29 = [v37 secondaryLabelColor];
  [v28 setTextColor:v29];

  [*&v0[v43] setAdjustsFontSizeToFitWidth:1];
  [*&v0[v43] setMinimumScaleFactor:0.01];
  [*&v0[v41] setHidden:1];
  v30 = *&v0[v41];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v37 colorNamed:v31];

  [v30 setTitleColor:v32 forState:0];
  v33 = *&v0[v40];
  sub_1002C31A4(v33);

  [*&v0[v40] addArrangedSubview:*&v0[v42]];
  [*&v0[v40] addArrangedSubview:*&v0[v43]];
  v34 = *&v0[v40];
  v35 = *&v0[v41];

  return [v34 addArrangedSubview:v35];
}

void sub_100149214()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v62 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType + 8);
  if (v8 != 255)
  {
    v9 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType);
    v68 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_errorType + 8);
    v67 = v9;
    if (v8)
    {
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 mainBundle];
      v70._object = 0x80000001002F5FA0;
      v13._countAndFlagsBits = 0x43495645445F4E4FLL;
      v13._object = 0xEF454C5449545F45;
      v70._countAndFlagsBits = 0xD000000000000019;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v70);

      v15 = [v10 mainBundle];
      v71._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0xD000000000000015;
      v16._object = 0x80000001002F4200;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v71._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v71);

      v18 = [v10 mainBundle];
      v72._object = 0xE000000000000000;
      v19._object = 0xEE004B4E494C5F45;
      v19._countAndFlagsBits = 0x43495645445F4E4FLL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v72._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v72);

      v21 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_titleLabel);
      v22 = String._bridgeToObjectiveC()();

      [v21 setText:v22];

      v23 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_descriptionLabel);
      v24 = String._bridgeToObjectiveC()();

      [v23 setText:v24];

      v25 = OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button;
      v26 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button);
      v27 = String._bridgeToObjectiveC()();

      [v26 setTitle:v27 forState:0];

      [*(v0 + v25) addTarget:v0 action:"onDeviceLinkTapped" forControlEvents:0x2000];
      [*(v0 + v25) setHidden:0];
      v28 = v67;
      v29 = v68;

      sub_10011C8FC(v28, v29);
    }

    else
    {
      v30 = objc_opt_self();
      v63 = v30;
      v31 = v9;
      v32 = [v30 mainBundle];
      v73._object = 0x80000001002F5FC0;
      v33._object = 0x80000001002F4240;
      v73._countAndFlagsBits = 0xD000000000000018;
      v33._countAndFlagsBits = 0xD000000000000010;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v73);
      object = v35._object;
      countAndFlagsBits = v35._countAndFlagsBits;

      v36 = [v31 sourceLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      static Locale.current.getter();
      v64 = v0;
      v37 = Locale.sqDisplayName(context:in:)();
      v39 = v38;
      v40 = *(v2 + 8);
      v40(v5, v1);
      v40(v7, v1);
      if (v39)
      {
        v41 = v37;
      }

      else
      {
        v41 = 0x45474155474E414CLL;
      }

      if (v39)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0xE800000000000000;
      }

      v43 = [v31 targetLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      static Locale.current.getter();
      v44 = Locale.sqDisplayName(context:in:)();
      v46 = v45;
      v40(v5, v1);
      v40(v7, v1);
      if (v46)
      {
        v47 = v44;
      }

      else
      {
        v47 = 0x45474155474E414CLL;
      }

      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0xE800000000000000;
      }

      v49 = [v63 mainBundle];
      v74._object = 0x80000001002F5FE0;
      v50._countAndFlagsBits = 0xD000000000000014;
      v50._object = 0x80000001002F4260;
      v74._countAndFlagsBits = 0xD00000000000001FLL;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v74);

      sub_100005AD4(&qword_1003A9AB0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1002D1370;
      *(v52 + 56) = &type metadata for String;
      v53 = sub_100031CD0();
      v54 = v62[0];
      *(v52 + 32) = v62[1];
      *(v52 + 40) = v54;
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = v53;
      *(v52 + 64) = v53;
      *(v52 + 72) = v47;
      *(v52 + 80) = v48;
      String.init(format:_:)();

      v55 = v64;
      v56 = *(v64 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_titleLabel);
      v57 = String._bridgeToObjectiveC()();

      [v56 setText:v57];

      v58 = *(v55 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_descriptionLabel);
      v59 = String._bridgeToObjectiveC()();

      [v58 setText:v59];

      [*(v55 + OBJC_IVAR____TtC17SequoiaTranslator35LegacyInlineTranslationTabErrorView_button) setHidden:1];
      v60 = v67;
      v61 = v68;
      sub_10011C8FC(v67, v68);
      sub_10011C8FC(v60, v61);
    }
  }
}

id sub_1001499DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyInlineTranslationTabErrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100149AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_confirmationView;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for ConfirmationView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_hintButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:0];
  v8 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer;
  *&v3[v8] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = &v3[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_speakButtonFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_showsSettingsButton] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_languageDownloadPresenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_sourceLocale;
  v11 = type metadata accessor for Locale();
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  v12(&v3[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_targetLocale], 1, 1, v11);
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for LIDConfirmationController();
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v13, a3);

  v15 = v14;
  [v15 setModalPresentationStyle:6];
  [v15 setModalTransitionStyle:2];

  return v15;
}

void sub_100149E04()
{
  v1 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v65 - v2;
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.11372549 blue:0.11372549 alpha:0.49];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer];
  v71 = objc_opt_self();
  v8 = [v71 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setAxis:1];
  [v7 setDistribution:3];
  [v7 setAlignment:0];
  v70 = v7;
  [v7 setSpacing:1.17549435e-38];
  v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"backgroundTappedWithRecognizer:"];
  [v9 setDelegate:v0];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v66 = v9;
  [v10 addGestureRecognizer:v9];

  v12 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_confirmationView];
  v13 = *(v12 + OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_titleLabel);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v72._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x474E494B41455053;
  v17._object = 0xEE0048434948575FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v72);

  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];

  v20 = *(v12 + OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option1Button);
  v21 = OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option1Button;
  v69 = OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option1Button;
  v22 = v20;
  v23 = String._bridgeToObjectiveC()();
  [v22 setTitle:v23 forState:0];

  [*(v12 + v21) addTarget:v0 action:"optionButtonPressedWithSender:" forControlEvents:64];
  v24 = OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option2Button;
  v25 = *(v12 + OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option2Button);
  v26 = String._bridgeToObjectiveC()();
  [v25 setTitle:v26 forState:0];

  [*(v12 + v24) addTarget:v0 action:"optionButtonPressedWithSender:" forControlEvents:64];
  v68 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = [v14 mainBundle];
  v73._object = 0x80000001002F6110;
  v28._object = 0x80000001002F60F0;
  v73._countAndFlagsBits = 0xD00000000000002CLL;
  v28._countAndFlagsBits = 0xD000000000000010;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v73)._countAndFlagsBits;

  v30 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  v31 = objc_opt_self();
  [v30 pointSize];
  v32 = [v31 systemFontOfSize:? weight:?];
  v33 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
  v34 = [v33 scaledFontForFont:v32 maximumPointSize:1.79769313e308];

  sub_100005AD4(&unk_1003BBD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D1370;
  *(inited + 32) = NSFontAttributeName;
  v36 = sub_10000A2CC(0, qword_1003B2390);
  *(inited + 40) = v34;
  *(inited + 64) = v36;
  *(inited + 72) = NSForegroundColorAttributeName;
  v37 = NSFontAttributeName;
  v65 = v34;
  v38 = NSForegroundColorAttributeName;
  v39 = [v71 lightTextColor];
  *(inited + 104) = sub_10000A2CC(0, &qword_1003B2990);
  *(inited + 80) = v39;
  sub_100292588(inited);
  swift_setDeallocating();
  sub_100005AD4(&qword_1003B3490);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10013B81C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  v44 = v68;
  [v68 appendAttributedString:v43];

  v45 = *(v12 + v69);
  v46 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_sourceLocale;
  swift_beginAccess();
  sub_1000E1D20(&v0[v46], v3);
  v47 = v45;
  sub_10014B488(v47, v3);

  sub_1000E20D4(v3);
  v48 = *(v12 + v24);
  v49 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_targetLocale;
  swift_beginAccess();
  sub_1000E1D20(&v0[v49], v3);
  v50 = v48;
  sub_10014B488(v50, v3);

  sub_1000E20D4(v3);
  v51 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_hintButton];
  v52 = [v51 titleLabel];
  if (v52)
  {
    v53 = v52;
    [v52 setTextAlignment:1];
  }

  v54 = [v51 titleLabel];
  if (v54)
  {
    v55 = v54;
    [v54 setNumberOfLines:0];
  }

  v56 = [v51 titleLabel];
  if (v56)
  {
    v57 = v56;
    [v56 setAdjustsFontForContentSizeCategory:1];
  }

  [v51 setAttributedTitle:v44 forState:0];
  v58 = [v51 titleLabel];
  if (v58)
  {
    v59 = v58;
    [v58 setAdjustsFontSizeToFitWidth:1];
  }

  v60 = [v51 titleLabel];
  if (v60)
  {
    v61 = v60;
    [v60 setMinimumScaleFactor:0.1];
  }

  [v51 setHidden:(v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_showsSettingsButton] & 1) == 0];
  [v51 addTarget:v0 action:"hintTapped" forControlEvents:64];
  v62 = [v0 view];
  if (v62)
  {
    v63 = v62;

    v64 = v70;
    [v63 addSubview:v70];

    [v64 addArrangedSubview:v12];
    [v64 addArrangedSubview:v51];
    [v64 setCustomSpacing:v12 afterView:12.0];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_10014A798()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_hintButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_confirmationView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 titleLabel];
  if (v4)
  {
    v5 = v4;
    sub_1002C31A4(v4);
  }

  sub_100005AD4(&unk_1003AFCC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D53E0;
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 widthAnchor];

  v10 = [v9 constraintGreaterThanOrEqualToConstant:220.0];
  *(v6 + 32) = v10;
  v11 = [v2 centerYAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v6 + 40) = v15;
  v16 = [v2 leadingAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 constant:24.0];
  *(v6 + 48) = v20;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 trailingAnchor];

  v25 = [v2 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:24.0];

  *(v6 + 56) = v26;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

void sub_10014AAE4()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AFCE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Locale();
  v30 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  sub_10000A2CC(0, &qword_1003B2A60);
  v13 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_confirmationView);
  v14 = *(v13 + OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option1Button);
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    v16 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_sourceLocale;
    swift_beginAccess();
    sub_1000E1D20(v1 + v16, v7);
    v17 = v30;
    if ((*(v30 + 48))(v7, 1, v8) == 1)
    {
      sub_1000E20D4(v7);
    }

    else
    {
      (*(v17 + 32))(v12, v7, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        isa = Locale._bridgeToObjectiveC()().super.isa;
        [v19 lidConfirmedWithLocale:isa];
        swift_unknownObjectRelease();
      }

      (*(v17 + 8))(v12, v8);
    }
  }

  v21 = *(v13 + OBJC_IVAR____TtC17SequoiaTranslator16ConfirmationView_option2Button);
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {
    v23 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_targetLocale;
    swift_beginAccess();
    sub_1000E1D20(v1 + v23, v5);
    v24 = v30;
    if ((*(v30 + 48))(v5, 1, v8) == 1)
    {
      sub_1000E20D4(v5);
    }

    else
    {
      v25 = v29;
      (*(v24 + 32))(v29, v5, v8);
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        v27 = v26;
        v28 = Locale._bridgeToObjectiveC()().super.isa;
        [v27 lidConfirmedWithLocale:v28];
        swift_unknownObjectRelease();
      }

      (*(v24 + 8))(v25, v8);
    }
  }
}

uint64_t sub_10014AF54()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong cancelConfirmation];
    swift_unknownObjectRelease();
  }

  v2 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_languageDownloadPresenter;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10014B040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LIDConfirmationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LIDConfirmationController()
{
  result = qword_1003B3400;
  if (!qword_1003B3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014B168()
{
  sub_1000E1CC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10014B2C8()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_confirmationView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ConfirmationView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_hintButton;
  *(v0 + v2) = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_speakButtonFrame;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_showsSettingsButton) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_languageDownloadPresenter + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_sourceLocale;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_targetLocale, 1, 1, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10014B488(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_1000E1D20(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000E20D4(v6);
  }

  (*(v8 + 32))(v13, v6, v7);
  v15 = Locale.languageCode.getter();
  if (!v16)
  {
    return (*(v8 + 8))(v13, v7);
  }

  v17 = v15;
  v18 = v16;
  static Locale.current.getter();
  v19._countAndFlagsBits = v17;
  v19._object = v18;
  object = Locale.localizedString(forLanguageCode:)(v19).value._object;

  v21 = *(v8 + 8);
  v21(v11, v7);
  if (object)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [a1 setTitle:v22 forState:0];

  return (v21)(v13, v7);
}

id sub_10014B984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LIDDisambiguationView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014BA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B34C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10014BACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B34C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LiveActivityErrorView()
{
  result = qword_1003B3528;
  if (!qword_1003B3528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014BBC4()
{
  sub_10014BC80(319, &qword_1003B24A0, type metadata accessor for LiveActivityViewModel);
  if (v0 <= 0x3F)
  {
    sub_10014BC80(319, &unk_1003B3538, &type metadata accessor for OpenURLAction);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10014BC80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10014BCF0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B3580);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LiveActivityErrorView();
  sub_10001F620(v1 + *(v10 + 20), v9, &qword_1003B3580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10014BEF8()
{
  v1 = type metadata accessor for Locale();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v44 - v5;
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v14 = sub_100159F68();

  if (v14 <= 3u)
  {
    if (v14 <= 1u)
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      if ((v12 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v33 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v9 + 8))(v11, v8);
      }

      sub_100157D90(v6);

      static Locale.current.getter();
      v34 = Locale.sqDisplayName(context:in:)();
      v28 = v35;
      v36 = *(v44 + 8);
      v37 = v4;
      v38 = v45;
      v36(v37, v45);
      v36(v6, v38);
      if (v28)
      {
        v32 = v34;
      }

      else
      {
        v32 = 0x45474155474E414CLL;
      }

      if (!v28)
      {
        v28 = 0xE800000000000000;
      }

LABEL_28:
      v39 = [objc_opt_self() mainBundle];
      v47._object = 0xE000000000000000;
      v40._object = 0x80000001002F6290;
      v40._countAndFlagsBits = 0xD00000000000001CLL;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v47);

      sub_100005AD4(&qword_1003A9AB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1002D3160;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_100031CD0();
      *(v42 + 32) = v32;
      *(v42 + 40) = v28;
      v43 = static String.localizedStringWithFormat(_:_:)();

      return v43;
    }

    if (v14 == 2)
    {

      if ((v12 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v25 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v9 + 8))(v11, v8);
      }

      sub_100158128(v6);

      static Locale.current.getter();
      v26 = Locale.sqDisplayName(context:in:)();
      v28 = v27;
      v29 = *(v44 + 8);
      v30 = v4;
      v31 = v45;
      v29(v30, v45);
      v29(v6, v31);
      if (v28)
      {
        v32 = v26;
      }

      else
      {
        v32 = 0x45474155474E414CLL;
      }

      if (!v28)
      {
        v28 = 0xE800000000000000;
      }

      goto LABEL_28;
    }

LABEL_29:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v14 <= 5u)
  {
    if (v14 == 4)
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = SFLocalizableWAPIStringKeyForKey();

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = [objc_opt_self() mainBundle];
      v46._object = 0xE000000000000000;
      v21._countAndFlagsBits = v17;
      v21._object = v19;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v46._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v46)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    goto LABEL_29;
  }

  if (v14 == 6)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_10014C614()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v9 = sub_100159F68();

  if (v9 != 6 && v9 != 4 && v9)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t (*sub_10014C8B0())()
{
  v1 = v0;
  v2 = type metadata accessor for LiveActivityErrorView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v11 = sub_100159F68();

  if (v11)
  {
    if (v11 == 6)
    {
      v12 = sub_10014D6E4;
    }

    else
    {
      if (v11 != 4)
      {
        return 0;
      }

      v12 = sub_10014D6FC;
    }
  }

  else
  {
    v12 = sub_10014D894;
  }

  sub_10014D618(v1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10014D680(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  return v12;
}

uint64_t sub_10014CB44(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for EnvironmentValues();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpenURLAction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10014BCF0(v14);
  a2(v15);
  OpenURLAction.callAsFunction(_:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  LOBYTE(v8) = *(a1 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v6, v20);
  }

  sub_10015C420(0);
}

uint64_t sub_10014CDE8@<X0>(void *a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_10014D1C0(&v22);
  v42 = *&v23[112];
  v43 = *&v23[128];
  v44 = *&v23[144];
  v45 = *&v23[160];
  v38 = *&v23[48];
  v39 = *&v23[64];
  v40 = *&v23[80];
  v41 = *&v23[96];
  v34 = v22;
  v35 = *v23;
  v36 = *&v23[16];
  v37 = *&v23[32];
  v46[8] = *&v23[112];
  v46[9] = *&v23[128];
  v46[10] = *&v23[144];
  v46[11] = *&v23[160];
  v46[4] = *&v23[48];
  v46[5] = *&v23[64];
  v46[6] = *&v23[80];
  v46[7] = *&v23[96];
  v46[0] = v22;
  v46[1] = *v23;
  v46[2] = *&v23[16];
  v46[3] = *&v23[32];
  sub_10001F620(&v34, __dst, &qword_1003B3570);
  sub_100009EBC(v46, &qword_1003B3570);
  *&v33[135] = v42;
  *&v33[151] = v43;
  *&v33[167] = v44;
  *&v33[183] = v45;
  *&v33[71] = v38;
  *&v33[87] = v39;
  *&v33[103] = v40;
  *&v33[119] = v41;
  *&v33[7] = v34;
  *&v33[23] = v35;
  *&v33[39] = v36;
  *&v33[55] = v37;
  v3 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_10014C614();
  v14 = v13;
  if (!v13)
  {
    v15 = 0;
    v17 = 0;
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v15 = v12;
  v17 = sub_10014C8B0();
  if (!v17)
  {

    v15 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v18 = v16;

  sub_10001AD18(v17);
LABEL_7:
  *(&v20[20] + 1) = *&v33[144];
  *(&v20[22] + 1) = *&v33[160];
  *(&v20[24] + 1) = *&v33[176];
  *(&v20[12] + 1) = *&v33[80];
  *(&v20[14] + 1) = *&v33[96];
  *(&v20[16] + 1) = *&v33[112];
  *(&v20[18] + 1) = *&v33[128];
  *(&v20[4] + 1) = *&v33[16];
  *(&v20[6] + 1) = *&v33[32];
  *(&v20[8] + 1) = *&v33[48];
  *(&v20[10] + 1) = *&v33[64];
  v20[0] = v2;
  v20[1] = 0;
  LOBYTE(v20[2]) = 1;
  v20[26] = *&v33[191];
  *(&v20[2] + 1) = *v33;
  LOBYTE(v20[27]) = v3;
  *(&v20[27] + 1) = v47[0];
  HIDWORD(v20[27]) = *(v47 + 3);
  v20[28] = v5;
  v20[29] = v7;
  v20[30] = v9;
  v20[31] = v11;
  LOBYTE(v20[32]) = 0;
  v20[33] = 0x3FC3333333333333;
  memcpy(__dst, v20, sizeof(__dst));
  sub_10001F620(v20, &v22, &qword_1003B3578);
  sub_10014D590(v15, v14);
  sub_10014D5D4(v15, v14);
  memcpy(a1, __dst, 0x110uLL);
  a1[34] = v15;
  a1[35] = v14;
  a1[36] = v17;
  a1[37] = v18;
  sub_10014D5D4(v15, v14);
  *&v23[145] = *&v33[144];
  *&v23[161] = *&v33[160];
  *v24 = *&v33[176];
  *&v23[81] = *&v33[80];
  *&v23[97] = *&v33[96];
  *&v23[113] = *&v33[112];
  *&v23[129] = *&v33[128];
  *&v23[17] = *&v33[16];
  *&v23[33] = *&v33[32];
  *&v23[49] = *&v33[48];
  *&v23[65] = *&v33[64];
  v22 = v2;
  v23[0] = 1;
  *&v24[15] = *&v33[191];
  *&v23[1] = *v33;
  v25 = v3;
  *v26 = v47[0];
  *&v26[3] = *(v47 + 3);
  v27 = v5;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v31 = 0;
  v32 = 0x3FC3333333333333;
  return sub_100009EBC(&v22, &qword_1003B3578);
}

uint64_t sub_10014D1C0@<X0>(uint64_t a1@<X8>)
{
  v30 = Image.init(_internalSystemName:)();
  v29 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v27 = static Color.translateAccentColor.getter();
  v26 = swift_getKeyPath();
  sub_10014BEF8();
  sub_10001F278();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v25 = v12;

  sub_10002EA54(v2, v4, v6 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v39 = v7;
  *(&v39 + 1) = v9;
  LOBYTE(v40) = v11 & 1;
  *(&v40 + 1) = *v61;
  DWORD1(v40) = *&v61[3];
  *(&v40 + 1) = v25;
  v13 = v35;
  v14 = v36;
  v45 = v36;
  v46 = v37;
  v15 = v37;
  v47 = v38;
  v41 = v32;
  v42 = v33;
  v17 = v32;
  v16 = v33;
  v18 = v34;
  v43 = v34;
  v44 = v35;
  v19 = v35;
  *(a1 + 136) = v36;
  v20 = v47;
  *(a1 + 152) = v46;
  *(a1 + 168) = v20;
  v21 = v40;
  *(a1 + 72) = v41;
  v22 = v43;
  *(a1 + 88) = v42;
  *(a1 + 104) = v22;
  *(a1 + 120) = v19;
  v23 = v38;
  *(a1 + 40) = v39;
  *(a1 + 56) = v21;
  v57 = v14;
  v58 = v15;
  v59 = v23;
  v53 = v17;
  v54 = v16;
  v62 = v11 & 1;
  v48 = 0x3FB999999999999ALL;
  *a1 = v30;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v29;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  *(a1 + 184) = 0x3FB999999999999ALL;
  v49[0] = v7;
  v49[1] = v9;
  v50 = v11 & 1;
  *v51 = *v61;
  *&v51[3] = *&v61[3];
  v52 = v25;
  v55 = v18;
  v56 = v13;
  v60 = 0x3FB999999999999ALL;

  sub_10001F620(&v39, v31, &qword_1003B3588);
  sub_100009EBC(v49, &qword_1003B3588);
}

void *sub_10014D4B8@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v8 = 1;
  sub_10014CDE8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_10001F620(__dst, &v5, &qword_1003B3568);
  sub_100009EBC(v10, &qword_1003B3568);
  memcpy(&v7[7], __dst, 0x130uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x137uLL);
}

uint64_t sub_10014D590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10014D5D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10014D618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityErrorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityErrorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D778()
{
  v1 = (type metadata accessor for LiveActivityErrorView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100005AD4(&qword_1003B3580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10014D8C0()
{
  result = qword_1003B3590;
  if (!qword_1003B3590)
  {
    sub_100005EA8(&qword_1003B3598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3590);
  }

  return result;
}

__n128 sub_10014D938(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10014D94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10014D994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014DA10(void (*a1)(void))
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 8);
  v26 = *v1;
  v14 = v27;

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v25 = v10;
    v17 = v3;
    v18 = a1;
    v19 = v16;
    os_log(_:dso:log:_:_:)();

    a1 = v18;
    v3 = v17;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v26, &qword_1003B35C8);
    v15 = (*(v11 + 8))(v13, v25);
  }

  a1(v15);
  static Locale.current.getter();
  v20 = Locale.sqDisplayName(context:in:)();
  v22 = v21;
  v23 = *(v4 + 8);
  v23(v7, v3);
  v23(v9, v3);

  if (v22)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014DC9C()
{
  v1 = type metadata accessor for Locale();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003B36C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100005AD4(&qword_1003B36D0);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = __chkstk_darwin(v6);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v34 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v0 + 8);
  v43 = *v0;
  v14 = v43;
  v15 = v44;

  v16 = v14;
  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v43, &qword_1003B35C8);
    (*(v11 + 8))(v13, v10);
    v16 = v42;
  }

  v37 = v11;
  swift_getKeyPath();
  v42 = v16;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  v19 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation + 8);
  swift_unknownObjectRetain();

  if (v18)
  {
    ObjectType = swift_getObjectType();
    countAndFlagsBits = (*(v19 + 64))(ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {

    v22 = v14;
    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v43, &qword_1003B35C8);
      (*(v37 + 8))(v13, v10);
      v22 = v42;
    }

    swift_getKeyPath();
    v42 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult;
    swift_beginAccess();
    sub_10001F620(v22 + v24, v5, &qword_1003B36C8);

    v25 = v39;
    if ((*(v38 + 48))(v5, 1, v39) == 1)
    {
      sub_100009EBC(v5, &qword_1003B36C8);

      if ((v15 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v26 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(&v43, &qword_1003B35C8);
        (*(v37 + 8))(v13, v10);
      }

      v27 = v36;
      sub_100157D90(v36);

      v28 = [objc_opt_self() mainBundle];
      v29._countAndFlagsBits = 0x617A696C61636F4CLL;
      v29._object = 0xEB00000000656C62;
      v30._object = 0x80000001002F62D0;
      v30._countAndFlagsBits = 0xD000000000000011;
      countAndFlagsBits = Locale.ltLocalizedAppString(_:table:bundle:)(v30, v29, v28)._countAndFlagsBits;

      (*(v40 + 8))(v27, v41);
    }

    else
    {
      v31 = v34;
      sub_100023BD4(v5, v34, &qword_1003B36D0);
      v32 = v35;
      sub_100023BD4(v31, v35, &qword_1003B36D0);
      countAndFlagsBits = *(v32 + *(v25 + 48));
      (*(v40 + 8))(v32, v41);
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_10014E33C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + 8);
  v18 = *v0;
  v5 = v18;
  v6 = v19;

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v18, &qword_1003B35C8);
    (*(v2 + 8))(v4, v1);
    v7 = v17;
  }

  swift_getKeyPath();
  v17 = v7;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v7 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  v10 = *(v7 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation + 8);
  swift_unknownObjectRetain();

  if (v9)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 72))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {

    if ((v6 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v18, &qword_1003B35C8);
      (*(v2 + 8))(v4, v1);
      v5 = v17;
    }

    swift_getKeyPath();
    v17 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);

    if (v14)
    {
      return 0;
    }

    else
    {
      return 0x6161616161;
    }
  }

  return v12;
}

char *sub_10014E67C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30)
  {
    if (!(v30 >> 62))
    {
      v0 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v0)
      {
        goto LABEL_4;
      }

LABEL_27:
      sub_100005AD4(&qword_1003AF470);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1002D3160;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = v30;
      v26 = v31;
      if (!v31)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      v6[4] = v25;
      v6[5] = v26;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
      v6[10] = 0;
      return v6;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();

    if (!v24)
    {
      goto LABEL_27;
    }
  }

LABEL_4:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v30)
  {
    return 0;
  }

  if (!(v30 >> 62))
  {
    v1 = v30;
    v2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  v1 = v30;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
LABEL_31:

    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  result = sub_1000C4D2C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v1;
    v27 = v1 & 0xC000000000000001;
    v28 = v2;
    v6 = _swiftEmptyArrayStorage;
    v29 = v1;
    do
    {
      if (v27)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v5 + 8 * v4 + 32);
      }

      v8 = v7;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v31)
      {
        v9 = v30;
      }

      else
      {
        v9 = 0;
      }

      if (v31)
      {
        v10 = v31;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      v11 = [v8 word];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      [v8 startTime];
      v17 = v16;
      v18 = [v8 textRange];
      v20 = v19;

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000C4D2C((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      v23 = &_swiftEmptyArrayStorage[7 * v22];
      *(v23 + 4) = v9;
      *(v23 + 5) = v10;
      *(v23 + 6) = v13;
      *(v23 + 7) = v15;
      v23[8] = v17 / 1000.0;
      ++v4;
      *(v23 + 9) = v18;
      *(v23 + 10) = v20;
      v5 = v29;
    }

    while (v28 != v4);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10014EA34()
{
  v1 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for EnvironmentValues();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B3680);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v24 - v9;
  v31 = *(v0 + 8);
  v30 = *v0;
  v10 = v30;
  v11 = v31;

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v30, &qword_1003B35C8);
    (*(v27 + 8))(v6, v4);
    v12 = v29;
  }

  v25 = v4;
  swift_getKeyPath();
  v29 = v12;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalLIDResult;
  swift_beginAccess();
  sub_10001F620(v12 + v14, v3, &unk_1003B9EF0);

  v15 = v7;
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v16 = &unk_1003B9EF0;
    v17 = v3;
LABEL_10:
    sub_100009EBC(v17, v16);
    v22 = 0;
    return v22 & 1;
  }

  v18 = v26;
  sub_100023BD4(v3, v26, &qword_1003B3680);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v30, &qword_1003B35C8);
    (*(v27 + 8))(v6, v25);
    v10 = v28;
  }

  swift_getKeyPath();
  v28 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v10 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  swift_unknownObjectRetain();

  if (!v20)
  {
    v16 = &qword_1003B3680;
    v17 = v18;
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v21 = *(v18 + *(v15 + 48));
  sub_100009EBC(v18, &qword_1003B3680);
  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t sub_10014EECC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 8);
  v15 = *v0;
  v5 = v15;
  v6 = v16;

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v15, &qword_1003B35C8);
    (*(v2 + 8))(v4, v1);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v7 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);

  if ((v9 & 1) == 0)
  {

    if ((v6 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v15, &qword_1003B35C8);
      (*(v2 + 8))(v4, v1);
      v5 = v14;
    }

    swift_getKeyPath();
    v14 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
    swift_unknownObjectRetain();

    if (!v11)
    {
      return 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10014F1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v51 = type metadata accessor for EnvironmentValues();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for OpacityTransition();
  v4 = *(v53 - 8);
  v5 = __chkstk_darwin(v53);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = sub_100005AD4(&qword_1003B35A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_100005AD4(&qword_1003B35A8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_100005AD4(&qword_1003B35B0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v20 = sub_100005AD4(&qword_1003B35B8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v49 - v22;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v24 = sub_100005AD4(&qword_1003B35C0);
  sub_10014F80C(v2, &v11[*(v24 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023BD4(v11, v15, &qword_1003B35A0);
  v25 = *(v13 + 44);
  v26 = v23;
  v27 = &v15[v25];
  v28 = v61;
  *(v27 + 4) = v60;
  *(v27 + 5) = v28;
  *(v27 + 6) = v62;
  v29 = v57;
  *v27 = v56;
  *(v27 + 1) = v29;
  v30 = v59;
  *(v27 + 2) = v58;
  *(v27 + 3) = v30;
  OpacityTransition.init()();
  v31 = v53;
  (*(v4 + 16))(v52, v8, v53);
  sub_100153694(qword_1003AF5D8, &type metadata accessor for OpacityTransition);
  v32 = AnyTransition.init<A>(_:)();
  (*(v4 + 8))(v8, v31);
  sub_100023BD4(v15, v19, &qword_1003B35A8);
  *&v19[*(v17 + 44)] = v32;
  v33 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v34 = sub_10014E33C();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v37 != 0;
  sub_100023BD4(v19, v26, &qword_1003B35B0);
  v39 = v26 + *(v21 + 44);
  *v39 = v33;
  *(v39 + 8) = v38;
  v40 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v63 = *v2;
  v41 = v63;
  v64 = *(v2 + 8);
  v42 = v64;

  if ((v42 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v63, &qword_1003B35C8);
    (*(v50 + 8))(v44, v51);
    v41 = v55;
  }

  swift_getKeyPath();
  v55 = v41;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v41 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_unknownObjectRelease();
  }

  v46 = v54;
  sub_100023BD4(v26, v54, &qword_1003B35B8);
  result = sub_100005AD4(&qword_1003B35D8);
  v48 = v46 + *(result + 36);
  *v48 = v40;
  *(v48 + 8) = v45 != 0;
  return result;
}

uint64_t sub_10014F80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = sub_100005AD4(&qword_1003B35E0);
  v162 = *(v3 - 8);
  v163 = v3;
  __chkstk_darwin(v3);
  v147 = &v134 - v4;
  v144 = sub_100005AD4(&qword_1003B35E8);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = (&v134 - v5);
  v6 = sub_100005AD4(&qword_1003B35F0);
  v7 = __chkstk_darwin(v6 - 8);
  v146 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v145 = &v134 - v9;
  v155 = sub_100005AD4(&qword_1003B35F8);
  v141 = *(v155 - 8);
  v10 = __chkstk_darwin(v155);
  v134 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v135 = &v134 - v12;
  v13 = sub_100005AD4(&qword_1003B3600);
  v14 = __chkstk_darwin(v13 - 8);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v134 - v16;
  v18 = sub_100005AD4(&qword_1003B3608);
  v19 = __chkstk_darwin(v18 - 8);
  v161 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v134 - v21;
  v154 = type metadata accessor for Locale();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v150 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LabeledTextView();
  __chkstk_darwin(v23);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100005AD4(&qword_1003B3610);
  __chkstk_darwin(v148);
  v27 = &v134 - v26;
  v151 = sub_100005AD4(&qword_1003B3618);
  __chkstk_darwin(v151);
  v152 = &v134 - v28;
  v157 = sub_100005AD4(&qword_1003B3620);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v149 = &v134 - v29;
  v30 = type metadata accessor for EnvironmentValues();
  v169 = *(v30 - 8);
  __chkstk_darwin(v30);
  v168 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100005AD4(&qword_1003B3628);
  v33 = __chkstk_darwin(v32 - 8);
  v158 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v166 = &v134 - v35;
  v174 = *(a1 + 8);
  v173 = *a1;
  v36 = v173;
  v37 = v174;

  v38 = v36;
  v170 = v37;
  if ((v37 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v40 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v173, &qword_1003B35C8);
    (*(v169 + 8))(v40, v30);
    v38 = v172[0];
  }

  swift_getKeyPath();
  v172[0] = v38;
  v165 = sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v38 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  swift_unknownObjectRetain();

  v159 = v17;
  v167 = v30;
  if (!v41)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRelease();

  if ((v170 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v173, &qword_1003B35C8);
    (*(v169 + 8))(v43, v30);
  }

  v44 = sub_100157B1C();
  v45 = [v44 isPassthrough];

  if (v45)
  {
    v46 = 1;
    v47 = v166;
    v48 = v157;
    v49 = v156;
  }

  else
  {
LABEL_8:
    v139 = sub_10014DA10(sub_100157D90);
    v138 = v50;
    v137 = sub_10014DC9C();
    v136 = v51;

    v52 = v36;
    if ((v170 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v53 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v54 = v168;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v173, &qword_1003B35C8);
      (*(v169 + 8))(v54, v30);
      v52 = v172[0];
    }

    swift_getKeyPath();
    v172[0] = v52;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(v52 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
    swift_unknownObjectRetain();

    if (v55)
    {
      swift_unknownObjectRelease();

      if ((v170 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v56 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v57 = v168;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(&v173, &qword_1003B35C8);
        (*(v169 + 8))(v57, v30);
      }

      v58 = sub_100157B1C();
      v59 = [v58 isPassthrough];

      v60 = v59 ^ 1;
    }

    else
    {
      v60 = 0;
    }

    v61 = swift_allocObject();
    v62 = *(a1 + 16);
    v61[1] = *a1;
    v61[2] = v62;
    v63 = *(a1 + 48);
    v61[3] = *(a1 + 32);
    v61[4] = v63;
    *&v25[v23[9]] = swift_getKeyPath();
    sub_100005AD4(&qword_1003B0300);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v25[v23[11]] = swift_getKeyPath();
    sub_100005AD4(&qword_1003BA370);
    swift_storeEnumTagMultiPayload();
    v65 = v138;
    *v25 = v139;
    *(v25 + 1) = v65;
    v66 = v136;
    *(v25 + 2) = v137;
    *(v25 + 3) = v66;
    v25[32] = 2;
    v25[33] = v60;
    *(v25 + 5) = sub_1001533D0;
    *(v25 + 6) = v61;
    v67 = &v25[v23[10]];
    *v67 = KeyPath;
    v67[8] = 0;
    sub_100153420(a1, v172);
    v68 = static Color.sourceTextColor.getter();
    sub_100153458(v25, v27);
    *&v27[*(v148 + 36)] = v68;
    v69 = swift_getKeyPath();

    if ((v170 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v70 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v71 = v168;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v173, &qword_1003B35C8);
      (*(v169 + 8))(v71, v167);
    }

    v72 = v150;
    sub_100157D90(v150);

    v73 = v152;
    v74 = &v152[*(v151 + 36)];
    sub_100005AD4(&qword_1003B3630);
    Locale.language.getter();
    (*(v153 + 8))(v72, v154);
    *v74 = v69;
    sub_100023BD4(v27, v73, &qword_1003B3610);
    v75 = swift_allocObject();
    v76 = *(a1 + 16);
    v75[1] = *a1;
    v75[2] = v76;
    v77 = *(a1 + 48);
    v75[3] = *(a1 + 32);
    v75[4] = v77;
    sub_100153420(a1, v172);
    sub_1001534F4();
    v78 = v149;
    View.onTapGesture(count:perform:)();

    sub_100009EBC(v73, &qword_1003B3618);
    v49 = v156;
    v47 = v166;
    v48 = v157;
    (*(v156 + 32))(v166, v78, v157);
    v46 = 0;
    v17 = v159;
  }

  v79 = 1;
  (*(v49 + 56))(v47, v46, 1, v48);
  v80 = sub_10014E33C();
  v82 = v81;

  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {

    if ((v170 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v84 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v85 = v168;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v173, &qword_1003B35C8);
      (*(v169 + 8))(v85, v167);
    }

    v86 = sub_100157B1C();
    v87 = [v86 isPassthrough];

    if (v87)
    {
      v88 = 1;
      v89 = v155;
    }

    else
    {

      v91 = v36;
      if ((v170 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v92 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v93 = v168;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(&v173, &qword_1003B35C8);
        (*(v169 + 8))(v93, v167);
        v91 = v172[0];
      }

      swift_getKeyPath();
      v172[0] = v91;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v94 = *(v91 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);

      if (v94 == 1)
      {
        LODWORD(v157) = sub_10014EA34();
      }

      else
      {
        LODWORD(v157) = 1;
      }

      v95 = v155;
      v96 = swift_allocObject();
      v97 = *(a1 + 16);
      v96[1] = *a1;
      v96[2] = v97;
      v98 = *(a1 + 48);
      v96[3] = *(a1 + 32);
      v96[4] = v98;
      v171 = 0;
      sub_100153420(a1, v172);
      State.init(wrappedValue:)();
      v99 = v172[0];
      v100 = v172[1];
      v101 = *(v95 + 36);
      v102 = enum case for ColorScheme.dark(_:);
      v103 = type metadata accessor for ColorScheme();
      v104 = *(v103 - 8);
      v105 = v134;
      (*(v104 + 104))(&v134[v101], v102, v103);
      (*(v104 + 56))(&v105[v101], 0, 1, v103);
      *v105 = 513;
      v105[2] = v157 & 1;
      *(v105 + 1) = sub_1001536DC;
      *(v105 + 2) = v96;
      v105[24] = v99;
      *(v105 + 4) = v100;
      v106 = v105;
      v107 = v135;
      sub_100023BD4(v106, v135, &qword_1003B35F8);
      v17 = v159;
      v89 = v155;
      sub_100023BD4(v107, v159, &qword_1003B35F8);
      v88 = 0;
      v47 = v166;
    }

    (*(v141 + 56))(v17, v88, 1, v89);

    if ((v170 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v108 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v109 = v168;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100009EBC(&v173, &qword_1003B35C8);
      (*(v169 + 8))(v109, v167);
    }

    v110 = sub_100157B1C();
    v111 = [v110 isPassthrough];

    if (v111)
    {

      if ((v170 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v112 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v113 = v168;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(&v173, &qword_1003B35C8);
        (*(v169 + 8))(v113, v167);
      }

      v114 = sub_100157B1C();
      v115 = [v114 isPassthrough];

      if (!v115)
      {
        goto LABEL_43;
      }

      if ((v170 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v116 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v117 = v168;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(&v173, &qword_1003B35C8);
        (*(v169 + 8))(v117, v167);
        v36 = v172[0];
      }

      swift_getKeyPath();
      v172[0] = v36;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v118 = *(v36 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
      swift_unknownObjectRetain();

      if (!v118)
      {
LABEL_43:
        v123 = 1;
        v122 = v145;
        goto LABEL_44;
      }

      swift_unknownObjectRelease();
    }

    v119 = static VerticalAlignment.bottom.getter();
    v120 = v140;
    *v140 = v119;
    *(v120 + 8) = 0;
    *(v120 + 16) = 1;
    v121 = sub_100005AD4(&qword_1003B3668);
    sub_1001521A4(a1, v120 + *(v121 + 44));
    v122 = v145;
    sub_100023BD4(v120, v145, &qword_1003B35E8);
    v123 = 0;
LABEL_44:
    (*(v143 + 56))(v122, v123, 1, v144);
    v124 = v142;
    sub_10001F620(v17, v142, &qword_1003B3600);
    v125 = v146;
    sub_10001F620(v122, v146, &qword_1003B35F0);
    v126 = v147;
    sub_10001F620(v124, v147, &qword_1003B3600);
    v127 = sub_100005AD4(&qword_1003B3670);
    sub_10001F620(v125, v126 + *(v127 + 48), &qword_1003B35F0);
    sub_100009EBC(v122, &qword_1003B35F0);
    sub_100009EBC(v17, &qword_1003B3600);
    sub_100009EBC(v125, &qword_1003B35F0);
    sub_100009EBC(v124, &qword_1003B3600);
    v128 = v126;
    v90 = v160;
    sub_100023BD4(v128, v160, &qword_1003B35E0);
    v79 = 0;
    goto LABEL_45;
  }

  v90 = v160;
LABEL_45:
  (*(v162 + 56))(v90, v79, 1, v163);
  v129 = v158;
  sub_1001536E4(v47, v158);
  v130 = v161;
  sub_10001F620(v90, v161, &qword_1003B3608);
  v131 = v164;
  sub_1001536E4(v129, v164);
  v132 = sub_100005AD4(&qword_1003B3678);
  sub_10001F620(v130, v131 + *(v132 + 48), &qword_1003B3608);
  sub_100009EBC(v90, &qword_1003B3608);
  sub_100153754(v47);
  sub_100009EBC(v130, &qword_1003B3608);
  return sub_100153754(v129);
}

uint64_t sub_100150F60()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100151010;

  return sub_10015114C(1);
}

uint64_t sub_100151010()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100153EEC, v1, v0);
}

uint64_t sub_10015114C(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 81) = a1;
  v3 = type metadata accessor for URL();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  v5 = type metadata accessor for URLQueryItem();
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v6 = type metadata accessor for EnvironmentValues();
  *(v2 + 224) = v6;
  *(v2 + 232) = *(v6 - 8);
  *(v2 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 248) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001513B0, v8, v7);
}

uint64_t sub_1001513B0()
{
  v81 = v0;

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2818);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 81);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v80 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 7562617;
    }

    else
    {
      v7 = 28526;
    }

    if (v4)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    v9 = sub_10028D78C(v7, v8, &v80);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening Staccato translation in Translate app (editable: %s", v5, 0xCu);
    sub_100008664(v6);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 120);
  sub_100005AD4(&qword_1003B36B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  v77 = sub_100292804(inited);
  swift_setDeallocating();
  sub_100009EBC(inited + 32, &qword_1003B36C0);
  sub_100005AD4(&qword_1003BBEE0);
  v14 = *(v10 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v79 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002D3160;
  sub_10014DC9C();
  v78 = v15;
  URLQueryItem.init(name:value:)();

  v17 = *v11;
  *(v0 + 80) = *(v11 + 8);
  *(v0 + 72) = v17;
  v18 = *(v0 + 72);
  LOBYTE(v11) = *(v0 + 80);

  v19 = v18;
  v76 = v11;
  if ((v11 & 1) == 0)
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = *(v0 + 224);
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(v0 + 72, &qword_1003B35C8);
    (*(v20 + 8))(v21, v22);
    v19 = *(v0 + 88);
  }

  swift_getKeyPath();
  *(v0 + 96) = v19;
  sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v19 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  v25 = *(v19 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation + 8);
  swift_unknownObjectRetain();

  if (v24)
  {
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 152);
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    Locale.ltIdentifier.getter();
    v74 = *(v27 + 8);
    v74(v26, v28);
    URLQueryItem.init(name:value:)();

    v30 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_10028CE54(v29 > 1, v30 + 1, 1, v16);
    }

    v31 = *(v0 + 216);
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
    v35 = *(v0 + 152);
    *(v16 + 16) = v30 + 1;
    v73 = *(v33 + 32);
    v73(v16 + v78 + v30 * v79, v31, v32);
    (*(v25 + 40))(ObjectType, v25);
    Locale.ltIdentifier.getter();
    v74(v34, v35);
    URLQueryItem.init(name:value:)();

    v37 = *(v16 + 16);
    v36 = *(v16 + 24);
    if (v37 >= v36 >> 1)
    {
      v16 = sub_10028CE54(v36 > 1, v37 + 1, 1, v16);
    }

    v38 = *(v0 + 208);
    v39 = *(v0 + 176);
    swift_unknownObjectRelease();
    *(v16 + 16) = v37 + 1;
    v73(v16 + v78 + v37 * v79, v38, v39);
  }

  if (*(v0 + 81))
  {
    v40 = (v0 + 192);
    URLQueryItem.init(name:value:)();
  }

  else
  {
    v40 = (v0 + 200);
    sub_10014E33C();
    URLQueryItem.init(name:value:)();
  }

  v42 = *(v16 + 16);
  v41 = *(v16 + 24);
  if (v42 >= v41 >> 1)
  {
    v71 = *v40;
    v72 = sub_10028CE54(v41 > 1, v42 + 1, 1, v16);
    v43 = v71;
    v16 = v72;
  }

  else
  {
    v43 = *v40;
  }

  v44 = *(v0 + 176);
  v45 = *(v0 + 184);
  *(v16 + 16) = v42 + 1;
  (*(v45 + 32))(v16 + v78 + v42 * v79, v43, v44);
  static URL.translateAppURL(with:)();

  v46 = [objc_opt_self() defaultWorkspace];
  if (v46)
  {
    v48 = v46;
    URL._bridgeToObjectiveC()(v47);
    v50 = v49;
    sub_1001A78F0(v77);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 104) = 0;
    v52 = [v48 openSensitiveURL:v50 withOptions:isa error:v0 + 104];

    v53 = *(v0 + 104);
    v55 = *(v0 + 136);
    v54 = *(v0 + 144);
    v56 = *(v0 + 128);
    if (v52)
    {
      v57 = *(v55 + 8);
      v58 = v53;
      v57(v54, v56);

      if ((v76 & 1) == 0)
      {
        v60 = *(v0 + 232);
        v59 = *(v0 + 240);
        v61 = *(v0 + 224);
        static os_log_type_t.fault.getter();
        v62 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100009EBC(v0 + 72, &qword_1003B35C8);
        (*(v60 + 8))(v59, v61);
      }

      sub_10015C420(0);
    }

    else
    {
      v63 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        v68 = _convertErrorToNSError(_:)();
        *(v66 + 4) = v68;
        *v67 = v68;
        _os_log_impl(&_mh_execute_header, v64, v65, "Failed to open URL with LaunchServices: %@", v66, 0xCu);
        sub_100009EBC(v67, &unk_1003AECA0);
      }

      else
      {
      }
    }
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_100151DEC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100151E9C;

  return sub_10015114C(1);
}

uint64_t sub_100151E9C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100151FD8, v1, v0);
}
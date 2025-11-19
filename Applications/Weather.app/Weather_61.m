BOOL sub_100693C30(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = (v7 - v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = *(v5 + 16);
  v14(&v22 - v12, a1, v3, v11);
  v15 = *(v5 + 88);
  v16 = v15(v13, v3);
  v17 = 0;
  v18 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v16 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v16 == enum case for ContentSizeCategory.small(_:))
    {
      v17 = 1;
      goto LABEL_24;
    }

    if (v16 == enum case for ContentSizeCategory.medium(_:))
    {
      v17 = 2;
      goto LABEL_24;
    }

    if (v16 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v17 = 4;
    }

    else if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v17 = 5;
    }

    else if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v17 = 6;
    }

    else if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v17 = 7;
    }

    else if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v17 = 8;
    }

    else if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v17 = 9;
    }

    else if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v17 = 10;
    }

    else
    {
      if (v16 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v5 + 8))(v13, v3);
LABEL_7:
        v17 = 3;
        goto LABEL_24;
      }

      v17 = 11;
    }
  }

LABEL_24:
  (v14)(v9, v23, v3);
  v19 = v15(v9, v3);
  if (v19 == v18)
  {
    v20 = 0;
  }

  else if (v19 == enum case for ContentSizeCategory.small(_:))
  {
    v20 = 1;
  }

  else if (v19 == enum case for ContentSizeCategory.medium(_:))
  {
    v20 = 2;
  }

  else
  {
    if (v19 != enum case for ContentSizeCategory.large(_:))
    {
      if (v19 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v20 = 4;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v20 = 5;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v20 = 6;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v20 = 7;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v20 = 8;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v20 = 9;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v20 = 10;
        return v17 >= v20;
      }

      if (v19 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v20 = 11;
        return v17 >= v20;
      }

      (*(v5 + 8))(v9, v3);
    }

    v20 = 3;
  }

  return v17 >= v20;
}

uint64_t sub_100694034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v85 = a2;
  v86 = a3;
  v74 = sub_10022C350(&qword_100CD0C50);
  __chkstk_darwin(v74);
  v73 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = (v65 - v5);
  v6 = sub_10022C350(&qword_100CD0BC8);
  v69 = *(v6 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v6);
  v71 = v65 - v7;
  v83 = sub_10022C350(&qword_100CD0C58);
  __chkstk_darwin(v83);
  v75 = v65 - v8;
  v81 = sub_10022C350(&qword_100CD0C60);
  __chkstk_darwin(v81);
  v82 = (v65 - v9);
  v68 = type metadata accessor for Font.Leading();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v11 - 8);
  v77 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = v65 - v14;
  __chkstk_darwin(v15);
  v17 = v65 - v16;
  v18 = type metadata accessor for URL();
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD0C68);
  __chkstk_darwin(v20);
  v80 = v65 - v21;
  v22 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  __chkstk_darwin(v22);
  v24 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CD0C70);
  __chkstk_darwin(v25);
  v27 = v65 - v26;
  v28 = type metadata accessor for NewsArticleComponentViewModel(0);
  __chkstk_darwin(v28);
  v30 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for NewsArticleComponentView();
  sub_100694E48(v84 + *(v31 + 32), v30, type metadata accessor for NewsArticleComponentViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v85;
    v65[1] = v25;
    v65[2] = v20;
    v84 = v6;
    sub_10035526C(v30, v24);
    sub_1000302D8(&v24[*(v22 + 32)], v17, &qword_100CB3AB0);
    v33 = sub_100024D10(v17, 1, v18);
    v65[0] = v24;
    if (v33 == 1)
    {
      sub_1000180EC(v17, &qword_100CB3AB0);
      v34 = &v24[*(v22 + 24)];
      v35 = *(v34 + 1);
      v87 = *v34;
      v88 = v35;
      sub_10002D5A4();

      v36 = Text.init<A>(_:)();
      v38 = v37;
      v40 = v39;
      static Font.headline.getter();
      v41 = v67;
      v42 = v66;
      v43 = v68;
      (*(v67 + 104))(v66, enum case for Font.Leading.tight(_:), v68);
      Font.leading(_:)();

      (*(v41 + 8))(v42, v43);
      v44 = Text.font(_:)();
      v46 = v45;
      LOBYTE(v41) = v47;
      v49 = v48;

      sub_10010CD64(v36, v38, v40 & 1);

      v50 = v82;
      *v82 = v44;
      v50[1] = v46;
      *(v50 + 16) = v41 & 1;
      v50[3] = v49;
      swift_storeEnumTagMultiPayload();
      sub_100006F64(&qword_100CD0C78, &qword_100CD0C58);
      v51 = v80;
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v54 = v78;
      v53 = v79;
      (*(v79 + 32))(v78, v17, v18);
      v55 = v76;
      (*(v53 + 16))(v76, v54, v18);
      sub_10001B350(v55, 0, 1, v18);
      v56 = v71;
      sub_1000302D8(v32, v71, &qword_100CD0BC8);
      v57 = (*(v69 + 80) + 16) & ~*(v69 + 80);
      v58 = swift_allocObject();
      sub_10011C0F0(v56, v58 + v57, &qword_100CD0BC8);
      sub_1000302D8(v55, v77, &qword_100CB3AB0);
      v59 = swift_allocObject();
      *(v59 + 2) = sub_100694B00;
      *(v59 + 3) = 0;
      *(v59 + 4) = sub_100695514;
      *(v59 + 5) = v58;
      v60 = v75;
      sub_10001B350(v75, 1, 1, v18);
      v61 = v83;
      v62 = v72;
      *v72 = 0;
      v63 = v74;
      sub_10001B350(v62 + *(v74 + 36), 1, 1, v18);
      *(v62 + *(v63 + 40)) = 0x8000000000000000;
      sub_1000302D8(v62, v73, &qword_100CD0C50);
      State.init(wrappedValue:)();
      sub_1000180EC(v62, &qword_100CD0C50);
      sub_1000180EC(v76, &qword_100CB3AB0);
      sub_10032A9F8(v77, v60);
      *(v60 + v61[9]) = 0x3FF0000000000000;
      *(v60 + v61[10]) = 0;
      v64 = (v60 + v61[11]);
      *v64 = sub_10069559C;
      v64[1] = v59;
      sub_1000302D8(v60, v82, &qword_100CD0C58);
      swift_storeEnumTagMultiPayload();
      sub_100006F64(&qword_100CD0C78, &qword_100CD0C58);
      v51 = v80;
      _ConditionalContent<>.init(storage:)();
      sub_1000180EC(v60, &qword_100CD0C58);
      (*(v79 + 8))(v78, v18);
    }

    sub_1000302D8(v51, v27, &qword_100CD0C68);
    swift_storeEnumTagMultiPayload();
    sub_100695318();
    sub_10069545C();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v51, &qword_100CD0C68);
    return sub_100695268(v65[0], type metadata accessor for NewsArticleComponentContentViewModel);
  }

  else
  {
    sub_1000302D8(v85, v27, &qword_100CD0BC8);
    swift_storeEnumTagMultiPayload();
    sub_100695318();
    sub_10069545C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100694B00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CBB908);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5, v7);
  Image.resizable(capInsets:resizingMode:)();
  (*(v6 + 8))(v9, v5);
  v10 = enum case for Image.TemplateRenderingMode.template(_:);
  v11 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  sub_10001B350(v4, 0, 1, v11);
  v12 = Image.renderingMode(_:)();

  sub_1000180EC(v4, &qword_100CBB908);
  v13 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = result;
  *(a1 + 16) = v13;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

unint64_t sub_100694D1C()
{
  result = qword_100CD0B48;
  if (!qword_100CD0B48)
  {
    sub_10022E824(&qword_100CD0B30);
    sub_10022E824(&qword_100CD0B20);
    sub_100006F64(&qword_100CD0B40, &qword_100CD0B20);
    swift_getOpaqueTypeConformance2();
    sub_1006956F0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0B48);
  }

  return result;
}

uint64_t sub_100694E48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_100694EA4()
{
  result = qword_100CD0BE0;
  if (!qword_100CD0BE0)
  {
    sub_10022E824(&qword_100CD0BC0);
    sub_100694F5C();
    sub_100006F64(&qword_100CADEA0, &qword_100CADEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0BE0);
  }

  return result;
}

unint64_t sub_100694F5C()
{
  result = qword_100CD0BE8;
  if (!qword_100CD0BE8)
  {
    sub_10022E824(&qword_100CD0BB8);
    sub_100006F64(&qword_100CD0BF0, &qword_100CD0BF8);
    sub_100695014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0BE8);
  }

  return result;
}

unint64_t sub_100695014()
{
  result = qword_100CB6710;
  if (!qword_100CB6710)
  {
    sub_10022E824(&qword_100CB6718);
    sub_100400850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB6710);
  }

  return result;
}

unint64_t sub_1006950A0()
{
  result = qword_100CD0C20;
  if (!qword_100CD0C20)
  {
    sub_10022E824(&qword_100CD0C10);
    sub_10069512C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0C20);
  }

  return result;
}

unint64_t sub_10069512C()
{
  result = qword_100CD0C28;
  if (!qword_100CD0C28)
  {
    sub_10022E824(&qword_100CD0C08);
    sub_10022E824(&unk_100CE1680);
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0C28);
  }

  return result;
}

uint64_t sub_100695268(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1006952C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100695318()
{
  result = qword_100CD0C80;
  if (!qword_100CD0C80)
  {
    sub_10022E824(&qword_100CD0BC8);
    sub_1006953A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0C80);
  }

  return result;
}

unint64_t sub_1006953A4()
{
  result = qword_100CD0C88;
  if (!qword_100CD0C88)
  {
    sub_10022E824(&qword_100CD0BD8);
    sub_100006F64(&qword_100CB80A0, &qword_100CB34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0C88);
  }

  return result;
}

unint64_t sub_10069545C()
{
  result = qword_100CD0C90;
  if (!qword_100CD0C90)
  {
    sub_10022E824(&qword_100CD0C68);
    sub_100006F64(&qword_100CD0C78, &qword_100CD0C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0C90);
  }

  return result;
}

unint64_t sub_1006955A8()
{
  result = qword_100CD0CA8;
  if (!qword_100CD0CA8)
  {
    sub_10022E824(&qword_100CD0CA0);
    sub_1003325F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0CA8);
  }

  return result;
}

unint64_t sub_100695634()
{
  result = qword_100CD0CB0;
  if (!qword_100CD0CB0)
  {
    sub_10022E824(&qword_100CD0CB8);
    sub_100694D1C();
    sub_1006956F0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0CB0);
  }

  return result;
}

uint64_t sub_1006956F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10069575C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10069577C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1E && *(a1 + 25))
    {
      v2 = *a1 + 29;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 1) & 0x1C | (*(a1 + 24) >> 6)) ^ 0x1F;
      if (v2 >= 0x1D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1006957C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_100695834(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 7 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 24) = v2;
  return result;
}

void sub_100695870(int a1, int a2, unint64_t a3, unint64_t a4, void (*a5)(void, void), double a6)
{
  v115 = a5;
  v116 = a3;
  v117 = a4;
  v103 = a2;
  v114 = a1;
  v100 = sub_10022C350(&qword_100CBB588);
  sub_1000037C4();
  v99 = v7;
  __chkstk_darwin(v8);
  sub_100003C38();
  v102 = v9 - v10;
  __chkstk_darwin(v11);
  v98 = &v92 - v12;
  type metadata accessor for NumberFormatStyleConfiguration.Precision();
  sub_1000037C4();
  v109 = v14;
  v110 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v108 = v16 - v15;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  sub_1000037D8();
  v111 = v19 - v18;
  sub_10022C350(&qword_100CAECF0);
  sub_1000037C4();
  v105 = v21;
  v106 = v20;
  __chkstk_darwin(v20);
  sub_100003C38();
  v113 = v22 - v23;
  __chkstk_darwin(v24);
  v104 = &v92 - v25;
  v26 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v112 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = (v30 - v29);
  v32 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v101 = v33;
  __chkstk_darwin(v34);
  sub_100003C38();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v40 = &v92 - v39;
  v41 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v43 = v42;
  __chkstk_darwin(v44);
  v46 = &v92 - v45;
  sub_10022C350(&qword_100CCBC18);
  sub_1000037C4();
  v107 = v47;
  __chkstk_darwin(v48);
  sub_100003C38();
  __chkstk_darwin(v49);
  v51 = &v92 - v50;
  __chkstk_darwin(v52);
  v57 = &v92 - v56;
  if (v54 >> 6)
  {
    if (v54 >> 6 == 1)
    {
      if (a6 <= 1.0)
      {
        v64 = v114;
        v65 = v102;
        switch(v117)
        {
          case 1:
            goto LABEL_29;
          case 2:
            v64 = v103;
            goto LABEL_29;
          case 3:
            v64 = v103;
            if (v114)
            {
              goto LABEL_30;
            }

LABEL_29:
            if (v64)
            {
LABEL_30:
              v118 = a6;
              static Locale.autoupdatingCurrent.getter();
              sub_10014AB54();
              FloatingPointFormatStyle.Percent.init(locale:)();
              if ((v116 & 0x8000000000000000) != 0)
              {
                goto LABEL_39;
              }

              v119 = 0;
              v120 = v116;
              sub_10022C350(&qword_100CD0D60);
              sub_10001CA64();
              sub_100006F64(v84, &qword_100CD0D60);
              sub_100008C58();
              static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
              v85 = v98;
              v86 = v100;
              FloatingPointFormatStyle.Percent.precision(_:)();
              (*(v109 + 8))(&qword_100CD0D60, v110);
              v87 = *(v99 + 1);
              v87(v65, v86);
              v88 = &qword_100CBB590;
              v89 = &qword_100CBB588;
              goto LABEL_34;
            }

LABEL_32:
            v118 = a6;
            static Locale.autoupdatingCurrent.getter();
            sub_10014AB54();
            FloatingPointFormatStyle.init(locale:)();
            v79 = v116;
            if ((v116 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            break;
          case 4:
            goto LABEL_32;
          default:
            goto LABEL_30;
        }

LABEL_33:
        v119 = 0;
        v120 = v79;
        sub_10022C350(&qword_100CD0D60);
        sub_10001CA64();
        sub_100006F64(v90, &qword_100CD0D60);
        sub_100008C58();
        static NumberFormatStyleConfiguration.Precision.fractionLength<A>(_:)();
        v85 = v104;
        v86 = v106;
        v91 = v113;
        FloatingPointFormatStyle.precision(_:)();
        (*(v109 + 8))(&unk_100A75CB0, v110);
        v87 = *(v105 + 8);
        v87(v91, v86);
        v88 = &qword_100CAECF8;
        v89 = &qword_100CAECF0;
LABEL_34:
        sub_100006F64(v88, v89);
        BinaryFloatingPoint.formatted<A>(_:)();
        v87(v85, v86);
      }

      return;
    }

    if (v115 | v117 | v116 || v54 != 128)
    {
      return;
    }

    v63 = round(a6);
    if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v63 > -9.22337204e18)
    {
      if (v63 < 9.22337204e18)
      {
        v119 = v63;
        sub_100352908();
        BinaryInteger.formatted()();
        return;
      }

      goto LABEL_38;
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
    return;
  }

  v99 = v40;
  v100 = v46;
  v95 = v43;
  v94 = v41;
  v102 = v32;
  v98 = v31;
  v58 = v112;
  v97 = v26;
  v59 = a6;
  v60 = v117;
  v96 = v55;
  if (v117)
  {
    v93 = v54;
    v61 = v53;
    sub_10000C70C(0, &qword_100CCBBE8);
    v62 = v60;
    if (static NSObject.== infix(_:_:)())
    {

      v59 = a6;
    }

    else
    {
      v66 = v62;
      Measurement.init(value:unit:)();
      Measurement<>.converted(to:)();
      v67 = *(v107 + 8);
      v67(v51, v61);
      Measurement.value.getter();
      v59 = v68;

      v67(v57, v61);
    }

    v53 = v61;
    LOBYTE(v54) = v93;
  }

  v69 = v114;
  v70 = v97;
  v71 = v58;
  v72 = v102;
  v73 = v100;
  v74 = v99;
  switch(v54)
  {
    case 1:
      goto LABEL_21;
    case 2:
      v69 = v103;
      goto LABEL_21;
    case 3:
      v69 = v103;
      if (v114)
      {
        goto LABEL_22;
      }

LABEL_21:
      if (v69)
      {
LABEL_22:
        v117 = v53;
        sub_10000C70C(0, &qword_100CCBBE8);
        v75 = v116;
        Measurement.init(value:unit:)();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_10000C70C(0, &qword_100CA51B0);
          v116 = v75;
          Measurement.init(value:unit:)();
          static WeatherFormatStyle<>.weather.getter();
          NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
          v115 = *(v101 + 8);
          (v115)(v74, v72);
          v76 = v72;
          v77 = v98;
          (*(v71 + 104))(v98, enum case for WeatherFormatPlaceholder.none(_:), v70);
          type metadata accessor for UnitManager();
          static UnitManager.standard.getter();
          sub_100114168();
          v78 = v94;
          Measurement.formatted<A>(_:placeholder:unitManager:)();

          (*(v71 + 8))(v77, v97);
          (v115)(v37, v76);
          (*(v95 + 8))(v73, v78);
          (*(v107 + 8))(v96, v117);
          return;
        }
      }

      else
      {
LABEL_24:
        v118 = v59;
        static Locale.autoupdatingCurrent.getter();
        sub_10014AB54();
        FloatingPointFormatStyle.init(locale:)();
        v79 = v115;
        if ((v115 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        __break(1u);
      }

      v80 = v96;
      v81 = [objc_allocWithZone(NSMeasurementFormatter) init];
      [v81 setUnitOptions:5];
      v82 = [v81 numberFormatter];
      if (!v82)
      {
        goto LABEL_41;
      }

      v83 = v82;
      [v82 setMaximumFractionDigits:v115];

      NSMeasurementFormatter.string<A>(from:)();
      (*(v107 + 8))(v80, v117);
      break;
    case 4:
      goto LABEL_24;
    default:
      goto LABEL_22;
  }
}

BOOL sub_100696458(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v12 = a4;
  v13 = a8;
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      if (a3 | a2 | a1 || a4 != 128)
      {
        if ((a8 & 0xC0) != 0x80)
        {
          return 0;
        }

        v18 = a8 == 128 && a5 == 1;
        if (!v18 || a7 | a6)
        {
          return 0;
        }
      }

      else if ((a8 & 0xC0) != 0x80 || a7 | a6 | a5 || a8 != 128)
      {
        return 0;
      }

      return 1;
    }

    if ((a8 & 0xC0) == 0x40)
    {
      return a1 == a5 && a6 == a2;
    }

    return 0;
  }

  if (a8 >= 0x40u)
  {
    return 0;
  }

  sub_10000C70C(0, &qword_100CA52E0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    sub_10000C70C(0, &qword_100CCBBE8);
    v15 = a6;
    v16 = a2;
    v17 = static NSObject.== infix(_:_:)();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (a3 == a7)
  {
    return v12 == v13;
  }

  return result;
}

BOOL sub_1006965EC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1 == *&a3;
  if (a4)
  {
    v4 = 0;
  }

  if (a2)
  {
    return a4 & (a1 == a3);
  }

  else
  {
    return v4;
  }
}

_BYTE *storeEnumTagSinglePayload for ChartAxisUnitVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100696740()
{
  result = qword_100CD0D58;
  if (!qword_100CD0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0D58);
  }

  return result;
}

uint64_t sub_1006968BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562614C796164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000100ADB2A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706D6554776F6CLL && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x706D655468676968 && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xED00006E6F63496ELL;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x8000000100AD74A0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x8000000100AD74C0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001DLL && 0x8000000100ADB2C0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x8000000100ADB2E0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x54706D6554776F6CLL && a2 == 0xEB00000000747865;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x706D655468676968 && a2 == 0xEC00000074786554;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000013 && 0x8000000100ADB300 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
}

unint64_t sub_100696DD0(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6C6562614C796164;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x706D6554776F6CLL;
      break;
    case 5:
    case 14:
      result = 0x706D655468676968;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x7469706963657270;
      break;
    case 12:
      result = 0x67696C7961447369;
      break;
    case 13:
      result = 0x54706D6554776F6CLL;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100696FC8()
{
  sub_10000E8AC();
  v1 = sub_10022C350(&qword_100CD0F60);
  sub_1000037C4();
  v3 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = sub_10003A17C();
  sub_1000161C0(v7, v8);
  sub_100698D00();
  sub_100019CD4();
  type metadata accessor for Date();
  sub_100031740();
  sub_1001D1A40(v9, v10);
  sub_10006A87C();
  sub_100003CDC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v11 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
    sub_100031ED0(v11[5]);
    sub_1000064E0(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100031ED0(v11[6]);
    sub_1000064E0(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for TimeZone();
    sub_100051FF4();
    sub_1001D1A40(v12, v13);
    sub_100037250();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CA53F8);
    sub_100018654(&qword_100CD0F40);
    sub_10004E914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10004E914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100031ED0(v11[10]);
    sub_1000064E0(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100031ED0(v11[11]);
    sub_1000064E0(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100037250();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100031ED0(v11[14]);
    sub_1000064E0(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for Precipitation();
    sub_100028908();
    sub_1001D1A40(v14, v15);
    sub_100037250();
    sub_100003CDC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100037250();
    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100031ED0(v11[17]);
    sub_1000064E0(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100031ED0(v11[18]);
    sub_1000064E0(14);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100031ED0(v11[19]);
    sub_1000064E0(15);
    KeyedEncodingContainer.encode(_:forKey:)();
    v16[15] = 16;
    sub_100698E18();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v3 + 8))(v6, v1);
  sub_10000C8F4();
}

void sub_1006973D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v125 = v10;
  v12 = v11;
  v113 = v13;
  sub_10022C350(&qword_100CB5F98);
  sub_100003828();
  __chkstk_darwin(v14);
  v119 = &v111 - v15;
  v126 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v118 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v120 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  v21 = &v111 - v20;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v115 = v23;
  v116 = v22;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v26 = v25 - v24;
  v27 = type metadata accessor for Date();
  sub_1000037C4();
  v117 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v121 = sub_10022C350(&qword_100CD0F48);
  sub_1000037C4();
  v34 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  v37 = &v111 - v36;
  v127 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000037D8();
  v123 = v12;
  v124 = v40 - v39;
  v41 = v12[4];
  sub_1000161C0(v12, v12[3]);
  sub_100698D00();
  v122 = v37;
  v42 = v125;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v114 = v27;
  if (v42)
  {
    v125 = v42;
    v46 = 0;
    LODWORD(v47) = 0;
    LODWORD(v48) = 0;
    v49 = 0;
    v50 = 0;
    LODWORD(v119) = 0;
    sub_100074DC4();
  }

  else
  {
    v43 = v26;
    v112 = v34;
    sub_100031740();
    sub_1001D1A40(v44, v45);
    sub_10006A87C();
    v46 = v121;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v124;
    (*(v117 + 32))(v124, v32, v27);
    sub_10002499C(1);
    v60 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v127;
    v61 = (v59 + v127[5]);
    *v61 = v60;
    v61[1] = v62;
    sub_10002499C(2);
    v63 = KeyedDecodingContainer.decode(_:forKey:)();
    v64 = v59;
    v65 = (v59 + v34[6]);
    *v65 = v63;
    v65[1] = v66;
    sub_100051FF4();
    sub_1001D1A40(v67, v68);
    sub_10006A87C();
    v69 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v115 + 32))(v64 + v34[7], v43, v69);
    sub_10002FFDC(&qword_100CD0F20);
    v48 = v126;
    sub_1000C8810();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v70 = v64 + v34[8];
    v125 = *(v118 + 32);
    v125(v70, v21, v48);
    v47 = v120;
    sub_1000C8810();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LODWORD(v34) = 0;
    v41 = v127;
    v125(v64 + v127[9], v47, v48);
    sub_10002499C(6);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = (v64 + v41[10]);
    *v72 = v71;
    v72[1] = v73;
    sub_10002499C(7);
    v50 = v122;
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v112;
    v75 = (v64 + v41[11]);
    *v75 = v74;
    v75[1] = v76;
    sub_10002499C(8);
    KeyedDecodingContainer.decode(_:forKey:)();
    v125 = 0;
    *(v64 + v127[12]) = v77;
    sub_10002499C(9);
    v78 = v125;
    v79 = KeyedDecodingContainer.decode(_:forKey:)();
    v125 = v78;
    if (v78)
    {
      v82 = sub_100013AE0();
      v83(v82);
      sub_100049AC4();
      sub_1000107E8();
      LODWORD(v121) = v84;
      LODWORD(v41) = 1;
    }

    else
    {
      *(v124 + v127[13]) = v79 & 1;
      sub_10000ECD0(10);
      v80 = KeyedDecodingContainer.decode(_:forKey:)();
      v125 = 0;
      sub_10003BB2C(v80, v81, v127[14]);
      type metadata accessor for Precipitation();
      LOBYTE(a10) = 11;
      sub_100028908();
      sub_1001D1A40(v85, v86);
      sub_10006A87C();
      v50 = v122;
      v87 = v125;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v125 = v87;
      if (v87)
      {
        v88 = sub_100013AE0();
        v89(v88);
        LODWORD(v122) = 0;
        v46 = 1;
        sub_1000107E8();
        sub_100041AE8(v90);
      }

      else
      {
        sub_100698D54(v119, v124 + v127[15]);
        sub_10000ECD0(12);
        v91 = v125;
        v92 = KeyedDecodingContainer.decode(_:forKey:)();
        v125 = v91;
        if (!v91)
        {
          *(v124 + v127[16]) = v92 & 1;
          sub_10000ECD0(13);
          v97 = KeyedDecodingContainer.decode(_:forKey:)();
          v52 = 1;
          v125 = 0;
          sub_10003BB2C(v97, v98, v127[17]);
          sub_10000ECD0(14);
          v99 = KeyedDecodingContainer.decode(_:forKey:)();
          v125 = 0;
          sub_10003BB2C(v99, v102, v127[18]);
          sub_10000ECD0(15);
          v103 = KeyedDecodingContainer.decode(_:forKey:)();
          v125 = 0;
          sub_10003BB2C(v103, v104, v127[19]);
          v128 = 16;
          sub_100698DC4();
          v50 = v122;
          v105 = v125;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v125 = v105;
          if (!v105)
          {
            v108 = sub_100013AE0();
            v109(v108);
            v110 = v124;
            *(v124 + v127[20]) = a10;
            sub_1001B5674(v110, v113, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
            sub_100006F14(v123);
            sub_1001B5780(v110, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
            goto LABEL_36;
          }

          v106 = sub_100013AE0();
          v107(v106);
          LODWORD(v120) = 1;
          v53 = 1;
          sub_100006F14(v123);
          sub_1000107E8();
          sub_100041AE8(v100);
          LODWORD(v122) = v101;
          v51 = v124;
LABEL_6:
          (*(v117 + 8))(v51, v114);
          if (v47)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }

        v93 = sub_100013AE0();
        v94(v93);
        v46 = 1;
        sub_1000107E8();
        sub_100041AE8(v95);
        LODWORD(v122) = v96;
      }
    }
  }

  v51 = v124;
  sub_100006F14(v123);
  if (v46)
  {
    v52 = 0;
    LODWORD(v120) = 0;
    v53 = 0;
    goto LABEL_6;
  }

  v53 = 0;
  LODWORD(v120) = 0;
  v52 = 0;
  if (v47)
  {
LABEL_7:
    v54 = v127;
    sub_100020F38();
    if ((v48 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v54 = v127;
  if (!v48)
  {
LABEL_8:
    if (v49)
    {
      goto LABEL_9;
    }

LABEL_15:
    v55 = v126;
    if (!v50)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_14:
  sub_100020F38();
  if ((v49 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  (*(v115 + 8))(v51 + v54[7], v116);
  v55 = v126;
  if ((v50 & 1) == 0)
  {
LABEL_10:
    if (v119)
    {
      v56 = *(v118 + 8);
      goto LABEL_18;
    }

    v58 = v122;
    goto LABEL_28;
  }

LABEL_16:
  v53 = v41;
  LODWORD(v41) = v34;
  LODWORD(v34) = v52;
  v52 = v118 + 8;
  v56 = *(v118 + 8);
  v56(v51 + v54[8], v55);
  if (v119)
  {
    sub_100036DE8();
LABEL_18:
    v57 = v121;
    v56(v51 + v54[9], v55);
    v58 = v122;
    if (v57)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  v58 = v122;
  sub_100036DE8();
LABEL_28:
  if (v121)
  {
LABEL_19:
    sub_100020F38();
    if ((v41 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v41)
  {
LABEL_20:
    if (v34)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_100020F38();
  if (v34)
  {
LABEL_21:
    sub_100020F38();
    if ((v58 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v58)
  {
LABEL_22:
    if (v52)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1000180EC(v51 + v54[15], &qword_100CB5F98);
  if (v52)
  {
LABEL_23:
    sub_100020F38();
    if ((v120 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v120)
  {
LABEL_24:
    if (!v53)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_100020F38();
  if (v53)
  {
LABEL_35:
    sub_100020F38();
  }

LABEL_36:
  sub_10000C8F4();
}

uint64_t sub_100697F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006968BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100697F50(uint64_t a1)
{
  v2 = sub_100698D00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100697F8C(uint64_t a1)
{
  v2 = sub_100698D00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100697FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6365726F46796164 && a2 == 0xEC00000073747361;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000706D65;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5478614D6B656577 && a2 == 0xEB00000000706D65;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x546E694D6B656577 && a2 == 0xEB00000000706D65;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x48747365676E6F6CLL && a2 == 0xEF706D6554686769;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4C747365676E6F6CLL && a2 == 0xEE00706D6554776FLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100698200(char a1)
{
  result = 0x6365726F46796164;
  switch(a1)
  {
    case 1:
      result = 0x54746E6572727563;
      break;
    case 2:
      result = 0x5478614D6B656577;
      break;
    case 3:
      result = 0x546E694D6B656577;
      break;
    case 4:
      result = 0x48747365676E6F6CLL;
      break;
    case 5:
      result = 0x4C747365676E6F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1006982D4()
{
  sub_10000E8AC();
  v1 = sub_10022C350(&qword_100CD0F28);
  sub_1000037C4();
  v3 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v9[-v5];
  v7 = sub_10003A17C();
  sub_1000161C0(v7, v8);
  sub_100698BC0();
  sub_100019CD4();
  v9[15] = 0;
  sub_10022C350(&qword_100CD0F08);
  sub_100698C14(&qword_100CD0F30, &qword_100CD0F38);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for DailyForecastComponentViewModel(0);
    v9[14] = 1;
    sub_10022C350(&qword_100CA53F8);
    sub_100018654(&qword_100CD0F40);
    sub_10004E914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[13] = 2;
    sub_10004E914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[12] = 3;
    sub_10004E914();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v3 + 8))(v6, v1);
  sub_10000C8F4();
}

void sub_100698554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v12 = v11;
  v47 = v13;
  sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v49 = v15;
  v50 = v14;
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = v46 - v20;
  v48 = sub_10022C350(&qword_100CD0EF8);
  sub_1000037C4();
  v23 = v22;
  sub_100003828();
  __chkstk_darwin(v24);
  v52 = type metadata accessor for DailyForecastComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v53 = (v27 - v26);
  v28 = v12[3];
  v51 = v12;
  sub_1000161C0(v12, v28);
  sub_100698BC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100006F14(v51);
  }

  else
  {
    v46[2] = v17;
    v46[3] = v23;
    sub_10022C350(&qword_100CD0F08);
    v59 = 0;
    sub_100698C14(&qword_100CD0F10, &qword_100CD0F18);
    sub_100008080();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v53;
    *v53 = a10;
    v58 = 1;
    sub_10002FFDC(&qword_100CD0F20);
    v30 = v50;
    sub_10003BEF8();
    sub_100008080();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v29 + v52[5];
    v46[0] = *(v49 + 32);
    v46[1] = v49 + 32;
    (v46[0])(v31, v21, v30);
    v57 = 2;
    sub_10003BEF8();
    sub_100008080();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = sub_100071DB4(v52[6]);
    v33(v32);
    v56 = 3;
    sub_10003BEF8();
    sub_100008080();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v52;
    v35 = sub_100071DB4(v52[7]);
    v36(v35);
    v55 = 4;
    sub_100008080();
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = (v29 + v34[8]);
    *v38 = v37;
    v38[1] = v39;
    v54 = 5;
    sub_100008080();
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v41;
    v43 = sub_100069840();
    v44(v43);
    v45 = (v29 + v34[9]);
    *v45 = v40;
    v45[1] = v42;
    sub_1001B5674(v29, v47, type metadata accessor for DailyForecastComponentViewModel);
    sub_100006F14(v51);
    sub_1001B5780(v29, type metadata accessor for DailyForecastComponentViewModel);
  }

  sub_10000C8F4();
}

uint64_t sub_100698AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100697FFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100698B14(uint64_t a1)
{
  v2 = sub_100698BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100698B50(uint64_t a1)
{
  v2 = sub_100698BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100698BC0()
{
  result = qword_100CD0F00;
  if (!qword_100CD0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F00);
  }

  return result;
}

uint64_t sub_100698C14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CD0F08);
    sub_1001D1A40(a2, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100698CB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CA53F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100698D00()
{
  result = qword_100CD0F50;
  if (!qword_100CD0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F50);
  }

  return result;
}

uint64_t sub_100698D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB5F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100698DC4()
{
  result = qword_100CD0F58;
  if (!qword_100CD0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F58);
  }

  return result;
}

unint64_t sub_100698E18()
{
  result = qword_100CD0F68;
  if (!qword_100CD0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyForecastComponentViewModel.DayForecastViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        break;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyForecastComponentViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100699028()
{
  result = qword_100CD0F70;
  if (!qword_100CD0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F70);
  }

  return result;
}

unint64_t sub_100699080()
{
  result = qword_100CD0F78;
  if (!qword_100CD0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F78);
  }

  return result;
}

unint64_t sub_1006990D8()
{
  result = qword_100CD0F80;
  if (!qword_100CD0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F80);
  }

  return result;
}

unint64_t sub_100699130()
{
  result = qword_100CD0F88;
  if (!qword_100CD0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F88);
  }

  return result;
}

unint64_t sub_100699188()
{
  result = qword_100CD0F90;
  if (!qword_100CD0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F90);
  }

  return result;
}

unint64_t sub_1006991E0()
{
  result = qword_100CD0F98;
  if (!qword_100CD0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD0F98);
  }

  return result;
}

uint64_t sub_100699234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1000037C4();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022E824(&qword_100CD1160);
  v33 = v10;
  v30 = *(a1 + 16);
  v11 = v30;
  v12 = sub_100699F70();
  v32 = v12;
  v13 = sub_1003BDB64();
  v36 = v10;
  v37 = &unk_100C53760;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v14 = type metadata accessor for ForEach();
  sub_1000037C4();
  v31 = v15;
  __chkstk_darwin(v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  sub_1006994E4();
  v36 = v22;
  (*(v5 + 16))(v9, v2, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = *(a1 + 24);
  *(v24 + 16) = v30;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v23, v9, a1);
  sub_10069A06C();
  ForEach<>.init(_:content:)();
  v35 = v25;
  sub_100008C6C();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v18, v14, WitnessTable);
  v27 = *(v31 + 8);
  v27(v18, v14);
  sub_1000833D8(v21, v14, WitnessTable);
  return (v27)(v21, v14);
}

uint64_t sub_10069953C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for LazyLocationContentView();
  (*(a2 + *(v14 + 40)))(a1);
  sub_1000833D8(v10, a3, a4);
  v15 = *(v8 + 8);
  v15(v10, a3);
  sub_1000833D8(v13, a3, a4);
  return (v15)(v13, a3);
}

uint64_t sub_100699694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = type metadata accessor for PresentLocationViewComponentModel(0);
  __chkstk_darwin(v32);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[11];
  v14 = a1[12];
  sub_1000161C0(a1 + 8, v13);
  v15 = type metadata accessor for LocationViewModel();
  sub_10049B8AC(*(v33 + *(v15 + 32)), v13, v14, v9);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_10026E1E4(v9);
    v16 = a1[1];
    v17 = a1[2];
    v18 = a1[3];
    *a3 = *a1;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    v19 = *(a1 + 3);
    *(a3 + 24) = *(a1 + 2);
    *(a3 + 40) = v19;
    *(a3 + 56) = v18;
  }

  else
  {
    sub_10069A0E4(v9, v12, type metadata accessor for LocationComponentContainerViewModel);
    v21 = a1[1];
    v33 = *a1;
    v22 = a1[4];
    v23 = a1[5];
    v24 = a1[6];
    v30 = a1[7];
    v31 = v24;
    v26 = a1[2];
    v25 = a1[3];
    sub_10069A0E4(v12, v6 + *(v32 + 28), type metadata accessor for LocationComponentContainerViewModel);
    *v6 = v33;
    v6[1] = v21;
    v6[2] = v26;
    v6[3] = v22;
    v27 = v30;
    v28 = v31;
    v6[4] = v23;
    v6[5] = v28;
    v6[6] = v27;
    v6[7] = v25;
    sub_10069A0E4(v6, a3, type metadata accessor for PresentLocationViewComponentModel);
  }

  v20 = type metadata accessor for LocationViewCellContentDescriptor(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a3, 0, 1, v20);
}

uint64_t sub_100699930()
{
  v2 = type metadata accessor for PresentLocationViewComponentModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100004854();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100699A60(v1, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v7;
  }

  sub_10001F528();
  sub_10069A0E4(v7, v0, v9);
  v8 = *v0;

  sub_100699AC4(v0);
  return v8;
}

uint64_t sub_100699A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewCellContentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100699AC4(uint64_t a1)
{
  v2 = type metadata accessor for PresentLocationViewComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100699B48()
{
  result = type metadata accessor for LocationComponentContainerViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100699BDC()
{
  result = type metadata accessor for PresentLocationViewComponentModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100699C54()
{
  result = type metadata accessor for LocationViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_10013DB50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100699D20()
{
  v2 = type metadata accessor for PresentLocationViewComponentModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100004854();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100699A60(v1, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    sub_10001F528();
    sub_10069A0E4(v7, v0, v9);
    v8 = *(v0 + 24);
    sub_100699AC4(v0);
  }

  return v8;
}

uint64_t sub_100699E1C()
{
  v2 = v1;
  v3 = type metadata accessor for PresentLocationViewComponentModel(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100004854();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_100699A60(v2, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(v8 + 56);
  }

  else
  {
    sub_10001F528();
    sub_10069A0E4(v8, v0, v10);
    v9 = *(v0 + 56);
    sub_100699AC4(v0);
  }

  return v9;
}

uint64_t sub_100699F00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100699930();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_100699F70()
{
  result = qword_100CD1168;
  if (!qword_100CD1168)
  {
    sub_10022E824(&qword_100CD1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1168);
  }

  return result;
}

uint64_t sub_100699FD4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for LazyLocationContentView();
  sub_100003810(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_10069953C(a1, v7, v3, v4);
}

unint64_t sub_10069A06C()
{
  result = qword_100CD1170;
  if (!qword_100CD1170)
  {
    type metadata accessor for LocationViewCellContentDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1170);
  }

  return result;
}

uint64_t sub_10069A0E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_10069A148()
{
  sub_10000C778();
  v1 = v0;
  sub_100011748();
  v2 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    sub_10001F540();
    sub_10005E46C(v9, v10);
    sub_1000251E0();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = v1 + 56;
    v18 = v1;
    sub_10002C9A0();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v11 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v18 + 48) + *(v4 + 72) * v15, v2);
      sub_10001F540();
      sub_10005E46C(&qword_100CA35B0, v16);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v4 + 8))(v8, v2);
      v12 = v15 + 1;
    }

    while ((v17 & 1) == 0);
  }

  sub_10000536C();
}

void sub_10069A2F8()
{
  sub_100071768();
  if (*(v4 + 16))
  {
    sub_1000D3C30(v3, v4);
    Hasher.init(_seed:)();
    sub_100542CB0(v1);
    sub_1000164A8();

    Hasher._finalize()();
    sub_100017C58();
    if (v5)
    {
      while (1)
      {
        v6 = 0xE800000000000000;
        v7 = 0x73776F626E696172;
        switch(*(*(v0 + 48) + v2))
        {
          case 1:
            v7 = sub_10003266C();
            break;
          case 2:
            v7 = sub_1006A9CF8() | 0x6C690000u;
            break;
          case 3:
            v6 = 0xE500000000000000;
            v7 = 0x656B6F6D73;
            break;
          case 4:
            v6 = 0xE300000000000000;
            v7 = 6778726;
            break;
          case 5:
            v7 = sub_1006A9CF8() | 0x657A0000u;
            break;
          default:
            break;
        }

        v8 = 0xE800000000000000;
        v9 = 0x73776F626E696172;
        switch(v1)
        {
          case 1:
            sub_100088000();
            v8 = 0xE900000000000067;
            break;
          case 2:
            v8 = 0xE400000000000000;
            v9 = 1818845544;
            break;
          case 3:
            v8 = 0xE500000000000000;
            v9 = 0x656B6F6D73;
            break;
          case 4:
            v8 = 0xE300000000000000;
            v9 = 6778726;
            break;
          case 5:
            v8 = 0xE400000000000000;
            v9 = 1702519144;
            break;
          default:
            break;
        }

        if (v7 == v9 && v6 == v8)
        {
          break;
        }

        v11 = sub_1000E13E8();

        if ((v11 & 1) == 0)
        {
          sub_10002531C();
          if (v12)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }
  }

LABEL_21:
  sub_100051A4C();
}

void sub_10069A4AC()
{
  sub_100071768();
  if (*(v4 + 16))
  {
    sub_1000D3C30(v3, v4);
    Hasher.init(_seed:)();
    sub_100542D8C(v1);
    sub_1000164A8();

    Hasher._finalize()();
    sub_100017C58();
    if (v5)
    {
      while (1)
      {
        v6 = 0xE800000000000000;
        v7 = 0x746E617361656C70;
        switch(*(*(v0 + 48) + v2))
        {
          case 1:
            v7 = sub_100013314();
            break;
          case 2:
            v6 = 0xE300000000000000;
            v7 = 7630696;
            break;
          case 3:
            v7 = sub_100019A54();
            break;
          case 4:
            v6 = 0xE500000000000000;
            v7 = 0x796767756DLL;
            break;
          case 5:
            v6 = 0xE300000000000000;
            v7 = 7959140;
            break;
          case 6:
            v6 = 0xE500000000000000;
            v7 = 0x79646E6977;
            break;
          case 7:
            v6 = 0xE400000000000000;
            v7 = 1835819363;
            break;
          default:
            break;
        }

        v8 = 0xE800000000000000;
        v9 = 0x746E617361656C70;
        switch(v1)
        {
          case 1:
            sub_100040F88();
            v8 = 0xEA0000000000746ELL;
            break;
          case 2:
            v8 = 0xE300000000000000;
            v9 = 7630696;
            break;
          case 3:
            v8 = 0xE600000000000000;
            v9 = 0x796C6C696863;
            break;
          case 4:
            v8 = 0xE500000000000000;
            v9 = 0x796767756DLL;
            break;
          case 5:
            v8 = 0xE300000000000000;
            v9 = 7959140;
            break;
          case 6:
            v8 = 0xE500000000000000;
            v9 = 0x79646E6977;
            break;
          case 7:
            v8 = 0xE400000000000000;
            v9 = 1835819363;
            break;
          default:
            break;
        }

        if (v7 == v9 && v6 == v8)
        {
          break;
        }

        v11 = sub_1000E13E8();

        if ((v11 & 1) == 0)
        {
          sub_10002531C();
          if (v12)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }
  }

LABEL_25:
  sub_100051A4C();
}

uint64_t sub_10069A6AC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    v5 = Hasher._finalize()();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

BOOL sub_10069A75C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for HourWeather();
    sub_100003AE8(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) != 0);
  return v7 == v8;
}

BOOL sub_10069A828(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v10[0] = *(v5 - 1);
    v10[1] = v7;

    v8 = a1(v10);

    if (v3)
    {
      break;
    }

    v5 += 2;
  }

  while ((v8 & 1) != 0);
  return v6 == 0;
}

uint64_t sub_10069A8CC()
{
  v1 = sub_100017580();
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(v1);
  sub_1000037C4();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  sub_10005E46C(&qword_100CD1410, type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType);
  v10 = Set.init(minimumCapacity:)();
  v18 = v10;
  v11 = *(v0 + 16);
  if (v11)
  {
    sub_100011468();
    v13 = v0 + v12;
    v14 = *(v3 + 72);
    do
    {
      sub_1006A9B9C(v13, v7);
      sub_1006A0B5C();
      sub_1006A9C00(v9);
      v13 += v14;
      --v11;
    }

    while (v11);

    return v18;
  }

  else
  {
    v15 = v10;
  }

  return v15;
}

void sub_10069AA48()
{
  sub_10000C778();
  sub_100017580();
  type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_1000437D4();
  sub_10001F540();
  sub_10005E46C(v6, v7);
  sub_1000251E0();
  Set.init(minimumCapacity:)();
  v8 = *(v0 + 16);
  if (v8)
  {
    sub_100020A30();
    do
    {
      v9 = sub_100014CC4();
      v2(v9);
      v10 = sub_1000C8620();
      sub_1006A0894(v10, v11);
      v12 = sub_1001721BC();
      v13(v12);
      v1 += v3;
      --v8;
    }

    while (v8);
  }

  sub_10000536C();
}

void sub_10069AB80()
{
  sub_10000C778();
  sub_100017580();
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_1000437D4();
  sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location);
  sub_1000251E0();
  Set.init(minimumCapacity:)();
  v6 = *(v0 + 16);
  if (v6)
  {
    sub_100020A30();
    do
    {
      v7 = sub_100014CC4();
      v2(v7);
      v8 = sub_1000C8620();
      sub_1006A0EF4(v8, v9);
      v10 = sub_1001721BC();
      v11(v10);
      v1 += v3;
      --v6;
    }

    while (v6);
  }

  sub_10000536C();
}

void sub_10069ACC8()
{
  sub_10000C778();
  sub_100017580();
  type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_1000437D4();
  sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
  sub_1000251E0();
  Set.init(minimumCapacity:)();
  v6 = *(v0 + 16);
  if (v6)
  {
    sub_100020A30();
    do
    {
      v7 = sub_100014CC4();
      v2(v7);
      v8 = sub_1000C8620();
      sub_1006A1260(v8, v9);
      v10 = sub_1001721BC();
      v11(v10);
      v1 += v3;
      --v6;
    }

    while (v6);
  }

  sub_10000536C();
}

uint64_t LocationSearchEntityQuery.init()()
{
  sub_10022C350(&qword_100CA2DB8);
  sub_100017580();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10022C350(&qword_100CA2DC0);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  type metadata accessor for LocationSearcher();
  *(swift_allocObject() + 16) = 0;
  return v0;
}

uint64_t LocationSearchEntityQuery.entities(for:)()
{
  sub_100003B08();
  v0[23] = v1;
  v0[24] = v2;
  v3 = type metadata accessor for LocationEntity();
  v0[25] = v3;
  sub_100003AE8(v3);
  v0[26] = v4;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10069AFAC()
{

  v3 = sub_1000D409C(v2);
  v1[22] = _swiftEmptyArrayStorage;
  v1[30] = v3;
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 56);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {

          goto LABEL_19;
        }

        v6 = *(v3 + 56 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    v10 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v0 = v10[1];

    if (v11 == static Location.currentLocationID.getter() && v0 == v12)
    {
      break;
    }

    v6 &= v6 - 1;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_17;
    }
  }

LABEL_17:

  v0 = v1 + 17;
  static LocationSearchEntity.makeCurrentLocation()();
  sub_1006A0504(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = v15;
  v8 = *(v15 + 16);
  v9 = *(v15 + 24);
  v3 = v8 + 1;
  if (v8 < v9 >> 1)
  {
    goto LABEL_18;
  }

LABEL_23:
  v22 = sub_100031C84(v9);
  sub_1006A0504(v22, v3, 1, v23);
  v16 = v24;
LABEL_18:
  *(v16 + 16) = v3;
  v17 = v16 + 40 * v8;
  v18 = *v0;
  v19 = *(v0 + 1);
  *(v17 + 64) = *(v0 + 32);
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  v1[22] = v16;
LABEL_19:
  AppDependency.wrappedValue.getter();
  sub_100071580();
  v20 = swift_task_alloc();
  v1[31] = v20;
  *v20 = v1;
  v21 = sub_100006070(v20);

  return dispatch thunk of LocationEntityManagerType.savedLocations.getter(v21);
}

uint64_t sub_10069B230()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = sub_100013484();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10069B31C()
{
  v1 = 0;
  v2 = *(v0 + 208);
  v72 = *(v0 + 256);
  v75 = *(v0 + 240);
  v71 = (v2 + 32);
  v73 = *(v72 + 16);
  v74 = (v2 + 8);
  v3 = _swiftEmptyArrayStorage;
  v70 = v2;
LABEL_2:
  while (v1 != v73)
  {
    if (v1 >= *(v72 + 16))
    {
LABEL_41:
      __break(1u);
      return;
    }

    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = *(v2 + 72);
    (*(v2 + 16))(*(v0 + 232), *(v0 + 256) + v4 + v5 * v1++, *(v0 + 200));
    v6 = LocationEntity.id.getter();
    v8 = v7;
    if (*(v75 + 16))
    {
      v9 = v6;
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._finalize()();
      sub_10002C9A0();
      v12 = ~v11;
      while (1)
      {
        v13 = *(v0 + 240);
        v14 = v10 & v12;
        if (((*(v13 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v10 & v12)) & 1) == 0)
        {
          break;
        }

        v15 = (*(v13 + 48) + 16 * v14);
        if (*v15 != v9 || v15[1] != v8)
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v10 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        v19 = *(v0 + 224);
        v18 = *(v0 + 232);
        v20 = v3;
        v21 = *(v0 + 200);

        v22 = *v71;
        v23 = v21;
        v3 = v20;
        (*v71)(v19, v18, v23);
        v77 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100037C8C();
          sub_1006A829C();
          v3 = v20;
        }

        v25 = v3[2];
        v24 = v3[3];
        v2 = v70;
        if (v25 >= v24 >> 1)
        {
          sub_100031C84(v24);
          sub_1006A829C();
          v3 = v77;
        }

        v26 = *(v0 + 224);
        v27 = *(v0 + 200);
        v3[2] = v25 + 1;
        v22(v3 + v4 + v25 * v5, v26, v27);
        goto LABEL_2;
      }
    }

    v28 = *(v0 + 232);
    v29 = *(v0 + 200);

    (*v74)(v28, v29);
  }

  sub_100006F14(v0 + 16);
  v30 = v3[2];
  if (v30)
  {
    v31 = sub_100014360();
    sub_1006A827C(v31, v32, v33);
    sub_100011468();
    v35 = v3 + v34;
    v36 = *(v2 + 72);
    v37 = *(v2 + 16);
    do
    {
      v38 = *(v0 + 216);
      v39 = *(v0 + 200);
      v37(v38, v35, v39);
      static LocationSearchEntity.makeFromLocationEntity(_:)();
      (*v74)(v38, v39);
      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];
      if (v41 >= v40 >> 1)
      {
        v42 = sub_100031C84(v40);
        sub_1006A827C(v42, v41 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v41 + 1;
      sub_100043A30(&_swiftEmptyArrayStorage[5 * v41]);
      v35 += v36;
      --v30;
    }

    while (v30);
  }

  v43 = *(v0 + 240);
  sub_10035DD3C(_swiftEmptyArrayStorage);
  sub_10002C9A0();
  if (-v44 < 64)
  {
    v45 = ~(v45 << -v44);
  }

  v46 = v45 & *(v43 + 56);
  v47 = (63 - v44) >> 6;

  v48 = 0;
  v76 = _swiftEmptyArrayStorage;
  while (v46)
  {
LABEL_31:
    v46 &= v46 - 1;

    v50 = sub_100014AD8();
    static LocationSearchEntity.makeFromIdentifier(_:)(v50, v51, v52);
    v53 = *(v0 + 56);
    v54 = *(v0 + 64);
    v56 = *(v0 + 72);
    v55 = *(v0 + 80);
    v57 = *(v0 + 88);

    if (v54)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_100037C8C();
        sub_1006A0504(v62, v63, v64, v65);
        v76 = v66;
      }

      v59 = v76[2];
      v58 = v76[3];
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_1006A0504(v58 > 1, v59 + 1, 1, v76);
        v60 = v59 + 1;
        v76 = v67;
      }

      v76[2] = v60;
      v61 = &v76[5 * v59];
      v61[4] = v53;
      v61[5] = v54;
      v61[6] = v56;
      v61[7] = v55;
      *(v61 + 64) = v57 & 1;
    }
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(*(v0 + 240) + 8 * v49 + 56);
    ++v48;
    if (v46)
    {
      v48 = v49;
      goto LABEL_31;
    }
  }

  sub_10035DD3C(v76);

  v68 = sub_1000215FC();

  v69(v68);
}

uint64_t LocationSearchEntityQuery.suggestedEntities()()
{
  sub_100003B08();
  v0[17] = v1;
  v2 = type metadata accessor for LocationEntity();
  v0[18] = v2;
  sub_100003AE8(v2);
  v0[19] = v3;
  v0[20] = swift_task_alloc();
  v4 = sub_100013484();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10069B934()
{
  sub_100013494();
  AppDependency.wrappedValue.getter();
  sub_100071580();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v2 = sub_100006070(v1);

  return dispatch thunk of LocationEntityManagerType.savedLocations.getter(v2);
}

uint64_t sub_10069B9D4()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;

  v4 = sub_100013484();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10069BAC0()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = sub_100014360();
    sub_1006A827C(v4, v5, v6);
    v7 = *(v3 + 16);
    v3 += 16;
    v22 = v7;
    sub_100011468();
    v9 = v1 + v8;
    v10 = *(v3 + 56);
    v11 = (v3 - 8);
    do
    {
      v12 = *(v0 + 160);
      v13 = *(v0 + 144);
      v22(v12, v9, v13);
      static LocationSearchEntity.makeFromLocationEntity(_:)();
      (*v11)(v12, v13);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        v16 = sub_100031C84(v14);
        sub_1006A827C(v16, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_100043A30(&_swiftEmptyArrayStorage[5 * v15]);
      v9 += v10;
      --v2;
    }

    while (v2);
  }

  sub_100006F14(v0 + 16);
  sub_10022C350(&qword_100CD1178);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100A2C3F0;
  static LocationSearchEntity.makeCurrentLocation()();
  v18 = *(v0 + 72);
  *(v17 + 32) = *(v0 + 56);
  *(v17 + 48) = v18;
  *(v17 + 64) = *(v0 + 88);
  sub_10035DD3C(_swiftEmptyArrayStorage);

  v19 = sub_1000215FC();

  return v20(v19);
}

uint64_t LocationSearchEntityQuery.entities(matching:)()
{
  sub_100003B08();
  v0[24] = v1;
  v0[25] = v2;
  v0[22] = v3;
  v0[23] = v4;
  v0[21] = v5;
  v6 = type metadata accessor for LocationEntity();
  v0[26] = v6;
  sub_100003AE8(v6);
  v0[27] = v7;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v8 = sub_100013484();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10069BD74()
{
  sub_100013494();
  AppDependency.wrappedValue.getter();
  sub_100071580();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v2 = sub_100006070(v1);

  return dispatch thunk of LocationEntityManagerType.savedLocations.getter(v2);
}

uint64_t sub_10069BE14()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = sub_100013484();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10069BF00()
{
  v1 = 0;
  v2 = v0[27];
  v39 = v0[32];
  v40 = *(v39 + 16);
  v37 = (v2 + 32);
  v38 = _swiftEmptyArrayStorage;
  while (v40 != v1)
  {
    if (v1 >= *(v39 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v0[21];
    v3 = v0[22];
    v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v6 = *(v2 + 72);
    (*(v2 + 16))(v0[30], v0[32] + v5 + v6 * v1, v0[26]);
    v0[17] = LocationEntity.name.getter();
    v0[18] = v7;
    v0[19] = v4;
    v0[20] = v3;
    sub_1002AC2F0();
    sub_1002AC344();
    v8 = BidirectionalCollection<>.starts<A>(with:)();

    if (v8)
    {
      v9 = *v37;
      (*v37)(v0[29], v0[30], v0[26]);
      v10 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A829C();
        v10 = v38;
      }

      v12 = v10[2];
      v11 = v10[3];
      if (v12 >= v11 >> 1)
      {
        sub_100031C84(v11);
        sub_1006A829C();
        v10 = v38;
      }

      ++v1;
      v13 = v0[29];
      v14 = v0[26];
      v10[2] = v12 + 1;
      v38 = v10;
      v9(v10 + v5 + v12 * v6, v13, v14);
    }

    else
    {
      (*(v2 + 8))(v0[30], v0[26]);
      ++v1;
    }
  }

  sub_100006F14((v0 + 2));
  v15 = v38[2];
  if (v15)
  {
    v16 = sub_100014360();
    v18 = v17;
    sub_1006A827C(v16, v19, v20);
    sub_100011468();
    v22 = v18 + v21;
    v23 = *(v2 + 72);
    v24 = *(v2 + 16);
    do
    {
      v24(v0[28], v22, v0[26]);
      static LocationSearchEntity.makeFromLocationEntity(_:)();
      v25 = sub_100014AD8();
      v26(v25);
      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        v29 = sub_100031C84(v27);
        sub_1006A827C(v29, v28 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v28 + 1;
      sub_100043A30(&_swiftEmptyArrayStorage[5 * v28]);
      v22 += v23;
      --v15;
    }

    while (v15);

    v30 = sub_1000215FC();

    v31(v30);
  }

  else
  {

    AppDependency.wrappedValue.getter();
    v32 = *sub_1000161C0(v0 + 7, v0[10]);
    v33 = swift_task_alloc();
    v0[33] = v33;
    *v33 = v0;
    v33[1] = sub_10069C2E4;
    v34 = v0[25];
    v36 = v0[21];
    v35 = v0[22];

    sub_1006A96B8(v36, v35, v32, v34);
  }
}

uint64_t sub_10069C2E4()
{
  sub_100013494();
  v2 = v1;
  v3 = *v0;
  sub_100003AF8();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;

  sub_100006F14(v3 + 56);

  v6 = *(v5 + 8);

  return v6(v2);
}

uint64_t sub_10069C438()
{
  EntityProperty.wrappedValue.getter();
  sub_10002D5A4();
  v0 = StringProtocol.contains<A>(_:)();

  return v0 & 1;
}

uint64_t sub_10069C4B8()
{
  v0 = sub_10022C350(&qword_100CD1180);
  sub_100007074(v0, static LocationSearchEntityQuery.properties);
  sub_10000703C(v0, static LocationSearchEntityQuery.properties);
  sub_10015E074();
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_10069C544()
{
  sub_10022C350(&qword_100CD1438);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_10015E074();
  v0 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_10022C350(&unk_100CE49D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A3BD20;
  *(v1 + 32) = v0;

  v2 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10069C63C()
{
  v0 = sub_10022C350(&qword_100CD1440);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10022C350(&qword_100CD1448);
  swift_allocObject();
  ContainsComparator.init<>(mappingTransform:)();
  sub_10015E074();
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_10022C350(&qword_100CD1450);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_10022C350(&qword_100CA2DA8);
  sub_1003330B4();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10069C854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t LocationSearchEntityQuery.properties.unsafeMutableAddressor()
{
  if (qword_100CA2500 != -1)
  {
    sub_100028920();
  }

  v0 = sub_10022C350(&qword_100CD1180);

  return sub_10000703C(v0, static LocationSearchEntityQuery.properties);
}

uint64_t static LocationSearchEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2500 != -1)
  {
    sub_100028920();
  }

  v2 = sub_10022C350(&qword_100CD1180);
  v3 = sub_10000703C(v2, static LocationSearchEntityQuery.properties);
  sub_100017920();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationSearchEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_100CA2500 != -1)
  {
    sub_100028920();
  }

  v2 = sub_10022C350(&qword_100CD1180);
  sub_10000703C(v2, static LocationSearchEntityQuery.properties);
  sub_1000B90F0();
  v3 = *(v2 - 8);
  v4 = sub_100040C10();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static LocationSearchEntityQuery.properties.modify())()
{
  if (qword_100CA2500 != -1)
  {
    sub_100028920();
  }

  v0 = sub_10022C350(&qword_100CD1180);
  sub_10000703C(v0, static LocationSearchEntityQuery.properties);
  sub_100005E7C();
  return j__swift_endAccess_1;
}

uint64_t sub_10069CAC4()
{
  v0 = sub_10022C350(&qword_100CD1188);
  sub_100007074(v0, static LocationSearchEntityQuery.sortingOptions);
  sub_10000703C(v0, static LocationSearchEntityQuery.sortingOptions);
  sub_10015E074();
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_10069CB48()
{
  v0 = sub_10022C350(&qword_100CD1420);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_10015E074();
  sub_1006A9C5C();
  EntityQuerySortableByProperty.init<A>(_:)();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_10022C350(&qword_100CD1430);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2C3F0;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v7(v6, v0);
  return v10;
}

uint64_t LocationSearchEntityQuery.sortingOptions.unsafeMutableAddressor()
{
  if (qword_100CA2508 != -1)
  {
    sub_100022FCC();
  }

  v0 = sub_10022C350(&qword_100CD1188);

  return sub_10000703C(v0, static LocationSearchEntityQuery.sortingOptions);
}

uint64_t static LocationSearchEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2508 != -1)
  {
    sub_100022FCC();
  }

  v2 = sub_10022C350(&qword_100CD1188);
  v3 = sub_10000703C(v2, static LocationSearchEntityQuery.sortingOptions);
  sub_100017920();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationSearchEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_100CA2508 != -1)
  {
    sub_100022FCC();
  }

  v2 = sub_10022C350(&qword_100CD1188);
  sub_10000703C(v2, static LocationSearchEntityQuery.sortingOptions);
  sub_1000B90F0();
  v3 = *(v2 - 8);
  v4 = sub_100040C10();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static LocationSearchEntityQuery.sortingOptions.modify())()
{
  if (qword_100CA2508 != -1)
  {
    sub_100022FCC();
  }

  v0 = sub_10022C350(&qword_100CD1188);
  sub_10000703C(v0, static LocationSearchEntityQuery.sortingOptions);
  sub_100005E7C();
  return j_j__swift_endAccess_1;
}

uint64_t LocationSearchEntityQuery.entities(matching:mode:sortedBy:limit:)()
{
  sub_100003B08();
  v0[12] = v1;
  v0[13] = v2;
  v3 = type metadata accessor for LocationEntity();
  v0[14] = v3;
  sub_100003AE8(v3);
  v0[15] = v4;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v5 = sub_100013484();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10069D05C()
{
  sub_100013494();
  AppDependency.wrappedValue.getter();
  sub_100071580();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v2 = sub_100006070(v1);

  return dispatch thunk of LocationEntityManagerType.savedLocations.getter(v2);
}

uint64_t sub_10069D0FC()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_100013484();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10069D1E8()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v36 = *(v0 + 160);
  v37 = *(v36 + 16);
  v34 = (v2 + 32);
  v35 = _swiftEmptyArrayStorage;
  while (v37 != v1)
  {
    if (v1 >= *(v36 + 16))
    {
      __break(1u);
      return;
    }

    v3 = *(v0 + 144);
    v4 = *(v0 + 96);
    v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v6 = *(v2 + 72);
    (*(v2 + 16))(v3, *(v0 + 160) + v5 + v6 * v1, *(v0 + 112));
    v7 = swift_task_alloc();
    *(v7 + 16) = v3;
    LOBYTE(v3) = sub_10069A828(sub_1006A99C8, v7, v4);

    if (v3)
    {
      v8 = *v34;
      (*v34)(*(v0 + 136), *(v0 + 144), *(v0 + 112));
      v9 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100037C8C();
        sub_1006A829C();
        v9 = v35;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        sub_100031C84(v10);
        sub_1006A829C();
        v9 = v35;
      }

      ++v1;
      v12 = *(v0 + 136);
      v13 = *(v0 + 112);
      v9[2] = v11 + 1;
      v35 = v9;
      v8(v9 + v5 + v11 * v6, v12, v13);
    }

    else
    {
      (*(v2 + 8))(*(v0 + 144), *(v0 + 112));
      ++v1;
    }
  }

  sub_100006F14(v0 + 16);
  v14 = v35[2];
  if (v14)
  {
    v15 = sub_100014360();
    v17 = v16;
    sub_1006A827C(v15, v18, v19);
    sub_100011468();
    v21 = v17 + v20;
    v22 = *(v2 + 72);
    v23 = *(v2 + 16);
    do
    {
      v23(*(v0 + 128), v21, *(v0 + 112));
      static LocationSearchEntity.makeFromLocationEntity(_:)();
      v24 = sub_100014AD8();
      v25(v24);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        v31 = sub_100031C84(v26);
        sub_1006A827C(v31, v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[5 * v27];
      v29 = *(v0 + 56);
      v30 = *(v0 + 72);
      *(v28 + 64) = *(v0 + 88);
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v21 += v22;
      --v14;
    }

    while (v14);
  }

  v32 = sub_1000215FC();

  v33(v32);
}

uint64_t sub_10069D530()
{
  static LocationSearchEntity.makeFromLocationEntity(_:)();
  v0 = sub_10069C438();
  v3 = v2;
  sub_1002ED110(&v3);

  return v0 & 1;
}

uint64_t sub_10069D5AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10069D670;

  return LocationSearchEntityQuery.entities(matching:)();
}

uint64_t sub_10069D670()
{
  sub_100013494();
  v3 = v2;
  sub_10000C7E4();
  v5 = v4;
  sub_10000CCF8();
  *v6 = v5;
  v7 = *v1;
  sub_100003AF8();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_10069D7BC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1();
  sub_100017920();
  sub_10022C350(a2);
  sub_1000037E8();
  return (*(v6 + 16))(a3, v5);
}

uint64_t sub_10069D840(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1006A9CD0;

  return LocationSearchEntityQuery.entities(matching:mode:sortedBy:limit:)();
}

uint64_t sub_10069D8E0@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchEntityQuery.init()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10069D90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1006A9CD8;

  return LocationSearchEntityQuery.entities(for:)();
}

uint64_t sub_10069D9A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1006A9CD0;

  return LocationSearchEntityQuery.suggestedEntities()();
}

uint64_t sub_10069DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10069DB00;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10069DB00()
{
  sub_100003B08();
  v3 = v2;
  sub_10000C7E4();
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_10069DBF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100615A3C();
  *v5 = v2;
  v5[1] = sub_10069DCA4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10069DCA4()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10069DD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10069DCA4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

void sub_10069DE44()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD11C8, &unk_100A76500);
  sub_100011748();
  type metadata accessor for ArticleModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ArticleModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069DF1C()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD11B8);
    v7 = sub_1000C8F04();
    sub_10000ECE0(v7);
    sub_100020308(v8 / 40);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_100192240();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069DFF4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CAECE8, &unk_100A3E808);
  v8 = sub_100011748();
  type metadata accessor for ComparisonCapsuleViewModel.Row(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ComparisonCapsuleViewModel.Row, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E0CC()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1530, &unk_100A769A0);
  sub_100011748();
  type metadata accessor for _LazyLayout_PlacedSubview_V1();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for _LazyLayout_PlacedSubview_V1, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E1A4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1528, &unk_100A76998);
  sub_100011748();
  type metadata accessor for _LazyLayout_ProposedSubview_V1();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for _LazyLayout_ProposedSubview_V1, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E27C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD11D8, &unk_100A76510);
  sub_100011748();
  type metadata accessor for LocationData();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for LocationData, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E354()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1220, &unk_100A76570);
  sub_100011748();
  type metadata accessor for DetailChartDataElement();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for DetailChartDataElement, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E42C()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CAB980);
    v7 = sub_1000BCEFC();
    sub_1000D3F3C(v7);
    sub_100036DFC(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_10069E4F4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CAB978, &unk_100A76730);
  sub_100011748();
  type metadata accessor for Date();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for Date, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E5CC()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1398, &unk_100A767C8);
  sub_100011748();
  type metadata accessor for HourTemperatureStatistics();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for HourTemperatureStatistics, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E6C8()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CCCF88, &unk_100A6DA60);
  sub_100011748();
  type metadata accessor for HistoricalFact();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for HistoricalFact, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069E7A0()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CAC3F8);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069E870()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD14E8);
    v7 = sub_1000C8F04();
    sub_10000ECE0(v7);
    sub_100020308(v8 / 104);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_100192240();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069E948()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD11F0, &unk_100A76538);
  sub_100011748();
  type metadata accessor for OverviewTableRowViewModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for OverviewTableRowViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069EA20()
{
  sub_1000210F4();
  if (v5)
  {
    sub_100014CB4();
    if (v6 != v7)
    {
      sub_100030000();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CD1500);
    v8 = sub_1006A9D78();
    sub_1000D3F3C(v8);
    v8[2] = v3;
    v8[3] = 2 * (v9 / v4);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000B0EB8();
  if (v1)
  {
    if (v8 != v0 || v11 + 40 * v3 <= v10)
    {
      sub_1006A9D24();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1006A9D24();
    memcpy(v16, v17, v18);
  }
}

void sub_10069EAF4()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CACDE8);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_1000926EC();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069EBBC()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD13B8);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069EC8C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CAEC98, &unk_100A76590);
  v8 = sub_100011748();
  type metadata accessor for ConditionDetailPlatterViewModel(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ConditionDetailPlatterViewModel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069ED64()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1238, &unk_100A765A0);
  sub_100011748();
  type metadata accessor for HourWeather();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for HourWeather, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069EE3C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1260, &unk_100A765D8);
  v8 = sub_100011748();
  type metadata accessor for ConditionDetailChartInputs(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ConditionDetailChartInputs, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069EF14()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1258, &unk_100A765D0);
  v8 = sub_100011748();
  type metadata accessor for ConditionDetailChartInput(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ConditionDetailChartInput, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F034()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1228, &unk_100A76588);
  sub_100011748();
  type metadata accessor for DetailChartsViewModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for DetailChartsViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F10C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CC7690, &unk_100A64150);
  v8 = sub_100011748();
  type metadata accessor for UnitsConfigurationViewModel.Temperature(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for UnitsConfigurationViewModel.Temperature, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F1E4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1280, &unk_100A76610);
  v8 = sub_100011748();
  type metadata accessor for DayPickerViewModel.CalendarDayViewModel(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for DayPickerViewModel.CalendarDayViewModel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F2BC()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD13F8);
    v7 = sub_1000C8F04();
    sub_10000ECE0(v7);
    sub_100020308(v8 / 40);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_100192240();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069F3B0()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD1350);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_1000926EC();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069F478()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1460, &unk_100A768C8);
  sub_100011748();
  type metadata accessor for URLQueryItem();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for URLQueryItem, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F590()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CAC430);
    v7 = sub_1000BCEFC();
    sub_1000D3F3C(v7);
    sub_100036DFC(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_10069F658()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1218, &unk_100A76568);
  sub_100011748();
  type metadata accessor for InterpolationElement();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for InterpolationElement, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F730()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CB5260, &unk_100A48A20);
  sub_100011748();
  type metadata accessor for URLHandlerPattern();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for URLHandlerPattern, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F808()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CBD438, &unk_100A54320);
  v8 = sub_100011748();
  type metadata accessor for ScrubberHour(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ScrubberHour, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F8E0()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD13A0, &unk_100A767D0);
  v8 = sub_100011748();
  type metadata accessor for ScrubberDay(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ScrubberDay, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069F9DC()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CCD858, &unk_100A6E598);
  sub_100011748();
  type metadata accessor for LocationModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for LocationModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069FAB4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1300, &unk_100A766F8);
  v8 = sub_100011748();
  type metadata accessor for LocationWeatherDataState(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for LocationWeatherDataState, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069FB8C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD11C0, &unk_100A764F8);
  sub_100011748();
  type metadata accessor for ArticlePlacement();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for ArticlePlacement, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069FC64()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1330, &unk_100A76738);
  v8 = sub_100011748();
  type metadata accessor for WeatherData(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for WeatherData, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069FD3C()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CD1508);
    v7 = sub_1000BCEFC();
    sub_1000D3F3C(v7);
    sub_100036DFC(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_10069FE04()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CB97B8);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_1000926EC();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10069FED0()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1518, &unk_100A76988);
  v8 = sub_100011748();
  type metadata accessor for LocationViewCellContentDescriptor(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for LocationViewCellContentDescriptor, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_10069FFC4()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1308, &unk_100A76700);
  v8 = sub_100011748();
  type metadata accessor for ListLocationViewModel(v8);
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for ListLocationViewModel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_1006A009C()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD14D8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_1000D3DB0(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1006A0164()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD12C8, &unk_100A76688);
  sub_100011748();
  type metadata accessor for NewsArticle();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for NewsArticle, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_1006A023C()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1210, &unk_100A76560);
  sub_100011748();
  type metadata accessor for DetailChartViewModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for DetailChartViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_1006A0338()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD14F0, &unk_100A76960);
  sub_100011748();
  type metadata accessor for VFXEffectViewID();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for VFXEffectViewID, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_1006A0410()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CD1278, &unk_100A76600);
  sub_100011748();
  type metadata accessor for DayWeather();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for DayWeather, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

void sub_1006A0504(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100014CB4();
    if (v7 != v8)
    {
      sub_100030000();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100088474();
  if (v7 ^ v8 | v15)
  {
    v16 = v4;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_1000BAF18(v9, v10, v11, v12, v13);
    v17 = swift_allocObject();
    sub_10000ECE0(v17);
    v16[2] = v4;
    v16[3] = 2 * (v18 / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v19 = sub_1000B99E0();
  if (a1)
  {
    if (v16 != a4 || &v20[40 * v4] <= v19)
    {
      memmove(v19, v20, 40 * v4);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1006A06F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100004870(a3, result);
  }

  return result;
}

char *sub_1006A075C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004870(a3, result);
  }

  return result;
}

char *sub_1006A0784(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100004870(a3, result);
  }

  return result;
}

BOOL sub_1006A0894(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for LocationOfInterestType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1006A5FC8(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005E46C(&qword_100CA35B0, &type metadata accessor for LocationOfInterestType);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_1006A0B5C()
{
  sub_10000C778();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  sub_1000037C4();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v27 = (&v27 - v11);
  v28 = v0;
  v12 = *v0;
  Hasher.init(_seed:)();
  v13 = *v2;
  v14 = v2[1];
  String.hash(into:)();
  v30 = v4;
  type metadata accessor for LocationOfInterestType();
  sub_10001F540();
  sub_10005E46C(v15, v16);
  v31 = v2;
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  sub_10002C9A0();
  v19 = v18 & ~v17;
  if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v17;
    v21 = *(v6 + 72);
    while (1)
    {
      sub_1006A9B9C(*(v12 + 48) + v21 * v19, v10);
      v22 = *v10 == v13 && v10[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
      {
        break;
      }

      sub_1006A9C00(v10);
      v19 = (v19 + 1) & v20;
      if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1006A9C00(v10);
    sub_1006A9C00(v31);
    sub_1006A9B9C(*(v12 + 48) + v21 * v19, v29);
  }

  else
  {
LABEL_10:
    v23 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v31;
    v26 = v27;
    sub_1006A9B9C(v31, v27);
    v32 = *v23;
    sub_1006A6278(v26, v19, isUniquelyReferenced_nonNull_native);
    *v23 = v32;
    sub_100235F88(v25, v29);
  }

  sub_10000536C();
}

BOOL sub_1006A0EF4(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for Location();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1006A68FC(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005E46C(&qword_100CA3A00, &type metadata accessor for Location);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1006A11BC(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  static Hasher._hash(seed:_:)();
  sub_1000FFC70();
  while (1)
  {
    sub_1000B917C();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000249AC();
  v11 = sub_1006A6BAC(a2, v3, v10);
  sub_1000871CC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_1006A1260(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1006A6CB0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_10005E46C(&qword_100CA39E0, &type metadata accessor for DetailChartCondition);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_1006A1528(unsigned __int8 *a1, unsigned __int8 a2)
{
  v6 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._finalize()();
  sub_1000FFC70();
  while (1)
  {
    sub_1000B917C();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1000249AC();
  sub_1006A6F60(a2, v3, v10);
  sub_1000871CC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

void sub_1006A19B8()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v3 = sub_100003AE8(v2);
  v5 = v4;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10022C350(&qword_100CD1408);
  v9 = *v0;
  v10 = static _SetStorage.copy(original:)();
  if (v9[2])
  {
    v11 = sub_10003725C();
    v13 = (v12 + 63) >> 6;
    if (v10 != v9 || v11 >= &v9[v13 + 7])
    {
      memmove(v11, v9 + 7, 8 * v13);
    }

    v15 = 0;
    *(v10 + 16) = v9[2];
    sub_100041024();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v24 = *(v5 + 72) * (v21 | (v15 << 6));
        sub_1006A9B9C(v9[6] + v24, v8);
        sub_100235F88(v8, *(v10 + 48) + v24);
      }

      while (v18);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_17;
      }

      v23 = v9[v15 + 7];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v10;
    sub_10000536C();
  }
}

void *sub_1006A1B60()
{
  v1 = v0;
  sub_10022C350(&qword_100CACD28);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1006A1CB8()
{
  v1 = v0;
  sub_10022C350(&qword_100CD1538);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1006A1E48()
{
  sub_10000C778();
  v2 = v1;
  v3 = v0;
  v5 = v4(0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_10022C350(v2);
  v11 = *v0;
  v12 = static _SetStorage.copy(original:)();
  if (v11[2])
  {
    v28 = v3;
    v13 = sub_10003725C();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= &v11[v15 + 7])
    {
      memmove(v13, v11 + 7, 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = v11[2];
    sub_100041024();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v29 = v7 + 32;
    v30 = v7 + 16;
    if ((v19 & v18) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_15:
        v26 = *(v7 + 72) * (v23 | (v17 << 6));
        (*(v7 + 16))(v10, v11[6] + v26, v5);
        (*(v7 + 32))(*(v12 + 48) + v26, v10, v5);
      }

      while (v20);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v3 = v28;
        goto LABEL_19;
      }

      v25 = v11[v17 + 7];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v3 = v12;
    sub_10000536C();
  }
}

void sub_1006A204C()
{
  v2 = v0;
  sub_10022C350(&qword_100CD14F8);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  if (*(v3 + 16))
  {
    sub_10003725C();
    sub_1000C8530();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    sub_10003BB38();
    if (v12)
    {
      do
      {
        sub_1000E5A14();
LABEL_15:
        *(*(v4 + 48) + 8 * v14) = *(*(v3 + 48) + 8 * v14);
      }

      while (v13);
    }

    v15 = v10;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v1 + v16))
      {
        sub_1000E3208();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

uint64_t sub_1006A211C()
{
  v1 = v0;
  v32 = type metadata accessor for LocationOfInterestType();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD1400);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1006A2434()
{
  v1 = v0;
  v2 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD1408);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v5 + 48);
        v19 = *(v31 + 72);
        sub_1006A9B9C(v18 + v19 * (v15 | (v8 << 6)), v4);
        Hasher.init(_seed:)();
        String.hash(into:)();
        type metadata accessor for LocationOfInterestType();
        sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_100235F88(v4, *(v7 + 48) + v23 * v19);
        ++*(v7 + 16);
        v5 = v30;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v29;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1006A2744()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD12B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A29F4()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CACD28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A2C28()
{
  v1 = v0;
  v32 = type metadata accessor for Location();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD11E0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1006A2F40()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD1538);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = static Hasher._hash(seed:_:)();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A312C()
{
  v1 = v0;
  v32 = type metadata accessor for DetailChartCondition();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD1250);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1006A3444()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A3660()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A3918()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1006A3BF4()
{
  v1 = v0;
  v35 = type metadata accessor for LocationOfInterestType();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10022C350(&qword_100CD1400);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1006A76B8(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A3F4C()
{
  v1 = v0;
  v2 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10022C350(&qword_100CD1408);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v1 = v7;
    return result;
  }

  v30 = v0;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48);
    v19 = *(v32 + 72);
    sub_100235F88(v18 + v19 * (v15 | (v8 << 6)), v4);
    Hasher.init(_seed:)();
    String.hash(into:)();
    type metadata accessor for LocationOfInterestType();
    sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_100235F88(v4, *(v7 + 48) + v23 * v19);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A428C()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD12B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A456C()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CACD28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1006A76B8(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A47C8()
{
  v1 = v0;
  v35 = type metadata accessor for Location();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10022C350(&qword_100CD11E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1006A76B8(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A4B20()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD1538);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_1006A76B8(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = static Hasher._hash(seed:_:)();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A4D44()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD1200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A51E4()
{
  v1 = v0;
  v35 = type metadata accessor for DetailChartCondition();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10022C350(&qword_100CD1250);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1006A76B8(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A553C()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v15);
    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5788()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD14D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1006A76B8(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}
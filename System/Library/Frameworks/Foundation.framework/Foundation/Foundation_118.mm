uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation23LocalizedStringResourceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v34 = v2;
  v35 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    *&v28[32] = v5[4];
    *&v28[48] = v8;
    v29 = *(v5 + 12);
    v9 = v5[1];
    v26 = *v5;
    v27 = v9;
    v10 = v5[3];
    *v28 = v5[2];
    *&v28[16] = v10;
    v11 = v6[1];
    v30 = *v6;
    v31 = v11;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[4];
    v15 = v6[5];
    v33 = *(v6 + 12);
    *&v32[32] = v14;
    *&v32[48] = v15;
    *v32 = v12;
    *&v32[16] = v13;
    if (v26 != v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v16 = v27;
    v17 = *v28;
    v18 = *(&v31 + 1);
    v19 = *v32;
    outlined init with copy of LocalizedStringResource(&v26, v25);
    outlined init with copy of LocalizedStringResource(&v30, v25);

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS10FoundationE17LocalizationValueV14FormatArgumentV_Tt1g5(v16) & 1) == 0)
    {

LABEL_25:
      outlined destroy of LocalizedStringResource(&v30);
      outlined destroy of LocalizedStringResource(&v26);
      return 0;
    }

    if (*(&v16 + 1) == v18 && v17 == v19)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (*&v28[16])
    {
      if (!*&v32[16] || *&v28[8] != *&v32[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*&v32[16])
    {
      goto LABEL_25;
    }

    v24 = *&v32[24];
    *v25 = *&v28[24];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = specialized static Locale.== infix(_:_:)(v25, &v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    v24 = *&v32[40];
    *v25 = *&v28[40];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = static URL.== infix(_:_:)(v25, &v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of LocalizedStringResource(&v30);
    outlined destroy of LocalizedStringResource(&v26);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 104);
    v5 = (v5 + 104);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation8CalendarV14RecurrenceRuleV7WeekdayO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v6 < 0)
      {
        result = 0;
        if ((v8 & 0x80000000) == 0 || v5 != v7)
        {
          return result;
        }

        v9 = qword_1812DC598[v6 & 0x7F];
        v10 = *v4 & 0x7F;
      }

      else
      {
        if (v8 < 0)
        {
          return 0;
        }

        v9 = qword_1812DC598[v5];
        v10 = v7;
      }

      if (v9 == qword_1812DC598[v10])
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation8CalendarV14RecurrenceRuleV5MonthV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  v4 = (a2 + 40);
  do
  {
    v5 = (*(v3 - 1) != *(v4 - 1)) | *v3 ^ *v4;
    if ((*(v3 - 1) != *(v4 - 1)) | (*v3 ^ *v4) & 1)
    {
      break;
    }

    v3 += 16;
    v4 += 16;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation3URLV8TemplateV7ElementO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v27 = result + 32;
  v28 = *(result + 16);
  v26 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 24 * v3;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = (v5 + 24 * v3);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 16);
    if (*(v6 + 16))
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      if (*v6 == 7)
      {
        if (v10 != 7)
        {
          return 0;
        }

        outlined copy of URL.Template.Element();
        outlined copy of URL.Template.Element();
      }

      else
      {
        if (v10 == 7)
        {
          return 0;
        }

        if (qword_1812DC5D0[v8] == qword_1812DC5D0[v10])
        {
          outlined copy of URL.Template.Element();
          outlined copy of URL.Template.Element();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of URL.Template.Element();
          outlined copy of URL.Template.Element();
          swift_bridgeObjectRelease_n();
          if ((v14 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      v15 = *(v7 + 16);
      if (v15 != *(v11 + 16))
      {
        goto LABEL_44;
      }

      if (v15 && v7 != v11)
      {
        v16 = (v7 + 57);
        v17 = (v11 + 57);
        while (1)
        {
          v18 = *(v16 - 9);
          v19 = *(v16 - 1);
          v20 = *v16;
          v21 = *(v17 - 9);
          v22 = *(v17 - 1);
          v23 = *v17;
          v24 = *(v16 - 25) == *(v17 - 25) && *(v16 - 17) == *(v17 - 17);
          if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          if (v19)
          {
            if (!v22)
            {
              break;
            }
          }

          else
          {
            if (v18 == v21)
            {
              v25 = v22;
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              break;
            }
          }

          if ((v20 ^ v23))
          {
            break;
          }

          v16 += 32;
          v17 += 32;
          if (!--v15)
          {
            goto LABEL_5;
          }
        }

LABEL_44:
        outlined consume of URL.Template.Element();
        outlined consume of URL.Template.Element();
        return 0;
      }

LABEL_5:
      outlined consume of URL.Template.Element();
      result = outlined consume of URL.Template.Element();
      v4 = v27;
      v2 = v28;
      v5 = v26;
    }

    else
    {
      if (v12)
      {
        return 0;
      }

      if (v8 != v10 || v7 != v11)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation3URLV8TemplateV10ExpressionV7ElementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 57);
    for (i = (a2 + 57); ; i += 32)
    {
      v5 = *(v3 - 9);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(v3 - 25) == *(i - 25) && *(v3 - 17) == *(i - 17);
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      result = 0;
      if (v6)
      {
        if (!v9)
        {
          return result;
        }
      }

      else
      {
        if (v5 == v8)
        {
          v13 = v9;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return result;
        }
      }

      if ((v7 ^ v10))
      {
        return result;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation18PresentationIntentV0D4TypeV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v38 = result + 32;
  v4 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_91;
    }

    v8 = v38 + 32 * v3;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 24);
    v12 = *(v8 + 16);
    v13 = v4 + 32 * v3;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v12 > 2)
    {
      break;
    }

    if (!v12)
    {
      outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
      outlined consume of PresentationIntent.Kind(v9, v10, 0);
      outlined consume of PresentationIntent.Kind(v9, v10, 0);
      if (v16)
      {
        goto LABEL_84;
      }

      v20 = v14;
      v21 = v15;
      v22 = 0;
      goto LABEL_39;
    }

    if (v12 == 1)
    {
      outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
      outlined consume of PresentationIntent.Kind(v9, v10, 1);
      outlined consume of PresentationIntent.Kind(v9, v10, 1);
      if (v16 != 1)
      {
        goto LABEL_84;
      }

      v20 = v14;
      v21 = v15;
      v22 = 1;
LABEL_39:
      outlined consume of PresentationIntent.Kind(v20, v21, v22);
      result = 0;
      if (v9 != v14)
      {
        return result;
      }

      goto LABEL_40;
    }

    if (v16 != 2)
    {
      outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
      outlined copy of PresentationIntent.Kind(v9, v10, 2);
      v33 = v9;
      v34 = v10;
      v35 = 2;
LABEL_83:
      outlined consume of PresentationIntent.Kind(v33, v34, v35);
LABEL_84:
      v36 = v14;
      v37 = v15;
      v32 = v16;
      goto LABEL_85;
    }

    if (!v10)
    {
      outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), 2);
      outlined copy of PresentationIntent.Kind(v14, v15, 2);
      outlined copy of PresentationIntent.Kind(v9, 0, 2);
      outlined consume of PresentationIntent.Kind(v9, 0, 2);
      result = outlined consume of PresentationIntent.Kind(v14, v15, 2);
      if (!v15)
      {
        goto LABEL_8;
      }

      v36 = v14;
      v37 = v15;
LABEL_89:
      v32 = 2;
LABEL_85:
      outlined consume of PresentationIntent.Kind(v36, v37, v32);
      return 0;
    }

    if (!v15)
    {
      outlined copy of PresentationIntent.Kind(*v13, 0, 2);
      outlined copy of PresentationIntent.Kind(v14, 0, 2);
      outlined copy of PresentationIntent.Kind(v9, v10, 2);
      outlined consume of PresentationIntent.Kind(v9, v10, 2);
      v36 = v14;
      v37 = 0;
      goto LABEL_89;
    }

    if (v9 == v14 && v10 == v15)
    {
      outlined copy of PresentationIntent.Kind(v9, v10, 2);
      outlined copy of PresentationIntent.Kind(v9, v10, 2);
      outlined consume of PresentationIntent.Kind(v9, v10, 2);
      v5 = v9;
      v6 = v10;
      v7 = 2;
LABEL_7:
      result = outlined consume of PresentationIntent.Kind(v5, v6, v7);
LABEL_8:
      if (v11 != v17)
      {
        return 0;
      }

      goto LABEL_9;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PresentationIntent.Kind(v14, v15, 2);
    outlined copy of PresentationIntent.Kind(v9, v10, 2);
    outlined consume of PresentationIntent.Kind(v9, v10, 2);
    outlined consume of PresentationIntent.Kind(v14, v15, 2);
    result = 0;
    if ((v29 & 1) == 0)
    {
      return result;
    }

LABEL_40:
    if (v11 != v17)
    {
      return result;
    }

LABEL_9:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (v12 > 4)
  {
    if (v12 != 5)
    {
      if (v9 > 2)
      {
        if (v9 ^ 3 | v10)
        {
          v26 = *v13;
          v27 = *(v13 + 8);
          v28 = *(v13 + 16);
          if (v9 ^ 4 | v10)
          {
            outlined copy of PresentationIntent.Kind(v26, v27, v28);
            outlined consume of PresentationIntent.Kind(v9, v10, 6);
            if (v16 != 6 || v14 != 5 || v15)
            {
              goto LABEL_80;
            }

            outlined consume of PresentationIntent.Kind(v9, v10, 6);
            v5 = 5;
          }

          else
          {
            outlined copy of PresentationIntent.Kind(v26, v27, v28);
            outlined consume of PresentationIntent.Kind(v9, v10, 6);
            if (v16 != 6 || v14 != 4 || v15)
            {
              goto LABEL_80;
            }

            outlined consume of PresentationIntent.Kind(v9, v10, 6);
            v5 = 4;
          }
        }

        else
        {
          outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          if (v16 != 6 || v14 != 3 || v15)
          {
LABEL_80:
            v33 = v9;
            v34 = v10;
            v35 = 6;
            goto LABEL_83;
          }

          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          v5 = 3;
        }
      }

      else if (v9 | v10)
      {
        v23 = *v13;
        v24 = *(v13 + 8);
        v25 = *(v13 + 16);
        if (v9 ^ 1 | v10)
        {
          outlined copy of PresentationIntent.Kind(v23, v24, v25);
          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          if (v16 != 6 || v14 != 2 || v15)
          {
            goto LABEL_80;
          }

          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          v5 = 2;
        }

        else
        {
          outlined copy of PresentationIntent.Kind(v23, v24, v25);
          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          if (v16 != 6 || v14 != 1 || v15)
          {
            goto LABEL_80;
          }

          outlined consume of PresentationIntent.Kind(v9, v10, 6);
          v5 = 1;
        }
      }

      else
      {
        outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
        outlined consume of PresentationIntent.Kind(v9, v10, 6);
        outlined consume of PresentationIntent.Kind(v9, v10, 6);
        if (v16 != 6 || v15 | v14)
        {
          goto LABEL_84;
        }

        v5 = 0;
      }

      v6 = 0;
      v7 = 6;
      goto LABEL_7;
    }

    outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
    outlined consume of PresentationIntent.Kind(v9, v10, 5);
    outlined consume of PresentationIntent.Kind(v9, v10, 5);
    if (v16 != 5)
    {
      goto LABEL_84;
    }

    v20 = v14;
    v21 = v15;
    v22 = 5;
    goto LABEL_39;
  }

  if (v12 != 3)
  {
    outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
    outlined consume of PresentationIntent.Kind(v9, v10, 4);
    outlined consume of PresentationIntent.Kind(v9, v10, 4);
    if (v16 != 4)
    {
      goto LABEL_84;
    }

    v20 = v14;
    v21 = v15;
    v22 = 4;
    goto LABEL_39;
  }

  if (v16 != 3)
  {
    outlined copy of PresentationIntent.Kind(*v13, *(v13 + 8), *(v13 + 16));
    outlined copy of PresentationIntent.Kind(v9, v10, 3);
    v33 = v9;
    v34 = v10;
    v35 = 3;
    goto LABEL_83;
  }

  v18 = *(v9 + 16);
  if (v18 != *(v14 + 16))
  {
LABEL_79:
    outlined copy of PresentationIntent.Kind(v14, v15, 3);
    outlined copy of PresentationIntent.Kind(v9, v10, 3);
    outlined consume of PresentationIntent.Kind(v9, v10, 3);
    v36 = v14;
    v37 = v15;
    v32 = 3;
    goto LABEL_85;
  }

  if (v18)
  {
    v19 = v9 == v14;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_21:
    outlined copy of PresentationIntent.Kind(v14, v15, 3);
    outlined copy of PresentationIntent.Kind(v9, v10, 3);
    outlined consume of PresentationIntent.Kind(v9, v10, 3);
    v5 = v14;
    v6 = v15;
    v7 = 3;
    goto LABEL_7;
  }

  v30 = (v9 + 32);
  v31 = (v14 + 32);
  while (v18)
  {
    if (*v30 != *v31)
    {
      goto LABEL_79;
    }

    ++v30;
    ++v31;
    if (!--v18)
    {
      goto LABEL_21;
    }
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation13TermOfAddressV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    v7 = (v4 + 104 * v3);
    v8 = v7[3];
    v9 = v7[5];
    v102 = v7[4];
    v103 = v9;
    v10 = v7[1];
    v99[0] = *v7;
    v99[1] = v10;
    v11 = v7[3];
    v13 = *v7;
    v12 = v7[1];
    v100 = v7[2];
    v101 = v11;
    v14 = (v5 + 104 * v3);
    v15 = v14[1];
    v105[0] = *v14;
    v105[1] = v15;
    v16 = v14[3];
    v17 = v14[5];
    v108 = v14[4];
    v109 = v17;
    v18 = v14[3];
    v19 = *v14;
    v20 = v14[1];
    v106 = v14[2];
    v107 = v18;
    v111[0] = v13;
    v111[1] = v12;
    v21 = v7[5];
    v111[4] = v102;
    v111[5] = v21;
    v111[2] = v100;
    v111[3] = v8;
    v115 = v106;
    v114 = v20;
    v104 = *(v7 + 12);
    v110 = *(v14 + 12);
    v112 = *(v7 + 12);
    v113 = v19;
    v22 = v14[5];
    v119 = *(v14 + 12);
    v118 = v22;
    v117 = v108;
    v116 = v16;
    v23 = v104;
    if (v104 <= 1)
    {
      break;
    }

    if (v104 == 2)
    {
      outlined init with copy of TermOfAddress(v105, &v94);
      outlined destroy of TermOfAddress(v99);
      v38 = v110;
      outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
      if (v38 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v104 != 3)
      {
        goto LABEL_16;
      }

      outlined init with copy of TermOfAddress(v105, &v94);
      outlined destroy of TermOfAddress(v99);
      v25 = v110;
      outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
      if (v25 != 3)
      {
        return 0;
      }
    }

LABEL_6:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  if (!v104)
  {
    outlined init with copy of TermOfAddress(v105, &v94);
    outlined destroy of TermOfAddress(v99);
    v6 = v110;
    outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
    if (v6)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v104 == 1)
  {
    outlined init with copy of TermOfAddress(v105, &v94);
    outlined destroy of TermOfAddress(v99);
    v24 = v110;
    outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
    if (v24 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_16:
  v26 = v14[3];
  v90 = v14[2];
  v91 = v26;
  v27 = v14[5];
  v92 = v14[4];
  v93 = v27;
  v28 = v14[1];
  v88 = *v14;
  v89 = v28;
  v29 = v110;
  if (v110 < 4)
  {
    outlined init with copy of TermOfAddress(v105, &v94);
    outlined init with copy of TermOfAddress(v99, &v94);
    goto LABEL_129;
  }

  v30 = v7[3];
  *v85 = v7[2];
  *&v85[16] = v30;
  v31 = v7[5];
  v86 = v7[4];
  v87 = v31;
  v32 = v7[1];
  v83 = *v7;
  v84 = v32;
  outlined init with copy of TermOfAddress(v105, &v94);
  outlined init with copy of TermOfAddress(v99, &v94);
  outlined init with copy of TermOfAddress(v105, &v94);
  outlined init with copy of TermOfAddress(v99, &v94);
  v33 = Locale.Language.maximalIdentifier.getter();
  v35 = v34;
  *v96 = v90;
  *&v96[16] = v91;
  v97 = v92;
  v98 = v93;
  v94 = v88;
  v95 = v89;
  if (v33 == Locale.Language.maximalIdentifier.getter() && v35 == v36)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  v40 = *(v23 + 16);
  if (v40 == *(v29 + 16))
  {
    if (!v40 || v23 == v29)
    {
      outlined destroy of TermOfAddress(v105);
      outlined destroy of TermOfAddress(v99);
      outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
      goto LABEL_6;
    }

    v70 = v5;
    v71 = v4;
    if (!*(v23 + 16))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return result;
    }

    v41 = 0;
    v42 = (v23 + 32);
    v43 = (v29 + 32);
    v78 = v40 - 1;
    while (2)
    {
      v45 = v42[1];
      v44 = v42[2];
      v46 = *v42;
      *&v85[13] = *(v42 + 45);
      v84 = v45;
      *v85 = v44;
      v83 = v46;
      if (v41 >= *(v29 + 16))
      {
        goto LABEL_133;
      }

      v48 = v43[1];
      v47 = v43[2];
      v49 = *v43;
      *&v96[13] = *(v43 + 45);
      v95 = v48;
      *v96 = v47;
      v94 = v49;
      if (v83 != v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v84 == 3)
      {
        if (v95 != 3)
        {
          break;
        }
      }

      else if (v84 != v95)
      {
        break;
      }

      if (BYTE1(v84) == 14)
      {
        if (BYTE1(v95) != 14)
        {
          break;
        }
      }

      else if (BYTE1(v84) != BYTE1(v95))
      {
        break;
      }

      if (BYTE2(v84) == 6)
      {
        if (BYTE2(v95) != 6)
        {
          break;
        }
      }

      else if (BYTE2(v84) != BYTE2(v95))
      {
        break;
      }

      v50 = *(&v84 + 1);
      v51 = *(&v95 + 1);
      outlined init with copy of Morphology.Pronoun(&v83, &v79);
      outlined init with copy of Morphology.Pronoun(&v94, &v79);
      outlined init with copy of Morphology(&v84, &v79);
      outlined init with copy of Morphology(&v95, &v79);
      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation10MorphologyV14_CustomPronounVTt1g5(v50, v51) & 1) == 0)
      {
LABEL_118:
        outlined destroy of Morphology(&v95);
        outlined destroy of Morphology(&v84);
        goto LABEL_127;
      }

      if (v85[0] == 14)
      {
        if (v96[0] != 14)
        {
          goto LABEL_118;
        }
      }

      else if (v85[0] != v96[0])
      {
        goto LABEL_118;
      }

      if (v85[1] == 3)
      {
        if (v96[1] != 3)
        {
          goto LABEL_118;
        }
      }

      else if (v85[1] != v96[1])
      {
        goto LABEL_118;
      }

      if (v85[2] == 3)
      {
        if (v96[2] != 3)
        {
          goto LABEL_118;
        }
      }

      else if (v85[2] != v96[2])
      {
        goto LABEL_118;
      }

      if (v85[3] == 2)
      {
        if (v96[3] != 2)
        {
          goto LABEL_118;
        }
      }

      else if (v96[3] == 2 || ((v96[3] ^ v85[3]) & 1) != 0)
      {
        goto LABEL_118;
      }

      v52 = v85[4];
      v53 = v96[4];
      outlined destroy of Morphology(&v95);
      outlined destroy of Morphology(&v84);
      if (v52 == 2)
      {
        if (v53 != 2)
        {
          goto LABEL_127;
        }
      }

      else if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
      {
        goto LABEL_127;
      }

      v54 = *&v96[16];
      if (*&v85[16])
      {
        if (!*&v96[16])
        {
          v79 = *&v85[8];
          v80 = *&v85[16];
          v81 = *&v85[24];
          v82 = v85[28];
          swift_bridgeObjectRetain_n();
          outlined destroy of Morphology(&v79);

          goto LABEL_126;
        }

        v76 = *&v85[24] | (v85[28] << 32);
        v77 = *&v85[16];
        if (v85[8] == 3)
        {
          if (v96[8] != 3)
          {
            goto LABEL_120;
          }
        }

        else if (v96[8] == 3 || v85[8] != v96[8])
        {
LABEL_120:
          v69 = *&v85[8];
          swift_bridgeObjectRetain_n();
          v68 = v69;
          goto LABEL_125;
        }

        v55 = *&v96[8] & 0xFF00;
        if ((*&v85[8] & 0xFF00) == 0xE00)
        {
          if (v55 != 3584)
          {
            goto LABEL_120;
          }
        }

        else if (v55 == 3584 || ((*&v85[8] ^ *&v96[8]) & 0xFF00) != 0)
        {
          goto LABEL_120;
        }

        v56 = *&v96[8] & 0xFF0000;
        v75 = *&v85[8];
        if ((*&v85[8] & 0xFF0000) == 0x60000)
        {
          if (v56 != 393216)
          {
            goto LABEL_122;
          }
        }

        else
        {
          if (v56 == 393216)
          {
            goto LABEL_120;
          }

          if (((*&v85[8] ^ *&v96[8]) & 0xFF0000) != 0)
          {
LABEL_122:
            swift_bridgeObjectRetain_n();
            goto LABEL_124;
          }
        }

        v74 = v2;
        v57 = *&v96[24];
        v58 = v41;
        v59 = v29;
        v60 = *&v85[24] | (v85[28] << 32);
        v61 = v43;
        v62 = v96[28];
        v72 = v42;
        v73 = v58;
        v63 = *&v85[16];
        swift_bridgeObjectRetain_n();

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation10MorphologyV14_CustomPronounVTt1g5(v63, v54) & 1) == 0)
        {
          goto LABEL_123;
        }

        v64 = v57 | (v62 << 32);
        v65 = v60;
        if (v60 == 14)
        {
          v43 = v61;
          v29 = v59;
          v2 = v74;
          if (v64 != 14)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v2 = v74;
          if (v64 == 14 || (v43 = v61, v29 = v59, v64 ^ v65))
          {
LABEL_123:

LABEL_124:
            v68 = v75;
LABEL_125:
            v79 = v68;
            v80 = v77;
            v81 = v76;
            v82 = BYTE4(v76);
            outlined destroy of Morphology(&v79);
LABEL_126:

LABEL_127:
            outlined destroy of Morphology.Pronoun(&v94);
            outlined destroy of Morphology.Pronoun(&v83);
            break;
          }
        }

        if (BYTE1(v65) == 3)
        {
          v41 = v73;
          if (BYTE1(v64) != 3)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v41 = v73;
          if (BYTE1(v64) == 3 || BYTE1(v64) != BYTE1(v65))
          {
            goto LABEL_123;
          }
        }

        if (BYTE2(v65) == 3)
        {
          v42 = v72;
          if (BYTE2(v64) != 3)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v42 = v72;
          if (BYTE2(v64) == 3 || BYTE2(v64) != BYTE2(v65))
          {
            goto LABEL_123;
          }
        }

        if (BYTE3(v65) == 2)
        {
          if (BYTE3(v64) != 2)
          {
            goto LABEL_123;
          }
        }

        else if (BYTE3(v64) == 2 || (((v64 >> 24) ^ (v65 >> 24)) & 1) != 0)
        {
          goto LABEL_123;
        }

        v66 = BYTE4(v65);
        v67 = BYTE4(v64);

        if (v66 == 2)
        {
          v68 = v75;
          if (v67 != 2)
          {
            goto LABEL_125;
          }

          v79 = v75;
          v80 = v77;
          v81 = v76;
          v82 = BYTE4(v76);
          outlined destroy of Morphology(&v79);
          goto LABEL_110;
        }

        v68 = v75;
        if (v67 == 2)
        {
          goto LABEL_125;
        }

        v79 = v75;
        v80 = v77;
        v81 = v76;
        v82 = BYTE4(v76);
        outlined destroy of Morphology(&v79);

        outlined destroy of Morphology.Pronoun(&v94);
        result = outlined destroy of Morphology.Pronoun(&v83);
        if ((v67 ^ v66))
        {
          break;
        }
      }

      else
      {
        if (*&v96[16])
        {

          goto LABEL_126;
        }

LABEL_110:

        outlined destroy of Morphology.Pronoun(&v94);
        result = outlined destroy of Morphology.Pronoun(&v83);
      }

      if (v78 == v41)
      {
        outlined destroy of TermOfAddress(v105);
        outlined destroy of TermOfAddress(v99);
        outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
        v5 = v70;
        v4 = v71;
        goto LABEL_6;
      }

      v42 += 4;
      v43 += 4;
      if (++v41 >= *(v23 + 16))
      {
        goto LABEL_132;
      }

      continue;
    }
  }

LABEL_128:
  outlined destroy of TermOfAddress(v105);
  outlined destroy of TermOfAddress(v99);
LABEL_129:
  outlined destroy of TermOfAddress?(v111, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation10MorphologyV7PronounV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 13) = *(v5 + 45);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 13) = *(v24 + 13);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 13) = *(v6 + 45);
    v13 = *(v26 + 13);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 13) = v13;
    outlined init with copy of Morphology.Pronoun(v23, v16);
    outlined init with copy of Morphology.Pronoun(v25, v16);
    v14 = specialized static Morphology.Pronoun.== infix(_:_:)(&v20, &v17);
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 13) = *(v19 + 13);
    outlined destroy of Morphology.Pronoun(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 13) = *(v22 + 13);
    outlined destroy of Morphology.Pronoun(v29);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation16JSONEncoderValueO_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_70;
    }

    v7 = v4 + 24 * v3;
    v9 = *v7;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = v5 + 24 * v3;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (v10 <= 3)
    {
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          result = 0;
          if (v14 != 2 || ((v13 ^ v9) & 1) != 0)
          {
            return result;
          }
        }

        else
        {
          if (v14 != 3)
          {
            return 0;
          }

          outlined copy of JSONEncoderValue(v13, v12, 3u);
          outlined copy of JSONEncoderValue(v9, v8, 3u);
          v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation16JSONEncoderValueO_Tt1g5(v9, v13);
          outlined consume of JSONEncoderValue(v13, v12, 3u);
          result = outlined consume of JSONEncoderValue(v9, v8, 3u);
          if ((v26 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v10)
        {
          if (v14 != 1)
          {
            return 0;
          }
        }

        else if (v14)
        {
          return 0;
        }

        if (v9 != v13 || v8 != v12)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }
      }

      goto LABEL_10;
    }

    if (v10 > 5)
    {
      if (v10 == 6)
      {
        if (v14 != 6)
        {
          return 0;
        }

        v16 = *(v9 + 16);
        if (v16 != *(v13 + 16))
        {
          return 0;
        }

        if (v16)
        {
          v17 = v9 == v13;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = (v9 + 32);
          v19 = (v13 + 32);
          while (v16)
          {
            if (*v18 != *v19)
            {
              return 0;
            }

            ++v18;
            ++v19;
            if (!--v16)
            {
              goto LABEL_10;
            }
          }

LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v14 != 7 || (v12 | v13) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (v10 == 4)
    {
      if (v14 != 4)
      {
        return 0;
      }

      outlined copy of JSONEncoderValue(v13, v12, 4u);
      outlined copy of JSONEncoderValue(v9, v8, 4u);
      v15 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v9, v13);
      outlined consume of JSONEncoderValue(v13, v12, 4u);
      result = outlined consume of JSONEncoderValue(v9, v8, 4u);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (v14 != 5)
    {
      return 0;
    }

    v21 = *(v9 + 16);
    if (v21 != *(v13 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v9 == v13;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v27 = (v9 + 32);
      v28 = (v13 + 32);
      while (v21)
      {
        if (*v27 != *v28)
        {
          return 0;
        }

        ++v27;
        ++v28;
        if (!--v21)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_71;
    }

LABEL_52:
    v23 = *(v8 + 16);
    if (v23 != *(v12 + 16))
    {
      return 0;
    }

    if (v23 && v8 != v12)
    {
      break;
    }

LABEL_10:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  v24 = (v8 + 32);
  v25 = (v12 + 32);
  while (*v24 == *v25)
  {
    ++v24;
    ++v25;
    if (!--v23)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation6LocaleV15NumberingSystemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t URL.Template.Element.hash(into:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1865CD060](1);
    if (a2 == 7)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    return specialized Array<A>.hash(into:)(a1, a3);
  }

  else
  {
    MEMORY[0x1865CD060](0);

    return String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.Template.Element()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  URL.Template.Element.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template.Element()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  URL.Template.Element.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int URL.Template.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.Template()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t URL.Template.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v49[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd);
  v63 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v57 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Sst_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v49 - v10;
  v69[0] = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  v13 = String.subscript.getter();
  v15 = v14;
  v17 = v16;
  v62 = v18;

  v12[2] = v13;
  v12[3] = v15;
  v58 = (v63 + 16);
  v53 = (v63 + 8);
  v49[1] = v9 + 56;
  v55 = (v9 + 48);
  v63 = v17;
  v12[4] = v17;
  v51 = (v9 + 32);
  v50 = (v9 + 8);
  v19 = v13;
  v20 = v62;
  v64 = v1;
  v54 = v8;
  v52 = v11;
  v61 = v12;
  while (1)
  {
    v12[5] = v20;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = (*v58)(v5, static URL.Template.Global.shared + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_uriTemplateRegex, v1);
    v22 = v15 >> 14;
    if (v15 >> 14 < v19 >> 14)
    {
      break;
    }

    v59 = v19;
    v60 = v15;
    v62 = v20;
    Substring.subscript.getter();
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Regex<(Substring, Substring)> and conformance Regex<A>, &_s17_StringProcessing5RegexVySs_SstGMd);
    v23 = v5;
    v24 = v57;
    dispatch thunk of RegexComponent.regex.getter();
    v25 = v56;
    v26 = v64;
    Regex.firstMatch(in:)();

    v27 = *v53;
    (*v53)(v24, v26);
    v27(v23, v26);
    v5 = v23;
    v28 = v54;
    v29 = (*v55)(v25, 1, v54);
    v30 = v61;
    if (v29 == 1)
    {
      outlined destroy of TermOfAddress?(v25, &_s17_StringProcessing5RegexV5MatchVySs_Sst_GSgMd);
      copyLiteral #1 (upTo:) in URL.Template.init(_:)(v60, v30, v69);

      *v49[0] = v69[0];
      return result;
    }

    v31 = v28;
    v32 = v52;
    (*v51)();
    v33 = Regex.Match.range.getter();
    copyLiteral #1 (upTo:) in URL.Template.init(_:)(v33, v30, v69);
    Regex.Match.output.getter();

    v34 = MEMORY[0x1865CAE80](v65, v66, v67, v68);
    v36 = v35;

    v37 = specialized URL.Template.Expression.init(_:)(v34, v36);
    v39 = v38;
    v40 = v69[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[24 * v42];
    *(v43 + 4) = v37;
    *(v43 + 5) = v39;
    v43[48] = 1;
    v69[0] = v40;
    result = Regex.Match.range.getter();
    if (v22 < v44 >> 14)
    {
      goto LABEL_14;
    }

    v19 = Substring.subscript.getter();
    v15 = v45;
    v47 = v46;
    v20 = v48;
    (*v50)(v32, v31);

    v12 = v61;
    v61[2] = v19;
    v12[3] = v15;
    v63 = v47;
    v12[4] = v47;
    v1 = v64;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t copyLiteral #1 (upTo:) in URL.Template.init(_:)(unint64_t result, uint64_t a2, unint64_t *a3)
{
  if (*(a2 + 16) >> 14 < result >> 14)
  {

    v4 = Substring.subscript.getter();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = MEMORY[0x1865CAE80](v4, v6, v8, v10);
    v13 = v12;

    v14 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(1, v11, v13, v11, v13, 1);
    v16 = v15;
    swift_bridgeObjectRelease_n();
    v17 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v17;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
      *a3 = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
      *a3 = result;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 24 * v19;
    *(v20 + 32) = v14;
    *(v20 + 40) = v16;
    *(v20 + 48) = 0;
  }

  return result;
}

void URL.Template.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v33 = *(v1 + 16);
    v34 = *v0;
    v32 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v7 = v4 + 24 * v3;
      v9 = *v7;
      v8 = *(v7 + 8);
      if (*(v7 + 16))
      {
        v35 = *(v7 + 8);
        v10 = *v7;
        v11 = 38;
        if (v9 == 6)
        {
          v12 = 0xE100000000000000;
        }

        else
        {
          v11 = 0;
          v12 = 0xE000000000000000;
        }

        v13 = 59;
        if (v10 != 4)
        {
          v13 = 63;
        }

        if (v9 <= 5u)
        {
          v11 = v13;
          v12 = 0xE100000000000000;
        }

        v14 = 46;
        if (v10 != 2)
        {
          v14 = 47;
        }

        v15 = 43;
        if (v10)
        {
          v15 = 35;
        }

        if (v9 <= 1u)
        {
          v14 = v15;
        }

        if (v9 <= 3u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v11;
        }

        if (v9 <= 3u)
        {
          v17 = 0xE100000000000000;
        }

        else
        {
          v17 = v12;
        }

        outlined copy of URL.Template.Element();
        MEMORY[0x1865CB0E0](v16, v17);

        v18 = *(v35 + 16);
        if (v18)
        {
          v38 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
          v19 = (v35 + 57);
          do
          {
            v20 = *v19;
            v36 = *(v19 - 25);
            v37 = *(v19 - 17);
            if (*(v19 - 1) == 1)
            {
              swift_bridgeObjectRetain_n();
              v21 = 0;
              v22 = 0xE000000000000000;
            }

            else
            {
              swift_bridgeObjectRetain_n();
              v23 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1865CB0E0](v23);

              v21 = 58;
              v22 = 0xE100000000000000;
            }

            MEMORY[0x1865CB0E0](v21, v22);

            if (v20)
            {
              v24 = 42;
            }

            else
            {
              v24 = 0;
            }

            if (v20)
            {
              v25 = 0xE100000000000000;
            }

            else
            {
              v25 = 0xE000000000000000;
            }

            MEMORY[0x1865CB0E0](v24, v25);

            MEMORY[0x1865CB0E0](v36, v37);

            v27 = *(v38 + 16);
            v26 = *(v38 + 24);
            if (v27 >= v26 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            }

            *(v38 + 16) = v27 + 1;
            v28 = v38 + 16 * v27;
            *(v28 + 32) = 0;
            *(v28 + 40) = 0xE000000000000000;
            v19 += 32;
            --v18;
          }

          while (v18);
          v2 = v33;
          v1 = v34;
          v4 = v32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        v29 = BidirectionalCollection<>.joined(separator:)();
        v31 = v30;

        MEMORY[0x1865CB0E0](v29, v31);

        MEMORY[0x1865CB0E0](0, 0xE000000000000000);

        MEMORY[0x1865CB0E0](125, 0xE100000000000000);
        v5 = 123;
        v6 = 0xE100000000000000;
      }

      else
      {
        outlined copy of URL.Template.Element();

        v5 = v9;
        v6 = v8;
      }

      ++v3;
      MEMORY[0x1865CB0E0](v5, v6);

      MEMORY[0x1865CB0E0](0, 0xE000000000000000);

      outlined consume of URL.Template.Element();
      if (v3 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t URL.Template.Element.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = 0xE100000000000000;
    v6 = 38;
    if (a1 != 6)
    {
      v6 = 0;
      v5 = 0xE000000000000000;
    }

    v7 = 59;
    if (a1 != 4)
    {
      v7 = 63;
    }

    if (a1 <= 5u)
    {
      v6 = v7;
      v5 = 0xE100000000000000;
    }

    v8 = 46;
    if (a1 != 2)
    {
      v8 = 47;
    }

    v9 = 43;
    if (a1)
    {
      v9 = 35;
    }

    if (a1 <= 1u)
    {
      v8 = v9;
    }

    if (a1 <= 3u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    if (v4 <= 3)
    {
      v11 = 0xE100000000000000;
    }

    else
    {
      v11 = v5;
    }

    MEMORY[0x1865CB0E0](v10, v11);

    v12 = *(a2 + 16);
    if (v12)
    {
      v30 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = (a2 + 57);
      do
      {
        v14 = *v13;
        v28 = *(v13 - 25);
        v29 = *(v13 - 17);
        if (*(v13 - 1))
        {
          swift_bridgeObjectRetain_n();
          v15 = 0;
          v16 = 0xE000000000000000;
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v17);

          v15 = 58;
          v16 = 0xE100000000000000;
        }

        MEMORY[0x1865CB0E0](v15, v16);

        if (v14)
        {
          v18 = 42;
        }

        else
        {
          v18 = 0;
        }

        if (v14)
        {
          v19 = 0xE100000000000000;
        }

        else
        {
          v19 = 0xE000000000000000;
        }

        MEMORY[0x1865CB0E0](v18, v19);

        MEMORY[0x1865CB0E0](v28, v29);

        v21 = *(v30 + 16);
        v20 = *(v30 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        }

        *(v30 + 16) = v21 + 1;
        v22 = v30 + 16 * v21;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0xE000000000000000;
        v13 += 32;
        --v12;
      }

      while (v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x1865CB0E0](v25, v27);

    MEMORY[0x1865CB0E0](0, 0xE000000000000000);

    MEMORY[0x1865CB0E0](125, 0xE100000000000000);
    return 123;
  }

  else
  {

    return a1;
  }
}

uint64_t specialized static URL.Template.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == 7)
      {
        if (a4 != 7)
        {
          return 0;
        }
      }

      else
      {
        if (a4 == 7)
        {
          return 0;
        }

        v7 = a2;
        v8 = a5;
        v9 = specialized == infix<A>(_:_:)(a1, a4);
        a2 = v7;
        a5 = v8;
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation3URLV8TemplateV10ExpressionV7ElementV_Tt1g5(a2, a5))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t lazy protocol witness table accessor for type URL.Template and conformance URL.Template()
{
  result = lazy protocol witness table cache variable for type URL.Template and conformance URL.Template;
  if (!lazy protocol witness table cache variable for type URL.Template and conformance URL.Template)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template and conformance URL.Template);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Element and conformance URL.Template.Element()
{
  result = lazy protocol witness table cache variable for type URL.Template.Element and conformance URL.Template.Element;
  if (!lazy protocol witness table cache variable for type URL.Template.Element and conformance URL.Template.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Element and conformance URL.Template.Element);
  }

  return result;
}

Swift::Int URL.Template.Expression.Element.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t URL.Template.Expression.hash(into:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return specialized Array<A>.hash(into:)(a1, a3);
}

void protocol witness for Hashable.hash(into:) in conformance URL.Template.Expression.Element()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template.Expression.Element()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance URL.Template.Expression.Operator@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized URL.Template.Expression.Operator.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URL.Template.Expression.Operator()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.Template.Expression()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  URL.Template.Expression.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template.Expression()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  URL.Template.Expression.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance URL.Template.Expression(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v4 == 7)
  {
    if (v6 != 7)
    {
      return 0;
    }
  }

  else if (v6 == 7 || (specialized == infix<A>(_:_:)(v4, v6) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation3URLV8TemplateV10ExpressionV7ElementV_Tt1g5(v5, v7);
}

uint64_t URL.Template.Expression.description.getter(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE000000000000000;
  v3 = a1;
  v4 = 38;
  if (a1 == 6)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = 59;
  if (a1 != 4)
  {
    v5 = 63;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
    v2 = 0xE100000000000000;
  }

  v6 = 46;
  if (a1 != 2)
  {
    v6 = 47;
  }

  v7 = 43;
  if (a1)
  {
    v7 = 35;
  }

  if (a1 <= 1u)
  {
    v6 = v7;
  }

  if (a1 <= 3u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 3)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1865CB0E0](v8, v9);

  v11 = *(a2 + 16);
  if (v11)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = (a2 + 57);
    do
    {
      v13 = *v12;
      v26 = *(v12 - 25);
      v27 = *(v12 - 17);
      if (*(v12 - 1))
      {
        swift_bridgeObjectRetain_n();
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v16);

        v14 = 58;
        v15 = 0xE100000000000000;
      }

      MEMORY[0x1865CB0E0](v14, v15);

      if (v13)
      {
        v17 = 42;
      }

      else
      {
        v17 = 0;
      }

      if (v13)
      {
        v18 = 0xE100000000000000;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v17, v18);

      MEMORY[0x1865CB0E0](v26, v27);

      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      }

      *(v28 + 16) = v20 + 1;
      v21 = v28 + 16 * v20;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      v12 += 32;
      --v11;
    }

    while (v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x1865CB0E0](v22, v24);

  return 0;
}

uint64_t URL.Template.Expression.Element.description.getter()
{
  v1 = *(v0 + 25);
  v8 = *v0;
  if (v0[3])
  {

    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v4);

    v2 = 58;
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1865CB0E0](v2, v3);

  if (v1)
  {
    v5 = 42;
  }

  else
  {
    v5 = 0;
  }

  if (v1)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1865CB0E0](v5, v6);

  return v8;
}

uint64_t one-time initialization function for shared()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd);
  v63 = *(v0 - 8);
  v64 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v61 = v50 - v1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgADtGMd);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v55 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = v50 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v57 = v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v59 = v50 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = v50 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v53 = v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgtGMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v50 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v50 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v50 - v28;
  v50[4] = type metadata accessor for URL.Template.Global();
  v65 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SsSgtMd);
  Regex.init(_:as:)();
  Regex.asciiOnlyWordCharacters(_:)();
  v30 = *(v18 + 8);
  v30(v20, v17);
  Regex.asciiOnlyDigits(_:)();
  v30(v23, v17);
  Regex.asciiOnlyCharacterClasses(_:)();
  v50[2] = v30;
  v50[3] = v18 + 8;
  v30(v26, v17);
  v31 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_operatorRegex;
  (*(v18 + 32))(v65 + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_operatorRegex, v29, v17);
  Regex.init(_:as:)();
  v50[1] = v31;
  v32 = v51;
  v33 = v58;
  Regex.asciiOnlyWordCharacters(_:)();
  v34 = v54;
  v35 = *(v54 + 8);
  v35(v10, v33);
  v36 = v52;
  Regex.asciiOnlyDigits(_:)();
  v35(v32, v33);
  v37 = v53;
  Regex.asciiOnlyCharacterClasses(_:)();
  v52 = v35;
  v35(v36, v33);
  v38 = *(v34 + 32);
  v54 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_separatorRegex;
  v38(v65 + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_separatorRegex, v37, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_S2sSgAAtMd);
  v39 = v55;
  Regex.init(_:as:)();
  v40 = v56;
  v41 = v62;
  v42 = v39;
  Regex.asciiOnlyWordCharacters(_:)();
  v43 = v60;
  v44 = *(v60 + 8);
  v44(v42, v41);
  v45 = v57;
  Regex.asciiOnlyDigits(_:)();
  v44(v40, v41);
  v46 = v59;
  Regex.asciiOnlyCharacterClasses(_:)();
  v44(v45, v41);
  (*(v43 + 32))(v65 + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_elementRegex, v46, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_SstMd);
  v47 = v61;
  Regex.init(_:as:)();
  v48 = v65;
  result = (*(v63 + 32))(v65 + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_uriTemplateRegex, v47, v64);
  static URL.Template.Global.shared = v48;
  return result;
}

uint64_t URL.Template.Global.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_operatorRegex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgtGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_separatorRegex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_elementRegex;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgADtGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_uriTemplateRegex;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SstGMd);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URL.Template.Global()
{
  result = type metadata singleton initialization cache for URL.Template.Global;
  if (!type metadata singleton initialization cache for URL.Template.Global)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for URL.Template.Global()
{
  type metadata accessor for Regex<(Substring, Substring?)>(319, &lazy cache variable for type metadata for Regex<(Substring, Substring?)>, &_sSs_SsSgtMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Regex<Substring>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Regex<(Substring, Substring?)>(319, &lazy cache variable for type metadata for Regex<(Substring, Substring, Substring?, Substring?)>, &_sSs_S2sSgAAtMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Regex<(Substring, Substring?)>(319, &lazy cache variable for type metadata for Regex<(Substring, Substring)>, &_sSs_SstMd);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Regex<Substring>()
{
  if (!lazy cache variable for type metadata for Regex<Substring>)
  {
    v0 = type metadata accessor for Regex();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Regex<Substring>);
    }
  }
}

void type metadata accessor for Regex<(Substring, Substring?)>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Regex();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized static URL.Template.Expression.Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return v4 ^ v7 ^ 1u;
}

unint64_t specialized URL.Template.Expression.Operator.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of URL.Template.Expression.Operator.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized URL.Template.Expression.init(_:)(uint64_t a1, uint64_t a2)
{
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd);
  v212 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = v194 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v215 = v194 - v8;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_S2sSgADtGMd);
  v224 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v209 = v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v223 = v194 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v208 = v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v213 = v194 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v220 = (v194 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v210 = v194 - v19;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GMd);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v216 = v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v214 = (v194 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_SsSgtGMd);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v194 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_SsSgt_GSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v247 = v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v229 = v194 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_SsSgt_GMd);
  v230 = *(v31 - 8);
  v231 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v194 - v32;
  v226 = a1;
  v233 = a2;
  v34 = String.subscript.getter();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v41 = static URL.Template.Global.shared;
  (*(v24 + 16))(v26, static URL.Template.Global.shared + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_operatorRegex, v23);
  v42 = v232;
  Regex.prefixMatch(in:)();
  if (v42)
  {
    (*(v24 + 8))(v26, v23);
  }

  v203 = v26;
  v205 = v24;
  v204 = v23;
  v202 = v41;
  v219 = v38;
  v228 = v36;
  v225 = v34;
  v206 = 0;
  v232 = v40;
  v207 = v33;
  v43 = v230;
  v44 = v231;
  v45 = *(v230 + 48);
  v46 = v247;
  if (v45(v247, 1, v231) == 1)
  {
    (*(v205 + 8))(v203, v204);
    outlined destroy of TermOfAddress?(v46, &_s17_StringProcessing5RegexV5MatchVySs_SsSgt_GSgMd);
    v47 = 1;
    v48 = v207;
    v49 = v228;
    v50 = v229;
  }

  else
  {
    v50 = v229;
    (*(v43 + 32))(v229, v46, v44);
    Regex.Match.range.getter();
    v52 = v205;
    if (v228 >> 14 < v51 >> 14)
    {
      __break(1u);
LABEL_73:

LABEL_74:

      v234 = 0;
      v235 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v234 = 0xD000000000000018;
      v235 = 0x80000001814876C0;
      v185 = v222;
      v186 = v216;
      Regex.Match.range.getter();
      v187 = String.subscript.getter();
      v188 = MEMORY[0x1865CAE80](v187);
      v190 = v189;

      MEMORY[0x1865CB0E0](v188, v190);

      MEMORY[0x1865CB0E0](39, 0xE100000000000000);
      v191 = v234;
      v192 = v235;
      lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
      swift_allocError();
      *v193 = v191;
      v193[1] = v192;
      swift_willThrow();

      v214(v186, v185);
      (*(v230 + 8))(v207, v231);
    }

    v225 = Substring.subscript.getter();
    v49 = v53;
    v219 = v54;
    v56 = v55;

    (*(v52 + 8))(v203, v204);
    v47 = 0;
    v232 = v56;
    v43 = v230;
    v48 = v207;
  }

  v57 = v231;
  (*(v43 + 56))(v50, v47, 1, v231);
  if (v45(v50, 1, v57) == 1)
  {
    outlined destroy of TermOfAddress?(v50, &_s17_StringProcessing5RegexV5MatchVySs_SsSgt_GSgMd);
    lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
    swift_allocError();
    v58 = v233;
    *v59 = v226;
    v59[1] = v58;
    swift_willThrow();
  }

  v228 = v49;
  (*(v43 + 32))(v48, v50, v57);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v61 = v237;
  v62 = v233;
  if (v237)
  {
    v63 = v235;
    v64 = v236;
    v65 = v234;

    v249._countAndFlagsBits = MEMORY[0x1865CAE80](v65, v63, v64, v61);
    v66 = specialized URL.Template.Expression.Operator.init(rawValue:)(v249);
    v67 = v227;
    LOBYTE(v68) = v225;
    v69 = v202;
    if (v66 == 7)
    {
      lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
      swift_allocError();
      *v70 = v226;
      v70[1] = v62;
      swift_willThrow();

      swift_bridgeObjectRelease_n();
      return (*(v230 + 8))(v48, v57);
    }

    LODWORD(v205) = v66;
    swift_bridgeObjectRelease_n();
    v71 = v232;
  }

  else
  {
    LODWORD(v205) = 7;
    v71 = v232;
    v67 = v227;
    LOBYTE(v68) = v225;
    v69 = v202;
  }

  v232 = v71;
  v72 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_elementRegex;
  v73 = v224;
  v74 = v224 + 16;
  v75 = *(v224 + 16);
  v76 = v69 + OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_elementRegex;
  v77 = v223;
  v75(v223, v76, v67);
  v78 = v220;
  v79 = v206;
  Regex.prefixMatch(in:)();
  v80 = v79;
  if (v79)
  {

    (*(v73 + 8))(v77, v67);
    (*(v230 + 8))(v207, v231);
  }

  v201 = v75;
  v203 = v74;
  v204 = v72;
  v206 = 0;
  v81 = v221;
  v82 = *(v221 + 48);
  v83 = v222;
  v247 = (v221 + 48);
  v229 = v82;
  if ((v82)(v78, 1, v222) == 1)
  {
    v200 = *(v224 + 8);
    v200(v223, v227);
    outlined destroy of TermOfAddress?(v78, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GSgMd);
    v84 = 1;
    v85 = v230;
    v86 = v232;
    v72 = v207;
    v87 = v210;
  }

  else
  {
    v87 = v210;
    (*(v81 + 32))(v210, v78, v83);
    v88 = v87;
    Regex.Match.range.getter();
    v89 = v228;
    v91 = &v248;
    v92 = v223;
    if (v228 >> 14 < v90 >> 14)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v225 = Substring.subscript.getter();
    v228 = v93;
    v219 = v94;
    v96 = v95;

    v200 = *(v224 + 8);
    v200(v92, v227);
    v84 = 0;
    v86 = v96;
    v85 = v230;
    v81 = v221;
    v72 = v207;
  }

  v97 = *(v81 + 56);
  v220 = (v81 + 56);
  v210 = v97;
  (v97)(v87, v84, 1, v83);
  if ((v229)(v87, 1, v83) == 1)
  {
    outlined destroy of TermOfAddress?(v87, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GSgMd);
    lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
    swift_allocError();
    v98 = v233;
    *v99 = v226;
    v99[1] = v98;
    swift_willThrow();
    (*(v85 + 8))(v72, v231);
  }

  v232 = v86;
  v100 = *(v81 + 32);
  v199 = v81 + 32;
  v198 = v100;
  v100(v214, v87, v83);
  Regex.Match.output.getter();
  v101 = v238;
  v223 = v239;
  v103 = v240;
  v102 = v241;

  Regex.Match.output.getter();

  v78 = v246;
  if (v246)
  {
    v104 = v243;
    v105 = v244;
    if ((v244 ^ v243) < 0x4000)
    {
    }

    else
    {
      v106 = v245;
      v107 = v206;
      v108 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v243, v244, v245, v246, 10);
      v206 = v107;
      if ((v109 & 0x100) != 0)
      {
        v80 = specialized _parseInteger<A, B>(ascii:radix:)(v104, v105, v106, v78, 10);
        v112 = v111;

        if ((v112 & 1) == 0)
        {
LABEL_34:
          LOBYTE(v68) = 0;
          v72 = v207;
          goto LABEL_36;
        }
      }

      else
      {
        v80 = v108;
        v110 = v109;

        if ((v110 & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    v234 = 0;
    v235 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v234 = 0xD000000000000018;
    v235 = 0x80000001814876C0;
    v113 = v222;
    v114 = v214;
    Regex.Match.range.getter();
    v115 = String.subscript.getter();
    v116 = MEMORY[0x1865CAE80](v115);
    v118 = v117;

    MEMORY[0x1865CB0E0](v116, v118);

    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    v119 = v234;
    v120 = v235;
    lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
    swift_allocError();
    *v121 = v119;
    v121[1] = v120;
    swift_willThrow();

    (*(v221 + 8))(v114, v113);
    (*(v230 + 8))(v207, v231);
  }

  Regex.Match.output.getter();
  v80 = v242;

  if (v80)
  {

    v80 = 0;
    LOBYTE(v68) = 1;
  }

  else
  {
    LOBYTE(v68) = 0;
  }

LABEL_36:
  v88 = MEMORY[0x1865CAE80](v101, v223, v103, v102);
  v87 = v122;

  v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v89 = v123;
  v83 = *(v123 + 2);
  v91 = *(v123 + 3);
  v92 = (v83 + 1);
  if (v83 >= v91 >> 1)
  {
LABEL_78:
    v223 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92, 1, v89);
    goto LABEL_38;
  }

  v223 = v123;
LABEL_38:
  v124 = *(v221 + 8);
  v125 = v214;
  v221 += 8;
  v214 = v124;
  v124(v125, v222);
  v126 = v223;
  *(v223 + 2) = v92;
  v127 = &v126[32 * v83];
  *(v127 + 4) = v88;
  *(v127 + 5) = v87;
  *(v127 + 6) = v80;
  v127[56] = v78 == 0;
  v127[57] = v68;
  v128 = v228;
  v92 = (v228 >> 14);
  if (v228 >> 14 != v225 >> 14)
  {
    v197 = *(v212 + 16);
    v212 += 16;
    v195 = (v212 - 8);
    v194[1] = v224 + 8;
    v196 = OBJC_IVAR____TtCVV10Foundation3URL8Template6Global_separatorRegex;
    v130 = v232;
    v131 = v225;
    while (1)
    {
      v197(v217, v202 + v196, v218);
      v83 = v211;
      v225 = v131;
      v132 = v130;
      v133 = v206;
      Regex.prefixMatch(in:)();
      if (v133)
      {

        (*v195)(v217, v218);
        (*(v230 + 8))(v72, v231);
      }

      v228 = v128;
      v206 = 0;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_GMd);
      v134 = *(v80 - 8);
      v68 = v134;
      v78 = *(v134 + 48);
      v87 = v134 + 48;
      if (v78(v83, 1, v80) == 1)
      {
        (*v195)(v217, v218);
        v92 = &_s17_StringProcessing5RegexV5MatchVySs_GSgMR;
        outlined destroy of TermOfAddress?(v83, &_s17_StringProcessing5RegexV5MatchVySs_GSgMd);
        v135 = 1;
        v136 = v230;
      }

      else
      {
        v88 = v215;
        (*(v68 + 32))(v215, v83, v80);
        Regex.Match.range.getter();
        if (v92 < v137 >> 14)
        {
          __break(1u);
          goto LABEL_76;
        }

        v225 = Substring.subscript.getter();
        v228 = v138;
        v219 = v139;
        v141 = v140;

        (*v195)(v217, v218);
        v135 = 0;
        v132 = v141;
        v136 = v230;
        v92 = &_s17_StringProcessing5RegexV5MatchVySs_GSgMR;
      }

      v142 = v215;
      (*(v68 + 56))(v215, v135, 1, v80);
      v143 = v78(v142, 1, v80);
      outlined destroy of TermOfAddress?(v142, &_s17_StringProcessing5RegexV5MatchVySs_GSgMd);
      if (v143 == 1)
      {
        lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
        swift_allocError();
        v181 = v233;
        *v182 = v226;
        v182[1] = v181;
        swift_willThrow();

        (*(v136 + 8))(v207, v231);
      }

      v83 = v209;
      v68 = v227;
      v201(v209, v202 + v204, v227);
      v80 = v208;
      v144 = v206;
      Regex.prefixMatch(in:)();
      v72 = v207;
      v87 = v144;
      if (v144)
      {

        v200(v83, v68);
        (*(v230 + 8))(v72, v231);
      }

      v78 = v222;
      if ((v229)(v80, 1, v222) == 1)
      {
        v200(v83, v68);
        outlined destroy of TermOfAddress?(v80, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GSgMd);
        v145 = 1;
        v146 = v230;
        v88 = v216;
      }

      else
      {
        v198(v213, v80, v78);
        Regex.Match.range.getter();
        v89 = v228;
        v91 = &v245;
        v88 = v216;
        if (v228 >> 14 < v147 >> 14)
        {
          goto LABEL_77;
        }

        v225 = Substring.subscript.getter();
        v228 = v148;
        v219 = v149;
        v151 = v150;

        v200(v83, v68);
        v145 = 0;
        v132 = v151;
        v146 = v230;
      }

      v152 = v213;
      (v210)(v213, v145, 1, v78);
      if ((v229)(v152, 1, v78) == 1)
      {
        outlined destroy of TermOfAddress?(v152, &_s17_StringProcessing5RegexV5MatchVySs_S2sSgAFt_GSgMd);
        lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression();
        swift_allocError();
        v183 = v233;
        *v184 = v226;
        v184[1] = v183;
        swift_willThrow();
        (*(v146 + 8))(v72, v231);
      }

      v206 = 0;
      v232 = v132;
      v198(v88, v152, v78);
      Regex.Match.output.getter();
      v153 = v238;
      v155 = v239;
      v154 = v240;
      v156 = v241;

      Regex.Match.output.getter();

      v157 = v246;
      v224 = v246;
      if (v246)
      {
        v158 = v156;
        v159 = v243;
        v160 = v244;
        if ((v244 ^ v243) < 0x4000)
        {
          goto LABEL_73;
        }

        v161 = v154;
        v162 = v153;
        v163 = v245;
        v164 = v206;
        v194[0] = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v243, v244, v245, v246, 10);
        v206 = v164;
        if ((v165 & 0x100) != 0)
        {
          v168 = specialized _parseInteger<A, B>(ascii:radix:)(v159, v160, v163, v157, 10);
          v171 = v170;

          if (v171)
          {
            goto LABEL_74;
          }

          v167 = 0;
          v153 = v162;
          v154 = v161;
          v156 = v158;
        }

        else
        {
          v166 = v165;

          if (v166)
          {
            goto LABEL_74;
          }

          v167 = 0;
          v153 = v162;
          v154 = v161;
          v156 = v158;
          v168 = v194[0];
        }
      }

      else
      {
        Regex.Match.output.getter();
        v169 = v242;

        if (v169)
        {

          v168 = 0;
          v167 = 1;
        }

        else
        {
          v167 = 0;
          v168 = 0;
        }
      }

      v172 = MEMORY[0x1865CAE80](v153, v155, v154, v156);
      v174 = v173;

      v176 = *(v223 + 2);
      v175 = *(v223 + 3);
      if (v176 >= v175 >> 1)
      {
        v223 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v176 + 1, 1, v223);
      }

      v72 = v207;
      v177 = v167;
      v178 = v224 == 0;
      v214(v216, v222);
      v179 = v223;
      *(v223 + 2) = v176 + 1;
      v180 = &v179[32 * v176];
      *(v180 + 4) = v172;
      *(v180 + 5) = v174;
      *(v180 + 6) = v168;
      v180[56] = v178;
      v180[57] = v177;
      v128 = v228;
      v92 = (v228 >> 14);
      v131 = v225;
      v129 = v231;
      v130 = v232;
      if (v228 >> 14 == v225 >> 14)
      {
        goto LABEL_40;
      }
    }
  }

  v129 = v231;
LABEL_40:
  (*(v230 + 8))(v72, v129);

  return v205;
}

unint64_t lazy protocol witness table accessor for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression()
{
  result = lazy protocol witness table cache variable for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression;
  if (!lazy protocol witness table cache variable for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.InvalidExpression and conformance URL.Template.InvalidExpression);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for URL.Template.Expression.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for URL.Template.Expression.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Expression and conformance URL.Template.Expression()
{
  result = lazy protocol witness table cache variable for type URL.Template.Expression and conformance URL.Template.Expression;
  if (!lazy protocol witness table cache variable for type URL.Template.Expression and conformance URL.Template.Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Expression and conformance URL.Template.Expression);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Expression.Element and conformance URL.Template.Expression.Element()
{
  result = lazy protocol witness table cache variable for type URL.Template.Expression.Element and conformance URL.Template.Expression.Element;
  if (!lazy protocol witness table cache variable for type URL.Template.Expression.Element and conformance URL.Template.Expression.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Expression.Element and conformance URL.Template.Expression.Element);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Expression.Operator and conformance URL.Template.Expression.Operator()
{
  result = lazy protocol witness table cache variable for type URL.Template.Expression.Operator and conformance URL.Template.Expression.Operator;
  if (!lazy protocol witness table cache variable for type URL.Template.Expression.Operator and conformance URL.Template.Expression.Operator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Expression.Operator and conformance URL.Template.Expression.Operator);
  }

  return result;
}

uint64_t closure #1 in String.normalizedAddingPercentEncoding(withAllowedCharacters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      result = addingPercentEncodingToNFC(input:outputCount:allowed:)(a1, a2, a3, 0);
      goto LABEL_11;
    }

    v10 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 < 0)
      {
        __break(1u);
      }

      if (v10 <= 1024)
      {
        goto LABEL_9;
      }
    }

    v15 = a1;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v18 = a2;
    v19 = isStackAllocationSafe;
    a1 = v15;
    if (!v19)
    {
      v20 = v15;
      v21 = v18;
      v22 = swift_slowAlloc();
      *a8 = specialized addPercentEscapesForUnreservedReserved(inputBuffer:outputBuffer:)(v20, v21, v22);
      a8[1] = v23;

      JUMPOUT(0x1865D2690);
    }

LABEL_9:
    MEMORY[0x1EEE9AC00](a1);
    result = specialized addPercentEscapesForUnreservedReserved(inputBuffer:outputBuffer:)(v12, v13, v24 - v11);
LABEL_11:
    *a8 = result;
    a8[1] = v14;
    return result;
  }

  *a8 = a5;
  a8[1] = a6;
}

uint64_t addingPercentEncodingToNFC(input:outputCount:allowed:)(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, char a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    v4 = isStackAllocationSafe;
    if (v6 <= 1024)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v11 = a4;
    v12 = swift_slowAlloc();
    closure #1 in addingPercentEncodingToNFC(input:outputCount:allowed:)(v12, v4, a2, v11 & 1, v14);
    MEMORY[0x1865D2690](v12, -1, -1);
    return v14[0];
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  closure #1 in addingPercentEncodingToNFC(input:outputCount:allowed:)(&v14[-1] - v7, v4, a2, v8 & 1, v14);
  return v14[0];
}

uint64_t closure #1 in addingPercentEncodingToNFC(input:outputCount:allowed:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v6 = 0;
  if (!a2 || !a3)
  {
LABEL_25:
    result = static String._fromUTF8Repairing(_:)();
    *a5 = result;
    a5[1] = v12;
    return result;
  }

  while (1)
  {
    v8 = *a2;
    if (a4)
    {
      if ((v8 & 0x80) == 0)
      {
        v9 = 1 << v8;
        if (v8 <= 0x3F)
        {
          if ((v9 & 0xAFFFFFDA00000000) != 0)
          {
            goto LABEL_5;
          }
        }

        else if ((v9 & 0x47FFFFFEAFFFFFFFLL) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if ((v8 & 0x80) == 0)
    {
      v10 = 1 << v8;
      v11 = (v8 & 0x40) != 0 ? 0 : 1 << v8;
      if ((v8 & 0x40) == 0)
      {
        v10 = 0;
      }

      if (v11 & 0x3FF600000000000 | v10 & 0x47FFFFFE87FFFFFELL)
      {
LABEL_5:
        *(result + v6) = v8;
        v7 = __OFADD__(v6++, 1);
        if (v7)
        {
          goto LABEL_28;
        }

        goto LABEL_6;
      }
    }

    *(result + v6) = 37;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *(result + v6 + 1) = byte_1812DB9F0[v8 >> 4];
    if (__OFADD__(v6, 2))
    {
      goto LABEL_27;
    }

    *(result + v6 + 2) = byte_1812DB9F0[v8 & 0xF];
    v7 = __OFADD__(v6, 3);
    v6 += 3;
    if (v7)
    {
      break;
    }

LABEL_6:
    ++a2;
    if (!--a3)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:
  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(unint64_t a1, unint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (2)
  {
    v25 = v7;
    v14 = v6;
    if (v9 == result >> 14)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v15 = result & 0xC;
      v16 = result;
      if (v15 == v11)
      {
        v20 = result;
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
        result = v20;
      }

      v17 = v16 >> 16;
      if (v16 >> 16 >= v8)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v24 = result;
        v19 = String.UTF8View._foreignSubscript(position:)();
        result = v24;
        if (v15 != v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v27[0] = a1;
          v27[1] = v26;
          v18 = v27;
        }

        else
        {
          v18 = v12;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v23 = result;
            v18 = _StringObject.sharedUTF8.getter();
            result = v23;
          }
        }

        v19 = *(v18 + v17);
        if (v15 != v11)
        {
LABEL_20:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_24;
        }
      }

      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_21:
        result = (result & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_26;
      }

LABEL_24:
      if (v8 <= result >> 16)
      {
        goto LABEL_52;
      }

      result = String.UTF8View._foreignIndex(after:)();
LABEL_26:
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_51;
      }

      if ((a3 & 1) == 0)
      {
        break;
      }

      if ((v19 & 0x80) != 0)
      {
        goto LABEL_40;
      }

      if (v19 >= 0x40u)
      {
        if (((1 << v19) & 0x47FFFFFEAFFFFFFFLL) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (((1 << v19) & 0xAFFFFFDA00000000) == 0)
      {
        goto LABEL_41;
      }

LABEL_10:
      ++v14;
      if (v9 == result >> 14)
      {
        goto LABEL_44;
      }
    }

    if ((v19 & 0x80) == 0)
    {
      v21 = 1 << v19;
      if ((v19 & 0x40) != 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = 1 << v19;
      }

      if ((v19 & 0x40) == 0)
      {
        v21 = 0;
      }

      if (!(v22 & 0x3FF600000000000 | v21 & 0x47FFFFFE87FFFFFELL))
      {
        goto LABEL_41;
      }

      goto LABEL_10;
    }

LABEL_40:
    if (v19 >= 0xCCu)
    {
      return 1;
    }

LABEL_41:
    v7 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
  if (!v25)
  {
    return 0;
  }

  if (v25 + 0x4000000000000000 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = v6 + 2 * v25;
  if (__OFADD__(v6, 2 * v25))
  {
LABEL_54:
    __break(1u);
  }

  return result;
}

uint64_t specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(uint64_t result, uint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v6 = *(result + v3);
    if (a3)
    {
      if ((v6 & 0x80) == 0)
      {
        if (v6 >= 0x40)
        {
          if (((1 << v6) & 0x47FFFFFEAFFFFFFFLL) != 0)
          {
            goto LABEL_6;
          }
        }

        else if (((1 << v6) & 0xAFFFFFDA00000000) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v6 & 0x80) == 0)
    {
      v7 = 1 << v6;
      v8 = (v6 & 0x40) == 0;
      if ((v6 & 0x40) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1 << v6;
      }

      if (v8)
      {
        v7 = 0;
      }

      if (v9 & 0x3FF600000000000 | v7 & 0x47FFFFFE87FFFFFELL)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v6 >= 0xCC)
    {
      return 1;
    }

LABEL_5:
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_32;
    }

LABEL_6:
    ++v3;
  }

  while (a2 != v3);
  if (!v4)
  {
    return 0;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
    goto LABEL_33;
  }

  result = a2 + 2 * v4;
  if (!__OFADD__(a2, 2 * v4))
  {
    return result;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, char a6@<W7>, void *a7@<X8>)
{
  if (result)
  {
    v12 = result;
    result = _StringGuts.copyUTF8(into:)();
    if ((v14 & 1) == 0)
    {
      closure #1 in String.normalizedAddingPercentEncoding(withAllowedCharacters:)(v12, a2, a3, 0, a4, a5, a6 & 1, v16);

      v15 = v16[1];
      *a7 = v16[0];
      a7[1] = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized addPercentEscapesForUnreservedReserved(inputBuffer:outputBuffer:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return result;
  }

  v3 = 0;
  if (!a2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v4 = 0;
  v5 = a2 - 1;
  while (1)
  {
    if (v4 >= a2)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v7 = *(result + v4);
    v8 = v7 != 37 || v5 <= 1;
    if (!v8)
    {
      if ((*(result + v4 + 1) - 58) <= 0xF5u)
      {
        v10 = *(result + v4 + 1) - 65;
        v8 = v10 > 0x25;
        v11 = (1 << v10) & 0x3F0000003FLL;
        if (v8 || v11 == 0)
        {
          goto LABEL_29;
        }
      }

      if (__OFADD__(v4, 2))
      {
        goto LABEL_42;
      }

      if ((*(result + v4 + 2) - 58) > 0xF5u || (v13 = *(result + v4 + 2) - 65, v13 <= 0x25) && ((1 << v13) & 0x3F0000003FLL) != 0)
      {
        *(a3 + v3) = 37;
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_29:
        *(a3 + v3) = 37;
        v6 = __OFADD__(v3, 1);
        v14 = v3 + 1;
        if (v6)
        {
          goto LABEL_49;
        }

        *(a3 + v14) = 50;
        v6 = __OFADD__(v14, 1);
        v15 = v14 + 1;
        if (v6)
        {
          goto LABEL_50;
        }

        *(a3 + v15) = 53;
        v6 = __OFADD__(v15, 1);
        v3 = v15 + 1;
        if (v6)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_5;
    }

    if ((v7 & 0x80) == 0)
    {
      v9 = v7 >= 0x40 ? 0x47FFFFFEAFFFFFFFLL : 0xAFFFFFDA00000000;
      if ((v9 >> v7))
      {
        *(a3 + v3) = v7;
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_46;
        }

        goto LABEL_5;
      }
    }

    *(a3 + v3) = 37;
    v6 = __OFADD__(v3, 1);
    v16 = v3 + 1;
    if (v6)
    {
      goto LABEL_44;
    }

    *(a3 + v16) = byte_1812DB9F0[v7 >> 4];
    v6 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v6)
    {
      goto LABEL_45;
    }

    *(a3 + v17) = byte_1812DB9F0[v7 & 0xF];
    v6 = __OFADD__(v17, 1);
    v3 = v17 + 1;
    if (v6)
    {
      break;
    }

LABEL_5:
    --v5;
    ++v4;
    if (v5 == -1)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_39:
  if (v3 < 0)
  {
    goto LABEL_48;
  }

  return static String._fromUTF8Repairing(_:)();
}

uint64_t specialized closure #3 in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v31 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v7 = 0;
    v8 = a2;
    v9 = a1;
    while (1)
    {
      v10 = *v9;
      if (a3)
      {
        if ((v10 & 0x80) != 0)
        {
          goto LABEL_17;
        }

        v11 = 1 << v10;
        if (v10 <= 0x3F)
        {
          v12 = 1;
          if ((v11 & 0xAFFFFFDA00000000) != 0)
          {
            goto LABEL_18;
          }

LABEL_17:
          v12 = 3;
          goto LABEL_18;
        }

        v12 = 1;
        if ((v11 & 0x47FFFFFEAFFFFFFFLL) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v10 & 0x80) != 0)
        {
          goto LABEL_17;
        }

        v13 = 1 << v10;
        v14 = (v10 & 0x40) == 0;
        if ((v10 & 0x40) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = 1 << v10;
        }

        if (v14)
        {
          v13 = 0;
        }

        v16 = v15 & 0x3FF600000000000;
        v12 = 1;
        if (!(v16 | v13 & 0x47FFFFFE87FFFFFELL))
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v17 = __OFADD__(v7, v12);
      v7 += v12;
      if (v17)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }
  }

  v7 = 0;
LABEL_24:
  if ((a4 & 1) == 0)
  {
    return addingPercentEncodingToNFC(input:outputCount:allowed:)(a1, a2, v7, 0);
  }

  v18 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_31;
  }

  if (v18 < 0)
  {
    __break(1u);
  }

  if (v18 < 1025)
  {
    goto LABEL_28;
  }

LABEL_32:
  v23 = a1;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  a1 = v23;
  if (isStackAllocationSafe)
  {
LABEL_28:
    MEMORY[0x1EEE9AC00](a1);
    return specialized addPercentEscapesForUnreservedReserved(inputBuffer:outputBuffer:)(v20, v21, v29 - v19);
  }

  v26 = swift_slowAlloc();
  v27 = specialized addPercentEscapesForUnreservedReserved(inputBuffer:outputBuffer:)(v23, a2, v26);
  v29[1] = v28;
  v30 = v27;
  if (v5)
  {

    result = MEMORY[0x1865D2690](v26, -1, -1);
    __break(1u);
  }

  else
  {
    MEMORY[0x1865D2690](v26, -1, -1);
    return v30;
  }

  return result;
}

uint64_t specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(char a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6)
{
  LOBYTE(v11) = a1;
  v39 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v37 = a2;
      v38 = a3 & 0xFFFFFFFFFFFFFFLL;
      v19 = specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(&v37, HIBYTE(a3) & 0xF, a1 & 1);
      v20 = v19;
      if (v21)
      {
        if (v19)
        {
          swift_bridgeObjectRetain_n();
          v18 = 0;
          v17 = 0;
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      swift_bridgeObjectRetain_n();
      closure #1 in String.normalizedAddingPercentEncoding(withAllowedCharacters:)(&v37, HIBYTE(a3) & 0xF, v20, 0, a4, a5, a6 & 1, &v35);
      v18 = v35;
      v17 = v36;
      if (!v36)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (v17 != 1)
      {
        swift_bridgeObjectRelease_n();
        return v18;
      }

      isStackAllocationSafe = specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(a2, a3, v11 & 1);
      v23 = isStackAllocationSafe;
      if (v24)
      {
        if (isStackAllocationSafe)
        {
LABEL_19:
          v17 = 1;
          goto LABEL_20;
        }

LABEL_30:

        return a4;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(a3) & 0xF;
      }

      else
      {
        v11 = a2 & 0xFFFFFFFFFFFFLL;
      }

      goto LABEL_25;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v13 = a2 & 0xFFFFFFFFFFFFLL;
LABEL_5:
      v14 = specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v12, v13, v11 & 1);
      v15 = v14;
      if (v16)
      {
        if (v14)
        {
          swift_bridgeObjectRetain_n();
          v17 = 0;
          v18 = 0;
LABEL_20:
          v25 = String._nfcCodeUnits.getter();
          v26 = specialized closure #3 in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v25 + 32, *(v25 + 16), v11 & 1, a6 & 1);
          outlined consume of AttributedString.AttributeRunBoundaries?(v18, v17);
          swift_bridgeObjectRelease_n();

          return v26;
        }

LABEL_15:
        swift_bridgeObjectRetain_n();
        v18 = a4;
        v17 = a5;
        if (!a5)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      swift_bridgeObjectRetain_n();
      closure #1 in String.normalizedAddingPercentEncoding(withAllowedCharacters:)(v12, v13, v15, 0, a4, a5, a6 & 1, &v37);
      v18 = v37;
      v17 = v38;
      if (!v38)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_34:
    v12 = _StringObject.sharedUTF8.getter();
    v13 = v33;
    goto LABEL_5;
  }

  swift_bridgeObjectRetain_n();
  v30 = specialized cheapCheck #1 <A><A1>(utf8Buffer:) in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(a2, a3, v11 & 1);
  v23 = v30;
  if (v31)
  {
    v18 = 0;
    if (v30)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  isStackAllocationSafe = String.UTF8View._foreignCount()();
  v11 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_25:
  if (v11 >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v34 = swift_slowAlloc();

      specialized closure #2 in String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v34, v11, v23, a4, a5, a6 & 1, &v37);
      MEMORY[0x1865D2690](v34, -1, -1);
      swift_bridgeObjectRelease_n();
      return v37;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v28 = &v35 - v27;
  _StringGuts.copyUTF8(into:)();
  if ((v29 & 1) == 0)
  {
    closure #1 in String.normalizedAddingPercentEncoding(withAllowedCharacters:)(v28, v11, v23, 0, a4, a5, a6 & 1, &v37);
    v18 = v37;
    swift_bridgeObjectRelease_n();
    return v18;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
  swift_bridgeObjectRelease_n();
  __break(1u);
  swift_bridgeObjectRelease_n();

  result = MEMORY[0x1865D2690](v28, -1, -1);
  __break(1u);
  return result;
}

uint64_t URL.init(template:variables:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLV8TemplateV12VariableNameVAG5ValueV10UnderlyingOGMd);
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  v7 = 0;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = v5 + 64;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v7 << 6);
      v17 = (*(a1 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = 24 * v16;
      v21 = (*(a1 + 56) + 24 * v16);
      countAndFlagsBits = *v21;
      object = v21[1];
      v22 = v21[2];
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v23 = (v6[6] + 16 * v16);
      *v23 = v19;
      v23[1] = v18;
      v24 = (v6[7] + v20);
      *v24 = countAndFlagsBits;
      v24[1] = object;
      v24[2] = v22;
      v25 = v6[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v6[2] = v27;

      outlined copy of URL.Template.Value.Underlying(countAndFlagsBits, object, v22);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  else
  {
LABEL_5:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v7 >= v11)
      {
        break;
      }

      v15 = *(a1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    v28 = URL.Template.replaceVariables(_:)(v6);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;

    if (one-time initialization token for compatibility2 != -1)
    {
      goto LABEL_24;
    }
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v29 = type metadata accessor for _BridgedURL();
    v30 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v29 = type metadata accessor for _SwiftURL();
    v30 = &protocol witness table for _SwiftURL;
  }

  v31 = v30[1];

  if (v31(countAndFlagsBits, object, v29, v30))
  {
    v32 = (v30[56])(v29, v30);
    v34 = v33;

    result = swift_unknownObjectRelease();
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  *a2 = v32;
  a2[1] = v34;
  return result;
}

uint64_t outlined copy of URL.Template.Value.Underlying(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) > 1)
  {
    if (a3 >> 62 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

Swift::String __swiftcall URL.Template.replaceVariables(_:)(Swift::OpaquePointer a1)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v140 = *(*v1 + 16);
  if (!v140)
  {
    a1._rawValue = 0;
    goto LABEL_161;
  }

  rawValue = a1._rawValue;
  v5 = 0;
  v141 = v2 + 32;
  v144 = a1._rawValue;
  v139 = *v1;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_159;
    }

    v142 = v5;
    v6 = (v141 + 24 * v5);
    v7 = *v6;
    v8 = v6[1];
    if ((v6[2] & 1) == 0)
    {

      MEMORY[0x1865CB0E0](v7, v8);
      a1._rawValue = outlined consume of URL.Template.Element();
      goto LABEL_4;
    }

    v153 = *v6;
    v9 = *(v8 + 16);

    v155 = v8;
    if (v9)
    {
      break;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v120 = v11[2];
    if (v120)
    {
      v121 = 0;
      v122 = v11 + 7;
      v123 = v11;
      do
      {
        if (v121 >= v11[2])
        {
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v125 = *(v122 - 3);
        v124 = *(v122 - 2);
        v127 = *(v122 - 1);
        v126 = *v122;
        if (v121)
        {
          v128 = qword_1812DC980[v153];

          v129 = v128;
          v11 = v123;
          MEMORY[0x1865CB0D0](v129, 0xE100000000000000);

          if (v124)
          {
            goto LABEL_131;
          }

          goto LABEL_110;
        }

        if (v153 > 3u)
        {
          if (v153 <= 5u)
          {
            v131 = v153 == 4;
            v132 = 59;
            v133 = 63;
            goto LABEL_123;
          }

          if (v153 == 6)
          {
            v130 = 38;
            goto LABEL_126;
          }
        }

        else
        {
          if (v153 > 1u)
          {
            v131 = v153 == 2;
            v132 = 46;
            v133 = 47;
LABEL_123:
            if (v131)
            {
              v130 = v132;
            }

            else
            {
              v130 = v133;
            }

LABEL_126:

            MEMORY[0x1865CB0D0](v130, 0xE100000000000000);

            v11 = v123;
            if (v124)
            {
              goto LABEL_131;
            }

            goto LABEL_110;
          }

          if (v153)
          {
            v130 = 35;
            goto LABEL_126;
          }
        }

        if (v124)
        {
LABEL_131:
          MEMORY[0x1865CB0E0](v125, v124);
          v134 = HIBYTE(v126) & 0xF;
          if ((v126 & 0x2000000000000000) == 0)
          {
            v134 = v127 & 0xFFFFFFFFFFFFLL;
          }

          if (v134)
          {
            MEMORY[0x1865CB0E0](61, 0xE100000000000000);
            MEMORY[0x1865CB0E0](v127, v126);
          }

          else if (v153 > 3u && v153 - 5 < 2)
          {
            MEMORY[0x1865CB0D0](61, 0xE100000000000000);
          }

          goto LABEL_111;
        }

LABEL_110:
        MEMORY[0x1865CB0E0](v127, v126);
LABEL_111:

        ++v121;
        v122 += 4;
      }

      while (v120 != v121);
    }

    MEMORY[0x1865CB0E0](0, 0xE000000000000000);
    outlined consume of URL.Template.Element();

    rawValue = v144;
LABEL_4:
    v5 = v142 + 1;
    v2 = v139;
    if (v142 + 1 == v140)
    {
      a1._rawValue = 0;
      v3 = 0xE000000000000000;
      goto LABEL_161;
    }
  }

  v10 = 0;
  v149 = v8 + 32;
  v156 = v7 - 4;
  v154 = (v7 - 8) < 0xFAu;
  v165 = 3u >> v7;
  v166 = v7 != 7;
  v11 = MEMORY[0x1E69E7CC0];
  v143 = v9;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      goto LABEL_145;
    }

    if (!rawValue[2])
    {
      goto LABEL_31;
    }

    v12 = v149 + 32 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v168 = *(v12 + 16);
    v169 = *(v12 + 24);
    v15 = *(v12 + 25);
    swift_bridgeObjectRetain_n();
    v164 = v13;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    if ((v17 & 1) == 0)
    {
      a1._rawValue = swift_bridgeObjectRelease_n();
      goto LABEL_31;
    }

    v18 = (rawValue[7] + 24 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[2];
    v157 = v14;
    v148 = v21;
    if (!(v21 >> 62))
    {

      swift_bridgeObjectRelease_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg_SStGMd);
      a1._rawValue = swift_allocObject();
      v46 = a1._rawValue;
      *(a1._rawValue + 1) = xmmword_181218E20;
      v145 = v10;
      if (v153 == 7 || v156 >= 3u)
      {

        v164 = 0;
        v47 = 0;
        if ((v169 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v47 = v14;
        if ((v169 & 1) == 0)
        {
LABEL_48:
          if (v168 < 0)
          {
            goto LABEL_160;
          }

          v48 = v46;
          v49 = v20;

          String.index(_:offsetBy:limitedBy:)();
          v50 = String.subscript.getter();
          v51 = v19;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v58 = v20;
          v59 = v148;
          outlined consume of URL.Template.Value.Underlying(v58, v51, v148);
          v60 = MEMORY[0x1865CAE80](v50, v53, v55, v57);
          v62 = v61;

          goto LABEL_88;
        }
      }

      v48 = v46;

      v49 = v20;
      v51 = v19;
      v60 = v20;
      v62 = v51;
      v59 = v148;
LABEL_88:

      v98 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v166 & v165, v60, v62, v60, v62, v166 & v165);
      v100 = v99;
      swift_bridgeObjectRelease_n();
      v48[4] = v164;
      v48[5] = v47;
      v48[6] = v98;
      v48[7] = v100;

      v95 = v49;
      v96 = v51;
      v97 = v59;
      v24 = v48;
LABEL_89:
      a1._rawValue = outlined consume of URL.Template.Value.Underlying(v95, v96, v97);
      v9 = v143;
      rawValue = v144;
      v10 = v145;
      goto LABEL_32;
    }

    v167 = v11;
    if (v21 >> 62 == 1)
    {

      swift_bridgeObjectRelease_n();
      if ((v15 & 1) == 0)
      {
        v162 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg_SStGMd);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_181218E20;
        if (v153 == 7 || v156 >= 3u)
        {

          v164 = 0;
          v137 = 0;
        }

        else
        {
          v137 = v14;
        }

        v160 = v19;
        v81 = *(v162 + 16);
        if (v81)
        {
          v147 = v10;
          v171 = MEMORY[0x1E69E7CC0];
          a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
          v82 = 0;
          v83 = (v162 + 40);
          v151 = v81;
          do
          {
            if (v82 >= *(v162 + 16))
            {
              goto LABEL_144;
            }

            v85 = *(v83 - 1);
            v84 = *v83;
            if (v169)
            {
              swift_bridgeObjectRetain_n();
              v86 = v84;
            }

            else
            {
              if (v168 < 0)
              {
                goto LABEL_156;
              }

              String.index(_:offsetBy:limitedBy:)();
              v87 = String.subscript.getter();
              v85 = MEMORY[0x1865CAE80](v87);
              v86 = v88;
            }

            v89 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v166 & v165, v85, v86, v85, v86, v166 & v165);
            v91 = v90;

            a1._rawValue = swift_bridgeObjectRelease_n();
            v93 = *(v171 + 16);
            v92 = *(v171 + 24);
            if (v93 >= v92 >> 1)
            {
              a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
            }

            ++v82;
            *(v171 + 16) = v93 + 1;
            v94 = v171 + 16 * v93;
            *(v94 + 32) = v89;
            *(v94 + 40) = v91;
            v83 += 2;
            v11 = v167;
          }

          while (v151 != v82);
          v9 = v143;
          rawValue = v144;
          v10 = v147;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v101 = BidirectionalCollection<>.joined(separator:)();
        v103 = v102;

        *(v24 + 32) = v164;
        *(v24 + 40) = v137;
        *(v24 + 48) = v101;
        *(v24 + 56) = v103;

        a1._rawValue = outlined consume of URL.Template.Value.Underlying(v162, v160, v148);
        goto LABEL_32;
      }

      v22 = *(v20 + 16);
      if (v22)
      {
        v158 = v19;
        v145 = v10;
        v170 = MEMORY[0x1E69E7CC0];
        a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = v20;
        v24 = v170;
        v161 = v23;
        v25 = (v23 + 40);
        do
        {
          v27 = *(v25 - 1);
          v26 = *v25;
          if (v156 > 2u)
          {
            v29 = 0;
            v28 = 0;
          }

          else
          {
            v28 = v157;

            v29 = v164;
          }

          if (v169)
          {
            swift_bridgeObjectRetain_n();
            v30 = v26;
          }

          else
          {
            if (v168 < 0)
            {
              goto LABEL_155;
            }

            String.index(_:offsetBy:limitedBy:)();
            v31 = String.subscript.getter();
            v27 = MEMORY[0x1865CAE80](v31);
            v30 = v32;
          }

          v33 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v154, v27, v30, v27, v30, v154);
          v35 = v34;

          a1._rawValue = swift_bridgeObjectRelease_n();
          v37 = *(v170 + 16);
          v36 = *(v170 + 24);
          if (v37 >= v36 >> 1)
          {
            a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          }

          *(v170 + 16) = v37 + 1;
          v38 = (v170 + 32 * v37);
          v38[4] = v29;
          v38[5] = v28;
          v38[6] = v33;
          v38[7] = v35;
          v25 += 2;
          --v22;
          v11 = v167;
        }

        while (v22);

        v96 = v158;
        v95 = v161;
        v97 = v148;
        goto LABEL_89;
      }

      a1._rawValue = outlined consume of URL.Template.Value.Underlying(v20, v19, v21);
LABEL_31:
      v24 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }

    v63 = v21 & 0x3FFFFFFFFFFFFFFFLL;

    swift_bridgeObjectRelease_n();
    if (v15)
    {
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      v64 = v20;
      v24 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12LazySequenceVy19CollectionsInternal17OrderedDictionaryVyS2SGG_SSSg_SSts5NeverOTg5043_s10Foundation3URLV8TemplateV10ExpressionV7b127V13escapedValues33_3095C8CED2F376984B6652158234A6EFLL8operator9variablesSaySSSg_SStGAG8OperatorOSg_SDyAE12VariableNameVAE5ValueO44UnderlyingOGtFAN_SStSS3key_SS5valuet_tXEfU0_10Foundation3URLV0N0V0P0VACVAW8OperatorOSgTf1cn_nTf4ngn_n(v20, v19, v21 & 0x3FFFFFFFFFFFFFFFLL, v164, v14, v168, v169, v153);

      outlined consume of URL.Template.Value.Underlying(v64, v19, v21);

      goto LABEL_32;
    }

    v150 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (!v150)
    {

      outlined consume of URL.Template.Value.Underlying(v20, v19, v21);

      goto LABEL_31;
    }

    v146 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg_SStGMd);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_181218E20;
    v163 = v20;
    swift_retain_n();
    swift_retain_n();
    a1._rawValue = swift_retain_n();
    v65 = 0;
    v66 = 0;
    v67 = MEMORY[0x1E69E7CC0];
    v159 = v19;
    do
    {
      if (v66 >= *(v19 + 16))
      {
        goto LABEL_148;
      }

      if (v66 >= *(v63 + 16))
      {
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v69 = *(v19 + v65 + 32);
      v68 = *(v19 + v65 + 40);
      v70 = v63;
      v72 = *(v63 + v65 + 32);
      v71 = *(v63 + v65 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      a1._rawValue = swift_initStackObject();
      *(a1._rawValue + 4) = v69;
      *(a1._rawValue + 5) = v68;
      *(a1._rawValue + 6) = v72;
      *(a1._rawValue + 7) = v71;
      v73 = v67[2];
      v74 = v73 + 2;
      if (__OFADD__(v73, 2))
      {
        goto LABEL_150;
      }

      a1._rawValue = swift_isUniquelyReferenced_nonNull_native();
      if ((a1._rawValue & 1) == 0 || (v75 = v67[3] >> 1, v75 < v74))
      {
        if (v73 <= v74)
        {
          v76 = v73 + 2;
        }

        else
        {
          v76 = v73;
        }

        a1._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1._rawValue, v76, 1, v67);
        v67 = a1._rawValue;
        v75 = *(a1._rawValue + 3) >> 1;
      }

      if (v75 - v67[2] < 2)
      {
        goto LABEL_151;
      }

      swift_arrayInitWithCopy();
      swift_setDeallocating();
      a1._rawValue = swift_arrayDestroy();
      v77 = v67[2];
      v44 = __OFADD__(v77, 2);
      v78 = v77 + 2;
      if (v44)
      {
        goto LABEL_152;
      }

      ++v66;
      v67[2] = v78;
      v65 += 16;
      v19 = v159;
      v63 = v70;
    }

    while (v150 != v66);

    if (v153 == 7)
    {

      v164 = 0;
      v79 = 0;
      v9 = v143;
      rawValue = v144;
      v10 = v146;
      v80 = v67[2];
      if (!v80)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v9 = v143;
      rawValue = v144;
      v10 = v146;
      if (v156 >= 3u)
      {

        v164 = 0;
        v79 = 0;
        v80 = v67[2];
        if (!v80)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v79 = v157;
        v80 = v67[2];
        if (!v80)
        {
LABEL_105:

          goto LABEL_106;
        }
      }
    }

    v136 = v79;
    v172 = MEMORY[0x1E69E7CC0];
    a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
    v104 = 0;
    v105 = v67 + 5;
    v152 = v80;
    do
    {
      if (v104 >= v67[2])
      {
        goto LABEL_154;
      }

      v107 = *(v105 - 1);
      v106 = *v105;
      if (v169)
      {
        swift_bridgeObjectRetain_n();
        v108 = v106;
      }

      else
      {
        if (v168 < 0)
        {
          goto LABEL_158;
        }

        String.index(_:offsetBy:limitedBy:)();
        v109 = String.subscript.getter();
        v107 = MEMORY[0x1865CAE80](v109);
        v108 = v110;
      }

      v111 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v166 & v165, v107, v108, v107, v108, v166 & v165);
      v113 = v112;

      a1._rawValue = swift_bridgeObjectRelease_n();
      v115 = *(v172 + 16);
      v114 = *(v172 + 24);
      if (v115 >= v114 >> 1)
      {
        a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1);
      }

      ++v104;
      *(v172 + 16) = v115 + 1;
      v116 = v172 + 16 * v115;
      *(v116 + 32) = v111;
      *(v116 + 40) = v113;
      v105 += 2;
    }

    while (v152 != v104);

    v9 = v143;
    rawValue = v144;
    v10 = v146;
    v79 = v136;
LABEL_106:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v117 = BidirectionalCollection<>.joined(separator:)();
    v119 = v118;

    *(v138 + 32) = v164;
    *(v138 + 40) = v79;
    *(v138 + 48) = v117;
    *(v138 + 56) = v119;

    v24 = v138;

    a1._rawValue = outlined consume of URL.Template.Value.Underlying(v163, v159, v148);
    v11 = v167;
LABEL_32:
    v39 = *(v24 + 16);
    v40 = v11[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_146;
    }

    a1._rawValue = swift_isUniquelyReferenced_nonNull_native();
    if ((a1._rawValue & 1) == 0 || v41 > v11[3] >> 1)
    {
      break;
    }

    if (*(v24 + 16))
    {
      goto LABEL_41;
    }

LABEL_9:

    v8 = v155;
    if (v39)
    {
      goto LABEL_147;
    }

LABEL_10:
    if (++v10 == v9)
    {
      goto LABEL_108;
    }
  }

  if (v40 <= v41)
  {
    v42 = v40 + v39;
  }

  else
  {
    v42 = v40;
  }

  a1._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1._rawValue, v42, 1, v11);
  v11 = a1._rawValue;
  if (!*(v24 + 16))
  {
    goto LABEL_9;
  }

LABEL_41:
  if ((v11[3] >> 1) - v11[2] < v39)
  {
    goto LABEL_153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_SStMd);
  swift_arrayInitWithCopy();

  v8 = v155;
  if (!v39)
  {
    goto LABEL_10;
  }

  v43 = v11[2];
  v44 = __OFADD__(v43, v39);
  v45 = v43 + v39;
  if (!v44)
  {
    v11[2] = v45;
    goto LABEL_10;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  result._object = v3;
  result._countAndFlagsBits = a1._rawValue;
  return result;
}

uint64_t outlined consume of URL.Template.Value.Underlying(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 >> 62) > 1)
  {
    if (a3 >> 62 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12LazySequenceVy19CollectionsInternal17OrderedDictionaryVyS2SGG_SSSg_SSts5NeverOTg5043_s10Foundation3URLV8TemplateV10ExpressionV7b127V13escapedValues33_3095C8CED2F376984B6652158234A6EFLL8operator9variablesSaySSSg_SStGAG8OperatorOSg_SDyAE12VariableNameVAE5ValueO44UnderlyingOGtFAN_SStSS3key_SS5valuet_tXEfU0_10Foundation3URLV0N0V0P0VACVAW8OperatorOSgTf1cn_nTf4ngn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v11 = *(a3 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v54;
  if (v11)
  {
    v13 = *(a2 + 16);
    v52 = a8 != 7;

    v51 = 3u >> a8;
    v15 = (a2 + 40);
    v16 = (a3 + 40);
    while (v13)
    {
      v49 = v11;
      v50 = v12;
      v18 = *(v15 - 1);
      v17 = *v15;
      v19 = *(v16 - 1);
      v20 = *v16;
      swift_bridgeObjectRetain_n();

      if (a7)
      {
        v21 = v17;
      }

      else
      {
        v22 = specialized Collection.prefix(_:)(a6);
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v18 = MEMORY[0x1865CAE80](v22, v24, v26, v28);
        v21 = v29;
      }

      v48 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v52 & v51, v18, v21, v18, v21, v52 & v51);
      v31 = v30;
      swift_bridgeObjectRelease_n();

      if (a7)
      {
        v32 = v20;
      }

      else
      {
        v33 = specialized Collection.prefix(_:)(a6);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v19 = MEMORY[0x1865CAE80](v33, v35, v37, v39);
        v32 = v40;
      }

      v41 = specialized String.withContiguousNFCAndOutputBuffer<A>(allowed:_:)(v52 & v51, v19, v32, v19, v32, v52 & v51);
      v43 = v42;

      result = swift_bridgeObjectRelease_n();
      v12 = v50;
      v45 = *(v50 + 16);
      v44 = *(v50 + 24);
      if (v45 >= v44 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v12 = v50;
      }

      *(v12 + 16) = v45 + 1;
      v46 = (v12 + 32 * v45);
      v46[4] = v48;
      v46[5] = v31;
      v46[6] = v41;
      v46[7] = v43;
      --v13;
      v15 += 2;
      v16 += 2;
      v11 = v49 - 1;
      if (v49 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:

    return v12;
  }

  return result;
}

uint64_t URL.Template.Value.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      MEMORY[0x1865CD060](1);
      result = MEMORY[0x1865CD060](*(v2 + 16));
      v5 = *(v2 + 16);
      if (v5)
      {
        v6 = v2 + 40;
        do
        {

          String.hash(into:)();

          v6 += 16;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      v7 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      MEMORY[0x1865CD060](2);
      v8 = *(v7 + 16);
      MEMORY[0x1865CD060](v8);

      if (v8)
      {
        v9 = 0;
        v10 = v7 + 40;
        v11 = v1 + 40;
        while (v9 < *(v1 + 16))
        {
          ++v9;

          String.hash(into:)();
          String.hash(into:)();

          v10 += 16;
          v11 += 16;
          if (v8 == v9)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_14:
      }
    }
  }

  else
  {
    MEMORY[0x1865CD060](0);

    return String.hash(into:)();
  }

  return result;
}

Swift::Int URL.Template.Value.hashValue.getter()
{
  Hasher.init(_seed:)();
  URL.Template.Value.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.Template.Value()
{
  Hasher.init(_seed:)();
  URL.Template.Value.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template.Value()
{
  Hasher.init(_seed:)();
  URL.Template.Value.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static URL.Template.Value.text(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
}

double static URL.Template.Value.list<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a2 = dispatch thunk of Sequence._copyToContiguousArray()();
  result = 0.0;
  *(a2 + 8) = xmmword_1812DC9C0;
  return result;
}

uint64_t static URL.Template.Value.associativeList<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  result = specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(v7, a2);
  *a3 = result;
  a3[1] = v11;
  a3[2] = v10 | 0x8000000000000000;
  return result;
}

uint64_t specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v34 - v9;
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd) == a2)
  {

    v33 = _s19CollectionsInternal17OrderedDictionaryV30_uncheckedUniqueKeysWithValuesACyxq_Gqd___tcSTRd__x3key_q_5valuet7ElementRtd__lufCSS_SSSDyS2SGTt0g5(v32);
    (*(v4 + 8))(a1, a2);
    return v33;
  }

  v34 = v8;
  v11 = MEMORY[0x1E69E7CC0];
  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v12 = dispatch thunk of Sequence.underestimatedCount.getter();
  v38 = AssociatedTypeWitness;
  v13 = v12;
  specialized OrderedSet._reserveCapacity(_:persistent:)(v12, 0);
  v43 = v11;
  v14 = v13 & ~(v13 >> 63);
  v15 = v38;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v16 = v43;
  v35 = v4;
  v36 = a1;
  (*(v4 + 16))(v6, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  v37 = a2;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v17 = v40;
  if (!v40)
  {
LABEL_18:
    (*(v35 + 8))(v36, v37);
    (*(v34 + 8))(v10, v15);
    return v44;
  }

  v18 = v39;
  v19 = v41;
  v20 = v42;
  while (1)
  {
    v22 = v44;
    v21 = v45;
    v23 = *(v45 + 16);
    if (!v44)
    {
      break;
    }

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v18, v17, v21 + 32, v23, (v22 + 16));
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_15:
    specialized OrderedSet._appendNew(_:in:)(v18, v17);
    v43 = v16;
    v30 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v16 = v43;
    }

    *(v16 + 16) = v30 + 1;
    v31 = v16 + 16 * v30;
    *(v31 + 32) = v19;
    *(v31 + 40) = v20;

    v15 = v38;
    dispatch thunk of IteratorProtocol.next()();
    v18 = v39;
    v17 = v40;
    v19 = v41;
    v20 = v42;
    if (!v40)
    {
      goto LABEL_18;
    }
  }

  if (!v23)
  {
    goto LABEL_15;
  }

  v27 = (v45 + 40);
  while (1)
  {
    result = *(v27 - 1);
    if (result == v18 && v17 == *v27)
    {
      break;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      break;
    }

    v27 += 2;
    if (!--v23)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t URL.Template.Value.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

double URL.Template.Value.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1812DC9C0;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance URL.Template.Value@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_1812DC9C0;
  return result;
}

uint64_t URL.Template.Value.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tf4g_n(a1);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7 | 0x8000000000000000;
  return result;
}

uint64_t protocol witness for ExpressibleByDictionaryLiteral.init(dictionaryLiteral:) in conformance URL.Template.Value@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tf4g_n(a1);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7 | 0x8000000000000000;
  return result;
}

uint64_t URL.Template.Value.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!(v3 >> 62))
  {

    return v1;
  }

  if (v3 >> 62 == 1)
  {

    v5 = MEMORY[0x1865CB4E0](v4, MEMORY[0x1E69E6158]);
    outlined consume of URL.Template.Value.Underlying(v1, v2, v3);
    return v5;
  }

  v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  v22 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v22)
  {

    v20 = 0xE300000000000000;
    v19 = 6109787;
LABEL_14:
    MEMORY[0x1865CB0E0](v19, v20);

    return 0;
  }

  outlined copy of URL.Template.Value.Underlying(v1, v2, v3);

  v8 = 0;
  v9 = (v6 + 40);
  v10 = (v2 + 40);
  v11 = 1;
  v21 = v2;
  while (v8 < *(v2 + 16))
  {
    if (v8 >= *(v6 + 16))
    {
      goto LABEL_17;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    v17 = *(v9 - 1);
    v18 = *v9;

    if ((v11 & 1) == 0)
    {
      MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
    }

    ++v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_181218E20;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;

    debugPrint<A>(_:separator:terminator:to:)();

    MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_181218E20;
    *(v14 + 56) = v13;
    *(v14 + 32) = v17;
    *(v14 + 40) = v18;

    debugPrint<A>(_:separator:terminator:to:)();

    v11 = 0;
    v9 += 2;
    v10 += 2;
    v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v2 = v21;
    if (v22 == v8)
    {

      MEMORY[0x1865CB0E0](93, 0xE100000000000000);
      v19 = 91;
      v20 = 0xE100000000000000;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t URL.Template.Value.Underlying.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      MEMORY[0x1865CD060](1);
      v6 = *(a2 + 16);
      result = MEMORY[0x1865CD060](v6);
      if (v6)
      {
        v8 = a2 + 40;
        do
        {

          String.hash(into:)();

          v8 += 16;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v9 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      MEMORY[0x1865CD060](2);
      v10 = *(v9 + 16);
      MEMORY[0x1865CD060](v10);

      if (v10)
      {
        v11 = 0;
        v12 = v9 + 40;
        v13 = a3 + 40;
        while (v11 < *(a3 + 16))
        {
          ++v11;

          String.hash(into:)();
          String.hash(into:)();

          v12 += 16;
          v13 += 16;
          if (v10 == v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_14:
      }
    }
  }

  else
  {
    MEMORY[0x1865CD060](0);

    return String.hash(into:)();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.Template.Value.Underlying()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  URL.Template.Value.Underlying.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.Template.Value.Underlying()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  URL.Template.Value.Underlying.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  if (!*v3)
  {
    if (v11 < 0xF)
    {
      return result;
    }

    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  if (MEMORY[0x1865CA180](*(*v3 + 16) & 0x3FLL) <= v11)
  {
    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  result = swift_isUniquelyReferenced_native();
  v13 = *v3;
  if ((result & 1) == 0)
  {
    if (!v13)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v14 = _HashTable.copy()();

    *v3 = v14;
    v13 = v14;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v7)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

uint64_t _s19CollectionsInternal17OrderedDictionaryV30_uncheckedUniqueKeysWithValuesACyxq_Gqd___tcSTRd__x3key_q_5valuet7ElementRtd__lufCSS_SSSDyS2SGTt0g5(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0);
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = 0;
  v6 = v2;
  v24 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  if ((v11 & v7) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return 0;
    }

    v12 = *(v8 + 8 * v14);
    ++v5;
    if (v12)
    {
      v5 = v14;
      do
      {
LABEL_8:
        v15 = (v5 << 10) | (16 * __clz(__rbit64(v12)));
        v16 = (*(v24 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(v24 + 56) + v15);
        v20 = v19[1];
        v25 = *v19;

        specialized OrderedSet._appendNew(_:)(v18, v17);
        v22 = *(v6 + 16);
        v21 = *(v6 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        }

        v12 &= v12 - 1;
        *(v6 + 16) = v22 + 1;
        v23 = v6 + 16 * v22;
        *(v23 + 32) = v25;
        *(v23 + 40) = v20;
      }

      while (v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._appendNew(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2 + 1;
  v5 = v2[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v5;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    v5 = *v6;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    v5 = *v6;
  }

  *(v5 + 16) = v9 + 1;
  v10 = v5 + 16 * v9;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v2[1] = v5;
  if (!*v2)
  {
    if (v9 < 0xF)
    {
      return result;
    }

    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  if (MEMORY[0x1865CA180](*(*v2 + 16) & 0x3FLL) <= v9)
  {
    return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v2;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v12 = _HashTable.copy()();

    *v2 = v12;
    v11 = v12;
  }

  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *(v11 + 16), 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (_HashTable.UnsafeHandle._startIterator(bucket:)())
  {
    while (1)
    {
      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.BucketIterator.currentValue.setter();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1865CC0E0](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [_BPlistEncodingFormat.Reference] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation21_BPlistEncodingFormatV9ReferenceCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _BPlistEncodingFormat.Reference();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static URL.Template.Value.Underlying.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      if (a6 >> 62 == 1)
      {

        return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a4);
      }

      return 0;
    }

    return a6 >> 62 == 2 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a2, a5) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a3 & 0x3FFFFFFFFFFFFFFFLL, a6 & 0x3FFFFFFFFFFFFFFFLL) & 1) != 0;
  }

  if (a6 >> 62)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static URL.Template.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[2];
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      if (v6 >> 62 == 1 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, *a2) & 1) != 0)
      {
        return 1;
      }
    }

    else if (v6 >> 62 == 2 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v5 & 0x3FFFFFFFFFFFFFFFLL, v6 & 0x3FFFFFFFFFFFFFFFLL) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!(v6 >> 62))
  {
    v7 = v3 == *a2 && v4 == a2[1];
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;

  if (v3)
  {
    v5 = 0;
    v18 = a1 + 32;
    while (1)
    {
      v6 = (v18 + 32 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = *(v19 + 16);
      if (v11)
      {
        break;
      }

LABEL_11:

      specialized OrderedSet._appendNew(_:in:)(v8, v7);
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v15 + 1;
      v16 = v4 + 16 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;

      if (v5 == v3)
      {
        goto LABEL_14;
      }
    }

    v12 = (v19 + 40);
    while (1)
    {
      v13 = *(v12 - 1) == v8 && *v12 == v7;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Value and conformance URL.Template.Value()
{
  result = lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value;
  if (!lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value;
  if (!lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value;
  if (!lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Value and conformance URL.Template.Value);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URL.Template.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for URL.Template.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.Template.Value.Underlying and conformance URL.Template.Value.Underlying()
{
  result = lazy protocol witness table cache variable for type URL.Template.Value.Underlying and conformance URL.Template.Value.Underlying;
  if (!lazy protocol witness table cache variable for type URL.Template.Value.Underlying and conformance URL.Template.Value.Underlying)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.Value.Underlying and conformance URL.Template.Value.Underlying);
  }

  return result;
}

uint64_t outlined destroy of (_BPlistEncodingFormat.Reference.Backing, _BPlistEncodingFormat.Reference.Backing)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [_BPlistEncodingFormat.Reference] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [_BPlistEncodingFormat.Reference] and conformance [A];
  if (!lazy protocol witness table cache variable for type [_BPlistEncodingFormat.Reference] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation21_BPlistEncodingFormatV9ReferenceCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [_BPlistEncodingFormat.Reference] and conformance [A]);
  }

  return result;
}

uint64_t URL.Template.VariableName.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static URL.Template.VariableName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int URL.Template.VariableName.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t URL.Template.VariableName.description.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t lazy protocol witness table accessor for type URL.Template.VariableName and conformance URL.Template.VariableName()
{
  result = lazy protocol witness table cache variable for type URL.Template.VariableName and conformance URL.Template.VariableName;
  if (!lazy protocol witness table cache variable for type URL.Template.VariableName and conformance URL.Template.VariableName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.Template.VariableName and conformance URL.Template.VariableName);
  }

  return result;
}

uint64_t protocol witness for TopLevelEncoder.encode<A>(_:) in conformance JSONEncoder@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 272))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t protocol witness for TopLevelEncoder.encode<A>(_:) in conformance PropertyListEncoder@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t specialized static DecodingError._typeDescription(of:)(void *a1)
{
  outlined init with copy of Any(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  swift_dynamicCast();
  v2 = v6[3];
  outlined destroy of Any?(v6);
  if (!v2)
  {
    return 0x76206C6C756E2061;
  }

  outlined init with copy of Any(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17FixedWidthInteger_pMd);
  if (swift_dynamicCast() || (outlined init with copy of Any(a1, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSB_pMd), swift_dynamicCast()))
  {
    v3 = 0x7265626D756E2061;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined init with copy of Any(a1, v5);
    if (swift_dynamicCast())
    {

      return 0x676E697274732061;
    }

    else
    {
      outlined init with copy of Any(a1, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
      if (swift_dynamicCast())
      {

        return 0x7961727261206E61;
      }

      else
      {
        outlined init with copy of Any(a1, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
        if (swift_dynamicCast())
        {

          return 0x6F69746369642061;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          swift_getDynamicType();
          return _typeName(_:qualified:)();
        }
      }
    }
  }

  return v3;
}

uint64_t _parseHexIntegerDigits<A>(_:isNegative:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a3;
  v49 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v47 = &v41 - v11;
  v50 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v24 = &v41 - v23;
  if (!a2)
  {
    v39 = *(v20 + 56);
    v40 = v49;

    return v39(v40, 1, 1, a4, v22);
  }

  v51 = v21;
  v45 = a5;
  v53 = v20;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v52 = v24;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v25 = v53 + 8;
  if (a2 <= 0)
  {
    v29 = *v25;
LABEL_18:
    v29(v52, a4);
    v36 = v49;
    (*(v53 + 32))(v49, v18, a4);
    return (*(v53 + 56))(v36, 0, 1, a4);
  }

  v42 = &a1[a2];
  v26 = (v53 + 32);
  v41 = v25 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v27 = *a1;
    if ((v27 - 48) <= 9)
    {
      v44 = a1;
      v54 = v27 - 48;
      lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      goto LABEL_10;
    }

    if ((v27 - 65) > 5)
    {
      break;
    }

    v44 = a1;
    v55 = v27 - 55;
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
LABEL_10:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v28 = v46;
    v43 = dispatch thunk of FixedWidthInteger.multipliedReportingOverflow(by:)();
    v29 = *v25;
    (*v25)(v18, a4);
    v30 = *v26;
    v31 = v26;
    (*v26)(v18, v28, a4);
    v32 = v47;
    v33 = v51;
    if (v48)
    {
      v34 = dispatch thunk of FixedWidthInteger.subtractingReportingOverflow(_:)();
    }

    else
    {
      v34 = dispatch thunk of FixedWidthInteger.addingReportingOverflow(_:)();
    }

    v35 = v34;
    v29(v33, a4);
    v29(v18, a4);
    v26 = v31;
    v30(v18, v32, a4);
    if ((v43 | v35))
    {
      v29(v18, a4);
      v29(v52, a4);
      return (*(v53 + 56))(v49, 1, 1, a4);
    }

    a1 = v44 + 1;
    if ((v44 + 1) >= v42)
    {
      goto LABEL_18;
    }
  }

  if ((v27 - 97) < 6)
  {
    v44 = a1;
    v56 = v27 - 87;
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    goto LABEL_10;
  }

  v38 = *(v53 + 8);
  v38(v18, a4);
  v38(v52, a4);
  return (*(v53 + 56))(v49, 1, 1, a4);
}

uint64_t BufferReader.lineNumber.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  result = 1;
  if (v1 >= v2)
  {
    return result;
  }

  while (*v1 == 13)
  {
    v4 = __OFADD__(result++, 1);
    if (v4)
    {
      goto LABEL_16;
    }

    if ((v1 + 1) >= v2)
    {
LABEL_3:
      if (++v1 >= v2)
      {
        return result;
      }
    }

    else
    {
      if (v1[1] == 10)
      {
        ++v1;
      }

      if (++v1 >= v2)
      {
        return result;
      }
    }
  }

  if (v0[1] < 2)
  {
    goto LABEL_17;
  }

  if (*(*v0 + 1) != 10)
  {
    goto LABEL_3;
  }

  v4 = __OFADD__(result++, 1);
  if (!v4)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t _CodingKey.stringValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v5);

      return 0x207865646E49;
    }
  }

  else if (a4)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return a1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _CodingKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance _CodingKey()
{
  result = *v0;
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) != 2)
    {
      return v0[2];
    }
  }

  else if (!*(v0 + 24))
  {
    return *(v0 + 24);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _CodingKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyCodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefaultAssociatedValueCodingKeys1.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultAssociatedValueCodingKeys1.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t DefaultAssociatedValueCodingKeys1.init(stringValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultAssociatedValueCodingKeys1.init(stringValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultAssociatedValueCodingKeys1()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultAssociatedValueCodingKeys1()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DefaultAssociatedValueCodingKeys1@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DefaultAssociatedValueCodingKeys1, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DefaultAssociatedValueCodingKeys1@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance DefaultAssociatedValueCodingKeys1, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DefaultAssociatedValueCodingKeys1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DefaultAssociatedValueCodingKeys1(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefaultAssociatedValueCodingKeys2.rawValue.getter()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DefaultAssociatedValueCodingKeys2(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 12639;
  }

  else
  {
    v2 = 12383;
  }

  if (*a2)
  {
    v3 = 12639;
  }

  else
  {
    v3 = 12383;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultAssociatedValueCodingKeys2()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DefaultAssociatedValueCodingKeys2()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultAssociatedValueCodingKeys2()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DefaultAssociatedValueCodingKeys2@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultAssociatedValueCodingKeys2.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DefaultAssociatedValueCodingKeys2(uint64_t *a1@<X8>)
{
  v2 = 12383;
  if (*v1)
  {
    v2 = 12639;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DefaultAssociatedValueCodingKeys2()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DefaultAssociatedValueCodingKeys2@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DefaultAssociatedValueCodingKeys2.init(stringValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DefaultAssociatedValueCodingKeys2(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DefaultAssociatedValueCodingKeys2(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t getEnumTagSinglePayload for _CodingPathNode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _CodingPathNode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for _CodingPathNode(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _CodingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t specialized static Date.daysBeforeMonth(_:year:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(result)
  {
    case 1:
      return v2 | (v3 << 16);
    case 2:
      v3 = 0;
      v2 = 31;
      return v2 | (v3 << 16);
    case 3:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_108;
      }

      v8 = (a2 + 1) % 400;
      if (v8 < 0)
      {
        v8 = -v8;
      }

      if ((v8 & 3) != 0 || v8 == 100 || v8 == 300 || v8 == 200)
      {
        v3 = 0;
        v2 = 59;
      }

      else
      {
        v3 = 0;
        v2 = 60;
      }

      return v2 | (v3 << 16);
    case 4:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_109;
      }

      v9 = (a2 + 1) % 400;
      if (v9 < 0)
      {
        v9 = -v9;
      }

      if ((v9 & 3) != 0 || v9 == 100 || v9 == 300 || v9 == 200)
      {
        v3 = 0;
        v2 = 90;
      }

      else
      {
        v3 = 0;
        v2 = 91;
      }

      return v2 | (v3 << 16);
    case 5:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_105;
      }

      v5 = (a2 + 1) % 400;
      if (v5 < 0)
      {
        v5 = -v5;
      }

      if ((v5 & 3) != 0 || v5 == 100 || v5 == 300 || v5 == 200)
      {
        v3 = 0;
        v2 = 120;
      }

      else
      {
        v3 = 0;
        v2 = 121;
      }

      return v2 | (v3 << 16);
    case 6:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_111;
      }

      v11 = (a2 + 1) % 400;
      if (v11 < 0)
      {
        v11 = -v11;
      }

      if ((v11 & 3) != 0 || v11 == 100 || v11 == 300 || v11 == 200)
      {
        v3 = 0;
        v2 = 151;
      }

      else
      {
        v3 = 0;
        v2 = 152;
      }

      return v2 | (v3 << 16);
    case 7:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_112;
      }

      v12 = (a2 + 1) % 400;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      if ((v12 & 3) != 0 || v12 == 100 || v12 == 300 || v12 == 200)
      {
        v3 = 0;
        v2 = 181;
      }

      else
      {
        v3 = 0;
        v2 = 182;
      }

      return v2 | (v3 << 16);
    case 8:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_110;
      }

      v10 = (a2 + 1) % 400;
      if (v10 < 0)
      {
        v10 = -v10;
      }

      if ((v10 & 3) != 0 || v10 == 100 || v10 == 300 || v10 == 200)
      {
        v3 = 0;
        v2 = 212;
      }

      else
      {
        v3 = 0;
        v2 = 213;
      }

      return v2 | (v3 << 16);
    case 9:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_114;
      }

      v14 = (a2 + 1) % 400;
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if ((v14 & 3) != 0 || v14 == 100 || v14 == 300 || v14 == 200)
      {
        v3 = 0;
        v2 = 243;
      }

      else
      {
        v3 = 0;
        v2 = 244;
      }

      return v2 | (v3 << 16);
    case 10:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_107;
      }

      v7 = (a2 + 1) % 400;
      if (v7 < 0)
      {
        v7 = -v7;
      }

      if ((v7 & 3) != 0 || v7 == 100 || v7 == 300 || v7 == 200)
      {
        v3 = 0;
        v2 = 273;
      }

      else
      {
        v3 = 0;
        v2 = 274;
      }

      return v2 | (v3 << 16);
    case 11:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_113;
      }

      v13 = (a2 + 1) % 400;
      if (v13 < 0)
      {
        v13 = -v13;
      }

      if ((v13 & 3) != 0 || v13 == 100 || v13 == 300 || v13 == 200)
      {
        v3 = 0;
        v2 = 304;
      }

      else
      {
        v3 = 0;
        v2 = 305;
      }

      return v2 | (v3 << 16);
    case 12:
      if (__OFADD__(a2, 1))
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
      }

      else
      {
        v4 = (a2 + 1) % 400;
        if (v4 < 0)
        {
          v4 = -v4;
        }

        if ((v4 & 3) != 0 || v4 == 100 || v4 == 300 || v4 == 200)
        {
          v3 = 0;
          v2 = 334;
        }

        else
        {
          v3 = 0;
          v2 = 335;
        }

        return v2 | (v3 << 16);
      }

      return result;
    case 13:
      if (__OFADD__(a2, 1))
      {
        goto LABEL_106;
      }

      v6 = (a2 + 1) % 400;
      if (v6 < 0)
      {
        v6 = -v6;
      }

      if ((v6 & 3) != 0 || v6 == 100 || v6 == 300 || v6 == 200)
      {
        v3 = 0;
        v2 = 365;
      }

      else
      {
        v3 = 0;
        v2 = 366;
      }

      return v2 | (v3 << 16);
    default:
      v2 = 0;
      v3 = 1;
      return v2 | (v3 << 16);
  }
}

uint64_t specialized static Date.daysSinceReferenceDate(year:month:day:)(uint64_t result, uint64_t a2, char a3)
{
  v3 = 400 * (result / 400);
  v4 = result % 400;
  if (__OFSUB__(result, v3))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v6 = (result / 400) * 146097.0;
  if (v4 < 0)
  {
    v12 = v4 + 1;
    while (1)
    {
      v15 = -(v12 % 400) & ((v12 % 400) >> 63);
      if ((v15 & 3) != 0)
      {
        v13 = 0xD00000000000;
      }

      else
      {
        v14 = 365.0;
        if (v15 == 100 || v15 == 300 || v15 == 200)
        {
          goto LABEL_18;
        }

        v13 = 0xE00000000000;
      }

      *&v14 = v13 & 0xFFFFFFFFFFFFLL | 0x4076000000000000;
LABEL_18:
      v6 = v6 - v14;
      if (++v12 == 1)
      {
        goto LABEL_24;
      }
    }
  }

  if (v4)
  {
    v7 = v3 - result;
    for (i = 1; v7 + i != 1; ++i)
    {
      v11 = i % 400;
      if (i % 400 < 0)
      {
        v11 = -v11;
      }

      if ((v11 & 3) != 0)
      {
        v9 = 0xD00000000000;
      }

      else
      {
        v10 = 365.0;
        if (v11 == 100 || v11 == 300 || v11 == 200)
        {
          goto LABEL_7;
        }

        v9 = 0xE00000000000;
      }

      *&v10 = v9 & 0xFFFFFFFFFFFFLL | 0x4076000000000000;
LABEL_7:
      v6 = v6 + v10;
    }
  }

LABEL_24:
  result = specialized static Date.daysBeforeMonth(_:year:)(a2, result);
  if ((a3 - 1) != a3 - 1)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t KeyedEncodingContainer.encode<A, B>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[4] = a5;
  v25[1] = a2;
  v25[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v25 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v25 - v22;
  (*(v20 + 16))(v25 - v22, a1, v19, v21);
  if ((*(v15 + 48))(v23, 1, a4) == 1)
  {
    return (*(v20 + 8))(v23, v19);
  }

  (*(v15 + 32))(v18, v23, a4);
  KeyedEncodingContainer.superEncoder(forKey:)();
  (*(a9 + 16))();
  (*(a7 + 16))(v28, v14, a4, a7);
  (*(v26 + 8))(v14, v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return (*(v15 + 8))(v18, a4);
}

uint64_t KeyedDecodingContainer.decode<A, B>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v10 = type metadata accessor for CodableConfiguration();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  if (KeyedDecodingContainer.contains(_:)())
  {
    swift_getWitnessTable();
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v7)
    {
      return result;
    }

    v14 = *(a1 - 8);
    (*(v14 + 32))(a7, v12, a1);
    v15 = 0;
  }

  else
  {
    v14 = *(a1 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a7, v15, 1, a1);
}

uint64_t KeyedEncodingContainer.encode<A, B>(_:forKey:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v17 - v14;
  KeyedEncodingContainer.superEncoder(forKey:)();
  (*(a8 + 16))(a6, a8);
  (*(a7 + 16))(v18, v15, a5, a7);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t KeyedEncodingContainer.encodeIfPresent<A, B>(_:forKey:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v26 = a8;
  v24[0] = a2;
  v24[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v24 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - v16;
  v18 = *(a5 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14, v20);
  if ((*(v18 + 48))(v17, 1, a5) == 1)
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v18 + 32))(v22, v17, a5);
  KeyedEncodingContainer.superEncoder(forKey:)();
  (*(v26 + 16))(v25, v26);
  (*(a7 + 16))(v29, v13, a5, a7);
  (*(v27 + 8))(v13, v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v18 + 8))(v22, a5);
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  KeyedEncodingContainer.superEncoder(forKey:)();
  (*(a6 + 16))(v10, a3, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a4;
  v21 = a3;
  v19[0] = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, a5) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v17, v12, a5);
  KeyedEncodingContainer.superEncoder(forKey:)();
  (*(a6 + 16))(v20, v21, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return (*(v13 + 8))(v17, a5);
}

uint64_t KeyedDecodingContainer.decode<A, B>(_:forKey:configuration:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v12 = &v15[-v11 - 8];
  result = KeyedDecodingContainer.superDecoder(forKey:)();
  if (!v5)
  {
    (*(a4 + 16))(a2, a4);
    return (*(a3 + 16))(v15, v12, a1, a3);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent<A, B>(_:forKey:configuration:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v16 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v12 = &v15[-v11 - 8];
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    return (*(*(a1 - 8) + 56))(a5, 1, 1, a1);
  }

  result = KeyedDecodingContainer.superDecoder(forKey:)();
  if (!v5)
  {
    (*(v16 + 16))(a2);
    (*(a3 + 16))(v15, v12, a1, a3);
    return (*(*(a1 - 8) + 56))(a5, 0, 1, a1);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:configuration:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a1;
  v14 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13[-v9 - 8];
  result = KeyedDecodingContainer.superDecoder(forKey:)();
  if (!v4)
  {
    (*(v8 + 16))(v10, v12, AssociatedTypeWitness);
    return (*(a3 + 16))(v13, v10, a2, a3);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:configuration:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v13 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  v11 = v15;
  result = KeyedDecodingContainer.superDecoder(forKey:)();
  if (!v11)
  {
    (*(v8 + 16))(v10, v13, AssociatedTypeWitness);
    (*(a3 + 16))(v14, v10, a2, a3);
    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  return result;
}

uint64_t UnkeyedEncodingContainer.encode<A, B>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[1] = a6;
  v17[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v17 - v14;
  dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
  (*(a8 + 16))(a5, a8);
  (*(a7 + 16))(v18, v15, a4, a7);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t UnkeyedEncodingContainer.encode<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
  (*(a6 + 16))(v10, a2, a4, a6);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t UnkeyedDecodingContainer.decode<A, B>(_:configuration:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v16 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v12 = &v15[-v11 - 8];
  result = dispatch thunk of UnkeyedDecodingContainer.superDecoder()();
  if (!v5)
  {
    (*(a4 + 16))(a2, a4);
    return (*(a3 + 16))(v15, v12, a1, a3);
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent<A, B>(_:configuration:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v17 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v12 = &v16[-v11 - 8];
  result = dispatch thunk of UnkeyedDecodingContainer.decodeNil()();
  if (!v5)
  {
    v14 = v17;
    if (result)
    {
      return (*(*(a1 - 8) + 56))(a5, 1, 1, a1);
    }

    else
    {
      dispatch thunk of UnkeyedDecodingContainer.superDecoder()();
      (*(v14 + 16))(a2, v14);
      (*(a3 + 16))(v16, v12, a1, a3);
      return (*(*(a1 - 8) + 56))(a5, 0, 1, a1);
    }
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decode<A>(_:configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = a1;
  v14 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13[-v9 - 8];
  result = dispatch thunk of UnkeyedDecodingContainer.superDecoder()();
  if (!v4)
  {
    (*(v8 + 16))(v10, v12, AssociatedTypeWitness);
    return (*(a3 + 16))(v13, v10, a2, a3);
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent<A>(_:configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v16 = a1;
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  result = dispatch thunk of UnkeyedDecodingContainer.decodeNil()();
  if (!v4)
  {
    v15 = a3;
    v12 = v16;
    v13 = v18;
    if (result)
    {
      return (*(*(a2 - 8) + 56))(v18, 1, 1, a2);
    }

    else
    {
      dispatch thunk of UnkeyedDecodingContainer.superDecoder()();
      (*(v8 + 16))(v10, v12, AssociatedTypeWitness);
      (*(v15 + 16))(v17, v10, a2);
      return (*(*(a2 - 8) + 56))(v13, 0, 1, a2);
    }
  }

  return result;
}

uint64_t CodableConfiguration.encode(to:)(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2[7] + 16))(v8);
  (*(v4 + 16))(a1, v10, v5, v4);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t CodableConfiguration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v21[-v13 - 8];
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of Hashable & Sendable(a1, v21);
  (*(a5 + 16))(a3, a5);
  (*(a4 + 16))(v21, v14, a2, a4);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v6)
  {
    return (*(v15 + 32))(v22, v18, a2);
  }

  return result;
}

Swift::Int CodableConfiguration<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> CodableConfiguration<A, B>()
{
  Hasher.init(_seed:)();
  CodableConfiguration<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Optional<A>.encode(to:configuration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v10, v18, v15);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    (*(v8 + 8))(v10, a3);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    (*(v13 + 32))(v17, v10, v12);
    (*(a4 + 16))(a1, a2, v12, a4);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t Optional<A>.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a2;
  v38 = a5;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Optional();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = v40;
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v17)
  {
    v33 = v12;
    v34 = v15;
    v35 = a3;
    v19 = AssociatedTypeWitness;
    v40 = 0;
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      (*(v7 + 8))(v44, v19);
      v20 = v34;
      (*(*(v35 - 8) + 56))(v34, 1, 1);
      v22 = v37;
      v21 = v38;
      v18 = v41;
    }

    else
    {
      v18 = v41;
      outlined init with copy of Hashable & Sendable(v41, v42);
      v23 = v7;
      v24 = *(v7 + 16);
      v25 = v9;
      v26 = v44;
      v27 = v19;
      v24(v9, v44, v19);
      v28 = v35;
      v29 = v33;
      v30 = v40;
      (*(v36 + 16))(v42, v25, v35);
      v21 = v38;
      if (v30)
      {
        (*(v23 + 8))(v26, v27);
        __swift_destroy_boxed_opaque_existential_1(v43);
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      (*(v23 + 8))(v26, v27);
      (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
      v22 = v37;
      v20 = v34;
      (*(v37 + 32))(v34, v29, v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
    (*(v22 + 32))(v21, v20, v10);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  (*(v7 + 8))(v44, AssociatedTypeWitness);
  v18 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t Array<A>.encode(to:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v28 = MEMORY[0x1865CB560](a3, a4);
  if (!v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v13 = 0;
  v21 = a3 & 0xC000000000000001;
  v22 = v8;
  v26 = (v8 + 16);
  v27 = a3 & 0xFFFFFFFFFFFFFF8;
  v24 = a5 + 16;
  v25 = (v8 + 32);
  v23 = (v8 + 8);
  while ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v21)
  {
    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v20 != 8)
    {
      goto LABEL_20;
    }

    v32[0] = result;
    (*v26)(v31, v32, a4);
    swift_unknownObjectRelease();
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_15:
      __break(1u);
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

LABEL_9:
    v17 = v29;
    (*v25)(v29, v31, a4);
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    dispatch thunk of UnkeyedEncodingContainer.superEncoder()();
    v18 = v35;
    (*(a5 + 16))(v32, v30, a4, a5);
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*v23)(v17, a4);
    if (v18)
    {
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

    v35 = 0;
    ++v13;
    v8 = v22;
    if (v16 == v28)
    {
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  result = _swift_isClassOrObjCExistentialType();
  v15 = v27;
  if ((result & 1) == 0)
  {
    v15 = a3;
  }

  if (v13 < *(v15 + 16))
  {
    (*(v8 + 16))(v31, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, a4);
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t Array<A>.init(from:configuration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v30 - v8;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v43;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v13)
  {
    (*(v7 + 8))(v39, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  v43 = v12;
  v31 = v9;
  v32 = a1;
  v14 = v34;
  v33 = v7;
  v15 = AssociatedTypeWitness;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  if ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
  {
    v36 = v14 + 16;
    v37 = (v33 + 16);
    v35 = v38 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v17 = v31;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      dispatch thunk of UnkeyedDecodingContainer.superDecoder()();
      (*v37)(v17, v39, v15);
      (*(v14 + 16))(v40, v17, a3, v14);
      if (_swift_isClassOrObjCExistentialType())
      {
        if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0 || (_swift_isClassOrObjCExistentialType() & 1) != 0 && (v9 < 0 || (v9 & 0x4000000000000000) != 0))
        {
LABEL_20:
          if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v9 < 0 || (v9 & 0x4000000000000000) != 0))
          {
            specialized _ArrayBuffer._nonNative.getter(v9);
            v22 = __CocoaSet.count.getter();
          }

          else
          {
            isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
            v21 = v9 & 0xFFFFFFFFFFFFFF8;
            if ((isClassOrObjCExistentialType & 1) == 0)
            {
              v21 = v9;
            }

            v22 = *(v21 + 16);
          }

          v9 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v9, a3);
        }
      }

      else if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v23 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v23 = v9;
      }

      v24 = *(v23 + 16);
      if (_swift_isClassOrObjCExistentialType())
      {
        v25 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v25 = v9;
      }

      v26 = *(v25 + 24);
      v27 = v24 + 1;
      if (v24 + 1 > (v26 >> 1))
      {
        v28 = v26 > 1;
        v29 = type metadata accessor for Array();
        v9 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v24 + 1, 1, v9, *(v29 + 16));
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v18 = v9 & 0xFFFFFFFFFFFFFF8;
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v27;
      }

      else
      {
        *(v9 + 16) = v27;
        v18 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v19 = v18;
      }

      else
      {
        v19 = v9;
      }

      (*(v38 + 32))(v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24, v43, a3);
      __swift_project_boxed_opaque_existential_1(v41, v42);
      if (dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter())
      {
        goto LABEL_5;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  (*(v33 + 8))(v39, v15);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v9;
}

uint64_t protocol witness for DecodableWithConfiguration.init(from:configuration:) in conformance <A> [A]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(from:configuration:)(a1, a2, *(a3 + 16), *(a4 - 8));
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t type metadata completion function for CodableConfiguration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NSComparisonResult.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t NSComparisonResult.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance NSComparisonResult@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NSComparisonResult(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Date.capped.getter@<X0>(double *a1@<X8>)
{
  v2 = *v1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v3 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v2)
  {
    v3 = v2;
  }

  if (*&static Date.validCalendarRange >= v3)
  {
    v3 = *&static Date.validCalendarRange;
  }

  *a1 = v3;
  return result;
}

BOOL Date.isValidForEnumeration.getter()
{
  v1 = *v0;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  return *(&static Date.validCalendarRange + 1) >= v1 && v1 >= *&static Date.validCalendarRange;
}

double static Date.+= infix(_:_:)(double *a1, double a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

double static Date.-= infix(_:_:)(double *a1, double a2)
{
  result = *a1 - a2;
  *a1 = result;
  return result;
}

uint64_t Date.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Date.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1865CD090](*&v1);
}

NSComparisonResult __swiftcall Date.compare(_:)(Foundation::Date a1)
{
  if (*v2 < *v1)
  {
    return -1;
  }

  else
  {
    return (*v1 < *v2);
  }
}

Swift::Int Date.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1865CD090](*&v2);
  return Hasher._finalize()();
}

id Date.debugDescription.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v2 = [v1 description];

  if (!v2)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v2);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v18;
    }

LABEL_21:

    return v17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v7;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v9 = v5;
    v10 = String.init(_nativeStorage:)();
    if (v11)
    {
      v12 = v10;

      return v12;
    }

    if (![v9 length])
    {

      return 0;
    }

    v17 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v5 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v13)
    {
      v14 = result;

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static Date._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = [a1 timeIntervalSinceReferenceDate];
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Date._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 timeIntervalSinceReferenceDate];
  *a2 = v3;
  *(a2 + 8) = 0;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Date@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result timeIntervalSinceReferenceDate];
    *a2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSDate._toCustomAnyHashable()()
{
  [v0 timeIntervalSinceReferenceDate];
  lazy protocol witness table accessor for type Date and conformance Date();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSDate()
{
  v1 = *v0;
  [v1 timeIntervalSinceReferenceDate];
  lazy protocol witness table accessor for type Date and conformance Date();
  AnyHashable.init<A>(_:)();
}

void Date.customPlaygroundQuickLook.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v6 = [v4 stringFromDate_];

  if (!v6)
  {

    v12 = 0xE000000000000000;
    goto LABEL_23;
  }

  isTaggedPointer = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_7:
    if (__CFStringIsCF())
    {
      v6 = 0;

      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v13 = v9;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v6 = v14;
      v12 = v15;

      goto LABEL_23;
    }

    if (![v13 length])
    {

      v6 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v6 = String.init(_cocoaString:)();
    v12 = v19;
    goto LABEL_21;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

LABEL_23:
      *a1 = v6;
      *(a1 + 8) = v12;
      *(a1 + 32) = 0;
      return;
    }

    goto LABEL_7;
  }

  v16 = [v9 UTF8String];
  if (v16)
  {
    v17 = String.init(utf8String:)(v16);
    if (v18)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v20;
      v12 = v21;
LABEL_21:

      goto LABEL_22;
    }

LABEL_16:
    v6 = v17;
    v12 = v18;

LABEL_22:
    goto LABEL_23;
  }

  __break(1u);
}

double static Date.validCalendarRange.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for validCalendarRange != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static Date.validCalendarRange;
  *a1 = static Date.validCalendarRange;
  return result;
}

double *protocol witness for static Strideable._step(after:from:by:) in conformance Date(double *result, uint64_t a2, char a3, double *a4, double *a5, double *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + v7 * v6;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for Date(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date();
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date();
  a1[3] = lazy protocol witness table accessor for type Date and conformance Date();
  result = lazy protocol witness table accessor for type Date and conformance Date();
  a1[4] = result;
  return result;
}

BOOL _sSLsE2geoiySbx_xtFZ10Foundation12DateIntervalV_Tt1B5(double a1, double a2, double a3, double a4)
{
  v4 = a1 < a3;
  if (a3 >= a1 && a3 <= a1)
  {
    v4 = a2 < a4;
  }

  return !v4;
}

BOOL _sSLsE1goiySbx_xtFZ10Foundation12DateIntervalV_Tt1B5(double a1, double a2, double a3, double a4)
{
  result = a3 < a1;
  if (a1 >= a3 && a1 <= a3)
  {
    return a4 < a2;
  }

  return result;
}

Foundation::DateInterval __swiftcall DateInterval.init(start:duration:)(Foundation::Date start, Swift::Double duration)
{
  if (start._time < 0.0)
  {
    __break(1u);
  }

  else
  {
    duration = *v2;
    *v3 = *v2;
    v3[1] = start._time;
  }

  result.duration = duration;
  result.start = start;
  return result;
}

double DateInterval.start.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double *DateInterval.end.setter(double *result)
{
  if (*result < *v1 || (v2 = *result - *v1, v2 < 0.0))
  {
    __break(1u);
  }

  else
  {
    v1[1] = v2;
  }

  return result;
}

void DateInterval.duration.setter(double a1)
{
  if (a1 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = a1;
  }
}

uint64_t (*DateInterval.end.modify(uint64_t a1))(uint64_t result, char a2)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  v3 = v1[1];
  *(a1 + 16) = *v1;
  *a1 = v2 + v3;
  return DateInterval.end.modify;
}

uint64_t DateInterval.end.modify(uint64_t result, char a2)
{
  v2 = *(result + 16);
  v3 = *result < v2;
  v4 = *result - v2;
  if (v4 < 0.0)
  {
    v3 = 1;
  }

  if (a2)
  {
    if (!v3)
    {
LABEL_7:
      *(*(result + 8) + 8) = v4;
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double *(*DateInterval.duration.modify(void *a1))(double *result, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return DateInterval.duration.modify;
}

double *DateInterval.duration.modify(double *result, char a2)
{
  v2 = *result;
  v3 = *result < 0.0;
  if (a2)
  {
    if (*result >= 0.0)
    {
LABEL_5:
      *(*(result + 1) + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Foundation::DateInterval __swiftcall DateInterval.init()()
{
  v1 = v0;
  v6 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v2 = __tp.tv_nsec * 0.000000001;
  v3 = __tp.tv_sec + -978307200.0 + v2;
  *v1 = v3;
  *(v1 + 8) = 0;
  result.duration = v2;
  result.start = *&v3;
  return result;
}

NSComparisonResult __swiftcall DateInterval.compare(_:)(Foundation::DateInterval a1)
{
  v3 = v1[1];
  v4 = v2[1];
  v5 = (*v1 < *v2);
  if (*v2 < *v1)
  {
    v5 = NSOrderedAscending;
  }

  v6 = NSOrderedAscending;
  if (v4 >= v3)
  {
    v6 = (v3 < v4);
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

Swift::Bool __swiftcall DateInterval.intersects(_:)(Foundation::DateInterval a1)
{
  v3 = *v1;
  v4 = *v2;
  v5 = *v2 + v2[1];
  if (*v2 <= *v1 && v3 <= v5)
  {
    return 1;
  }

  v7 = v3 + v1[1];
  v8 = v3 <= v4;
  v9 = v4 <= v7;
  if (v4 > v7)
  {
    v8 = 0;
  }

  if (v7 > v5)
  {
    v9 = 0;
  }

  result = 1;
  if (!v9 && !v8)
  {
    return v5 <= v7 && v3 <= v5;
  }

  return result;
}
uint64_t sub_6A91AC()
{
  v0 = sub_769400();
  v4 = sub_6A922C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_6A922C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_76A490();
    if (!v9 || (v10 = v9, v11 = sub_6A9384(v9, 0), v12 = sub_6A93F8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_769320();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_769320();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_76A790();
LABEL_4:

  return sub_769320();
}

void *sub_6A9384(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_BD88(&qword_961CA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_6A93F8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_6A9618(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_7693A0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_76A790();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_6A9618(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_769380();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_6A9618(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_7693B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_769390();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_6A96C4()
{
  result = qword_961CA0;
  if (!qword_961CA0)
  {
    sub_133D8(&qword_94A558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_961CA0);
  }

  return result;
}

unint64_t sub_6A9728(uint64_t a1, char a2)
{
  *(v2 + qword_95A578) = a2 & 1;
  sub_541F7C();
  sub_766CD0();
  v46 = v2;
  v3 = *(v2 + qword_95A550);
  sub_765410();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v47.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v47.value.super.super.isa;
  v47.is_nil = 1;
  sub_761940(v47, v9);
  v11 = v10;

  if (!v11)
  {
    sub_765410();
    sub_769620();
  }

  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v13 = NSKernAttributeName;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_252F70(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_769210();

  type metadata accessor for Key(0);
  sub_206144();
  v16 = sub_7690E0().super.isa;

  v17 = [v14 initWithString:v15 attributes:v16];

  [v3 setAttributedText:v17];
  sub_765410();
  sub_43B74C(v18);
  v19 = *(v46 + qword_95A568);
  v20 = sub_7653F0();
  v48._object = 0x80000000007CCE00;
  v48._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_761130(v48, v20, v49);
  v21 = sub_769210();

  [v19 setText:v21];

  result = sub_765400();
  if (!result)
  {
    goto LABEL_30;
  }

  v23 = result;
  v24 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) != 5)
  {
    goto LABEL_29;
  }

  v45 = 5;
  while (2)
  {
    v25 = 4;
    v26 = qword_95A570;
    while (1)
    {
      v29 = v25 - 4;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = sub_76A770();
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      v32 = v25 - 3;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = *(v46 + v26);
      [v30 floatValue];
      v35 = v34;
      v36 = sub_7653F0();
      v37 = OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews;
      v38 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews);
      if (v38 >> 62)
      {
        if (v29 >= sub_76A860())
        {
          goto LABEL_10;
        }
      }

      else if (v29 >= *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_10;
      }

      v39 = *(v33 + v37);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v27 = sub_76A770();
      }

      else
      {
        if (v29 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v27 = *(v39 + 8 * v25);
      }

      v28 = v27;
      *&v27[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = v35 / v36;
      [v27 setNeedsLayout];

LABEL_10:
      ++v25;
      if (v32 == v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (sub_76A860() == 5)
    {
      v45 = sub_76A860();
      if (!v45)
      {
LABEL_28:

        return sub_766CD0();
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v40 = *(*(v46 + qword_95A570) + OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews);
  if (v40 >> 62)
  {
    result = sub_76A860();
    v41 = result;
    if (!result)
    {
      return sub_766CD0();
    }

LABEL_32:
    if (v41 >= 1)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = sub_76A770();
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        *&v43[OBJC_IVAR____TtC18ASMessagesProviderP33_8AD2951FE1FA321B357D83437061CC0F34ProductRatingsHistogramProgressBar_progress] = 0;
        [v43 setNeedsLayout];
      }

      while (v41 != v42);
      return sub_766CD0();
    }

    __break(1u);
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    if (v41)
    {
      goto LABEL_32;
    }

    return sub_766CD0();
  }

  return result;
}

uint64_t sub_6A9BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_757CA0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_7652D0();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_764EE0();
  if (v16)
  {
  }

  v37 = v12;
  v32 = v7;
  v17 = sub_764EE0();
  if (!v17)
  {
    sub_757B90();
    v18 = sub_764EE0();

    if (!v18)
    {
      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_765330();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_75A040();

    sub_160090(&v39);
    goto LABEL_11;
  }

  v18 = v17;
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v35 = v6;
  v19 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);

  [v19 contentMode];
  sub_765330();
  v20 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
  sub_7652E0();
  sub_7591B0();
  [v20 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();
  sub_759210();
  sub_14FA38();
  sub_75A050();

  v6 = v35;
LABEL_11:
  sub_757B90();
  v21 = sub_764EE0();

  if (!v21)
  {
  }

  if (!v16)
  {
  }

  v31 = v18;
  sub_757C20();
  sub_7652E0();
  v22 = v32;
  v23 = v36;
  (*(v32 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v36);
  v24 = v9;
  sub_765290();
  v25 = *(v22 + 8);
  v25(v24, v23);
  v25(v15, v23);
  sub_757C30();
  sub_757C30();
  sub_765280();
  if (a2)
  {
    v26 = a2;
    v27 = v25;
    v35 = v6;
    v28 = v26;
    [*(v26 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView) contentMode];
    sub_765330();
    v29 = *(v28 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView);
    sub_7652E0();
    sub_7591B0();
    [v29 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_14FA38();
    sub_75A050();

    v27(v37, v36);
    return (*(v33 + 8))(v35, v34);
  }

  else
  {
    sub_765330();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_75A040();

    sub_160090(&v39);
    v25(v37, v23);
    return (*(v33 + 8))(v6, v34);
  }
}

void *sub_6AA1DC()
{
  v0 = sub_7652D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  __chkstk_darwin(v7);
  v17 = &v16 - v8;
  v18 = sub_757CA0();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  if (sub_764EE0())
  {
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v11 = v19;
  }

  sub_757B90();
  v12 = sub_764EE0();

  if (v12)
  {
    sub_757C20();
    sub_7652E0();
    (*(v1 + 104))(v3, enum case for Artwork.Style.roundedRect(_:), v0);
    v13 = v17;
    sub_765290();
    v14 = *(v1 + 8);
    v14(v3, v0);
    v14(v6, v0);
    sub_757C30();
    sub_757C30();
    sub_765280();
    sub_765330();

    sub_769440();
    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v14(v13, v0);
    (*(v16 + 8))(v10, v18);
    return v19;
  }

  return v11;
}

double *sub_6AA568(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        sub_769440();
        if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_BE70(0, &qword_93E550);
        v10 = sub_769460();

        v11 = sub_6AA568(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = sub_76A860();
        }

        else
        {
          v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = sub_76A860();
        }

        else
        {
          v15 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          sub_76A860();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = sub_76A780();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = sub_76A860();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_16194(&unk_961CF0, &qword_961CE8);
              for (j = 0; j != v20; ++j)
              {
                sub_BD88(&qword_961CE8);
                v24 = sub_10B534(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_BE70(0, &qword_950A70);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_6AAAE8(void *a1)
{
  v113 = sub_768380();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_7683C0();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_7683E0();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v107 = &v94 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect + 32])
  {
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v28 = CGRectGetWidth(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v29 = CGRectGetHeight(v119) * 0.3;
    v120.origin.x = v14;
    v120.origin.y = v16;
    v120.size.width = v18;
    v120.size.height = v20;
    v121 = CGRectInset(v120, v28, v29);
    x = v121.origin.x;
    y = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v106 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v122.origin.x = v14;
  v122.origin.y = v16;
  v122.size.width = v18;
  v122.size.height = v20;
  v105 = CGRectGetWidth(v122);
  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v99 = CGRectGetWidth(v123);
  v124.origin.x = v14;
  v124.origin.y = v16;
  v124.size.width = v18;
  v124.size.height = v20;
  v97 = CGRectGetHeight(v124);
  v125.origin.x = x;
  v125.origin.y = y;
  v125.size.width = width;
  v125.size.height = height;
  v96 = CGRectGetHeight(v125);
  v126.origin.x = v14;
  v126.origin.y = v16;
  v126.size.width = v18;
  v126.size.height = v20;
  MidX = CGRectGetMidX(v126);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  v34 = CGRectGetMidX(v127);
  v128.size.height = v20;
  v35 = v34;
  *&v104 = v14;
  v128.origin.x = v14;
  v103 = v16;
  v128.origin.y = v16;
  v102 = v18;
  v128.size.width = v18;
  v101 = v128.size.height;
  MidY = CGRectGetMidY(v128);
  v114 = x;
  v129.origin.x = x;
  v98 = y;
  v129.origin.y = y;
  v115 = width;
  v129.size.width = width;
  v100 = height;
  v129.size.height = height;
  v37 = CGRectGetMidY(v129);
  v38 = sqrt((v105 - v99) * (v105 - v99) + (v97 - v96) * (v97 - v96));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v99 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v105 = v41;
  v54 = v114;
  v130.origin.x = v114;
  v55 = v98;
  v130.origin.y = v98;
  v130.size.width = v115;
  v56 = v100;
  v130.size.height = v100;
  MinY = CGRectGetMinY(v130);
  v58 = *&v104;
  *&v131.origin.x = v104;
  v59 = v103;
  v131.origin.y = v103;
  v60 = v102;
  v131.size.width = v102;
  v61 = v101;
  v131.size.height = v101;
  v62 = MinY - CGRectGetMinY(v131);
  v132.origin.x = v54;
  v132.origin.y = v55;
  v63 = v115;
  v132.size.width = v115;
  v132.size.height = v56;
  v64 = CGRectGetMidX(v132);
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v65 = CGRectGetMidX(v133);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v134.origin.x = v58;
  v134.origin.y = v59;
  v134.size.width = v60;
  v134.size.height = v61;
  v66 = CGRectGetWidth(v134);
  v135.origin.x = v114;
  v135.origin.y = v59;
  v135.size.width = v63;
  v135.size.height = v56;
  v67 = CGRectGetWidth(v135);
  v115 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = sub_769210();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v99];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = sub_769210();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_BE70(0, &qword_940340);
  *&v104 = COERCE_DOUBLE(sub_769970());
  sub_7683D0();
  v76 = v107;
  sub_768450();
  v114 = v108[1];
  (*&v114)(v7, v116);
  v77 = swift_allocObject();
  v78 = v106;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_1ABBCC;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_89C890;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v108 = v78;

  sub_7683A0();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  v80 = v12;
  sub_16194(&qword_9406F0, &qword_940350);
  v81 = v110;
  v82 = v113;
  sub_76A5A0();
  v83 = v104;
  sub_769930();
  _Block_release(v79);

  (*(v112 + 8))(v81, v82);
  (*(v109 + 8))(v5, v111);
  (*&v114)(v76, v116);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v108;
  *(v85 + 2) = v108;
  *(v85 + 3) = v80;
  v85[4] = v115;
  *&aBlock.m21 = sub_6ABC28;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_89C8E0;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_6ABC6C;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_3D6D80;
  *&aBlock.m14 = &unk_89C930;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

id sub_6AB75C(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    swift_beginAccess();
    result = [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect + 32) == 1)
    {
      return [a2 setAlpha:0.0];
    }
  }

  return result;
}

void sub_6AB884(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_BE70(0, &qword_93E550);
    v3 = sub_769460();

    v4 = sub_6AA568(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = sub_76A770();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v10 = *&v4[v9 + 4];
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_6ABB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6ABB88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6ABBC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6ABBE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6ABC34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6ABC88()
{
  v0 = sub_BD88(&unk_945000);
  sub_161DC(v0, qword_9A07A8);
  sub_BE38(v0, qword_9A07A8);
  return sub_768800();
}

char *sub_6ABD00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *&v4[v11] = sub_8851C();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_6AF7DC(a2, a3);

    v18 = a4;
  }

  else
  {
    sub_BD88(&unk_93F5C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_77D9F0;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_6AF434(v18, a1);

  *&v16[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = sub_769210();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_6AC030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7676A0();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_6AC2CC();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_6B0130;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_507AD4;
    aBlock[3] = &unk_89CAC0;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults]];
      sub_6AC584();
      v15 = UIContentSizeCategoryLarge;
      sub_7698D0();
      sub_767670();
      return sub_7698E0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_6AC2CC()
{
  v1 = sub_BD88(&qword_93FF58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93FF60);
  sub_769880();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_6B0140;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_BD88(&qword_961D90));
    v12 = sub_767A20();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    sub_767A30();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6AC584()
{
  v1 = v0;
  v2 = sub_BD88(&qword_961D68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v42 = sub_BD88(&qword_961D70);
  v31 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v30 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_6B02DC(&qword_961D80, type metadata accessor for DebugSection);
  v9 = sub_6B02DC(&qword_961D88, type metadata accessor for DebugSetting);
  v43 = v7;
  v40 = v9;
  v41 = v8;
  result = sub_767920();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections;
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections);
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v36 = v1;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v44 = v11;
    v45 = v3;

    v14 = 0;
    v46 = xmmword_77D9F0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_76A770();
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      sub_BD88(&unk_93F5C0);
      v16 = swift_allocObject();
      *(v16 + 16) = v46;
      *(v16 + 32) = v15;

      v17._rawValue = v16;
      sub_7678C0(v17);
    }

    while (v13 != v14);

    v1 = v36;
    v11 = v44;
    v3 = v45;
  }

  v39 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  if (!v18)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v19 = v18;
  sub_767A60();

  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v11 = sub_76A860();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
LABEL_14:
      v32 = v12 + 32;
      v33 = v12 & 0xFFFFFFFFFFFFFF8;
      v37 = (v3 + 8);
      v38 = v12 & 0xC000000000000001;

      v3 = 0;
      v46 = xmmword_77D9F0;
      v34 = v11;
      v35 = v12;
      while (1)
      {
        if (v38)
        {
          v20 = sub_76A770();
          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v33 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v32 + 8 * v3);

          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            result = sub_76A860();
            v13 = result;
            goto LABEL_3;
          }
        }

        result = sub_767AE0();
        v22 = *(v20 + 48);
        if (v22 >> 62)
        {
          result = sub_76A860();
          v23 = result;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        if (v23 < 1)
        {
          goto LABEL_43;
        }

        v44 = v20;
        v45 = v3;

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = sub_76A770();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
          }

          sub_BD88(&unk_93F5C0);
          v26 = swift_allocObject();
          *(v26 + 16) = v46;
          *(v26 + 32) = v25;
          v47 = 0;

          sub_767AB0();

          type metadata accessor for MenuDebugSetting();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            if (*(v27 + 72) >> 62)
            {

              sub_76A850();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              sub_76A960();
            }

            v47 = v25;
            sub_767AB0();
          }

          else
          {
          }
        }

        v12 = v35;
        v1 = v36;
        v11 = v34;
        v20 = v44;
        v3 = v45;
LABEL_36:
        v28 = *(v1 + v39);
        if (!v28)
        {
          goto LABEL_49;
        }

        v47 = v20;
        v29 = v28;
        sub_767A70();

        (*v37)(v5, v2);

        if (v3 == v11)
        {

          return (*(v31 + 8))(v43, v42);
        }
      }
    }
  }

  return (*(v31 + 8))(v43, v42);
}

id sub_6ACBF4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_6ACDC0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_BD88(&qword_961D70);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_767B30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767B10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767B70();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  sub_767B40();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  sub_767B60();
  sub_BE70(0, &unk_93FFE0);
  v19 = sub_769C50();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_767A90();

  v25 = v40;
  v26 = sub_767910();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_76A770();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_BD88(&unk_93F5C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_77D9F0;
    *(v36 + 32) = v35;
    sub_BE70(0, &unk_956240);
    v37 = v35;
    isa = sub_769450().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_6AD328(uint64_t a1)
{
  v2 = sub_767880();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_961D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v16[1] = a1;
    v12 = *(result + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
    if (v12)
    {
      v13 = v12;
      sub_767A90();

      v14 = sub_767910();
      (*(v7 + 8))(v9, v6);
      result = sub_757650();
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {

LABEL_7:

        sub_7677E0();

        sub_767860();
        v17[3] = v2;
        v17[4] = &protocol witness table for UIListContentConfiguration;
        v15 = sub_B1B4(v17);
        (*(v3 + 16))(v15, v5, v2);
        sub_769AE0();

        return (*(v3 + 8))(v5, v2);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6AD5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_88710(a1, a3, a2);

    if (v8)
    {
      return v8;
    }
  }

  sub_76A730(55);
  v10._object = 0x80000000007F0F20;
  v10._countAndFlagsBits = 0xD000000000000035;
  sub_769370(v10);
  sub_757640();
  sub_6B02DC(&qword_961D98, &type metadata accessor for IndexPath);
  v11._countAndFlagsBits = sub_76A910();
  sub_769370(v11);

  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_6AD744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_6AD828(void *a1, uint64_t a2)
{
  v145 = sub_BD88(&qword_961D68);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v135 - v5;
  v148 = sub_BD88(&qword_961D70);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v135 - v8;
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v154 = sub_758B40();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_75F340();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760280();
  v149 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  v157 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  v20 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v20 - 8);
  v22 = &v135 - v21;
  v23 = sub_765490();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v162 = v2;
  v147 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v161 = a2;
  sub_767A40();

  v32 = v167;
  if (!v167)
  {
    return;
  }

  v159 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v156 = v37;
    }

    else
    {
      v36 = 0;
      v156 = 0;
    }

    v142 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v137 = v19;
      v138 = v24;
      v140 = v13;
      v145 = v32;
      v46 = *(v34 + 64);
      v136 = *(v34 + 56);
      sub_BD88(&unk_93F5C0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_77D9F0;
      *(v47 + 32) = v45;
      v48 = *&v162[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph];
      v49 = sub_BD88(&unk_93F630);
      v144 = v45;
      v143 = v46;

      v139 = v48;
      sub_768860();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v141 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10A2C(v29, &unk_93F980);
      }

      else
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        (*(v138 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = sub_7570A0();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = sub_759E30();
        (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
        v163 = v136;
        v164 = v143;
        v165 = v47;
        v166 = &type metadata for DebugMenuPage;
        sub_768790();
        (*(v149 + 104))(v158, enum case for FlowPresentationContext.push(_:), v140);
        (*(v150 + 104))(v153, enum case for FlowAnimationBehavior.infer(_:), v151);
        (*(v152 + 104))(v155, enum case for FlowOrigin.inapp(_:), v154);
        v56 = v50;
        v57 = sub_768CE0();
        v59 = v58;
        sub_758B20();
        swift_allocObject();
        v132[1] = v57;
        v133 = v59;
        v132[0] = 0;
        v60 = sub_758AD0();
        sub_32AC14(v60, 1, v139, v29);

        v52 = (*(v56 + 8))(v29, v141);
      }

      v32 = v145;
      v53 = v162;
    }

    else
    {
      v53 = v162;
      v52 = (*(v34 + 96))(*&v162[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph]);
    }

    v61 = v160;
    v62 = v156;
    if (!v156)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v142 && v65 == v62 || (sub_76A950() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v147;
    v87 = *&v53[v147];
    if (v87)
    {
      v88 = v87;
      sub_767A90();

      sub_BD88(&unk_93F5C0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_77D9F0;
      *(v89 + 32) = v32;

      v90._rawValue = v89;
      v91 = v148;
      sub_7678F0(v90);

      v92 = *&v53[v86];
      if (v92)
      {
        v93 = v92;

        sub_767A60();

        (*(v146 + 8))(v61, v91);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v162;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v156;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (sub_76A950() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v100 = v147;
    v101 = *&v41[v147];
    if (v101)
    {
      v102 = v101;
      sub_767A90();

      sub_BD88(&unk_93F5C0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_77D9F0;
      *(v103 + 32) = v32;

      v104._rawValue = v103;
      v105 = v148;
      sub_7678F0(v104);

      v106 = *&v41[v100];
      if (v106)
      {
        v107 = v106;

        sub_767A60();

        (*(v146 + 8))(v72, v105);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v66 = swift_dynamicCastClass();
  v67 = v162;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v133 = v67;
      v134 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_6AFC20(v80, v79, sub_6B0054, v132, sub_6B005C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v94 = swift_dynamicCastClass();
    if (v94)
    {
      v95 = v94;
      v96 = v94[8];
      v160 = v94[7];
      v97 = v94[9];
      v98 = v94[10];
      if (v97)
      {
        v94 = swift_allocObject();
        v99 = v94;
        v94[2] = v97;
        v94[3] = v98;
      }

      else
      {
        v99 = 0;
      }

      v158 = &v135;
      __chkstk_darwin(v94);
      v133 = v122;
      v134 = v99;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = v67;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v95;
      swift_retain_n();
      sub_F714(v97);

      v126 = sub_6AFC20(v160, v96, sub_6AFFA8, v132, sub_6B001C, v125, 0);

      [v124 presentViewController:v126 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v108 = swift_dynamicCastClass();
    if (v108)
    {
      v109 = v147;
      v110 = *&v67[v147];
      if (!v110)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v111 = v108;
      v112 = v110;
      v113 = v143;
      sub_767A90();

      v163 = v111;
      v114 = v148;
      sub_767900();
      (*(v146 + 8))(v113, v114);
      v115 = v167;
      v116 = v145;
      v117 = v144;
      if (!v167)
      {
        goto LABEL_35;
      }

      v118 = *&v67[v109];
      if (!v118)
      {
        goto LABEL_68;
      }

      v119 = v118;
      sub_767A80();

      *&v167 = v32;
      LOBYTE(v119) = sub_767AA0();
      sub_BD88(&unk_93F5C0);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_77D9F0;
      *(v120 + 32) = v32;

      v121._rawValue = v120;
      if (v119)
      {
        sub_767AD0(v121);
      }

      else
      {
        sub_767AC0(v121);
      }

      v130 = *&v67[v109];
      if (!v130)
      {
        goto LABEL_69;
      }

      *&v167 = v115;
      v131 = v130;
      sub_767A70();

      (*(v142 + 8))(v117, v116);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_35;
      }

      v128 = *(v127 + 80);

      v128(v129);

      [v159 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_6AFC20(v68, v69, sub_6B0064, v70, sub_6B006C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = sub_757550().super.isa;
  [v159 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_6AE9F0()
{
  swift_getObjectType();
  sub_7686D0();
  return v1;
}

uint64_t sub_6AEA68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&qword_9526A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_7686E0();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_16194(&qword_9526B8, &qword_9526A0);
    v13 = sub_B1B4(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    sub_7686A0();
    return sub_BEB8(v15);
  }
}

uint64_t sub_6AEC68(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults);
  v2 = sub_769210();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v8, &unk_93FBD0);
    return 0;
  }
}

void sub_6AED54(uint64_t a1, NSString a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = sub_769210();
    }

    v6 = sub_769210();
    [v5 setObject:a2 forKey:v6];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_6AEE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a4 + 88);
    v9 = result;

    v8(v10, a1, a2);
  }

  return result;
}

void sub_6AF0BC(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (sub_76A950() & 1) == 0)
  {
    a3 = sub_769210();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_6AF184(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_BE70(0, &qword_961D78);
  v13 = sub_769460();

  if (!(v13 >> 62))
  {
    if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!sub_76A860())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = sub_769240();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (sub_76A950() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

void *sub_6AF434(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A770();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*&stru_68.segname[swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject])(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_76A860();
      }

      else
      {
        v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_76A860();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = sub_76A780();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_16194(&qword_961D60, &qword_961D58);
            for (i = 0; i != v18; ++i)
            {
              sub_BD88(&qword_961D58);
              v22 = sub_10B63C(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

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
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_76A860();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_6AF7DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_6AF820()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *(v0 + v2) = sub_8851C();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  sub_76A840();
  __break(1u);
}

uint64_t sub_6AF928()
{
  v0 = sub_768380();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7683C0();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v6 = sub_769970();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_6B0128;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89CA98;
  v8 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_6B02DC(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_6AFC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = sub_769210();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_6B00AC;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_6B0344;
  v29 = &unk_89CA20;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = sub_769210();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = sub_769210();
  v30 = sub_6B0114;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_6B0344;
  v29 = &unk_89CA70;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_6AFEEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23DebugMenuViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_767A40();

    if (v3)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting();
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6AFFE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6B0024@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_6B0074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B00B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6B00CC()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_6B0148()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B01AC()
{
  v1 = sub_BD88(&qword_93FF58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6B0240()
{
  sub_BD88(&qword_93FF58);
  sub_BE70(0, &qword_93FF60);
  return sub_7698A0();
}

uint64_t sub_6B02DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6B0348(void *a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_6B260C(&qword_93F500, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_BE70(0, &qword_93E550);
    v11 = v1;
    v12 = sub_76A1C0();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v4 + 104))(v6, enum case for CornerStyle.continuous(_:), v3);
    sub_75CCD0();
    (*(v4 + 8))(v6, v3);
    [v2 addSubview:v15];
    [v2 sendSubviewToBack:v15];
    [v2 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

char *sub_6B05BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_75CF00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  v19 = enum case for MediaOverlayStyle.matchSystem(_:);
  v20 = sub_75CA40();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  *&v5[v21] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_4E2E0(&qword_9A07C0, &v5[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_metrics]);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView]];
  [*&v27[v28] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  v30 = qword_93D580;
  v31 = *(*&v27[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v33 = sub_BE38(v32, qword_99E890);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v17, v33, v32);
  (*(v34 + 56))(v17, 0, 1, v32);
  sub_75BA40();

  v35 = qword_93E0E8;
  v36 = *&v27[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v11, qword_961DA0);
  (*(v12 + 16))(v14, v37, v11);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v12 + 24))(&v36[v38], v14, v11);
  swift_endAccess();
  [v36 setNeedsLayout];

  (*(v12 + 8))(v14, v11);
  [*&v27[v29] setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v39 = [*&v27[v28] contentView];
  [v39 addSubview:*&v27[v29]];

  sub_6B0ACC();
  return v27;
}

void sub_6B0ACC()
{
  v1 = sub_75CA40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v9, &v0[v10], v1);
  sub_6B23AC(v9);
  v27 = *(v2 + 8);
  v27(v9, v1);
  sub_BE70(0, &qword_945800);
  isa = sub_769450().super.isa;
  v13 = v6;
  v14 = v26;

  [v25 setBackgroundEffects:isa];

  v11(v13, &v0[v10], v1);
  v11(v14, v13, v1);
  v15 = (*(v2 + 88))(v14, v1);
  if (v15 == enum case for MediaOverlayStyle.dark(_:))
  {
    v16 = (&dword_0 + 2);
    v27(v13, v1);
  }

  else if (v15 == enum case for MediaOverlayStyle.light(_:))
  {
    v16 = (&dword_0 + 1);
    v27(v13, v1);
  }

  else
  {
    v17 = v27;
    if (v15 == enum case for MediaOverlayStyle.matchSystem(_:))
    {
      v18 = [v0 traitCollection];
      v16 = [v18 userInterfaceStyle];
    }

    else
    {
      v27(v14, v1);
      v16 = (&dword_0 + 1);
    }

    v17(v13, v1);
  }

  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
  [v19 setOverrideUserInterfaceStyle:v16];
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  if (v16 == &dword_0 + 2)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 whiteColor];
  }

  else
  {
    v24 = v20;
    v23 = 0;
  }

  [v20 setTintColor:v23];
}

uint64_t sub_6B0E70(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_75CA40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_6B260C(&qword_953438, &type metadata accessor for MediaOverlayStyle);
  LOBYTE(v11) = sub_7691C0();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_6B0ACC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_6B1080(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = sub_7593D0();
  v4[2] = v5;
  v6 = *(v5 - 8);
  v4[3] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_videoView;
  v4[4] = v7;
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_6B1168;
}

void sub_6B1168(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_6B260C(&qword_93F500, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[1];
        sub_BE70(0, &qword_93E550);
        v11 = v10;
        v12 = sub_76A1C0();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v33 = v3[1];
      v32 = v3[2];
      v31[13](v30, enum case for CornerStyle.continuous(_:), v32);
      sub_75CCD0();
      (v31[1])(v30, v32);
      [v33 addSubview:v29];
      [v33 sendSubviewToBack:v29];
      [v33 setNeedsLayout];
    }

    v27 = v3[4];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_6B260C(&qword_93F500, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[1];
      sub_BE70(0, &qword_93E550);
      v18 = v17;
      v19 = sub_76A1C0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v26 = v3[1];
    v25 = v3[2];
    v24[13](v23, enum case for CornerStyle.continuous(_:), v25);
    sub_75CCD0();
    (v24[1])(v23, v25);
    [v26 addSubview:v22];
    [v26 sendSubviewToBack:v22];
    [v26 setNeedsLayout];
  }

  v27 = v3[4];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_6B1504()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
  sub_75D650();
  [v1 sizeThatFits:{v2, v3}];
  v5 = v4;
  v15 = v6;
  sub_75D650();
  sub_769CE0();
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  sub_75D650();
  sub_769D20();
  [v7 setFrame:?];
  [v1 setFrame:{0.0, 0.0, v5, v15}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_75D650();
    [v9 setFrame:?];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (v10 + qword_99A1B0);
    v13 = *(v10 + qword_99A1B0);
    v14 = *(v10 + qword_99A1B0 + 16);
    *v12 = 0.0;
    v12[1] = 0.0;
    v12[2] = v15;
    v12[3] = 0.0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, v13), vceqq_f64(*&v15, v14)))) & 1) == 0)
    {
      sub_54EB4();
    }
  }
}

uint64_t type metadata accessor for VideoCardView()
{
  result = qword_961DE0;
  if (!qword_961DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6B17F8()
{
  result = sub_75CA40();
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

uint64_t (*sub_6B18D0(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_6B1080(v2);
  return sub_246E0;
}

double sub_6B1940(double a1)
{
  swift_getObjectType();

  return sub_6B2178(a1);
}

uint64_t sub_6B19AC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_6B1A20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_6B1AAC(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_6B260C(&qword_961E08, type metadata accessor for VideoCardView);
  *(v3 + 32) = sub_75DC50();
  return sub_21028;
}

void sub_6B1CA0()
{
  qword_9A07D8 = &type metadata for CGFloat;
  unk_9A07E0 = &protocol witness table for CGFloat;
  qword_9A07C0 = 0x4066000000000000;
}

uint64_t sub_6B1CC8()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_961DA0);
  sub_BE38(v0, qword_961DA0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6B1E2C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  sub_75CE20();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v18 = v6 + 16;
  v19 = v7;
  v7(v3, v5, v4);
  v8 = v1[13];
  v17 = enum case for FontSource.useCase(_:);
  v16 = v8;
  v8(v3);
  v9 = sub_766CA0();
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v10 = sub_B1B4(v20);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_766CB0();
  v12 = v1[1];
  v12(v3, v0);
  sub_75CE00();
  if (qword_93D580 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v4, qword_99E890);
  v19(v3, v13, v4);
  v16(v3, v17, v0);
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v20);
  v11(v14, v3, v0);
  sub_766CB0();
  v12(v3, v0);
  sub_75CED0();
  sub_75CEC0();
  sub_75CEA0();
  sub_75CEC0();
  sub_75CE90();
  v24 = sub_766970();
  v25 = &protocol witness table for ZeroDimension;
  sub_B1B4(v23);
  sub_766960();
  sub_75CDF0();
  return sub_75CE40();
}

double sub_6B2178(double a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_769AB0();
  type metadata accessor for SmallLockupView();
  if (qword_93E0E8 != -1)
  {
    swift_once();
  }

  v7 = sub_75CF00();
  v8 = sub_BE38(v7, qword_961DA0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1FE304(v8, v6);
  swift_unknownObjectRelease();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_4E2E0(&qword_9A07C0, v11);
  sub_B170(v11, v11[3]);
  sub_33964();
  sub_766700();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  sub_BEB8(v11);
  return a1;
}

uint64_t sub_6B23AC(uint64_t a1)
{
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MediaOverlayStyle.dark(_:))
  {
    v8 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
    sub_BE70(0, &qword_945800);
    v9 = sub_769460();
  }

  else
  {
    if (v7 == enum case for MediaOverlayStyle.light(_:))
    {
      sub_BD88(&unk_93F5C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      v10 = [objc_opt_self() effectWithStyle:11];
    }

    else
    {
      v11 = enum case for MediaOverlayStyle.matchSystem(_:);
      v12 = v7;
      sub_BD88(&unk_93F5C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      v13 = objc_opt_self();
      if (v12 != v11)
      {
        *(v9 + 32) = [v13 effectWithStyle:11];
        (*(v3 + 8))(v6, v2);
        return v9;
      }

      v10 = [v13 effectWithStyle:6];
    }

    *(v9 + 32) = v10;
  }

  return v9;
}

uint64_t sub_6B260C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6B2654()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayStyle;
  v2 = enum case for MediaOverlayStyle.matchSystem(_:);
  v3 = sub_75CA40();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView;
  *(v0 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t sub_6B27B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_7664A0();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  if (!v43)
  {
    sub_10A2C(v42, &unk_963040);
    goto LABEL_8;
  }

  sub_BD88(&unk_944DA0);
  sub_75AE60();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v33 = 1;
    v32 = v41;
    goto LABEL_9;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17(v13, v10);
  if (v42[0] != 1 || (, v18 = sub_764C70(), , !v18))
  {

    goto LABEL_8;
  }

  v19 = sub_75DA30();
  v20 = sub_75DAB0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7, a1, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  v22 = v40;
  v23 = v19;
  sub_6B4280(v7, v40);
  sub_10A2C(v7, &unk_957F70);
  v24 = *(v8 + 24);
  v25 = sub_7666D0();
  v26 = v37;
  (*(*(v25 - 8) + 16))(v37, v22 + v24, v25);
  v28 = v38;
  v27 = v39;
  (*(v38 + 104))(v26, enum case for FontSource.useCase(_:), v39);
  v29.super.isa = v23;
  isa = sub_766490(v29).super.isa;
  (*(v28 + 8))(v26, v27);
  v31 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_7651D0();
  sub_765140();
  v32 = v41;
  sub_7601D0();

  sub_6B65E0(v22, type metadata accessor for SearchActionContentView.Layout.Metrics);
  v33 = 0;
LABEL_9:
  v34 = sub_7601F0();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

uint64_t sub_6B2D30(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView;
  *&v4[v9] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel;
  sub_7667B0();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  if (qword_93E0F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v13 = sub_BE38(v12, qword_9A0810);
  sub_6B64BC(v13, &v4[v11]);
  v34.receiver = v4;
  v34.super_class = type metadata accessor for SearchActionContentView(0);
  v14 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  sub_BD88(&unk_93F5C0);
  v20 = swift_allocObject();
  v33 = xmmword_77D9F0;
  *(v20 + 16) = xmmword_77D9F0;
  *(v20 + 32) = v19;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77D9F0;
  *(v22 + 32) = v21;
  sub_BD88(&qword_94DC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v24 = v19;
  v25 = v21;
  v26 = sub_3CFB24(inited);
  swift_setDeallocating();
  sub_BD88(&unk_945390);
  result = swift_arrayDestroy();
  if (!(v26 >> 62))
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_6B450C();
    sub_BD88(&qword_9477F0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_77B6D0;
    *(v32 + 32) = sub_7676F0();
    *(v32 + 40) = &protocol witness table for UITraitLegibilityWeight;
    sub_769F40();

    swift_unknownObjectRelease();

    return v18;
  }

  result = sub_76A860();
  v28 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_76A770();
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      [v18 addSubview:{v30, v33}];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_6B30F8(double *a1)
{
  v2 = v1;
  v45 = sub_767030();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v40 - v7;
  __chkstk_darwin(v8);
  v48 = &v40 - v9;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v44 = sub_7664A0();
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v40 - v20);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v2[v22], v21);
  v23 = *a1 == *v21 && a1[1] == v21[1];
  if (v23 && a1[2] == v21[2] && (sub_7666C0() & 1) != 0 && *(a1 + v16[7]) == *(v21 + v16[7]) && *(a1 + v16[8]) == *(v21 + v16[8]))
  {
    v24 = v16[9];
    v25 = *(a1 + v24);
    v26 = *(v21 + v24);
    result = sub_6B65E0(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
    if (v25 == v26)
    {
      return result;
    }
  }

  else
  {
    sub_6B65E0(v21, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  v42 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  v28 = [v2 traitCollection];
  sub_6B64BC(&v2[v22], v18);
  v43 = v12;
  v29 = v45;
  v41 = v22;
  v30 = v16[6];
  v31 = sub_7666D0();
  (*(*(v31 - 8) + 16))(v15, &v18[v30], v31);
  v32 = v44;
  (*(v13 + 104))(v15, enum case for FontSource.useCase(_:), v44);
  v33.super.isa = v28;
  isa = sub_766490(v33).super.isa;
  (*(v13 + 8))(v15, v32);
  v35 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_759120();
  [v2 setNeedsLayout];
  sub_6B64BC(&v2[v41], v18);
  v36 = v46;
  sub_767020();
  v37 = v47;
  sub_766FF0();
  v38 = *(v4 + 8);
  v38(v36, v29);
  v39 = v48;
  sub_767010();
  v38(v37, v29);
  sub_767000();
  v38(v39, v29);
  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_766790();
  return [v2 setNeedsLayout];
}

uint64_t sub_6B3600()
{
  v1 = type metadata accessor for SearchActionContentView.Layout(0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_7664F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchActionContentView(0);
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];
  v4[8] = sub_7667B0();
  v4[9] = &protocol witness table for UILabel;
  v4[5] = v10;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
  v4[3] = sub_759210();
  v4[4] = &protocol witness table for UIView;
  *v4 = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v0[v12], v4 + *(v2 + 32));
  v13 = v10;
  v14 = v11;
  sub_75D650();
  sub_6B37EC(v15, v16, v17, v18);
  sub_6B65E0(v4, type metadata accessor for SearchActionContentView.Layout);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_6B37EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  MinX = CGRectGetMinX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v12 = v4 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v13 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v14 = *(v12 + *(v13 + 28));
  v15 = MinY + v14;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Width = CGRectGetWidth(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v17 = CGRectGetHeight(v25) - v14 - *(v12 + *(v13 + 32));
  sub_1ED18(v5, &v19, &unk_943B10);
  if (v20)
  {
    sub_10914(&v19, v21);
    sub_B170(v21, v22);
    sub_7665B0();
    sub_B170(v21, v22);
    v26.origin.x = MinX;
    v26.origin.y = v15;
    v26.size.width = Width;
    v26.size.height = v17;
    CGRectGetMinX(v26);
    v27.origin.y = v15;
    v27.origin.x = MinX;
    v27.size.width = Width;
    v27.size.height = v17;
    CGRectGetMidY(v27);
    sub_769D20();
    sub_766530();
    sub_BEB8(v21);
  }

  else
  {
    sub_10A2C(&v19, &unk_943B10);
  }

  sub_B170((v5 + 40), *(v5 + 64));
  sub_7665A0();
  sub_B170((v5 + 40), *(v5 + 64));
  v28.origin.y = v15;
  v28.origin.x = MinX;
  v28.size.width = Width;
  v28.size.height = v17;
  CGRectGetMidY(v28);
  sub_769D20();
  sub_766530();
  return sub_7664B0();
}

double sub_6B3B44(void *a1, double a2)
{
  v5 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for SearchActionContentView.Layout(0) + 24);
  v12 = a2 + 0.0;
  sub_1ED18(v2, &v22, &unk_943B10);
  if (v23)
  {
    sub_10914(&v22, v24);
    sub_B170(v24, v25);
    sub_7665B0();
    sub_BEB8(v24);
  }

  else
  {
    sub_10A2C(&v22, &unk_943B10);
  }

  sub_B170((v2 + 40), *(v2 + 64));
  v13 = a1;
  sub_7665A0();
  v14 = v21;
  sub_6B64BC(v11, v21);
  v15 = *(v5 + 24);
  v16 = sub_7666D0();
  (*(*(v16 - 8) + 32))(v10, v14 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v17 = [v13 traitCollection];
  v25 = v7;
  v26 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v24);
  (*(v8 + 16))(v18, v10, v7);
  sub_765C10();

  (*(v8 + 8))(v10, v7);
  sub_BEB8(v24);
  return v12;
}

void sub_6B3EB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    v14 = [v2 traitCollection];
    v15 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics];
    swift_beginAccess();
    sub_6B64BC(v15, v13);
    v16 = *(v10 + 24);
    v17 = sub_7666D0();
    (*(*(v17 - 8) + 16))(v9, &v13[v16], v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v18.super.isa = v14;
    v19 = v2;
    isa = sub_766490(v18).super.isa;
    (*(v7 + 8))(v9, v6);
    v21 = [objc_opt_self() configurationWithFont:isa scale:1];

    sub_6B65E0(v13, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_7651D0();

    v22 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView];
    [v22 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v22 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_6B6640(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }

  else
  {
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_7591D0(v24, v11);
  }
}

uint64_t sub_6B4280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  if ((sub_769A00() & 1) == 0)
  {
    sub_1ED18(a1, v10, &unk_957F70);
    v11 = sub_75DAB0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10A2C(v10, &unk_957F70);
LABEL_8:
      if (qword_93E0F0 != -1)
      {
        swift_once();
      }

      v15 = qword_9A0810;
      goto LABEL_11;
    }

    sub_75DA20();
    (*(v12 + 8))(v10, v11);
    sub_765550();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 != 1.0)
    {
      goto LABEL_8;
    }
  }

  if (qword_93E0F8 != -1)
  {
    swift_once();
  }

  v15 = qword_9A0828;
LABEL_11:
  v16 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v17 = sub_BE38(v16, v15);
  return sub_6B64BC(v17, a2);
}

uint64_t sub_6B450C()
{
  v1 = v0;
  v2 = sub_767030();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  __chkstk_darwin(v6);
  v36 = &v33 - v7;
  __chkstk_darwin(v8);
  v37 = &v33 - v9;
  v10 = sub_7664A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v15 = v14 - 8;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView] setAccessibilityIgnoresInvertColors:{0, v16}];
  sub_7590F0();
  v19 = [v0 traitCollection];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  swift_beginAccess();
  sub_6B64BC(&v0[v20], v18);
  v21 = *(v15 + 32);
  v22 = sub_7666D0();
  (*(*(v22 - 8) + 16))(v13, &v18[v21], v22);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v23.super.isa = v19;
  isa = sub_766490(v23).super.isa;
  (*(v11 + 8))(v13, v10);
  v25 = [objc_opt_self() configurationWithFont:isa scale:1];

  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  sub_759120();
  [v1 setNeedsLayout];
  sub_6B64BC(v1 + v20, v18);
  v26 = v34;
  sub_767020();
  v27 = v35;
  sub_766FF0();
  v28 = *(v38 + 8);
  v29 = v26;
  v30 = v39;
  v28(v29, v39);
  v31 = v36;
  sub_767010();
  v28(v27, v30);
  sub_767000();
  v28(v31, v30);
  sub_6B65E0(v18, type metadata accessor for SearchActionContentView.Layout.Metrics);
  return sub_766790();
}

id sub_6B4930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B49F4()
{
  result = type metadata accessor for SearchActionContentView.Layout.Metrics(319);
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

uint64_t sub_6B4AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6B4B88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6B4C4C()
{
  sub_70898();
  if (v0 <= 0x3F)
  {
    sub_6B4CE8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchActionContentView.Layout.Metrics(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_6B4CE8()
{
  result = qword_941880;
  if (!qword_941880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_941880);
  }

  return result;
}

uint64_t sub_6B4D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_7666D0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_6B4DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_7666D0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_6B4E68()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_7666D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_6B4F50(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  sub_161DC(v7, a2);
  v8 = sub_BE38(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, a4);
  (*(*(v9 - 8) + 16))(v8 + v7[6], v10, v9);
  __asm { FMOV            V0.2D, #21.0 }

  *v8 = result;
  v8[1].n128_u64[0] = 0x4024000000000000;
  *(v8->n128_u64 + v7[7]) = 0x401C000000000000;
  *(v8->n128_u64 + v7[8]) = 0x4018000000000000;
  *(v8->n128_u64 + v7[9]) = 0x404A800000000000;
  return result;
}

BOOL sub_6B506C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v6 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
    if ((sub_7666C0() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]))
    {
      return *(a1 + v6[9]) == *(a2 + v6[9]);
    }
  }

  return 0;
}

double sub_6B512C(uint64_t a1)
{
  v2 = sub_7656C0();
  v82 = *(v2 - 8);
  __chkstk_darwin(v2);
  v81 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SearchActionContentView.Layout(0);
  __chkstk_darwin(v80);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767030();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v70 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = v63 - v9;
  __chkstk_darwin(v10);
  v73 = v63 - v11;
  __chkstk_darwin(v12);
  v74 = v63 - v13;
  v14 = sub_766D70();
  v75 = *(v14 - 8);
  v76 = v14;
  __chkstk_darwin(v14);
  v72 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_7664A0();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v18 - 8);
  v20 = v63 - v19;
  v21 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v21 - 8);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v63 - v25;
  v27 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v27);
  v77 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction);
  sub_75C750();
  if (!v84[0])
  {
    return 0.0;
  }

  v29 = sub_764C60();
  if (v30)
  {
    v63[0] = v30;
    v63[1] = v29;
    v64 = v2;
    v65 = v5;
    v31 = sub_75C840();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v26, a1, v31);
    (*(v32 + 56))(v26, 0, 1, v31);
    swift_getKeyPath();
    v66 = a1;
    sub_75C7B0();

    v33 = v84[0];
    sub_1ED18(v26, v23, &unk_93F620);
    if ((*(v32 + 48))(v23, 1, v31) == 1)
    {
      sub_10A2C(v23, &unk_93F620);
      v34 = 1;
    }

    else
    {
      sub_75C720();
      (*(v32 + 8))(v23, v31);
      v34 = 0;
    }

    v36 = sub_75DAB0();
    (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
    v37 = v77;
    sub_6B4280(v20, v77);

    sub_10A2C(v20, &unk_957F70);
    sub_10A2C(v26, &unk_93F620);
    swift_getKeyPath();
    sub_75C7B0();

    v38 = v84[0];
    v39 = *(v27 + 24);
    v40 = sub_7666D0();
    (*(*(v40 - 8) + 16))(v17, v37 + v39, v40);
    v41 = v67;
    v42 = v68;
    (*(v67 + 104))(v17, enum case for FontSource.useCase(_:), v68);
    v43.super.isa = v38;
    isa = sub_766490(v43).super.isa;
    (*(v41 + 8))(v17, v42);
    v45 = [objc_opt_self() configurationWithFont:isa scale:1];

    v46 = sub_764C70();

    v69 = v45;
    if (v46)
    {
      v47 = v45;
      sub_7651D0();
    }

    v48 = sub_7670D0();
    swift_allocObject();
    v49 = sub_7670B0();
    v50 = v70;
    sub_767020();
    v51 = v71;
    sub_766FF0();
    v52 = *(v78 + 8);
    v53 = v37;
    v54 = v79;
    v52(v50, v79);
    v55 = v73;
    sub_767010();
    v52(v51, v54);
    sub_767000();
    v52(v55, v54);
    sub_766D50();
    v56 = v72;
    sub_766D90();
    sub_766D40();
    (*(v75 + 8))(v56, v76);
    v57 = v65;
    sub_134D8(v84, (v65 + 5));
    v57[3] = v48;
    v57[4] = &protocol witness table for LayoutViewPlaceholder;
    *v57 = v49;
    sub_6B64BC(v53, v57 + *(v80 + 24));
    swift_getKeyPath();

    v58 = v81;
    sub_75C7B0();

    sub_765630();
    v60 = v59;
    (*(v82 + 8))(v58, v64);
    swift_getKeyPath();
    sub_75C7B0();

    sub_6B3B44(v83, v60);
    v35 = v61;

    swift_unknownObjectRelease();
    sub_6B65E0(v57, type metadata accessor for SearchActionContentView.Layout);
    sub_BEB8(v84);
    sub_6B65E0(v53, type metadata accessor for SearchActionContentView.Layout.Metrics);
  }

  else
  {

    return 0.0;
  }

  return v35;
}

uint64_t sub_6B5B74(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v8 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction);
  result = sub_75C750();
  if (v28)
  {

    v18 = sub_764C70();

    if (v18)
    {
      v27[0] = v18;
      v27[1] = v2;
      v27[2] = a2;
      v19 = sub_75C840();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v13, a1, v19);
      (*(v20 + 56))(v13, 0, 1, v19);
      swift_getKeyPath();
      sub_75C7B0();

      v21 = v28;
      sub_1ED18(v13, v10, &unk_93F620);
      if ((*(v20 + 48))(v10, 1, v19) == 1)
      {
        sub_10A2C(v10, &unk_93F620);
        v22 = 1;
      }

      else
      {
        sub_75C720();
        (*(v20 + 8))(v10, v19);
        v22 = 0;
      }

      v23 = sub_75DAB0();
      (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
      sub_6B4280(v7, v16);

      sub_10A2C(v7, &unk_957F70);
      sub_10A2C(v13, &unk_93F620);
      v24 = sub_765320();
      sub_BD88(&unk_93F5C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77D9F0;
      *(v25 + 32) = v24;

      v26._rawValue = v25;
      sub_75A070(v26);

      return sub_6B65E0(v16, type metadata accessor for SearchActionContentView.Layout.Metrics);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_6B5FBC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  sub_75AE60();
  sub_6B6640(&unk_94F480, &type metadata accessor for SearchAdAction);
  result = sub_75C750();
  if (v37)
  {
    v34 = a1;
    v35 = ObjectType;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel];

    sub_764C60();
    if (v22)
    {
      v23 = sub_769210();
    }

    else
    {
      v23 = 0;
    }

    [v21 setText:v23];

    v24 = sub_764C30();

    v36 = v16;
    if ((v24 & 2) != 0)
    {
      [v21 _setTextColorFollowsTintColor:1];
    }

    else
    {
      [v21 _setTextColorFollowsTintColor:0];
      sub_396E8();
      v25 = sub_769FD0();
      [v21 setTextColor:v25];
    }

    v26 = sub_75C840();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v13, v34, v26);
    (*(v27 + 56))(v13, 0, 1, v26);
    v28 = [v2 traitCollection];
    sub_1ED18(v13, v10, &unk_93F620);
    if ((*(v27 + 48))(v10, 1, v26) == 1)
    {
      sub_10A2C(v10, &unk_93F620);
      v29 = 1;
    }

    else
    {
      sub_75C720();
      (*(v27 + 8))(v10, v26);
      v29 = 0;
    }

    v30 = sub_75DAB0();
    (*(*(v30 - 8) + 56))(v7, v29, 1, v30);
    sub_6B4280(v7, v19);

    sub_10A2C(v7, &unk_957F70);
    sub_10A2C(v13, &unk_93F620);
    v31 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
    swift_beginAccess();
    v32 = v36;
    sub_6B64BC(v2 + v31, v36);
    swift_beginAccess();
    sub_6B6520(v19, v2 + v31);
    swift_endAccess();
    sub_6B30F8(v32);
    sub_6B65E0(v32, type metadata accessor for SearchActionContentView.Layout.Metrics);
    sub_6B65E0(v19, type metadata accessor for SearchActionContentView.Layout.Metrics);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_6B64BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B6520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B65E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6B6640(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6B6688()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_iconView;
  *(v0 + v1) = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_linkLabel;
  sub_7667B0();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23SearchActionContentView_metrics;
  if (qword_93E0F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SearchActionContentView.Layout.Metrics(0);
  v5 = sub_BE38(v4, qword_9A0810);
  sub_6B64BC(v5, v0 + v3);
  sub_76A840();
  __break(1u);
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

double UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

uint64_t sub_6B69C0(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_2630C();
      v8 = v4;
      v9 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_6B6A78(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_2630C();
      v9 = v3;
      v10 = sub_76A1C0();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_55A7A8();
  [v3 setNeedsLayout];
}

void (*sub_6B6C14(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6B6C88;
}

void sub_6B6C88(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_2630C();
        v12 = v5;
        v13 = sub_76A1C0();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_55A7A8();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_6B7598(&qword_93F500, 255, type metadata accessor for VideoView);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_2630C();
        v19 = v5;
        v20 = sub_76A1C0();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_55A7A8();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_6B6F78(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_6B7250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_6B72EC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_6B6C14(v2);
  return sub_21028;
}

uint64_t sub_6B735C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_6B73B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_6B741C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_6B7598(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_6B75E0(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC18ASMessagesProvider29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  *v9 = sub_6B8350;
  v9[1] = v8;

  sub_F704(v10);

  v11 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v11 _setDisplaysWhenSearchActive:a3 & 1];
  [v11 _setContentViewMarginType:a2];
  [v11 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v11 setPreferredHeight:1.0];
  [v11 setMinimumHeight:0.0];
  [v11 setPreferredHeight:0.0];
  v12 = v11;
  [a1 _setBottomPalette:v12];

  swift_unknownObjectWeakAssign();
}

void sub_6B778C(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v22 = *(v1 + 64);
        v6 = *(v1 + 48);

        sub_F714(v6);
        v7 = [v4 contentView];
        sub_2630C();
        sub_75D650();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        Width = CGRectGetWidth(v24);
        v17 = [v4 contentView];
        v18 = v5(Width);

        [v4 setPreferredHeight:v18];
        v19 = 0.0;
        if ((v22 & 1) == 0)
        {
          v19 = v18;
        }

        [v4 setMinimumHeight:v19];

        sub_F704(v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v20 = *(v1 + 48);
  v21 = *(v1 + 64);

  sub_F714(v20);
  if (v21)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_F704(v20);
}

void sub_6B79A8()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v4 = *(v0 + 48);
          v18 = Strong;

          sub_F714(v4);
          v5 = [v18 contentView];
          sub_2630C();
          sub_75D650();
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v20.origin.x = v7;
          v20.origin.y = v9;
          v20.size.width = v11;
          v20.size.height = v13;
          Width = CGRectGetWidth(v20);
          v15 = [v18 contentView];
          v16 = v2(Width);

          [v18 setPreferredHeight:v16];
          v17 = 0.0;
          if ((v3 & 1) == 0)
          {
            v17 = v16;
          }

          [v18 setMinimumHeight:v17];

          sub_F704(v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

void sub_6B7B5C()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v4 = *(v0 + 48);
          v5 = *(v0 + 64);
          v19 = Strong;

          sub_F714(v4);
          v6 = [v19 contentView];
          sub_2630C();
          sub_75D650();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v3(Width);

          [v19 preferredHeight];
          if (v18 != v17)
          {
            [v19 setPreferredHeight:v17];
            [v19 setMinimumHeight:v17];
            if (v5)
            {
              [v19 setMinimumHeight:0.0];
            }

            sub_6B7D80();
          }

          Strong = sub_F704(v4);
          v2 = v19;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

uint64_t sub_6B7D28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6B7D80();
  }

  return result;
}

void sub_6B7D80()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 65) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    goto LABEL_15;
  }

  v25 = Strong;
  v4 = *(v0 + 48);
  if (!v4)
  {
    sub_6B8358(v3, *(v0 + 40), 0);
    v23 = v1;
    [v23 setAlpha:1.0];

    Strong = v25;
LABEL_15:

    return;
  }

  sub_6B8358(v3, *(v0 + 40), *(v0 + 48));
  sub_F714(v4);
  v5 = [v25 contentView];
  sub_2630C();
  sub_75D650();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Width = CGRectGetWidth(v27);
  v15 = [v25 contentView];
  v16 = v3(Width);

  v17 = [v25 contentView];
  v18 = v4(Width);

  [v25 frame];
  Height = CGRectGetHeight(v28);
  v20 = *(v0 + 24);
  if (v20)
  {
    v21 = (Height - v18) / (v16 - v18);
    if (v21 <= 0.0)
    {
      v21 = 0.0;
    }

    if (v21 <= 1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v24 = v20;
    [v24 setAlpha:v22];

    sub_F704(v4);

    sub_F704(v4);
    Strong = v24;
    goto LABEL_15;
  }

  sub_F704(v4);

  sub_F704(v4);
}

uint64_t sub_6B8034()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v17 = v2;
      if (*(v0 + 64))
      {
        v5 = *(v0 + 24);
        if (v5)
        {

          sub_F714(v4);
          v6 = [v5 isHidden];
          Height = 0.0;
          if ((v6 & 1) == 0)
          {
            v8 = [v17 contentView];
            [v8 frame];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            v19.origin.x = v10;
            v19.origin.y = v12;
            v19.size.width = v14;
            v19.size.height = v16;
            Height = CGRectGetHeight(v19);
          }
        }

        else
        {

          sub_F714(v4);
          Height = 0.0;
        }

        [v17 setMinimumHeight:Height];
        [v17 minimumHeight];
        [v17 setPreferredHeight:?];
      }

      else
      {
        sub_6B8358(v3, *(v0 + 40), v4);
      }

      return sub_F704(v4);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_6B81F0()
{
  swift_unknownObjectWeakDestroy();

  sub_2B47E4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_6B8264(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6B827C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_6B82C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6B8318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6B8358(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_F714(a3);
  }

  return result;
}

unint64_t sub_6B83A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  sub_6B860C();
  if (sub_764EE0())
  {
    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v7 = qword_93C668;
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_75CF00();
    sub_BE38(v9, qword_99B898);
    sub_75CDD0();
    [v8 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v8 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    v10 = *(v5 + v6);
    sub_759210();
    sub_6B95E8(&qword_945810, &type metadata accessor for ArtworkView);
    v11 = v10;
    sub_75A050();
  }

  result = sub_764F60();
  if (result)
  {
    sub_31353C(result, a2);
  }

  return result;
}

void sub_6B860C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_7591D0(v31, v5);

  v6 = *(v2 + v3);
  sub_759210();
  sub_6B95E8(&qword_945810, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_75A0C0();

  v28 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_6F4F74();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_76A860();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_76A770();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    sub_7591D0(v32, v16);

    v17 = *&v13[v14];
    sub_75A0C0();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_6F4F8C();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_76A860();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = sub_76A770();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          sub_7591D0(v33, v26);

          v27 = *&v23[v24];
          sub_75A0C0();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView];
  sub_75A0C0();
}

double sub_6B891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v96 = a5;
  v84 = a3;
  v85 = a4;
  v81 = a2;
  v79 = a1;
  v9 = sub_76A920();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v97 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7652D0();
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v93 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760840();
  v91 = *(v13 - 8);
  v92 = v13;
  __chkstk_darwin(v13);
  v90 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_762D10();
  v83 = *(v103 - 8);
  __chkstk_darwin(v103);
  v82 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75D850();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v69 - v21;
  v23 = sub_760820();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v69 - v27;
  sub_769DA0();
  ObjectType = swift_getObjectType();
  v29 = [a6 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99B150);
  v31 = *(v24 + 16);
  v89 = v23;
  v76 = v31;
  v77 = v24 + 16;
  v31(v28, v30, v23);
  v32 = sub_769A00();
  v100 = a6;
  v88 = v24;
  if (v32)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v33 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v33 = qword_946938;
  }

  v34 = sub_BE38(v16, v33);
  v75 = v17;
  (*(v17 + 16))(v19, v34, v16);
  (*(v17 + 32))(v22, v19, v16);
  v74 = v29;
  v35 = [v29 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  v102 = v28;
  sub_760810();
  sub_760800();
  v36 = sub_7670D0();
  swift_allocObject();
  v73 = sub_7670B0();
  v37 = objc_opt_self();

  v71 = v37;
  v69[1] = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = sub_7653B0();
  v80 = v22;
  v39 = v38;
  v140[3] = v38;
  v40 = sub_6B95E8(&qword_93F9B0, &type metadata accessor for Feature);
  v78 = v16;
  v41 = v40;
  v140[4] = v40;
  v70 = v40;
  v42 = sub_B1B4(v140);
  v72 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = *(v39 - 8);
  v101 = *(v43 + 104);
  v44 = v43 + 104;
  v101(v42);
  v69[2] = v44;
  sub_765C30();
  sub_BEB8(v140);
  v45 = v82;
  sub_762D00();
  sub_762CE0();
  v83 = *(v83 + 8);
  (v83)(v45, v103);

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v139[3] = v39;
  v139[4] = v41;
  v47 = sub_B1B4(v139);
  v48 = v72;
  (v101)(v47, v72, v39);
  sub_765C30();
  sub_BEB8(v139);
  sub_762D00();
  sub_762CE0();
  v49 = v103;
  v50 = v83;
  (v83)(v45, v103);
  v51 = [v71 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v138[3] = v39;
  v138[4] = v70;
  v52 = sub_B1B4(v138);
  (v101)(v52, v48, v39);
  sub_765C30();
  sub_BEB8(v138);
  sub_762D00();
  sub_762CE0();
  v50(v45, v49);
  sub_246DC(0, 0);
  swift_allocObject();
  v53 = sub_7670B0();

  sub_246DC(0, 0);
  swift_allocObject();
  v54 = sub_7670B0();
  v55 = v89;
  v76(v86, v102, v89);
  v137 = &protocol witness table for LayoutViewPlaceholder;
  v136 = v36;
  v135 = v73;
  v134 = 0;
  *&v132[40] = 0u;
  v133 = 0u;
  sub_134D8(v140, v132);
  sub_134D8(v139, &v131);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;

  v56 = sub_7670C0();
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v123 = v36;
  v122 = v56;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v111 = 0u;
  *&v110[40] = 0u;
  sub_134D8(v138, v110);
  v108 = v36;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  v106 = &protocol witness table for LayoutViewPlaceholder;
  v107 = v53;
  v105 = v36;
  v104 = v54;
  v57 = v90;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_77D9F0;
  v59 = v74;
  *(v58 + 32) = v74;
  v60 = v59;
  v61 = sub_7671E0();
  sub_6B95E8(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
  v62 = v92;
  sub_7665A0();

  (*(v91 + 8))(v57, v62);
  sub_BEB8(v138);
  sub_BEB8(v139);
  sub_BEB8(v140);
  (*(v75 + 8))(v80, v78);
  (*(v88 + 8))(v102, v55);
  v64 = v93;
  v63 = v94;
  v65 = v95;
  (*(v94 + 104))(v93, enum case for Artwork.Style.roundedRect(_:), v95);
  if (v96)
  {
    v66 = v96;
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView();

  sub_316484(v64, v66, v100);

  (*(v63 + 8))(v64, v65);
  if (qword_93DD50 != -1)
  {
    swift_once();
  }

  sub_B170(qword_9A0020, qword_9A0038);
  v67 = v97;
  sub_33964();
  sub_766700();
  (*(v98 + 8))(v67, v99);
  return a7;
}

uint64_t sub_6B95E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6B9630(void *a1)
{
  sub_6BD01C(a1);
}

void sub_6B96A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7645F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764600();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = sub_7699D0();

    if (v14)
    {
      v15 = sub_764580();
      if (!v15)
      {
        return;
      }

LABEL_27:

      sub_7645B0();
      sub_6B9BE0(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = sub_7645E0();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v18 = &OBJC_METACLASS____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView;
      v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView);
          v21 = v19;
          v22 = [(__objc2_class *)v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_BE70(0, &qword_93E550);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = sub_76A1C0();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &OBJC_METACLASS____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView;
            if (v35)
            {
              [(__objc2_class *)v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      isa = v18[8].isa;
      v29 = *(&isa->isa + v17);
      *(&isa->isa + v17) = v20;
      v30 = v20;
      sub_1F92A8(v29);

      if (v20)
      {
        *(&v30->superclass + qword_940588) = &off_89A910;
        swift_unknownObjectWeakAssign();
      }

      sub_761120();
      sub_768900();
      sub_768ED0();
      v31 = v40;
      v32 = *(&v27[8].isa->isa + *(v38 + v37));
      if (v32)
      {
        type metadata accessor for VideoView();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_6BD128(&qword_95F410, type metadata accessor for UberHeaderView);
      sub_761100();

      if (!sub_7645D0())
      {

        return;
      }

      v15 = sub_764BC0();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = sub_764570();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

id sub_6B9BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_766690();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_764590();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v67.origin.x = v20;
    v67.origin.y = v22;
    v67.size.width = v24;
    v67.size.height = v26;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    Height = 0.0;
  }

  v61 = a1;
  v28 = sub_7651A0();
  v29 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v66.receiver = v29;
  v66.super_class = v30;
  objc_msgSendSuper2(&v66, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  result = [v4 view];
  if (result)
  {
    v34 = result;
    [result bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v68.origin.x = v36;
    v68.origin.y = v38;
    v68.size.width = v40;
    v68.size.height = v42;
    v43 = CGRectGetHeight(v68);
    v44 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset);
    result = [v4 view];
    if (result)
    {
      v45 = result;
      *&v46 = v43 - Height - v44;
      [result bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v69.origin.x = v48;
      v69.origin.y = v50;
      v69.size.width = v52;
      v69.size.height = v54;
      Width = CGRectGetWidth(v69);
      v56 = [v4 traitCollection];
      sub_6260C4(v56, a3, 1, Width, v46, 0);
      if (sub_7699D0())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_6BD128(&qword_9424D8, &type metadata accessor for Uber.Style);
        sub_769430();
        sub_769430();
        if (v64 == v62 && v65 == v63)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_765330();

          type metadata accessor for UberHeaderView();
          sub_6BD128(&unk_95F510, type metadata accessor for UberHeaderView);
          sub_75A050();
        }

        v57 = sub_76A950();
        (*(v12 + 8))(v15, v11);

        if (v57)
        {
          goto LABEL_14;
        }
      }

      sub_765260();
      sub_7666A0();
      sub_766650();
      (*(v59 + 8))(v10, v60);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_6BA134(double a1)
{
  v2 = v1;
  v4 = sub_7599A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_95D3A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v12 = a1 < 0.5;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle] != v12)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v5 + 104))(v7, enum case for TimingCurve.linear(_:), v4);
    sub_759CC0();
    sub_759CB0();
    (*(v9 + 8))(v11, v8);
    v13 = *aBlock;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v12;
    aBlock[4] = sub_6BD1A8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89CE08;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    [v14 animateWithDuration:v16 animations:v13];
    _Block_release(v16);
  }
}

void sub_6BA400()
{
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_434A90();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_43480C(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_6BA630()
{
  v1 = sub_764590();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
  {

    sub_7645B0();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_6BD128(&qword_9424D8, &type metadata accessor for Uber.Style);
    sub_769430();
    sub_769430();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_76A950();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_626490(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_71E3B8();
}

char *sub_6BA974()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v63 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_6235D8(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
      if (v27)
      {

        v27(v28);
        sub_F704(v27);
      }
    }

    v29 = [v1 navigationItem];
    v30 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem;
    v31 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem];
    if (v31)
    {
      v32 = v31;
      v33 = sub_769210();
      [v32 removeObserver:v10 forKeyPath:v33 context:&unk_95F368];

      v34 = *&v10[v30];
    }

    else
    {
      v34 = 0;
    }

    *&v10[v30] = v29;
    v35 = v29;

    v36 = *&v10[v30];
    if (v36)
    {
      v37 = v36;
      v38 = sub_769210();
      [v37 addObserver:v10 forKeyPath:v38 options:0 context:&unk_95F368];

      v39 = *&v10[v30];
      if (v39)
      {
        v39 = [v39 title];
        if (v39)
        {
          v40 = v39;
          v41 = sub_769240();
          v43 = v42;

          v44 = v43;
          v39 = v41;
LABEL_28:
          sub_623034(v39, v44);

          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = &v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
          v47 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
          *v46 = sub_6BD118;
          v46[1] = v45;

          sub_F704(v47);

          type metadata accessor for UberScrollObserver();
          v48 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48[5] = 0;
          v48[6] = 0;
          v48[3] = v10;
          v48[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v49 = v3;
          sub_434710();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = v48[5];
          v48[5] = sub_6BD120;
          v48[6] = v50;

          sub_F704(v51);

          v52 = [v1 navigationItem];
          v53 = [v52 _largeTitleAccessoryView];

          if (v53)
          {
            v54 = [v1 navigationItem];
            [v54 _setLargeTitleAccessoryView:0];

            v55 = v53;
            sub_191F24(v53);
          }

          v56 = *&v1[v5];
          v57 = v6;
          if (v56)
          {
            [v56 removeFromSuperview];
            v56 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v58 = [v1 viewIfLoaded];
          if (v58)
          {
            v59 = v58;
            [v58 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver] = v48;

          v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v60 = [v1 viewIfLoaded];
          [v60 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v64])
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:1];
          }

          else
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v44 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_6BAF74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_6BD128(&unk_95F510, type metadata accessor for UberHeaderView);
    v4 = v3;
    sub_75A0C0();
    v5 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {

      v12 = sub_F714(v11);
      v11(v12, 1.0, 0.0);

      sub_F704(v11);
    }
  }

  v13 = *&v1[v2];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v2];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v15 = [v1 viewIfLoaded];
  [v15 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = [v1 navigationItem];
  [v17 setLargeTitleDisplayMode:v16];
}

id sub_6BB1D4(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_7212CC(v5, a2);

  sub_761120();
  v7 = v6;
  sub_768ED0();
  sub_7610F0();

  sub_75E3E0();
  sub_768ED0();
  sub_75E3A0();

  return v7;
}

void sub_6BB35C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_BE70(0, &qword_93E540);
    v4 = sub_76A000();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_6BA630();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_6BB510()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_761120();
  sub_768900();
  sub_768ED0();
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v2)
  {
    v1 = v2;
    sub_75E3C0();
  }

  sub_75A0A0();
}

uint64_t sub_6BB634(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1 & 1);
  result = sub_75A0A0();
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v5 && !*&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
  {

    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      if (v8)
      {

        v9 = [v2 transitionCoordinator];
        if (v9)
        {
          v10 = v9;
          v19 = sub_6BD010;
          v20 = v5;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_6C6800;
          v18 = &unk_89CD68;
          v11 = _Block_copy(&v15);

          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v5;
          v19 = sub_6BD014;
          v20 = v13;
          v15 = _NSConcreteStackBlock;
          v16 = 1107296256;
          v17 = sub_6C6800;
          v18 = &unk_89CDB8;
          v14 = _Block_copy(&v15);

          [v10 animateAlongsideTransition:v11 completion:v14];

          _Block_release(v14);
          _Block_release(v11);
          return swift_unknownObjectRelease();
        }

        sub_434710();
      }
    }
  }

  return result;
}

void sub_6BB8A4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_9434E0);
      v9 = v6;
      v10 = sub_76A1C0();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {

        v11(v12, 1.0, 0.0);

        sub_F704(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_6BBA24(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_761120();
  sub_768900();
  sub_768ED0();
  v4 = v6;
  sub_7610A0();
  sub_75E3E0();
  sub_7688F0();
  if (v6)
  {
    v5 = v6;
    sub_75E3C0();

    v4 = v5;
  }
}

void sub_6BBB84(char a1)
{
  v2 = v1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  sub_75E3E0();
  sub_7688F0();
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    sub_75E3B0();
  }

  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v15(v16, 1.0, 0.0);

    sub_F704(v15);
  }

  else
  {
    v10 = v9;
    v21 = sub_6BCFC4;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_6C6800;
    v20 = &unk_89CCC8;
    v11 = _Block_copy(&v17);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v21 = sub_6BD008;
    v22 = v13;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_6C6800;
    v20 = &unk_89CD40;
    v14 = _Block_copy(&v17);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_6BBE4C(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for StoreCollectionViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*&stru_158.sectname[swift_isaMask & *v5])();
    }
  }

  v6 = *(a2 + 40);
  if (v6)
  {

    v6(v7, 1.0, 0.0);

    sub_F704(v6);
  }
}

void sub_6BBF44(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_BE70(0, &qword_9434E0);
        v6 = v3;
        v7 = sub_76A1C0();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
        {
          v8 = [v6 navigationController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 navigationBar];

            if (v10)
            {

              sub_434710();
            }
          }
        }
      }
    }
  }
}

void sub_6BC0E4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_75A0A0();
  sub_75E3E0();
  sub_7688F0();
  if (v2)
  {
    v1 = v2;
    sub_75E3B0();
  }
}

id sub_6BC234(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  result = objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_6BD1DC;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_6C6800;
    v10[3] = &unk_89CCA0;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }

  return result;
}

void sub_6BC3CC()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView];
  if (v1)
  {
    v2 = v1;
    [v0 pageMarginInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
    v18 = v4 == v15 && v6 == v12 && v8 == v13 && v10 == v14;
    if (v18 || ([*&v2[v11] setLayoutMargins:{v4, v6, v8, v10}], objc_msgSend(v2, "invalidateIntrinsicContentSize"), (v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {

      v19(v20);

      sub_F704(v19);
    }
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_6BA400();
  }
}

void sub_6BC5D4(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_764610();
    sub_6BD128(&qword_9424D0, &type metadata accessor for Uber);

    v5 = sub_7691C0();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (sub_7645D0())
    {

      sub_761120();
      sub_768900();
      sub_768ED0();
      v8 = *(*(*&v7[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_6BD128(&qword_93F500, type metadata accessor for VideoView);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_6BD128(&qword_95F410, type metadata accessor for UberHeaderView);
      v11 = v7;
      sub_7610C0();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_6BA974();
  if (!v12)
  {
LABEL_20:
    sub_6BAF74();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);

  if (v14)
  {
    sub_6B96A0(v13);
  }

  sub_6BA630();
}

void sub_6BC898()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {

        v3 = sub_F714(v2);
        v2(v3, 1.0, 0.0);

        sub_F704(v2);
      }
    }

    else
    {

      v4 = [v0 navigationController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 navigationBar];

        if (v6)
        {

          sub_434710();
        }
      }
    }
  }
}

void sub_6BC9C8(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_6BCA64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    [v2 setNeedsLayout];
  }
}

void sub_6BCAEC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_6BA134(a1);
  }
}

void sub_6BCD00(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699D0();

  if (!a1 || (sub_7699D0() & 1) != (v5 & 1))
  {
    v6 = sub_6BA974();
    if (v6)
    {
      v7 = v6;
      if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber])
      {

        sub_6B96A0(v7);

        return;
      }
    }

    sub_6BAF74();
  }
}

uint64_t sub_6BCE54()
{
}

id sub_6BCEB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6BCF78(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

uint64_t sub_6BCFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BCFCC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6BD01C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_761930();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_761920();

    sub_6BC898();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6BD128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6BD170()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6BD1E0(double a1)
{
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();

  return sub_6B2178(a1);
}

uint64_t sub_6BD330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v4 - 8);
  v82 = &v75 - v5;
  v6 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v6 - 8);
  v84 = &v75 - v7;
  v8 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v8 - 8);
  v83 = &v75 - v9;
  v10 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v10 - 8);
  v81 = &v75 - v11;
  v12 = sub_BD88(&unk_948730);
  __chkstk_darwin(v12 - 8);
  v80 = &v75 - v13;
  v14 = sub_75CA40();
  __chkstk_darwin(v14 - 8);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7593D0();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948710);
  __chkstk_darwin(v18 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v21;
  v22 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = sub_75A6B0();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_BD88(&unk_948720);
  __chkstk_darwin(v27 - 8);
  v29 = &v75 - v28;
  v30 = sub_75A6E0();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75DC30();
  v89 = *(v34 - 8);
  v90 = v34;
  __chkstk_darwin(v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  sub_765B90();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v37 = sub_766690();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v38 = v93[0];
  sub_764B40();
  sub_764BD0();
  v39 = sub_7570A0();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v85;
  sub_764B90();
  v41 = v86;
  sub_764B80();
  type metadata accessor for VideoView();
  sub_6BE908(&qword_93F500, type metadata accessor for VideoView);
  v88 = v36;
  v42 = sub_75C340();
  sub_10A2C(v41, &unk_948710);
  sub_10A2C(v40, &unk_948710);
  sub_10A2C(v24, &unk_93FD30);
  sub_10A2C(v93, &unk_9443A0);
  v43 = *(v87 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_BE70(0, &qword_93E550);
    v48 = v43;
    v49 = sub_76A1C0();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, enum case for CornerStyle.continuous(_:), v78);
    sub_75CCD0();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_940598] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v58 = sub_765BA0();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v87 = v38;
    v60 = v79;
    sub_765B80();
    sub_6B0E70(v60);
    v61 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
    v62 = sub_BD88(&unk_948740);
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    v64 = sub_758C70();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    v66 = sub_75BD30();
    v67 = v83;
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v68 = sub_BD88(&unk_9457F0);
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v70 = sub_765870();
    v71 = v82;
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v72 = v61;
    sub_4A18A4(v59, v72, v63, v92, 0, 0, v65, v67, v71, v69);
    sub_10A2C(v71, &unk_9457D0);
    v72[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v72 setNeedsLayout];

    sub_10A2C(v69, &unk_94AC40);
    sub_10A2C(v67, &unk_9457E0);
    sub_10A2C(v65, &unk_94A780);
    sub_10A2C(v63, &unk_948730);
  }

  else
  {
    v73 = v57;
    [v73 setHidden:1];
  }

  return (*(v89 + 8))(v88, v90);
}

uint64_t sub_6BDF18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  swift_getObjectType();
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_765240();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75CF00();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766690();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v42);
  sub_BD88(&unk_93F520);
  sub_765BB0();
  result = swift_dynamicCast();
  if (result)
  {
    v35[1] = v7;
    v37 = v41;
    sub_765B90();
    v19 = sub_764BC0();

    sub_75D650();
    CGRectGetWidth(v43);
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v15 + 8))(v17, v14);
    v35[2] = v19;
    v20 = sub_765330();
    v21 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for VideoView();
      sub_6BE908(&unk_93F530, type metadata accessor for VideoView);
      sub_75A050();
    }

    else
    {
      sub_75A060();
    }

    v24 = v39;
    v25 = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView);
    if (sub_765BA0())
    {
      if (sub_764F20())
      {
        v35[0] = v20;
        v26 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
        swift_beginAccess();
        v27 = v36;
        (*(v36 + 16))(v13, &v25[v26], v11);
        sub_75CDD0();
        (*(v27 + 8))(v13, v11);
        sub_765250();
        sub_765210();
        v36 = *(v38 + 1);
        (v36)(v10, v24);
        sub_765330();
        v28 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
        v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
        v38 = v25;
        v30 = v29;
        sub_7652E0();
        sub_7591B0();
        [v30 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540);
          sub_76A030();
        }

        sub_759070();

        v31 = *&v25[v28];
        sub_765250();
        v32 = sub_765210();
        (v36)(v10, v39);
        [v31 setContentMode:v32];

        v33 = *&v25[v28];
        v34 = v38;

        sub_759210();
        sub_6BE908(&qword_945810, &type metadata accessor for ArtworkView);
        sub_75A050();
      }
    }
  }

  return result;
}

id sub_6BE554()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  sub_6BE908(&qword_962178, type metadata accessor for VideoCardCollectionViewCell);
  sub_766EF0();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [objc_opt_self() itemWithLayoutSize:v7];
  v9 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77D9F0;
  *(v10 + 32) = v8;
  sub_BE70(0, &qword_957F90);
  v11 = v8;
  isa = sub_769450().super.isa;

  v13 = [v9 verticalGroupWithLayoutSize:v7 subitems:isa];

  return v13;
}

void sub_6BE78C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for VideoView();
    sub_6BE908(&unk_93F530, type metadata accessor for VideoView);
    sub_75A0C0();
  }

  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v7 = v4;
  v8 = v6;
  sub_759050();

  v9 = *&v4[v5];
  sub_759210();
  sub_6BE908(&qword_945810, &type metadata accessor for ArtworkView);
  v10 = v9;
  sub_75A0C0();
}

uint64_t sub_6BE908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6BE950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_6BE97C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = sub_76A920();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75B660();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15(v11, v8);
  if (v31 && (sub_759880() & 1) != 0)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v16 = sub_766CA0();
    sub_BE38(v16, qword_99FDE8);
    sub_75DA40();
    sub_766470();
    sub_766700();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v27 + 8))(v4, v28);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  sub_27D0E8(v7, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v29);
}

uint64_t sub_6BED18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764990();
  *a1 = result;
  return result;
}

uint64_t sub_6BED44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649B0();
  *a1 = result;
  return result;
}

double sub_6BED78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v148 = a5;
  v8 = sub_75B660();
  v9 = *(v8 - 8);
  v140 = v8;
  v141 = v9;
  __chkstk_darwin(v8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_75DAB0();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  __chkstk_darwin(v11);
  v143 = v13;
  v145 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_94F1F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v138 - v19;
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  if (sub_769240() == a1 && v24 == a2)
  {
  }

  else
  {
    v139 = a2;
    v26 = sub_76A950();

    if ((v26 & 1) == 0)
    {
      if (sub_769240() == a1 && v27 == v139)
      {

        v28 = a3;
        goto LABEL_18;
      }

      v68 = sub_76A950();

      v28 = a3;
      if (v68)
      {
LABEL_18:
        sub_75DAA0();
        swift_getKeyPath();
        sub_768750();

        (*(v15 + 8))(v17, v14);
        if (v151)
        {

          v69 = sub_BD88(&qword_962368);
          v70 = v148;
          *(v148 + 24) = v69;
          v70[4] = sub_15D000(&qword_962370, &qword_962368);
          v149 = sub_B1B4(v70);
          v148 = sub_769240();
          v141 = v71;
          type metadata accessor for ShelfFooterView();
          sub_769BD0();
          v72 = swift_allocObject();
          swift_weakInit();
          v73 = v146;
          v74 = v147;
          v75 = v145;
          (*(v147 + 16))(v145, v28, v146);
          v76 = (*(v74 + 80) + 24) & ~*(v74 + 80);
          v77 = (v143 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v72;
          (*(v74 + 32))(v78 + v76, v75, v73);
          *(v78 + v77) = v142;
        }

        else
        {
          v79 = sub_BD88(&qword_951B98);
          v80 = v148;
          *(v148 + 24) = v79;
          v80[4] = sub_15D000(&unk_959630, &qword_951B98);
          sub_B1B4(v80);
          sub_769240();
          type metadata accessor for InfiniteScrollFooterView();
          sub_769BD0();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_769BC0() == a1 && v81 == v139)
      {

LABEL_27:
        v83 = sub_BD88(&qword_962358);
        v84 = v148;
        *(v148 + 24) = v83;
        v84[4] = sub_15D000(&qword_962360, &qword_962358);
        v149 = sub_B1B4(v84);
        v148 = sub_769BC0();
        sub_769BD0();
        v85 = v146;
        v86 = v147;
        v87 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
        v89 = (v143 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        (*(v86 + 32))(v90 + v88, v87, v85);
        *(v90 + v89) = v144;

        goto LABEL_20;
      }

      v82 = sub_76A950();

      if (v82)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_769BC0() == a1 && v91 == v139)
      {

LABEL_33:
        v93 = sub_BD88(&qword_962348);
        v94 = v148;
        *(v148 + 24) = v93;
        v94[4] = sub_15D000(&qword_962350, &qword_962348);
        v149 = sub_B1B4(v94);
        v148 = sub_769BC0();
        sub_769BD0();
        v95 = v146;
        v96 = v147;
        v97 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v99 = (v143 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        (*(v96 + 32))(v100 + v98, v97, v95);
        *(v100 + v99) = v144;

        goto LABEL_20;
      }

      v92 = sub_76A950();

      if (v92)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_769BC0() == a1 && v101 == v139)
      {

LABEL_38:
        v103 = sub_BD88(&qword_962338);
        v104 = v148;
        *(v148 + 24) = v103;
        v104[4] = sub_15D000(&qword_962340, &qword_962338);
        v149 = sub_B1B4(v104);
        v148 = sub_769BC0();
        sub_769BD0();
        v105 = v146;
        v106 = v147;
        v107 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v108 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v109 = (v143 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        (*(v106 + 32))(v110 + v108, v107, v105);
        *(v110 + v109) = v144;

        goto LABEL_20;
      }

      v102 = sub_76A950();

      if (v102)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView();
      if (sub_769BC0() == a1 && v111 == v139)
      {

LABEL_43:
        v113 = sub_BD88(&qword_962328);
        v114 = v148;
        *(v148 + 24) = v113;
        v114[4] = sub_15D000(&qword_962330, &qword_962328);
        v149 = sub_B1B4(v114);
        v148 = sub_769BC0();
        sub_769BD0();
        v115 = swift_allocObject();
        swift_weakInit();
        v116 = v146;
        v117 = v147;
        v118 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v119 = (*(v117 + 80) + 24) & ~*(v117 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v115;
        (*(v117 + 32))(v120 + v119, v118, v116);
        goto LABEL_20;
      }

      v112 = sub_76A950();

      if (v112)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_769BC0() == a1 && v121 == v139)
      {

LABEL_48:
        v123 = sub_BD88(&qword_962318);
        v124 = v148;
        *(v148 + 24) = v123;
        v124[4] = sub_15D000(&qword_962320, &qword_962318);
        v149 = sub_B1B4(v124);
        v148 = sub_769BC0();
        sub_769BD0();
        v125 = v146;
        v126 = v147;
        v127 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v128 = (*(v126 + 80) + 16) & ~*(v126 + 80);
        v129 = (v143 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
        v130 = swift_allocObject();
        (*(v126 + 32))(v130 + v128, v127, v125);
        *(v130 + v129) = v144;

        goto LABEL_20;
      }

      v122 = sub_76A950();

      if (v122)
      {
        goto LABEL_48;
      }

      sub_75E6D0();
      if (sub_75E6B0() == a1 && v131 == v139)
      {
        goto LABEL_51;
      }

      v132 = sub_76A950();

      if (v132)
      {
        goto LABEL_53;
      }

      if (sub_75E6C0() == a1 && v135 == v139)
      {
LABEL_51:
      }

      else
      {
        v136 = sub_76A950();

        if ((v136 & 1) == 0)
        {
          v137 = v148;
          *(v148 + 32) = 0;
          result = 0.0;
          *v137 = 0u;
          v137[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v133 = sub_BD88(&qword_946B48);
      v134 = v148;
      *(v148 + 24) = v133;
      v134[4] = sub_15D000(&qword_946B50, &qword_946B48);
      sub_B1B4(v134);
      sub_75E6A0();
      return result;
    }
  }

  v29 = a3;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v30 = *(v15 + 8);
  v30(v23, v14);
  if (!v150)
  {
    v32 = v140;
    v33 = v149;
    goto LABEL_14;
  }

  v31 = sub_759750();

  v32 = v140;
  v33 = v149;
  if ((v31 & 1) == 0)
  {
LABEL_14:
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v30(v20, v14);
    v44 = (*(v141 + 88))(v33, v32);
    v45 = v147;
    if (v44 != enum case for ShelfBackground.interactive(_:))
    {
      v55 = sub_BD88(&qword_946B58);
      v56 = v148;
      *(v148 + 24) = v55;
      v56[4] = sub_15D000(&qword_946B60, &qword_946B58);
      sub_B1B4(v56);
      v148 = sub_769240();
      v140 = v57;
      type metadata accessor for TitleHeaderView(0);
      v58 = sub_769BD0();
      v138 = v59;
      v139 = v58;
      v60 = v29;
      v61 = swift_allocObject();
      swift_weakInit();
      v63 = v145;
      v62 = v146;
      (*(v45 + 16))(v145, v60, v146);
      v64 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v65 = (v143 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      (*(v45 + 32))(v66 + v64, v63, v62);
      *(v66 + v65) = v142;

      sub_763760();
      (*(v141 + 8))(v149, v32);
      return result;
    }

    v46 = sub_BD88(&qword_962378);
    v47 = v148;
    *(v148 + 24) = v46;
    v47[4] = sub_15D000(&qword_962380, &qword_962378);
    v149 = sub_B1B4(v47);
    v148 = sub_769240();
    v141 = v48;
    type metadata accessor for InteractiveTitleHeaderView();
    sub_769BD0();
    v49 = swift_allocObject();
    swift_weakInit();
    v51 = v145;
    v50 = v146;
    (*(v45 + 16))(v145, v29, v146);
    v52 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v53 = (v143 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v45 + 32))(v54 + v52, v51, v50);
    *(v54 + v53) = v142;

    goto LABEL_20;
  }

  v34 = sub_BD88(&qword_951300);
  v35 = v148;
  *(v148 + 24) = v34;
  v35[4] = sub_15D000(&qword_951308, &qword_951300);
  v149 = sub_B1B4(v35);
  v148 = sub_769240();
  v141 = v36;
  type metadata accessor for ShelfHeaderView();
  sub_769BD0();
  v37 = swift_allocObject();
  swift_weakInit();
  v39 = v146;
  v38 = v147;
  v40 = v145;
  (*(v147 + 16))(v145, v29, v146);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v143 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  (*(v38 + 32))(v43 + v41, v40, v39);
  *(v43 + v42) = v142;

LABEL_20:
  sub_763760();
  return result;
}

uint64_t sub_6BFEFC(uint64_t a1, int *a2)
{
  v54 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7656C0();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v52 - v12;
  __chkstk_darwin(v13);
  v53 = &v52 - v14;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  __chkstk_darwin(v24);
  v26 = &v52 - v25;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v66;
  if (!v66)
  {
    goto LABEL_16;
  }

  v29 = v65;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v23, v8);
    if (!v65)
    {
      return 0;
    }

    v31 = sub_759880();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v33 = v32;
  v35 = v34;
  (*(v59 + 8))(v7, v60);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v27(v20, v8);
  v36 = v65;
  if (!v65)
  {
    goto LABEL_12;
  }

  if ((sub_759750() & 1) == 0)
  {

LABEL_12:
    v38 = sub_6C2AC0(v33, v35);
    v40 = v39;
    v60 = type metadata accessor for TitleHeaderView(0);
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v17, v8);
    v59 = v65;
    v54 = v66;
    v41 = v53;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v41, v8);
    v42 = v64;
    v43 = v55;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v43, v8);
    v45 = v62;
    v44 = v63;
    v46 = v56;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v27(v46, v8);
    v47 = v61;
    v48 = sub_6C2E38();
    v49 = v58;
    (*(*v57 + 192))(a1);
    v50 = sub_75DA40();
    swift_getObjectType();
    LOBYTE(v51) = 1;
    sub_1995E0(v59, v54, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, 0, 0, v48, v49, v51, v50);
    swift_unknownObjectRelease();

    sub_6C48A4(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView();
  v33 = sub_50F5C0(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_6C05BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_75B660();
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_764930();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_768C60();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v97 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v83 - v12;
  __chkstk_darwin(v13);
  v102 = &v83 - v14;
  v92 = sub_75DAB0();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v15;
  __chkstk_darwin(v16);
  v88 = &v83 - v17;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v84);
  v108 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_765240();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_94F1F0);
  v99 = *(v23 - 8);
  __chkstk_darwin(v23);
  v95 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v112 = a2;
  sub_75DAA0();
  sub_75A110();
  sub_768900();
  v93 = a3;
  sub_768ED0();
  v109 = v113;
  swift_getKeyPath();
  sub_768750();

  v28 = v113;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

  sub_1935B4(v28);
  *(a1 + v29) = v28;

  sub_1935C8(v30);

  swift_getKeyPath();
  v110 = v23;
  v111 = v27;
  sub_768750();

  v31 = v113;
  v32 = v114;
  v33 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v35 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v34 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

  sub_192F94(v31, v32);
  *v33 = v31;
  v33[1] = v32;

  sub_193028(v35, v34);

  if (*(a1 + v29))
  {
    v36 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
    if (v36)
    {

      v37 = v36;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v86 + 8))(v22, v87);
      sub_765330();
      sub_759210();
      sub_6C4904(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }
  }

  swift_getKeyPath();
  sub_768750();

  v38 = v113;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v40 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

  sub_193754(v38);
  *(a1 + v39) = v38;

  sub_193868(v40);

  v41 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_768750();

  if (v114)
  {
    v42 = sub_769210();
  }

  else
  {
    v42 = 0;
  }

  [v41 setText:v42];

  v43 = *(a1 + v39);
  if (v43)
  {
    v44 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
    if (v44)
    {
      v45 = v108;
      (*&stru_1A8.segname[(swift_isaMask & *a1) + 8])();
      v46 = v85;
      sub_C1D58(v45 + *(v84 + 20), v85);

      v47 = v44;
      sub_6C48A4(v45, type metadata accessor for TitleHeaderView.Style);
      sub_6C27B0(v43, v46, a1);
      sub_6C48A4(v46, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_765250();
      sub_765210();
      (*(v86 + 8))(v22, v87);
      sub_765330();
      sub_759210();
      sub_6C4904(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }
  }

  v48 = v91;
  v49 = *(v91 + 16);
  v50 = v88;
  v51 = v112;
  v52 = v92;
  v49(v88, v112, v92);
  v53 = v90;
  v49(v90, v50, v52);
  v54 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v55 = swift_allocObject();
  v56 = v94;
  *(v55 + 16) = v94;
  (*(v48 + 32))(v55 + v54, v50, v52);
  v57 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v57 = sub_6C4838;
  v57[1] = v55;

  [v41 setNumberOfLines:sub_6C2E38()];

  (*(v48 + 8))(v53, v52);
  v58 = v108;
  (*(*v56 + 192))(v51);
  (*&stru_1A8.segname[(swift_isaMask & *a1) + 16])(v58);
  v59 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v59)
  {
    swift_getKeyPath();
    v60 = v59;
    sub_768750();

    if (v114)
    {
      v61 = sub_769210();
    }

    else
    {
      v61 = 0;
    }

    [v60 setText:v61];
  }

  sub_6C14CC(a1, v112, v93);
  v113 = sub_75DA90();
  v62 = sub_76A910();
  v116[3] = &type metadata for String;
  v116[0] = v62;
  v116[1] = v63;
  sub_75DA80();
  v64 = sub_76A6A0();
  v66 = v65;
  sub_1EB60(&v113);
  v115 = &type metadata for String;
  v113 = v64;
  v114 = v66;
  v67 = v97;
  sub_768C30();
  sub_10A2C(&v113, &unk_93FBD0);
  sub_10A2C(v116, &unk_93FBD0);
  swift_getKeyPath();
  v68 = v98;
  v69 = v110;
  v70 = v111;
  sub_768750();

  v71 = sub_764920();
  v73 = v72;
  (*(v100 + 8))(v68, v101);
  v115 = &type metadata for String;
  v113 = v71;
  v114 = v73;
  v74 = v96;
  sub_768C40();
  v75 = v104;
  v76 = *(v103 + 8);
  v76(v67, v104);
  sub_10A2C(&v113, &unk_93FBD0);
  swift_getKeyPath();
  sub_768750();

  v77 = *(v116[0] + 16);

  v115 = &type metadata for Int;
  v113 = v77;
  v78 = v102;
  sub_768C40();
  v76(v74, v75);
  sub_10A2C(&v113, &unk_93FBD0);
  sub_769E70();
  v76(v78, v75);
  v79 = v95;
  sub_75DAA0();
  swift_getKeyPath();
  v80 = v105;
  sub_768750();

  v81 = *(v99 + 8);
  v81(v79, v69);
  [a1 setOverrideUserInterfaceStyle:sub_51DB60()];
  (*(v106 + 8))(v80, v107);
  [a1 setNeedsLayout];

  return (v81)(v70, v69);
}

uint64_t sub_6C14CC(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v4 = sub_768C60();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_BD88(&unk_94F1F0);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  if (v47[0])
  {
    v39 = v15;
    v40 = v13;
    v16 = a2;
    sub_6C1BCC(a2, v12);
    v17 = type metadata accessor for Accessory();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v45;
    (*&stru_248.segname[(swift_isaMask & *v45) + 16])(v12, v44);
    sub_10A2C(v12, &qword_93FF90);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
    *v22 = sub_6C47C4;
    v22[1] = v21;

    sub_F704(v23);

    v24 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
    if (v24)
    {
      v25 = v24;
      v26 = sub_75DA90();
      v48[3] = &type metadata for Int;
      v48[0] = v26;
      sub_75DA80();
      v27 = sub_76A6A0();
      v29 = v28;
      sub_1EB60(v47);
      v47[3] = &type metadata for String;
      v47[0] = v27;
      v47[1] = v29;
      v30 = v41;
      sub_768C30();
      sub_10A2C(v47, &unk_93FBD0);
      sub_10A2C(v48, &unk_93FBD0);
      sub_769E70();

      (*(v42 + 8))(v30, v43);
    }

    else
    {
    }

    return (*(v46 + 8))(v39, v40);
  }

  else
  {
    v32 = v44;
    v31 = v45;
    swift_getKeyPath();
    sub_768750();

    if (v47[0])
    {
      *v12 = v47[0];
      *(v12 + 8) = xmmword_7ADC00;
      v33 = type metadata accessor for Accessory();
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v34 = *&stru_248.segname[(swift_isaMask & *v31) + 16];

      v34(v12, v32);

      sub_10A2C(v12, &qword_93FF90);
      return (*(v46 + 8))(v15, v13);
    }

    else
    {
      v36 = type metadata accessor for Accessory();
      (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
      (*&stru_248.segname[(swift_isaMask & *v31) + 16])(v12, v32);
      sub_10A2C(v12, &qword_93FF90);
      (*(v46 + 8))(v15, v13);
      v37 = (v31 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v38 = *(v31 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      *v37 = 0;
      v37[1] = 0;
      return sub_F704(v38);
    }
  }
}

uint64_t sub_6C1BCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_764A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_764C60();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_75DA70();
  sub_764A40();
  sub_6C4904(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v17 = sub_76A520();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_396E8();
    v19 = sub_769FD0();
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_6C1E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v10 + 8))(v12, v9);
    v15 = v17;
    if (v17)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_5172EC(v15, Strong, *(v14 + 32), a6, a7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_6C1FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6C05BC(a1, a6, a7);
  }

  return result;
}

uint64_t sub_6C2078(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6C4E3C(a1, a6);
  }

  return result;
}

uint64_t sub_6C20EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6C05BC(*&a1[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView], a6, a7);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_768900();
    sub_768ED0();
    v15 = v19[0];
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {

      sub_663E34(v19);
      if (v16)
      {

        sub_1EB60(v19);

        v19[3] = type metadata accessor for InteractiveTitleHeaderView();
        v19[4] = &off_884600;
        v19[0] = a1;
        v17 = a1;
        sub_420A64(v19);

        return sub_10A2C(v19, &unk_94A510);
      }
    }

    else
    {
    }

    return sub_1EB60(v19);
  }

  return result;
}

uint64_t sub_6C2354(void *a1)
{
  v2 = sub_BD88(&unk_94F1F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_768900();

    sub_768ED0();

    v7 = v11[0];
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v3 + 8))(v5, v2);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {

      sub_663E34(v11);
      if (v8)
      {

        sub_1EB60(v11);

        v10[3] = type metadata accessor for InteractiveSectionBackgroundView();
        v10[4] = &off_88A558;
        v10[0] = a1;
        v9 = a1;
        sub_420A64(v10);

        return sub_10A2C(v10, &unk_94A510);
      }
    }

    sub_1EB60(v11);
  }

  return result;
}

uint64_t sub_6C25A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      sub_75DAA0();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

double sub_6C27B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = sub_766690();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766CA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = sub_7666D0();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v8 + 16))(v17, v10, v7);
  sub_766CB0();
  (*(v8 + 8))(v10, v7);
  sub_766C90();
  if (v22)
  {
    sub_765260();
    sub_7666A0();
    sub_766610();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

double sub_6C2AC0(double a1, double a2)
{
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_75DA30();
    sub_764C60();
    v14 = v13;
    if (qword_93C5E0 != -1)
    {
      swift_once();
    }

    v15 = qword_9481A0;
    if (v14)
    {
      v16 = sub_769210();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v11(v7, v4);
    if (v29 && (v17 = sub_759880(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_6C2E38()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_75DA30();
  v8 = sub_769A00();

  if (v8)
  {
    return 0;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v10(v3, v0);
    if (v13 && (v11 = sub_759880(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_6C3010()
{
  v0 = sub_BD88(&qword_94AFE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v20 = sub_7656C0();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v22;
  if (!v22)
  {
    return 0;
  }

  v19 = v21;
  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v16 = v15;
  (*(v3 + 8))(v5, v20);
  v17 = sub_75DA30();
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13(v9, v6);
  sub_651D58(v19, v14, v17, v2);

  sub_10A2C(v2, &qword_94AFE0);
  return v16;
}

double *sub_6C330C(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_6BFEFC(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_6C3010());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }
  }

  sub_BD88(&qword_962308);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_6C35F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double *sub_6C3644()
{
  v0 = sub_75B660();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94F1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v9 = *(sub_BD88(&qword_94B9A8) + 48);
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77D9F0;
    v11 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_769BC0();
    v12 = sub_769210();

    v13 = [v11 backgroundDecorationItemWithElementKind:v12];

    *(v10 + 32) = v13;
    v14 = sub_75EDA0();
    (*(*(v14 - 8) + 8))(&v3[v9], v14);
  }

  else if (v8 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v15 = sub_BD88(&qword_94B3C0);
    v16 = v15[12];
    v17 = v15[16];
    v18 = v15[20];
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77D9F0;
    v19 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_769BC0();
    v20 = sub_769210();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    *(v10 + 32) = v21;
    v22 = sub_75EDA0();
    (*(*(v22 - 8) + 8))(&v3[v18], v22);
    v23 = sub_763400();
    v24 = *(*(v23 - 8) + 8);
    v24(&v3[v17], v23);
    v24(&v3[v16], v23);
  }

  else if (v8 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v25 = *(sub_BD88(&qword_959950) + 48);
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77D9F0;
    v26 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_769BC0();
    v27 = sub_769210();

    v28 = [v26 backgroundDecorationItemWithElementKind:v27];

    *(v10 + 32) = v28;
    v29 = sub_75EDA0();
    (*(*(v29 - 8) + 8))(&v3[v25], v29);
    v30 = sub_763E10();
    (*(*(v30 - 8) + 8))(v3, v30);
  }

  else if (v8 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v8 == enum case for ShelfBackground.interactive(_:))
  {
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77D9F0;
    v31 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView();
    sub_769BC0();
    v32 = sub_769210();

    v33 = [v31 backgroundDecorationItemWithElementKind:v32];

    *(v10 + 32) = v33;
  }

  else
  {
    v34 = enum case for ShelfBackground.editorsChoice(_:);
    v35 = v8;
    sub_BD88(&unk_93F5C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77D9F0;
    v36 = objc_opt_self();
    if (v35 == v34)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_769BC0();
      v37 = sub_769210();

      v38 = [v36 backgroundDecorationItemWithElementKind:v37];

      *(v10 + 32) = v38;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_769BC0();
      v39 = sub_769210();

      v40 = [v36 backgroundDecorationItemWithElementKind:v39];

      *(v10 + 32) = v40;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v10;
}
void sub_3B11F0(uint64_t a1, void *a2)
{
  v20 = *(*a2 + 208);
  if ((v20() & 1) == 0)
  {
    v3 = a2[11];
    a2[11] = 0;
    sub_3B18B4();
    if (v3)
    {
      v4 = a2[11];
      if (!v4 || v4 != v3)
      {
        [v3 removeFromSuperview];
      }
    }
  }

  v5 = a2[6];
  if (v5)
  {

    v6 = v5(a2);
    if ((v6 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v8 = v22;
      v7 = v23;
      v9 = v24;
      v10 = v25;
      v11 = v26;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);
      v10 = 0;
    }

    if (v8 < 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v15 = v10;
      v16 = v11;
      v17 = v10;
      if (!v11)
      {
        break;
      }

LABEL_19:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v19)
      {
LABEL_25:
        sub_2BB88();

        sub_17654(v5);
        return;
      }

      while (1)
      {
        [v19 setHidden:v20() & 1];

        v10 = v17;
        v11 = v18;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_21:
        if (sub_ABAC90())
        {
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v19 = v21;
          swift_unknownObjectRelease();
          v17 = v10;
          v18 = v11;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_25;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

uint64_t sub_3B1490(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_17654(v3);
}

double sub_3B14A4()
{
  v1 = v0[11];
  if (!v1)
  {
    return 0.0;
  }

  v2 = (*(*v0 + 160))();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    [v3 bounds];
    Width = CGRectGetWidth(v17);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v3;
      [v7 bounds];
      v9 = CGRectGetWidth(v18);
      [v7 adjustedContentInset];
      sub_AB9E60();
      v11 = v10;

      v12 = v9 - v11;
    }

    else
    {

      v12 = Width;
    }
  }

  else
  {
    v14 = v1;
    v12 = 0.0;
  }

  [v1 sizeThatFits:{v12, 0.0}];
  v13 = v15;

  return v13;
}

void sub_3B15CC(__int128 *a1)
{
  v2 = v1;
  v33 = *a1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  v6 = *(v4 + 1);
  *v4 = v33;
  sub_15F84(&v33, &v32, &unk_DEE6F0);
  sub_22E6D0(v5, v6);

  v32 = a1[1];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message] = v32;
  sub_15F84(&v32, v30, &unk_DEE6F0);
  sub_22E7B0(v7, v8);

  v30[0] = *(a1 + 4);
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_image];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_image] = v30[0];
  sub_15F84(v30, &v31, &unk_E00030);
  sub_22E52C(v9);

  v10 = *(a1 + 6);
  v11 = *(a1 + 56);
  if (v10)
  {
    v13 = *(a1 + 8);
    v12 = *(a1 + 9);
    v14 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8];
    *v14 = *(a1 + 5);
    v14[1] = v10;

    sub_22E90C(v15, v16);

    v17 = v11;
  }

  else
  {
    v18 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v20 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8];
    *v18 = 0;
    v18[1] = 0;
    sub_22E90C(v19, v20);

    v13 = 0;
    v12 = 0;
    v17 = 1;
  }

  v21 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler];
  v22 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler];
  *v21 = v13;
  v21[1] = v12;
  sub_307CC(v13);
  sub_17654(v22);
  sub_22EA2C();
  sub_17654(v13);
  v23 = v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode];
  v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode] = v17;
  sub_22EB10(v23);
  if (v10)
  {
    v24 = v11 == 2;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight];
  v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight] = v25;
  if (v25 != v26)
  {
    [v2 setNeedsLayout];
    v27 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
    if (v27)
    {

      v27(v2);
      sub_17654(v27);
    }
  }

  v31 = *(a1 + 10);
  v28 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] = v31;
  sub_15F84(&v31, &v29, &qword_DF1E28);
  sub_22E380(v28);
}

void sub_3B18B4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(*v0 + 160);
    v3 = v2();
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 64);
      if (v5)
      {
        v6 = v1;
        sub_307CC(v5);
        v7 = v5(v0, v6);
        v9 = v8;
        v11 = v10;
        v13 = v12;
        sub_17654(v5);
      }

      else
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        v18 = v1;
        if (v17)
        {
          [v17 bounds];
          MinX = CGRectGetMinX(v45);
          [v17 adjustedContentInset];
          v7 = MinX + v20;
          v11 = sub_3B14A4();
          v13 = v21;
          v9 = 0.0;
          v46.origin.y = 0.0;
          v46.origin.x = v7;
          v46.size.width = v11;
          v46.size.height = v13;
          Height = CGRectGetHeight(v46);
          [v4 bounds];
          if (Height < CGRectGetHeight(v47))
          {
            [v4 bounds];
            v23 = CGRectGetHeight(v48);
            [v17 adjustedContentInset];
            sub_AB9EC0();
            v25 = v23 - v24;
            [v4 bounds];
            MinY = CGRectGetMinY(v49);
            [v17 adjustedContentInset];
            v28 = MinY + v27;
            v50.origin.y = 0.0;
            v50.origin.x = v7;
            v50.size.width = v11;
            v50.size.height = v13;
            v9 = v28 + (v25 - CGRectGetHeight(v50)) * 0.5;
          }
        }

        else
        {
          [v4 bounds];
          v11 = v29;
          v13 = v30;
          v9 = 0.0;
          if (*(v0 + 208) != 2)
          {
            v42 = *(v0 + 168);
            v43 = *(v0 + 160);
            v40 = *(v0 + 184);
            v41 = *(v0 + 176);
            v31 = [v4 window];
            if (v31)
            {
              v32 = v31;
              [v4 convertRect:v31 toCoordinateSpace:{0.0, 0.0, v11, v13}];
              x = v51.origin.x;
              y = v51.origin.y;
              width = v51.size.width;
              v36 = v51.size.height;
              MaxY = CGRectGetMaxY(v51);
              v52.origin.y = v42;
              v52.origin.x = v43;
              v52.size.height = v40;
              v52.size.width = v41;
              if (CGRectGetMinY(v52) >= MaxY)
              {
              }

              else
              {
                v53.origin.x = x;
                v53.origin.y = y;
                v53.size.width = width;
                v53.size.height = v36;
                v38 = CGRectGetMaxY(v53);
                v54.origin.y = v42;
                v54.origin.x = v43;
                v54.size.height = v40;
                v54.size.width = v41;
                v39 = CGRectGetMinY(v54);

                v13 = v13 - (v38 - v39);
              }
            }
          }

          v7 = 0.0;
        }
      }

      type metadata accessor for CGSize(0);
      if (sub_AB38D0())
      {
        v1 = v1;
        [v1 setFrame:{v7, v9, v11, v13}];
        v14 = [v1 superview];

        v15 = v2();
        v16 = v15;
        if (v14)
        {

          if (v16 && v14 == v16)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v15)
        {

LABEL_19:
          [v4 addSubview:v1];
        }
      }

      else
      {
        [v1 removeFromSuperview];
      }

LABEL_20:

      return;
    }

    [v1 removeFromSuperview];
  }
}

uint64_t sub_3B1CB4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_3B18B4();
  }

  return result;
}

__n128 sub_3B1D0C@<Q0>(__n128 *a1@<X8>)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 traitCollection];
  }

  else
  {
    v5 = 0;
  }

  v6 = v13;
  sub_3B2060(v5, v13);

  v7 = (*(*v1 + 240))();
  if (v7)
  {
    v8 = v7;
    v6 = v14;
    v7(v14, v1, v13);
    sub_17654(v8);
    sub_57748(v13);
  }

  v9 = v6[5].n128_u64[0];
  v10 = v6[1];
  *a1 = *v6;
  a1[1] = v10;
  v11 = v6[3];
  a1[2] = v6[2];
  a1[3] = v11;
  result = v6[4];
  a1[4] = result;
  a1[5].n128_u64[0] = v9;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication19NoContentControllerC13ConfigurationV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_3B1E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_3B1EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_3B1F38(uint64_t result)
{
  v2 = *(v1 + 208);
  v3 = *(result + 80);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }
  }

  else if (v3 != 2)
  {
    v4 = *(v1 + 176);
    v8[2] = *(v1 + 160);
    v8[3] = v4;
    v8[4] = *(v1 + 192);
    v5 = *(v1 + 144);
    v8[0] = *(v1 + 128);
    v8[1] = v5;
    v9 = v2;
    v6 = *(result + 48);
    v10[2] = *(result + 32);
    v10[3] = v6;
    v10[4] = *(result + 64);
    v7 = *(result + 16);
    v10[0] = *result;
    v10[1] = v7;
    v11 = v3;
    result = static KeyboardAvoidance.__derived_struct_equals(_:_:)(v8, v10);
    if (result)
    {
      return result;
    }

    v2 = *(v1 + 208);
  }

  if (v2 != 2 || v3 != 2)
  {

    KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_3B2524, v1, 0, 0);
  }

  return result;
}

void sub_3B2060(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  sub_AB91E0();
  sub_AB3550();
  v6 = sub_AB9320();
  v8 = v7;
  if (!a1)
  {
LABEL_4:
    static ApplicationCapabilities.shared.getter(v31);
    sub_70C54(v31);
    if (v32 == 2)
    {
    }

    else
    {
      v18 = sub_ABB3C0();

      if ((v18 & 1) == 0)
      {
LABEL_10:
        v17 = 0;
        v10 = 0;
        v12 = 0;
        goto LABEL_11;
      }
    }

    sub_AB91E0();
    sub_AB3550();
    v6 = sub_AB9320();
    v8 = v19;
    goto LABEL_10;
  }

  v9 = a1;
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {

    goto LABEL_4;
  }

  sub_AB91E0();
  sub_AB3550();
  v10 = sub_AB9320();
  v12 = v11;
  sub_AB91E0();
  sub_AB3550();
  v6 = sub_AB9320();
  v8 = v13;
  v14 = sub_AB9260();
  v15 = [objc_opt_self() _systemImageNamed:v14];

  if (v15)
  {
    v16 = [objc_opt_self() configurationWithPointSize:36.0];
    v17 = [v15 imageWithSymbolConfiguration:v16];

LABEL_11:
    *&v24 = v10;
    *(&v24 + 1) = v12;
    *&v25 = v6;
    *(&v25 + 1) = v8;
    *v26 = v17;
    memset(&v26[8], 0, 48);
    v27[0] = v10;
    v27[1] = v12;
    v27[2] = v6;
    v27[3] = v8;
    v27[4] = v17;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    sub_576EC(&v24, &v23);
    sub_57748(v27);
    v20 = *&v26[16];
    v21 = *&v26[32];
    *(a2 + 32) = *v26;
    *(a2 + 48) = v20;
    *(a2 + 64) = v21;
    *(a2 + 80) = *&v26[48];
    v22 = v25;
    *a2 = v24;
    *(a2 + 16) = v22;
    return;
  }

  __break(1u);
}

uint64_t sub_3B2498()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_3B24D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_3B2528()
{
  result = qword_E03620;
  if (!qword_E03620)
  {
    sub_74390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03620);
  }

  return result;
}

id sub_3B258C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_3B25E4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3B266C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002DLL;
  v3 = "u";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "tem.noNavigationBarTransition";
      v5 = 0xD000000000000032;
    }

    else
    {
      v6 = "tionBarTransitions";
      v5 = 0xD000000000000035;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000002DLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4)
    {
      v6 = "gationBarTransition";
    }

    else
    {
      v6 = "u";
    }
  }

  if (a2 > 1u)
  {
    v3 = "tem.noNavigationBarTransition";
    v7 = 0xD000000000000032;
    v8 = "tionBarTransitions";
    v2 = 0xD000000000000035;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000033;
    v8 = "gationBarTransition";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

uint64_t sub_3B278C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 1735290739;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE800000000000000;
    }

    v13 = 0x6D75626C61;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v13 = 0x747369747261;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x776F68537674;
    v5 = 0x646F736970457674;
    v6 = 0xE900000000000065;
    if (a1 != 7)
    {
      v5 = 0x6569766F6DLL;
      v6 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x646956636973756DLL;
    v8 = 0xEA00000000006F65;
    if (a1 != 4)
    {
      v7 = 0x7265736F706D6F63;
      v8 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v9 != 1735290739)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v9 != 0x7473696C79616C70)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6D75626C61)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v9 != 0x747369747261)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xEA00000000006F65;
      if (v9 != 0x646956636973756DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v9 != 0x7265736F706D6F63)
      {
LABEL_52:
        v15 = sub_ABB3C0();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE600000000000000;
    if (v9 != 0x776F68537674)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE900000000000065;
    if (v9 != 0x646F736970457674)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v9 != 0x6569766F6DLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_3B2A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x7265736F706D6F63;
  v5 = 0xE900000000000073;
  if (a1 != 6)
  {
    v4 = 0x4D73776F68537674;
    v5 = 0xED0000736569766FLL;
  }

  v6 = 0x7473696C79616C70;
  v7 = 0xE900000000000073;
  if (a1 != 4)
  {
    v6 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x736D75626C61;
  if (a1 != 2)
  {
    v9 = 0x73676E6F73;
    v8 = 0xE500000000000000;
  }

  v10 = 0x73747369747261;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v10 = 7368564;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x736D75626C61)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x73676E6F73)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73747369747261)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 7368564)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEB00000000736F65;
      if (v11 != 0x646956636973756DLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x7473696C79616C70;
    goto LABEL_34;
  }

  if (a2 == 6)
  {
    v14 = 0x7265736F706D6F63;
LABEL_34:
    v13 = 0xE900000000000073;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v13 = 0xED0000736569766FLL;
  if (v11 != 0x4D73776F68537674)
  {
LABEL_45:
    v15 = sub_ABB3C0();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_3B2CB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  v6 = 0xE600000000000000;
  v7 = 0x7463656C6573;
  if (a1 != 4)
  {
    v7 = 0xD000000000000015;
    v6 = 0x8000000000B48D50;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75516C65636E6163;
  v9 = 0xEB00000000797265;
  if (a1 != 1)
  {
    v8 = 0x7865547261656C63;
    v9 = 0xE900000000000074;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 6579297;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7463656C6573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x8000000000B48D50;
      if (v10 != 0xD000000000000015)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000797265;
      if (v10 != 0x75516C65636E6163)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x7865547261656C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6579297)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_3B2E98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D75626C61;
    }

    else
    {
      v3 = 1735290739;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7473696C79616C70;
  }

  else if (a1 == 3)
  {
    v3 = 0x69762D636973756DLL;
    v4 = 0xEB000000006F6564;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6974617473;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D75626C61;
    }

    else
    {
      v9 = 1735290739;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x69762D636973756DLL;
    v6 = 0xEB000000006F6564;
    if (a2 != 3)
    {
      v5 = 0x6E6F6974617473;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7473696C79616C70;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_ABB3C0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_3B3030(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819042164;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x686372616573;
    }

    else
    {
      v4 = 0x6D72657465646E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC00000064656E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616D726F6ELL;
    }

    else
    {
      v4 = 1819042164;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x686372616573;
  if (a2 != 2)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (a2)
  {
    v2 = 0x6C616D726F6ELL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

id sub_3B316C(void *a1)
{
  [a1 setAlwaysBounceVertical:1];
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setKeyboardDismissMode:1];
  [a1 setAllowsFocus:1];
  [a1 setRemembersLastFocusedIndexPath:1];
  v11 = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (swift_dynamicCast())
  {
    sub_12E1C(&v8, &unk_E04550);
    v5 = 1;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_12E1C(&v8, &unk_E04550);
    v11 = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200);
    v5 = swift_dynamicCast();
    if ((v5 & 1) == 0)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_12E1C(&v8, &qword_E04580);
  }

  [a1 setPrefetchingEnabled:{v5, v8, v9, v10, v11}];
  return [a1 _setShouldPrefetchCellsWhenPerformingReloadData:1];
}

void *sub_3B336C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  v3 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v4 = [v2 dataSource];
  if (!v4 || (v12[0] = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_12E1C(&v9, &unk_DFE210);
    return v3;
  }

  sub_70DF8(&v9, v12);
  v5 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v6 = *(v5 + 8);
  v7 = v3;
  v6();

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v3;
}

void *sub_3B36A4()
{
  sub_13C80(0, &unk_DF0CF0);
  static UICollectionReusableView.reuseIdentifier.getter();
  v1 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v2 = [v0 dataSource];
  if (!v2 || (v10[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_12E1C(&v7, &unk_DFE210);
    return v1;
  }

  sub_70DF8(&v7, v10);
  v3 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = *(v3 + 8);
  v5 = v1;
  v4();

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v1;
}

void sub_3B38B0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_AB3820();
  v73 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v72 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v72 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && v3)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    v20 = v19;
    v21 = swift_getObjectType();
    (*(v73 + 16))(v15, a3, v11);
    sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath);
    sub_ABAD10();
    (*(v20 + 112))(a2, v77, v21, v20);
    sub_8085C(v77);
    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v23 = v72;
  if (v22)
  {
    v24 = v22;
    LODWORD(v25) = *(v3 + qword_DFE278);
    if (v25 == 2)
    {
      v25 = *&stru_248.sectname[swift_isaMask & *v3];
      v26 = a2;
      v27 = v25(a1);
      v23 = v72;
      LOBYTE(v25) = v27 < 2;
    }

    else
    {
      v28 = a2;
    }

    v29 = [v24 tableViewCell];
    if (v29)
    {
      v30 = v29;
      [v29 setTableViewStyle:1];

      v31 = [v24 tableViewCell];
      if (v31)
      {
        v32 = v31;
        [v31 _setDrawsSeparatorAtTopOfSection:v25 & 1];

        v33 = [v24 tableViewCell];
        if (v33)
        {
          v34 = v33;
          v35 = *(v4 + qword_DFE280);
          if (v35 == 2)
          {
            LOBYTE(v35) = v25;
          }

          [v33 _setDrawsSeparatorAtBottomOfSection:v35 & 1];

          goto LABEL_14;
        }

LABEL_51:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_14:
  (*&stru_1F8.segname[(swift_isaMask & *v4) + 16])(a3);
  v36 = v73;
  if ((*(v73 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20);
    return;
  }

  (*(v36 + 32))(v23, v10, v11);
  v76 = v4;
  v37 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (swift_dynamicCast())
  {
    v38 = sub_70DF8(v74, v77);
    v39 = (*&stru_158.sectname[swift_isaMask & *v37])(v38);
    if (v39 && (v40 = v39, v41 = [v39 results], v40, v41))
    {
      isa = sub_AB3770().super.isa;
      v43 = [v41 itemAtIndexPath:isa];
    }

    else
    {
      v43 = 0;
    }

    v45 = v78;
    v46 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v46 + 48))(a2, v23, v43, v45, v46);
    swift_unknownObjectRelease();
    v44 = __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v44 = sub_12E1C(v74, &unk_E04550);
  }

  v47 = (*&stru_158.sectname[swift_isaMask & *v37])(v44);
  if (v47)
  {
    v48 = v47;
    v49 = [v47 results];

    if (v49)
    {
      v50 = sub_AB3770().super.isa;
      v51 = [v49 itemAtIndexPath:v50];

      if (v51)
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (!v49)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v49 = 0;
      }
    }
  }

  else
  {
    v49 = 0;
  }

  swift_getObjectType();
  v52 = swift_conformsToProtocol2();
  if (v52)
  {
    if (a2)
    {
      v53 = v52;
      v54 = (*(&stru_3D8.flags + (swift_isaMask & *v37)))();
      if (v54)
      {
        v55 = v54;
        v56 = swift_getObjectType();
        v57 = a2;
        sub_178C4(v57, v23, v55, v56, v53);
      }
    }
  }

  swift_getObjectType();
  v58 = swift_conformsToProtocol2();
  if (!v58 || !a2)
  {
    goto LABEL_40;
  }

  v59 = v58;
  if (!v49 || !*(v37 + qword_DFE298))
  {
    v65 = swift_getObjectType();
    v66 = *(v59 + 16);
    v67 = a2;
    v66(0, v65, v59);

    v36 = v73;
LABEL_40:
    if (!v49)
    {
      (*(v36 + 8))(v23, v11);
      return;
    }

    v62 = v49;
    goto LABEL_42;
  }

  v60 = swift_getObjectType();
  v61 = a2;

  v62 = v49;
  v63 = sub_2FBDBC(v62);
  (*(v59 + 16))(v63 & 1, v60, v59);
  v64 = sub_304104(v62);
  (*(v59 + 40))(v64 & 1, v60, v59);

  v23 = v72;

  v36 = v73;
LABEL_42:
  if (*(v37 + qword_DFE298))
  {

    v68 = sub_2FC35C(v62);

    if ((v68 & 1) == 0)
    {
      [a2 setUserInteractionEnabled:0];
      swift_getObjectType();
      v69 = swift_conformsToProtocol2();
      if (v69)
      {
        if (a2)
        {
          v70 = v69;
          v71 = swift_getObjectType();
          (*(v70 + 16))(1, v71, v70);
        }
      }
    }
  }

  (*(v36 + 8))(v23, v11);
}

void sub_3B41F4(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_12E1C(v22, &unk_E04550);
LABEL_11:
    isa = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];

    return;
  }

  sub_70DF8(v22, v25);
  (*&stru_1F8.segname[(swift_isaMask & *v12) + 16])(a2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v25);
    goto LABEL_11;
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  v14 = (*&stru_158.sectname[swift_isaMask & *v12])(v13);
  if (!v14)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 results];

  if (v16)
  {
    v17 = sub_AB3770().super.isa;
    v18 = [v16 itemAtIndexPath:v17];

LABEL_9:
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 72))(v18, v11, a2, v19, v20);
    (*(v9 + 8))(v11, v8);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  __break(1u);
}

void *sub_3B458C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  v5 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v6 = [v4 dataSource];
  if (!v6 || (v14[0] = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220), (swift_dynamicCast() & 1) == 0))
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_6;
  }

  if (!*(&v12 + 1))
  {
LABEL_6:
    sub_12E1C(&v11, &unk_DFE210);
    return v5;
  }

  sub_70DF8(&v11, v14);
  v7 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v8 = *(v7 + 8);
  v9 = v5;
  v8();

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v5;
}

void sub_3B4724(void *a1)
{
  v2 = v1;
  v3 = qword_DFE2F0;
  v4 = *(v1 + qword_DFE2F0);
  if (v4)
  {
    if (v4 != a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if ((*(v1 + qword_DFE288) & 1) == 0)
  {
LABEL_24:

    return;
  }

LABEL_6:
  if (*(v1 + qword_DFE270) == 1)
  {
    v5 = *(v1 + qword_DFE268);
    *(v1 + qword_DFE268) = a1;

    return;
  }

  v6 = qword_DFE2E0;
  v7 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = a1;
  v38 = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (([v1 isViewLoaded] & 1) == 0 && v38)
  {
    (*&stru_158.segname[(swift_isaMask & *v1) + 8])(v38, 0);
    v10 = qword_DFE290;
    v11 = *(v1 + qword_DFE290);
    if (v11)
    {
      v12 = *(v11 + 24);
      *(v11 + 24) = v38;
      v13 = v8;

      sub_380968();
    }

    v14 = *(v2 + v3);
    *(v2 + v3) = v38;
    v36 = v8;

    v15 = *(v2 + v6);
    *(v2 + v6) = 0;

    v16 = *(v2 + v10);
    if (v16)
    {
      v17 = *(v16 + 24);
      *(v16 + 24) = v38;
      v18 = v36;

      sub_380968();
    }

    v19 = (*(&stru_3D8.flags + (swift_isaMask & *v2)))();
    if (v19)
    {
      v20 = *(v19 + 96);
      *(v19 + 96) = v38;
      v21 = v36;
    }

    v22 = *(v2 + qword_DFE298);
    if (v22)
    {
      v23 = *(v22 + 32);
      *(v22 + 32) = v38;
      v24 = v36;
    }

    if (![v2 isViewLoaded])
    {
      goto LABEL_23;
    }

    sub_3B856C();
    [v2 loadViewIfNeeded];
    v25 = *(v2 + qword_DFE2F8);
    if (v25)
    {
      [v25 reloadData];
LABEL_23:
      sub_3DDBA4();

      a1 = v37;
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
    return;
  }

  [v1 loadViewIfNeeded];
  v26 = *(v1 + qword_DFE2F8);
  if (!v26)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v38)
  {
    v27 = *(v1 + v3);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v38;
    v29[4] = v26;
    v29[5] = sub_3E0FE8;
    v29[6] = v9;
    aBlock[4] = sub_3E1040;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_780C4;
    aBlock[3] = &block_descriptor_372;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    v32 = v8;
    v33 = v26;
    v34 = v32;
    v35 = v33;

    [v34 getChangeDetailsFromPreviousResponse:v31 completion:v30];

    _Block_release(v30);
  }

  else
  {
  }
}

uint64_t sub_3B4C14(char a1)
{
  v3 = a1 & 1;
  v4 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    result = [v1 isViewLoaded];
    if (result)
    {
      if (*(v1 + v4) == 1)
      {
        result = [v1 loadViewIfNeeded];
        v7 = *(v1 + qword_DFE2F8);
        if (!v7)
        {
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320);
        swift_allocObject();
        v8 = sub_2F5ADC(v7);
      }

      else
      {
        v8 = 0;
      }

      return (*(&stru_3D8.reserved2 + (swift_isaMask & *v1)))(v8);
    }
  }

  return result;
}

void sub_3B4D34(void *a1, void *a2)
{
  v435 = a2;
  v493 = sub_AB36B0();
  v434 = *(v493 - 1);
  __chkstk_darwin(v493);
  v492 = &v422 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3C0);
  v4 = __chkstk_darwin(v433);
  v466 = &v422 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v469 = &v422 - v7;
  __chkstk_darwin(v6);
  v470 = &v422 - v8;
  v9 = sub_AB3730();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v422 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v422 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v422 - v18;
  v20 = __chkstk_darwin(v17);
  v428 = &v422 - v21;
  v22 = __chkstk_darwin(v20);
  v431 = &v422 - v23;
  v24 = __chkstk_darwin(v22);
  v427 = &v422 - v25;
  v26 = __chkstk_darwin(v24);
  v430 = &v422 - v27;
  v28 = __chkstk_darwin(v26);
  v432 = &v422 - v29;
  v30 = __chkstk_darwin(v28);
  v429 = &v422 - v31;
  __chkstk_darwin(v30);
  v33 = &v422 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v35 = __chkstk_darwin(v34 - 8);
  v37 = &v422 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v40 = &v422 - v39;
  v41 = __chkstk_darwin(v38);
  v463 = &v422 - v42;
  v43 = __chkstk_darwin(v41);
  v451 = &v422 - v44;
  v45 = __chkstk_darwin(v43);
  v450 = &v422 - v46;
  v47 = __chkstk_darwin(v45);
  v465 = &v422 - v48;
  v49 = __chkstk_darwin(v47);
  v468 = &v422 - v50;
  v51 = __chkstk_darwin(v49);
  v454 = &v422 - v52;
  __chkstk_darwin(v51);
  v453 = &v422 - v53;
  v54 = sub_AB3820();
  v499 = *(v54 - 8);
  v55 = __chkstk_darwin(v54);
  v448 = &v422 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v471 = &v422 - v58;
  v59 = __chkstk_darwin(v57);
  v482 = &v422 - v60;
  v61 = __chkstk_darwin(v59);
  v479 = &v422 - v62;
  v63 = __chkstk_darwin(v61);
  v440 = &v422 - v64;
  v65 = __chkstk_darwin(v63);
  v66 = __chkstk_darwin(v65);
  v485 = &v422 - v67;
  v68 = __chkstk_darwin(v66);
  v484 = &v422 - v69;
  v70 = __chkstk_darwin(v68);
  v496 = (&v422 - v71);
  v72 = __chkstk_darwin(v70);
  v462 = &v422 - v73;
  v74 = __chkstk_darwin(v72);
  v449 = &v422 - v75;
  v76 = __chkstk_darwin(v74);
  v477 = &v422 - v77;
  v78 = __chkstk_darwin(v76);
  v483 = (&v422 - v79);
  v80 = __chkstk_darwin(v78);
  v476 = &v422 - v81;
  v82 = __chkstk_darwin(v80);
  v441 = &v422 - v83;
  v84 = __chkstk_darwin(v82);
  v475 = &v422 - v85;
  v86 = __chkstk_darwin(v84);
  v488 = &v422 - v87;
  v88 = __chkstk_darwin(v86);
  v487 = (&v422 - v89);
  v90 = __chkstk_darwin(v88);
  v497 = &v422 - v91;
  v92 = __chkstk_darwin(v90);
  v464 = &v422 - v93;
  v94 = __chkstk_darwin(v92);
  v490 = &v422 - v95;
  v96 = __chkstk_darwin(v94);
  v489 = &v422 - v97;
  v98 = __chkstk_darwin(v96);
  v498 = &v422 - v99;
  v100 = __chkstk_darwin(v98);
  v467 = &v422 - v101;
  v102 = __chkstk_darwin(v100);
  v452 = (&v422 - v103);
  v104 = __chkstk_darwin(v102);
  v478 = (&v422 - v105);
  v106 = __chkstk_darwin(v104);
  v486 = &v422 - v107;
  v108 = __chkstk_darwin(v106);
  v455 = &v422 - v109;
  v110 = __chkstk_darwin(v108);
  v442 = (&v422 - v111);
  __chkstk_darwin(v110);
  v456 = &v422 - v113;
  if (!a1)
  {
    return;
  }

  v437 = v33;
  v426 = v16;
  v424 = v19;
  v425 = v13;
  v438 = v10;
  v491 = v112;
  v443 = v40;
  v446 = v37;
  v114 = swift_allocObject();
  v115 = a1;
  v116 = sub_971EC(_swiftEmptyArrayStorage);
  v436 = v114;
  *(v114 + 16) = v116;
  v117 = (v114 + 16);
  v118 = [v115 deletedItemIndexPaths];
  v119 = *(sub_AB9760() + 16);

  v120 = v115;

  v457 = v115;
  v494 = v117;
  v495 = v9;
  if (v119)
  {
    v423 = [v115 deletedItemIndexPaths];
    v121 = sub_AB9760();
    v122 = v121;
    v447 = *(v121 + 16);
    if (v447)
    {
      v123 = 0;
      v481 = (v499 + 16);
      v474 = (v499 + 56);
      v473 = (v499 + 48);
      v460 = (v499 + 32);
      v439 = (v499 + 40);
      v444 = (v499 + 8);
      v461 = _swiftEmptyArrayStorage;
      v124 = v455;
      v125 = v456;
      v445 = v121;
      do
      {
        if (v123 >= *(v122 + 16))
        {
          goto LABEL_199;
        }

        v459 = (*(v499 + 80) + 32) & ~*(v499 + 80);
        v480 = *(v499 + 72);
        v126 = *(v499 + 16);
        v126(v125, v122 + v459 + v480 * v123, v54);
        swift_beginAccess();
        v127 = *v117;
        if (*(*v117 + 16))
        {
          v128 = sub_2EC048(v125);
          v129 = v454;
          v130 = v473;
          if (v131)
          {
            v126(v454, *(v127 + 56) + v128 * v480, v54);
            v132 = 0;
          }

          else
          {
            v132 = 1;
          }
        }

        else
        {
          v132 = 1;
          v129 = v454;
          v130 = v473;
        }

        v133 = *v474;
        (*v474)(v129, v132, 1, v54);
        swift_endAccess();
        v134 = *v130;
        v135 = (*v130)(v129, 1, v54);
        v472 = v133;
        if (v135 == 1)
        {
          (*(&stru_1F8.size + (swift_isaMask & *v458)))(v125);
          v136 = v134(v129, 1, v54);
          v137 = v460;
          if (v136 != 1)
          {
            sub_12E1C(v129, &unk_DE8E20);
          }
        }

        else
        {
          v137 = v460;
          (*v460)(v124, v129, v54);
        }

        v138 = v486;
        v126(v486, v125, v54);
        swift_beginAccess();
        v126(v478, v124, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v500 = *v117;
        v140 = v500;
        *v117 = 0x8000000000000000;
        v142 = sub_2EC048(v138);
        v143 = v140[2];
        v144 = (v141 & 1) == 0;
        v145 = v143 + v144;
        if (__OFADD__(v143, v144))
        {
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        v146 = v141;
        if (v140[3] >= v145)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_33159C();
          }
        }

        else
        {
          sub_327E54(v145, isUniquelyReferenced_nonNull_native);
          v147 = sub_2EC048(v486);
          if ((v146 & 1) != (v148 & 1))
          {
            goto LABEL_211;
          }

          v142 = v147;
        }

        v125 = v456;
        v149 = v500;
        if (v146)
        {
          (*v439)(v500[7] + v142 * v480, v478, v54);
        }

        else
        {
          v500[(v142 >> 6) + 8] |= 1 << v142;
          v150 = v142 * v480;
          v126((v149[6] + v150), v486, v54);
          (*v137)(v149[7] + v150, v478, v54);
          v151 = v149[2];
          v152 = __OFADD__(v151, 1);
          v153 = v151 + 1;
          if (v152)
          {
            goto LABEL_208;
          }

          v149[2] = v153;
        }

        v154 = *v444;
        (*v444)(v486, v54);
        *v494 = v149;
        swift_endAccess();
        v155 = *v137;
        v156 = v453;
        v124 = v455;
        (*v137)(v453, v455, v54);
        (v472)(v156, 0, 1, v54);
        v154(v125, v54);
        if (v134(v156, 1, v54) == 1)
        {
          sub_12E1C(v156, &unk_DE8E20);
          v120 = v457;
          v122 = v445;
          v117 = v494;
        }

        else
        {
          v157 = v442;
          v155(v442, v156, v54);
          v155(v452, v157, v54);
          v158 = swift_isUniquelyReferenced_nonNull_native();
          v122 = v445;
          if ((v158 & 1) == 0)
          {
            v461 = sub_6AE4C(0, v461[2] + 1, 1, v461);
          }

          v117 = v494;
          v160 = v461[2];
          v159 = v461[3];
          if (v160 >= v159 >> 1)
          {
            v461 = sub_6AE4C(v159 > 1, v160 + 1, 1, v461);
          }

          v161 = v461;
          v461[2] = v160 + 1;
          v155(v161 + v459 + v160 * v480, v452, v54);
          v120 = v457;
        }

        ++v123;
      }

      while (v447 != v123);
    }

    else
    {
      v461 = _swiftEmptyArrayStorage;
    }

    isa = sub_AB9740().super.isa;

    [v435 deleteItemsAtIndexPaths:isa];

    v9 = v495;
  }

  v163 = [v120 deletedSections];
  v164 = v437;
  sub_AB36D0();
  v165 = sub_AB36E0();
  v166 = v438;
  v168 = v438 + 8;
  v167 = *(v438 + 8);
  v167(v164, v9);

  v459 = v168;
  v460 = v167;
  if (v165 >= 1)
  {
    v169 = [v457 deletedSections];
    v170 = v432;
    v456 = v169;
    sub_AB36D0();
    (*(v166 + 16))(v164, v170, v9);
    sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet);
    v171 = v470;
    sub_AB95A0();
    v481 = *(v433 + 36);
    v478 = sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet);
    v480 = (v434 + 8);
    v474 = (v499 + 56);
    v486 = (v499 + 16);
    v473 = (v499 + 48);
    v172 = (v499 + 32);
    v461 = (v499 + 40);
    v472 = (v499 + 8);
    for (i = _swiftEmptyArrayStorage; ; *&i[8 * v208 + 32] = v205)
    {
      v174 = v492;
      sub_AB9CA0();
      sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
      v175 = v493;
      v176 = sub_AB91C0();
      (*v480)(v174, v175);
      if (v176)
      {
        break;
      }

      v177 = sub_AB9D80();
      v177(&aBlock, 0);
      sub_AB9CB0();
      v178 = v498;
      sub_AB3810();
      v179 = v494;
      swift_beginAccess();
      v180 = *v179;
      if (*(*v179 + 16))
      {
        v181 = sub_2EC048(v178);
        v182 = v468;
        v183 = v489;
        if (v184)
        {
          (*(v499 + 16))(v468, *(v180 + 56) + *(v499 + 72) * v181, v54);
          v185 = 0;
        }

        else
        {
          v185 = 1;
        }
      }

      else
      {
        v185 = 1;
        v182 = v468;
        v183 = v489;
      }

      (*v474)(v182, v185, 1, v54);
      swift_endAccess();
      v186 = *v473;
      if ((*v473)(v182, 1, v54) == 1)
      {
        (*(&stru_1F8.size + (swift_isaMask & *v458)))(v178);
        if (v186(v182, 1, v54) != 1)
        {
          sub_12E1C(v182, &unk_DE8E20);
        }
      }

      else
      {
        (*v172)(v183, v182, v54);
      }

      swift_beginAccess();
      v187 = *v486;
      (*v486)(v490, v183, v54);
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v500 = *v179;
      v189 = v500;
      *v179 = 0x8000000000000000;
      v191 = sub_2EC048(v498);
      v192 = v189[2];
      v193 = (v190 & 1) == 0;
      v194 = v192 + v193;
      if (__OFADD__(v192, v193))
      {
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v195 = v190;
      if (v189[3] >= v194)
      {
        if ((v188 & 1) == 0)
        {
          sub_33159C();
        }
      }

      else
      {
        sub_327E54(v194, v188);
        v196 = sub_2EC048(v498);
        if ((v195 & 1) != (v197 & 1))
        {
          goto LABEL_211;
        }

        v191 = v196;
      }

      v171 = v470;
      v198 = v500;
      if (v195)
      {
        (*(v499 + 40))(v500[7] + *(v499 + 72) * v191, v490, v54);
      }

      else
      {
        v500[(v191 >> 6) + 8] |= 1 << v191;
        v199 = v499;
        v200 = *(v499 + 72) * v191;
        v187(v198[6] + v200, v498, v54);
        (*(v199 + 32))(v198[7] + v200, v490, v54);
        v201 = v198[2];
        v152 = __OFADD__(v201, 1);
        v202 = v201 + 1;
        if (v152)
        {
          goto LABEL_205;
        }

        v198[2] = v202;
      }

      *v179 = v198;
      swift_endAccess();
      v203 = v467;
      (*v172)(v467, v489, v54);
      v204 = *v472;
      (*v472)(v498, v54);
      v205 = IndexPath.safeSection.getter();
      v204(v203, v54);
      v206 = swift_isUniquelyReferenced_nonNull_native();
      v9 = v495;
      if ((v206 & 1) == 0)
      {
        i = sub_6AE9C(0, *(i + 2) + 1, 1, i);
      }

      v208 = *(i + 2);
      v207 = *(i + 3);
      if (v208 >= v207 >> 1)
      {
        i = sub_6AE9C((v207 > 1), v208 + 1, 1, i);
      }

      *(i + 2) = v208 + 1;
    }

    sub_12E1C(v171, &qword_DFE3C0);
    v209 = v460;
    (v460)(v432, v9);

    sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet);
    v210 = v430;
    sub_ABABA0();
    v211 = *(i + 2);
    if (v211)
    {
      v212 = i + 32;
      do
      {
        v213 = *v212++;
        v500 = v213;
        sub_ABAB80();
        --v211;
      }

      while (v211);
    }

    v214 = v429;
    (*(v438 + 32))(v429, v210, v9);
    sub_AB36C0(v215);
    v217 = v216;
    v209(v214, v9);
    [v435 deleteSections:v217];

    v164 = v437;
    v117 = v494;
  }

  v218 = swift_allocObject();
  v219 = v435;
  v220 = v436;
  v218[2] = v435;
  v218[3] = v220;
  v221 = v458;
  v218[4] = v458;
  v505 = sub_3E11D8;
  v506 = v218;
  aBlock = _NSConcreteStackBlock;
  v502 = 1107296256;
  v503 = sub_3020F4;
  v504 = &block_descriptor_403_0;
  v222 = _Block_copy(&aBlock);
  v223 = v219;

  v474 = v221;

  v224 = v457;
  [v457 enumerateSectionMovesUsingBlock:v222];
  _Block_release(v222);
  v225 = [v224 insertedSections];
  sub_AB36D0();
  v226 = sub_AB36E0();
  v227 = v164;
  v228 = v224;
  (v460)(v227, v9);

  v470 = v223;
  if (v226 < 1)
  {
    goto LABEL_98;
  }

  v229 = [v224 insertedSections];
  v230 = v431;
  v472 = v229;
  sub_AB36D0();
  (*(v438 + 16))(v437, v230, v9);
  sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet);
  v231 = v469;
  sub_AB95A0();
  v489 = *(v433 + 36);
  sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet);
  v486 = (v434 + 8);
  v480 = (v499 + 56);
  v490 = (v499 + 16);
  v481 = (v499 + 48);
  v498 = v499 + 32;
  v473 = (v499 + 40);
  v478 = (v499 + 8);
  for (j = _swiftEmptyArrayStorage; ; *&j[8 * v268 + 32] = v265)
  {
    v233 = v492;
    v234 = v495;
    sub_AB9CA0();
    sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
    v235 = v493;
    v236 = sub_AB91C0();
    (*v486)(v233, v235);
    if (v236)
    {
      break;
    }

    v237 = sub_AB9D80();
    v237(&aBlock, 0);
    sub_AB9CB0();
    v238 = v497;
    sub_AB3810();
    swift_beginAccess();
    v239 = *v117;
    if (*(*v117 + 16))
    {
      v240 = sub_2EC048(v238);
      v241 = v465;
      v242 = v487;
      v243 = v481;
      if (v244)
      {
        (*(v499 + 16))(v465, *(v239 + 56) + *(v499 + 72) * v240, v54);
        v245 = 0;
      }

      else
      {
        v245 = 1;
      }
    }

    else
    {
      v245 = 1;
      v241 = v465;
      v242 = v487;
      v243 = v481;
    }

    (*v480)(v241, v245, 1, v54);
    swift_endAccess();
    v246 = *v243;
    if ((*v243)(v241, 1, v54) == 1)
    {
      (*(&stru_1F8.size + (swift_isaMask & *v474)))(v238);
      if (v246(v241, 1, v54) != 1)
      {
        sub_12E1C(v241, &unk_DE8E20);
      }
    }

    else
    {
      (*v498)(v242, v241, v54);
    }

    swift_beginAccess();
    v247 = *v490;
    (*v490)(v488, v242, v54);
    v248 = swift_isUniquelyReferenced_nonNull_native();
    v500 = *v117;
    v249 = v500;
    *v117 = 0x8000000000000000;
    v251 = sub_2EC048(v497);
    v252 = v249[2];
    v253 = (v250 & 1) == 0;
    v254 = v252 + v253;
    if (__OFADD__(v252, v253))
    {
      goto LABEL_197;
    }

    v255 = v250;
    if (v249[3] >= v254)
    {
      if (v248)
      {
        v258 = v500;
        if (v250)
        {
          goto LABEL_85;
        }
      }

      else
      {
        sub_33159C();
        v258 = v500;
        if (v255)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      sub_327E54(v254, v248);
      v256 = sub_2EC048(v497);
      if ((v255 & 1) != (v257 & 1))
      {
        goto LABEL_211;
      }

      v251 = v256;
      v258 = v500;
      if (v255)
      {
LABEL_85:
        (*(v499 + 40))(v258[7] + *(v499 + 72) * v251, v488, v54);
        goto LABEL_89;
      }
    }

    v258[(v251 >> 6) + 8] |= 1 << v251;
    v259 = v499;
    v260 = *(v499 + 72) * v251;
    (v247)(v258[6] + v260, v497, v54);
    (*(v259 + 32))(v258[7] + v260, v488, v54);
    v261 = v258[2];
    v152 = __OFADD__(v261, 1);
    v262 = v261 + 1;
    if (v152)
    {
      goto LABEL_206;
    }

    v258[2] = v262;
LABEL_89:
    *v117 = v258;
    swift_endAccess();
    v263 = v464;
    (*v498)(v464, v487, v54);
    v264 = *v478;
    (*v478)(v497, v54);
    v265 = IndexPath.safeSection.getter();
    v264(v263, v54);
    v266 = swift_isUniquelyReferenced_nonNull_native();
    v231 = v469;
    if ((v266 & 1) == 0)
    {
      j = sub_6AE9C(0, *(j + 2) + 1, 1, j);
    }

    v268 = *(j + 2);
    v267 = *(j + 3);
    if (v268 >= v267 >> 1)
    {
      j = sub_6AE9C((v267 > 1), v268 + 1, 1, j);
    }

    *(j + 2) = v268 + 1;
  }

  sub_12E1C(v231, &qword_DFE3C0);
  (v460)(v431, v234);

  sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet);
  v269 = v428;
  sub_ABABA0();
  v270 = *(j + 2);
  v9 = v234;
  if (v270)
  {
    v271 = j + 32;
    do
    {
      v272 = *v271++;
      v500 = v272;
      sub_ABAB80();
      --v270;
    }

    while (v270);
  }

  v273 = v427;
  (*(v438 + 32))(v427, v269, v9);
  sub_AB36C0(v274);
  v276 = v275;
  (v460)(v273, v9);
  v223 = v470;
  [v470 insertSections:v276];

  v228 = v457;
LABEL_98:
  v277 = [v228 insertedItemIndexPaths];
  v278 = *(sub_AB9760() + 16);

  if (!v278)
  {
LABEL_131:
    v319 = swift_allocObject();
    v320 = v436;
    v319[2] = v223;
    v319[3] = v320;
    v321 = v474;
    v319[4] = v474;
    v505 = sub_3E11E4;
    v506 = v319;
    aBlock = _NSConcreteStackBlock;
    v502 = 1107296256;
    v503 = sub_3022B8;
    v504 = &block_descriptor_409;
    v322 = _Block_copy(&aBlock);
    v480 = v223;

    v483 = v321;

    [v228 enumerateItemMovesUsingBlock:v322];
    _Block_release(v322);
    v323 = [v228 updatedSections];
    v324 = v437;
    sub_AB36D0();
    v325 = sub_AB36E0();
    (v460)(v324, v9);

    if (v325 >= 1)
    {
      v326 = [v228 updatedSections];
      v327 = v426;
      v478 = v326;
      sub_AB36D0();
      (*(v438 + 16))(v324, v327, v9);
      sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet);
      v328 = v466;
      sub_AB95A0();
      v497 = *(v433 + 36);
      v489 = sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet);
      v490 = (v434 + 8);
      v488 = (v499 + 56);
      v498 = v499 + 16;
      v487 = (v499 + 48);
      v329 = (v499 + 32);
      v481 = (v499 + 40);
      v486 = (v499 + 8);
      for (k = _swiftEmptyArrayStorage; ; *&k[8 * v365 + 32] = v362)
      {
        v331 = v492;
        sub_AB9CA0();
        sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index);
        v332 = v493;
        v333 = sub_AB91C0();
        (*v490)(v331, v332);
        if (v333)
        {
          break;
        }

        v334 = sub_AB9D80();
        v334(&aBlock, 0);
        sub_AB9CB0();
        v335 = v496;
        sub_AB3810();
        v336 = v494;
        swift_beginAccess();
        v337 = *v336;
        if (*(*v336 + 16))
        {
          v338 = sub_2EC048(v335);
          v339 = v463;
          v340 = v484;
          if (v341)
          {
            (*(v499 + 16))(v463, *(v337 + 56) + *(v499 + 72) * v338, v54);
            v342 = 0;
          }

          else
          {
            v342 = 1;
          }
        }

        else
        {
          v342 = 1;
          v339 = v463;
          v340 = v484;
        }

        (*v488)(v339, v342, 1, v54);
        swift_endAccess();
        v343 = *v487;
        if ((*v487)(v339, 1, v54) == 1)
        {
          (*(&stru_1F8.size + (swift_isaMask & *v483)))(v335);
          if (v343(v339, 1, v54) != 1)
          {
            sub_12E1C(v339, &unk_DE8E20);
          }
        }

        else
        {
          (*v329)(v340, v339, v54);
        }

        swift_beginAccess();
        v344 = *v498;
        (*v498)(v485, v340, v54);
        v345 = swift_isUniquelyReferenced_nonNull_native();
        v500 = *v336;
        v346 = v500;
        *v336 = 0x8000000000000000;
        v348 = sub_2EC048(v496);
        v349 = v346[2];
        v350 = (v347 & 1) == 0;
        v351 = v349 + v350;
        if (__OFADD__(v349, v350))
        {
          goto LABEL_198;
        }

        v352 = v347;
        if (v346[3] >= v351)
        {
          if ((v345 & 1) == 0)
          {
            sub_33159C();
          }
        }

        else
        {
          sub_327E54(v351, v345);
          v353 = sub_2EC048(v496);
          if ((v352 & 1) != (v354 & 1))
          {
            goto LABEL_211;
          }

          v348 = v353;
        }

        v328 = v466;
        v355 = v500;
        if (v352)
        {
          (*(v499 + 40))(v500[7] + *(v499 + 72) * v348, v485, v54);
        }

        else
        {
          v500[(v348 >> 6) + 8] |= 1 << v348;
          v356 = v499;
          v357 = *(v499 + 72) * v348;
          v344((v355[6] + v357), v496, v54);
          (*(v356 + 32))(v355[7] + v357, v485, v54);
          v358 = v355[2];
          v152 = __OFADD__(v358, 1);
          v359 = v358 + 1;
          if (v152)
          {
            goto LABEL_207;
          }

          v355[2] = v359;
        }

        *v336 = v355;
        swift_endAccess();
        v360 = v462;
        (*v329)(v462, v484, v54);
        v361 = *v486;
        (*v486)(v496, v54);
        v362 = IndexPath.safeSection.getter();
        v361(v360, v54);
        v363 = swift_isUniquelyReferenced_nonNull_native();
        v9 = v495;
        if ((v363 & 1) == 0)
        {
          k = sub_6AE9C(0, *(k + 2) + 1, 1, k);
        }

        v365 = *(k + 2);
        v364 = *(k + 3);
        if (v365 >= v364 >> 1)
        {
          k = sub_6AE9C((v364 > 1), v365 + 1, 1, k);
        }

        *(k + 2) = v365 + 1;
      }

      sub_12E1C(v328, &qword_DFE3C0);
      (v460)(v426, v9);

      sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet);
      v366 = v425;
      sub_ABABA0();
      v367 = *(k + 2);
      if (v367)
      {
        v368 = k + 32;
        do
        {
          v369 = *v368++;
          v500 = v369;
          sub_ABAB80();
          --v367;
        }

        while (v367);
      }

      v370 = v424;
      (*(v438 + 32))(v424, v366, v9);
      sub_AB36C0(v371);
      v373 = v372;
      (v460)(v370, v9);
      [v480 reloadSections:v373];

      v228 = v457;
      v117 = v494;
    }

    v374 = [v228 updatedItemIndexPaths];
    v375 = *(sub_AB9760() + 16);

    if (v375)
    {
      v485 = [v228 updatedItemIndexPaths];
      v376 = sub_AB9760();
      v377 = v376;
      v490 = *(v376 + 16);
      if (v490)
      {
        v378 = 0;
        v379 = v499 + 16;
        v380 = (v499 + 48);
        v496 = (v499 + 32);
        v497 = v499 + 56;
        v486 = (v499 + 40);
        v487 = (v499 + 8);
        v493 = _swiftEmptyArrayStorage;
        v381 = v446;
        v488 = (v499 + 48);
        v489 = v376;
        while (v378 < *(v377 + 16))
        {
          v492 = ((*(v499 + 80) + 32) & ~*(v499 + 80));
          v498 = *(v499 + 72);
          v382 = &v492[v377 + v498 * v378];
          v383 = *(v499 + 16);
          v384 = v491;
          v383(v491, v382, v54);
          swift_beginAccess();
          v385 = *v117;
          if (*(*v117 + 16) && (v386 = sub_2EC048(v384), (v387 & 1) != 0))
          {
            v383(v381, *(v385 + 56) + v386 * v498, v54);
            v388 = 0;
          }

          else
          {
            v388 = 1;
          }

          v389 = *v497;
          (*v497)(v381, v388, 1, v54);
          swift_endAccess();
          v390 = *v380;
          v391 = v390(v381, 1, v54);
          v392 = v479;
          v495 = v389;
          if (v391 == 1)
          {
            (*(&stru_1F8.size + (swift_isaMask & *v483)))(v491);
            v392 = v479;
            if (v390(v381, 1, v54) != 1)
            {
              sub_12E1C(v381, &unk_DE8E20);
            }
          }

          else
          {
            (*v496)(v479, v381, v54);
          }

          v393 = v482;
          v383(v482, v491, v54);
          swift_beginAccess();
          v394 = v379;
          v383(v471, v392, v54);
          v395 = swift_isUniquelyReferenced_nonNull_native();
          v500 = *v117;
          v396 = v500;
          *v117 = 0x8000000000000000;
          v398 = sub_2EC048(v393);
          v399 = v396[2];
          v400 = (v397 & 1) == 0;
          v401 = v399 + v400;
          if (__OFADD__(v399, v400))
          {
            goto LABEL_204;
          }

          v402 = v397;
          if (v396[3] >= v401)
          {
            if ((v395 & 1) == 0)
            {
              sub_33159C();
            }
          }

          else
          {
            sub_327E54(v401, v395);
            v403 = sub_2EC048(v482);
            if ((v402 & 1) != (v404 & 1))
            {
              goto LABEL_211;
            }

            v398 = v403;
          }

          v379 = v394;
          v405 = v500;
          if (v402)
          {
            (*v486)(v500[7] + v398 * v498, v471, v54);
            v406 = v496;
          }

          else
          {
            v500[(v398 >> 6) + 8] |= 1 << v398;
            v407 = v398 * v498;
            v383(v405[6] + v398 * v498, v482, v54);
            v406 = v496;
            (*v496)(v405[7] + v407, v471, v54);
            v408 = v405[2];
            v152 = __OFADD__(v408, 1);
            v409 = v408 + 1;
            if (v152)
            {
              goto LABEL_210;
            }

            v405[2] = v409;
          }

          v410 = *v487;
          (*v487)(v482, v54);
          *v117 = v405;
          swift_endAccess();
          v411 = *v406;
          v412 = v443;
          (*v406)(v443, v479, v54);
          v495(v412, 0, 1, v54);
          v410(v491, v54);
          v413 = v488;
          v414 = v390(v412, 1, v54);
          v380 = v413;
          if (v414 == 1)
          {
            sub_12E1C(v412, &unk_DE8E20);
            v381 = v446;
            v377 = v489;
          }

          else
          {
            v415 = v440;
            v411(v440, v412, v54);
            v411(v448, v415, v54);
            v416 = swift_isUniquelyReferenced_nonNull_native();
            v377 = v489;
            if ((v416 & 1) == 0)
            {
              v493 = sub_6AE4C(0, v493[2] + 1, 1, v493);
            }

            v418 = v493[2];
            v417 = v493[3];
            if (v418 >= v417 >> 1)
            {
              v493 = sub_6AE4C(v417 > 1, v418 + 1, 1, v493);
            }

            v420 = v492;
            v419 = v493;
            v493[2] = v418 + 1;
            v411(&v420[v419 + v418 * v498], v448, v54);
            v381 = v446;
          }

          if (v490 == ++v378)
          {
            goto LABEL_194;
          }
        }

        goto LABEL_203;
      }

      v493 = _swiftEmptyArrayStorage;
LABEL_194:

      v421 = sub_AB9740().super.isa;

      [v480 reloadItemsAtIndexPaths:v421];
    }

    else
    {
    }

    return;
  }

  v469 = [v228 insertedItemIndexPaths];
  v279 = sub_AB9760();
  v280 = v279;
  v481 = v279[2];
  if (!v481)
  {
    v487 = _swiftEmptyArrayStorage;
LABEL_130:

    v318 = sub_AB9740().super.isa;

    v223 = v470;
    [v470 insertItemsAtIndexPaths:v318];

    v228 = v457;
    goto LABEL_131;
  }

  v281 = 0;
  v498 = v499 + 16;
  v490 = (v499 + 56);
  v480 = (v499 + 32);
  v472 = (v499 + 40);
  v473 = (v499 + 8);
  v487 = _swiftEmptyArrayStorage;
  v478 = v279;
  v489 = v499 + 48;
  while (v281 < v280[2])
  {
    v282 = ((*(v499 + 80) + 32) & ~*(v499 + 80));
    v497 = *(v499 + 72);
    v283 = *(v499 + 16);
    v284 = v475;
    v283(v475, &v282[v280 + v497 * v281], v54);
    swift_beginAccess();
    v285 = *v117;
    v286 = *(*v117 + 16);
    v486 = v282;
    if (v286)
    {
      v287 = sub_2EC048(v284);
      v288 = v451;
      v289 = v476;
      if (v290)
      {
        v283(v451, (*(v285 + 56) + v287 * v497), v54);
        v291 = 0;
      }

      else
      {
        v291 = 1;
      }
    }

    else
    {
      v291 = 1;
      v288 = v451;
      v289 = v476;
    }

    v488 = *v490;
    (v488)(v288, v291, 1, v54);
    swift_endAccess();
    v292 = *v489;
    if ((*v489)(v288, 1, v54) == 1)
    {
      (*(&stru_1F8.size + (swift_isaMask & *v474)))(v284);
      v293 = v292(v288, 1, v54);
      v294 = v480;
      if (v293 != 1)
      {
        sub_12E1C(v288, &unk_DE8E20);
      }
    }

    else
    {
      v294 = v480;
      (*v480)(v289, v288, v54);
    }

    v295 = v483;
    v283(v483, v284, v54);
    swift_beginAccess();
    v283(v477, v289, v54);
    v296 = swift_isUniquelyReferenced_nonNull_native();
    v500 = *v117;
    v297 = v500;
    *v117 = 0x8000000000000000;
    v299 = sub_2EC048(v295);
    v300 = v297[2];
    v301 = (v298 & 1) == 0;
    v302 = v300 + v301;
    if (__OFADD__(v300, v301))
    {
      goto LABEL_202;
    }

    v303 = v298;
    if (v297[3] >= v302)
    {
      if ((v296 & 1) == 0)
      {
        sub_33159C();
      }
    }

    else
    {
      sub_327E54(v302, v296);
      v304 = sub_2EC048(v483);
      if ((v303 & 1) != (v305 & 1))
      {
        goto LABEL_211;
      }

      v299 = v304;
    }

    v9 = v495;
    v306 = v500;
    if (v303)
    {
      (*v472)(v500[7] + v299 * v497, v477, v54);
    }

    else
    {
      v500[(v299 >> 6) + 8] |= 1 << v299;
      v307 = v299 * v497;
      v283((v306[6] + v307), v483, v54);
      (*v294)(v306[7] + v307, v477, v54);
      v308 = v306[2];
      v152 = __OFADD__(v308, 1);
      v309 = v308 + 1;
      if (v152)
      {
        goto LABEL_209;
      }

      v306[2] = v309;
    }

    v310 = *v473;
    (*v473)(v483, v54);
    *v117 = v306;
    swift_endAccess();
    v311 = *v294;
    v312 = v450;
    (*v294)(v450, v476, v54);
    (v488)(v312, 0, 1, v54);
    (v310)(v475, v54);
    if (v292(v312, 1, v54) == 1)
    {
      sub_12E1C(v312, &unk_DE8E20);
      v280 = v478;
    }

    else
    {
      v313 = v441;
      v311(v441, v312, v54);
      v311(v449, v313, v54);
      v314 = swift_isUniquelyReferenced_nonNull_native();
      v280 = v478;
      if ((v314 & 1) == 0)
      {
        v487 = sub_6AE4C(0, v487[2] + 1, 1, v487);
      }

      v316 = v487[2];
      v315 = v487[3];
      if (v316 >= v315 >> 1)
      {
        v487 = sub_6AE4C(v315 > 1, v316 + 1, 1, v487);
      }

      v317 = v487;
      v487[2] = v316 + 1;
      v311(&v486[v317 + v316 * v497], v449, v54);
    }

    if (v481 == ++v281)
    {
      goto LABEL_130;
    }
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  sub_ABB4C0();
  __break(1u);
}

void sub_3B856C()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    v15 = v0;
    v5 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0);
    if (swift_dynamicCast())
    {
      sub_70DF8(v13, v16);
      v6 = v17;
      v7 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v7 + 16))(v4, v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_12E1C(v13, &qword_DFE3F8);
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v4;
        sub_3B872C(v9);
      }
    }

    [v5 loadViewIfNeeded];
    v11 = *&v1[v2];
    if (v11)
    {
      v12 = [v11 collectionViewLayout];
      [v12 invalidateLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_3B872C(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 music_inheritedLayoutInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 bounds];
    v14 = CGRectGetWidth(v39) - v9 - v13;
    [v5 bounds];
    v15 = CGRectGetHeight(v40) - v7 - v11;
    v35 = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0);
    if (swift_dynamicCast())
    {
      sub_70DF8(&v32, v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v18 + 24))(v3, v17, v18, v14, v15);
      if ((v20 & 1) == 0)
      {
        [a1 setRowHeight:v19];
      }

      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &unk_E04550);
    }

    v35 = v16;
    v21 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0);
    if (!swift_dynamicCast())
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &qword_DFE3B8);
LABEL_16:

      return;
    }

    sub_70DF8(&v32, v36);
    v22 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v24 = (*(v23 + 24))(v3, v22, v23, v14, v15);
    if (v26)
    {
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v36);
      goto LABEL_16;
    }

    v27 = v25;
    v28 = (*&stru_158.sectname[swift_isaMask & *v21])(v24);
    if (!v28)
    {
LABEL_14:
      [a1 setSectionHeaderHeight:0.0];
      goto LABEL_15;
    }

    v29 = v28;
    v30 = [v28 results];

    if (v30)
    {
      v31 = [v30 numberOfSections];

      if (v31 > 1)
      {
        [a1 setSectionHeaderHeight:v27];
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_3B8A64()
{
  v1 = v0;
  v2 = (*&stru_158.sectname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    if ([v2 isValid])
    {
      v4 = MPModelResponseDidInvalidateNotification;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v3, 1, 1, sub_3E1050, v5);
    }

    else
    {
      v6 = *(v0 + qword_DFE2D0);
      if ((v6 & 1) == 0)
      {
        v1[qword_DFE2D8] = 1;
      }

      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && (v6 & 1) != 0)
      {
        v9 = *(v8 + 8);
        v10 = v8;
        v11 = v1;
        v9(ObjectType, v10);
      }

      v2 = 0;
    }
  }

  *&v1[qword_DFE2C8] = v2;
}

uint64_t sub_3B8C40(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_15F84(a1, v9, &unk_DE9C60);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = sub_4CAA30(a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_12E1C(v9, &unk_DE9C60);
    v7 = _swiftEmptyArrayStorage;
  }

  a3(v7);
}

void sub_3B8DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_15F84(a1, v17, &unk_DE9C60);
  v5 = v18;
  if (v18)
  {
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v7 = sub_4CAA30(a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v17, &unk_DE9C60);
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *&v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView];
  if (v8)
  {
    v9 = v8;

    v11 = sub_2F3AA8(v10);

    v12 = *&v9[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
    *&v9[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v11;
    sub_4CAE8C(v12);
  }

  else
  {
    v13 = [v3 contentView];
    if (!v13)
    {
      v13 = v3;
    }

    v14 = objc_allocWithZone(type metadata accessor for BadgeView());

    v15 = sub_4CABD8(v7, UIFontTextStyleBody);
    v16 = v15;
    sub_42B940(v15);
    [v13 addSubview:v16];
  }
}

void sub_3B8FA0(uint64_t a1, void *a2, char **a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v63 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v12 = [a2 pickableObjectFor:{objc_msgSend(v63, "selectionMode")}];
  if (v12)
  {
    v62 = v12;
    if (sub_2FBDBC(v12))
    {
      if (a3)
      {
        ObjectType = swift_getObjectType();
        v14 = (*(a4 + 32))(ObjectType, a4);
        v15 = swift_getObjectType();
        (*(a4 + 40))(1, v15, a4);
      }

      else
      {
        v14 = 0;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = a3;
      *(v39 + 24) = a4;
      *(v39 + 32) = v14 & 1;
      swift_unknownObjectRetain();
      v40 = [v63 selectionMode];
      v41 = swift_unknownObjectWeakLoadStrong();
      v42 = v41;
      if (v40 == &dword_4)
      {
        if (v41)
        {

          sub_41BCBC(a1, v62, sub_3E12C4, v39);

LABEL_53:

          return;
        }
      }

      else if (v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_AF82B0;
        *(v43 + 32) = v62;

        v44 = v62;
        sub_41BB48(v43, sub_3E12C4, v39);

        goto LABEL_53;
      }

      return;
    }

    goto LABEL_42;
  }

  if ([v63 selectionMode] != &dword_0 + 1 || (v16 = *(v5 + 32)) == 0)
  {
    v38 = v63;
    goto LABEL_44;
  }

  v62 = v16;
  v17 = [v62 results];
  if (!v17)
  {
LABEL_42:

    v38 = v62;
LABEL_44:

    return;
  }

  v18 = v17;

  v19 = [v18 allItems];
  v20 = sub_AB9760();
  v65 = _swiftEmptyArrayStorage;
  v60 = v20;
  if (v20 >> 62)
  {
LABEL_61:
    v59 = v20 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_ABB060();
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_62:
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v59 = v20 & 0xFFFFFFFFFFFFFF8;
  v20 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_62;
  }

LABEL_11:
  v21 = 0;
  v62 = (v60 & 0xC000000000000001);
  v22 = _swiftEmptyArrayStorage;
  v61 = v20;
  v55 = a4;
  v56 = a3;
  v54 = v19;
  v57 = v5;
  do
  {
    v53 = v22;
    v23 = v21;
    a3 = &selRef_performWithResponseHandler_;
    a4 = v59;
    v24 = v60;
    while (1)
    {
      if (v62)
      {
        v20 = sub_3603F8(v23, v24);
        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v23 >= *(a4 + 16))
        {
          goto LABEL_60;
        }

        v20 = swift_unknownObjectRetain();
        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (!v25 || (v19 = v25, (v26 = swift_unknownObjectWeakLoadStrong()) == 0))
      {
        v20 = swift_unknownObjectRelease_n();
        goto LABEL_14;
      }

      v27 = v26;
      v28 = *(v26 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

      v29 = [v19 a3[271]];
      if (!v29)
      {
        swift_unknownObjectRelease_n();

        goto LABEL_30;
      }

      v30 = v29;
      if (([v28 supportsUnavailableContent] & 1) == 0)
      {
        if (qword_DE6838 != -1)
        {
          swift_once();
        }

        if (sub_10AC20(v19) == 5)
        {
          swift_unknownObjectRelease_n();

LABEL_30:
          a4 = v59;
          v24 = v60;
          goto LABEL_14;
        }
      }

      v31 = [v30 musicTypeIdentifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_AB92A0();
        v35 = v34;

        MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
        v37 = v36;
        v58 = &v52;
        v64[0] = v33;
        v64[1] = v35;
        __chkstk_darwin(v36);
        v51[2] = v64;
        LOBYTE(v33) = sub_1B39BC(sub_3040E8, v51, v37);

        if ((v33 & 1) == 0)
        {
          v20 = swift_unknownObjectRelease_n();
          a3 = &selRef_performWithResponseHandler_;
          a4 = v59;
          v24 = v60;
          v5 = v57;
          goto LABEL_14;
        }

        a3 = &selRef_performWithResponseHandler_;
        a4 = v59;
        v24 = v60;
        v5 = v57;
      }

      else
      {

        a4 = v59;
        v24 = v60;
      }

      v19 = [v19 a3[271]];
      v20 = swift_unknownObjectRelease_n();
      if (v19)
      {
        break;
      }

LABEL_14:
      ++v23;
      if (v21 == v61)
      {
        a4 = v55;
        a3 = v56;
        v22 = v53;
        v19 = v54;
        goto LABEL_63;
      }
    }

    sub_AB9730();
    if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    v20 = sub_AB97F0();
    v22 = v65;
    a4 = v55;
    a3 = v56;
    v19 = v54;
  }

  while (v21 != v61);
LABEL_63:

  if (a3)
  {
    v45 = swift_getObjectType();
    (*(a4 + 40))(1, v45, a4);
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 24) = a4;
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v48;

    sub_41BB48(v22, sub_3E1300, v50);
  }

  else
  {
  }
}

void sub_3B97D0(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v65 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v12 = &selRef_performWithResponseHandler_;
  v13 = [a2 pickableObjectFor:{objc_msgSend(v65, "selectionMode")}];
  if (v13)
  {
    v64 = v13;
    if (sub_2FBF94(v13))
    {
      if (a3)
      {
        ObjectType = swift_getObjectType();
        v15 = (*(a4 + 32))(ObjectType, a4);
        v16 = swift_getObjectType();
        (*(a4 + 40))(1, v16, a4);
      }

      else
      {
        v15 = 0;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = a3;
      *(v41 + 24) = a4;
      *(v41 + 32) = v15 & 1;
      swift_unknownObjectRetain();
      v42 = [v65 selectionMode];
      v43 = swift_unknownObjectWeakLoadStrong();
      v44 = v43;
      if (v42 == &dword_4)
      {
        if (v43)
        {

          sub_41BCBC(a1, v64, sub_3E0CF0, v41);

LABEL_51:

          return;
        }
      }

      else if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_AF82B0;
        *(v45 + 32) = v64;

        v46 = v64;
        sub_41BB48(v45, sub_3E0CF0, v41);

        goto LABEL_51;
      }

      return;
    }

    goto LABEL_40;
  }

  if ([v65 selectionMode] != &dword_0 + 1 || (v17 = *(v5 + 32)) == 0)
  {
    v40 = v65;
    goto LABEL_42;
  }

  v64 = v17;
  v18 = [v64 results];
  if (!v18)
  {
LABEL_40:

    v40 = v64;
LABEL_42:

    return;
  }

  v19 = v18;

  v20 = [v19 allItems];
  sub_13C80(0, &unk_DE8EB0);
  v21 = sub_AB9760();
  v67 = _swiftEmptyArrayStorage;
  v60 = v21;
  if (v21 >> 62)
  {
LABEL_59:
    v64 = (v21 & 0xFFFFFFFFFFFFFF8);
    v21 = sub_ABB060();
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_60:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_61;
  }

  v64 = (v21 & 0xFFFFFFFFFFFFFF8);
  v21 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_60;
  }

LABEL_11:
  v22 = 0;
  v62 = v21;
  v63 = v60 & 0xC000000000000001;
  v23 = _swiftEmptyArrayStorage;
  v57 = a4;
  v58 = a3;
  v61 = v5;
  v56 = v20;
  do
  {
    v55 = v23;
    v24 = v22;
    a3 = &OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
    a4 = v60;
    v25 = v62;
    while (1)
    {
      if (v63)
      {
        v21 = sub_3603D0(v24, a4);
      }

      else
      {
        if (v24 >= *(v64 + 2))
        {
          goto LABEL_58;
        }

        v21 = *(a4 + 8 * v24 + 32);
      }

      v20 = v21;
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v27 = swift_unknownObjectWeakLoadStrong();
      if (!v27)
      {
        goto LABEL_16;
      }

      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

      v30 = v12;
      v31 = [v20 v12[271]];
      if (v31)
      {
        break;
      }

      v26 = v29;
LABEL_14:

      v20 = v26;
      v12 = v30;
      v5 = v61;
LABEL_15:
      v25 = v62;
LABEL_16:

LABEL_17:
      ++v24;
      if (v22 == v25)
      {
        a4 = v57;
        a3 = v58;
        v23 = v55;
        v20 = v56;
        goto LABEL_61;
      }
    }

    v26 = v31;
    if (([v29 supportsUnavailableContent] & 1) == 0)
    {
      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      if (sub_10AC20(v20) == 5)
      {

        v20 = v29;
        goto LABEL_14;
      }
    }

    v32 = [v26 musicTypeIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = sub_AB92A0();
      v36 = v35;

      MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
      v38 = v37;
      v59 = &v54;
      v66[0] = v34;
      v66[1] = v36;
      __chkstk_darwin(v37);
      v53[2] = v66;
      LOBYTE(v34) = sub_1B39BC(sub_109BB0, v53, v38);

      a3 = &OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;

      if (v34)
      {
        goto LABEL_33;
      }

      v12 = v30;
      a4 = v60;
      v5 = v61;
      goto LABEL_15;
    }

LABEL_33:
    v12 = v30;
    v39 = [v20 v30[271]];

    if (!v39)
    {
      a4 = v60;
      v5 = v61;
      v25 = v62;
      goto LABEL_17;
    }

    sub_AB9730();
    v5 = v61;
    if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    v21 = sub_AB97F0();
    v23 = v67;
    a4 = v57;
    a3 = v58;
    v20 = v56;
  }

  while (v22 != v62);
LABEL_61:

  if (a3)
  {
    v47 = swift_getObjectType();
    (*(a4 + 40))(1, v47, a4);
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    *(v51 + 24) = a4;
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;

    sub_41BB48(v23, sub_3E0C9C, v52);
  }

  else
  {
  }
}

void sub_3B9F9C(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 24);

      [v3 reloadData];
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v5 + 40))(0, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_3BA070()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for JSSplitWidgetViewController();
    if (swift_dynamicCastClass())
    {
      v3 = sub_CDA4C();
      [v3 bounds];
      CGRectGetWidth(v6);
      sub_471A4();
      v4 = sub_AB38F0();

      return (v4 & 1) == 0;
    }
  }

  return 2;
}

void sub_3BA150(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v10 = sub_AB7C10();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *&Strong[qword_DFE2E0];
    if (a3)
    {
      if (v18)
      {
        v19 = v18 == a3;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_13;
      }
    }

    else if (v18)
    {
LABEL_13:

      return;
    }

    v20 = Strong;
    if (a1)
    {
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a3;
      v21[4] = a1;
      v21[5] = a4;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_3E1108;
      *(v22 + 24) = v21;
      v45 = sub_2D4D0;
      v46 = v22;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1822E0;
      v44 = &block_descriptor_388;
      v23 = _Block_copy(&aBlock);
      v24 = a3;
      v25 = a4;
      v26 = a1;
      v27 = v20;

      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = a5;
      v28[4] = v40;
      v45 = sub_3E1154;
      v46 = v28;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1811AC;
      v44 = &block_descriptor_394;
      v29 = _Block_copy(&aBlock);
      v30 = v27;

      [v25 performBatchUpdates:v23 completion:v29];

      _Block_release(v29);
      _Block_release(v23);
    }

    else
    {
      sub_13C80(0, &qword_DE8ED0);
      v38 = sub_ABA150();
      v31 = swift_allocObject();
      v31[2] = v20;
      v31[3] = a3;
      v31[4] = a4;
      v31[5] = a5;
      v31[6] = v40;
      v45 = sub_3E10A8;
      v46 = v31;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1B5EB4;
      v44 = &block_descriptor_379;
      v37 = _Block_copy(&aBlock);
      v32 = a3;
      v33 = a4;

      v34 = v20;

      sub_AB7C30();
      aBlock = _swiftEmptyArrayStorage;
      sub_3E046C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v35 = v37;
      v26 = v38;
      sub_ABA160();

      (*(v39 + 8))(v12, v10);
      (*(v14 + 8))(v16, v13);
      _Block_release(v35);
    }

    Strong = v26;
    goto LABEL_13;
  }
}

void sub_3BA678(void *a1, void *a2, void *a3, void *a4)
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 1);
  v8 = qword_DFE290;
  v9 = *(a1 + qword_DFE290);
  if (v9)
  {
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    sub_380968();
  }

  v11 = *(a1 + qword_DFE2F0);
  *(a1 + qword_DFE2F0) = a2;
  v12 = a2;

  v13 = *(a1 + qword_DFE2E0);
  *(a1 + qword_DFE2E0) = 0;

  v15 = *(a1 + v8);
  if (v15)
  {
    v16 = *(v15 + 24);
    *(v15 + 24) = a2;
    v17 = v12;

    sub_380968();
  }

  v18 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))(v14);
  if (v18)
  {
    v19 = *(v18 + 96);
    *(v18 + 96) = a2;
    v20 = v12;
  }

  v21 = *(a1 + qword_DFE298);
  if (v21)
  {
    v22 = *(v21 + 32);
    *(v21 + 32) = a2;
    v23 = v12;
  }

  sub_3B4D34(a3, a4);
}

uint64_t sub_3BA820(void *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 0);
  v8 = qword_DFE290;
  v9 = *(a1 + qword_DFE290);
  if (v9)
  {
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    sub_380968();
  }

  v11 = *(a1 + qword_DFE2F0);
  *(a1 + qword_DFE2F0) = a2;
  v12 = a2;

  v13 = *(a1 + qword_DFE2E0);
  *(a1 + qword_DFE2E0) = 0;

  v14 = *(a1 + qword_DFE298);
  if (v14)
  {
    v15 = *(v14 + 32);
    *(v14 + 32) = a2;
    v16 = v12;
  }

  v17 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))();
  if (v17)
  {
    v18 = *(v17 + 96);
    *(v17 + 96) = a2;
    v19 = v12;
  }

  sub_3B856C();
  [a3 reloadData];
  v20 = *(a1 + v8);
  if (v20)
  {
    v21 = *(v20 + 24);
    *(v20 + 24) = a2;
    v22 = v12;

    sub_380968();
  }

  return a4(1);
}

uint64_t sub_3BA9EC(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;

    v5(v7, ObjectType, v3);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && a1)
  {
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = *(v9 + 16);
    v12 = a1;

    v11(v13, v10, v9);
  }

  [a1 setUserInteractionEnabled:1];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v15 = result;
      v16 = swift_getObjectType();
      return (*(v15 + 16))(0, v16, v15);
    }
  }

  return result;
}

uint64_t sub_3BAB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  swift_beginAccess();
  v29 = a2;
  v16 = *(a2 + 16);
  v17 = *(v16 + 16);
  v31 = a1;
  if (v17 && (v18 = sub_2EC048(a1), (v19 & 1) != 0))
  {
    v20 = a4;
    (*(v8 + 16))(v15, *(v16 + 56) + *(v8 + 72) * v18, v7);
    v21 = 0;
  }

  else
  {
    v20 = a4;
    v21 = 1;
  }

  v22 = *(v8 + 56);
  v22(v15, v21, 1, v7);
  swift_endAccess();
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    (*(&stru_1F8.size + (swift_isaMask & *v28)))(v31);
    if (v23(v15, 1, v7) != 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
    }
  }

  else
  {
    (*(v8 + 32))(v20, v15, v7);
  }

  v24 = *(v8 + 16);
  v25 = v30;
  v24(v30, v31, v7);
  v24(v13, v20, v7);
  v22(v13, 0, 1, v7);
  swift_beginAccess();
  sub_2E5064(v13, v25);
  return swift_endAccess();
}

id sub_3BAEA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v20 = a4;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_AB3810();
  sub_3BAB84(v12, a5, a6, v14);
  v15 = *(v9 + 8);
  v15(v12, v8);
  v16 = IndexPath.safeSection.getter();
  v15(v14, v8);
  sub_AB3810();
  sub_3BAB84(v12, a5, a6, v14);
  v15(v12, v8);
  v17 = IndexPath.safeSection.getter();
  v15(v14, v8);
  return [v20 moveSection:v16 toSection:v17];
}

void sub_3BB058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3BAB84(a1, a5, a6, v14);
  isa = sub_AB3770().super.isa;
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_3BAB84(a2, a5, a6, v14);
  v17 = sub_AB3770().super.isa;
  v16(v14, v11);
  [a4 moveItemAtIndexPath:isa toIndexPath:v17];
}

void sub_3BB1AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_DFE2D0);
    if ((v2 & 1) == 0)
    {
      *(Strong + qword_DFE2D8) = 1;
    }

    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    v5 = v2 ^ 1;
    if (!v4)
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      v6 = *(v4 + 8);
      v7 = v4;
      v8 = v1;
      v6(ObjectType, v7);
    }
  }
}

id JSShelfViewController.init(shelf:)(uint64_t a1)
{
  *&v1[qword_E03630] = 0;
  v2 = &v1[qword_E03638];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v1[qword_E03640] = 2;
  v1[direct field offset for JSShelfViewController.verticalStackItemPrefersTopHairline] = 1;
  v1[direct field offset for JSShelfViewController.verticalStackItemPrefersTallerHeader] = 0;
  *&v1[qword_E03658] = 0;
  *&v1[qword_E03660] = 0;
  v3 = &v1[qword_E03668];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[qword_E03670];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[qword_E03678];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[qword_E03680];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[qword_E03688];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v1[qword_E03690];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[qword_E03698];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[qword_E036A0];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v1[qword_E036A8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v1[qword_E036B0];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v1[qword_E036B8];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v1[qword_E036C0];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v1[qword_E036C8];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v1[qword_E036D0];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v1[qword_E036D8];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v1[qword_E036E0];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v1[qword_E036E8];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v1[qword_E036F0];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v1[qword_E036F8];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  *&v1[qword_E03700] = 0;
  *&v1[qword_E03708] = 0;
  v22 = &v1[qword_E03710];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v1[qword_E03718];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v1[qword_E03720];
  *v24 = 0xD000000000000015;
  v24[1] = 0x8000000000B48DF0;
  *&v1[qword_E03728] = 0;
  *&v1[qword_E03730] = 0;
  v1[qword_E03738] = 0;
  v1[qword_E03740] = 2;
  *&v1[qword_E03748] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_E03750] = a1;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for JSShelfViewController(0);
  return objc_msgSendSuper2(&v26, "init");
}

id sub_3BB5B4(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for JSShelfViewController(0);
  v1 = objc_msgSendSuper2(&v3, "viewBackgroundColor");

  return v1;
}

void sub_3BB610(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for JSShelfViewController(0);
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "viewBackgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setViewBackgroundColor:", v6);
  sub_3BB6B0();
}

void sub_3BB6B0()
{
  v1 = v0;
  v2 = [v0 viewBackgroundColor];
  sub_13C80(0, qword_DFAAC0);
  v3 = sub_ABA790();

  if ((v3 & 1) != 0 || ![v1 isViewLoaded])
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v4 = *&v1[qword_DFE2F8];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v1 viewBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v1 viewBackgroundColor];
  [v8 setBackgroundColor:v9];
}

Swift::Void __swiftcall JSShelfViewController.viewDidLoad()()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v24, "viewDidLoad");
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = *&v0[qword_DFE2F0];
    type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
    swift_allocObject();
    v4 = v3;
    v5 = sub_389BA0(v2, v3);
    v6 = [v1 traitCollection];
    v7 = [v6 horizontalSizeClass];

    *(v5 + 224) = v7 == &dword_0 + 2;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v5 + 40);
    *(v5 + 40) = sub_3E01CC;
    *(v5 + 48) = v8;

    sub_17654(v9);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = *(v5 + 80);
    *(v5 + 80) = sub_3E01D4;
    *(v5 + 88) = v10;
    sub_17654(v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = *(v5 + 96);
    *(v5 + 96) = sub_3E01DC;
    *(v5 + 104) = v12;
    sub_17654(v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v5 + 112);
    *(v5 + 112) = sub_3E01E4;
    *(v5 + 120) = v14;
    sub_17654(v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v5 + 64);
    *(v5 + 64) = sub_3E01EC;
    *(v5 + 72) = v16;
    sub_17654(v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = *(v5 + 128);
    *(v5 + 128) = sub_3E01F4;
    *(v5 + 136) = v18;
    sub_17654(v19);

    *&v1[qword_E03658] = v5;

    v20 = *(v5 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0);
    swift_allocObject();
    v21 = ArtworkVideoReportingController.init()();
    (*(*v21 + 136))(v20);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(*v21 + 160))(sub_3E01FC, v22);
    *&v1[qword_E03660] = v21;

    v23 = sub_3BD760();
    *(v23 + 80) = v20;
    if (v20 == 1)
    {
      *(v23 + 144) = 1;
    }

    sub_3B4C14(1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3BBBF0(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E03660];
    if (v4)
    {

      (*(*v4 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_3BD760();

    *(v7 + 80) = a1 & 1;
    if (a1)
    {
      *(v7 + 144) = 1;
    }
  }

  return result;
}

void sub_3BBCE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[qword_E03660];
    if (v6)
    {

      (*(*v6 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

uint64_t sub_3BBDA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E03660];
    if (v4)
    {

      (*(*v4 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_3BD760();

    sub_4A3B04(a1);
  }

  return result;
}

void sub_3BBE90(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E03660];
    if (v4)
    {

      (*(*v4 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_3BBF3C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E03660];
    if (v4)
    {

      (*(*v4 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_3BBFE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_E03660];
    if (v4)
    {

      (*(*v4 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_3BC094()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *&Strong[qword_DFE2F0];
    if (v2)
    {
      v3 = v2;

      v4 = [v3 results];
      if (!v4)
      {
        __break(1u);
        return;
      }

      isa = sub_AB3770().super.isa;
      v6 = [v4 itemAtIndexPath:isa];

      if (v6)
      {
        objc_opt_self();
        v1 = swift_dynamicCastObjCClass();
        if (!v1)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v1 = 0;
  }

LABEL_9:
  v7 = [v1 contentItem];

  if (v7)
  {
    v8 = v7;
    v9 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v9, 1u);

    MetricsEvent.TargetType.init(contentItem:)(v8);
  }
}

void sub_3BC204(void *a1)
{
  v1 = a1;
  JSShelfViewController.viewDidLoad()();
}

Swift::Void __swiftcall JSShelfViewController.viewDidLayoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v9, "viewDidLayoutSubviews");
  if ([v0 isViewLoaded])
  {
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 viewBackgroundColor];
      [v2 setBackgroundColor:v3];

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 viewBackgroundColor];
        [v5 setBackgroundColor:v6];

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:
  if (v0[qword_E03738] != 1)
  {
    goto LABEL_8;
  }

  [v0 loadViewIfNeeded];
  v7 = *&v0[qword_DFE2F8];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_3D1968(v8);

LABEL_8:
  if (*&v0[qword_E03658])
  {

    sub_38AC10();
  }
}

void sub_3BC3D4(void *a1)
{
  v1 = a1;
  JSShelfViewController.viewDidLayoutSubviews()();
}

void JSShelfViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_3E0204;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_125;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_3BC530(int a1, char *a2)
{
  [a2 loadViewIfNeeded];
  v3 = *&a2[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    sub_3D94EC(v4, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_3BC5B0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for JSShelfViewController(0);
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = sub_3E1304;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_297;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall JSShelfViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", isa);
  if ([v1 isViewLoaded])
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
    {
      goto LABEL_8;
    }

    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = [(objc_class *)isa preferredContentSizeCategory];
    v8 = sub_AB92A0();
    v10 = v9;
    if (v8 == sub_AB92A0() && v10 == v11)
    {

      return;
    }

    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
LABEL_8:
      [v1 loadViewIfNeeded];
      v13 = qword_DFE2F8;
      v14 = *&v1[qword_DFE2F8];
      if (v14)
      {
        v15 = v14;
        sub_3D1968(v15);

        [v1 loadViewIfNeeded];
        v16 = *&v1[v13];
        if (v16)
        {
          v17 = [v16 collectionViewLayout];
          sub_3D94EC(v17, 1);

          v18 = qword_E03658;
          v19 = *&v1[qword_E03658];
          if (v19)
          {

            v20 = [v1 traitCollection];
            v21 = [v20 horizontalSizeClass];

            *(v19 + 224) = v21 == &dword_0 + 2;

            if (*&v1[v18])
            {

              sub_38AC10();
            }
          }

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_3BC954(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSShelfViewController.traitCollectionDidChange(_:)(v9);
}

id sub_3BC9C0()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

uint64_t JSShelfViewController.playActivityFeatureName.getter()
{
  v1 = (*(v0 + qword_E03750) + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

Class sub_3BCAC0()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

Swift::Void __swiftcall JSShelfViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v6, "music_viewInheritedLayoutInsetsDidChange");
  [v0 loadViewIfNeeded];
  v1 = qword_DFE2F8;
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    sub_3D94EC(v3, 1);

    [v0 loadViewIfNeeded];
    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      sub_3D1968(v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_3BCC1C(void *a1)
{
  v1 = a1;
  JSShelfViewController.music_viewInheritedLayoutInsetsDidChange()();
}

uint64_t JSShelfViewController.estimatedContentSize(traitCollection:containerSize:)(void *a1, double a2)
{
  if (*&v2[qword_DFE2F0])
  {
    return 0;
  }

  v4 = v2;
  v7 = *&v2[qword_E03730];
  if (v7)
  {
    v8 = v7;
    v9 = sub_E34F8();
    [v9 intrinsicContentSize];
  }

  v10 = JSShelf.sections.getter();
  if (!(v10 >> 62))
  {
    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_38:

    goto LABEL_39;
  }

  v33 = v10;
  v34 = sub_ABB060();
  v10 = v33;
  if (!v34)
  {
    goto LABEL_38;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_360280(0, v10);
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_44;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
  swift_beginAccess();
  v14 = v12[v13];

  if (v14 <= 5)
  {
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        sub_3D3C7C();
      }

      else if (v14 == 4)
      {
        sub_3D3DA0();
      }

      else
      {
        v25 = &v4[qword_E03690];
        if (v4[qword_E03690 + 16])
        {
          v26 = [v4 traitCollection];
          sub_3D2824();
          v28 = v27;
          sub_F6A78();
          v30 = v29;

          sub_2F48A4(v30, v26, 0, 0);

          [v26 displayScale];
          sub_AB3A00();
          v32 = v31;

          *v25 = v28;
          *(v25 + 1) = v32;
          v25[16] = 0;
        }
      }

      return *&a2;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v15 = &v4[qword_E03678];
        if (v4[qword_E03678 + 16])
        {
          sub_3D2CD4();
          v17 = v16;
          v18 = [v4 traitCollection];
          v19 = sub_1FE9B0(v18, 0, v17);

          *v15 = v17;
          v15[1] = v19;
          *(v15 + 16) = 0;
        }
      }

      else
      {
        sub_3D341C();
      }

      return *&a2;
    }

    goto LABEL_27;
  }

  if (v14 <= 8)
  {
    if (v14 != 6)
    {
      if (v14 == 7)
      {
        v20 = &v4[qword_E036E8];
        if (v4[qword_E036E8 + 16])
        {
          v21 = [v4 traitCollection];
          sub_3D29C8();
          v23 = v22;
          v24 = sub_11866C(v21, v22);
          *v20 = v23;
          v20[1] = v24;
          *(v20 + 16) = 0;
        }
      }

      else
      {
        sub_3D23E8();
      }

      return *&a2;
    }

LABEL_27:
    sub_3D210C();
    return *&a2;
  }

  if (v14 == 9)
  {
    sub_3D2668();
    return *&a2;
  }

  if (v14 != 10)
  {
LABEL_39:
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v36 = v35;

    sub_2F48A4(v36, a1, 0, 0);

    if (qword_DE6948 == -1)
    {
LABEL_40:
      [a1 displayScale];
      sub_AB3A00();

      return *&a2;
    }

LABEL_44:
    swift_once();
    goto LABEL_40;
  }

  sub_3D32FC();
  return *&a2;
}

Swift::Void __swiftcall JSShelfViewController.configureCollectionView(_:)(UICollectionView a1)
{
  sub_3B316C(a1.super.super.super.super.isa);
  v3 = [v1 viewBackgroundColor];
  [(objc_class *)a1.super.super.super.super.isa setBackgroundColor:v3];

  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceVertical:0];
  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceHorizontal:1];
  [(objc_class *)a1.super.super.super.super.isa setShowsHorizontalScrollIndicator:0];
  [(objc_class *)a1.super.super.super.super.isa setShowsVerticalScrollIndicator:0];
  type metadata accessor for AlbumCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SongCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedMusicVideoVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for MusicVideoVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RankedMusicVideoVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for PersonVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CuratorActivityCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedPlaylistCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedSongCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RadioStationCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedRadioShowCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CustomRoomAlbumCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for CustomRoomMusicVideoCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for FeaturedShowcaseCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SocialPersonHorizontalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for SocialPersonVerticalCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for RadioShowCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  type metadata accessor for PosterCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  sub_13C80(0, &qword_DFE230);
  UICollectionView.register<A>(_:reuseIdentifier:)();
  type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  type metadata accessor for SocialProfilesAccessoryView();
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  sub_3D1968(a1.super.super.super.super.isa);
}

uint64_t sub_3BD6D0(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v4 = *(v1 + v2);
  if (v4)
  {
    *(v4 + 24) = &off_D0FD28;

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void *sub_3BD760()
{
  v1 = qword_E03630;
  if (*&v0[qword_E03630])
  {
    v2 = *&v0[qword_E03630];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03838);
    swift_allocObject();
    v2 = sub_2BF520(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_3BD82C@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSShelfModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  [v4 itemAtIndexPath:isa];

  type metadata accessor for JSShelfItem();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v96);
    goto LABEL_37;
  }

  v7 = v6;
  v8 = sub_AB3770().super.isa;
  v54 = v4;
  v53 = [v4 globalIndexForIndexPath:v8];

  v9 = *&stru_3D8.segname[(swift_isaMask & *v7) - 8];
  v10 = swift_unknownObjectRetain();
  v11 = v9(v10);
  v13 = v12;
  v14 = swift_unknownObjectRelease();
  if (v13)
  {
    v49 = v13;
    v50 = v11;
    v15 = sub_27EEA4(v7);
    v51 = v16;
    v52 = v15;
    goto LABEL_15;
  }

  v17 = (*(&stru_338.offset + (swift_isaMask & *v7)))(v14);
  v19 = v18;
  v20 = sub_27EEA4(v7);
  v51 = v21;
  v52 = v20;
  if (v19)
  {
    v49 = v19;
    v50 = v17;
    goto LABEL_15;
  }

  v22 = (*(&stru_B8.reserved2 + (swift_isaMask & *v7)))();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 name];
    if (v24)
    {
      v25 = v24;
      v26 = sub_AB92A0();
      v49 = v27;
      v50 = v26;

      goto LABEL_15;
    }
  }

  v49 = 0;
  v50 = 0;
LABEL_15:
  v28 = *(&stru_338.reserved2 + (swift_isaMask & *v7));
  v29 = swift_unknownObjectRetain_n();
  v30 = v28(v29);
  if (v31)
  {
    v32 = v31;
    v55 = v30;
  }

  else
  {
    v55 = (*(&stru_388.flags + (swift_isaMask & *v7)))(v30);
    v32 = v33;
  }

  if (!(*&stru_428.sectname[swift_isaMask & *v7])())
  {
    goto LABEL_21;
  }

  type metadata accessor for JSGridSection();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    type metadata accessor for JSShelfSection();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = &OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title;
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
LABEL_21:
    v36 = swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v35 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
LABEL_24:
  v37 = (v34 + *v35);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];

  swift_unknownObjectRelease();
  v36 = swift_unknownObjectRelease();
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    goto LABEL_29;
  }

LABEL_28:
  v39 = 0;
  v38 = 0;
LABEL_29:
  if (v32)
  {
    v41 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v41 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v42 = v55;
    }

    else
    {

      v42 = 0;
      v32 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = (*&stru_1A8.sectname[swift_isaMask & *v7])(v36);
  swift_unknownObjectRelease();

  *&v56 = v52;
  *(&v56 + 1) = v51;
  *&v57 = v50;
  *(&v57 + 1) = v49;
  *&v58 = v7;
  *(&v58 + 1) = v53;
  LOBYTE(v59) = v43 != 0;
  *(&v59 + 1) = 5122;
  *(&v59 + 3) = v94;
  BYTE7(v59) = v95;
  *(&v59 + 1) = 0;
  *&v60 = 0;
  *(&v60 + 1) = v7;
  *&v61 = v39;
  *(&v61 + 1) = v38;
  *&v62 = v42;
  v63 = 0uLL;
  *(&v62 + 1) = v32;
  v64[0] = 1;
  *&v64[1] = *v93;
  *&v64[4] = *&v93[3];
  *&v64[8] = 0;
  *&v64[16] = 0;
  v64[24] = 2;
  v65[0] = v52;
  v65[1] = v51;
  v65[2] = v50;
  v65[3] = v49;
  v65[4] = v7;
  v65[5] = v53;
  v66 = v43 != 0;
  v67 = 5122;
  v69 = v95;
  v68 = v94;
  v70 = 0;
  v71 = 0;
  v72 = v7;
  v73 = v39;
  v74 = v38;
  v75 = v42;
  v76 = v32;
  v77 = 0;
  v78 = 0;
  v79 = 1;
  *&v80[3] = *&v93[3];
  *v80 = *v93;
  v81 = 0;
  v82 = 0;
  v83 = 2;
  sub_465F4(&v56, &v96);
  sub_46650(v65);

  v90 = v62;
  v91 = v63;
  v92[0] = *v64;
  *(v92 + 9) = *&v64[9];
  v86 = v58;
  v87 = v59;
  v88 = v60;
  v89 = v61;
  v84 = v56;
  v85 = v57;
  UIScreen.Dimensions.size.getter(*&v56);
  v102 = v90;
  v103 = v91;
  v104[0] = v92[0];
  *(v104 + 9) = *(v92 + 9);
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v96 = v84;
  v97 = v85;
LABEL_37:
  v44 = v103;
  a1[6] = v102;
  a1[7] = v44;
  a1[8] = v104[0];
  *(a1 + 137) = *(v104 + 9);
  v45 = v99;
  a1[2] = v98;
  a1[3] = v45;
  v46 = v101;
  a1[4] = v100;
  a1[5] = v46;
  result = *&v96;
  v48 = v97;
  *a1 = v96;
  a1[1] = v48;
  return result;
}

Swift::Void __swiftcall JSShelfViewController.reloadModelResponse()()
{
  v1 = *(v0 + qword_E03750);
  v2 = type metadata accessor for JSShelfModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel] = v1;
  v72.receiver = v3;
  v72.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v72, "init");
  sub_13C80(0, &qword_DFC880);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AFFB00;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_AB92A0();
  *(v10 + 72) = v13;
  *(v10 + 80) = sub_AB92A0();
  *(v10 + 88) = v14;
  *(v10 + 96) = sub_AB92A0();
  *(v10 + 104) = v15;
  *(v10 + 112) = sub_AB92A0();
  *(v10 + 120) = v16;
  *(v10 + 128) = sub_AB92A0();
  *(v10 + 136) = v17;
  isa = sub_AB9740().super.isa;
  v19 = [objc_opt_self() propertySetWithProperties:isa];

  v69 = v8;
  [v8 setSectionProperties:v19];

  v20 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF8810;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_AB92A0();
  *(v21 + 56) = v23;
  *(v21 + 64) = sub_AB92A0();
  *(v21 + 72) = v24;
  *(v21 + 80) = sub_AB92A0();
  *(v21 + 88) = v25;
  *(v21 + 96) = sub_AB92A0();
  *(v21 + 104) = v26;
  *(v21 + 112) = sub_AB92A0();
  *(v21 + 120) = v27;
  *(v21 + 128) = sub_AB92A0();
  *(v21 + 136) = v28;
  *(v21 + 144) = sub_AB92A0();
  *(v21 + 152) = v29;
  *(v21 + 160) = sub_AB92A0();
  *(v21 + 168) = v30;
  *(v21 + 176) = sub_AB92A0();
  *(v21 + 184) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_AF4EC0;
  *(v34 + 32) = sub_AB92A0();
  *(v34 + 40) = v35;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_B0CE50;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_3DB858();
  *(v36 + 56) = sub_AB92A0();
  *(v36 + 64) = v38;
  *(v36 + 72) = sub_3DB858();
  *(v36 + 80) = sub_AB92A0();
  *(v36 + 88) = v39;
  *(v36 + 96) = sub_3DC0D0();
  *(v36 + 104) = sub_AB92A0();
  *(v36 + 112) = v40;
  *(v36 + 120) = sub_3DC0D0();
  *(v36 + 128) = sub_AB92A0();
  *(v36 + 136) = v41;
  *(v36 + 144) = sub_3DC3BC();
  *(v36 + 152) = sub_AB92A0();
  *(v36 + 160) = v42;
  *(v36 + 168) = sub_3DBCF8();
  *(v36 + 176) = sub_AB92A0();
  *(v36 + 184) = v43;
  *(v36 + 192) = sub_3DBCF8();
  *(v36 + 200) = sub_AB92A0();
  *(v36 + 208) = v44;
  *(v36 + 216) = sub_3DC5B0();
  *(v36 + 224) = sub_AB92A0();
  *(v36 + 232) = v45;
  *(v36 + 240) = sub_3DC5B0();
  *(v36 + 248) = sub_AB92A0();
  *(v36 + 256) = v46;
  *(v36 + 264) = sub_3DC9FC();
  *(v36 + 272) = sub_AB92A0();
  *(v36 + 280) = v47;
  *(v36 + 288) = sub_3DC9FC();
  *(v36 + 296) = sub_AB92A0();
  *(v36 + 304) = v48;
  *(v36 + 312) = sub_3DCBF0();
  *(v36 + 320) = sub_AB92A0();
  *(v36 + 328) = v49;
  *(v36 + 336) = sub_3DCBF0();
  *(v36 + 344) = sub_AB92A0();
  *(v36 + 352) = v50;
  *(v36 + 360) = sub_3DD0AC();
  *(v36 + 368) = sub_AB92A0();
  *(v36 + 376) = v51;
  *(v36 + 384) = sub_3DD0AC();
  *(v36 + 392) = sub_AB92A0();
  *(v36 + 400) = v52;
  *(v36 + 408) = sub_3DD3D4();
  *(v36 + 416) = sub_AB92A0();
  *(v36 + 424) = v53;
  *(v36 + 432) = sub_3DD3D4();
  *(v36 + 440) = sub_AB92A0();
  *(v36 + 448) = v54;
  *(v36 + 456) = sub_3DD9B8();
  *(v36 + 464) = sub_AB92A0();
  *(v36 + 472) = v55;
  *(v36 + 480) = sub_3DD9B8();
  *(v36 + 488) = sub_AB92A0();
  *(v36 + 496) = v56;
  *(v36 + 504) = sub_3DD72C();
  *(v36 + 512) = sub_AB92A0();
  *(v36 + 520) = v57;
  *(v36 + 528) = sub_3DD72C();
  sub_96EA4(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v58 = objc_allocWithZone(MPPropertySet);
  v59 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v60 = sub_AB8FD0().super.isa;

  v61 = [v58 initWithProperties:v59 relationships:v60];

  *(inited + 48) = v61;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v62 = objc_allocWithZone(MPPropertySet);
  v63 = sub_AB9740().super.isa;

  v64 = sub_AB8FD0().super.isa;

  v65 = [v62 initWithProperties:v63 relationships:v64];

  [v69 setItemProperties:v65];
  v66 = swift_allocObject();
  *(v66 + 16) = v70;
  aBlock[4] = sub_3E025C;
  aBlock[5] = v66;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_15_2;
  v67 = _Block_copy(aBlock);
  v68 = v70;

  [v69 performWithResponseHandler:v67];
  _Block_release(v67);
}

uint64_t sub_3BE6B4(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3E1230, v3);
}

uint64_t sub_3BE784(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + qword_DFE2F0);
  if (v5)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760);
      v6 = v5;
      v7 = a2;
      v8 = sub_ABA790();

      if (v8)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (a2)
  {
LABEL_7:
    v9 = &v4[qword_E03710];
    *v9 = 0;
    v9[8] = 1;
    v10 = &v4[qword_E03718];
    *v10 = 0;
    v10[8] = 1;
  }

LABEL_8:
  v11 = a2;
  sub_3B4724(a2);
  v12 = *&v4[qword_E03658];
  if (v12)
  {
    v13 = *(v12 + 216);
    *(v12 + 216) = a2;
    v14 = v11;
  }

  if (*(sub_3BD760() + 81) == 1)
  {
    v16 = sub_4A3ECC();
    if (*v15)
    {
      v17 = v15;

      *v17 = &_swiftEmptySetSingleton;
    }

    (v16)(v18, 0);
  }
}

Swift::Void __swiftcall JSShelfViewController.didApplyModelResponse()()
{
  if ([v0 isViewLoaded])
  {
    sub_3D97A0();
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      sub_3D1968(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void JSShelfViewController.modelResponse.setter(void *a1)
{
  v3 = *(v1 + qword_DFE2F0);
  if (!v3)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760), v4 = v3, v5 = a1, v6 = sub_ABA790(), v4, v5, (v6 & 1) == 0))
  {
LABEL_6:
    v7 = v1 + qword_E03710;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v1 + qword_E03718;
    *v8 = 0;
    *(v8 + 8) = 1;
  }

LABEL_7:

  sub_3B4724(a1);
}

void (*JSShelfViewController.modelResponse.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = qword_DFE2F0;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_3BEAC0;
}

void sub_3BEAC0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if (v4)
      {
        v18 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760);
        v9 = v5;
        v10 = v18;
        v11 = sub_ABA790();

        v4 = v18;
        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v4)
    {
LABEL_18:
      sub_3B4724(v4);
      return;
    }

    v15 = v3 + qword_E03710;
    *v15 = 0;
    *(v15 + 8) = 1;
    v16 = v3 + qword_E03718;
    *v16 = 0;
    *(v16 + 8) = 1;
    goto LABEL_18;
  }

  v17 = v4;
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v12 = v4;
    v4 = v17;
LABEL_12:
    v13 = v3 + qword_E03710;
    *v13 = 0;
    *(v13 + 8) = 1;
    v14 = v3 + qword_E03718;
    *v14 = 0;
    *(v14 + 8) = 1;
    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760);
  v6 = v17;
  v7 = v5;
  v8 = sub_ABA790();

  v4 = v17;
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_3B4724(v4);
}

char *JSShelfViewController.createCustomCollectionViewLayout()()
{
  v2 = *(v0 + qword_E03720);
  v1 = *(v0 + qword_E03720 + 8);
  v3 = type metadata accessor for SocialProfilesShelfCollectionViewLayout(0);
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems] = 0;
  v5 = &v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper];
  *v5 = v2;
  *(v5 + 1) = v1;
  v11.receiver = v4;
  v11.super_class = v3;

  v6 = objc_msgSendSuper2(&v11, "init");
  v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v6[v7] = 0x4024000000000000;
  v8 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  v9 = v6;
  if (sub_AB38D0())
  {
    *&v6[v8] = *&v6[v7];
    [v9 invalidateLayout];
  }

  return v9;
}

void JSShelfViewController.updateMetrics(customCollectionViewLayout:)(char *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v8, v4);
    v5 = v9;
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    *&a1[v6] = v5;
    v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    if (sub_AB38D0())
    {
      *&a1[v7] = *&a1[v6];
      [a1 invalidateLayout];
    }
  }

  sub_3D94EC(a1, 0);
}

void JSShelfViewController.configureForPlayabilityChange(for:modelIndexPath:)(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  if (!v2)
  {
    return;
  }

  type metadata accessor for JSShelfModelResponse();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v25 = v2;
  v6 = [v5 results];
  if (!v6 || (v7 = v6, isa = sub_AB3770().super.isa, v9 = [v7 itemAtIndexPath:isa], v7, isa, !v9))
  {
    v21 = v25;
LABEL_22:

    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 contentItem];
    if (v11)
    {
      v24 = v11;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      if (v13 == 0xFF)
      {

LABEL_21:
        swift_unknownObjectRelease();
        v21 = v24;
        goto LABEL_22;
      }

      v14 = v12;
      v15 = v13;
      v16 = sub_3CE180(v12, v13);
      if (v16 >= 0x100u)
      {
        v17 = v16;
        type metadata accessor for HorizontalLockupCollectionViewCell();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = *&stru_248.segname[(swift_isaMask & *v18) + 16];
          v20 = a1;
          v19(v17 & 1);
LABEL_19:

          goto LABEL_20;
        }

        type metadata accessor for VerticalLockupCollectionViewCell();
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = *(&stru_158.offset + (swift_isaMask & *v22));
          v20 = a1;
          v23(v17 & 1);
          goto LABEL_19;
        }
      }

LABEL_20:

      sub_3EB30(v14, v15);
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();
}

void JSShelfViewController.collectionView(_:cellForItemAt:)(uint64_t a1, char **a2)
{
  v3 = v2;
  v1739 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin(v1739);
  v1740 = &v1718 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1738 = sub_AB3820();
  v1736 = *(v1738 - 8);
  __chkstk_darwin(v1738);
  v1735 = v7;
  v1737 = &v1718 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v10 = &v1718 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB9250();
  __chkstk_darwin(v11 - 8);
  v1734 = &v1718 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB2DC0();
  v1733 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v1718 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v1718 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v1718 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v22 - 8);
  v24 = &v1718 - v23;
  v25 = sub_AB3430();
  __chkstk_darwin(v25);
  v29 = qword_DFE2F0;
  v30 = *&v3[qword_DFE2F0];
  v1742 = v3;
  v1743 = a2;
  if (v30)
  {
    v1729 = &v1718 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v1730 = v28;
    v1731 = v27;
    v1732 = v10;
    v31 = [v30 results];
    if (!v31)
    {
      __break(1u);
      goto LABEL_1163;
    }

    v32 = v31;
    v33 = [v31 sectionAtIndex:sub_AB37F0()];

    if (v33)
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    v34 = 0;
LABEL_7:
    v1741 = v34;
    v35 = *&v3[v29];
    if (!v35)
    {
      goto LABEL_59;
    }

    type metadata accessor for JSShelfModelResponse();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      v38 = v35;
      v1726 = v37;
      v39 = [v37 results];
      if (v39)
      {
        v40 = v39;
        v1727 = a1;
        v1728 = v38;
        isa = sub_AB3770().super.isa;
        v42 = [v40 itemAtIndexPath:isa];

        if (v42)
        {
          v43 = v42;
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          v3 = v1742;
          if (v44)
          {
            v45 = v44;
            v46 = [v44 contentItem];
            if (v46)
            {
              v1725 = v45;
              v1723 = v43;
              v1724 = v46;
              v47 = MPModelStoreBrowseContentItem.kind.getter();
              if (v48 != 0xFF)
              {
                v49 = v47;
                v50 = v48;
                v51 = sub_3CE180(v47, v48);
                v52 = v50;
                v53 = v51;
                v54 = v52;
                if (v52 > 5u)
                {
                  a2 = v1743;
                  if (v52 <= 8u)
                  {
                    v55 = v1728;
                    if (v52 != 6)
                    {
                      if (v52 != 7)
                      {
                        if (v52 == 8)
                        {

                          v56 = v1741;
                          if (v1741)
                          {
                            if ([v1741 uniformCellType] == &dword_0 + 1)
                            {
                              v57 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                              v58 = sub_AB37F0();
                              v59 = sub_3D60D4(v58);
                              if ((v59 & 1) == 0)
                              {
                                v62 = 0;
LABEL_247:
                                AlbumCell.rank.setter(v62, (v59 & 1) == 0);
                                v407 = [v1725 titleText];
                                if (v407 || (v407 = [v49 title]) != 0)
                                {
                                  v408 = v407;
                                  v409 = sub_AB92A0();
                                  v411 = v410;
                                }

                                else
                                {
                                  v409 = 0;
                                  v411 = 0xE000000000000000;
                                }

                                AlbumCell.title.setter(v409, v411);
                                v412 = [v1725 subtitleText];
                                if (v412)
                                {
                                  v413 = v412;
                                  v414 = sub_AB92A0();
                                  v416 = v415;

LABEL_669:
                                  AlbumCell.artistName.setter(v414, v416);
                                  *(&v1745 + 1) = sub_13C80(0, &unk_DE9C00);
                                  v1746 = &off_D17AC0;
                                  *&v1744 = v49;
                                  sub_37C074(v49, 8);
                                  sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                                  sub_12E1C(&v1744, &unk_DE9C60);
                                  AlbumCell.layoutStyle.setter(0);
                                  v104 = v57;
                                  VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

LABEL_815:
LABEL_915:
                                  v221 = v49;
                                  v222 = 8;
                                  goto LABEL_945;
                                }

                                v472 = [v49 show];
                                if (v472)
                                {
                                  v473 = v472;
                                  v474 = [v472 title];
                                  if (v474)
                                  {
                                    v475 = v474;
                                    v414 = sub_AB92A0();
                                    v416 = v476;

                                    goto LABEL_669;
                                  }
                                }

                                v414 = 0;
                                v416 = 0xE000000000000000;
                                goto LABEL_669;
                              }

                              v60 = sub_AB37B0();
                              v61 = __OFADD__(v60, 1);
                              v62 = v60 + 1;
                              if (!v61)
                              {
                                goto LABEL_247;
                              }

                              __break(1u);
                              goto LABEL_25;
                            }

                            if ([v56 uniformCellType] == &dword_4 + 3)
                            {
                              v104 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                              v324 = [v1725 headlineText];
                              if (v324)
                              {
                                v325 = v324;
                                v326 = sub_AB92A0();
                                v328 = v327;
                              }

                              else
                              {
                                v326 = 0;
                                v328 = 0xE000000000000000;
                              }

                              sub_14D848(v326, v328);
                              v671 = [v1725 titleText];
                              if (v671 || (v671 = [v49 title]) != 0)
                              {
                                v672 = v671;
                                v673 = sub_AB92A0();
                                v675 = v674;
                              }

                              else
                              {
                                v673 = 0;
                                v675 = 0xE000000000000000;
                              }

                              sub_14DAA0(v673, v675);
                              v676 = [v1725 subtitleText];
                              if (v676)
                              {
                                v677 = v676;
                                v678 = sub_AB92A0();
                                v680 = v679;

LABEL_811:
                                sub_14DD00(v678, v680);
                                v1221 = [v1725 descriptionText];
                                if (v1221)
                                {
                                  v1222 = v1221;
                                  v1223 = sub_AB92A0();
                                  v1225 = v1224;
                                }

                                else
                                {
                                  v1223 = 0;
                                  v1225 = 0xE000000000000000;
                                }

                                sub_14DFF4(v1223, v1225);
                                sub_14E270(v53 & 1);
                                goto LABEL_815;
                              }

                              v691 = [v49 show];
                              if (v691)
                              {
                                v692 = v691;
                                v693 = [v691 title];
                                if (v693)
                                {
                                  v694 = v693;
                                  v678 = sub_AB92A0();
                                  v680 = v695;

                                  goto LABEL_811;
                                }
                              }

                              v678 = 0;
                              v680 = 0xE000000000000000;
                              goto LABEL_811;
                            }

                            if ([v56 uniformCellType] == &dword_4)
                            {
                              v422 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                              v423 = [v1725 titleText];
                              if (v423)
                              {
                                v424 = v423;
                                v425 = v53;
                              }

                              else
                              {
                                v425 = v53;
                                v980 = [v49 title];
                                if (!v980)
                                {
                                  v981 = 0;
                                  v983 = 0xE000000000000000;
                                  a2 = v1743;
LABEL_645:
                                  v984 = sub_AB37F0();
                                  if (sub_3D60D4(v984))
                                  {
                                    v985 = sub_3D67E4(v981, v983);
                                    v987 = v986;

                                    v988 = v985;
                                    v989 = v987;
                                  }

                                  else
                                  {
                                    v988 = v981;
                                    v989 = v983;
                                  }

                                  sub_171DC0(v988, v989);
                                  v990 = [v1725 subtitleText];
                                  if (v990)
                                  {
                                    v991 = v990;
                                    v992 = sub_AB92A0();
                                    v994 = v993;

LABEL_950:
                                    sub_172064(v992, v994);
                                    v104 = v422;
                                    VerticalLockupCollectionViewCell.isDisabled.setter(v425 & 1);

                                    *(&v1745 + 1) = sub_13C80(0, &unk_DE9C00);
                                    v1746 = &off_D17AC0;
                                    *&v1744 = v49;
                                    sub_37C074(v49, 8);
                                    v1337 = sub_1783BC;
                                    goto LABEL_914;
                                  }

                                  v995 = [v49 show];
                                  if (v995)
                                  {
                                    v996 = v995;
                                    v997 = [v995 title];
                                    if (v997)
                                    {
                                      v998 = v997;
                                      v992 = sub_AB92A0();
                                      v994 = v999;

LABEL_949:
                                      a2 = v1743;
                                      goto LABEL_950;
                                    }
                                  }

                                  v992 = 0;
                                  v994 = 0xE000000000000000;
                                  goto LABEL_949;
                                }

                                v424 = v980;
                                a2 = v1743;
                              }

                              v981 = sub_AB92A0();
                              v983 = v982;

                              goto LABEL_645;
                            }

                            if ([v56 uniformCellType] == &dword_4 + 1)
                            {
                              v579 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                              v580 = [v1725 headlineText];
                              if (v580)
                              {
                                v581 = v580;
                                v582 = sub_AB92A0();
                                v584 = v583;
                              }

                              else
                              {
                                v582 = 0;
                                v584 = 0xE000000000000000;
                              }

                              sub_1E0214(v582, v584);
                              v1173 = [v1725 titleText];
                              if (v1173 || (v1173 = [v49 title]) != 0)
                              {
                                v1174 = v1173;
                                v1175 = sub_AB92A0();
                                v1177 = v1176;
                              }

                              else
                              {
                                v1175 = 0;
                                v1177 = 0xE000000000000000;
                              }

                              sub_1E046C(v1175, v1177);
                              v1178 = [v1725 subtitleText];
                              if (v1178)
                              {
                                v1179 = v1178;
                                v1180 = sub_AB92A0();
                                v1182 = v1181;

LABEL_1146:
                                sub_1E06CC(v1180, v1182);
                                v1698 = [v1725 descriptionText];
                                if (v1698)
                                {
                                  v1699 = v1698;
                                  v1700 = sub_AB92A0();
                                  v1702 = v1701;
                                }

                                else
                                {
                                  v1700 = 0;
                                  v1702 = 0xE000000000000000;
                                }

                                sub_1E09C0(v1700, v1702);
                                v104 = v579;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                                v1033 = v49;
                                v1034 = 8;
                                goto LABEL_664;
                              }

                              v1193 = [v49 show];
                              if (v1193)
                              {
                                v1194 = v1193;
                                v1195 = [v1193 title];
                                if (v1195)
                                {
                                  v1196 = v1195;
                                  v1180 = sub_AB92A0();
                                  v1182 = v1197;

                                  goto LABEL_1146;
                                }
                              }

                              v1180 = 0;
                              v1182 = 0xE000000000000000;
                              goto LABEL_1146;
                            }

                            if ([v1741 uniformCellType] == &dword_8 + 2)
                            {
                              v1722 = v49;
                              v797 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                              v798 = sub_AB3770().super.isa;
                              v799 = [v797 itemAtIndexPath:v798];

                              type metadata accessor for JSPosterItem();
                              v800 = swift_dynamicCastClass();
                              if (v800)
                              {
                                v801 = v800;
                                v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                                v802 = (*&stru_4C8.sectname[swift_isaMask & *v801])();
                                if ((v802 == 2) | v802 & 1)
                                {
                                  v803 = 2;
                                }

                                else
                                {
                                  v803 = 0;
                                }

                                v804 = [v1725 titleText];
                                if (v804)
                                {
                                  v805 = v804;
                                  v806 = sub_AB92A0();
                                  v808 = v807;
                                }

                                else
                                {
                                  v806 = 0;
                                  v808 = 0xE000000000000000;
                                }

                                sub_37AC4(v806, v808);
                                v1562 = [v1725 subtitleText];
                                if (v1562)
                                {
                                  v1563 = v1562;
                                  v1564 = sub_AB92A0();
                                  v1566 = v1565;
                                }

                                else
                                {
                                  v1564 = 0;
                                  v1566 = 0xE000000000000000;
                                }

                                sub_37B14(v1564, v1566);
                                v1572 = [v1725 descriptionText];
                                if (v1572)
                                {
                                  v1573 = v1572;
                                  v1574 = sub_AB92A0();
                                  v1576 = v1575;
                                }

                                else
                                {
                                  v1574 = 0;
                                  v1576 = 0xE000000000000000;
                                }

                                sub_37CA8(v1574, v1576);
                                v1582 = *(&stru_1F8.size + (swift_isaMask & *v801));
                                v1583 = swift_unknownObjectRetain();
                                v1584 = v1582(v1583);
                                v1586 = v1585;
                                swift_unknownObjectRelease();
                                if (v1586)
                                {
                                  v1587 = v1584;
                                }

                                else
                                {
                                  v1587 = 0;
                                }

                                if (v1586)
                                {
                                  v1588 = v1586;
                                }

                                else
                                {
                                  v1588 = 0xE000000000000000;
                                }

                                sub_38508(v1587, v1588);
                                v1589 = sub_39AC8(v803);
                                v1590 = (*(&stru_478.reloff + (swift_isaMask & *v801)))(v1589);
                                v1591 = sub_3863C(v1590);
                                v1592 = (*&stru_4C8.segname[(swift_isaMask & *v801) + 8])(v1591);
                                sub_38720(v1592);
                                v1593 = (*(&stru_4C8.offset + (swift_isaMask & *v801)))();
                                v1594 = sub_38A9C(v1593);
                                v1595 = *(&stru_4C8.reserved2 + (swift_isaMask & *v801));
                                v1596 = v1595(v1594);
                                if (v1596)
                                {
                                  v1597 = v1596;
                                  v1598 = (*&stru_298.sectname[swift_isaMask & *v1596])();
                                  v1600 = v1599;
                                }

                                else
                                {
                                  v1598 = 0;
                                  v1600 = 0;
                                }

                                v1620 = sub_38F48(v1598, v1600);
                                v1621 = v1595(v1620);
                                if (v1621)
                                {
                                  v1622 = v1621;
                                  v1623 = (*&stru_298.segname[(swift_isaMask & *v1621) + 8])();

                                  v1624 = v1623 & 1;
                                }

                                else
                                {
                                  v1624 = 2;
                                }

                                sub_38F98(v1624);
                                v1630 = (*&stru_518.segname[swift_isaMask & *v801])();
                                sub_39C54(v1630 & 1);
                                v1631 = [v1725 overlayTitleText];
                                if (v1631)
                                {
                                  v1632 = v1631;
                                  v1633 = sub_AB92A0();
                                  v1635 = v1634;
                                }

                                else
                                {
                                  v1633 = 0;
                                  v1635 = 0xE000000000000000;
                                }

                                sub_37EC8(v1633, v1635);
                                v1642 = [v1725 overlaySubtitleText];
                                if (v1642)
                                {
                                  v1643 = v1642;
                                  v1644 = sub_AB92A0();
                                  v1646 = v1645;
                                }

                                else
                                {
                                  v1644 = 0;
                                  v1646 = 0xE000000000000000;
                                }

                                sub_3838C(v1644, v1646);
                                *(&v1745 + 1) = sub_13C80(0, &unk_DE9C00);
                                v1746 = &off_D17AC0;
                                v1652 = v1722;
                                *&v1744 = v1722;
                                sub_37C074(v1722, 8);
                                sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                                swift_unknownObjectRelease();
                                sub_12E1C(&v1744, &unk_DE9C60);
                                v1033 = v1652;
                                v1034 = 8;
                                goto LABEL_664;
                              }

                              swift_unknownObjectRelease();
                              a2 = v1743;
                              v49 = v1722;
                            }
                          }

                          v1310 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                          v1311 = [v1725 headlineText];
                          if (v1311)
                          {
                            v1312 = v1311;
                            v1313 = sub_AB92A0();
                            v1315 = v1314;
                          }

                          else
                          {
                            v1313 = 0;
                            v1315 = 0xE000000000000000;
                          }

                          sub_2B60B8(v1313, v1315);
                          v1316 = [v1725 titleText];
                          if (v1316 || (v1316 = [v49 title]) != 0)
                          {
                            v1317 = v1316;
                            v1318 = sub_AB92A0();
                            v1320 = v1319;
                          }

                          else
                          {
                            v1318 = 0;
                            v1320 = 0xE000000000000000;
                          }

                          v1321 = sub_AB37F0();
                          if (sub_3D60D4(v1321))
                          {
                            v1322 = sub_3D67E4(v1318, v1320);
                            v1324 = v1323;

                            v1325 = v1322;
                            v1326 = v1324;
                          }

                          else
                          {
                            v1325 = v1318;
                            v1326 = v1320;
                          }

                          sub_2B62C8(v1325, v1326);
                          v1327 = [v1725 subtitleText];
                          if (v1327)
                          {
                            v1328 = v1327;
                            v1329 = sub_AB92A0();
                            v1331 = v1330;

LABEL_913:
                            sub_2B6574(v1329, v1331);
                            v104 = v1310;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                            *(&v1745 + 1) = sub_13C80(0, &unk_DE9C00);
                            v1746 = &off_D17AC0;
                            *&v1744 = v49;
                            sub_37C074(v49, 8);
                            v1337 = sub_1783E0;
LABEL_914:
                            sub_3B8C40(&v1744, &off_CEFDE8, v1337);

                            sub_12E1C(&v1744, &unk_DE9C60);
                            goto LABEL_915;
                          }

                          v1332 = [v49 show];
                          if (v1332)
                          {
                            v1333 = v1332;
                            v1334 = [v1332 title];
                            if (v1334)
                            {
                              v1335 = v1334;
                              v1329 = sub_AB92A0();
                              v1331 = v1336;

                              goto LABEL_913;
                            }
                          }

                          v1329 = 0;
                          v1331 = 0xE000000000000000;
                          goto LABEL_913;
                        }

                        goto LABEL_146;
                      }

                      v183 = &selRef__authenticateReturningError_;
                      v184 = [v1725 titleText];
                      if (v184 || (v184 = [v49 title]) != 0)
                      {
                        v185 = v49;
                        v186 = v184;
                        v1731 = sub_AB92A0();
                        v188 = v187;
                      }

                      else
                      {
                        v185 = v49;
                        v1731 = 0;
                        v188 = 0xE000000000000000;
                      }

                      v189 = [v1725 subtitleText];
                      if (v189)
                      {
                        v190 = v189;
                        v191 = sub_AB92A0();
                        v1733 = v192;

LABEL_344:
                        v529 = v1741;
                        if (v1741)
                        {
                          v530 = &selRef_isMovingFromParentViewController;
                          if ([v1741 uniformCellType] == &dword_0 + 1)
                          {
                            v183 = v188;

                            v530 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                            v531 = sub_AB37F0();
                            v188 = sub_3D60D4(v531);
                            if ((v188 & 1) == 0)
                            {
                              v533 = 0;
LABEL_355:
                              AlbumCell.rank.setter(v533, (v188 & 1) == 0);
                              AlbumCell.title.setter(v1731, v183);
                              AlbumCell.artistName.setter(v191, v1733);
                              *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                              v1746 = &off_D179F8;
                              *&v1744 = v185;
                              sub_37C074(v185, 7);
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                              sub_12E1C(&v1744, &unk_DE9C60);
                              AlbumCell.layoutStyle.setter(0);
LABEL_356:
                              v542 = v530;
                              VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

LABEL_891:
                              goto LABEL_892;
                            }

                            v529 = a2;
                            v532 = sub_AB37B0();
                            v61 = __OFADD__(v532, 1);
                            v533 = v532 + 1;
                            if (!v61)
                            {
                              goto LABEL_355;
                            }

                            __break(1u);
                          }

                          if ([v529 v530[196]] == &dword_4 + 3)
                          {

                            v534 = v188;
                            if (([v185 hasVideo] & 1) == 0)
                            {
                              v562 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                              v563 = v1725;
                              v564 = sub_3DE9C0(v1741, v1725);
                              sub_4C5CB8(v564);
                              sub_4C5DC0(0);
                              *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                              v1746 = &off_D179F8;
                              *&v1744 = v185;
                              v565 = v185;
                              v566 = v562;
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_1785E8);
                              sub_12E1C(&v1744, &unk_DE9C60);
                              v567 = [v563 headlineText];
                              if (v567)
                              {
                                v568 = v567;
                                v569 = sub_AB92A0();
                                v571 = v570;
                              }

                              else
                              {
                                v569 = 0;
                                v571 = 0xE000000000000000;
                              }

                              sub_4C53F0(v569, v571);
                              sub_4C5610(v1731, v534);
                              sub_4C5820(v191, v1733);
                              v973 = [v563 descriptionText];
                              if (v973)
                              {
                                v974 = v973;
                                v975 = sub_AB92A0();
                                v977 = v976;
                              }

                              else
                              {
                                v975 = 0;
                                v977 = 0xE000000000000000;
                              }

                              sub_4C5ACC(v975, v977);
                              sub_4C5EA0(v53 & 1);

                              v221 = v185;
                              v104 = v566;
                              v222 = 7;
                              goto LABEL_945;
                            }

                            v535 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                            v536 = v1725;
                            v537 = [v1725 headlineText];
                            if (v537)
                            {
                              v538 = v537;
                              v539 = sub_AB92A0();
                              v541 = v540;
                            }

                            else
                            {
                              v539 = 0;
                              v541 = 0xE000000000000000;
                            }

                            sub_14D848(v539, v541);
                            sub_14DAA0(v1731, v534);
                            sub_14DD00(v191, v1733);
                            v968 = [v536 descriptionText];
                            if (v968)
                            {
                              v969 = v968;
                              v970 = sub_AB92A0();
                              v972 = v971;
                            }

                            else
                            {
                              v970 = 0;
                              v972 = 0xE000000000000000;
                            }

                            sub_14DFF4(v970, v972);
                            v542 = v535;
                            [v185 duration];
                            sub_28FAC0(v978, 0);

                            sub_14E270(v53 & 1);
                            *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                            v1746 = &off_D179F8;
                            *&v1744 = v185;
                            sub_37C074(v185, 7);
                            v979 = sub_1783EC;
                            goto LABEL_755;
                          }

                          if ([v529 v530[196]] == &dword_4)
                          {

                            v543 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                            v544 = sub_AB37F0();
                            if (sub_3D60D4(v544))
                            {

                              v545 = [v185 title];
                              if (v545)
                              {
                                v546 = v545;
                                v547 = sub_AB92A0();
                                v549 = v548;
                              }

                              else
                              {
                                v547 = 0;
                                v549 = 0;
                              }

                              a2 = v1743;
                              v1145 = sub_3D67E4(v547, v549);
                              v1147 = v1146;

                              v765 = v1145;
                              v766 = v1147;
                            }

                            else
                            {
                              v765 = v1731;
                              v766 = v188;
                            }

                            sub_171DC0(v765, v766);
                            sub_172064(v191, v1733);
                            v542 = v543;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                            *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                            v1746 = &off_D179F8;
                            *&v1744 = v185;
                            sub_37C074(v185, 7);
                            v979 = sub_1783BC;
LABEL_755:
                            sub_3B8C40(&v1744, &off_CEFDE8, v979);

                            sub_12E1C(&v1744, &unk_DE9C60);
LABEL_892:
                            v221 = v185;
                            v104 = v542;
                            v222 = 7;
                            goto LABEL_945;
                          }

                          if ([v529 v530[196]] == &dword_4 + 1)
                          {
                            v572 = v188;

                            v573 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                            v574 = [v1725 headlineText];
                            if (v574)
                            {
                              v575 = v574;
                              v576 = sub_AB92A0();
                              v578 = v577;
                            }

                            else
                            {
                              v576 = 0;
                              v578 = 0xE000000000000000;
                            }

                            sub_1E0214(v576, v578);
                            sub_1E046C(v1731, v572);
                            sub_1E06CC(v191, v1733);
                            v1158 = [v1725 descriptionText];
                            if (v1158)
                            {
                              v1159 = v1158;
                              v1160 = sub_AB92A0();
                              v1162 = v1161;
                            }

                            else
                            {
                              v1160 = 0;
                              v1162 = 0xE000000000000000;
                            }

                            sub_1E09C0(v1160, v1162);
                            v1168 = v573;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                            *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                            v1746 = &off_D179F8;
                            *&v1744 = v185;
                            sub_37C074(v185, 7);
                            sub_3B8C40(&v1744, &off_CEFDE8, sub_1785DC);

                            sub_12E1C(&v1744, &unk_DE9C60);
                            v1033 = v185;
                            v104 = v1168;
                            v1034 = 7;
                            goto LABEL_664;
                          }

                          if ([v1741 v530[196]] == &dword_8 + 2)
                          {
                            v1729 = v188;
                            v779 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                            v780 = sub_AB3770().super.isa;
                            v781 = [v779 itemAtIndexPath:v780];

                            type metadata accessor for JSPosterItem();
                            v1730 = v781;
                            v782 = swift_dynamicCastClass();
                            if (v782)
                            {
                              v783 = v782;

                              v784 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                              v785 = (*&stru_4C8.sectname[swift_isaMask & *v783])();
                              if ((v785 == 2) | v785 & 1)
                              {
                                v786 = 2;
                              }

                              else
                              {
                                v786 = 0;
                              }

                              LODWORD(v1734) = v786;
                              v787 = [v1725 v183[332]];
                              if (v787)
                              {
                                v788 = v787;
                                v789 = sub_AB92A0();
                                v791 = v790;
                              }

                              else
                              {
                                v789 = 0;
                                v791 = 0xE000000000000000;
                              }

                              sub_37AC4(v789, v791);
                              v1476 = [v1725 subtitleText];
                              if (v1476)
                              {
                                v1477 = v1476;
                                v1478 = sub_AB92A0();
                                v1480 = v1479;
                              }

                              else
                              {
                                v1478 = 0;
                                v1480 = 0xE000000000000000;
                              }

                              sub_37B14(v1478, v1480);
                              v1486 = [v1725 descriptionText];
                              if (v1486)
                              {
                                v1487 = v1486;
                                v1488 = sub_AB92A0();
                                v1490 = v1489;
                              }

                              else
                              {
                                v1488 = 0;
                                v1490 = 0xE000000000000000;
                              }

                              sub_37CA8(v1488, v1490);
                              v1510 = *(&stru_1F8.size + (swift_isaMask & *v783));
                              v1511 = swift_unknownObjectRetain();
                              v1512 = v1510(v1511);
                              v1514 = v1513;
                              swift_unknownObjectRelease();
                              if (v1514)
                              {
                                v1515 = v1512;
                              }

                              else
                              {
                                v1515 = 0;
                              }

                              if (v1514)
                              {
                                v1516 = v1514;
                              }

                              else
                              {
                                v1516 = 0xE000000000000000;
                              }

                              sub_38508(v1515, v1516);
                              v1517 = sub_39AC8(v1734);
                              v1518 = (*(&stru_478.reloff + (swift_isaMask & *v783)))(v1517);
                              v1519 = sub_3863C(v1518);
                              v1520 = (*&stru_4C8.segname[(swift_isaMask & *v783) + 8])(v1519);
                              sub_38720(v1520);
                              v1521 = (*(&stru_4C8.offset + (swift_isaMask & *v783)))();
                              v1522 = sub_38A9C(v1521);
                              v1523 = *(&stru_4C8.reserved2 + (swift_isaMask & *v783));
                              v1524 = v1523(v1522);
                              if (v1524)
                              {
                                v1525 = v1524;
                                v1526 = (*&stru_298.sectname[swift_isaMask & *v1524])();
                                v1528 = v1527;
                              }

                              else
                              {
                                v1526 = 0;
                                v1528 = 0;
                              }

                              v1534 = sub_38F48(v1526, v1528);
                              v1535 = v1523(v1534);
                              if (v1535)
                              {
                                v1536 = v1535;
                                v1537 = (*&stru_298.segname[(swift_isaMask & *v1535) + 8])();

                                v1538 = v1537 & 1;
                              }

                              else
                              {
                                v1538 = 2;
                              }

                              sub_38F98(v1538);
                              v1545 = (*&stru_518.segname[swift_isaMask & *v783])();
                              sub_39C54(v1545 & 1);
                              v1546 = [v1725 overlayTitleText];
                              if (v1546)
                              {
                                v1547 = v1546;
                                v1548 = sub_AB92A0();
                                v1550 = v1549;
                              }

                              else
                              {
                                v1548 = 0;
                                v1550 = 0xE000000000000000;
                              }

                              sub_37EC8(v1548, v1550);
                              v1556 = [v1725 overlaySubtitleText];
                              if (v1556)
                              {
                                v1557 = v1556;
                                v1558 = sub_AB92A0();
                                v1560 = v1559;
                              }

                              else
                              {
                                v1558 = 0;
                                v1560 = 0xE000000000000000;
                              }

                              sub_3838C(v1558, v1560);
                              *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                              v1746 = &off_D179F8;
                              *&v1744 = v185;
                              sub_37C074(v185, 7);
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                              swift_unknownObjectRelease();
                              sub_12E1C(&v1744, &unk_DE9C60);
                              v1033 = v185;
                              v104 = v784;
                              v1034 = 7;
                              goto LABEL_664;
                            }

                            swift_unknownObjectRelease();
                            a2 = v1743;
                            v188 = v1729;
                          }
                        }

                        v1287 = sub_AB37F0();
                        if (sub_3D6728(v1287))
                        {
                          v1288 = v1728;

                          v542 = sub_3B336C(a2, type metadata accessor for FeaturedSongCell);
                          sub_AB91E0();
                          sub_5F26C();
                          v1289 = sub_AB9320();
                          sub_1DA3C8(v1289, v1290);
                          sub_1DA550(v1731, v188);
                          sub_1DA6DC(v191, v1733);
                          sub_1DA7D8(v53 & 1);

                          goto LABEL_892;
                        }

                        if (![v185 hasVideo])
                        {
                          v1294 = sub_3B336C(a2, type metadata accessor for SongCell);
                          sub_14377C(40960);

                          sub_142740(v1731, v188);
                          v1295 = v1733;

                          sub_142958(v191, v1295);
                          *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                          v1746 = &off_D179F8;
                          *&v1744 = v185;
                          sub_37C074(v185, 7);
                          sub_3B8C40(&v1744, &off_CEF8C8, sub_178218);
                          sub_12E1C(&v1744, &unk_DE9C60);
                          v1296 = sub_AB37F0();
                          if (sub_3D60D4(v1296))
                          {
                            v1297 = sub_AB37B0();
                            v61 = __OFADD__(v1297, 1);
                            v1298 = v1297 + 1;
                            if (v61)
                            {
LABEL_1164:
                              __break(1u);
                              goto LABEL_1165;
                            }

                            sub_1438F0(v1298, 0);
                            v1299 = [v1726 results];

                            if (!v1299)
                            {
LABEL_1165:
                              __break(1u);
                              return;
                            }

                            a2 = v1743;
                            v1300 = [v1299 numberOfItemsInSection:sub_AB37F0()];

                            sub_14391C(v1300, 0);
                          }

                          else
                          {
                          }

                          v542 = v1294;
                          sub_200878(1);
                          sub_20085C(1);

                          sub_143BBC(v53 & 1);
                          sub_143184([v185 isFavorite]);
                          goto LABEL_891;
                        }

                        v1291 = sub_AB37F0();
                        if ((sub_3D60D4(v1291) & 1) == 0)
                        {
                          v1301 = v188;
                          v1302 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                          v1303 = [v1725 headlineText];
                          if (v1303)
                          {
                            v1304 = v1303;
                            v1305 = sub_AB92A0();
                            v1307 = v1306;
                          }

                          else
                          {
                            v1305 = 0;
                            v1307 = 0xE000000000000000;
                          }

                          sub_2B60B8(v1305, v1307);
                          sub_2B62C8(v1731, v1301);
                          sub_2B6574(v191, v1733);
                          v1308 = v1302;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                          *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                          v1746 = &off_D179F8;
                          v1309 = v185;
                          v104 = v1308;
                          *&v1744 = v1309;
                          sub_37C074(v1309, 7);
                          sub_3B8C40(&v1744, &off_CEFDE8, sub_1783E0);

                          sub_12E1C(&v1744, &unk_DE9C60);
                          v1033 = v1309;
                          v1034 = 7;
                          goto LABEL_664;
                        }

                        v530 = sub_3B336C(a2, type metadata accessor for RankedMusicVideoVerticalCell);
                        v1292 = sub_AB37B0();
                        v61 = __OFADD__(v1292, 1);
                        v1293 = (v1292 + 1);
                        if (!v61)
                        {
                          sub_42B3B0(v1293, 0);
                          sub_42B4A8(v1731, v188);
                          sub_42B754(v191, v1733);
                          *(&v1745 + 1) = sub_13C80(0, &unk_DE8EB0);
                          v1746 = &off_D179F8;
                          *&v1744 = v185;
                          sub_37C074(v185, 7);
                          sub_3B8DA0(&v1744, &off_CEFDE8);
                          sub_12E1C(&v1744, &unk_DE9C60);
                          goto LABEL_356;
                        }

LABEL_1163:
                        __break(1u);
                        goto LABEL_1164;
                      }

                      v290 = [v185 artist];
                      if (v290)
                      {
                        v291 = v290;
                        v292 = [v290 name];
                        if (v292)
                        {
                          v293 = v292;
                          v191 = sub_AB92A0();
                          v1733 = v294;

                          goto LABEL_344;
                        }
                      }

                      v191 = 0;
                      v1733 = 0xE000000000000000;
                      goto LABEL_344;
                    }

                    v206 = v1741;
                    if (v1741)
                    {
                      if ([v1741 uniformCellType] == &dword_0 + 2)
                      {
                        v207 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                        v208 = [v1725 titleText];
                        if (v208 || (v208 = [v49 name]) != 0)
                        {
                          v209 = v208;
                          v210 = sub_AB92A0();
                          v212 = v211;
                        }

                        else
                        {
                          v210 = 0;
                          v212 = 0xE000000000000000;
                        }

                        sub_1FD7A8(v210, v212);
                        sub_1FDACC(0, 0xE000000000000000);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790);
                        v213 = swift_allocObject();
                        *(v213 + 16) = xmmword_AF4EC0;
                        *(v213 + 40) = 0;
                        *(v213 + 48) = 0;
                        *(v213 + 32) = 1;
                        *(v213 + 56) = 0;
                        v104 = v207;
                        v214 = sub_272D38(v213);
                        v216 = v215;
                        v218 = v217;
                        v220 = v219;

                        sub_361EF0(v214, v216, v218, v220);
                        sub_7FCC4(v214);
                        VerticalLockupCollectionViewCell.isDisabled.setter(0);

                        sub_1FDD00(&dword_0 + 2);
                        v221 = v49;
                        v222 = 6;
                        goto LABEL_945;
                      }

                      if ([v206 uniformCellType] == &dword_8)
                      {
                        v334 = sub_3B336C(a2, type metadata accessor for SocialPersonVerticalCell);
                        v335 = [v1725 titleText];
                        if (v335 || (v335 = [v49 name]) != 0)
                        {
                          v336 = v335;
                          v337 = sub_AB92A0();
                          v339 = v338;
                        }

                        else
                        {
                          v337 = 0;
                          v339 = 0xE000000000000000;
                        }

                        sub_115C6C(v337, v339);
                        v340 = [v1725 subtitleText];
                        if (v340 || (v340 = [v49 handle]) != 0)
                        {
                          v341 = v49;
                          v342 = v340;
                          v343 = sub_AB92A0();
                          v345 = v344;
                        }

                        else
                        {
                          v341 = v49;
                          v343 = 0;
                          v345 = 0xE000000000000000;
                        }

                        sub_115DA8(v343, v345);
                        sub_115FF0(&dword_0 + 1);
                        sub_11604C(&dword_0 + 1);
                        sub_11607C(1);
                        v346 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v347 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v348 = swift_allocObject();
                        *(v348 + 16) = v346;
                        *(v348 + 24) = v347;
                        v349 = v334;

                        sub_1161FC(sub_3E0408, v348);

                        v350 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
                        v351 = v341;
                        sub_37C074(v341, 6);

                        sub_49D948(v341);

                        *(*&v349[v350] + 48) = &off_D0FCD8;
                        swift_unknownObjectWeakAssign();
                        v352 = *&v349[v350];
                        v353 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v354 = swift_allocObject();
                        swift_unknownObjectWeakInit();

                        v355 = swift_allocObject();
                        *(v355 + 16) = v353;
                        *(v355 + 24) = v354;
                        v356 = *(v352 + 56);
                        *(v352 + 56) = sub_3E0424;
                        *(v352 + 64) = v355;

                        sub_17654(v356);

                        v104 = v349;
                        if ([v351 isVerified])
                        {
                          v357 = 0;
                          v358 = 0;
                          v359 = 0;
                          v360 = &dword_0 + 2;
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790);
                          v591 = swift_allocObject();
                          *(v591 + 16) = xmmword_AF4EC0;
                          *(v591 + 40) = 0;
                          *(v591 + 48) = 0;
                          *(v591 + 32) = 1;
                          *(v591 + 56) = 0;
                          v360 = sub_272D38(v591);
                          v357 = v592;
                          v358 = v593;
                          v359 = v594;
                        }

                        sub_361EF0(v360, v357, v358, v359);
                        sub_7FCC4(v360);
                        VerticalLockupCollectionViewCell.isDisabled.setter(0);

                        v221 = v351;
                        v222 = 6;
                        goto LABEL_945;
                      }

                      if ([v206 uniformCellType] == &dword_8 + 2)
                      {
                        v434 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                        v435 = sub_AB3770().super.isa;
                        v436 = [v434 itemAtIndexPath:v435];

                        type metadata accessor for JSPosterItem();
                        v437 = swift_dynamicCastClass();
                        if (v437)
                        {
                          v438 = v437;
                          v1722 = v49;
                          v104 = sub_3B336C(a2, type metadata accessor for PosterCell);
                          v439 = (*&stru_4C8.sectname[swift_isaMask & *v438])();
                          if ((v439 == 2) | v439 & 1)
                          {
                            v440 = 2;
                          }

                          else
                          {
                            v440 = 0;
                          }

                          v441 = [v1725 titleText];
                          if (v441)
                          {
                            v442 = v441;
                            v443 = sub_AB92A0();
                            v445 = v444;
                          }

                          else
                          {
                            v443 = 0;
                            v445 = 0xE000000000000000;
                          }

                          sub_37AC4(v443, v445);
                          v1091 = [v1725 subtitleText];
                          if (v1091)
                          {
                            v1092 = v1091;
                            v1093 = sub_AB92A0();
                            v1095 = v1094;
                          }

                          else
                          {
                            v1093 = 0;
                            v1095 = 0xE000000000000000;
                          }

                          sub_37B14(v1093, v1095);
                          v1096 = [v1725 descriptionText];
                          if (v1096)
                          {
                            v1097 = v1096;
                            v1098 = sub_AB92A0();
                            v1100 = v1099;
                          }

                          else
                          {
                            v1098 = 0;
                            v1100 = 0xE000000000000000;
                          }

                          sub_37CA8(v1098, v1100);
                          v1101 = *(&stru_1F8.size + (swift_isaMask & *v438));
                          v1102 = swift_unknownObjectRetain();
                          v1103 = v1101(v1102);
                          v1105 = v1104;
                          swift_unknownObjectRelease();
                          if (v1105)
                          {
                            v1106 = v1103;
                          }

                          else
                          {
                            v1106 = 0;
                          }

                          if (v1105)
                          {
                            v1107 = v1105;
                          }

                          else
                          {
                            v1107 = 0xE000000000000000;
                          }

                          sub_38508(v1106, v1107);
                          v1108 = sub_39AC8(v440);
                          v1109 = (*(&stru_478.reloff + (swift_isaMask & *v438)))(v1108);
                          v1110 = sub_3863C(v1109);
                          v1111 = (*&stru_4C8.segname[(swift_isaMask & *v438) + 8])(v1110);
                          sub_38720(v1111);
                          v1112 = (*(&stru_4C8.offset + (swift_isaMask & *v438)))();
                          v1113 = sub_38A9C(v1112);
                          v1114 = *(&stru_4C8.reserved2 + (swift_isaMask & *v438));
                          v1115 = v1114(v1113);
                          if (v1115)
                          {
                            v1116 = v1115;
                            v1117 = (*&stru_298.sectname[swift_isaMask & *v1115])();
                            v1119 = v1118;
                          }

                          else
                          {
                            v1117 = 0;
                            v1119 = 0;
                          }

                          v1120 = sub_38F48(v1117, v1119);
                          v1121 = v1114(v1120);
                          if (v1121)
                          {
                            v1122 = v1121;
                            v1123 = (*&stru_298.segname[(swift_isaMask & *v1121) + 8])();

                            v1124 = v1123 & 1;
                          }

                          else
                          {
                            v1124 = 2;
                          }

                          sub_38F98(v1124);
                          v1125 = (*&stru_518.segname[swift_isaMask & *v438])();
                          sub_39C54(v1125 & 1);
                          v1126 = [v1725 overlayTitleText];
                          if (v1126)
                          {
                            v1127 = v1126;
                            v1128 = sub_AB92A0();
                            v1130 = v1129;
                          }

                          else
                          {
                            v1128 = 0;
                            v1130 = 0xE000000000000000;
                          }

                          sub_37EC8(v1128, v1130);
                          v1131 = [v1725 overlaySubtitleText];
                          if (v1131)
                          {
                            v1132 = v1131;
                            v1133 = sub_AB92A0();
                            v1135 = v1134;
                          }

                          else
                          {
                            v1133 = 0;
                            v1135 = 0xE000000000000000;
                          }

                          sub_3838C(v1133, v1135);
                          v1746 = 0;
                          v1744 = 0u;
                          v1745 = 0u;
                          sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                          swift_unknownObjectRelease();
                          sub_12E1C(&v1744, &unk_DE9C60);
                          v1033 = v1722;
LABEL_663:
                          v1034 = 6;
LABEL_664:
                          sub_3EB30(v1033, v1034);
                          swift_unknownObjectRelease();

                          a2 = v1743;
                          goto LABEL_61;
                        }

                        swift_unknownObjectRelease();
                      }
                    }

                    v1000 = sub_3B336C(a2, type metadata accessor for SocialPersonHorizontalCell);
                    v1001 = [v1725 titleText];
                    if (v1001 || (v1001 = [v49 name]) != 0)
                    {
                      v1002 = v1001;
                      v1003 = sub_AB92A0();
                      v1005 = v1004;
                    }

                    else
                    {
                      v1003 = 0;
                      v1005 = 0xE000000000000000;
                    }

                    sub_B1070(v1003, v1005);
                    v1006 = [v1725 subtitleText];
                    if (v1006 || (v1006 = [v49 handle]) != 0)
                    {
                      v1007 = v1006;
                      v1008 = sub_AB92A0();
                      v1010 = v1009;
                    }

                    else
                    {
                      v1008 = 0;
                      v1010 = 0xE000000000000000;
                    }

                    sub_B1194(v1008, v1010);
                    v1011 = *&v1000[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790);
                    v1012 = swift_allocObject();
                    *(v1012 + 16) = xmmword_AF4EC0;
                    *(v1012 + 40) = 0;
                    *(v1012 + 48) = 0;
                    *(v1012 + 32) = 1;
                    *(v1012 + 56) = 0;
                    v104 = v1000;

                    v1013 = sub_272D38(v1012);
                    v1015 = v1014;
                    v1017 = v1016;
                    v1019 = v1018;

                    type metadata accessor for ArtworkComponentImageView();
                    v1020 = swift_dynamicCastClass();
                    if (v1020)
                    {
                      v1021 = v1020 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
                      v1734 = v104;
                      v1022 = v49;
                      v1023 = *(v1020 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
                      v1024 = *(v1020 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
                      v1025 = *(v1020 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
                      *v1021 = v1013;
                      *(v1021 + 8) = v1015;
                      *(v1021 + 16) = v1017;
                      v1733 = v1011;
                      v1026 = *(v1021 + 24);
                      *(v1021 + 24) = v1019;
                      sub_7FCB4(v1013);
                      sub_7D6F4(v1023, v1024, v1025, v1026);
                      v49 = v1022;
                      v104 = v1734;
                      sub_7FCC4(v1023);
                    }

                    sub_7FCC4(v1013);

                    v1027 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
                    sub_37C074(v49, 6);

                    sub_49D948(v49);

                    *(*&v104[v1027] + 48) = &off_D0FCD8;
                    swift_unknownObjectWeakAssign();
                    v1028 = *&v104[v1027];
                    v1029 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v1030 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v1031 = swift_allocObject();
                    *(v1031 + 16) = v1029;
                    *(v1031 + 24) = v1030;
                    v1032 = *(v1028 + 56);
                    *(v1028 + 56) = sub_3E12FC;
                    *(v1028 + 64) = v1031;

                    sub_17654(v1032);

                    sub_20085C(1);
                    sub_200620(0);

                    v1033 = v49;
                    goto LABEL_663;
                  }

                  v55 = v1728;
                  if (v52 != 9)
                  {
                    if (v52 != 12)
                    {
                      if (v52 != 13)
                      {
                        goto LABEL_146;
                      }

                      v139 = v1741;
                      if (v1741)
                      {
                        if ([v1741 uniformCellType] == &dword_0 + 1)
                        {
                          v24 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                          v140 = sub_AB37F0();
                          v15 = sub_3D60D4(v140);
                          if ((v15 & 1) == 0)
                          {
                            v142 = 0;
LABEL_253:
                            AlbumCell.rank.setter(v142, (v15 & 1) == 0);
                            v417 = [v49 title];
                            if (v417)
                            {
                              v418 = v417;
                              v419 = sub_AB92A0();
                              v421 = v420;
                            }

                            else
                            {
                              v419 = 0;
                              v421 = 0xE000000000000000;
                            }

                            AlbumCell.title.setter(v419, v421);
                            AlbumCell.artistName.setter(0, 0xE000000000000000);
                            v1746 = 0;
                            v1744 = 0u;
                            v1745 = 0u;
                            sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                            sub_12E1C(&v1744, &unk_DE9C60);
                            AlbumCell.layoutStyle.setter(0);
                            v104 = v24;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

LABEL_460:
LABEL_934:
                            v221 = v49;
                            v222 = 13;
                            goto LABEL_945;
                          }

                          v141 = sub_AB37B0();
                          v61 = __OFADD__(v141, 1);
                          v142 = v141 + 1;
                          if (!v61)
                          {
                            goto LABEL_253;
                          }

                          __break(1u);
LABEL_94:
                          v55 = v1728;
                          if (v54)
                          {
                            if (v54 == 1)
                            {

                              v143 = v1741;
                              if (v1741)
                              {
                                if ([v1741 uniformCellType] == &dword_4 + 3)
                                {
                                  v104 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                                  v144 = v143;
                                  v145 = v1725;
                                  v146 = sub_3DE9C0(v144, v1725);
                                  v147 = v146;
                                  sub_4C5CB8(v146);
                                  if (v147 == 2)
                                  {
                                    v148 = 0;
                                  }

                                  else
                                  {
                                    v148 = &dword_0 + 3;
                                  }

                                  sub_4C5DC0(v148);
                                  *(&v1745 + 1) = sub_13C80(0, &qword_DE8E78);
                                  v1746 = &off_D17A70;
                                  *&v1744 = v49;
                                  v149 = v49;
                                  sub_3B8C40(&v1744, &off_CEFDE8, sub_1785E8);
                                  sub_12E1C(&v1744, &unk_DE9C60);
                                  v150 = [v145 headlineText];
                                  if (v150)
                                  {
                                    v151 = v150;
                                    v152 = sub_AB92A0();
                                    v154 = v153;
                                  }

                                  else
                                  {
                                    v152 = 0;
                                    v154 = 0xE000000000000000;
                                  }

                                  sub_4C53F0(v152, v154);
                                  v452 = [v149 name];
                                  if (v452)
                                  {
                                    v453 = v452;
                                    v454 = sub_AB92A0();
                                    v456 = v455;
                                  }

                                  else
                                  {
                                    v454 = 0;
                                    v456 = 0xE000000000000000;
                                  }

                                  sub_4C5610(v454, v456);
                                  v457 = 0xE000000000000000;
                                  sub_4C5820(0, 0xE000000000000000);
                                  v458 = [v1725 descriptionText];
                                  if (v458)
                                  {
                                    v459 = v458;
                                    v460 = sub_AB92A0();
                                    v457 = v461;
                                  }

                                  else
                                  {
                                    v460 = 0;
                                  }

                                  sub_4C5ACC(v460, v457);
                                  sub_4C5EA0(v53 & 1);

LABEL_393:
                                  v221 = v49;
LABEL_394:
                                  v222 = 1;
                                  goto LABEL_945;
                                }

                                if ([v143 uniformCellType] == &dword_8 + 2)
                                {
                                  v295 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                                  v296 = sub_AB3770().super.isa;
                                  v297 = [v295 itemAtIndexPath:v296];

                                  type metadata accessor for JSPosterItem();
                                  v298 = swift_dynamicCastClass();
                                  if (v298)
                                  {
                                    v299 = v298;
                                    v104 = sub_3B336C(a2, type metadata accessor for PosterCell);
                                    v300 = (*&stru_4C8.sectname[swift_isaMask & *v299])();
                                    if ((v300 == 2) | v300 & 1)
                                    {
                                      v301 = 2;
                                    }

                                    else
                                    {
                                      v301 = 0;
                                    }

                                    LODWORD(v1734) = v301;
                                    v302 = [v1725 titleText];
                                    if (v302)
                                    {
                                      v303 = v302;
                                      v304 = sub_AB92A0();
                                      v306 = v305;
                                    }

                                    else
                                    {
                                      v304 = 0;
                                      v306 = 0xE000000000000000;
                                    }

                                    sub_37AC4(v304, v306);
                                    v838 = [v1725 subtitleText];
                                    v1722 = v49;
                                    if (v838)
                                    {
                                      v839 = v838;
                                      v840 = sub_AB92A0();
                                      v842 = v841;
                                    }

                                    else
                                    {
                                      v840 = 0;
                                      v842 = 0xE000000000000000;
                                    }

                                    sub_37B14(v840, v842);
                                    v843 = [v1725 descriptionText];
                                    if (v843)
                                    {
                                      v844 = v843;
                                      v845 = sub_AB92A0();
                                      v847 = v846;
                                    }

                                    else
                                    {
                                      v845 = 0;
                                      v847 = 0xE000000000000000;
                                    }

                                    sub_37CA8(v845, v847);
                                    v848 = *(&stru_1F8.size + (swift_isaMask & *v299));
                                    v849 = swift_unknownObjectRetain();
                                    v850 = v848(v849);
                                    v852 = v851;
                                    swift_unknownObjectRelease();
                                    if (v852)
                                    {
                                      v853 = v850;
                                    }

                                    else
                                    {
                                      v853 = 0;
                                    }

                                    if (v852)
                                    {
                                      v854 = v852;
                                    }

                                    else
                                    {
                                      v854 = 0xE000000000000000;
                                    }

                                    sub_38508(v853, v854);
                                    v855 = sub_39AC8(v1734);
                                    v856 = (*(&stru_478.reloff + (swift_isaMask & *v299)))(v855);
                                    v857 = sub_3863C(v856);
                                    v858 = (*&stru_4C8.segname[(swift_isaMask & *v299) + 8])(v857);
                                    sub_38720(v858);
                                    v859 = (*(&stru_4C8.offset + (swift_isaMask & *v299)))();
                                    v860 = sub_38A9C(v859);
                                    v861 = *(&stru_4C8.reserved2 + (swift_isaMask & *v299));
                                    v862 = v861(v860);
                                    if (v862)
                                    {
                                      v863 = v862;
                                      v864 = (*&stru_298.sectname[swift_isaMask & *v862])();
                                      v866 = v865;
                                    }

                                    else
                                    {
                                      v864 = 0;
                                      v866 = 0;
                                    }

                                    v867 = sub_38F48(v864, v866);
                                    v868 = v861(v867);
                                    if (v868)
                                    {
                                      v869 = v868;
                                      v870 = (*&stru_298.segname[(swift_isaMask & *v868) + 8])();

                                      v871 = v870 & 1;
                                    }

                                    else
                                    {
                                      v871 = 2;
                                    }

                                    v872 = v1722;
                                    v873 = v1725;
                                    sub_38F98(v871);
                                    v874 = (*&stru_518.segname[swift_isaMask & *v299])();
                                    sub_39C54(v874 & 1);
                                    v875 = [v873 overlayTitleText];
                                    if (v875)
                                    {
                                      v876 = v875;
                                      v877 = sub_AB92A0();
                                      v879 = v878;
                                    }

                                    else
                                    {
                                      v877 = 0;
                                      v879 = 0xE000000000000000;
                                    }

                                    sub_37EC8(v877, v879);
                                    v880 = [v873 overlaySubtitleText];
                                    if (v880)
                                    {
                                      v881 = v880;
                                      v882 = sub_AB92A0();
                                      v884 = v883;
                                    }

                                    else
                                    {
                                      v882 = 0;
                                      v884 = 0xE000000000000000;
                                    }

                                    sub_3838C(v882, v884);
                                    v1746 = 0;
                                    v1744 = 0u;
                                    v1745 = 0u;
                                    sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                                    swift_unknownObjectRelease();
                                    sub_12E1C(&v1744, &unk_DE9C60);
                                    v221 = v872;
                                    goto LABEL_394;
                                  }

                                  swift_unknownObjectRelease();
                                }
                              }

                              v104 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                              sub_361EF0(0, 0, 0, 0);
                              sub_1FDD00(&dword_0 + 1);
                              v607 = [v49 name];
                              if (v607)
                              {
                                v608 = v607;
                                v609 = sub_AB92A0();
                                v611 = v610;
                              }

                              else
                              {
                                v609 = 0;
                                v611 = 0xE000000000000000;
                              }

                              sub_1FD7A8(v609, v611);
                              sub_1FDACC(0, 0xE000000000000000);
                              VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                              *(&v1745 + 1) = sub_13C80(0, &qword_DE8E78);
                              v1746 = &off_D17A70;
                              *&v1744 = v49;
                              sub_37C074(v49, 1);
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_1783F8);

                              sub_12E1C(&v1744, &unk_DE9C60);
                              goto LABEL_393;
                            }

LABEL_146:
                            v229 = v52;

                            sub_13C80(0, &qword_DFE230);
                            v104 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

                            v221 = v49;
                            v222 = v229;
LABEL_945:
                            sub_3EB30(v221, v222);
                            swift_unknownObjectRelease();

                            goto LABEL_61;
                          }

                          v1732 = sub_3CAC50(v49);
                          v1734 = v168;
                          v169 = [v1725 subtitleText];
                          v1721 = v53;
                          if (v169)
                          {
                            v170 = v169;
                            v1719 = sub_AB92A0();
                            v1720 = v171;

LABEL_308:
                            v483 = v1741;
                            if (v1741)
                            {
                              a2 = &selRef_isMovingFromParentViewController;
                              if ([v1741 uniformCellType] == &dword_0 + 1)
                              {
                                a2 = v1743;
                                v24 = sub_3B336C(v1743, type metadata accessor for AlbumCell);
                                v484 = sub_AB37F0();
                                v15 = sub_3D60D4(v484);
                                if ((v15 & 1) == 0)
                                {
                                  v486 = 0;
                                  v487 = v1721;
LABEL_318:
                                  AlbumCell.rank.setter(v486, (v15 & 1) == 0);
                                  AlbumCell.title.setter(v1732, v1734);
                                  AlbumCell.artistName.setter(v1719, v1720);
                                  *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                  v1746 = &off_D17A20;
                                  *&v1744 = v49;
                                  sub_37C074(v49, 0);
                                  sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                                  sub_12E1C(&v1744, &unk_DE9C60);
                                  AlbumCell.layoutStyle.setter(0);
LABEL_851:
                                  v104 = v24;
                                  VerticalLockupCollectionViewCell.isDisabled.setter(v487 & 1);

                                  goto LABEL_852;
                                }

                                v485 = sub_AB37B0();
                                v61 = __OFADD__(v485, 1);
                                v486 = v485 + 1;
                                v487 = v1721;
                                if (!v61)
                                {
                                  goto LABEL_318;
                                }

                                __break(1u);
                              }

                              if ([v483 a2[196]] == &dword_4 + 3)
                              {
                                a2 = v1743;
                                v104 = sub_3B336C(v1743, type metadata accessor for CustomRoomAlbumCell);
                                v488 = v1725;
                                v489 = sub_3DE9C0(v483, v1725);
                                sub_4C5CB8(v489);
                                sub_4C5DC0(0);
                                *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                v1746 = &off_D17A20;
                                *&v1744 = v49;
                                v490 = v49;
                                sub_3B8C40(&v1744, &off_CEFDE8, sub_1785E8);
                                sub_12E1C(&v1744, &unk_DE9C60);
                                v491 = [v488 headlineText];
                                if (v491)
                                {
                                  v492 = v491;
                                  v493 = sub_AB92A0();
                                  v495 = v494;
                                }

                                else
                                {
                                  v493 = 0;
                                  v495 = 0xE000000000000000;
                                }

                                v601 = v1721;
                                sub_4C53F0(v493, v495);
                                sub_4C5610(v1732, v1734);
                                sub_4C5820(v1719, v1720);
                                v602 = [v1725 descriptionText];
                                if (v602)
                                {
                                  v603 = v602;
                                  v604 = sub_AB92A0();
                                  v606 = v605;
                                }

                                else
                                {
                                  v604 = 0;
                                  v606 = 0xE000000000000000;
                                }

                                sub_4C5ACC(v604, v606);
                                sub_4C5EA0(v601 & 1);
                                goto LABEL_852;
                              }

                              if ([v483 a2[196]] == &dword_4 + 1)
                              {
                                a2 = v1743;
                                v496 = sub_3B336C(v1743, type metadata accessor for FeaturedShowcaseCell);
                                v497 = [v1725 headlineText];
                                if (v497)
                                {
                                  v498 = v497;
                                  v499 = sub_AB92A0();
                                  v501 = v500;
                                }

                                else
                                {
                                  v499 = 0;
                                  v501 = 0xE000000000000000;
                                }

                                v932 = v1721;
                                sub_1E0214(v499, v501);
                                sub_1E046C(v1732, v1734);
                                sub_1E06CC(v1719, v1720);
                                v933 = [v1725 descriptionText];
                                if (v933)
                                {
                                  v934 = v933;
                                  v935 = sub_AB92A0();
                                  v937 = v936;
                                }

                                else
                                {
                                  v935 = 0;
                                  v937 = 0xE000000000000000;
                                }

                                sub_1E09C0(v935, v937);
                                v104 = v496;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v932 & 1);

                                *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                v1746 = &off_D17A20;
                                *&v1744 = v49;
                                sub_37C074(v49, 0);
                                sub_3B8C40(&v1744, &off_CEFDE8, sub_1785DC);

                                sub_12E1C(&v1744, &unk_DE9C60);
                                goto LABEL_853;
                              }

                              if ([v483 a2[196]] == &dword_4 + 2)
                              {

                                v550 = sub_3B336C(v1743, type metadata accessor for FeaturedPlaylistCell);
                                sub_F5FC4(v1732, v1734);
                                v551 = [v1725 descriptionText];
                                if (v551)
                                {
                                  v552 = v551;
                                  v553 = sub_AB92A0();
                                  v555 = v554;
                                }

                                else
                                {
                                  v553 = 0;
                                  v555 = 0xE000000000000000;
                                }

                                sub_F6268(v553, v555);
                                v104 = v550;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v1721 & 1);

                                *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                v1746 = &off_D17A20;
                                *&v1744 = v49;
                                sub_37C074(v49, 0);
                                sub_3B8C40(&v1744, &off_CEFDE8, sub_1785D0);

                                sub_12E1C(&v1744, &unk_DE9C60);
                                v1033 = v49;
                                goto LABEL_1160;
                              }

                              v1722 = v49;
                              if ([v1741 a2[196]] == &dword_8 + 2)
                              {
                                v738 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                                v739 = sub_AB3770().super.isa;
                                v740 = [v738 itemAtIndexPath:v739];

                                type metadata accessor for JSPosterItem();
                                v1726 = v740;
                                v741 = swift_dynamicCastClass();
                                if (v741)
                                {
                                  v742 = v741;

                                  v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                                  v743 = (*&stru_4C8.sectname[swift_isaMask & *v742])();
                                  if ((v743 == 2) | v743 & 1)
                                  {
                                    v744 = 2;
                                  }

                                  else
                                  {
                                    v744 = 0;
                                  }

                                  v745 = [v1725 titleText];
                                  if (v745)
                                  {
                                    v746 = v745;
                                    v747 = sub_AB92A0();
                                    v749 = v748;
                                  }

                                  else
                                  {
                                    v747 = 0;
                                    v749 = 0xE000000000000000;
                                  }

                                  sub_37AC4(v747, v749);
                                  v1426 = [v1725 subtitleText];
                                  if (v1426)
                                  {
                                    v1427 = v1426;
                                    v1428 = sub_AB92A0();
                                    v1430 = v1429;
                                  }

                                  else
                                  {
                                    v1428 = 0;
                                    v1430 = 0xE000000000000000;
                                  }

                                  sub_37B14(v1428, v1430);
                                  v1431 = [v1725 descriptionText];
                                  if (v1431)
                                  {
                                    v1432 = v1431;
                                    v1433 = sub_AB92A0();
                                    v1435 = v1434;
                                  }

                                  else
                                  {
                                    v1433 = 0;
                                    v1435 = 0xE000000000000000;
                                  }

                                  sub_37CA8(v1433, v1435);
                                  v1436 = *(&stru_1F8.size + (swift_isaMask & *v742));
                                  v1437 = swift_unknownObjectRetain();
                                  v1438 = v1436(v1437);
                                  v1440 = v1439;
                                  swift_unknownObjectRelease();
                                  if (v1440)
                                  {
                                    v1441 = v1438;
                                  }

                                  else
                                  {
                                    v1441 = 0;
                                  }

                                  if (v1440)
                                  {
                                    v1442 = v1440;
                                  }

                                  else
                                  {
                                    v1442 = 0xE000000000000000;
                                  }

                                  sub_38508(v1441, v1442);
                                  v1443 = sub_39AC8(v744);
                                  v1444 = (*(&stru_478.reloff + (swift_isaMask & *v742)))(v1443);
                                  v1445 = sub_3863C(v1444);
                                  v1446 = (*&stru_4C8.segname[(swift_isaMask & *v742) + 8])(v1445);
                                  sub_38720(v1446);
                                  v1447 = (*(&stru_4C8.offset + (swift_isaMask & *v742)))();
                                  v1448 = sub_38A9C(v1447);
                                  v1449 = *(&stru_4C8.reserved2 + (swift_isaMask & *v742));
                                  v1450 = v1449(v1448);
                                  if (v1450)
                                  {
                                    v1451 = v1450;
                                    v1452 = (*&stru_298.sectname[swift_isaMask & *v1450])();
                                    v1454 = v1453;
                                  }

                                  else
                                  {
                                    v1452 = 0;
                                    v1454 = 0;
                                  }

                                  v1455 = sub_38F48(v1452, v1454);
                                  v1456 = v1449(v1455);
                                  if (v1456)
                                  {
                                    v1457 = v1456;
                                    v1458 = (*&stru_298.segname[(swift_isaMask & *v1456) + 8])();

                                    v1459 = v1458 & 1;
                                  }

                                  else
                                  {
                                    v1459 = 2;
                                  }

                                  sub_38F98(v1459);
                                  v1460 = (*&stru_518.segname[swift_isaMask & *v742])();
                                  sub_39C54(v1460 & 1);
                                  v1461 = [v1725 overlayTitleText];
                                  if (v1461)
                                  {
                                    v1462 = v1461;
                                    v1463 = sub_AB92A0();
                                    v1465 = v1464;
                                  }

                                  else
                                  {
                                    v1463 = 0;
                                    v1465 = 0xE000000000000000;
                                  }

                                  sub_37EC8(v1463, v1465);
                                  v1466 = [v1725 overlaySubtitleText];
                                  if (v1466)
                                  {
                                    v1467 = v1466;
                                    v1468 = sub_AB92A0();
                                    v1470 = v1469;
                                  }

                                  else
                                  {
                                    v1468 = 0;
                                    v1470 = 0xE000000000000000;
                                  }

                                  sub_3838C(v1468, v1470);
                                  *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                  v1746 = &off_D17A20;
                                  v1424 = v1722;
                                  *&v1744 = v1722;
                                  sub_37C074(v1722, 0);
                                  sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                                  swift_unknownObjectRelease();
                                  sub_12E1C(&v1744, &unk_DE9C60);
                                  goto LABEL_1159;
                                }

                                swift_unknownObjectRelease();
                              }

                              if ([v1741 a2[196]] == &dword_0 + 3)
                              {
                                v1242 = sub_3B336C(v1743, type metadata accessor for FeaturedRadioShowCell);
                                v1243 = [v1725 headlineText];
                                if (v1243)
                                {
                                  v1244 = v1243;
                                  v1245 = sub_AB92A0();
                                  v1247 = v1246;
                                }

                                else
                                {
                                  v1245 = 0;
                                  v1247 = 0xE000000000000000;
                                }

                                sub_233E78(v1245, v1247);
                                v1420 = [v1725 titleText];
                                if (v1420)
                                {
                                  v1421 = v1420;
                                  v1732 = sub_AB92A0();
                                  v1423 = v1422;

                                  v1734 = v1423;
                                }

                                sub_234088(v1732, v1734);
                                sub_234334(v1719, v1720);
                                *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                v1746 = &off_D17A20;
                                v1424 = v1722;
                                *&v1744 = v1722;
                                sub_37C074(v1722, 0);
                                sub_3B8C40(&v1744, &off_CEF8C8, sub_178410);
                                sub_12E1C(&v1744, &unk_DE9C60);
                                v1425 = v1242;
LABEL_1158:
                                v104 = v1425;
                                sub_200878(0);
                                sub_20085C(1);
                                sub_200620(v1721 & 1);
                                sub_200598([v1424 isFavorite]);

LABEL_1159:
                                v1033 = v1424;
LABEL_1160:
                                v1034 = 0;
                                goto LABEL_664;
                              }

                              v1248 = [v1741 a2[196]];
                              a2 = v1743;
                              v49 = v1722;
                              if (v1248 == &dword_8 + 3)
                              {
                                v1249 = sub_3B336C(v1743, type metadata accessor for RadioStationCell);
                                sub_B3A4C(1);
                                v1250 = [v49 releaseDateComponents];
                                if (v1250)
                                {
                                  v1251 = v1250;
                                  sub_AB2D70();

                                  v1733[7](v19, 0, 1, v13);
                                }

                                else
                                {
                                  v1733[7](v19, 1, 1, v13);
                                }

                                sub_36B0C(v19, v21, &qword_DF43E0);
                                if ((v1733[6])(v21, 1, v13))
                                {
                                  sub_12E1C(v21, &qword_DF43E0);
                                  (*(v1730 + 7))(v24, 1, 1, v1731);
                                }

                                else
                                {
                                  v1703 = v1733;
                                  (v1733[2])(v15, v21, v13);
                                  sub_12E1C(v21, &qword_DF43E0);
                                  sub_AB2D90();
                                  (*(v1703 + 8))(v15, v13);
                                  if ((*(v1730 + 6))(v24, 1, v1731) != 1)
                                  {
                                    v1708 = v1730;
                                    v1709 = v1729;
                                    v1710 = v1731;
                                    (*(v1730 + 4))(v1729, v24, v1731);
                                    v1711 = *sub_45A430();
                                    v1712 = sub_AB3370().super.isa;
                                    v1713 = [v1711 stringFromDate:v1712];

                                    *&v1744 = sub_AB92A0();
                                    *(&v1744 + 1) = v1714;
                                    sub_36A48();
                                    v1715 = sub_ABAA90();
                                    v1717 = v1716;

                                    sub_B3044(v1715, v1717);
                                    (*(v1708 + 1))(v1709, v1710);

                                    goto LABEL_1155;
                                  }
                                }

                                sub_12E1C(v24, &unk_E01230);
LABEL_1155:
                                v1704 = [v1725 titleText];
                                if (v1704)
                                {
                                  v1705 = v1704;
                                  v1732 = sub_AB92A0();
                                  v1707 = v1706;

                                  v1734 = v1707;
                                }

                                sub_B32CC(v1732, v1734);
                                sub_B35F8(v1719, v1720);
                                *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                                v1746 = &off_D17A20;
                                v1424 = v1722;
                                *&v1744 = v1722;
                                sub_37C074(v1722, 0);
                                sub_3B8C40(&v1744, &off_CEF8C8, sub_178404);
                                sub_12E1C(&v1744, &unk_DE9C60);
                                v1425 = v1249;
                                goto LABEL_1158;
                              }
                            }

                            v1252 = sub_AB37F0();
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798);
                            v1253 = swift_allocObject();
                            *(v1253 + 16) = xmmword_AF4EC0;
                            *(v1253 + 32) = 7;
                            LOBYTE(v1252) = sub_3D64F0(v1252, v1253);

                            if (v1252)
                            {
                              v1254 = sub_3B336C(a2, type metadata accessor for SongCell);
                              sub_142740(v1732, v1734);
                              sub_142958(v1719, v1720);
                              *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                              v1746 = &off_D17A20;
                              *&v1744 = v49;
                              sub_37C074(v49, 0);
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_178218);
                              sub_12E1C(&v1744, &unk_DE9C60);
                              v104 = v1254;
                              sub_200878(1);
                              sub_20085C(1);

                              sub_143BBC(v1721 & 1);
                              sub_143184([v49 isFavorite]);
LABEL_852:

LABEL_853:
                              v221 = v49;
                              v222 = 0;
                              goto LABEL_945;
                            }

                            v24 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                            if (sub_3CDB98())
                            {
                              v1255 = 2;
                            }

                            else
                            {
                              v1255 = 0;
                            }

                            AlbumCell.layoutStyle.setter(v1255);
                            v1256 = sub_AB37F0();
                            v1257 = sub_3D60D4(v1256);
                            v487 = v1721;
                            if (v1257)
                            {
                              v1258 = sub_AB37B0();
                              v61 = __OFADD__(v1258, 1);
                              v1259 = v1258 + 1;
                              if (!v61)
                              {
                                goto LABEL_850;
                              }

                              __break(1u);
                            }

                            v1259 = 0;
LABEL_850:
                            AlbumCell.rank.setter(v1259, (v1257 & 1) == 0);
                            AlbumCell.title.setter(v1732, v1734);
                            AlbumCell.artistName.setter(v1719, v1720);
                            *(&v1745 + 1) = sub_13C80(0, &qword_DE8E90);
                            v1746 = &off_D17A20;
                            *&v1744 = v49;
                            sub_37C074(v49, 0);
                            sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                            sub_12E1C(&v1744, &unk_DE9C60);
                            goto LABEL_851;
                          }

                          v280 = [v49 artist];
                          if (v280)
                          {
                            v281 = v280;
                            v282 = [v280 name];
                            if (v282)
                            {
                              v283 = v282;
                              v1719 = sub_AB92A0();
                              v1720 = v284;

                              goto LABEL_308;
                            }
                          }

                          v1719 = 0;
                          v1720 = 0xE000000000000000;
                          goto LABEL_308;
                        }

                        if ([v139 uniformCellType] == &dword_4 + 3)
                        {
                          v104 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                          v329 = [v1725 headlineText];
                          if (v329)
                          {
                            v330 = v329;
                            v331 = sub_AB92A0();
                            v333 = v332;
                          }

                          else
                          {
                            v331 = 0;
                            v333 = 0xE000000000000000;
                          }

                          sub_14D848(v331, v333);
                          v681 = [v1725 titleText];
                          if (v681 || (v681 = [v49 title]) != 0)
                          {
                            v682 = v681;
                            v683 = sub_AB92A0();
                            v685 = v684;
                          }

                          else
                          {
                            v683 = 0;
                            v685 = 0xE000000000000000;
                          }

                          sub_14DAA0(v683, v685);
                          v686 = [v1725 subtitleText];
                          if (v686)
                          {
                            v687 = v686;
                            v688 = sub_AB92A0();
                            v690 = v689;
                          }

                          else
                          {
                            v688 = 0;
                            v690 = 0xE000000000000000;
                          }

                          sub_14DD00(v688, v690);
                          v696 = [v1725 descriptionText];
                          if (v696)
                          {
                            v697 = v696;
                            v698 = sub_AB92A0();
                            v700 = v699;
                          }

                          else
                          {
                            v698 = 0;
                            v700 = 0xE000000000000000;
                          }

                          sub_14DFF4(v698, v700);
                          sub_14E270(v53 & 1);
                          goto LABEL_460;
                        }

                        if ([v139 uniformCellType] == &dword_4)
                        {
                          v426 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                          v427 = sub_AB37F0();
                          if (sub_3D60D4(v427))
                          {
                            v428 = [v49 title];
                            if (v428)
                            {
                              v429 = v428;
                              v430 = sub_AB92A0();
                              v432 = v431;
                            }

                            else
                            {
                              v430 = 0;
                              v432 = 0;
                            }

                            a2 = v1743;
                            v1169 = sub_3D67E4(v430, v432);
                            v1171 = v1170;

                            sub_171DC0(v1169, v1171);
                          }

                          else
                          {
                            v792 = [v1725 titleText];
                            if (v792 || (v792 = [v49 title]) != 0)
                            {
                              v793 = v792;
                              v794 = sub_AB92A0();
                              v796 = v795;
                            }

                            else
                            {
                              v794 = 0;
                              v796 = 0xE000000000000000;
                            }

                            sub_171DC0(v794, v796);
                            a2 = v1743;
                          }

                          sub_172064(0, 0xE000000000000000);
                          v104 = v426;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                          v1746 = 0;
                          v1744 = 0u;
                          v1745 = 0u;
                          v1172 = sub_1783BC;
                          goto LABEL_933;
                        }

                        if ([v139 uniformCellType] == &dword_4 + 1)
                        {
                          v585 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                          v586 = [v1725 headlineText];
                          if (v586)
                          {
                            v587 = v586;
                            v588 = sub_AB92A0();
                            v590 = v589;
                          }

                          else
                          {
                            v588 = 0;
                            v590 = 0xE000000000000000;
                          }

                          sub_1E0214(v588, v590);
                          v1183 = [v1725 titleText];
                          if (v1183 || (v1183 = [v49 title]) != 0)
                          {
                            v1184 = v1183;
                            v1185 = sub_AB92A0();
                            v1187 = v1186;
                          }

                          else
                          {
                            v1185 = 0;
                            v1187 = 0xE000000000000000;
                          }

                          sub_1E046C(v1185, v1187);
                          v1188 = [v1725 subtitleText];
                          if (v1188)
                          {
                            v1189 = v1188;
                            v1190 = sub_AB92A0();
                            v1192 = v1191;
                          }

                          else
                          {
                            v1190 = 0;
                            v1192 = 0xE000000000000000;
                          }

                          sub_1E06CC(v1190, v1192);
                          v1198 = [v1725 descriptionText];
                          if (v1198)
                          {
                            v1199 = v1198;
                            v1200 = sub_AB92A0();
                            v1202 = v1201;
                          }

                          else
                          {
                            v1200 = 0;
                            v1202 = 0xE000000000000000;
                          }

                          sub_1E09C0(v1200, v1202);
                          v104 = v585;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                          v1033 = v49;
                          v1034 = 13;
                          goto LABEL_664;
                        }

                        if ([v1741 uniformCellType] == &dword_8 + 2)
                        {
                          v1722 = v49;
                          v809 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                          v810 = sub_AB3770().super.isa;
                          v811 = [v809 itemAtIndexPath:v810];

                          type metadata accessor for JSPosterItem();
                          v812 = swift_dynamicCastClass();
                          if (v812)
                          {
                            v813 = v812;
                            v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                            v814 = (*&stru_4C8.sectname[swift_isaMask & *v813])();
                            if ((v814 == 2) | v814 & 1)
                            {
                              v815 = 2;
                            }

                            else
                            {
                              v815 = 0;
                            }

                            v816 = [v1725 titleText];
                            if (v816)
                            {
                              v817 = v816;
                              v818 = sub_AB92A0();
                              v820 = v819;
                            }

                            else
                            {
                              v818 = 0;
                              v820 = 0xE000000000000000;
                            }

                            sub_37AC4(v818, v820);
                            v1567 = [v1725 subtitleText];
                            if (v1567)
                            {
                              v1568 = v1567;
                              v1569 = sub_AB92A0();
                              v1571 = v1570;
                            }

                            else
                            {
                              v1569 = 0;
                              v1571 = 0xE000000000000000;
                            }

                            sub_37B14(v1569, v1571);
                            v1577 = [v1725 descriptionText];
                            if (v1577)
                            {
                              v1578 = v1577;
                              v1579 = sub_AB92A0();
                              v1581 = v1580;
                            }

                            else
                            {
                              v1579 = 0;
                              v1581 = 0xE000000000000000;
                            }

                            sub_37CA8(v1579, v1581);
                            v1601 = *(&stru_1F8.size + (swift_isaMask & *v813));
                            v1602 = swift_unknownObjectRetain();
                            v1603 = v1601(v1602);
                            v1605 = v1604;
                            swift_unknownObjectRelease();
                            if (v1605)
                            {
                              v1606 = v1603;
                            }

                            else
                            {
                              v1606 = 0;
                            }

                            if (v1605)
                            {
                              v1607 = v1605;
                            }

                            else
                            {
                              v1607 = 0xE000000000000000;
                            }

                            sub_38508(v1606, v1607);
                            v1608 = sub_39AC8(v815);
                            v1609 = (*(&stru_478.reloff + (swift_isaMask & *v813)))(v1608);
                            v1610 = sub_3863C(v1609);
                            v1611 = (*&stru_4C8.segname[(swift_isaMask & *v813) + 8])(v1610);
                            sub_38720(v1611);
                            v1612 = (*(&stru_4C8.offset + (swift_isaMask & *v813)))();
                            v1613 = sub_38A9C(v1612);
                            v1614 = *(&stru_4C8.reserved2 + (swift_isaMask & *v813));
                            v1615 = v1614(v1613);
                            if (v1615)
                            {
                              v1616 = v1615;
                              v1617 = (*&stru_298.sectname[swift_isaMask & *v1615])();
                              v1619 = v1618;
                            }

                            else
                            {
                              v1617 = 0;
                              v1619 = 0;
                            }

                            v1625 = sub_38F48(v1617, v1619);
                            v1626 = v1614(v1625);
                            if (v1626)
                            {
                              v1627 = v1626;
                              v1628 = (*&stru_298.segname[(swift_isaMask & *v1626) + 8])();

                              v1629 = v1628 & 1;
                            }

                            else
                            {
                              v1629 = 2;
                            }

                            sub_38F98(v1629);
                            v1636 = (*&stru_518.segname[swift_isaMask & *v813])();
                            sub_39C54(v1636 & 1);
                            v1637 = [v1725 overlayTitleText];
                            if (v1637)
                            {
                              v1638 = v1637;
                              v1639 = sub_AB92A0();
                              v1641 = v1640;
                            }

                            else
                            {
                              v1639 = 0;
                              v1641 = 0xE000000000000000;
                            }

                            sub_37EC8(v1639, v1641);
                            v1647 = [v1725 overlaySubtitleText];
                            if (v1647)
                            {
                              v1648 = v1647;
                              v1649 = sub_AB92A0();
                              v1651 = v1650;
                            }

                            else
                            {
                              v1649 = 0;
                              v1651 = 0xE000000000000000;
                            }

                            sub_3838C(v1649, v1651);
                            v1746 = 0;
                            v1744 = 0u;
                            v1745 = 0u;
                            sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                            swift_unknownObjectRelease();
                            sub_12E1C(&v1744, &unk_DE9C60);
                            v1033 = v1722;
                            v1034 = 13;
                            goto LABEL_664;
                          }

                          swift_unknownObjectRelease();
                          a2 = v1743;
                          v49 = v1722;
                        }
                      }

                      v1338 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                      v1339 = [v1725 headlineText];
                      if (v1339)
                      {
                        v1340 = v1339;
                        v1341 = sub_AB92A0();
                        v1343 = v1342;
                      }

                      else
                      {
                        v1341 = 0;
                        v1343 = 0xE000000000000000;
                      }

                      sub_2B60B8(v1341, v1343);
                      v1344 = sub_AB37F0();
                      v1345 = sub_3D60D4(v1344);
                      v1346 = [v49 title];
                      if (v1345)
                      {
                        if (v1346)
                        {
                          v1347 = v1346;
                          v1348 = sub_AB92A0();
                          v1350 = v1349;
                        }

                        else
                        {
                          v1348 = 0;
                          v1350 = 0;
                        }

                        v1355 = sub_3D67E4(v1348, v1350);
                        v1357 = v1356;

                        v1358 = v1355;
                        v1359 = v1357;
                      }

                      else
                      {
                        if (v1346)
                        {
                          v1351 = v1346;
                          v1352 = sub_AB92A0();
                          v1354 = v1353;
                        }

                        else
                        {
                          v1352 = 0;
                          v1354 = 0xE000000000000000;
                        }

                        v1358 = v1352;
                        v1359 = v1354;
                      }

                      sub_2B62C8(v1358, v1359);
                      v1360 = [v1725 subtitleText];
                      if (v1360)
                      {
                        v1361 = v1360;
                        v1362 = sub_AB92A0();
                        v1364 = v1363;
                      }

                      else
                      {
                        v1362 = 0;
                        v1364 = 0xE000000000000000;
                      }

                      sub_2B6574(v1362, v1364);
                      v104 = v1338;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                      v1746 = 0;
                      v1744 = 0u;
                      v1745 = 0u;
                      v1172 = sub_1783E0;
LABEL_933:
                      sub_3B8C40(&v1744, &off_CEFDE8, v1172);

                      sub_12E1C(&v1744, &unk_DE9C60);
                      goto LABEL_934;
                    }

                    v193 = v1741;
                    if (v1741)
                    {
                      if ([v1741 uniformCellType] == &dword_0 + 1)
                      {
                        v194 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                        v195 = sub_AB37F0();
                        v196 = sub_3D60D4(v195);
                        if ((v196 & 1) == 0)
                        {
                          v198 = 0;
                          goto LABEL_237;
                        }

                        v55 = a2;
                        v197 = sub_AB37B0();
                        v61 = __OFADD__(v197, 1);
                        v198 = v197 + 1;
                        if (!v61)
                        {
LABEL_237:
                          AlbumCell.rank.setter(v198, (v196 & 1) == 0);
                          v390 = [v1725 titleText];
                          if (v390 || (v390 = [v49 title]) != 0)
                          {
                            v391 = v390;
                            v392 = sub_AB92A0();
                            v394 = v393;
                          }

                          else
                          {
                            v392 = 0;
                            v394 = 0xE000000000000000;
                          }

                          AlbumCell.title.setter(v392, v394);
                          v395 = [v1725 subtitleText];
                          if (v395)
                          {
                            v396 = v395;
                            v397 = sub_AB92A0();
                            v399 = v398;
                          }

                          else
                          {
                            v397 = 0;
                            v399 = 0xE000000000000000;
                          }

                          AlbumCell.artistName.setter(v397, v399);
                          *(&v1745 + 1) = sub_13C80(0, &unk_E03780);
                          v1746 = &off_D17B10;
                          *&v1744 = v49;
                          sub_37C074(v49, 12);
                          sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                          sub_12E1C(&v1744, &unk_DE9C60);
                          AlbumCell.layoutStyle.setter(0);
                          v104 = v194;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                          goto LABEL_412;
                        }

                        __break(1u);
LABEL_130:

                        v199 = v1741;
                        if (v1741)
                        {
                          if ([v1741 uniformCellType] == &dword_0 + 3)
                          {
                            v200 = sub_3B336C(a2, type metadata accessor for FeaturedRadioShowCell);
                            v201 = [v1725 headlineText];
                            if (v201)
                            {
                              v202 = v201;
                              v203 = sub_AB92A0();
                              v205 = v204;
                            }

                            else
                            {
                              v203 = 0;
                              v205 = 0xE000000000000000;
                            }

                            sub_233E78(v203, v205);
                            v462 = [v1725 titleText];
                            if (v462 || (v462 = [v49 name]) != 0)
                            {
                              v463 = v462;
                              v464 = sub_AB92A0();
                              v466 = v465;
                            }

                            else
                            {
                              v464 = 0;
                              v466 = 0xE000000000000000;
                            }

                            sub_234088(v464, v466);
                            v467 = [v1725 subtitleText];
                            if (v467 || (v467 = [v49 shortEditorNotes]) != 0 || (v467 = objc_msgSend(v49, "editorNotes")) != 0)
                            {
                              v468 = v467;
                              v469 = sub_AB92A0();
                              v471 = v470;
                            }

                            else
                            {
                              v469 = 0;
                              v471 = 0xE000000000000000;
                            }

                            sub_234334(v469, v471);
                            v104 = v200;
                            sub_200878(0);
                            sub_20085C(1);
                            sub_200620(v53 & 1);
                            goto LABEL_488;
                          }

                          if ([v199 uniformCellType] == &dword_8 + 2)
                          {
                            v312 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                            v313 = sub_AB3770().super.isa;
                            v314 = [v312 itemAtIndexPath:v313];

                            type metadata accessor for JSPosterItem();
                            v315 = swift_dynamicCastClass();
                            if (v315)
                            {
                              v316 = v315;
                              v104 = sub_3B336C(a2, type metadata accessor for PosterCell);
                              v317 = (*&stru_4C8.sectname[swift_isaMask & *v316])();
                              if ((v317 == 2) | v317 & 1)
                              {
                                v318 = 2;
                              }

                              else
                              {
                                v318 = 0;
                              }

                              LODWORD(v1734) = v318;
                              v319 = [v1725 titleText];
                              if (v319)
                              {
                                v320 = v319;
                                v321 = sub_AB92A0();
                                v323 = v322;
                              }

                              else
                              {
                                v321 = 0;
                                v323 = 0xE000000000000000;
                              }

                              sub_37AC4(v321, v323);
                              v885 = [v1725 subtitleText];
                              v1722 = v49;
                              if (v885)
                              {
                                v886 = v885;
                                v887 = sub_AB92A0();
                                v889 = v888;
                              }

                              else
                              {
                                v887 = 0;
                                v889 = 0xE000000000000000;
                              }

                              sub_37B14(v887, v889);
                              v890 = [v1725 descriptionText];
                              if (v890)
                              {
                                v891 = v890;
                                v892 = sub_AB92A0();
                                v894 = v893;
                              }

                              else
                              {
                                v892 = 0;
                                v894 = 0xE000000000000000;
                              }

                              sub_37CA8(v892, v894);
                              v895 = *(&stru_1F8.size + (swift_isaMask & *v316));
                              v896 = swift_unknownObjectRetain();
                              v897 = v895(v896);
                              v899 = v898;
                              swift_unknownObjectRelease();
                              if (v899)
                              {
                                v900 = v897;
                              }

                              else
                              {
                                v900 = 0;
                              }

                              if (v899)
                              {
                                v901 = v899;
                              }

                              else
                              {
                                v901 = 0xE000000000000000;
                              }

                              sub_38508(v900, v901);
                              v902 = sub_39AC8(v1734);
                              v903 = (*(&stru_478.reloff + (swift_isaMask & *v316)))(v902);
                              v904 = sub_3863C(v903);
                              v905 = (*&stru_4C8.segname[(swift_isaMask & *v316) + 8])(v904);
                              sub_38720(v905);
                              v906 = (*(&stru_4C8.offset + (swift_isaMask & *v316)))();
                              v907 = sub_38A9C(v906);
                              v908 = *(&stru_4C8.reserved2 + (swift_isaMask & *v316));
                              v909 = v908(v907);
                              if (v909)
                              {
                                v910 = v909;
                                v911 = (*&stru_298.sectname[swift_isaMask & *v909])();
                                v913 = v912;
                              }

                              else
                              {
                                v911 = 0;
                                v913 = 0;
                              }

                              v914 = sub_38F48(v911, v913);
                              v915 = v908(v914);
                              if (v915)
                              {
                                v916 = v915;
                                v917 = (*&stru_298.segname[(swift_isaMask & *v915) + 8])();

                                v918 = v917 & 1;
                              }

                              else
                              {
                                v918 = 2;
                              }

                              v919 = v1722;
                              v920 = v1725;
                              sub_38F98(v918);
                              v921 = (*&stru_518.segname[swift_isaMask & *v316])();
                              sub_39C54(v921 & 1);
                              v922 = [v920 overlayTitleText];
                              if (v922)
                              {
                                v923 = v922;
                                v924 = sub_AB92A0();
                                v926 = v925;
                              }

                              else
                              {
                                v924 = 0;
                                v926 = 0xE000000000000000;
                              }

                              sub_37EC8(v924, v926);
                              v927 = [v920 overlaySubtitleText];
                              if (v927)
                              {
                                v928 = v927;
                                v929 = sub_AB92A0();
                                v931 = v930;
                              }

                              else
                              {
                                v929 = 0;
                                v931 = 0xE000000000000000;
                              }

                              sub_3838C(v929, v931);
                              v1746 = 0;
                              v1744 = 0u;
                              v1745 = 0u;
                              sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                              swift_unknownObjectRelease();
                              sub_12E1C(&v1744, &unk_DE9C60);
                              v221 = v919;
                              v222 = 3;
                              goto LABEL_945;
                            }

                            swift_unknownObjectRelease();
                            v199 = v1741;
                          }

                          if ([v199 uniformCellType] == &dword_4 + 2)
                          {
                            v633 = sub_3B336C(a2, type metadata accessor for FeaturedPlaylistCell);
                            v634 = [v1725 titleText];
                            if (v634 || (v634 = [v49 name]) != 0)
                            {
                              v635 = v634;
                              v636 = sub_AB92A0();
                              v638 = v637;
                            }

                            else
                            {
                              v636 = 0;
                              v638 = 0xE000000000000000;
                            }

                            sub_F5FC4(v636, v638);
                            v639 = [v1725 descriptionText];
                            if (v639 || (v639 = [v49 editorNotes]) != 0)
                            {
                              v640 = v639;
                              v641 = sub_AB92A0();
                              v643 = v642;
                            }

                            else
                            {
                              v641 = 0;
                              v643 = 0xE000000000000000;
                            }

                            sub_F6268(v641, v643);
                            v104 = v633;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                            v1746 = 0;
                            v1744 = 0u;
                            v1745 = 0u;
                            sub_3B8C40(&v1744, &off_CEFDE8, sub_1785D0);

                            sub_12E1C(&v1744, &unk_DE9C60);
                            goto LABEL_489;
                          }
                        }

                        if ([v49 curatorKind] == &dword_0 + 3)
                        {
                          v644 = sub_3B336C(a2, type metadata accessor for CuratorActivityCell);
                          v645 = [v49 name];
                          if (v645)
                          {
                            v646 = v645;
                            v647 = sub_AB92A0();
                            v649 = v648;
                          }

                          else
                          {
                            v647 = 0;
                            v649 = 0xE000000000000000;
                          }

                          CuratorActivityCell.title.setter(v647, v649);
                        }

                        else
                        {
                          if ([v49 curatorKind] != &dword_0 + 1)
                          {
                            v104 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                            sub_361EF0(0, 0, 0, 0);
                            v665 = [v1725 titleText];
                            if (v665 || (v665 = [v49 name]) != 0)
                            {
                              v666 = v665;
                              v667 = sub_AB92A0();
                              v669 = v668;
                            }

                            else
                            {
                              v667 = 0;
                              v669 = 0xE000000000000000;
                            }

                            sub_1FD7A8(v667, v669);
                            sub_1FDACC(0, 0xE000000000000000);
                            v670 = v53 & 1;
                            goto LABEL_487;
                          }

                          v644 = sub_3B336C(a2, type metadata accessor for RadioShowCell);
                          v650 = [v1725 titleText];
                          if (v650 || (v650 = [v49 shortName]) != 0)
                          {
                            v651 = v650;
                            v652 = sub_AB92A0();
                            v654 = v653;
                          }

                          else
                          {
                            v652 = 0;
                            v654 = 0xE000000000000000;
                          }

                          RadioShowCell.title.setter(v652, v654);
                          v655 = [v1725 subtitleText];
                          if (v655 || (v655 = [v49 name]) != 0)
                          {
                            v656 = v655;
                            v657 = sub_AB92A0();
                            v659 = v658;
                          }

                          else
                          {
                            v657 = 0;
                            v659 = 0xE000000000000000;
                          }

                          RadioShowCell.subtitle.setter(v657, v659);
                          v660 = [v1725 overlayTitleText];
                          if (v660)
                          {
                            v661 = v660;
                            v662 = sub_AB92A0();
                            v664 = v663;
                          }

                          else
                          {
                            v662 = 0;
                            v664 = 0xE000000000000000;
                          }

                          RadioShowCell.overlayTitle.setter(v662, v664);
                          v731 = [v1725 overlaySubtitleText];
                          if (v731)
                          {
                            v732 = v731;
                            v733 = sub_AB92A0();
                            v735 = v734;
                          }

                          else
                          {
                            v733 = 0;
                            v735 = 0xE000000000000000;
                          }

                          RadioShowCell.overlaySubtitle.setter(v733, v735);
                        }

                        v104 = v644;
                        v670 = v53 & 1;
LABEL_487:
                        VerticalLockupCollectionViewCell.isDisabled.setter(v670);
LABEL_488:

LABEL_489:
                        v221 = v49;
                        v222 = 3;
                        goto LABEL_945;
                      }

                      if ([v193 uniformCellType] == &dword_4 + 3)
                      {
                        v104 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                        v307 = [v1725 headlineText];
                        if (v307)
                        {
                          v308 = v307;
                          v309 = sub_AB92A0();
                          v311 = v310;
                        }

                        else
                        {
                          v309 = 0;
                          v311 = 0xE000000000000000;
                        }

                        sub_14D848(v309, v311);
                        v618 = [v1725 titleText];
                        if (v618 || (v618 = [v49 title]) != 0)
                        {
                          v619 = v618;
                          v620 = sub_AB92A0();
                          v622 = v621;
                        }

                        else
                        {
                          v620 = 0;
                          v622 = 0xE000000000000000;
                        }

                        sub_14DAA0(v620, v622);
                        v623 = [v1725 subtitleText];
                        if (v623)
                        {
                          v624 = v623;
                          v625 = sub_AB92A0();
                          v627 = v626;
                        }

                        else
                        {
                          v625 = 0;
                          v627 = 0xE000000000000000;
                        }

                        sub_14DD00(v625, v627);
                        v628 = [v1725 descriptionText];
                        if (v628)
                        {
                          v629 = v628;
                          v630 = sub_AB92A0();
                          v632 = v631;
                        }

                        else
                        {
                          v630 = 0;
                          v632 = 0xE000000000000000;
                        }

                        sub_14DFF4(v630, v632);
                        sub_14E270(v53 & 1);
LABEL_412:

LABEL_874:
                        v221 = v49;
                        v222 = 12;
                        goto LABEL_945;
                      }

                      if ([v193 uniformCellType] == &dword_4)
                      {
                        v400 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                        v401 = sub_AB37F0();
                        if (sub_3D60D4(v401))
                        {
                          v402 = [v49 title];
                          if (v402)
                          {
                            v403 = v402;
                            v404 = sub_AB92A0();
                            v406 = v405;
                          }

                          else
                          {
                            v404 = 0;
                            v406 = 0;
                          }

                          a2 = v1743;
                          v1136 = sub_3D67E4(v404, v406);
                          v1138 = v1137;

                          sub_171DC0(v1136, v1138);
                        }

                        else
                        {
                          v760 = [v1725 titleText];
                          if (v760 || (v760 = [v49 title]) != 0)
                          {
                            v761 = v760;
                            v762 = sub_AB92A0();
                            v764 = v763;
                          }

                          else
                          {
                            v762 = 0;
                            v764 = 0xE000000000000000;
                          }

                          sub_171DC0(v762, v764);
                          a2 = v1743;
                        }

                        v1139 = [v1725 subtitleText];
                        if (v1139)
                        {
                          v1140 = v1139;
                          v1141 = sub_AB92A0();
                          v1143 = v1142;
                        }

                        else
                        {
                          v1141 = 0;
                          v1143 = 0xE000000000000000;
                        }

                        sub_172064(v1141, v1143);
                        v104 = v400;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                        *(&v1745 + 1) = sub_13C80(0, &unk_E03780);
                        v1746 = &off_D17B10;
                        *&v1744 = v49;
                        sub_37C074(v49, 12);
                        v1144 = sub_1783BC;
LABEL_873:
                        sub_3B8C40(&v1744, &off_CEFDE8, v1144);

                        sub_12E1C(&v1744, &unk_DE9C60);
                        goto LABEL_874;
                      }

                      if ([v193 uniformCellType] == &dword_4 + 1)
                      {
                        v556 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                        v557 = [v1725 headlineText];
                        if (v557)
                        {
                          v558 = v557;
                          v559 = sub_AB92A0();
                          v561 = v560;
                        }

                        else
                        {
                          v559 = 0;
                          v561 = 0xE000000000000000;
                        }

                        sub_1E0214(v559, v561);
                        v1148 = [v1725 titleText];
                        if (v1148 || (v1148 = [v49 title]) != 0)
                        {
                          v1149 = v1148;
                          v1150 = sub_AB92A0();
                          v1152 = v1151;
                        }

                        else
                        {
                          v1150 = 0;
                          v1152 = 0xE000000000000000;
                        }

                        sub_1E046C(v1150, v1152);
                        v1153 = [v1725 subtitleText];
                        if (v1153)
                        {
                          v1154 = v1153;
                          v1155 = sub_AB92A0();
                          v1157 = v1156;
                        }

                        else
                        {
                          v1155 = 0;
                          v1157 = 0xE000000000000000;
                        }

                        sub_1E06CC(v1155, v1157);
                        v1163 = [v1725 descriptionText];
                        if (v1163)
                        {
                          v1164 = v1163;
                          v1165 = sub_AB92A0();
                          v1167 = v1166;
                        }

                        else
                        {
                          v1165 = 0;
                          v1167 = 0xE000000000000000;
                        }

                        sub_1E09C0(v1165, v1167);
                        v104 = v556;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                        v1033 = v49;
                        v1034 = 12;
                        goto LABEL_664;
                      }

                      if ([v1741 uniformCellType] == &dword_8 + 2)
                      {
                        v1722 = v49;
                        v767 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                        v768 = sub_AB3770().super.isa;
                        v769 = [v767 itemAtIndexPath:v768];

                        type metadata accessor for JSPosterItem();
                        v770 = swift_dynamicCastClass();
                        if (v770)
                        {
                          v771 = v770;
                          v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                          v772 = (*&stru_4C8.sectname[swift_isaMask & *v771])();
                          if ((v772 == 2) | v772 & 1)
                          {
                            v773 = 2;
                          }

                          else
                          {
                            v773 = 0;
                          }

                          v774 = [v1725 titleText];
                          if (v774)
                          {
                            v775 = v774;
                            v776 = sub_AB92A0();
                            v778 = v777;
                          }

                          else
                          {
                            v776 = 0;
                            v778 = 0xE000000000000000;
                          }

                          sub_37AC4(v776, v778);
                          v1471 = [v1725 subtitleText];
                          if (v1471)
                          {
                            v1472 = v1471;
                            v1473 = sub_AB92A0();
                            v1475 = v1474;
                          }

                          else
                          {
                            v1473 = 0;
                            v1475 = 0xE000000000000000;
                          }

                          sub_37B14(v1473, v1475);
                          v1481 = [v1725 descriptionText];
                          if (v1481)
                          {
                            v1482 = v1481;
                            v1483 = sub_AB92A0();
                            v1485 = v1484;
                          }

                          else
                          {
                            v1483 = 0;
                            v1485 = 0xE000000000000000;
                          }

                          sub_37CA8(v1483, v1485);
                          v1491 = *(&stru_1F8.size + (swift_isaMask & *v771));
                          v1492 = swift_unknownObjectRetain();
                          v1493 = v1491(v1492);
                          v1495 = v1494;
                          swift_unknownObjectRelease();
                          if (v1495)
                          {
                            v1496 = v1493;
                          }

                          else
                          {
                            v1496 = 0;
                          }

                          if (v1495)
                          {
                            v1497 = v1495;
                          }

                          else
                          {
                            v1497 = 0xE000000000000000;
                          }

                          sub_38508(v1496, v1497);
                          v1498 = sub_39AC8(v773);
                          v1499 = (*(&stru_478.reloff + (swift_isaMask & *v771)))(v1498);
                          v1500 = sub_3863C(v1499);
                          v1501 = (*&stru_4C8.segname[(swift_isaMask & *v771) + 8])(v1500);
                          sub_38720(v1501);
                          v1502 = (*(&stru_4C8.offset + (swift_isaMask & *v771)))();
                          v1503 = sub_38A9C(v1502);
                          v1504 = *(&stru_4C8.reserved2 + (swift_isaMask & *v771));
                          v1505 = v1504(v1503);
                          if (v1505)
                          {
                            v1506 = v1505;
                            v1507 = (*&stru_298.sectname[swift_isaMask & *v1505])();
                            v1509 = v1508;
                          }

                          else
                          {
                            v1507 = 0;
                            v1509 = 0;
                          }

                          v1529 = sub_38F48(v1507, v1509);
                          v1530 = v1504(v1529);
                          if (v1530)
                          {
                            v1531 = v1530;
                            v1532 = (*&stru_298.segname[(swift_isaMask & *v1530) + 8])();

                            v1533 = v1532 & 1;
                          }

                          else
                          {
                            v1533 = 2;
                          }

                          sub_38F98(v1533);
                          v1539 = (*&stru_518.segname[swift_isaMask & *v771])();
                          sub_39C54(v1539 & 1);
                          v1540 = [v1725 overlayTitleText];
                          if (v1540)
                          {
                            v1541 = v1540;
                            v1542 = sub_AB92A0();
                            v1544 = v1543;
                          }

                          else
                          {
                            v1542 = 0;
                            v1544 = 0xE000000000000000;
                          }

                          sub_37EC8(v1542, v1544);
                          v1551 = [v1725 overlaySubtitleText];
                          if (v1551)
                          {
                            v1552 = v1551;
                            v1553 = sub_AB92A0();
                            v1555 = v1554;
                          }

                          else
                          {
                            v1553 = 0;
                            v1555 = 0xE000000000000000;
                          }

                          sub_3838C(v1553, v1555);
                          *(&v1745 + 1) = sub_13C80(0, &unk_E03780);
                          v1746 = &off_D17B10;
                          v1561 = v1722;
                          *&v1744 = v1722;
                          sub_37C074(v1722, 12);
                          sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                          swift_unknownObjectRelease();
                          sub_12E1C(&v1744, &unk_DE9C60);
                          v1033 = v1561;
                          v1034 = 12;
                          goto LABEL_664;
                        }

                        swift_unknownObjectRelease();
                        a2 = v1743;
                        v49 = v1722;
                      }
                    }

                    v1260 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                    v1261 = [v1725 headlineText];
                    if (v1261)
                    {
                      v1262 = v1261;
                      v1263 = sub_AB92A0();
                      v1265 = v1264;
                    }

                    else
                    {
                      v1263 = 0;
                      v1265 = 0xE000000000000000;
                    }

                    sub_2B60B8(v1263, v1265);
                    v1266 = sub_AB37F0();
                    if (sub_3D60D4(v1266))
                    {
                      v1267 = [v49 title];
                      if (v1267)
                      {
                        v1268 = v1267;
                        v1269 = sub_AB92A0();
                        v1271 = v1270;
                      }

                      else
                      {
                        v1269 = 0;
                        v1271 = 0;
                      }

                      v1279 = sub_3D67E4(v1269, v1271);
                      v1281 = v1280;

                      v1277 = v1279;
                      v1278 = v1281;
                    }

                    else
                    {
                      v1272 = [v1725 titleText];
                      if (v1272 || (v1272 = [v49 title]) != 0)
                      {
                        v1273 = v1272;
                        v1274 = sub_AB92A0();
                        v1276 = v1275;
                      }

                      else
                      {
                        v1274 = 0;
                        v1276 = 0xE000000000000000;
                      }

                      v1277 = v1274;
                      v1278 = v1276;
                    }

                    sub_2B62C8(v1277, v1278);
                    v1282 = [v1725 subtitleText];
                    if (v1282)
                    {
                      v1283 = v1282;
                      v1284 = sub_AB92A0();
                      v1286 = v1285;
                    }

                    else
                    {
                      v1284 = 0;
                      v1286 = 0xE000000000000000;
                    }

                    sub_2B6574(v1284, v1286);
                    v104 = v1260;
                    VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                    *(&v1745 + 1) = sub_13C80(0, &unk_E03780);
                    v1746 = &off_D17B10;
                    *&v1744 = v49;
                    sub_37C074(v49, 12);
                    v1144 = sub_1783E0;
                    goto LABEL_873;
                  }

                  v223 = v1741;
                  if (v1741)
                  {
                    if ([v1741 uniformCellType] == &dword_0 + 1)
                    {
                      v224 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                      v225 = sub_AB37F0();
                      v226 = sub_3D60D4(v225);
                      if (v226)
                      {
                        v55 = a2;
                        v227 = sub_AB37B0();
                        v61 = __OFADD__(v227, 1);
                        v228 = v227 + 1;
                        if (v61)
                        {
                          __break(1u);
                          goto LABEL_146;
                        }
                      }

                      else
                      {
                        v228 = 0;
                      }

                      AlbumCell.rank.setter(v228, (v226 & 1) == 0);
                      v433 = [v1725 titleText];
                      if (!v433)
                      {
                        v433 = [v49 title];
                        if (!v433)
                        {
                          v736 = 0;
                          v737 = 0xE000000000000000;
LABEL_939:
                          AlbumCell.title.setter(v736, v737);
                          v1367 = [v1725 subtitleText];
                          if (v1367)
                          {
                            v1368 = v1367;
                            v1369 = sub_AB92A0();
                            v1371 = v1370;

                            v1372 = v1371;
                            v1373 = v1369;
                          }

                          else
                          {
                            v1373 = MPModelTVShow.localizedEpisodeCount.getter();
                          }

                          AlbumCell.artistName.setter(v1373, v1372);
                          v1746 = 0;
                          v1744 = 0u;
                          v1745 = 0u;
                          sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                          sub_12E1C(&v1744, &unk_DE9C60);
                          AlbumCell.layoutStyle.setter(0);
LABEL_943:
                          v104 = v224;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

LABEL_944:
                          v221 = v49;
                          v222 = 9;
                          goto LABEL_945;
                        }
                      }

LABEL_938:
                      v1365 = v433;
                      v736 = sub_AB92A0();
                      v737 = v1366;

                      goto LABEL_939;
                    }

                    if ([v223 uniformCellType] == &dword_4 + 3)
                    {
                      v104 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                      v361 = v1725;
                      v362 = sub_3DE9C0(v223, v1725);
                      sub_4C5CB8(v362);
                      sub_4C5DC0(0);
                      v363 = [v361 headlineText];
                      if (v363)
                      {
                        v364 = v363;
                        v365 = sub_AB92A0();
                        v367 = v366;
                      }

                      else
                      {
                        v365 = 0;
                        v367 = 0xE000000000000000;
                      }

                      sub_4C53F0(v365, v367);
                      v701 = [v1725 titleText];
                      if (v701 || (v701 = [v49 title]) != 0)
                      {
                        v702 = v701;
                        v703 = sub_AB92A0();
                        v705 = v704;
                      }

                      else
                      {
                        v703 = 0;
                        v705 = 0xE000000000000000;
                      }

                      sub_4C5610(v703, v705);
                      v706 = [v1725 subtitleText];
                      if (v706)
                      {
                        v707 = v706;
                        v708 = sub_AB92A0();
                        v710 = v709;

                        v711 = v710;
                        v712 = v708;
                      }

                      else
                      {
                        v712 = MPModelTVShow.localizedEpisodeCount.getter();
                      }

                      sub_4C5820(v712, v711);
                      v713 = [v1725 descriptionText];
                      if (v713)
                      {
                        v714 = v713;
                        v715 = sub_AB92A0();
                        v717 = v716;
                      }

                      else
                      {
                        v715 = 0;
                        v717 = 0xE000000000000000;
                      }

                      sub_4C5ACC(v715, v717);
                      sub_4C5EA0(v53 & 1);
                      goto LABEL_944;
                    }

                    if ([v223 uniformCellType] == &dword_4)
                    {
                      v224 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                      v446 = sub_AB37F0();
                      if (sub_3D60D4(v446))
                      {
                        v447 = [v49 title];
                        if (v447)
                        {
                          v448 = v447;
                          v449 = sub_AB92A0();
                          v451 = v450;
                        }

                        else
                        {
                          v449 = 0;
                          v451 = 0;
                        }

                        a2 = v1743;
                        v1203 = sub_3D67E4(v449, v451);
                        v1205 = v1204;

                        sub_171DC0(v1203, v1205);
                      }

                      else
                      {
                        v821 = [v1725 titleText];
                        if (v821 || (v821 = [v49 title]) != 0)
                        {
                          v822 = v821;
                          v823 = sub_AB92A0();
                          v825 = v824;
                        }

                        else
                        {
                          v823 = 0;
                          v825 = 0xE000000000000000;
                        }

                        sub_171DC0(v823, v825);
                        a2 = v1743;
                      }

                      sub_172064(0, 0xE000000000000000);
                      goto LABEL_943;
                    }

                    if ([v223 uniformCellType] == &dword_4 + 1)
                    {
                      v595 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                      v596 = [v1725 headlineText];
                      if (v596)
                      {
                        v597 = v596;
                        v598 = sub_AB92A0();
                        v600 = v599;
                      }

                      else
                      {
                        v598 = 0;
                        v600 = 0xE000000000000000;
                      }

                      sub_1E0214(v598, v600);
                      v1206 = [v1725 titleText];
                      if (v1206 || (v1206 = [v49 title]) != 0)
                      {
                        v1207 = v1206;
                        v1208 = sub_AB92A0();
                        v1210 = v1209;
                      }

                      else
                      {
                        v1208 = 0;
                        v1210 = 0xE000000000000000;
                      }

                      sub_1E046C(v1208, v1210);
                      v1211 = [v1725 subtitleText];
                      if (v1211)
                      {
                        v1212 = v1211;
                        v1213 = sub_AB92A0();
                        v1215 = v1214;
                      }

                      else
                      {
                        v1213 = 0;
                        v1215 = 0xE000000000000000;
                      }

                      sub_1E06CC(v1213, v1215);
                      v1216 = [v1725 descriptionText];
                      if (v1216)
                      {
                        v1217 = v1216;
                        v1218 = sub_AB92A0();
                        v1220 = v1219;
                      }

                      else
                      {
                        v1218 = 0;
                        v1220 = 0xE000000000000000;
                      }

                      sub_1E09C0(v1218, v1220);
                      v104 = v595;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                      v1033 = v49;
                      v1034 = 9;
                      goto LABEL_664;
                    }

                    if ([v1741 uniformCellType] == &dword_8 + 2)
                    {
                      v1722 = v49;
                      v826 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                      v827 = sub_AB3770().super.isa;
                      v828 = [v826 itemAtIndexPath:v827];

                      type metadata accessor for JSPosterItem();
                      v829 = swift_dynamicCastClass();
                      if (v829)
                      {
                        v830 = v829;
                        v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                        v831 = (*&stru_4C8.sectname[swift_isaMask & *v830])();
                        if ((v831 == 2) | v831 & 1)
                        {
                          v832 = 2;
                        }

                        else
                        {
                          v832 = 0;
                        }

                        v833 = [v1725 titleText];
                        if (v833)
                        {
                          v834 = v833;
                          v835 = sub_AB92A0();
                          v837 = v836;
                        }

                        else
                        {
                          v835 = 0;
                          v837 = 0xE000000000000000;
                        }

                        sub_37AC4(v835, v837);
                        v1653 = [v1725 subtitleText];
                        if (v1653)
                        {
                          v1654 = v1653;
                          v1655 = sub_AB92A0();
                          v1657 = v1656;
                        }

                        else
                        {
                          v1655 = 0;
                          v1657 = 0xE000000000000000;
                        }

                        sub_37B14(v1655, v1657);
                        v1658 = [v1725 descriptionText];
                        if (v1658)
                        {
                          v1659 = v1658;
                          v1660 = sub_AB92A0();
                          v1662 = v1661;
                        }

                        else
                        {
                          v1660 = 0;
                          v1662 = 0xE000000000000000;
                        }

                        sub_37CA8(v1660, v1662);
                        v1663 = *(&stru_1F8.size + (swift_isaMask & *v830));
                        v1664 = swift_unknownObjectRetain();
                        v1665 = v1663(v1664);
                        v1667 = v1666;
                        swift_unknownObjectRelease();
                        if (v1667)
                        {
                          v1668 = v1665;
                        }

                        else
                        {
                          v1668 = 0;
                        }

                        if (v1667)
                        {
                          v1669 = v1667;
                        }

                        else
                        {
                          v1669 = 0xE000000000000000;
                        }

                        sub_38508(v1668, v1669);
                        v1670 = sub_39AC8(v832);
                        v1671 = (*(&stru_478.reloff + (swift_isaMask & *v830)))(v1670);
                        v1672 = sub_3863C(v1671);
                        v1673 = (*&stru_4C8.segname[(swift_isaMask & *v830) + 8])(v1672);
                        sub_38720(v1673);
                        v1674 = (*(&stru_4C8.offset + (swift_isaMask & *v830)))();
                        v1675 = sub_38A9C(v1674);
                        v1676 = *(&stru_4C8.reserved2 + (swift_isaMask & *v830));
                        v1677 = v1676(v1675);
                        if (v1677)
                        {
                          v1678 = v1677;
                          v1679 = (*&stru_298.sectname[swift_isaMask & *v1677])();
                          v1681 = v1680;
                        }

                        else
                        {
                          v1679 = 0;
                          v1681 = 0;
                        }

                        v1682 = sub_38F48(v1679, v1681);
                        v1683 = v1676(v1682);
                        if (v1683)
                        {
                          v1684 = v1683;
                          v1685 = (*&stru_298.segname[(swift_isaMask & *v1683) + 8])();

                          v1686 = v1685 & 1;
                        }

                        else
                        {
                          v1686 = 2;
                        }

                        sub_38F98(v1686);
                        v1687 = (*&stru_518.segname[swift_isaMask & *v830])();
                        sub_39C54(v1687 & 1);
                        v1688 = [v1725 overlayTitleText];
                        if (v1688)
                        {
                          v1689 = v1688;
                          v1690 = sub_AB92A0();
                          v1692 = v1691;
                        }

                        else
                        {
                          v1690 = 0;
                          v1692 = 0xE000000000000000;
                        }

                        sub_37EC8(v1690, v1692);
                        v1693 = [v1725 overlaySubtitleText];
                        if (v1693)
                        {
                          v1694 = v1693;
                          v1695 = sub_AB92A0();
                          v1697 = v1696;
                        }

                        else
                        {
                          v1695 = 0;
                          v1697 = 0xE000000000000000;
                        }

                        sub_3838C(v1695, v1697);
                        v1746 = 0;
                        v1744 = 0u;
                        v1745 = 0u;
                        sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                        swift_unknownObjectRelease();
                        sub_12E1C(&v1744, &unk_DE9C60);
                        v1033 = v1722;
                        v1034 = 9;
                        goto LABEL_664;
                      }

                      swift_unknownObjectRelease();
                      a2 = v1743;
                      v49 = v1722;
                    }
                  }

                  v224 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                  v433 = [v1725 titleText];
                  if (!v433)
                  {
                    v433 = [v49 title];
                    if (!v433)
                    {
                      v736 = 0;
                      v737 = 0xE000000000000000;
                      goto LABEL_939;
                    }
                  }

                  goto LABEL_938;
                }

                a2 = v1743;
                if (v52 <= 2u)
                {
                  goto LABEL_94;
                }

                v55 = v1728;
                if (v52 == 3)
                {
                  goto LABEL_130;
                }

                if (v52 != 4)
                {
                  if (v52 != 5)
                  {
                    goto LABEL_146;
                  }

                  if (v1741)
                  {
                    if (([v1741 uniformCellType] | 8) == 9)
                    {
                      v134 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                      v135 = sub_AB37F0();
                      v136 = sub_3D60D4(v135);
                      if ((v136 & 1) == 0)
                      {
                        v138 = 0;
                        goto LABEL_224;
                      }

                      v137 = sub_AB37B0();
                      v61 = __OFADD__(v137, 1);
                      v138 = v137 + 1;
                      if (!v61)
                      {
LABEL_224:
                        AlbumCell.rank.setter(v138, (v136 & 1) == 0);
                        v376 = [v1725 titleText];
                        if (v376 || (v376 = [v49 name]) != 0)
                        {
                          v377 = v376;
                          v378 = sub_AB92A0();
                          v380 = v379;
                        }

                        else
                        {
                          v378 = 0;
                          v380 = 0xE000000000000000;
                        }

                        AlbumCell.title.setter(v378, v380);
                        v381 = [v1725 subtitleText];
                        if (v381 || (v381 = [v49 shortEditorNotes]) != 0)
                        {
                          v382 = v381;
                          v383 = sub_AB92A0();
                          v385 = v384;
                        }

                        else
                        {
                          sub_AB91E0();
                          sub_5F26C();
                          v383 = sub_AB9320();
                          v385 = v718;
                        }

                        AlbumCell.artistName.setter(v383, v385);
                        *(&v1745 + 1) = sub_13C80(0, &unk_E087D0);
                        v1746 = &off_D17A98;
                        *&v1744 = v49;
                        sub_37C074(v49, 5);
                        sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                        sub_12E1C(&v1744, &unk_DE9C60);
                        if ([v49 type] == &dword_0 + 3)
                        {
                          v386 = 1;
                        }

                        else
                        {
                          v387 = &v134[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
                          swift_beginAccess();
                          v388 = *(v387 + 1);
                          v389 = *v387 & 0xFFFFFFFFFFFFLL;
                          if ((v388 & 0x2000000000000000) != 0)
                          {
                            v389 = HIBYTE(v388) & 0xF;
                          }

                          v386 = v389 == 0;
                        }

                        AlbumCell.layoutStyle.setter(v386);
                        v104 = v134;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);
                        goto LABEL_829;
                      }

                      __break(1u);
LABEL_84:

                      swift_unknownObjectRelease();
                      v1741 = 0;
                      goto LABEL_60;
                    }

                    v368 = v1741;
                    if ([v1741 uniformCellType] == &dword_4 + 3)
                    {
                      v104 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                      v369 = v1725;
                      v370 = sub_3DE9C0(v368, v1725);
                      sub_4C5CB8(v370);
                      sub_4C5DC0(0);
                      v371 = [v369 headlineText];
                      if (v371)
                      {
                        v372 = v371;
                        v373 = sub_AB92A0();
                        v375 = v374;
                      }

                      else
                      {
                        v373 = 0;
                        v375 = 0xE000000000000000;
                      }

                      sub_4C53F0(v373, v375);
                      v750 = [v49 name];
                      if (v750)
                      {
                        v751 = v750;
                        v752 = sub_AB92A0();
                        v754 = v753;
                      }

                      else
                      {
                        v752 = 0;
                        v754 = 0xE000000000000000;
                      }

                      sub_4C5610(v752, v754);
                      v755 = 0xE000000000000000;
                      sub_4C5820(0, 0xE000000000000000);
                      v756 = [v1725 descriptionText];
                      if (v756)
                      {
                        v757 = v756;
                        v758 = sub_AB92A0();
                        v755 = v759;
                      }

                      else
                      {
                        v758 = 0;
                      }

                      sub_4C5ACC(v758, v755);
                      sub_4C5EA0(v53 & 1);
                      goto LABEL_830;
                    }

                    if ([v368 uniformCellType] == &dword_0 + 3)
                    {
                      v477 = sub_3B336C(a2, type metadata accessor for FeaturedRadioShowCell);
                      v478 = [v1725 headlineText];
                      if (v478)
                      {
                        v479 = v478;
                        v480 = sub_AB92A0();
                        v482 = v481;
                      }

                      else
                      {
                        v480 = 0;
                        v482 = 0xE000000000000000;
                      }

                      sub_233E78(v480, v482);
                      v1036 = [v1725 titleText];
                      if (v1036 || (v1036 = [v49 name]) != 0)
                      {
                        v1037 = v1036;
                        v1038 = sub_AB92A0();
                        v1040 = v1039;
                      }

                      else
                      {
                        v1038 = 0;
                        v1040 = 0xE000000000000000;
                      }

                      sub_234088(v1038, v1040);
                      v1041 = [v1725 subtitleText];
                      if (v1041 || (v1041 = [v49 shortEditorNotes]) != 0)
                      {
                        v1042 = v1041;
                        v1043 = sub_AB92A0();
                        v1045 = v1044;
                      }

                      else
                      {
                        v1043 = 0;
                        v1045 = 0xE000000000000000;
                      }

                      sub_234334(v1043, v1045);
                      *(&v1745 + 1) = sub_13C80(0, &unk_E087D0);
                      v1746 = &off_D17A98;
                      *&v1744 = v49;
                      sub_37C074(v49, 5);
                      sub_3B8C40(&v1744, &off_CEFDE8, sub_178410);
                      sub_12E1C(&v1744, &unk_DE9C60);
                      v104 = v477;
                      sub_200878(0);
                      sub_20085C(1);
                      sub_200620(v53 & 1);

                      v1033 = v49;
                      v1034 = 5;
                      goto LABEL_664;
                    }

                    if ([v1741 uniformCellType] == &dword_8 + 2)
                    {
                      v1722 = v49;
                      v719 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                      v720 = sub_AB3770().super.isa;
                      v721 = [v719 itemAtIndexPath:v720];

                      type metadata accessor for JSPosterItem();
                      v722 = swift_dynamicCastClass();
                      if (v722)
                      {
                        v723 = v722;
                        v104 = sub_3B336C(v1743, type metadata accessor for PosterCell);
                        v724 = (*&stru_4C8.sectname[swift_isaMask & *v723])();
                        if ((v724 == 2) | v724 & 1)
                        {
                          v725 = 2;
                        }

                        else
                        {
                          v725 = 0;
                        }

                        v726 = [v1725 titleText];
                        if (v726)
                        {
                          v727 = v726;
                          v728 = sub_AB92A0();
                          v730 = v729;
                        }

                        else
                        {
                          v728 = 0;
                          v730 = 0xE000000000000000;
                        }

                        sub_37AC4(v728, v730);
                        v1374 = [v1725 subtitleText];
                        if (v1374)
                        {
                          v1375 = v1374;
                          v1376 = sub_AB92A0();
                          v1378 = v1377;
                        }

                        else
                        {
                          v1376 = 0;
                          v1378 = 0xE000000000000000;
                        }

                        sub_37B14(v1376, v1378);
                        v1379 = [v1725 descriptionText];
                        if (v1379)
                        {
                          v1380 = v1379;
                          v1381 = sub_AB92A0();
                          v1383 = v1382;
                        }

                        else
                        {
                          v1381 = 0;
                          v1383 = 0xE000000000000000;
                        }

                        sub_37CA8(v1381, v1383);
                        v1384 = *(&stru_1F8.size + (swift_isaMask & *v723));
                        v1385 = swift_unknownObjectRetain();
                        v1386 = v1384(v1385);
                        v1388 = v1387;
                        swift_unknownObjectRelease();
                        if (v1388)
                        {
                          v1389 = v1386;
                        }

                        else
                        {
                          v1389 = 0;
                        }

                        if (v1388)
                        {
                          v1390 = v1388;
                        }

                        else
                        {
                          v1390 = 0xE000000000000000;
                        }

                        sub_38508(v1389, v1390);
                        v1391 = sub_39AC8(v725);
                        v1392 = (*(&stru_478.reloff + (swift_isaMask & *v723)))(v1391);
                        v1393 = sub_3863C(v1392);
                        v1394 = (*&stru_4C8.segname[(swift_isaMask & *v723) + 8])(v1393);
                        sub_38720(v1394);
                        v1395 = (*(&stru_4C8.offset + (swift_isaMask & *v723)))();
                        v1396 = sub_38A9C(v1395);
                        v1397 = *(&stru_4C8.reserved2 + (swift_isaMask & *v723));
                        v1398 = v1397(v1396);
                        if (v1398)
                        {
                          v1399 = v1398;
                          v1400 = (*&stru_298.sectname[swift_isaMask & *v1398])();
                          v1402 = v1401;
                        }

                        else
                        {
                          v1400 = 0;
                          v1402 = 0;
                        }

                        v1403 = sub_38F48(v1400, v1402);
                        v1404 = v1397(v1403);
                        if (v1404)
                        {
                          v1405 = v1404;
                          v1406 = (*&stru_298.segname[(swift_isaMask & *v1404) + 8])();

                          v1407 = v1406 & 1;
                        }

                        else
                        {
                          v1407 = 2;
                        }

                        sub_38F98(v1407);
                        v1408 = (*&stru_518.segname[swift_isaMask & *v723])();
                        sub_39C54(v1408 & 1);
                        v1409 = [v1725 overlayTitleText];
                        if (v1409)
                        {
                          v1410 = v1409;
                          v1411 = sub_AB92A0();
                          v1413 = v1412;
                        }

                        else
                        {
                          v1411 = 0;
                          v1413 = 0xE000000000000000;
                        }

                        sub_37EC8(v1411, v1413);
                        v1414 = [v1725 overlaySubtitleText];
                        if (v1414)
                        {
                          v1415 = v1414;
                          v1416 = sub_AB92A0();
                          v1418 = v1417;
                        }

                        else
                        {
                          v1416 = 0;
                          v1418 = 0xE000000000000000;
                        }

                        sub_3838C(v1416, v1418);
                        *(&v1745 + 1) = sub_13C80(0, &unk_E087D0);
                        v1746 = &off_D17A98;
                        v1419 = v1722;
                        *&v1744 = v1722;
                        sub_37C074(v1722, 5);
                        sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                        swift_unknownObjectRelease();
                        sub_12E1C(&v1744, &unk_DE9C60);
                        v1033 = v1419;
                        v1034 = 5;
                        goto LABEL_664;
                      }

                      swift_unknownObjectRelease();
                      a2 = v1743;
                      v49 = v1722;
                    }
                  }

                  v1226 = sub_3B336C(a2, type metadata accessor for RadioStationCell);
                  v1227 = [v1725 headlineText];
                  if (v1227)
                  {
                    v1228 = v1227;
                    v1229 = sub_AB92A0();
                    v1231 = v1230;
                  }

                  else
                  {
                    v1229 = 0;
                    v1231 = 0xE000000000000000;
                  }

                  sub_B3044(v1229, v1231);
                  v1232 = [v1725 titleText];
                  if (v1232 || (v1232 = [v49 name]) != 0)
                  {
                    v1233 = v1232;
                    v1234 = sub_AB92A0();
                    v1236 = v1235;
                  }

                  else
                  {
                    v1234 = 0;
                    v1236 = 0xE000000000000000;
                  }

                  sub_B32CC(v1234, v1236);
                  v1237 = [v1725 subtitleText];
                  if (v1237 || (v1237 = [v49 shortEditorNotes]) != 0 || (v1237 = objc_msgSend(v49, "editorNotes")) != 0)
                  {
                    v1238 = v1237;
                    v1239 = sub_AB92A0();
                    v1241 = v1240;
                  }

                  else
                  {
                    v1239 = 0;
                    v1241 = 0xE000000000000000;
                  }

                  sub_B35F8(v1239, v1241);
                  *(&v1745 + 1) = sub_13C80(0, &unk_E087D0);
                  v1746 = &off_D17A98;
                  *&v1744 = v49;
                  sub_37C074(v49, 5);
                  sub_3B8C40(&v1744, &off_CEFDE8, sub_178404);
                  sub_12E1C(&v1744, &unk_DE9C60);
                  v104 = v1226;
                  sub_200878(0);
                  sub_20085C(1);
                  sub_200620(v53 & 1);
LABEL_829:

LABEL_830:
                  v221 = v49;
                  v222 = 5;
                  goto LABEL_945;
                }

                v1722 = v49;

                v172 = &selRef__authenticateReturningError_;
                v173 = [v1725 titleText];
                if (v173 || (v173 = [v1722 name]) != 0)
                {
                  v174 = v173;
                  v175 = sub_AB92A0();
                  v177 = v176;
                }

                else
                {
                  v175 = 0;
                  v177 = 0xE000000000000000;
                }

                a2 = &selRef__authenticateReturningError_;
                v178 = [v1725 subtitleText];
                if (v178)
                {
                  v179 = v178;
                  v180 = sub_AB92A0();
                  v182 = v181;

                  goto LABEL_324;
                }

                v285 = [v1722 curator];
                if (v285)
                {
                  v286 = v285;
                  v287 = [v285 name];
                  if (v287)
                  {
                    v288 = v287;
                    v180 = sub_AB92A0();
                    v182 = v289;

                    goto LABEL_324;
                  }
                }

                v180 = 0;
                v182 = 0xE000000000000000;
LABEL_324:
                v502 = v1741;
                if (v1741)
                {
                  v503 = &selRef_isMovingFromParentViewController;
                  if ([v1741 uniformCellType] == &dword_0 + 1)
                  {
                    v503 = v175;
                    v175 = v53;
                    a2 = v1743;
                    v502 = sub_3B336C(v1743, type metadata accessor for AlbumCell);
                    v504 = sub_AB37F0();
                    LODWORD(v53) = sub_3D60D4(v504);
                    if ((v53 & 1) == 0)
                    {
                      v506 = 0;
                      v172 = v1722;
LABEL_334:
                      AlbumCell.rank.setter(v506, (v53 & 1) == 0);
                      AlbumCell.title.setter(v503, v177);
                      AlbumCell.artistName.setter(v180, v182);
                      *(&v1745 + 1) = sub_13C80(0, &unk_DE8EA0);
                      v1746 = &off_D17A48;
                      *&v1744 = v172;
                      sub_37C074(v172, 4);
                      sub_3B8C40(&v1744, &off_CEFDE8, sub_1783C8);
                      sub_12E1C(&v1744, &unk_DE9C60);
                      AlbumCell.layoutStyle.setter(0);
                      v104 = v502;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v175 & 1);

LABEL_400:
                      v221 = v172;
                      v222 = 4;
                      goto LABEL_945;
                    }

                    v505 = sub_AB37B0();
                    v61 = __OFADD__(v505, 1);
                    v506 = v505 + 1;
                    v172 = v1722;
                    if (!v61)
                    {
                      goto LABEL_334;
                    }

                    __break(1u);
                  }

                  if ([v502 v503[196]] == &dword_4 + 3)
                  {
                    v1721 = v53;
                    a2 = v1743;
                    v104 = sub_3B336C(v1743, type metadata accessor for CustomRoomAlbumCell);
                    v507 = v502;
                    v508 = v1725;
                    v509 = sub_3DE9C0(v507, v1725);
                    sub_4C5CB8(v509);
                    sub_4C5DC0(0);
                    *(&v1745 + 1) = sub_13C80(0, &unk_DE8EA0);
                    v1746 = &off_D17A48;
                    v172 = v1722;
                    *&v1744 = v1722;
                    v510 = v1722;
                    sub_3B8C40(&v1744, &off_CEFDE8, sub_1785E8);
                    sub_12E1C(&v1744, &unk_DE9C60);
                    v511 = [v508 headlineText];
                    if (v511)
                    {
                      v512 = v511;
                      v513 = sub_AB92A0();
                      v515 = v514;
                    }

                    else
                    {
                      v513 = 0;
                      v515 = 0xE000000000000000;
                    }

                    sub_4C53F0(v513, v515);
                    sub_4C5610(v175, v177);
                    sub_4C5820(v180, v182);
                    v612 = [v1725 descriptionText];
                    v613 = v1721;
                    if (v612)
                    {
                      v614 = v612;
                      v615 = sub_AB92A0();
                      v617 = v616;
                    }

                    else
                    {
                      v615 = 0;
                      v617 = 0xE000000000000000;
                    }

                    sub_4C5ACC(v615, v617);
                    sub_4C5EA0(v613 & 1);
                    goto LABEL_400;
                  }

                  if ([v502 v503[196]] == &dword_8 + 2)
                  {
                    v1734 = v175;
                    v1721 = v53;
                    v516 = *&v1726[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                    v517 = v1743;
                    v518 = sub_AB3770().super.isa;
                    v519 = [v516 itemAtIndexPath:v518];

                    type metadata accessor for JSPosterItem();
                    v520 = swift_dynamicCastClass();
                    if (v520)
                    {
                      v521 = v520;

                      v104 = sub_3B336C(v517, type metadata accessor for PosterCell);
                      v522 = (*&stru_4C8.sectname[swift_isaMask & *v521])();
                      if ((v522 == 2) | v522 & 1)
                      {
                        v523 = 2;
                      }

                      else
                      {
                        v523 = 0;
                      }

                      v524 = [v1725 v172[332]];
                      if (v524)
                      {
                        v525 = v524;
                        v526 = sub_AB92A0();
                        v528 = v527;
                      }

                      else
                      {
                        v526 = 0;
                        v528 = 0xE000000000000000;
                      }

                      sub_37AC4(v526, v528);
                      v1046 = [v1725 a2[318]];
                      if (v1046)
                      {
                        v1047 = v1046;
                        v1048 = sub_AB92A0();
                        v1050 = v1049;
                      }

                      else
                      {
                        v1048 = 0;
                        v1050 = 0xE000000000000000;
                      }

                      sub_37B14(v1048, v1050);
                      v1051 = [v1725 descriptionText];
                      if (v1051)
                      {
                        v1052 = v1051;
                        v1053 = sub_AB92A0();
                        v1055 = v1054;
                      }

                      else
                      {
                        v1053 = 0;
                        v1055 = 0xE000000000000000;
                      }

                      sub_37CA8(v1053, v1055);
                      v1056 = *(&stru_1F8.size + (swift_isaMask & *v521));
                      v1057 = swift_unknownObjectRetain();
                      v1058 = v1056(v1057);
                      v1060 = v1059;
                      swift_unknownObjectRelease();
                      if (v1060)
                      {
                        v1061 = v1058;
                      }

                      else
                      {
                        v1061 = 0;
                      }

                      if (v1060)
                      {
                        v1062 = v1060;
                      }

                      else
                      {
                        v1062 = 0xE000000000000000;
                      }

                      sub_38508(v1061, v1062);
                      v1063 = sub_39AC8(v523);
                      v1064 = (*(&stru_478.reloff + (swift_isaMask & *v521)))(v1063);
                      v1065 = sub_3863C(v1064);
                      v1066 = (*&stru_4C8.segname[(swift_isaMask & *v521) + 8])(v1065);
                      sub_38720(v1066);
                      v1067 = (*(&stru_4C8.offset + (swift_isaMask & *v521)))();
                      v1068 = sub_38A9C(v1067);
                      v1069 = *(&stru_4C8.reserved2 + (swift_isaMask & *v521));
                      v1070 = v1069(v1068);
                      if (v1070)
                      {
                        v1071 = v1070;
                        v1072 = (*&stru_298.sectname[swift_isaMask & *v1070])();
                        v1074 = v1073;
                      }

                      else
                      {
                        v1072 = 0;
                        v1074 = 0;
                      }

                      v1075 = sub_38F48(v1072, v1074);
                      v1076 = v1069(v1075);
                      if (v1076)
                      {
                        v1077 = v1076;
                        v1078 = (*&stru_298.segname[(swift_isaMask & *v1076) + 8])();

                        v1079 = v1078 & 1;
                      }

                      else
                      {
                        v1079 = 2;
                      }

                      sub_38F98(v1079);
                      v1080 = (*&stru_518.segname[swift_isaMask & *v521])();
                      sub_39C54(v1080 & 1);
                      v1081 = [v1725 overlayTitleText];
                      if (v1081)
                      {
                        v1082 = v1081;
                        v1083 = sub_AB92A0();
                        v1085 = v1084;
                      }

                      else
                      {
                        v1083 = 0;
                        v1085 = 0xE000000000000000;
                      }

                      sub_37EC8(v1083, v1085);
                      v1086 = [v1725 overlaySubtitleText];
                      if (v1086)
                      {
                        v1087 = v1086;
                        v1088 = sub_AB92A0();
                        v1090 = v1089;
                      }

                      else
                      {
                        v1088 = 0;
                        v1090 = 0xE000000000000000;
                      }

                      sub_3838C(v1088, v1090);
                      v1746 = 0;
                      v1744 = 0u;
                      v1745 = 0u;
                      sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                      swift_unknownObjectRelease();
                      sub_12E1C(&v1744, &unk_DE9C60);
                      v1033 = v1722;
                      v1034 = 4;
                      goto LABEL_664;
                    }

                    swift_unknownObjectRelease();
                    LOBYTE(v53) = v1721;
                    v175 = v1734;
                  }

                  if ([v1741 v503[196]] == &dword_0 + 3)
                  {
                    v938 = v53;
                    v939 = sub_3B336C(v1743, type metadata accessor for FeaturedRadioShowCell);
                    v940 = [v1725 headlineText];
                    if (v940)
                    {
                      v941 = v940;
                      v942 = sub_AB92A0();
                      v944 = v943;
                    }

                    else
                    {
                      v942 = 0;
                      v944 = 0xE000000000000000;
                    }

                    sub_233E78(v942, v944);
                    sub_234088(v175, v177);
                    sub_234334(v180, v182);
                    *(&v1745 + 1) = sub_13C80(0, &unk_DE8EA0);
                    v1746 = &off_D17A48;
                    v1035 = v1722;
                    *&v1744 = v1722;
                    sub_37C074(v1722, 4);
                    sub_3B8C40(&v1744, &off_CEF8C8, sub_178410);
                    sub_12E1C(&v1744, &unk_DE9C60);
                    v104 = v939;
                    sub_200878(0);
                    sub_20085C(1);
                    sub_200620(v938 & 1);
                    sub_200598([v1035 isFavorite]);

                    v1033 = v1035;
                    v1034 = 4;
                    goto LABEL_664;
                  }
                }

                a2 = v1743;
                v945 = sub_AB37F0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798);
                v946 = swift_allocObject();
                *(v946 + 16) = xmmword_AF4EC0;
                *(v946 + 32) = 7;
                LOBYTE(v945) = sub_3D64F0(v945, v946);

                if (v945)
                {
                  v947 = sub_3B336C(a2, type metadata accessor for SongCell);
                  v948 = v1722;
                  v949 = [v1722 name];
                  if (v949)
                  {
                    v950 = v949;
                    v951 = sub_AB92A0();
                    v953 = v952;
                  }

                  else
                  {
                    v951 = 0;
                    v953 = 0xE000000000000000;
                  }

                  sub_142740(v951, v953);
                  sub_142958(0, 0xE000000000000000);
                  v104 = v947;
                  sub_200878(1);
                  sub_20085C(1);

                  sub_143BBC(v53 & 1);
                  sub_143184([v948 isFavorite]);
                }

                else
                {
                  v954 = sub_3B336C(a2, type metadata accessor for FeaturedPlaylistCell);
                  v948 = v1722;
                  v955 = [v1722 name];
                  if (v955)
                  {
                    v956 = v955;
                    v957 = sub_AB92A0();
                    v959 = v958;
                  }

                  else
                  {
                    v957 = 0;
                    v959 = 0;
                  }

                  v960 = sub_3D67E4(v957, v959);
                  v962 = v961;

                  sub_F5FC4(v960, v962);
                  v963 = [v948 shortEditorNotes];
                  if (v963)
                  {
                    v964 = v963;
                    v965 = sub_AB92A0();
                    v967 = v966;
                  }

                  else
                  {
                    v965 = 0;
                    v967 = 0xE000000000000000;
                  }

                  sub_F6268(v965, v967);
                  v104 = v954;
                  VerticalLockupCollectionViewCell.isDisabled.setter(v53 & 1);

                  *(&v1745 + 1) = sub_13C80(0, &unk_DE8EA0);
                  v1746 = &off_D17A48;
                  *&v1744 = v948;
                  sub_37C074(v948, 4);
                  sub_3B8C40(&v1744, &off_CEFDE8, sub_1785D0);

                  sub_12E1C(&v1744, &unk_DE9C60);
                }

                v221 = v948;
                v222 = 4;
                goto LABEL_945;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v66 = v1728;
          }

          else
          {
            v65 = v1728;

            swift_unknownObjectRelease();
          }
        }

        else
        {
          v64 = v1728;

          v3 = v1742;
        }

        v63 = *&v3[v29];
        if (!v63)
        {
LABEL_59:
          a2 = v1743;
          goto LABEL_60;
        }

LABEL_35:
        v67 = swift_dynamicCastClass();
        if (v67)
        {
          v68 = v67;
          v69 = v63;
          v70 = [v68 results];
          if (v70 && (v71 = v70, v72 = sub_AB3770().super.isa, v73 = [v71 itemAtIndexPath:v72], v71, v72, v73))
          {
            objc_opt_self();
            v74 = swift_dynamicCastObjCClass();
            if (v74)
            {
              v75 = v74;
              if (v1741)
              {
                if ([v1741 uniformCellType] == &dword_8)
                {
                  a2 = v1743;
                  v76 = sub_3B336C(v1743, type metadata accessor for SocialPersonVerticalCell);
                  v77 = [v75 titleText];
                  if (v77)
                  {
                    v78 = v77;
                    v79 = sub_AB92A0();
                    v81 = v80;
                  }

                  else
                  {
                    v79 = 0;
                    v81 = 0xE000000000000000;
                  }

                  sub_115C6C(v79, v81);
                  v155 = [v75 subtitleText];
                  if (v155)
                  {
                    v156 = v155;
                    v157 = sub_AB92A0();
                    v159 = v158;
                  }

                  else
                  {
                    v157 = 0;
                    v159 = 0xE000000000000000;
                  }

                  sub_115DA8(v157, v159);
                  sub_115FF0(0);
                  sub_11604C(0);
                  sub_11607C(0);
                  v160 = [v75 buttonText];
                  if (v160)
                  {
                    v161 = v160;
                    v162 = sub_AB92A0();
                    v164 = v163;
                  }

                  else
                  {
                    v162 = 0;
                    v164 = 0xE000000000000000;
                  }

                  sub_115EE4(v162, v164);
                  v165 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v166 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v167 = swift_allocObject();
                  *(v167 + 16) = v165;
                  *(v167 + 24) = v166;

                  sub_1161FC(sub_3E12C0, v167);

                  v104 = v76;
                  VerticalLockupCollectionViewCell.isDisabled.setter(0);
                  swift_unknownObjectRelease();

                  goto LABEL_61;
                }
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v3 = v1742;
        }

        v82 = *&v3[v29];
        if (v82)
        {
          v83 = swift_dynamicCastClass();
          if (v83)
          {
            v84 = v83;
            v3 = v82;
            v85 = [v84 results];
            a2 = v1743;
            if (!v85 || (v86 = v85, v87 = sub_AB3770().super.isa, v88 = [v86 itemAtIndexPath:v87], v86, v87, !v88))
            {

              goto LABEL_60;
            }

            objc_opt_self();
            v89 = swift_dynamicCastObjCClass();
            if (v89)
            {
              v90 = v89;
              if (!v1741)
              {
                goto LABEL_84;
              }

              if ([v1741 uniformCellType] == &dword_8 + 2)
              {
                v91 = *&v84[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                v92 = sub_AB3770().super.isa;
                v93 = [v91 itemAtIndexPath:v92];

                type metadata accessor for JSPosterItem();
                v94 = swift_dynamicCastClass();
                if (v94)
                {
                  v95 = v94;
                  v96 = sub_3B336C(a2, type metadata accessor for PosterCell);
                  v97 = (*&stru_4C8.sectname[swift_isaMask & *v95])();
                  if ((v97 == 2) | v97 & 1)
                  {
                    v98 = 2;
                  }

                  else
                  {
                    v98 = 0;
                  }

                  LODWORD(v1732) = v98;
                  v99 = [v90 titleText];
                  if (v99)
                  {
                    v100 = v99;
                    v101 = sub_AB92A0();
                    v103 = v102;
                  }

                  else
                  {
                    v101 = 0;
                    v103 = 0xE000000000000000;
                  }

                  sub_37AC4(v101, v103);
                  v230 = [v90 subtitleText];
                  if (v230)
                  {
                    v231 = v230;
                    v232 = sub_AB92A0();
                    v234 = v233;
                  }

                  else
                  {
                    v232 = 0;
                    v234 = 0xE000000000000000;
                  }

                  v1734 = v96;
                  sub_37B14(v232, v234);
                  v235 = [v90 descriptionText];
                  v236 = 0xE000000000000000;
                  v1733 = v93;
                  if (v235)
                  {
                    v237 = v235;
                    v238 = sub_AB92A0();
                    v240 = v239;
                  }

                  else
                  {
                    v238 = 0;
                    v240 = 0xE000000000000000;
                  }

                  sub_37CA8(v238, v240);
                  v241 = *(&stru_1F8.size + (swift_isaMask & *v95));
                  v242 = swift_unknownObjectRetain();
                  v243 = v241(v242);
                  v245 = v244;
                  swift_unknownObjectRelease();
                  if (v245)
                  {
                    v246 = v243;
                  }

                  else
                  {
                    v246 = 0;
                  }

                  if (v245)
                  {
                    v247 = v245;
                  }

                  else
                  {
                    v247 = 0xE000000000000000;
                  }

                  sub_38508(v246, v247);
                  sub_39AC8(v1732);
                  v248 = [v90 descriptionText];
                  if (v248)
                  {
                    v249 = v248;
                    v250 = sub_AB92A0();
                    v236 = v251;
                  }

                  else
                  {
                    v250 = 0;
                  }

                  v252 = sub_37CA8(v250, v236);
                  v253 = (*(&stru_478.reloff + (swift_isaMask & *v95)))(v252);
                  v254 = sub_3863C(v253);
                  v255 = (*&stru_4C8.segname[(swift_isaMask & *v95) + 8])(v254);
                  sub_38720(v255);
                  v256 = (*(&stru_4C8.offset + (swift_isaMask & *v95)))();
                  v257 = sub_38A9C(v256);
                  v258 = *(&stru_4C8.reserved2 + (swift_isaMask & *v95));
                  v259 = v258(v257);
                  if (v259)
                  {
                    v260 = v259;
                    v261 = (*&stru_298.sectname[swift_isaMask & *v259])();
                    v263 = v262;
                  }

                  else
                  {
                    v261 = 0;
                    v263 = 0;
                  }

                  v264 = sub_38F48(v261, v263);
                  v265 = v258(v264);
                  if (v265)
                  {
                    v266 = v265;
                    v267 = (*&stru_298.segname[(swift_isaMask & *v265) + 8])();

                    v268 = v267 & 1;
                  }

                  else
                  {
                    v268 = 2;
                  }

                  a2 = v1743;
                  v104 = v1734;
                  sub_38F98(v268);
                  v269 = (*&stru_518.segname[swift_isaMask & *v95])();
                  sub_39C54(v269 & 1);
                  v270 = [v90 overlayTitleText];
                  if (v270)
                  {
                    v271 = v270;
                    v272 = sub_AB92A0();
                    v274 = v273;
                  }

                  else
                  {
                    v272 = 0;
                    v274 = 0xE000000000000000;
                  }

                  sub_37EC8(v272, v274);
                  v275 = [v90 overlaySubtitleText];
                  if (v275)
                  {
                    v276 = v275;
                    v277 = sub_AB92A0();
                    v279 = v278;
                  }

                  else
                  {
                    v277 = 0;
                    v279 = 0xE000000000000000;
                  }

                  sub_3838C(v277, v279);
                  v1746 = 0;
                  v1744 = 0u;
                  v1745 = 0u;
                  sub_3B8C40(&v1744, &off_CEFDE8, sub_17841C);

                  swift_unknownObjectRelease();
                  sub_12E1C(&v1744, &unk_DE9C60);
                  swift_unknownObjectRelease();
                  goto LABEL_61;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_60;
              }
            }

            swift_unknownObjectRelease();
            goto LABEL_60;
          }
        }

        goto LABEL_59;
      }

      v3 = v1742;
    }

    v63 = *&v3[v29];
    if (!v63)
    {
      goto LABEL_59;
    }

    goto LABEL_35;
  }

LABEL_25:
  v1741 = 0;
LABEL_60:
  sub_13C80(0, &qword_DFE230);
  v104 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();
LABEL_61:
  type metadata accessor for HorizontalLockupCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    [v104 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
  }

  swift_getObjectType();
  v105 = swift_conformsToProtocol2();
  v106 = v1742;
  if (v105 && v104)
  {
    v107 = v105;
    ObjectType = swift_getObjectType();
    v109 = v104;
    (*(v107 + 16))([v106 viewBackgroundColor], ObjectType, v107);
  }

  swift_getObjectType();
  v110 = swift_conformsToProtocol2();
  if (v110 && v104)
  {
    v111 = v110;
    v112 = swift_getObjectType();
    v1732 = v112;
    v1731 = *(v111 + 8);
    v113 = v1731;
    v1733 = (v111 + 8);
    v1730 = v104;
    v114 = a2;
    v115 = (v113)(v112, v111);
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v117 = swift_allocObject();
    *(v117 + 24) = v111;
    swift_unknownObjectWeakInit();
    v118 = v1736;
    v1729 = *(v1736 + 16);
    v119 = v1737;
    v1734 = v104;
    v120 = v1738;
    (v1729)(v1737, v114, v1738);
    v121 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v122 = swift_allocObject();
    *(v122 + 16) = v117;
    *(v122 + 24) = v116;
    (*(v118 + 32))(v122 + v121, v119, v120);
    v123 = (v115 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v124 = *(v115 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    *v123 = sub_3E0388;
    v123[1] = v122;

    a2 = v1743;
    sub_17654(v124);

    v125 = v120;
    v104 = v1734;
    (v1729)(v119, a2, v125);
    v126 = v1730;
    v127 = v1730;
    v128 = v1740;
    sub_74D38(v119, v126, v1740);
    v129 = (v1731)(v1732, v111);
    *(&v1745 + 1) = v1739;
    v1746 = sub_3E046C(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v1744);
    sub_3E0D84(v128, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    v131 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
    swift_beginAccess();
    sub_160B4(&v1744, v129 + v131, &unk_E03770);
    swift_endAccess();

    v106 = v1742;
  }

  if (*&v106[qword_E03658])
  {

    sub_389E3C(a2, v104);
  }

  v132 = v104;
  v133 = [v106 viewBackgroundColor];
  [v132 setBackgroundColor:v133];
}
__n128 sub_100002430(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000243C(uint64_t a1, int a2)
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

uint64_t sub_10000245C(uint64_t result, int a2, int a3)
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

void sub_1000024C4(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_1000027DC(&unk_10002B860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B9C0;
  v6 = [a1 leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [v2 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100002824();
  isa = sub_10001A46C().super.isa;

  [v4 activateConstraints:isa];
}

BOOL sub_100002734(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000027AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000027DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002824()
{
  result = qword_10002B020;
  if (!qword_10002B020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002B020);
  }

  return result;
}

uint64_t sub_10000287C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000289C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AvatarPosterEditor.Constants(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AvatarPosterEditor.Constants(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AvatarPosterEditor.Constants(uint64_t result, int a2, int a3)
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

void sub_100002968(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000029C4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_color) = a1;
  swift_retain_n();

  v2 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView);
  sub_1000027DC(&unk_10002BA60);
  sub_100002C30();
  sub_10001A2FC();
  sub_10001A28C();
}

id sub_100002B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonalGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002C30()
{
  result = qword_10002B740;
  if (!qword_10002B740)
  {
    sub_100002C94(&unk_10002BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002B740);
  }

  return result;
}

uint64_t sub_100002C94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100002D1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002D78(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView;
  v5 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView] image];
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      sub_100003568();
      v15 = a1;
      v7 = sub_10001A5CC();

      if (v7)
      {

        return;
      }
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }
  }

  [*&v2[v4] setImage:{a1, v15}];
  v8 = sub_100002F30();
  v10 = v9;
  [v2 bounds];
  v12 = v11;
  [v2 bounds];
  v13 = *&v2[v4];
  if (v13)
  {
    v14 = v13;
    v19.origin.y = 0.0;
    v19.origin.x = (v12 - v8) * 0.5;
    v19.size.width = v8;
    v19.size.height = v10;
    v20 = CGRectIntegral(v19);
    [v14 setFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  }

  sub_100003400(&v2[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_delegate], v16);
  if (v17)
  {
    sub_1000034D8(v16, v17);
    sub_100008F1C(a1);

    sub_10000351C(v16);
  }

  else
  {

    sub_100003470(v16);
  }
}

double sub_100002F30()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView];
  if (v5)
  {
    v6 = [v5 image];
    if (v6)
    {
      v7 = v6;
      [v6 size];
      v9 = v2 / v8;
      [v7 size];
      v11 = v4 / v10;
      v12 = [v0 contentMode];
      if (v12)
      {
        if (v12 == 1)
        {
          if (v11 >= v9)
          {
            v11 = v9;
          }
        }

        else
        {
          if (v12 != 2)
          {
            [v7 size];
            v2 = v15;

            return v2;
          }

          if (v9 > v11)
          {
            v11 = v9;
          }
        }

        [v7 size];
        v2 = v11 * v13;
      }

      else
      {
        [v7 size];
        v2 = v9 * v14;
      }

      [v7 size];
    }
  }

  return v2;
}

id sub_100003060(void *a1)
{
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView] = 0;
  v3 = &v1[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_delegate];
  v4 = type metadata accessor for AvatarPosterImageView();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10000323C(0, 0);
  }

  return v6;
}

void sub_100003120()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AvatarPosterImageView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 layoutIfNeeded];
  v1 = sub_100002F30();
  v3 = v2;
  [v0 bounds];
  v5 = v4;
  [v0 bounds];
  v6 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView];
  if (v6)
  {
    v7 = v6;
    v9.origin.y = 0.0;
    v9.origin.x = (v5 - v1) * 0.5;
    v9.size.width = v1;
    v9.size.height = v3;
    v10 = CGRectIntegral(v9);
    [v7 setFrame:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
  }
}

void sub_10000323C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIImageView) initWithImage:a1 highlightedImage:a2];
  v4 = OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView;
  v5 = *&v2[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView];
  *&v2[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView] = v3;
  v6 = v3;

  if (v6)
  {
    [v2 bounds];
    [v6 setFrame:?];
  }

  v7 = *&v2[v4];
  if (v7 && (v8 = v7, [v8 setContentMode:{objc_msgSend(v2, "contentMode")}], v8, *&v2[v4]))
  {

    [v2 addSubview:?];
  }

  else
  {
    __break(1u);
  }
}

id sub_10000335C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarPosterImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027DC(&qword_10002B2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003470(uint64_t a1)
{
  v2 = sub_1000027DC(&qword_10002B2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000034D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000351C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100003568()
{
  result = qword_10002B2E0;
  if (!qword_10002B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002B2E0);
  }

  return result;
}

uint64_t sub_1000035B4()
{
  v0 = sub_10001A22C();
  sub_100003F48(v0, qword_10002B2E8);
  sub_100003F10(v0, qword_10002B2E8);
  return sub_10001A21C();
}

uint64_t sub_100003634(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000034D8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return _swift_continuation_resume(v6);
}

uint64_t sub_1000036DC(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_100019F9C();
  *(v4 + 192) = v5;
  *(v4 + 200) = *(v5 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000037B0, 0, 0);
}

uint64_t sub_1000037B0()
{
  v35 = v0;
  v1 = sub_100019F4C();
  *(v0 + 224) = v1;
  if (!v1)
  {
LABEL_17:

    v32 = *(v0 + 8);

    return v32(0);
  }

  v2 = v1;
  v3 = sub_100019FBC();
  *(v0 + 232) = v3;
  *(v0 + 240) = v4;
  if (v4 >> 60 == 15)
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v5 = v3;
  v6 = v4;
  v7 = objc_opt_self();
  isa = sub_10001A12C().super.isa;
  v9 = [v7 poseConfigurationForData:isa withAvatarRecord:v2];
  *(v0 + 248) = v9;

  if (!v9)
  {
    swift_unknownObjectRelease();
    sub_100003E34(v5, v6);
    goto LABEL_17;
  }

  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = [objc_opt_self() avatarForRecord:v2];
  *(v0 + 256) = v14;
  v15 = [objc_allocWithZone(AVTStickerGenerator) initWithAvatar:v14];
  *(v0 + 264) = v15;
  [v15 setAsync:0];
  sub_100019FAC();
  (*(v13 + 104))(v11, enum case for AvatarPosterConfiguration.RenderingMode.memojiRecipe(_:), v12);
  v16 = sub_100019F8C();
  v17 = *(v13 + 8);
  v17(v11, v12);
  v17(v10, v12);
  width = *(v0 + 168);
  height = *(v0 + 176);
  if ((v16 & 1) != 0 && (width > 1200.0 || height > 1200.0))
  {
    v38.size.width = 1200.0;
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.height = 1200.0;
    v37 = AVMakeRectWithAspectRatioInsideRect(*(v0 + 168), v38);
    width = v37.size.width;
    height = v37.size.height;
    if (qword_10002AF70 != -1)
    {
      swift_once();
    }

    v20 = sub_10001A22C();
    sub_100003F10(v20, qword_10002B2E8);
    v21 = sub_10001A20C();
    v22 = sub_10001A51C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_10001A56C();
      v26 = sub_1000174DC(v24, v25, &v34);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_10001A56C();
      v29 = sub_1000174DC(v27, v28, &v34);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Memoji image generation size too large (%s), cropping to (%s", v23, 0x16u);
      swift_arrayDestroy();
    }
  }

  v30 = [objc_opt_self() stickerGeneraterPosterOptionsWithSize:width minimumHorizontalMargin:{height, *(v0 + 184)}];
  *(v0 + 272) = v30;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100003CA4;
  v31 = swift_continuation_init();
  *(v0 + 136) = sub_1000027DC(&qword_10002B398);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100003634;
  *(v0 + 104) = &unk_1000250F8;
  *(v0 + 112) = v31;
  [v15 posterWithConfiguration:v9 options:v30 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100003CA4()
{

  return _swift_task_switch(sub_100003D84, 0, 0);
}

uint64_t sub_100003D84()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100003E34(*(v0 + 232), *(v0 + 240));
  swift_unknownObjectRelease();

  v5 = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100003E34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003E48(a1, a2);
  }

  return a1;
}

uint64_t sub_100003E48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003F10(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003F48(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100003FD0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000405C()
{
  v0 = [objc_opt_self() standardPalette];
  v1 = [v0 colors];

  sub_1000041CC();
  v2 = sub_10001A47C();

  if (v2 >> 62)
  {
    if (sub_10001A70C())
    {
      result = sub_10001A70C();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (result)
      {
LABEL_3:
        result = sub_100003FD0(result);
        if ((v2 & 0xC000000000000001) != 0)
        {
          v4 = sub_10001A65C();
          goto LABEL_7;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v4 = *(v2 + 8 * result + 32);
LABEL_7:
          v5 = v4;
          goto LABEL_13;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      __break(1u);
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_13:

  v6 = [v5 color];

  if (v6)
  {
    return v6;
  }

  v7 = [objc_opt_self() grayColor];

  return v7;
}

unint64_t sub_1000041CC()
{
  result = qword_10002B438;
  if (!qword_10002B438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002B438);
  }

  return result;
}

double sub_100004218(int8x16_t a1, double a2, double a3, int8x16_t a4)
{
  v4 = a3;
  v5 = a2;
  if (a2 <= *a1.i64)
  {
    v7 = a3 == *a1.i64;
    v6 = a3 >= *a1.i64;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    if (a2 >= *a1.i64)
    {
      a2 = *a1.i64;
    }

    if (*a1.i64 < a3)
    {
      a3 = *a1.i64;
    }

    if (*a1.i64 <= v5)
    {
      v9 = v4 == v5;
      v8 = v4 >= v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (!v9 && v8)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    v11 = *a1.i64;
  }

  v12 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11 - v10;
    if ((v11 - v10) / v11 != 0.0)
    {
      v14 = (v11 - v5) / v13;
      v15 = (v11 - v4) / v13;
      if (v11 == *a1.i64)
      {
        if (v10 == v5)
        {
          v12 = v15 + 5.0;
        }

        else
        {
          v12 = 1.0 - v14;
        }
      }

      else
      {
        v7 = v11 == v5;
        v17 = (v11 - *a1.i64) / v13;
        if (v7)
        {
          if (v10 == v4)
          {
            v12 = v17 + 1.0;
          }

          else
          {
            v12 = 3.0 - v15;
          }
        }

        else if (v10 == *a1.i64)
        {
          v12 = v14 + 3.0;
        }

        else
        {
          v12 = 5.0 - v17;
        }
      }
    }
  }

  *a1.i64 = v12 / 6.0;
  *a4.i64 = v12 / 6.0 - trunc(v12 / 6.0);
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v16), a4, a1).u64[0];
  return *a1.i64;
}

double sub_100004324()
{
  v5 = 0.0;
  v3 = 0;
  v4 = 0;
  v2 = 0x3FF0000000000000;
  [v0 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v5;
}

double sub_1000043A8(float *a1, double a2, double a3, double a4, double a5)
{
  v5 = a2;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  return (a1[4] + ((((*a1 * v5) + (a1[1] * v6)) + (a1[2] * v7)) + (a1[3] * v8)));
}

double sub_100004474()
{
  xmmword_10002B440 = xmmword_10001BD10;
  *algn_10002B450 = xmmword_10001BD20;
  xmmword_10002B460 = xmmword_10001BD30;
  unk_10002B470 = xmmword_10001BD40;
  result = 0.0;
  xmmword_10002B480 = xmmword_10001BD50;
  return result;
}

double sub_1000044B4()
{
  xmmword_10002B490 = xmmword_10001BD60;
  unk_10002B4A0 = xmmword_10001BD70;
  xmmword_10002B4B0 = xmmword_10001BD80;
  unk_10002B4C0 = xmmword_10001BD90;
  result = 0.0;
  xmmword_10002B4D0 = xmmword_10001BD50;
  return result;
}

double sub_1000044F4()
{
  xmmword_10002B4E0 = xmmword_10001BD10;
  *algn_10002B4F0 = xmmword_10001BDA0;
  xmmword_10002B500 = xmmword_10001BDB0;
  unk_10002B510 = xmmword_10001BDC0;
  result = 0.0;
  xmmword_10002B520 = xmmword_10001BD50;
  return result;
}

double sub_100004534()
{
  xmmword_10002B530 = xmmword_10001BDD0;
  unk_10002B540 = xmmword_10001BDE0;
  xmmword_10002B550 = xmmword_10001BDF0;
  unk_10002B560 = xmmword_10001BE00;
  result = 0.0;
  xmmword_10002B570 = xmmword_10001BD50;
  return result;
}

uint64_t sub_100004574()
{
  v0 = sub_10001A2CC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000048FC();

  v4 = sub_10001A59C();
  v5 = sub_100004324();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *v12.i64 = v5;
  v14 = sub_100004218(v12, v7, v9, v13);
  v16 = v15;
  sub_1000027DC(&unk_10002B580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10001BE10;
  if (v16 > 0.5 && (v14 >= 0.12 ? (v18 = v14 < 0.175) : (v18 = 0), v18))
  {
    if (qword_10002AF88 != -1)
    {
      swift_once();
    }

    sub_1000043A8(&xmmword_10002B4E0, v5, v7, v9, v11);
    v19 = enum case for Color.RGBColorSpace.sRGB(_:);
    v20 = *(v1 + 104);
    v20(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
    *(v17 + 32) = sub_10001A2EC();
    if (qword_10002AF90 != -1)
    {
      swift_once();
    }

    v21 = &xmmword_10002B530;
  }

  else
  {
    if (qword_10002AF78 != -1)
    {
      swift_once();
    }

    sub_1000043A8(&xmmword_10002B440, v5, v7, v9, v11);
    v19 = enum case for Color.RGBColorSpace.sRGB(_:);
    v20 = *(v1 + 104);
    v20(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
    *(v17 + 32) = sub_10001A2EC();
    if (qword_10002AF80 != -1)
    {
      swift_once();
    }

    v21 = &xmmword_10002B490;
  }

  sub_1000043A8(v21, v5, v7, v9, v11);
  v20(v3, v19, v0);
  *(v17 + 40) = sub_10001A2EC();
  return v17;
}

unint64_t sub_1000048FC()
{
  result = qword_10002B780;
  if (!qword_10002B780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002B780);
  }

  return result;
}

double sub_100004994@<D0>(uint64_t a1@<X8>)
{
  sub_100004574();
  sub_10001A31C();
  sub_10001A32C();
  sub_10001A30C();
  sub_10001A26C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100004A30()
{
  v0 = sub_10001A22C();
  sub_100003F48(v0, qword_10002B590);
  sub_100003F10(v0, qword_10002B590);
  return sub_10001A21C();
}

void sub_100004AAC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v6 = sub_10001A22C();
  sub_100003F10(v6, qword_10002B590);
  swift_unknownObjectRetain();
  v7 = sub_10001A20C();
  v8 = sub_10001A50C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315138;
    v11 = [a2 description];
    v12 = sub_10001A3EC();
    v14 = v13;

    v15 = sub_1000174DC(v12, v14, &v48);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing renderer with poster environment: %s", v9, 0xCu);
    sub_10000351C(v10);
  }

  v16 = *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer);
  *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer) = a1;

  v17 = a1;
  v18 = [a2 deviceOrientation];
  v19 = v3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_currentOrientation;
  *v19 = v18;
  *(v19 + 8) = 0;
  v52 = sub_100004F58;
  v53 = 0;
  v48 = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100004FA8;
  v51 = &unk_100025298;
  v20 = _Block_copy(&v48);

  [v17 updatePreferences:v20];
  _Block_release(v20);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v21 = AVTAvatarSwiftUIEnabled();
    v22 = [v17 backgroundView];
    v23 = v22;
    if (v21)
    {
      v24 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground;
      [v22 addSubview:*(v3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground)];

      v25 = *(v3 + v24);
      v26 = [v17 backgroundView];
    }

    else
    {
      v27 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController;
      v28 = *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController);
      if (!v28)
      {
        v29 = [objc_allocWithZone(UIViewController) init];
        v30 = *(v3 + v27);
        *(v3 + v27) = v29;

        v28 = *(v3 + v27);
        if (!v28)
        {
          goto LABEL_23;
        }
      }

      v31 = [v28 view];
      if (!v31)
      {
        goto LABEL_21;
      }

      v32 = v31;
      [v23 addSubview:v31];

      v33 = *(v3 + v27);
      if (!v33)
      {
        v34 = [objc_allocWithZone(UIViewController) init];
        v35 = *(v3 + v27);
        *(v3 + v27) = v34;

        v33 = *(v3 + v27);
        if (!v33)
        {
          goto LABEL_24;
        }
      }

      v36 = [v33 view];
      if (!v36)
      {
        goto LABEL_22;
      }

      v25 = v36;
      v26 = [v17 backgroundView];
    }

    v37 = v26;
    sub_1000024C4(v37);

    v38 = [v17 floatingView];
    v39 = sub_100009030();
    if (v39)
    {
      [v38 addSubview:v39];

      v40 = sub_100009030();
      if (v40)
      {
        v41 = v40;
        v42 = [v17 floatingView];
        sub_1000024C4(v42);

        v43 = [a2 deviceOrientation];
        [a2 salientContentRectangle];
        v48 = v44;
        v49 = v45;
        v50 = v46;
        v51 = v47;
        LOBYTE(v52) = 0;
        sub_100005010(v43, &v48, 0, 1);
        sub_10000671C(a2);
        sub_100007080(a2);
        return;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

id sub_100004F58(void *a1)
{
  [a1 setContentOcclusionRectangleUpdatesRequested:1];

  return [a1 setSalientContentRectangleUpdatesRequested:1];
}

uint64_t sub_100004FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_100005010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v9 = sub_10001A22C();
  sub_100003F10(v9, qword_10002B590);
  v10 = sub_10001A20C();
  v11 = sub_10001A50C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v14 = sub_10001A40C();
    v16 = sub_1000174DC(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating layout for orientation: %s", v12, 0xCu);
    sub_10000351C(v13);
  }

  v17 = *&v5[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer];
  if (v17)
  {
    v18 = v17;
    v19 = [v18 backgroundView];
    [v19 layoutIfNeeded];

    v20 = [v18 floatingView];
    [v20 layoutIfNeeded];

    v21 = [v18 backgroundView];
    v22 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController;
    v23 = *&v5[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController];
    if (!v23)
    {
      v24 = [objc_allocWithZone(UIViewController) init];
      v25 = *&v5[v22];
      *&v5[v22] = v24;

      v23 = *&v5[v22];
      if (!v23)
      {
        goto LABEL_35;
      }
    }

    v26 = [v23 view];
    if (v26)
    {
      v27 = v26;
      [v21 addSubview:v26];

      v28 = *&v5[v22];
      if (!v28)
      {
        v29 = [objc_allocWithZone(UIViewController) init];
        v30 = *&v5[v22];
        *&v5[v22] = v29;

        v28 = *&v5[v22];
        if (!v28)
        {
          goto LABEL_36;
        }
      }

      v31 = [v28 view];
      if (v31)
      {
        v32 = v31;
        v33 = [v18 backgroundView];
        sub_1000024C4(v33);

        if (AVTAvatarSwiftUIEnabled())
        {
          v34 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground;
          v35 = [*&v5[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground] superview];
          if (v35)
          {
            goto LABEL_23;
          }

          v36 = [v18 backgroundView];
          [v36 addSubview:*&v5[v34]];

          v37 = *&v5[v34];
          v38 = [v18 backgroundView];
        }

        else
        {
          v39 = [v18 backgroundView];
          v40 = *&v5[v22];
          if (!v40)
          {
            v41 = [objc_allocWithZone(UIViewController) init];
            v42 = *&v5[v22];
            *&v5[v22] = v41;

            v40 = *&v5[v22];
            if (!v40)
            {
              goto LABEL_37;
            }
          }

          v43 = [v40 view];
          if (!v43)
          {
            goto LABEL_33;
          }

          v44 = v43;
          [v39 addSubview:v43];

          v45 = *&v5[v22];
          if (!v45)
          {
            v46 = [objc_allocWithZone(UIViewController) init];
            v47 = *&v5[v22];
            *&v5[v22] = v46;

            v45 = *&v5[v22];
            if (!v45)
            {
              goto LABEL_38;
            }
          }

          v48 = [v45 view];
          if (!v48)
          {
            goto LABEL_34;
          }

          v37 = v48;
          v38 = [v18 backgroundView];
        }

        v35 = v38;
        sub_1000024C4(v35);

LABEL_23:
        v49 = [v18 floatingView];
        v50 = sub_100009030();
        if (v50)
        {
          [v49 addSubview:v50];

          v51 = sub_100009030();
          if (v51)
          {
            v52 = v51;
            v53 = [v18 floatingView];
            sub_1000024C4(v53);

            if (a4)
            {
              sub_100005A4C(a1, v18, v5, a2);
            }

            else
            {
              v54 = objc_opt_self();
              v55 = swift_allocObject();
              v56 = *(a2 + 16);
              *(v55 + 40) = *a2;
              *(v55 + 16) = a1;
              *(v55 + 24) = v18;
              *(v55 + 32) = v5;
              *(v55 + 56) = v56;
              *(v55 + 72) = *(a2 + 32);
              aBlock[4] = sub_100009CF4;
              aBlock[5] = v55;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10000FA4C;
              aBlock[3] = &unk_100025270;
              v57 = _Block_copy(aBlock);
              v58 = v18;
              v59 = v5;

              [v54 animateWithDuration:v57 animations:v60];

              _Block_release(v57);
            }

            return;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }
}

void sub_100005690(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v8 = sub_10001A22C();
  sub_100003F10(v8, qword_10002B590);
  swift_unknownObjectRetain();
  v9 = sub_10001A20C();
  v10 = sub_10001A50C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v39 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136315138;
    v13 = [a2 description];
    v14 = sub_10001A3EC();
    v16 = v15;

    v17 = sub_1000174DC(v14, v16, &v40);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating renderer with poster environment: %s", v11, 0xCu);
    sub_10000351C(v12);

    a3 = v39;
  }

  v18 = 0x3FC999999999999ALL;
  v19 = *(v4 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer);
  *(v4 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer) = a1;

  v20 = a1;
  v21 = [a2 deviceOrientation];
  v22 = v4 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_currentOrientation;
  *v22 = v21;
  *(v22 + 8) = 0;
  v23 = [a2 deviceOrientation];
  [a2 salientContentRectangle];
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (!a3)
  {
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v43 = v27;
    v44 = 0;
    sub_100005010(v23, &v40, 0x3FC999999999999ALL, 0);
LABEL_12:
    sub_10000671C(a2);

    sub_100007080(a2);
    return;
  }

  v32 = [a3 animationSettings];
  if (v32)
  {
    v33 = v32;
    [v32 duration];
    v35 = v34;

    v18 = v35;
  }

  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = 0;
  sub_100005010(v23, &v40, v18, 0);
  v36 = *v22;
  v37 = *(v22 + 8);
  v38 = [a2 deviceOrientation];
  if ((v37 & 1) == 0 && v36 == v38)
  {
    goto LABEL_12;
  }
}

void sub_100005A4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v7 = dbl_10001C008[a1 - 2];
  }

  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  v12 = *(a4 + 32);
  CGAffineTransformMakeRotation(&v62, v7);
  tx = v62.tx;
  ty = v62.ty;
  v60 = *&v62.c;
  v61 = *&v62.a;
  v15 = [a2 floatingView];
  *&v62.a = v61;
  *&v62.c = v60;
  v62.tx = tx;
  v62.ty = ty;
  [v15 setTransform:&v62];

  v16 = sub_100009030();
  if (!v16)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    if ((~*&v8 & 0x7FF0000000000000) != 0)
    {
      v17 = 1;
      if ((~*&v9 & 0x7FF0000000000000) != 0)
      {
        if (v11 > 0.0)
        {
          v18 = v8;
        }

        else
        {
          v18 = 0.0;
        }

        if (v11 > 0.0)
        {
          v19 = v9;
        }

        else
        {
          v19 = 0.0;
        }

        if (v11 > 0.0)
        {
          v20 = v10;
        }

        else
        {
          v20 = 0.0;
        }

        if (v11 > 0.0)
        {
          v21 = v11;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = v11 <= 0.0;
        v23 = v10 <= 0.0;
        if (v10 > 0.0)
        {
          v8 = v18;
        }

        else
        {
          v8 = 0.0;
        }

        if (v10 > 0.0)
        {
          v9 = v19;
        }

        else
        {
          v9 = 0.0;
        }

        if (v10 > 0.0)
        {
          v10 = v20;
        }

        else
        {
          v10 = 0.0;
        }

        if (v23)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v21;
        }

        v17 = v23 || v22;
        goto LABEL_37;
      }

      v8 = 0.0;
      v9 = 0.0;
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
      v17 = 1;
    }

    v10 = 0.0;
    v11 = 0.0;
  }

LABEL_37:
  v62.a = v8;
  v62.b = v9;
  v62.c = v10;
  v62.d = v11;
  LOBYTE(v62.tx) = v17;
  v24 = v16;
  sub_100009D40(a1, &v62);

  v25 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController;
  v26 = *(a3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController);
  if (!v26)
  {
    v27 = [objc_allocWithZone(UIViewController) init];
    v28 = *(a3 + v25);
    *(a3 + v25) = v27;

    v26 = *(a3 + v25);
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  v29 = [v26 view];
  if (v29)
  {
    v30 = v29;
    v31 = [a2 backgroundView];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    [v30 setFrame:{v33, v35, v37, v39}];
    v40 = *(a3 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground);
    v41 = [a2 backgroundView];
    [v41 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v40 setFrame:{v43, v45, v47, v49}];
    v50 = [a2 floatingView];
    v51 = [a2 backgroundView];
    [v51 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    [v50 setFrame:{v53, v55, v57, v59}];
    return;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

char *sub_100005E4C(uint64_t a1)
{
  v64 = a1;
  v63 = sub_1000027DC(&qword_10002B778);
  __chkstk_darwin(v63);
  v3 = &v58 - v2;
  v4 = sub_1000027DC(&qword_10002B770);
  v5 = __chkstk_darwin(v4 - 8);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - v8;
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = sub_10001A06C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_configuration;
  swift_beginAccess();
  sub_100009A88(v1 + v18, v11, &qword_10002B770);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    return sub_100009B60(v11, &qword_10002B770);
  }

  v58 = v1;
  v21 = v11;
  v22 = *(v13 + 32);
  v22(v17, v21, v12);
  v23 = *(v13 + 16);
  v59 = v17;
  v23(v9, v17, v12);
  v62 = v13;
  (*(v13 + 56))(v9, 0, 1, v12);
  v24 = *(v63 + 48);
  sub_100009A88(v64, v3, &qword_10002B770);
  sub_100009A88(v9, &v3[v24], &qword_10002B770);
  if (v19(v3, 1, v12) == 1)
  {
    sub_100009B60(v9, &qword_10002B770);
    v25 = v19(&v3[v24], 1, v12);
    v26 = v59;
    if (v25 == 1)
    {
      sub_100009B60(v3, &qword_10002B770);
      return (*(v62 + 8))(v26, v12);
    }

    goto LABEL_8;
  }

  v27 = v61;
  sub_100009A88(v3, v61, &qword_10002B770);
  if (v19(&v3[v24], 1, v12) == 1)
  {
    sub_100009B60(v9, &qword_10002B770);
    (*(v62 + 8))(v27, v12);
    v26 = v59;
LABEL_8:
    sub_100009B60(v3, &qword_10002B778);
    goto LABEL_9;
  }

  v54 = v60;
  v22(v60, &v3[v24], v12);
  sub_100009C6C(&qword_10002B788, &type metadata accessor for AvatarPosterConfiguration);
  v55 = v27;
  v56 = sub_10001A3AC();
  v57 = *(v62 + 8);
  v57(v54, v12);
  sub_100009B60(v9, &qword_10002B770);
  v57(v55, v12);
  sub_100009B60(v3, &qword_10002B770);
  v26 = v59;
  if (v56)
  {
    return (v57)(v59, v12);
  }

LABEL_9:
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v28 = sub_10001A22C();
  sub_100003F10(v28, qword_10002B590);
  v29 = sub_10001A20C();
  v30 = sub_10001A50C();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v58;
  v33 = v62;
  if (v31)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Configuration changed, updating views", v34, 2u);
  }

  if (AVTAvatarSwiftUIEnabled())
  {
    v35 = *(v32 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground);
    sub_100009C14(0, &qword_10002B780);
    isa = v35;
    v37._rawValue = sub_10001A02C();
    sub_10001A57C(v37);
    v38 = sub_10001A2BC();
    sub_1000029C4(v38);
LABEL_19:

    result = sub_100009030();
    if (result)
    {
      v44 = *&result[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_boundingShape];
      v45 = *(v32 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_persistedBoundingShape);
      if (v44 != v45)
      {
        v46 = *(v32 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer);
        if (v46)
        {
          v47 = v46;
          v48 = sub_10001A20C();
          v49 = sub_10001A50C();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Acquiring extended rendering session to prevent host snapshotting during avatar image generation", v50, 2u);
          }

          v51 = sub_10001A3DC();
          v52 = [v47 extendRenderingSessionForReason:v51];

          sub_100006664(v52);
          v33 = v62;
        }
      }

      result = sub_100009030();
      if (result)
      {
        v53 = result;
        sub_100009FCC(v26, v44 == v45);

        return (*(v33 + 8))(v26, v12);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v39 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController;
  result = *(v32 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController);
  if (!result)
  {
    v40 = [objc_allocWithZone(UIViewController) init];
    v41 = *(v32 + v39);
    *(v32 + v39) = v40;

    result = *(v32 + v39);
    if (!result)
    {
      goto LABEL_32;
    }
  }

  result = [result view];
  if (result)
  {
    v42 = result;
    sub_100009C14(0, &qword_10002B780);
    v43._rawValue = sub_10001A02C();
    isa = sub_10001A57C(v43).super.isa;
    [v42 setBackgroundColor:isa];

    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100006664(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession) = a1;
  v3 = a1;
  if (v2)
  {
    [objc_msgSend(v2 "assertion")];
    swift_unknownObjectRelease();
  }

  v4 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_delayInvalidationAssertion);
  if (v4)
  {
    v5 = v4;
    sub_10000857C();
  }
}

void sub_10000671C(void *a1)
{
  v69 = sub_1000027DC(&qword_10002B770);
  v2 = __chkstk_darwin(v69);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v68 - v5;
  __chkstk_darwin(v4);
  v70 = &v68 - v7;
  v71 = sub_100019F6C();
  v8 = *(v71 - 8);
  __chkstk_darwin(v71);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v11 = sub_10001A22C();
  v12 = sub_100003F10(v11, qword_10002B590);
  swift_unknownObjectRetain();
  v73 = v12;
  v13 = sub_10001A20C();
  v14 = sub_10001A50C();
  swift_unknownObjectRelease();
  v15 = os_log_type_enabled(v13, v14);
  v74 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v79[0] = v17;
    *v16 = 136315138;
    v18 = [a1 description];
    v19 = sub_10001A3EC();
    v21 = v20;

    v22 = sub_1000174DC(v19, v21, v79);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Loading poster configuration from poster environment: %s", v16, 0xCu);
    sub_10000351C(v17);
  }

  v23 = [a1 contents];
  v79[0] = 0;
  v24 = [v23 loadUserInfoWithError:v79];
  v25 = v79[0];
  if (v24)
  {
    v26 = v24;
    v27 = sub_10001A39C();
    v28 = v71;
    (*(v8 + 104))(v10, enum case for AvatarPosterConfiguration.UserInfoKey.dataRepresentation(_:), v71);
    v29 = v25;
    v30 = sub_100019F5C();
    v32 = v31;
    (*(v8 + 8))(v10, v28);
    *&v78[0] = v30;
    *(&v78[0] + 1) = v32;

    sub_10001A62C();
    if (!*(v27 + 16) || (v33 = sub_100016CC8(v79), (v34 & 1) == 0))
    {

      __break(1u);
    }

    v35 = v33;
    swift_unknownObjectRelease();

    sub_100003EAC(*(v27 + 56) + 32 * v35, v78);
    sub_100009BC0(v79);

    sub_100009C5C(v78, v80);
    swift_dynamicCast();
    v37 = v76;
    v36 = v77;
    sub_10001A0CC();
    swift_allocObject();
    sub_10001A0BC();
    v38 = sub_10001A06C();
    sub_100009C6C(&unk_10002BBA0, &type metadata accessor for AvatarPosterConfiguration);
    v39 = v70;
    sub_10001A0AC();
    (*(*(v38 - 8) + 56))(v39, 0, 1, v38);
    v53 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_configuration;
    v54 = v75;
    swift_beginAccess();
    v55 = v74;
    sub_100009A88(v54 + v53, v74, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v39, v54 + v53);
    swift_endAccess();
    sub_100005E4C(v55);
    sub_100009B60(v55, &qword_10002B770);
    sub_100009B60(v39, &qword_10002B770);
    v56 = v54;
    v57 = sub_10001A20C();
    v58 = sub_10001A50C();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = v54;
      v61 = swift_slowAlloc();
      v62 = v55;
      v63 = swift_slowAlloc();
      *&v80[0] = v63;
      *v61 = 136315138;
      sub_100009A88(v60 + v53, v62, &qword_10002B770);
      v64 = sub_10001A5EC();
      v66 = v65;
      sub_100009B60(v62, &qword_10002B770);
      v67 = sub_1000174DC(v64, v66, v80);

      *(v61 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "Did load poster configuration: %s", v61, 0xCu);
      sub_10000351C(v63);
    }

    sub_100003E48(v37, v36);
  }

  else
  {
    v40 = v79[0];
    swift_unknownObjectRelease();
    sub_10001A11C();

    swift_willThrow();
    swift_errorRetain();
    v41 = sub_10001A20C();
    v42 = sub_10001A51C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v79[0] = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = sub_10001A78C();
      v47 = sub_1000174DC(v45, v46, v79);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error decoding poster configuration: %s", v43, 0xCu);
      sub_10000351C(v44);
    }

    v48 = v74;
    sub_10000405C();
    sub_100019FFC();
    v49 = sub_10001A06C();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_configuration;
    v51 = v75;
    swift_beginAccess();
    v52 = v72;
    sub_100009A88(v51 + v50, v72, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v48, v51 + v50);
    swift_endAccess();
    sub_100005E4C(v52);

    sub_100009B60(v52, &qword_10002B770);
    sub_100009B60(v48, &qword_10002B770);
  }
}

void sub_100007080(void *a1)
{
  v2 = v1;
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v4 = sub_10001A22C();
  sub_100003F10(v4, qword_10002B590);
  swift_unknownObjectRetain();
  v5 = sub_10001A20C();
  v6 = sub_10001A50C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35[0] = v8;
    *v7 = 136315138;
    v9 = [a1 description];
    v10 = sub_10001A3EC();
    v12 = v11;

    v13 = sub_1000174DC(v10, v12, v35);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading bounding shape from poster environment: %s", v7, 0xCu);
    sub_10000351C(v8);
  }

  v14 = [a1 contents];
  v35[0] = 0;
  v15 = [v14 loadUserInfoWithError:v35];
  swift_unknownObjectRelease();
  v16 = v35[0];
  if (v15)
  {
    v17 = sub_10001A39C();
    v18 = v16;

    strcpy(v34, "boundingShape");
    HIWORD(v34[1]) = -4864;
    sub_10001A62C();
    if (*(v17 + 16) && (v19 = sub_100016CC8(v35), (v20 & 1) != 0))
    {
      sub_100003EAC(*(v17 + 56) + 32 * v19, v36);
      sub_100009BC0(v35);

      sub_100009C14(0, &unk_10002B790);
      if (swift_dynamicCast())
      {
        v21 = v34[0];
        v22 = [v34[0] integerValue];
        *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_persistedBoundingShape) = v22;
        v23 = sub_10001A20C();
        v24 = sub_10001A50C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v23, v24, "Did load persistedBoundingShape: %ld", v25, 0xCu);
        }
      }
    }

    else
    {

      sub_100009BC0(v35);
    }
  }

  else
  {
    v26 = v35[0];
    sub_10001A11C();

    swift_willThrow();
    swift_errorRetain();
    v27 = sub_10001A20C();
    v28 = sub_10001A51C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_10001A78C();
      v33 = sub_1000174DC(v31, v32, v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error decoding bounding shape: %s", v29, 0xCu);
      sub_10000351C(v30);
    }

    else
    {
    }
  }
}

id sub_100007544()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession];
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AvatarPosterRenderer()
{
  result = qword_10002B680;
  if (!qword_10002B680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100007704()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer] = 0;
  v3 = &v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_currentOrientation];
  *v3 = 0;
  v3[8] = 1;
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController] = 0;
  v4 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_tonalGradientBackground;
  v5 = sub_10001A2DC();
  v6 = type metadata accessor for TonalGradientView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_color] = v5;
  v24 = 256;
  swift_retain_n();
  sub_1000027DC(&unk_10002BA60);
  sub_100002C30();
  v23 = sub_10001A2FC();
  v8 = objc_allocWithZone(sub_1000027DC(&qword_10002BA70));
  *&v7[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView] = sub_10001A27C();
  v22.receiver = v7;
  v22.super_class = v6;
  v9 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView;
  v11 = *&v9[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView];
  v12 = v9;
  v13 = v11;
  sub_10001A29C();

  v14 = *&v9[v10];
  [v12 bounds];
  [v14 setFrame:?];

  [*&v9[v10] setAutoresizingMask:18];
  [v12 addSubview:*&v9[v10]];

  *&v1[v4] = v12;
  v15 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_isiPad;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v1[v15] = v17 == 1;
  v18 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_configuration;
  sub_10000405C();
  sub_100019FFC();
  v19 = sub_10001A06C();
  (*(*(v19 - 8) + 56))(&v1[v18], 0, 1, v19);
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_persistedBoundingShape] = -1;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__avatarRecordRenderView] = 0;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession] = 0;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_delayInvalidationAssertion] = 0;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

void sub_100007A0C()
{
  sub_100007AE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100007AE0()
{
  if (!qword_10002B690)
  {
    sub_10001A06C();
    v0 = sub_10001A5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_10002B690);
    }
  }
}

char *sub_100007B38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000027DC(&qword_10002B750);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  *&v2[OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_fallbackInvalidationTask] = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1000027DC(&qword_10002B758);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = sub_100009840;
  *(v9 + 24) = v8;
  *&v2[OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_lock_invalidationHandler] = v9;
  v10 = type metadata accessor for DelayInvalidationAssertion();
  v19.receiver = v2;
  v19.super_class = v10;

  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = sub_10001A4CC();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001A4AC();
  v14 = v11;

  v15 = sub_10001A49C();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;

  v17 = sub_1000082D0(0, 0, v7, &unk_10001BFE0, v16);

  *&v14[OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_fallbackInvalidationTask] = v17;

  return v14;
}

uint64_t sub_100007D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10001A6DC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_10001A4AC();
  v4[9] = sub_10001A49C();
  v7 = sub_10001A48C();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100007E60, v7, v6);
}

uint64_t sub_100007E60()
{
  sub_10001A77C();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100007F2C;

  return sub_100008A64(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100007F2C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_100008264;
  }

  else
  {
    v5 = sub_1000080B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_1000080B4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 104);
    sub_10001A64C(95);
    v8._object = 0x8000000100020510;
    v8._countAndFlagsBits = 0xD000000000000023;
    sub_10001A44C(v8);
    *(v0 + 112) = 5;
    v9._countAndFlagsBits = sub_10001A72C();
    sub_10001A44C(v9);

    v10._countAndFlagsBits = 0xD00000000000003ALL;
    v10._object = 0x8000000100020540;
    sub_10001A44C(v10);
    v4 = *&v2[OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_lock_invalidationHandler];
    v5 = swift_task_alloc();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0xE000000000000000;
    os_unfair_lock_lock(v4 + 8);
    sub_100009D28(&v4[4]);
    os_unfair_lock_unlock(v4 + 8);
    if (v3)
    {
      return;
    }
  }

  v6 = *(v0 + 8);

  v6();
}

uint64_t sub_100008264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000082D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000027DC(&qword_10002B750);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100009A88(a3, v22 - v9, &qword_10002B750);
  v11 = sub_10001A4CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009B60(v10, &qword_10002B750);
  }

  else
  {
    sub_10001A4BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10001A48C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10001A42C() + 32;

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

      sub_100009B60(a3, &qword_10002B750);

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

  sub_100009B60(a3, &qword_10002B750);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000857C()
{
  v1 = v0;
  swift_getObjectType();
  sub_10001A64C(18);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  sub_10001A3EC();

  v7._object = 0x80000001000204B0;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_10001A44C(v7);
  v4 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_lock_invalidationHandler);
  os_unfair_lock_lock(v4 + 8);
  sub_100008A38(&v4[4]);
  os_unfair_lock_unlock(v4 + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_fallbackInvalidationTask);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtensionP33_C771079E74C2E9E4099184D8AE9CA0AA26DelayInvalidationAssertion_fallbackInvalidationTask) = 0;
  if (v6)
  {
    sub_1000027DC(&unk_10002B730);
    sub_10001A4DC();
  }

  return result;
}

void sub_100008700(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v7 = qword_10002AF98;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_10001A22C();
    sub_100003F10(v8, qword_10002B590);

    v9 = sub_10001A20C();
    v10 = sub_10001A52C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000174DC(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "[DelayInvalidationAssertion] calling invalidationHandler for reason: %{public}s.", v11, 0xCu);
      sub_10000351C(v12);
    }

    v4();
    sub_100008A54(v4);
    sub_100008A54(v4);
  }

  else
  {
    if (qword_10002AF98 != -1)
    {
      swift_once();
    }

    v13 = sub_10001A22C();
    sub_100003F10(v13, qword_10002B590);
    v14 = sub_10001A20C();
    v15 = sub_10001A52C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[DelayInvalidationAssertion] invalidationHandler was nil.", v16, 2u);
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

id sub_100008990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelayInvalidationAssertion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008A54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10001A6CC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100008B64, 0, 0);
}

uint64_t sub_100008B64()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_10001A6DC();
  v5 = sub_100009C6C(&qword_10002B760, &type metadata accessor for ContinuousClock);
  sub_10001A75C();
  sub_100009C6C(&qword_10002B768, &type metadata accessor for ContinuousClock.Instant);
  sub_10001A6EC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100008CF4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100008CF4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100008EB0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100008EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100008F1C(uint64_t a1)
{
  if (a1 && *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession))
  {
    if (qword_10002AF98 != -1)
    {
      swift_once();
    }

    v2 = sub_10001A22C();
    sub_100003F10(v2, qword_10002B590);
    v3 = sub_10001A20C();
    v4 = sub_10001A50C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Relinquishing extended rendering session", v5, 2u);
    }

    sub_100006664(0);
  }
}

id sub_100009030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__avatarRecordRenderView;
  v4 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__avatarRecordRenderView];
  if (v4)
  {
    return v4;
  }

  v5 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer;
  if (*&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer])
  {
    v6 = ObjectType;
    v7 = [*&v0[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer] floatingView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = *&v1[v5];
    if (v16)
    {
      v17 = [objc_msgSend(v16 "environment")];
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = -1;
    }

    ObjectType = v6;
  }

  else
  {
    v17 = -1;
    v15 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
  }

  v22[3] = ObjectType;
  v22[4] = &off_100025148;
  v22[0] = v1;
  objc_allocWithZone(type metadata accessor for AvatarRecordRenderView());
  v18 = v1;
  v19 = sub_10000C09C(v17, v22, v9, v11, v13, v15);
  v20 = *&v1[v3];
  *&v1[v3] = v19;

  result = *&v1[v3];
  if (result)
  {
    result = [result setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = *&v1[v3];
    if (v4)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000091B4()
{
  v1 = v0;
  v2 = sub_1000027DC(&qword_10002B770);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  if (qword_10002AF98 != -1)
  {
    swift_once();
  }

  v8 = sub_10001A22C();
  sub_100003F10(v8, qword_10002B590);
  v9 = sub_10001A20C();
  v10 = sub_10001A50C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating renderer", v11, 2u);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_renderer) = 0;

  v13 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__backgroundViewController) = 0;

  v14 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__avatarRecordRenderView);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer__avatarRecordRenderView) = 0;

  v15 = sub_10001A06C();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_configuration;
  swift_beginAccess();
  sub_100009A88(v1 + v16, v5, &qword_10002B770);
  swift_beginAccess();
  sub_100009AF0(v7, v1 + v16);
  swift_endAccess();
  sub_100005E4C(v5);
  sub_100009B60(v5, &qword_10002B770);
  result = sub_100009B60(v7, &qword_10002B770);
  v18 = v1 + OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_currentOrientation;
  *v18 = 0;
  *(v18 + 8) = 1;
  return result;
}

void sub_100009440(void *a1, char *a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a1;
  v7[4] = sub_100009770;
  v7[5] = v6;
  v8 = *&a2[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_extendedRenderingSession];
  _Block_copy(a3);
  v9 = qword_10002AF98;

  v10 = a1;
  v11 = a2;
  if (v8)
  {
    if (v9 != -1)
    {
      swift_once();
    }

    v12 = sub_10001A22C();
    sub_100003F10(v12, qword_10002B590);
    v13 = sub_10001A20C();
    v14 = sub_10001A50C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Delaying invalidation of renderer (withCompletion)", v15, 2u);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000097C8;
    *(v16 + 24) = v7;
    v17 = objc_allocWithZone(type metadata accessor for DelayInvalidationAssertion());
    v18 = sub_100007B38(sub_100009840, v16);
    v23 = *&v11[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_delayInvalidationAssertion];
    *&v11[OBJC_IVAR____TtC21AvatarPosterExtension20AvatarPosterRenderer_delayInvalidationAssertion] = v18;
  }

  else
  {
    if (v9 != -1)
    {
      swift_once();
    }

    v19 = sub_10001A22C();
    sub_100003F10(v19, qword_10002B590);
    v20 = sub_10001A20C();
    v21 = sub_10001A50C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalidating renderer (withCompletion)", v22, 2u);
    }

    sub_1000091B4();
    a3[2](a3);
  }
}

uint64_t sub_100009738()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009780()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000097C8()
{
  v1 = *(v0 + 32);
  v2 = sub_1000091B4();
  return v1(v2);
}

uint64_t sub_100009808()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009868()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000098A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000098E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009994;

  return sub_100007D6C(a1, v4, v5, v6);
}

uint64_t sub_100009994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009A88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000027DC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027DC(&qword_10002B770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009B60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000027DC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009C14(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_100009C5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100009CB4()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100009D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100009D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentOrientation] = a1;
  v5 = &v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect];
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 1) = v6;
  v5[32] = *(a2 + 32);
  v7 = a1 - 3;
  v8 = sub_10001A20C();
  v9 = sub_10001A50C();
  v10 = os_log_type_enabled(v8, v9);
  if (v7 > 1)
  {
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Applying portrait constraints for portrait orientation", v12, 2u);
    }

    sub_10000EF00(a2);
  }

  else
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Applying landscape constraints for landscape orientation", v11, 2u);
    }

    sub_10000E7A4(a2);
  }

  v13 = sub_10000B998();
  v14 = v13;
  if (v5[32])
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [v13 setContentMode:v15];

  if ((*(a2 + 32) & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v20 = [objc_opt_self() standardPreferences];
    v21 = sub_10001A3DC();
    v22 = [v20 userHasOptedInToPreference:v21];

    if (v22)
    {
      v23 = *&v3[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder];
      if (v23)
      {
        v24 = *&v3[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView];
        v25 = v23;
        [v24 frame];
        [v25 setFrame:?];
      }

      v26 = *&v3[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder];
      if (v26)
      {
        [v26 setFrame:{v16, v17, v18, v19}];
      }
    }
  }

  return [v3 setNeedsLayout];
}

uint64_t sub_100009FCC(uint64_t a1, int a2)
{
  v78 = a2;
  v85 = a1;
  sub_1000027DC(&qword_10002B750);
  (__chkstk_darwin)();
  v76 = v69 - v3;
  v4 = sub_100019F9C();
  v81 = *(v4 - 8);
  v82 = v4;
  (__chkstk_darwin)();
  v86 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10001A06C();
  v6 = *(v84 - 8);
  v7 = (__chkstk_darwin)();
  v75 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v80 = v69 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v69 - v12;
  v83 = v14;
  __chkstk_darwin(v11);
  v16 = v69 - v15;
  v87 = v2;
  v69[1] = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_logger;
  v17 = sub_10001A20C();
  v18 = sub_10001A50C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Rendering avatar in render view", v19, 2u);
  }

  v79 = v13;

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v6 + 16);
  v22 = v84;
  v23 = v85;
  v21(v16, v85, v84);
  v21(v13, v16, v22);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v74 = *(v6 + 80);
  v25 = swift_allocObject();
  v77 = v20;
  *(v25 + 16) = v20;
  v72 = *(v6 + 32);
  v73 = v6 + 32;
  v72(v25 + v24, v16, v22);
  swift_unknownObjectWeakInit();
  v26 = v80;
  v70 = v21;
  v71 = v6 + 16;
  v21(v80, v23, v22);
  v27 = v86;
  sub_100019FAC();
  v28 = v81;
  v29 = v27;
  v30 = v82;
  v31 = (*(v81 + 88))(v29, v82);
  if (v31 == enum case for AvatarPosterConfiguration.RenderingMode.image(_:))
  {
    v32 = *(v6 + 8);
    v32(v79, v22);
    sub_10000ABF8(v88, v26, sub_10000E57C);

    v32(v26, v22);
    return swift_unknownObjectWeakDestroy();
  }

  v34 = v79;
  if (v31 != enum case for AvatarPosterConfiguration.RenderingMode.memojiRecipe(_:))
  {

    v36 = *(v6 + 8);
    v36(v26, v22);
    swift_unknownObjectWeakDestroy();
    v36(v34, v22);
    return (*(v28 + 8))(v86, v30);
  }

  v35 = *(v6 + 8);
  if (v78)
  {
    v35(v79, v22);
    sub_10000ABF8(v88, v26, sub_10000E57C);

    v35(v26, v22);
    return swift_unknownObjectWeakDestroy();
  }

  v86 = (v6 + 8);
  v35(v26, v22);
  v37 = sub_100019F4C();
  if (!v37)
  {

LABEL_21:

    swift_unknownObjectWeakDestroy();
    return (v35)(v34, v22);
  }

  v38 = v37;
  v82 = v35;
  v39 = *(v87 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord);
  if (v39)
  {
    v40 = objc_opt_self();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v41 = [v40 avatarForRecord:v38];
    v42 = [v41 dataRepresentation];

    v43 = sub_10001A13C();
    v45 = v44;

    v46 = [v40 avatarForRecord:v39];
    v47 = [v46 dataRepresentation];

    v48 = sub_10001A13C();
    v50 = v49;

    LOBYTE(v47) = sub_100018008(v43, v45, v48, v50);
    v51 = v48;
    v22 = v84;
    sub_100003E48(v51, v50);
    sub_100003E48(v43, v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v47)
    {
      v52 = sub_100019FBC();
      v54 = v53;
      v55 = sub_10000AD8C(v52, v53);
      sub_100003E34(v52, v54);
      if ((v55 & 1) == 0)
      {

        swift_unknownObjectRelease();
        v35 = v82;
        goto LABEL_21;
      }
    }
  }

  v81 = v38;
  v56 = sub_10001A20C();
  v57 = sub_10001A50C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Canceling any ongoing avatar sticker generation task, before stating a new one", v58, 2u);
  }

  v59 = v74;

  sub_10000AA2C();

  v82(v34, v22);
  v60 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask;
  if (*(v87 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask))
  {

    sub_10001A4DC();
  }

  v61 = sub_10001A4CC();
  (*(*(v61 - 8) + 56))(v76, 1, 1, v61);
  v62 = swift_allocObject();
  v63 = v87;
  swift_unknownObjectWeakInit();
  v64 = v75;
  v65 = v84;
  v70(v75, v85, v84);
  sub_10001A4AC();

  v66 = sub_10001A49C();
  v67 = swift_allocObject();
  v67[2] = v66;
  v67[3] = &protocol witness table for MainActor;
  v67[4] = v62;
  v72(v67 + ((v59 + 40) & ~v59), v64, v65);

  v68 = sub_10000B9F8(0, 0, v76, &unk_10001C1A0, v67);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  *(v63 + v60) = v68;
}

double sub_10000A8D4()
{
  v1 = sub_100019F7C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10001A53C();
  sub_10001A04C();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (*&v5 != 2)
  {
    v10 = 0.216;
    if (v0[2])
    {
      v10 = 0.12;
    }

    v8 = v7 + v10 - v0[4];
    if (v0[2])
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0.055;
    return v9 + v8;
  }

  v8 = v7 + 0.12 + -0.12 - v0[4];
  if ((v0[2] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0.03;
  return v9 + v8;
}

void sub_10000AA2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100019F4C();
    v3 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord;
    *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord] = v2;
    swift_unknownObjectRelease();
    v4 = sub_100019FBC();
    v5 = &v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData];
    v6 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData];
    v7 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8];
    *v5 = v4;
    v5[1] = v8;
    sub_100003E34(v6, v7);
    if (sub_10001A05C())
    {
      v9 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_posterIsTall;
      v10 = 1;
LABEL_14:
      v1[v9] = v10;
      goto LABEL_15;
    }

    v11 = *&v1[v3];
    if (v11)
    {
      v12 = objc_opt_self();
      swift_unknownObjectRetain();
      v13 = [v12 avatarForRecord:v11];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 name];
        v16 = sub_10001A3EC();
        v18 = v17;

        if (v16 == 0x65666661726967 && v18 == 0xE700000000000000)
        {

          v20 = 1;
        }

        else
        {
          v20 = sub_10001A74C();
        }

        swift_unknownObjectRelease();
        v9 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_posterIsTall;
        v10 = v20 & 1;
        goto LABEL_14;
      }

      swift_unknownObjectRelease();

      v1 = v13;
    }

LABEL_15:
  }
}

void sub_10000ABF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100019FDC();
    if (v7 >> 60 != 15)
    {
      v8 = v7;
      v9 = v6;
      a3();
      v10 = sub_10001A20C();
      v11 = sub_10001A50C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Rendering image data from configuration", v12, 2u);
      }

      v13 = objc_allocWithZone(UIImage);
      v14 = v9;
      v15 = v8;
      sub_10000F5D0(v9, v8);
      isa = sub_10001A12C().super.isa;
      v17 = [v13 initWithData:isa];

      sub_100003E34(v9, v15);
      v18 = *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage];
      *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage] = v17;
      v19 = v17;

      sub_10000D564();
      sub_100003E34(v14, v15);
    }
  }
}

uint64_t sub_10000AD8C(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData);
  v7 = *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData);
  v6 = *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8);
  if (a2 >> 60 != 15)
  {
    if (v6 >> 60 != 15)
    {
      sub_10000F5D0(*(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData), *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8));
      sub_10000F5D0(v7, v6);
      sub_10000F5D0(a1, a2);
      v9 = sub_100018008(a1, a2, v7, v6);
      sub_100003E34(v7, v6);
      sub_100003E34(v7, v6);
      sub_100003E34(a1, a2);
      v8 = v9 ^ 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v6 >> 60 != 15)
  {
LABEL_5:
    sub_10000F5D0(*(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData), *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8));
    sub_10000F5D0(a1, a2);
    sub_100003E34(a1, a2);
    sub_100003E34(v7, v6);
    v8 = 1;
    goto LABEL_7;
  }

  sub_10000F5D0(*(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData), *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8));
  sub_10000F5D0(a1, a2);
  sub_100003E34(a1, a2);
  v8 = 0;
LABEL_7:
  v10 = *v5;
  v11 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_10000F5D0(a1, a2);
  sub_100003E34(v10, v11);
  return v8 & 1;
}

uint64_t sub_10000AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1000027DC(&qword_10002B770);
  v5[10] = swift_task_alloc();
  sub_10001A4AC();
  v5[11] = sub_10001A49C();
  v7 = sub_10001A48C();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_10000AFB0, v7, v6);
}

uint64_t sub_10000AFB0()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {

LABEL_7:

    v16 = v0[1];

    return v16();
  }

  v2 = Strong;
  *&v3 = COERCE_DOUBLE(sub_10000B81C());
  if (v5)
  {

    v6 = sub_10001A20C();
    v7 = sub_10001A50C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying to generate sticker while containing view has empty size, postponing sticker generation", v8, 2u);
    }

    v10 = v0[9];
    v9 = v0[10];

    v11 = sub_10001A06C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, v10, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    v13 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_postponedRenderingConfiguration;
    swift_beginAccess();
    sub_10000F7E0(v9, &v2[v13]);
    swift_endAccess();
    *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord] = 0;
    swift_unknownObjectRelease();
    v14 = *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData];
    v15 = *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData + 8];
    *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData] = xmmword_10001C040;
    sub_100003E34(v14, v15);

    goto LABEL_7;
  }

  v18 = *&v3;
  v19 = v4;
  v0[15] = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_logger;
  v20 = sub_10001A20C();
  v21 = sub_10001A50C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = sub_10001A56C();
    v26 = sub_1000174DC(v24, v25, &v31);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Generating avatar sticker image with requested size: %s", v22, 0xCu);
    sub_10000351C(v23);
  }

  v27 = sub_10000B998();
  [v27 setHidden:1];

  v28 = *&v2[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 8];
  v29 = swift_task_alloc();
  v0[16] = v29;
  *v29 = v0;
  v29[1] = sub_10000B38C;
  v30 = v0[9];

  return sub_1000036DC(v30, v18, v19, v28);
}

uint64_t sub_10000B38C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return _swift_task_switch(sub_10000B4B4, v4, v3);
}

uint64_t sub_10000B4B4()
{
  v35 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = sub_10001A20C();
    v4 = sub_10001A50C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34 = v6;
      *v5 = 136315138;
      [v2 size];
      v7 = sub_10001A56C();
      v9 = sub_1000174DC(v7, v8, &v34);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Finished generating avatar sticker image with size: %s", v5, 0xCu);
      sub_10000351C(v6);
    }

    v10 = *(v0 + 112);
    v11 = *(v10 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage);
    *(v10 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage) = *(v0 + 136);
    v12 = v2;

    sub_10000D564();
  }

  else
  {
    v13 = sub_10001A20C();
    v14 = sub_10001A51C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Sticker generator returned no image, attempting to fallback to the avatarImageData", v15, 2u);
    }

    v16 = sub_100019FDC();
    if (v17 >> 60 != 15)
    {
      v18 = v17;
      v19 = v16;
      v20 = sub_10001A20C();
      v21 = sub_10001A52C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Found avatarImageData from configuration, attempting to use it.", v22, 2u);
      }

      v23 = *(v0 + 112);

      v24 = objc_allocWithZone(UIImage);
      v25 = v18;
      sub_10000F5D0(v19, v18);
      isa = sub_10001A12C().super.isa;
      v27 = [v24 initWithData:isa];

      sub_100003E34(v19, v25);
      v28 = *(v23 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage);
      *(v23 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage) = v27;
      v29 = v27;

      sub_10000D564();
      sub_100003E34(v19, v25);
    }
  }

  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  [*&v31[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] setHidden:0];

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10000B81C()
{
  v1 = v0;
  v2 = sub_100019F7C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v10 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetHeight(v19);
  v11 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_boundingShape];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  if (v11 != 2)
  {
    sub_10001A53C();
    sub_10001A04C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v12 = v12 * v14;
  }

  if (v12 <= 0.0 || v10 <= 0.0)
  {
    return 0;
  }

  else
  {
    return *&v10;
  }
}

id sub_10000B998()
{
  v1 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
  v2 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView);
  }

  else
  {
    v4 = sub_10000D6EC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000027DC(&qword_10002B750);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100009A88(a3, v24 - v9, &qword_10002B750);
  v11 = sub_10001A4CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009B60(v10, &qword_10002B750);
  }

  else
  {
    sub_10001A4BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10001A48C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10001A42C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100009B60(a3, &qword_10002B750);

      return v22;
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

  sub_100009B60(a3, &qword_10002B750);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

id sub_10000BCF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10001A22C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, &v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_logger], v3);
  v7 = sub_10001A20C();
  v8 = sub_10001A50C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Canceling any ongoing avatar sticker generation task, before tearing down the render view", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v10 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask;
  if (*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask])
  {

    sub_10001A4DC();
  }

  *&v1[v10] = 0;

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for AvatarRecordRenderView()
{
  result = qword_10002B850;
  if (!qword_10002B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000C09C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_postponedRenderingConfiguration;
  v15 = sub_10001A06C();
  (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentOrientation;
  v17 = objc_opt_self();
  v18 = [v17 currentDevice];
  v19 = [v18 orientation];

  *&v6[v16] = v19;
  v20 = &v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastBounds];
  *v20 = 0u;
  v20[1] = 0u;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder] = 0;
  v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_posterIsTall] = 0;
  v21 = &v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData] = xmmword_10001C040;
  sub_10001A21C();
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer] = 0;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_orientationConstraints] = &_swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_boundingShape] = a1;
  v22 = [v17 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = &v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
  *v24 = a1;
  *(v24 + 1) = 0x4034000000000000;
  v24[16] = v23 == 1;
  *(v24 + 24) = xmmword_10001C050;
  *(v24 + 5) = 0x3FC083126E978D50;
  sub_100009A88(a2, &v6[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageViewDelegate], &qword_10002B2D8);
  v27.receiver = v6;
  v27.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v27, "initWithFrame:", a3, a4, a5, a6);
  sub_10000C398();

  sub_100009B60(a2, &qword_10002B2D8);
  return v25;
}

void sub_10000C398()
{
  v86 = objc_opt_self();
  v1 = [v86 clearColor];
  [v0 setBackgroundColor:v1];

  v2 = sub_10000B998();
  [v0 addSubview:v2];

  [v0 frame];
  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v90.size.width = 0.0;
  v90.size.height = 0.0;
  if (CGRectEqualToRect(v88, v90))
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 frame];
  }

  Height = CGRectGetHeight(*&v15);
  v17 = &v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
  v18 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
  v19 = 0.0;
  if (v18 == 2)
  {
    v19 = 0.12;
  }

  v20 = -(Height * v19);
  v21 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
  v22 = [*&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v20];

  LODWORD(v25) = 1132068864;
  [v24 setPriority:v25];
  [v0 frame];
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = 0.0;
  v91.size.height = 0.0;
  if (CGRectEqualToRect(v89, v91))
  {
    v26 = [objc_opt_self() mainScreen];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = v34;
    v36 = v32;
    v37 = v30;
    v38 = v28;
  }

  else
  {
    [v0 frame];
  }

  v39 = CGRectGetHeight(*&v38);
  v40 = 0.216;
  if ((v18 == 2) | v17[16] & 1)
  {
    v40 = 0.12;
  }

  v41 = v39 * v40;
  sub_1000027DC(&unk_10002B860);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10001B9C0;
  v43 = [*&v0[v21] topAnchor];
  v44 = [v0 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v41];

  *(v42 + 32) = v45;
  *(v42 + 40) = v24;
  v46 = *&v0[v21];
  v85 = v24;
  v47 = [v46 centerXAnchor];
  v48 = [v0 centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v42 + 48) = v49;
  v50 = [*&v0[v21] widthAnchor];
  v51 = [v0 widthAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v42 + 56) = v52;
  v53 = objc_opt_self();
  v54 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_orientationConstraints;
  sub_100009C14(0, &qword_10002B020);

  isa = sub_10001A46C().super.isa;

  [v53 deactivateConstraints:isa];

  v56 = sub_10001A46C().super.isa;
  [v53 activateConstraints:v56];

  *&v0[v54] = v42;

  v57 = [objc_opt_self() standardPreferences];
  v58 = sub_10001A3DC();
  LODWORD(v53) = [v57 userHasOptedInToPreference:v58];

  if (!v53)
  {
    goto LABEL_21;
  }

  v59 = [objc_allocWithZone(UIView) init];
  v60 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder;
  v61 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder];
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder] = v59;

  v62 = *&v0[v60];
  if (!v62 || (v63 = [v62 layer], v64 = objc_msgSend(v86, "purpleColor"), v65 = objc_msgSend(v64, "CGColor"), v64, objc_msgSend(v63, "setBorderColor:", v65), v63, v65, (v66 = *&v0[v60]) == 0) || (v67 = objc_msgSend(v66, "layer"), objc_msgSend(v67, "setBorderWidth:", 2.0), v67, (v68 = *&v0[v60]) == 0) || (v69 = v68, v70 = objc_msgSend(v86, "clearColor"), objc_msgSend(v69, "setBackgroundColor:", v70), v69, v70, !*&v0[v60]))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  [v0 addSubview:?];
  v71 = [objc_allocWithZone(UIView) init];
  v72 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder;
  v73 = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder];
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder] = v71;

  v74 = *&v0[v72];
  if (!v74)
  {
    goto LABEL_25;
  }

  v75 = [v74 layer];
  v76 = [v86 yellowColor];
  v77 = [v76 CGColor];

  [v75 setBorderColor:v77];
  v78 = *&v0[v72];
  if (!v78)
  {
    goto LABEL_25;
  }

  v79 = [v78 layer];
  [v79 setBorderWidth:2.0];

  v80 = *&v0[v72];
  if (!v80)
  {
    goto LABEL_25;
  }

  v81 = v80;
  v82 = [v86 clearColor];
  [v81 setBackgroundColor:v82];

  v83 = *&v0[v72];
  if (!v83)
  {
    goto LABEL_25;
  }

  v84 = v83;
  [v0 addSubview:v84];

LABEL_21:
}

void sub_10000CB48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000027DC(&qword_10002B770);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = sub_10001A06C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v13 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_postponedRenderingConfiguration;
  swift_beginAccess();
  sub_100009A88(v1 + v13, v8, &qword_10002B770);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009B60(v8, &qword_10002B770);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_10001A20C();
    v15 = sub_10001A50C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Trying to render postponed rendering configuration", v16, 2u);
    }

    sub_100009FCC(v12, 0);
    (*(v10 + 8))(v12, v9);
    (*(v10 + 56))(v6, 1, 1, v9);
    swift_beginAccess();
    sub_10000F7E0(v6, v1 + v13);
    swift_endAccess();
  }

  sub_10000CE28();
}

void sub_10000CE28()
{
  v1 = v0;
  v2 = sub_100019F7C();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000B998();
  v6 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage];
  v7 = v6;
  sub_100002D78(v6);

  if (sub_10000D620())
  {
    v8 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer, sub_10000D870);
    v9 = [v8 superlayer];

    if (!v9)
    {
      v13 = [v1 layer];
      [v13 addSublayer:*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer]];

      v14 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
      v15 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] layer];
      v12 = [v15 mask];

      if (!v12)
      {
        v16 = [*&v1[v14] layer];
        v12 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer, sub_10000DEC8);
        [v16 setMask:v12];
      }

      goto LABEL_9;
    }
  }

  if ((sub_10000D620() & 1) == 0)
  {
    v10 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer, sub_10000D870);
    v11 = [v10 superlayer];

    if (v11)
    {

      [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer] removeFromSuperlayer];
      v12 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer, sub_10000DEC8);
      [v12 removeFromSuperlayer];
LABEL_9:
    }
  }

  v17 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer, sub_10000D870);
  [v1 bounds];
  v18 = &stru_100029000;
  [v17 setFrame:?];

  v19 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer;
  v20 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer] mask];
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v24 = *&v1[v19];
      v25 = v21;
      v47 = v25;
      [v24 bounds];
      [v23 setFrame:?];

      sub_1000027DC(&unk_10002B860);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10001B9C0;
      sub_100009C14(0, &unk_10002B790);
      v27 = 0.0;
      *(v26 + 32) = sub_10001A5AC(0.0);
      v28 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
      v29 = v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16];
      v30 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 32];
      sub_10001A53C();
      sub_10001A04C();
      v32 = v31;
      v33 = *(v48 + 8);
      v33(v4, v2);
      if (v28 == 2)
      {
        v27 = 0.12;
      }

      if ((v28 == 2) | v29 & 1)
      {
        v34 = 0.12;
      }

      else
      {
        v34 = 0.216;
      }

      *(v26 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v34 + v32 - v27 - v30];
      sub_10001A53C();
      sub_10001A04C();
      v36 = v35;
      v33(v4, v2);
      *(v26 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:v34 + v36 - v27];
      *(v26 + 56) = sub_10001A5AC(1.0);
      isa = sub_10001A46C().super.isa;

      v38 = v23;
      v18 = &stru_100029000;
      [v38 setLocations:isa];
    }

    else
    {
    }
  }

  v39 = sub_10000DE64(&OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer, sub_10000DEC8);
  if (v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect + 32] == 1)
  {
    [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] bounds];
  }

  else
  {
    [v1 bounds];
  }

  [v39 v18[121].type];

  v40 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer];
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = v41;
    sub_1000027DC(&unk_10002B860);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10001B9C0;
    sub_100009C14(0, &unk_10002B790);
    v44 = v40;
    *(v43 + 32) = sub_10001A5AC(0.0);
    v45 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16];
    v49 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
    v50 = v45;
    v51 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 32];
    *(v43 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:sub_10000A8D4()];
    *(v43 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:sub_10000A8D4() + *(&v51 + 1)];
    *(v43 + 56) = sub_10001A5AC(1.0);
    v46 = sub_10001A46C().super.isa;

    [v42 setLocations:v46];
  }
}

id sub_10000D564()
{
  v1 = v0;
  v2 = sub_10001A20C();
  v3 = sub_10001A50C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting avatar record render view image, updating filters, and triggering new layout pass", v4, 2u);
  }

  return [v1 setNeedsLayout];
}

void *sub_10000D620()
{
  if (v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect + 32])
  {
    result = *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage];
    if (!result)
    {
      return result;
    }

    [result size];
    v3 = v2;
    v5 = v4;
    v6 = COERCE_DOUBLE(sub_10000B81C());
    if ((v8 & 1) == 0)
    {
      return (v7 / v6 + *&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 24] < v5 / v3);
    }
  }

  else
  {
    MaxY = CGRectGetMaxY(*&v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect]);
    [v0 bounds];
    if (CGRectGetMaxY(v10) > MaxY)
    {
      return v0[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_posterIsTall];
    }
  }

  return 0;
}

id sub_10000D6EC()
{
  v1 = v0;
  sub_100009A88(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageViewDelegate, v10, &qword_10002B2D8);
  v2 = type metadata accessor for AvatarPosterImageView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_innerImageView] = 0;
  sub_100009A88(v10, &v3[OBJC_IVAR____TtC21AvatarPosterExtension21AvatarPosterImageView_delegate], &qword_10002B2D8);
  v9.receiver = v3;
  v9.super_class = v2;
  v4 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000323C(0, 0);
  sub_100009B60(v10, &qword_10002B2D8);
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  if (*(v1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect + 32))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setContentMode:v7];
  [v5 setClipsToBounds:0];

  return v5;
}

id sub_10000D870(_BYTE *a1)
{
  v51 = a1;
  v2 = sub_100019F7C();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(CAGradientLayer) init];
  v47 = v5;
  [a1 bounds];
  [v5 setFrame:?];
  v50 = sub_1000027DC(&unk_10002BB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10001C060;
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = 0.0;
  v10 = [v8 colorWithAlphaComponent:0.0];

  v11 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v13 = v12;
  *(v6 + 56) = v12;
  *(v6 + 32) = v11;
  v14 = [v7 whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.0];

  v16 = [v15 CGColor];
  *(v6 + 88) = v13;
  *(v6 + 64) = v16;
  v17 = [v7 whiteColor];
  v18 = [v17 CGColor];

  *(v6 + 120) = v13;
  *(v6 + 96) = v18;
  v19 = [v7 whiteColor];
  v20 = [v19 CGColor];

  *(v6 + 152) = v13;
  *(v6 + 128) = v20;
  isa = sub_10001A46C().super.isa;

  v22 = v47;
  [v47 setColors:isa];

  sub_1000027DC(&unk_10002B860);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001B9C0;
  sub_100009C14(0, &unk_10002B790);
  *(v23 + 32) = sub_10001A5AC(0.0);
  v24 = *&v51[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants];
  v25 = v51[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16];
  v46[1] = v25;
  v26 = *&v51[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 32];
  sub_10001A53C();
  sub_10001A04C();
  v28 = v27;
  v29 = v49;
  v30 = *(v48 + 8);
  v30(v4, v49);
  if (v24 == 2)
  {
    v9 = 0.12;
  }

  if ((v24 == 2) | v25 & 1)
  {
    v31 = 0.12;
  }

  else
  {
    v31 = 0.216;
  }

  *(v23 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v31 + v28 - v9 - v26];
  sub_10001A53C();
  sub_10001A04C();
  v33 = v32;
  v30(v4, v29);
  *(v23 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:v31 + v33 - v9];
  *(v23 + 56) = sub_10001A5AC(1.0);
  v34 = sub_10001A46C().super.isa;

  v35 = v22;
  [v22 setLocations:v34];

  v36 = [objc_allocWithZone(CABackdropLayer) init];
  v37 = v51;
  [v51 bounds];
  [v36 setBackdropRect:?];
  v38 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  [v37 bounds];
  v39 = sub_10001A55C().super.isa;
  [v38 setValue:v39 forKey:kCAFilterInputBounds];

  v40 = sub_10001A4EC().super.super.isa;
  [v38 setValue:v40 forKey:kCAFilterInputRadius];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10001C070;
  *(v41 + 56) = sub_100009C14(0, &unk_10002B870);
  *(v41 + 32) = v38;
  v42 = v36;
  v43 = v38;
  v44 = sub_10001A46C().super.isa;

  [v42 setFilters:v44];

  [v42 setMask:v35];
  return v42;
}

id sub_10000DE64(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10000DEC8(uint64_t a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = sub_10000B998();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  sub_1000027DC(&unk_10002BB40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10001C060;
  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  v15 = [v14 CGColor];

  type metadata accessor for CGColor(0);
  v17 = v16;
  *(v12 + 56) = v16;
  *(v12 + 32) = v15;
  v18 = [v13 whiteColor];
  v19 = [v18 CGColor];

  *(v12 + 88) = v17;
  *(v12 + 64) = v19;
  v20 = [v13 whiteColor];
  v21 = [v20 colorWithAlphaComponent:0.0];

  v22 = [v21 CGColor];
  *(v12 + 120) = v17;
  *(v12 + 96) = v22;
  v23 = [v13 whiteColor];
  v24 = [v23 colorWithAlphaComponent:0.0];

  v25 = [v24 CGColor];
  *(v12 + 152) = v17;
  *(v12 + 128) = v25;
  isa = sub_10001A46C().super.isa;

  [v2 setColors:isa];

  sub_1000027DC(&unk_10002B860);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10001B9C0;
  sub_100009C14(0, &unk_10002B790);
  *(v27 + 32) = sub_10001A5AC(0.0);
  v30 = *(a1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 32);
  *(v27 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:{sub_10000A8D4(), *(a1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants), *(a1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 8), *(a1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16), *(a1 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 24), v30}];
  *(v27 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:sub_10000A8D4() + *(&v30 + 1)];
  *(v27 + 56) = sub_10001A5AC(1.0);
  v28 = sub_10001A46C().super.isa;

  [v2 setLocations:v28];

  return v2;
}

void sub_10000E280()
{
  sub_100007AE0();
  if (v0 <= 0x3F)
  {
    sub_10001A22C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_10000E3B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000E3CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10000E420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000E480()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E4B8()
{
  v1 = sub_10001A06C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000E57C()
{
  sub_10001A06C();

  sub_10000AA2C();
}

uint64_t sub_10000E5E0()
{
  v1 = sub_10001A06C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E6AC(uint64_t a1)
{
  v4 = *(sub_10001A06C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009994;

  return sub_10000AEE0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000E7A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_10000EC1C();
  }

  else
  {
    v2 = sub_10000E8A4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_orientationConstraints;
  sub_100009C14(0, &qword_10002B020);

  isa = sub_10001A46C().super.isa;

  [v4 deactivateConstraints:isa];

  v7 = sub_10001A46C().super.isa;
  [v4 activateConstraints:v7];

  *(v1 + v5) = v3;
}

uint64_t sub_10000E8A4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10001A20C();
  v11 = sub_10001A50C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "apply landscape constraints with salient rect", v12, 2u);
  }

  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  if (MinY == 0.0)
  {
    v35 = *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 32];
    v14 = [objc_allocWithZone(NSNumber) initWithDouble:{sub_10000A8D4(), *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants], *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 8], *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16], *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 24], v35}];
    [v14 floatValue];
    v16 = v15;

    v17 = [objc_allocWithZone(NSNumber) initWithDouble:sub_10000A8D4() + *(&v35 + 1)];
    [v17 floatValue];
    v19 = v18;

    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    v20 = CGRectGetHeight(v37) * vabds_f32(v16, v19);
  }

  else
  {
    v20 = MinY;
  }

  sub_1000027DC(&unk_10002B860);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10001B9C0;
  v22 = sub_10000B998();
  v23 = [v22 topAnchor];

  v24 = [v5 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:v20];

  *(v21 + 32) = v25;
  v26 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
  v27 = [*&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] leadingAnchor];
  v28 = [v5 leadingAnchor];
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v29 = [v27 constraintEqualToAnchor:v28 constant:CGRectGetMinX(v38)];

  *(v21 + 40) = v29;
  v30 = [*&v5[v26] heightAnchor];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v31 = [v30 constraintEqualToConstant:CGRectGetHeight(v39)];

  *(v21 + 48) = v31;
  v32 = [*&v5[v26] widthAnchor];
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v33 = [v32 constraintEqualToConstant:CGRectGetWidth(v40)];

  *(v21 + 56) = v33;
  return v21;
}

uint64_t sub_10000EC1C()
{
  v1 = v0;
  v2 = sub_10001A20C();
  v3 = sub_10001A50C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No occlusion or salient rect, use default landscape constraints", v4, 2u);
  }

  sub_1000027DC(&unk_10002B860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B9C0;
  v6 = sub_10000B998();
  v7 = [v6 topAnchor];

  v8 = [v1 topAnchor];
  [v1 bounds];
  Height = CGRectGetHeight(v23);
  v10 = 0.216;
  if ((*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants] == 2) | v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16] & 1)
  {
    v10 = 0.12;
  }

  v11 = [v7 constraintEqualToAnchor:v8 constant:Height * v10];

  *(v5 + 32) = v11;
  v12 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
  v13 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v5 + 40) = v15;
  v16 = [*&v1[v12] centerXAnchor];
  v17 = [v1 leadingAnchor];
  [v1 bounds];
  v18 = [v16 constraintEqualToAnchor:v17 constant:CGRectGetWidth(v24) * 0.25];

  *(v5 + 48) = v18;
  v19 = [*&v1[v12] widthAnchor];
  v20 = [v1 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 multiplier:0.5];

  *(v5 + 56) = v21;
  return v5;
}

uint64_t sub_10000EF00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sub_1000027DC(&unk_10002B860);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001B9C0;
    v3 = sub_10000B998();
    v4 = [v3 topAnchor];

    v5 = [v1 topAnchor];
    [v1 bounds];
    Height = CGRectGetHeight(v42);
    v7 = 0.12;
    if (*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants] == 2)
    {
      v8 = 0.12;
    }

    else
    {
      v8 = 0.0;
    }

    if (!((*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants] == 2) | v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_constants + 16] & 1))
    {
      v7 = 0.216;
    }

    v9 = [v4 constraintEqualToAnchor:v5 constant:Height * v7];

    *(v2 + 32) = v9;
    v10 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
    v11 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] bottomAnchor];
    v12 = [v1 bottomAnchor];
    [v1 bounds];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-(CGRectGetHeight(v43) * v8)];

    *(v2 + 40) = v13;
    v14 = [*&v1[v10] centerXAnchor];
    v15 = [v1 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v2 + 48) = v16;
    v17 = [*&v1[v10] widthAnchor];
    v18 = [v1 widthAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v2 + 56) = v19;
  }

  else
  {
    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v23 = *a1;
    v22 = *(a1 + 8);
    sub_1000027DC(&unk_10002B860);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001B9C0;
    v24 = sub_10000B998();
    v25 = [v24 topAnchor];

    v26 = [v1 topAnchor];
    v44.origin.x = v23;
    v44.origin.y = v22;
    v44.size.width = v21;
    v44.size.height = v20;
    v27 = [v25 constraintEqualToAnchor:v26 constant:CGRectGetMinY(v44)];

    *(v2 + 32) = v27;
    v28 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView;
    v29 = [*&v1[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView] heightAnchor];
    v45.origin.x = v23;
    v45.origin.y = v22;
    v45.size.width = v21;
    v45.size.height = v20;
    v30 = [v29 constraintEqualToConstant:CGRectGetHeight(v45)];

    *(v2 + 40) = v30;
    v31 = [*&v1[v28] centerXAnchor];
    v32 = [v1 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v2 + 48) = v33;
    v34 = [*&v1[v28] widthAnchor];
    v46.origin.x = v23;
    v46.origin.y = v22;
    v46.size.width = v21;
    v46.size.height = v20;
    v35 = [v34 constraintEqualToConstant:CGRectGetWidth(v46)];

    *(v2 + 56) = v35;
  }

  v36 = objc_opt_self();
  v37 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_orientationConstraints;
  sub_100009C14(0, &qword_10002B020);

  isa = sub_10001A46C().super.isa;

  [v36 deactivateConstraints:isa];

  v39 = sub_10001A46C().super.isa;
  [v36 activateConstraints:v39];

  *&v1[v37] = v2;
}

uint64_t sub_10000F3E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F4D8;

  return v6(a1);
}

uint64_t sub_10000F4D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F5D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F5E4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F5E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F638()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA48;

  return sub_10000F3E0(a1, v4);
}

uint64_t sub_10000F728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009994;

  return sub_10000F3E0(a1, v4);
}

uint64_t sub_10000F7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027DC(&qword_10002B770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10000F850()
{
  v1 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_postponedRenderingConfiguration;
  v2 = sub_10001A06C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentOrientation;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 orientation];

  *(v0 + v3) = v5;
  v6 = (v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastBounds);
  *v6 = 0u;
  v6[1] = 0u;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_saliencyRectDebugBorder) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImageViewDebugBorder) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_posterIsTall) = 0;
  v7 = v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentSaliencyRect;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_lastPoseData) = xmmword_10001C040;
  sub_10001A21C();
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_imageGenerationTask) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_currentAvatarRecord) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___avatarImageView) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyBlurLayer) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView____lazy_storage___bodyMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_orientationConstraints) = &_swiftEmptyArrayStorage;
  sub_10001A6FC();
  __break(1u);
}

uint64_t sub_10000FA4C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000FA90()
{
  v1 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___avatarStore;
  v2 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___avatarStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___avatarStore);
  }

  else
  {
    v4 = [objc_allocWithZone(AVTAvatarStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000FB04()
{
  v1 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___defaultAvatar;
  v2 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___defaultAvatar);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10000FB74();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    swift_unknownObjectRetain();
    sub_1000190CC(v4);
  }

  sub_1000190DC(v2);
  return v3;
}

uint64_t sub_10000FB74()
{
  v0 = sub_10000FA90();
  v1 = [objc_opt_self() requestForStorePrimaryAvatar];
  v16 = 0;
  v2 = [v0 avatarsForFetchRequest:v1 error:&v16];

  v3 = v16;
  if (!v2)
  {
    v7 = v16;
    sub_10001A11C();

    swift_willThrow();
    swift_errorRetain();
    v8 = sub_10001A20C();
    v9 = sub_10001A51C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_10001A78C();
      v14 = sub_1000174DC(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not load primary avatar. %s", v10, 0xCu);
      sub_10000351C(v11);
    }

    else
    {
    }

    return 0;
  }

  sub_1000027DC(&qword_10002BA90);
  v4 = sub_10001A47C();
  v5 = v3;

  if (v4 >> 62)
  {
    if (sub_10001A70C())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_10001A65C();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v6 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  return v6;
}

void sub_10000FE1C(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_10001A20C();
  v7 = sub_10001A50C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_10001A3EC();
    v13 = v12;

    v14 = sub_1000174DC(v11, v13, v24);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing editor with poster environment: %s", v8, 0xCu);
    sub_10000351C(v9);
  }

  v15 = *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor) = a1;

  v16 = a1;
  sub_100010098(a2);
  v17 = *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView);
  if (v17)
  {
    v18 = v17;
    v19 = [a2 deviceOrientation];
    *&v18[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v19;
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    v24[4] = sub_1000199CC;
    v24[5] = v21;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_10000FA4C;
    v24[3] = &unk_100025790;
    v22 = _Block_copy(v24);
    v23 = v18;

    [v20 animateWithDuration:v22 animations:0.2];
    _Block_release(v22);
  }
}

void sub_100010098(void *a1)
{
  v84 = sub_1000027DC(&qword_10002B770);
  v3 = __chkstk_darwin(v84);
  v86 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v87 = &v82 - v6;
  __chkstk_darwin(v5);
  v8 = &v82 - v7;
  v85 = sub_100019F6C();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_logger;
  swift_unknownObjectRetain();
  v88 = v1;
  v89 = v12;
  v13 = sub_10001A20C();
  v14 = sub_10001A50C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v83 = v8;
    v17 = v16;
    v92[0] = v16;
    *v15 = 136315138;
    v18 = [a1 description];
    v19 = sub_10001A3EC();
    v21 = v20;

    v22 = sub_1000174DC(v19, v21, v92);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Loading poster configuration from poster environment: %s", v15, 0xCu);
    sub_10000351C(v17);
    v8 = v83;
  }

  v23 = [a1 sourceContents];
  v92[0] = 0;
  v24 = [v23 loadUserInfoWithError:v92];
  swift_unknownObjectRelease();
  v25 = v92[0];
  v26 = v88;
  if (v24)
  {
    v27 = sub_10001A39C();
    v28 = v25;

    v29 = v85;
    (*(v9 + 104))(v11, enum case for AvatarPosterConfiguration.UserInfoKey.dataRepresentation(_:), v85);
    v30 = sub_100019F5C();
    v32 = v31;
    (*(v9 + 8))(v11, v29);
    v90 = v30;
    v91 = v32;
    sub_10001A62C();
    if (*(v27 + 16) && (v33 = sub_100016CC8(v92), (v34 & 1) != 0))
    {
      sub_100003EAC(*(v27 + 56) + 32 * v33, v93);
      sub_100009BC0(v92);

      if (swift_dynamicCast())
      {
        v35 = v90;
        v36 = v91;
        sub_10001A0CC();
        swift_allocObject();
        v37 = sub_10001A0BC();
        v38 = sub_10001A06C();
        sub_100019964(&unk_10002BBA0, &type metadata accessor for AvatarPosterConfiguration);
        sub_10001A0AC();
        v86 = v36;
        (*(*(v38 - 8) + 56))(v8, 0, 1, v38);
        v67 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
        swift_beginAccess();
        v68 = v8;
        v69 = v87;
        sub_100009A88(v26 + v67, v87, &qword_10002B770);
        swift_beginAccess();
        sub_100009AF0(v68, v26 + v67);
        swift_endAccess();
        sub_100012E84(v69);
        sub_100009B60(v69, &qword_10002B770);
        sub_100009B60(v68, &qword_10002B770);
        v70 = v26;
        v71 = sub_10001A20C();
        v72 = sub_10001A50C();

        if (os_log_type_enabled(v71, v72))
        {
          v74 = swift_slowAlloc();
          v83 = v37;
          v75 = v74;
          v76 = swift_slowAlloc();
          v93[0] = v76;
          *v75 = 136315138;
          v85 = v35;
          sub_100009A88(v26 + v67, v69, &qword_10002B770);
          v77 = sub_10001A5EC();
          v79 = v78;
          sub_100009B60(v69, &qword_10002B770);
          v80 = sub_1000174DC(v77, v79, v93);

          *(v75 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v71, v72, "Did load poster configuration: %s", v75, 0xCu);
          sub_10000351C(v76);

          v81 = v85;
        }

        else
        {

          v81 = v35;
        }

        sub_100003E48(v81, v86);

        return;
      }
    }

    else
    {

      sub_100009BC0(v92);
    }

    sub_10000405C();
    v39 = v87;
    sub_100019FFC();
    v40 = sub_10001A06C();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    v41 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
    swift_beginAccess();
    v42 = v86;
    sub_100009A88(v26 + v41, v86, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v39, v26 + v41);
    swift_endAccess();
    sub_100012E84(v42);
    sub_100009B60(v42, &qword_10002B770);
    sub_100009B60(v39, &qword_10002B770);
    v43 = v26;
    v44 = sub_10001A20C();
    v45 = sub_10001A50C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v93[0] = v47;
      *v46 = 136315138;
      sub_100009A88(v26 + v41, v39, &qword_10002B770);
      v48 = sub_10001A5EC();
      v50 = v49;
      sub_100009B60(v39, &qword_10002B770);
      v51 = sub_1000174DC(v48, v50, v93);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Creating new poster configuration: %s", v46, 0xCu);
      sub_10000351C(v47);
    }

    v52 = sub_10001A20C();
    v53 = sub_10001A50C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Presenting avatar picker for new poster configuration", v54, 2u);
    }

    sub_100013900();
  }

  else
  {
    v55 = v92[0];
    sub_10001A11C();

    swift_willThrow();
    swift_errorRetain();
    v56 = sub_10001A20C();
    v57 = sub_10001A51C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v92[0] = v59;
      *v58 = 136315138;
      swift_getErrorValue();
      v60 = sub_10001A78C();
      v62 = sub_1000174DC(v60, v61, v92);

      *(v58 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v56, v57, "Error loading user info from environment: %s", v58, 0xCu);
      sub_10000351C(v59);
    }

    v63 = v87;
    sub_10000405C();
    sub_100019FFC();
    v64 = sub_10001A06C();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v65 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
    swift_beginAccess();
    v66 = v86;
    sub_100009A88(v26 + v65, v86, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v63, v26 + v65);
    swift_endAccess();
    sub_100012E84(v66);

    sub_100009B60(v66, &qword_10002B770);
    sub_100009B60(v63, &qword_10002B770);
  }
}

uint64_t sub_1000110C8(uint64_t a1)
{
  v2[57] = a1;
  v2[58] = v1;
  v3 = sub_100019F6C();
  v2[59] = v3;
  v2[60] = *(v3 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v4 = sub_10001A06C();
  v2[63] = v4;
  v2[64] = *(v4 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = sub_1000027DC(&qword_10002B770);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  sub_10001A4AC();
  v2[71] = sub_10001A49C();
  v6 = sub_10001A48C();

  return _swift_task_switch(sub_1000112B8, v6, v5);
}

uint64_t sub_1000112B8()
{
  v96 = v0;
  v1 = sub_10001A20C();
  v2 = sub_10001A50C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finalizing editing session", v3, 2u);
  }

  v4 = sub_100018170();
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;

  v6 = *&v5[OBJC_IVAR____TtC21AvatarPosterExtension22AvatarRecordRenderView_avatarImage];
  if (v6)
  {
    v7 = v6;

    v8 = [v7 HEICRepresentation];
    if (v8)
    {
      v9 = sub_10001A13C();
      v91 = v10;

      v11 = sub_10001A20C();
      v12 = sub_10001A50C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Setting configuration image data from avatar record render view", v13, 2u);
      }

      v14 = *(v0 + 560);
      v15 = *(v0 + 504);
      v16 = *(v0 + 512);
      v17 = *(v0 + 464);

      v18 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
      swift_beginAccess();
      sub_100009A88(v17 + v18, v14, &qword_10002B770);
      v19 = (*(v16 + 48))(v14, 1, v15);
      v20 = *(v0 + 560);
      v21 = *(v0 + 552);
      if (v19)
      {
        v22 = *(v0 + 544);
        sub_100009A88(*(v0 + 560), *(v0 + 552), &qword_10002B770);
        sub_100009A88(v17 + v18, v22, &qword_10002B770);
        swift_beginAccess();
        sub_100009AF0(v21, v17 + v18);
        swift_endAccess();
        sub_100012E84(v22);
        sub_100003E48(v9, v91);
        sub_100009B60(v22, &qword_10002B770);
      }

      else
      {
        sub_10000F5E4(v9, v91);
        sub_100019FEC();
        sub_100009A88(v17 + v18, v21, &qword_10002B770);
        swift_beginAccess();
        sub_100009AF0(v20, v17 + v18);
        swift_endAccess();
        sub_100012E84(v21);
        sub_100003E48(v9, v91);
      }

      sub_100009B60(v21, &qword_10002B770);
      sub_100009B60(v20, &qword_10002B770);
    }
  }

  else
  {
  }

  v23 = *(v0 + 536);
  v24 = *(v0 + 504);
  v25 = *(v0 + 512);
  v26 = *(v0 + 464);
  v27 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(v26 + v27, v23, &qword_10002B770);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_100009B60(*(v0 + 536), &qword_10002B770);
    v28 = sub_10001A20C();
    v29 = sub_10001A51C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Configuration is unexpectedly nil, failed to finalize editing", v30, 2u);
    }
  }

  else
  {
    (*(*(v0 + 512) + 32))(*(v0 + 520), *(v0 + 536), *(v0 + 504));
    sub_10001A10C();
    swift_allocObject();
    sub_10001A0FC();
    sub_10001A0DC();
    *(v0 + 432) = sub_10001A02C();
    sub_1000027DC(&qword_10002BB50);
    sub_1000197C8();
    v90 = sub_10001A0EC();
    v92 = v31;

    sub_100019964(&qword_10002BB68, &type metadata accessor for AvatarPosterConfiguration);
    v32 = sub_10001A0EC();
    v47 = *(v0 + 496);
    v84 = *(v0 + 488);
    v49 = *(v0 + 472);
    v48 = *(v0 + 480);
    v85 = *(v0 + 456);
    v88 = v32;
    v89 = v33;
    v86 = [objc_msgSend(v85 "environment")];
    swift_unknownObjectRelease();
    sub_1000027DC(&unk_10002BB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001C1E0;
    v51 = v48;
    v83 = *(v48 + 104);
    v83(v47, enum case for AvatarPosterConfiguration.UserInfoKey.backgroundColorDescription(_:), v49);
    v52 = v47;
    v53 = sub_100019F5C();
    v55 = v54;
    v56 = *(v51 + 8);
    v56(v52, v49);
    v57 = v56;
    *(v0 + 384) = v53;
    *(v0 + 392) = v55;
    sub_10001A62C();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v90;
    *(inited + 80) = v92;
    v83(v84, enum case for AvatarPosterConfiguration.UserInfoKey.dataRepresentation(_:), v49);
    sub_10000F5E4(v90, v92);
    v58 = sub_100019F5C();
    v60 = v59;
    v57(v84, v49);
    *(v0 + 400) = v58;
    *(v0 + 408) = v60;
    sub_10001A62C();
    *(inited + 168) = &type metadata for Data;
    *(inited + 144) = v88;
    *(inited + 152) = v89;
    strcpy((v0 + 416), "boundingShape");
    *(v0 + 430) = -4864;
    sub_10000F5E4(v88, v89);
    sub_10001A62C();
    v61 = sub_100009C14(0, &unk_10002B790);
    v62 = [objc_msgSend(v85 "environment")];
    swift_unknownObjectRelease();
    v63.super.super.isa = sub_10001A5BC(v62).super.super.isa;
    *(inited + 240) = v61;
    *(inited + 216) = v63;
    sub_1000189B0(inited);
    swift_setDeallocating();
    sub_1000027DC(&qword_10002BB80);
    swift_arrayDestroy();
    isa = sub_10001A38C().super.isa;

    *(v0 + 448) = 0;
    LODWORD(v62) = [v86 storeUserInfo:isa error:v0 + 448];

    v65 = *(v0 + 448);
    if (v62)
    {
      v66 = *(v0 + 464);
      v67 = v65;
      v68 = v66;
      v69 = sub_10001A20C();
      v70 = sub_10001A50C();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = *(v0 + 552);
        v87 = *(v0 + 512);
        v93 = *(v0 + 504);
        v94 = *(v0 + 520);
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v95[0] = v73;
        *v72 = 136315138;
        sub_100009A88(v26 + v27, v71, &qword_10002B770);
        v74 = v69;
        v75 = sub_10001A5EC();
        v77 = v76;
        sub_100009B60(v71, &qword_10002B770);
        v78 = sub_1000174DC(v75, v77, v95);

        *(v72 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v74, v70, "Saving poster configuration: %s", v72, 0xCu);
        sub_10000351C(v73);

        sub_100003E48(v88, v89);
        sub_100003E48(v90, v92);
        v87[1](v94, v93);
      }

      else
      {
        v80 = *(v0 + 520);
        v81 = *(v0 + 504);
        v82 = *(v0 + 512);
        sub_100003E48(v90, v92);
        sub_100003E48(v88, v89);

        (*(v82 + 8))(v80, v81);
      }
    }

    else
    {
      v79 = v65;
      sub_10001A11C();

      swift_willThrow();
      sub_100003E48(v90, v92);
      sub_100003E48(v88, v89);

      swift_errorRetain();
      v34 = sub_10001A20C();
      v35 = sub_10001A51C();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 520);
      v39 = *(v0 + 504);
      v38 = *(v0 + 512);
      if (v36)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v95[0] = v41;
        *v40 = 136315138;
        swift_getErrorValue();
        v42 = sub_10001A78C();
        v44 = sub_1000174DC(v42, v43, v95);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v34, v35, "Error finalizing editing: %s", v40, 0xCu);
        sub_10000351C(v41);

        (*(v38 + 8))(v37, v39);
      }

      else
      {

        (*(v38 + 8))(v37, v39);
      }
    }
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1000120A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10001A4AC();
  v3[5] = sub_10001A49C();
  v5 = sub_10001A48C();

  return _swift_task_switch(sub_100012144, v5, v4);
}

uint64_t sub_100012144()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100012208;
  v7 = v0[2];

  return sub_1000110C8(v7);
}

uint64_t sub_100012208()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000123C0(void *a1)
{
  v2 = sub_10001A15C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001A3CC();
  __chkstk_darwin(v3 - 8);
  sub_1000027DC(&unk_10002B860);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001C1F0;
  sub_10001A3BC();
  sub_10001A14C();
  sub_10001A3FC();
  sub_100009C14(0, &qword_10002BAA8);

  v5 = sub_10001A3DC();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  sub_10001A3DC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = sub_10001A5DC();
  v8 = sub_10001A3DC();

  [v7 setAccessibilityLabel:v8];

  *(v4 + 32) = v7;
  *(v4 + 40) = [a1 depthEffectMenu];
  return v4;
}

id sub_100012710()
{
  v0 = sub_10001A15C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10001A3CC();
  __chkstk_darwin(v1 - 8);
  if (AVTAvatarSwiftUIEnabled())
  {
    sub_10001A3BC();
    sub_10001A14C();
    sub_10001A3FC();
    sub_100009C14(0, &qword_10002BAA8);

    sub_100013E94();
    sub_10001A3DC();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_10001A5DC();
    v6 = sub_10001A3DC();

    [v5 setAccessibilityLabel:v6];
  }

  else
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001A3BC();
    sub_10001A14C();
    v8 = sub_10001A3FC();
    v10 = v9;
    sub_100009C14(0, &qword_10002BAA8);

    sub_100013E94();
    sub_10001A3DC();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v7;
    v12[4] = v8;
    v12[5] = v10;

    v5 = sub_10001A5DC();
    v6 = sub_10001A3DC();

    [v5 setAccessibilityLabel:v6];
  }

  return v5;
}

id sub_100012C5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  v3 = sub_10001A06C();
  v4 = *(*(v3 - 8) + 48);
  if (v4(v0 + v2, 1, v3))
  {
    goto LABEL_2;
  }

  v5 = sub_10001A00C();
  v7 = v6;
  swift_endAccess();
  if (v7 >> 60 != 15)
  {
    sub_100003E34(v5, v7);
    swift_beginAccess();
    if (v4(v1 + v2, 1, v3))
    {
LABEL_2:
      swift_endAccess();
      goto LABEL_4;
    }

    v9 = sub_100019FBC();
    v11 = v10;
    swift_endAccess();
    if (v11 >> 60 != 15)
    {
      return sub_100003E34(v9, v11);
    }
  }

LABEL_4:
  result = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  if (result)
  {
    return [result requestDismissalWithAction:0];
  }

  return result;
}

id sub_100012E84(uint64_t a1)
{
  v3 = sub_100019F9C();
  v84 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v79 - v6;
  v7 = sub_1000027DC(&qword_10002B770);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = sub_10001A06C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  sub_100009A88(a1, v12, &qword_10002B770);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    return sub_100009B60(v12, &qword_10002B770);
  }

  v81 = v3;
  v21 = v1;
  v22 = *(v14 + 32);
  v22(v18, v12, v13);
  v23 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(v21 + v23, v10, &qword_10002B770);
  if (v19(v10, 1, v13) == 1)
  {
    (*(v14 + 8))(v18, v13);
    return sub_100009B60(v10, &qword_10002B770);
  }

  v24 = v14;
  v22(v85, v10, v13);
  v25 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_logger;
  v26 = sub_10001A20C();
  v27 = sub_10001A50C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Configuration changed, updating views", v28, 2u);
  }

  v29 = v18;
  v30 = sub_10001A02C();
  v31 = v85;
  v32 = sub_10001A02C();
  v33 = sub_100016B8C(v30, v32);

  if (v33)
  {
LABEL_17:
    v79 = v25;
    v80 = v13;
    v46 = v82;
    sub_100019FAC();
    v47 = v83;
    v48 = v84;
    v49 = v81;
    (*(v84 + 104))(v83, enum case for AvatarPosterConfiguration.RenderingMode.none(_:), v81);
    sub_100019964(&unk_10002BA78, &type metadata accessor for AvatarPosterConfiguration.RenderingMode);
    v50 = sub_10001A3AC();
    v51 = *(v48 + 8);
    v51(v47, v49);
    v51(v46, v49);
    if (v50)
    {
      v52 = sub_10001A20C();
      v53 = sub_10001A50C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "No avatar currently selected, displaying avatar picker", v54, 2u);
      }

      sub_100013900();
      goto LABEL_47;
    }

    v55 = sub_10001A00C();
    v57 = v21;
    if (v56 >> 60 != 15)
    {
      sub_100003E34(v55, v56);
      v31 = sub_10001A00C();
      v59 = v63;
      v65 = sub_10001A00C();
      v66 = v64;
      if (v59 >> 60 == 15)
      {
        if (v64 >> 60 != 15)
        {
          goto LABEL_42;
        }

        sub_100003E34(v31, v59);
LABEL_36:
        v31 = sub_100019FBC();
        v59 = v69;
        v65 = sub_100019FBC();
        v66 = v70;
        if (v59 >> 60 == 15)
        {
          if (v70 >> 60 == 15)
          {
LABEL_38:
            sub_100003E34(v31, v59);
            v31 = v85;
LABEL_47:
            v76 = *(v24 + 8);
            v77 = v80;
            v76(v31, v80);
            return (v76)(v29, v77);
          }
        }

        else if (v70 >> 60 != 15)
        {
          sub_10000F5D0(v31, v59);
          sub_10000F5D0(v65, v66);
          v78 = sub_100018008(v31, v59, v65, v66);
          sub_100003E34(v65, v66);
          sub_100003E34(v31, v59);
          sub_100003E34(v65, v66);
          sub_100003E34(v31, v59);
          v31 = v85;
          if (v78)
          {
            goto LABEL_47;
          }

LABEL_43:
          v72 = sub_10001A20C();
          v73 = sub_10001A50C();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v72, v73, "Avatar record data changed, rendering configuration in record render view", v74, 2u);
          }

          result = sub_100018170();
          if (result)
          {
LABEL_46:
            v75 = result;
            sub_100009FCC(v31, 0);

            goto LABEL_47;
          }

          goto LABEL_51;
        }

LABEL_42:
        sub_100003E34(v31, v59);
        sub_100003E34(v65, v66);
        v31 = v85;
        goto LABEL_43;
      }

LABEL_34:
      if (v66 >> 60 == 15)
      {
        goto LABEL_42;
      }

      sub_10000F5D0(v31, v59);
      sub_10000F5D0(v65, v66);
      v68 = sub_100018008(v31, v59, v65, v66);
      sub_100003E34(v65, v66);
      sub_100003E34(v31, v59);
      sub_100003E34(v65, v66);
      sub_100003E34(v31, v59);
      v31 = v85;
      if ((v68 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    v31 = sub_100019FDC();
    v59 = v58;
    v61 = sub_100019FDC();
    v62 = v60;
    if (v59 >> 60 == 15)
    {
      if (v60 >> 60 == 15)
      {
        goto LABEL_38;
      }
    }

    else if (v60 >> 60 != 15)
    {
      sub_10000F5D0(v31, v59);
      sub_10000F5D0(v61, v62);
      v71 = sub_100018008(v31, v59, v61, v62);
      sub_100003E34(v61, v62);
      sub_100003E34(v31, v59);
      sub_100003E34(v61, v62);
      sub_100003E34(v31, v59);
      v31 = v85;
      if (v71)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    sub_100003E34(v31, v59);
    sub_100003E34(v61, v62);
    v31 = v85;
LABEL_30:
    v67 = sub_10001A20C();
    v65 = sub_10001A50C();
    if (os_log_type_enabled(v67, v65))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v67, v65, "Avatar image data changed, rendering configuration in record render view", v59, 2u);
    }

    v66 = v57;
    result = sub_100018170();
    if (result)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_34;
  }

  v34 = sub_10001A20C();
  v35 = sub_10001A50C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Background color changed, updating background view", v36, 2u);
  }

  if (AVTAvatarSwiftUIEnabled())
  {
    v37 = *(v21 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_tonalGradientBackground);
    sub_100009C14(0, &qword_10002B780);
    isa = v37;
    v39._rawValue = sub_10001A02C();
    sub_10001A57C(v39);
    v40 = sub_10001A2BC();
    sub_1000029C4(v40);
LABEL_16:

    goto LABEL_17;
  }

  v41 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController;
  result = *(v21 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController);
  if (!result)
  {
    v42 = [objc_allocWithZone(UIViewController) init];
    v43 = *(v21 + v41);
    *(v21 + v41) = v42;

    result = *(v21 + v41);
    if (!result)
    {
      goto LABEL_52;
    }
  }

  result = [result view];
  if (result)
  {
    v44 = result;
    sub_100009C14(0, &qword_10002B780);
    v45._rawValue = sub_10001A02C();
    isa = sub_10001A57C(v45).super.isa;
    [v44 setBackgroundColor:isa];

    goto LABEL_16;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_100013900()
{
  v1 = v0;
  v2 = sub_10001A15C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001A3CC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10001A06C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  if (!(*(v5 + 48))(v1 + v8, 1, v4))
  {
    (*(v5 + 16))(v7, v1 + v8, v4);
    v10 = sub_100019F4C();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
LABEL_5:
      v11 = [objc_allocWithZone(AVTCombinedPickerViewController) initWithSelectedRecord:v10];
      [v11 setDelegate:v1];
      v12 = [objc_opt_self() effectWithStyle:8];
      v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

      v14 = v11;
      v15 = [v14 view];
      if (v15)
      {
        v16 = v15;
        [v15 insertSubview:v13 atIndex:0];

        v17 = [v14 view];
        if (v17)
        {
          v18 = v17;
          sub_1000024C4(v17);

          sub_10001A3BC();
          sub_10001A14C();
          sub_10001A3FC();
          v19 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];

          v20 = v19;
          v21 = sub_10001A3DC();

          [v20 setTitle:v21];

          v22 = [v20 sheetPresentationController];
          if (v22)
          {
            [v22 setDelegate:v1];
            sub_1000027DC(&unk_10002B860);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_10001C200;
            v24 = objc_opt_self();
            v25 = v22;
            *(v23 + 32) = [v24 largeDetent];
            sub_100009C14(0, &qword_10002BA88);
            isa = sub_10001A46C().super.isa;

            [v25 setDetents:isa];

            v27 = v25;
            PRSheetCornerRadius();
            sub_10001A54C();
          }

          v28 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
          if (v28)
          {
            v29 = v28;
            [v29 presentViewController:v20 animated:1 completion:0];
          }

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  v9 = sub_10000FB04();
  if (v9)
  {
    v10 = v9;
    goto LABEL_5;
  }

  v30 = sub_10001A20C();
  v31 = sub_10001A51C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Could not find an avatar to present.", v32, 2u);
  }
}

void sub_100013E40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100013900();
  }
}

uint64_t sub_100013E94()
{
  v1 = v0;
  v2 = sub_1000027DC(&qword_10002B770);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = sub_10001A06C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(v1 + v9, v4, &qword_10002B770);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009B60(v4, &qword_10002B770);
    v10 = sub_10001A20C();
    v11 = sub_10001A51C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Current configuration is unexpectedly nil, fall back on random background color", v12, 2u);
    }

    isa = sub_10000405C();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100009C14(0, &qword_10002B780);
    v14._rawValue = sub_10001A02C();
    isa = sub_10001A57C(v14).super.isa;
    (*(v6 + 8))(v8, v5);
  }

  v15 = objc_allocWithZone(UIGraphicsImageRenderer);
  v16 = isa;
  v17 = [v15 initWithSize:{35.0, 35.0}];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = xmmword_10001C210;
  *(v18 + 40) = 0x403D000000000000;
  *(v18 + 48) = v1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100019300;
  *(v19 + 24) = v18;
  aBlock[4] = sub_100019324;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015F00;
  aBlock[3] = &unk_100025628;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  v22 = [v17 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

void sub_100014280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10001A17C();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000027DC(&qword_10002B770);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - v11;
  v13 = sub_10001A06C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v53 = a4;
      v21 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
      swift_beginAccess();
      sub_100009A88(v18 + v21, v12, &qword_10002B770);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {

        sub_100009B60(v12, &qword_10002B770);
      }

      else
      {
        v49 = a5;
        v50 = v20;
        v52 = v14;
        (*(v14 + 32))(v16, v12, v13);
        sub_100009C14(0, &qword_10002B780);
        v51 = v16;
        v22._rawValue = sub_10001A02C();
        isa = sub_10001A57C(v22).super.isa;
        v47 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
        v23 = sub_10001A18C();
        v24 = *(v23 + 16);
        if (v24)
        {
          v45 = v18;
          v46 = v13;
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10001A69C();
          v25 = v7;
          v26 = v54 + 16;
          v54 = *(v54 + 16);
          v27 = (*(v26 + 64) + 32) & ~*(v26 + 64);
          v44[1] = v23;
          v28 = v23 + v27;
          v29 = *(v26 + 56);
          do
          {
            (v54)(v9, v28, v25);
            sub_10001A16C();
            (*(v26 - 8))(v9, v25);
            sub_10001A67C();
            sub_10001A6AC();
            sub_10001A6BC();
            sub_10001A68C();
            v28 += v29;
            --v24;
          }

          while (v24);

          v30 = aBlock[0];
          v13 = v46;
          v18 = v45;
        }

        else
        {

          v30 = &_swiftEmptyArrayStorage;
        }

        sub_10001484C(v30);

        v31 = objc_allocWithZone(PREditorColorPalette);
        v32 = sub_10001A46C().super.isa;

        v33 = [v31 initWithColors:v32 localizedName:0 showsColorWell:0];

        v34 = sub_10001A3DC();
        v35 = v47;
        [v47 setPrompt:v34];

        [v35 setColorPalette:v33];
        v36 = objc_allocWithZone(PRPosterColor);
        v37 = isa;
        v38 = [v36 initWithColor:isa];
        [v35 setSelectedColor:v38];

        v39 = swift_allocObject();
        v40 = v50;
        *(v39 + 16) = v18;
        *(v39 + 24) = v40;
        aBlock[4] = sub_1000192B8;
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100014CAC;
        aBlock[3] = &unk_1000255B0;
        v41 = _Block_copy(aBlock);
        v42 = v18;
        v43 = v40;

        [v43 presentColorPickerWithConfiguration:v35 changeHandler:v41];
        _Block_release(v41);

        (*(v52 + 8))(v51, v13);
      }
    }

    else
    {
    }
  }
}

char *sub_10001484C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10001A70C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100017A94(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10001A65C();
        sub_100009C14(0, &qword_10002B780);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100017A94((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100009C5C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100009C14(0, &qword_10002B780);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100017A94((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100009C5C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100014A48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000027DC(&qword_10002B770);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v17[-v10];
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  v14 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(a2 + v14, v13, &qword_10002B770);
  v15 = sub_10001A06C();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15))
  {
    sub_100009A88(v13, v11, &qword_10002B770);
    sub_100009A88(a2 + v14, v8, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v11, a2 + v14);
    swift_endAccess();
    sub_100012E84(v8);
    sub_100009B60(v8, &qword_10002B770);
  }

  else
  {
    sub_10001A58C();
    sub_10001A03C();
    sub_100009A88(a2 + v14, v11, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v13, a2 + v14);
    swift_endAccess();
    sub_100012E84(v11);
  }

  sub_100009B60(v11, &qword_10002B770);
  sub_100009B60(v13, &qword_10002B770);
  return [a3 updateActions];
}

void sub_100014CAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100014D14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v33 = v2;
      v32 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
      v3 = sub_10001A19C();
      v4 = v3;
      if (v3 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001A70C())
      {
        if (i)
        {
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10001A69C();
          if (i < 0)
          {
            __break(1u);
            return;
          }

          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              sub_10001A65C();
            }

            else
            {
              v7 = *(v4 + 8 * v6 + 32);
            }

            ++v6;
            sub_10001A2BC();
            sub_10001A67C();
            sub_10001A6AC();
            sub_10001A6BC();
            sub_10001A68C();
          }

          while (i != v6);

          v8 = aBlock[0];
        }

        else
        {

          v8 = &_swiftEmptyArrayStorage;
        }

        v31 = v1;
        v10 = *(v8 + 2);
        if (!v10)
        {
          break;
        }

        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100017AB4(0, v10, 0);
        v4 = 0;
        v1 = &_swiftEmptyArrayStorage;
        v34 = v8;
        v35 = v8 + 32;
        v36 = v10;
        while (v4 < *(v8 + 2))
        {
          v11 = *&v35[8 * v4];
          swift_retain_n();
          v12 = sub_100004574();

          v13 = *(v12 + 16);
          if (v13)
          {
            aBlock[6] = &_swiftEmptyArrayStorage;
            sub_10001A69C();
            sub_100009C14(0, &qword_10002B780);
            v14 = 32;
            do
            {

              sub_10001A59C();
              sub_10001A67C();
              sub_10001A6AC();
              sub_10001A6BC();
              sub_10001A68C();
              v14 += 8;
              --v13;
            }

            while (v13);

            v8 = v34;
          }

          else
          {
          }

          v15 = objc_allocWithZone(PRPosterContentGradientStyle);
          sub_100009C14(0, &qword_10002B780);
          isa = sub_10001A46C().super.isa;

          v17 = [v15 initWithColors:isa];

          aBlock[0] = v1;
          v19 = v1[2];
          v18 = v1[3];
          if (v19 >= v18 >> 1)
          {
            sub_100017AB4((v18 > 1), v19 + 1, 1);
            v1 = aBlock[0];
          }

          ++v4;
          v1[2] = v19 + 1;
          v20 = &v1[2 * v19];
          v20[4] = v11;
          v20[5] = v17;
          if (v4 == v36)
          {

            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_36:
        ;
      }

      v1 = &_swiftEmptyArrayStorage;
LABEL_28:
      v21 = v1[2];
      v22 = &_swiftEmptyArrayStorage;
      if (v21)
      {
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10001A69C();
        v23 = (v1 + 5);
        do
        {
          v23 += 16;
          swift_unknownObjectRetain();
          sub_10001A67C();
          sub_10001A6AC();
          sub_10001A6BC();
          sub_10001A68C();
          --v21;
        }

        while (v21);
        v22 = aBlock[0];
      }

      sub_1000152B0(v22);
      v24 = objc_allocWithZone(PREditorContentStylePalette);
      sub_1000027DC(&qword_10002BB10);
      v25 = sub_10001A46C().super.isa;

      v26 = [v24 initWithContentStyles:v25 localizedName:0];

      v9 = v32;
      [v32 setStylePalette:v26];

      [v32 setColorWellDisplayMode:0];
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v27;
      v29[3] = v28;
      v29[4] = v1;
      aBlock[4] = sub_10001920C;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000158F0;
      aBlock[3] = &unk_100025560;
      v30 = _Block_copy(aBlock);

      [v33 presentContentStylePickerWithConfiguration:v32 changeHandler:v30];
      _Block_release(v30);
    }

    else
    {
      v9 = v1;
    }
  }
}

void *sub_1000152B0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_10001A70C();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000173D0(v3, 0);
  sub_100017D18(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100015344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1000027DC(&qword_10002B770);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v52 = v10;
      v53 = v15;
      v54 = v13;
      v55 = v18;
      v56 = v17;
      v57 = a5;
      v19 = *(a5 + 2);
      if (v19)
      {
        v20 = v57 + 40;
        while (1)
        {

          v21 = [swift_unknownObjectRetain() identifier];
          v22 = sub_10001A3EC();
          v24 = v23;

          v25 = a1;
          v26 = [a1 identifier];
          v27 = sub_10001A3EC();
          v29 = v28;

          if (v22 == v27 && v24 == v29)
          {
            break;
          }

          v31 = sub_10001A74C();

          swift_unknownObjectRelease();
          if (v31)
          {
            goto LABEL_16;
          }

          v20 += 16;
          --v19;
          a1 = v25;
          if (!v19)
          {
            goto LABEL_11;
          }
        }

        swift_unknownObjectRelease();

LABEL_16:
        v44 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
        v45 = v56;
        swift_beginAccess();
        v46 = v53;
        sub_100009A88(v45 + v44, v53, &qword_10002B770);
        v47 = sub_10001A06C();
        if ((*(*(v47 - 8) + 48))(v46, 1, v47))
        {
          v48 = v54;
          sub_100009A88(v46, v54, &qword_10002B770);
          v49 = v52;
          sub_100009A88(v45 + v44, v52, &qword_10002B770);
          swift_beginAccess();
          sub_100009AF0(v48, v45 + v44);
          swift_endAccess();
          sub_100012E84(v49);
          sub_100009B60(v49, &qword_10002B770);
        }

        else
        {
          sub_100009C14(0, &qword_10002B780);

          v50 = sub_10001A59C();
          sub_10001A58C();

          sub_10001A03C();
          v48 = v54;
          sub_100009A88(v45 + v44, v54, &qword_10002B770);
          swift_beginAccess();
          sub_100009AF0(v46, v45 + v44);
          swift_endAccess();
          sub_100012E84(v48);
        }

        v51 = v55;
        sub_100009B60(v48, &qword_10002B770);
        sub_100009B60(v46, &qword_10002B770);
        [v51 updateActions];
      }

      else
      {
LABEL_11:
        swift_unknownObjectRetain();
        v32 = v57;

        v33 = a1;
        v34 = v56;
        v35 = sub_10001A20C();
        v36 = sub_10001A51C();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v59[0] = swift_slowAlloc();
          *v37 = 136315394;
          v58 = v33;
          swift_unknownObjectRetain();
          sub_1000027DC(&qword_10002BB10);
          v38 = sub_10001A41C();
          v40 = sub_1000174DC(v38, v39, v59);

          *(v37 + 4) = v40;
          *(v37 + 12) = 2080;
          v58 = v32;

          sub_1000027DC(&qword_10002BB18);
          v41 = sub_10001A41C();
          v43 = sub_1000174DC(v41, v42, v59);

          *(v37 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v35, v36, "Failed to find selectedStyle: %s in styles: %s", v37, 0x16u);
          swift_arrayDestroy();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000158F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

void sub_100015958(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_10001A1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = AVTAvatarSwiftUIEnabled();
  v15 = [a1 CGContext];
  v16 = [a2 CGColor];
  if (!v14)
  {
    CGContextSetFillColorWithColor(v15, v16);

    v20 = [a1 CGContext];
    CGContextSetLineWidth(v20, a3);

    v21 = [a1 CGContext];
    v22 = [objc_opt_self() systemBackgroundColor];
    v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v24 = [v22 resolvedColorWithTraitCollection:v23];

    v25 = [v24 CGColor];
    CGContextSetStrokeColorWithColor(v21, v25);

    v26 = [a1 CGContext];
    v48.origin.x = a3;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    CGContextAddEllipseInRect(v26, v48);

    v44 = [a1 CGContext];
    CGContextDrawPath(v44, kCGPathFillStroke);
    goto LABEL_13;
  }

  v17 = a2;
  sub_10001A2BC();
  v18 = sub_100004574();

  if (!*(v18 + 16))
  {

LABEL_7:
    v19 = [v17 CGColor];
    goto LABEL_8;
  }

  v19 = sub_10001A2AC();

  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1000027DC(&unk_10002B860);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10001C1F0;
  *(v27 + 32) = v16;
  *(v27 + 40) = v19;
  v28 = v16;
  v29 = v19;
  v30.super.isa = sub_10001A46C().super.isa;

  DeviceRGB = CGColorGetColorSpace(v28);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v44 = DeviceRGB;
  v32 = CGGradientCreateWithColors(DeviceRGB, v30.super.isa, dbl_100024E78);
  if (v32)
  {
    v33 = v32;
    v49.origin.x = a3;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    v34 = CGPathCreateWithEllipseInRect(v49, 0);
    CGContextAddPath(v15, v34);
    (*(v11 + 104))(v13, enum case for CGPathFillRule.winding(_:), v10);
    sub_10001A4FC();
    (*(v11 + 8))(v13, v10);
    v50.origin.x = a3;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    MidX = CGRectGetMidX(v50);
    v51.origin.x = a3;
    v51.origin.y = a3;
    v51.size.width = a4;
    v51.size.height = a5;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = a3;
    v52.origin.y = a3;
    v52.size.width = a4;
    v52.size.height = a5;
    v37 = CGRectGetMidX(v52);
    v53.origin.x = a3;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    v47.y = CGRectGetMaxY(v53);
    v46.x = MidX;
    v46.y = MinY;
    v47.x = v37;
    CGContextDrawLinearGradient(v15, v33, v46, v47, 0);
    CGContextSetLineWidth(v15, a3);
    v38 = [objc_opt_self() systemBackgroundColor];
    v39 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v40 = [v38 resolvedColorWithTraitCollection:v39];

    v41 = [v40 CGColor];
    CGContextSetStrokeColorWithColor(v15, v41);

    CGContextAddPath(v15, v34);
    CGContextDrawPath(v15, kCGPathStroke);

    return;
  }

LABEL_13:
  v42 = v44;
}

void sub_100015F00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_100015F4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor] = 0;
  *&v0[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController] = 0;
  v3 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_tonalGradientBackground;
  v4 = sub_10001A2DC();
  v5 = type metadata accessor for TonalGradientView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_color] = v4;
  v20 = 256;
  swift_retain_n();
  sub_1000027DC(&unk_10002BA60);
  sub_100019230(&qword_10002B740, &unk_10002BA60);
  v19 = sub_10001A2FC();
  v7 = objc_allocWithZone(sub_1000027DC(&qword_10002BA70));
  *&v6[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView] = sub_10001A27C();
  v18.receiver = v6;
  v18.super_class = v5;
  v8 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView;
  v10 = *&v8[OBJC_IVAR____TtC21AvatarPosterExtension17TonalGradientView_hostingView];
  v11 = v8;
  v12 = v10;
  sub_10001A29C();

  v13 = *&v8[v9];
  [v11 bounds];
  [v13 setFrame:?];

  [*&v8[v9] setAutoresizingMask:18];
  [v11 addSubview:*&v8[v9]];

  *&v1[v3] = v11;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___avatarStore] = 0;
  sub_10001A21C();
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor____lazy_storage___defaultAvatar] = 1;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView] = 0;
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__avatarRecordRenderView] = 0;
  v14 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  sub_10000405C();
  sub_100019FFC();
  v15 = sub_10001A06C();
  (*(*(v15 - 8) + 56))(&v1[v14], 0, 1, v15);
  *&v1[OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_constants] = xmmword_10001C210;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t type metadata accessor for AvatarPosterEditor()
{
  result = qword_10002BA10;
  if (!qword_10002BA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000163B8()
{
  sub_10001A22C();
  if (v0 <= 0x3F)
  {
    sub_100007AE0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_contentView];
  v5 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v5 = dbl_10001C3A0[a1 - 2];
  }

  CGAffineTransformMakeRotation(&v18, v5);
  [v4 setTransform:&v18];
  v6 = *&v1[v3];
  v7 = sub_100016770(a1);
  v8 = v6;
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  [v1 bounds];
  if (v7)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (v7)
  {
    v14 = v13;
  }

  [v8 setBounds:{0.0, 0.0, v15, v14}];

  v16 = *&v1[v3];
  [v1 bounds];
  MidX = CGRectGetMidX(v19);
  [v1 bounds];
  [v16 setCenter:{MidX, CGRectGetMidY(v20)}];
}

id sub_1000166F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceOrientationAdjustingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100016780(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000167CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_10001A07C();
    if (v10)
    {
      v11 = sub_10001A09C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_10001A08C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_10001A07C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_10001A09C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_10001A08C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000169FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100017F50(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100003E48(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1000167CC(v13, a3, a4, &v12);
  v10 = v4;
  sub_100003E48(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100016B8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100016D0C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100016CC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A60C(*(v2 + 40));

  return sub_100016D84(a1, v4);
}

unint64_t sub_100016D0C(uint64_t a1, uint64_t a2)
{
  sub_10001A79C();
  sub_10001A43C();
  v4 = sub_10001A7AC();

  return sub_100016E4C(a1, a2, v4);
}

unint64_t sub_100016D84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000198A8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10001A61C();
      sub_100009BC0(v8);
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

unint64_t sub_100016E4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001A74C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100016F04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000FA48;

  return v6();
}

uint64_t sub_100016FEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100009994;

  return v7();
}

uint64_t sub_1000170D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000027DC(&qword_10002B750);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100009A88(a3, v23 - v10, &qword_10002B750);
  v12 = sub_10001A4CC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009B60(v11, &qword_10002B750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10001A4BC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10001A48C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10001A42C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100009B60(a3, &qword_10002B750);

    return v21;
  }

LABEL_8:
  sub_100009B60(a3, &qword_10002B750);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void *sub_1000173D0(uint64_t a1, uint64_t a2)
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

  sub_1000027DC(&unk_10002B860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_100017480(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000174DC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000174DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000175A8(v11, 0, 0, 1, a1, a2);
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
    sub_100003EAC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000351C(v11);
  return v7;
}

unint64_t sub_1000175A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000176B4(a5, a6);
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
    result = sub_10001A66C();
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

char *sub_1000176B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100017700(a1, a2);
  sub_100017830(&off_100024E30);
  return v3;
}

char *sub_100017700(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001791C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001A66C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001A45C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001791C(v10, 0);
        result = sub_10001A63C();
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

uint64_t sub_100017830(uint64_t result)
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

  result = sub_100017990(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_10001791C(uint64_t a1, uint64_t a2)
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

  sub_1000027DC(&qword_10002BA98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027DC(&qword_10002BA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100017A84(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_100017A94(char *a1, int64_t a2, char a3)
{
  result = sub_100017AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017AB4(void *a1, int64_t a2, char a3)
{
  result = sub_100017BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100017AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027DC(&unk_10002BB40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017BE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027DC(&qword_10002BB30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000027DC(&qword_10002BB38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100017D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10001A70C();
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
      result = sub_10001A70C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100019230(&qword_10002BB28, &qword_10002BB20);
          for (i = 0; i != v6; ++i)
          {
            sub_1000027DC(&qword_10002BB20);
            v9 = sub_100017EC8(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1000027DC(&qword_10002BB10);
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

uint64_t (*sub_100017EC8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001A65C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100017F48;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10001A07C();
  v11 = result;
  if (result)
  {
    result = sub_10001A09C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10001A08C();
  sub_1000167CC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100018008(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000F5E4(a3, a4);
          return sub_1000169FC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100018170()
{
  v1 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__avatarRecordRenderView;
  result = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__avatarRecordRenderView);
  if (!result)
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
    if (v4)
    {
      v5 = [objc_msgSend(v4 "environment")];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = -1;
    }

    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v6 = objc_allocWithZone(type metadata accessor for AvatarRecordRenderView());
    v7 = sub_10000C09C(v5, v9, 0.0, 0.0, 0.0, 0.0);
    v8 = *(v3 + v1);
    *(v3 + v1) = v7;

    result = *(v3 + v1);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001824C(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView);
  if (v3)
  {
    v6 = v3;
    v7 = [a1 deviceOrientation];
    *&v6[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v7;
    v8 = 0.2;
    if (a2)
    {
      v9 = [a2 animationSettings];
      if (v9)
      {
        v10 = v9;
        [v9 duration];
        v8 = v11;
      }
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    *(v13 + 24) = v7;
    v16[4] = sub_10001993C;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000FA4C;
    v16[3] = &unk_100025740;
    v14 = _Block_copy(v16);
    v15 = v6;

    [v12 animateWithDuration:v14 animations:v8];
    _Block_release(v14);
  }
}

uint64_t sub_1000183C4()
{
  v0 = sub_10001A15C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10001A3CC();
  __chkstk_darwin(v1 - 8);
  sub_1000027DC(&unk_10002B860);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001C200;
  sub_10001A3BC();
  sub_10001A14C();
  sub_10001A3FC();
  v3 = [objc_opt_self() vibrantMaterialColor];
  v16 = sub_100009C14(0, &qword_10002B438);
  v15[0] = v3;
  v4 = sub_10001A3DC();
  v5 = sub_10001A3DC();

  v6 = v16;
  if (v16)
  {
    v7 = sub_1000034D8(v15, v16);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_10001A73C();
    (*(v8 + 8))(v10, v6);
    sub_10000351C(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v4 displayName:v5 initialTimeFontConfiguration:0 initialTitleColor:v11];

  swift_unknownObjectRelease();
  *(v2 + 32) = v12;
  return v2;
}

void sub_1000186AC(void *a1)
{
  v2 = v1;
  v4 = sub_10001A20C();
  v5 = sub_10001A50C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Populating views", v6, 2u);
  }

  v7 = AVTAvatarSwiftUIEnabled();
  v8 = [a1 backgroundView];
  v9 = v8;
  if (v7)
  {
    v10 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_tonalGradientBackground;
    [v8 addSubview:*(v2 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_tonalGradientBackground)];

    v11 = *(v2 + v10);
    v12 = [a1 backgroundView];
  }

  else
  {
    v13 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController;
    v14 = *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController);
    if (!v14)
    {
      v15 = [objc_allocWithZone(UIViewController) init];
      v16 = *(v2 + v13);
      *(v2 + v13) = v15;

      v14 = *(v2 + v13);
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    v17 = [v14 view];
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = v17;
    [v9 addSubview:v17];

    v19 = *(v2 + v13);
    if (!v19)
    {
      v20 = [objc_allocWithZone(UIViewController) init];
      v21 = *(v2 + v13);
      *(v2 + v13) = v20;

      v19 = *(v2 + v13);
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v22 = [v19 view];
    if (!v22)
    {
      goto LABEL_16;
    }

    v11 = v22;
    v12 = [a1 backgroundView];
  }

  v23 = v12;
  sub_1000024C4(v23);

  v24 = sub_100018170();
  if (v24)
  {
    v25 = v24;
    v26 = type metadata accessor for DeviceOrientationAdjustingView();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = 1;
    *&v27[OBJC_IVAR____TtC21AvatarPosterExtension30DeviceOrientationAdjustingView_contentView] = v25;
    v33.receiver = v27;
    v33.super_class = v26;
    v28 = v25;
    v29 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v29 addSubview:{v28, v33.receiver, v33.super_class}];

    v30 = [a1 floatingView];
    [v30 addSubview:v29];

    v31 = [a1 floatingView];
    sub_1000024C4(v31);

    v32 = *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView);
    *(v2 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView) = v29;

    return;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_1000189B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000027DC(&qword_10002BB88);
    v3 = sub_10001A71C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009A88(v4, v13, &qword_10002BB80);
      result = sub_100016CC8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009C5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100018AEC()
{
  v1 = v0;
  v2 = sub_1000027DC(&qword_10002B770);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v18[-v6];
  v8 = sub_10001A20C();
  v9 = sub_10001A50C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating editor", v10, 2u);
  }

  v11 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor) = 0;

  v12 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__backgroundViewController) = 0;

  v13 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_deviceOrientationAdjustingView) = 0;

  v14 = *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__avatarRecordRenderView);
  *(v1 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor__avatarRecordRenderView) = 0;

  v15 = sub_10001A06C();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(v1 + v16, v5, &qword_10002B770);
  swift_beginAccess();
  sub_100009AF0(v7, v1 + v16);
  swift_endAccess();
  sub_100012E84(v5);
  sub_100009B60(v5, &qword_10002B770);
  return sub_100009B60(v7, &qword_10002B770);
}

id sub_100018D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000027DC(&qword_10002B770);
  v7 = __chkstk_darwin(v6 - 8);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v24 = &v24 - v10;
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10001A06C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_configuration;
  swift_beginAccess();
  sub_100009A88(v3 + v17, v12, &qword_10002B770);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009B60(v12, &qword_10002B770);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v18 = [objc_opt_self() dataFromAvatarRecord:a1];
    sub_10001A13C();

    sub_10001A01C();
    v19 = [objc_opt_self() dataForPoseConfiguration:a2];
    if (v19)
    {
      v20 = v19;
      sub_10001A13C();
    }

    sub_100019FCC();
    v21 = v24;
    (*(v14 + 16))(v24, v16, v13);
    (*(v14 + 56))(v21, 0, 1, v13);
    v22 = v25;
    sub_100009A88(v3 + v17, v25, &qword_10002B770);
    swift_beginAccess();
    sub_100009AF0(v21, v3 + v17);
    swift_endAccess();
    sub_100012E84(v22);
    sub_100009B60(v22, &qword_10002B770);
    sub_100009B60(v21, &qword_10002B770);
    (*(v14 + 8))(v16, v13);
  }

  result = *(v3 + OBJC_IVAR____TtC21AvatarPosterExtension18AvatarPosterEditor_editor);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_1000190CC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000190DC(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000190F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019128()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001917C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000191C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019230(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002C94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019278()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000192C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019354()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001939C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009994;

  return sub_1000120A8(v2, v3, v4);
}

uint64_t sub_100019454()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000FA48;

  return sub_100016F04(v2, v3, v4);
}

uint64_t sub_100019514()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100019554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA48;

  return sub_100016FEC(a1, v4, v5, v6);
}

uint64_t sub_100019620()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA48;

  return sub_10000F3E0(a1, v4);
}

uint64_t sub_100019710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009994;

  return sub_10000F3E0(a1, v4);
}

unint64_t sub_1000197C8()
{
  result = qword_10002BB58;
  if (!qword_10002BB58)
  {
    sub_100002C94(&qword_10002BB50);
    sub_100019854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002BB58);
  }

  return result;
}

unint64_t sub_100019854()
{
  result = qword_10002BB60;
  if (!qword_10002BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002BB60);
  }

  return result;
}

uint64_t sub_100019904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000199E0@<X0>(uint64_t *a1@<X8>)
{
  sub_10001A36C();
  swift_allocObject();
  sub_10001A37C();
  sub_10001A33C();
  swift_allocObject();

  sub_10001A34C();
  sub_1000027DC(&qword_10002BC30);
  sub_10001A1CC();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001BE10;
  sub_100019E80(&qword_10002BC38, &type metadata accessor for PRRenderingConfiguration);

  sub_10001A1BC();
  sub_100019E80(&qword_10002BC40, &type metadata accessor for PREditingConfiguration);

  sub_10001A1BC();

  *a1 = v2;
  return result;
}

id sub_100019C3C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100019C80()
{
  [objc_allocWithZone(type metadata accessor for AvatarPosterUpdater()) init];
  sub_1000027DC(&qword_10002BC20);
  swift_allocObject();
  sub_10001A35C();
  sub_100019EFC(&qword_10002BC28);
  sub_10001A1FC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100019DE4();
  sub_100019EFC(&qword_10002BC18);
  sub_10001A1DC();
  return 0;
}

unint64_t sub_100019DE4()
{
  result = qword_10002BC10;
  if (!qword_10002BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002BC10);
  }

  return result;
}

uint64_t sub_100019E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002C94(&qword_10002BC20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}
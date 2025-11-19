void (*ShaderFallback.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
  *(v3 + 312) = v1;
  *(v3 + 320) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v4[12] = *v6;
  v4[13] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v4[16] = v6[4];
  v4[17] = v10;
  v4[14] = v8;
  v4[15] = v9;
  return sub_1003FFC88;
}

void sub_1003FFC88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 312) + *(*a1 + 320));
  if (a2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = *a1 + 96;
  }

  v5 = v3[1];
  *v4 = *v3;
  *(v4 + 16) = v5;
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  *(v4 + 64) = v3[4];
  *(v4 + 80) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v7;
  v9 = v2[13];
  *v3 = v2[12];
  v3[1] = v9;
  v10 = v2[17];
  v12 = v2[14];
  v11 = v2[15];
  v3[4] = v2[16];
  v3[5] = v10;
  v3[2] = v12;
  v3[3] = v11;
  sub_1003FF97C(v4);

  free(v2);
}

void *ShaderFallback.image.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  v2 = v1;
  return v1;
}

void ShaderFallback.image.setter(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ShaderFallback.setImage(_:animated:)(a1, a2);
}

void (*ShaderFallback.image.modify(void *a1))(Class *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1003FFDC4;
}

void sub_1003FFDC4(Class *a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v8.value.super.isa = v6;
    v8.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v8, v4);

    v5 = v3;
  }

  else
  {
    v9.value.super.isa = *a1;
    v9.is_nil = 0;
    ShaderFallback.setImage(_:animated:)(v9, v2);
    v5 = v6;
  }
}

Swift::Void __swiftcall ShaderFallback.setImage(_:animated:)(UIImage_optional _, Swift::Bool animated)
{
  v3 = v2;
  isa = _.value.super.isa;
  if (!_.is_nil || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v16 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
    swift_beginAccess();
    v5 = *(v3 + v16) ^ 1;
  }

  v6 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image);
  *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = isa;
  v7 = isa;

  if (!isa)
  {
    v8 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    isa = sub_1004034BC(*(v3 + v8));
  }

  v9 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = v7;
    v11 = v9;
    v12 = [isa CGImage];
    sub_1003F71C0(v12, v5 & 1);

    if (v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v7;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (v14)
  {
    v15 = v14;
    [v15 setNeedsDisplay];
  }

LABEL_13:
}

uint64_t ShaderFallback.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

id ShaderFallback.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_100402340();
}

id (*ShaderFallback.isPaused.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10040008C;
}

id sub_10040008C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100402340();
  }

  return result;
}

char *ShaderFallback.init(configuration:)(_OWORD *a1)
{
  swift_getObjectType();
  v3 = sub_100004CB8(&qword_1006466B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = 0;
  v6 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *&v1[v6] = sub_1004029EC();
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = 0;
  v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled] = 0;
  *&v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = 0;
  v7 = &v1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration];
  v8 = a1[3];
  v7[2] = a1[2];
  v7[3] = v8;
  v9 = a1[5];
  v7[4] = a1[4];
  v7[5] = v9;
  v10 = a1[1];
  *v7 = *a1;
  v7[1] = v10;
  v11 = type metadata accessor for ShaderFallback();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100401FD0();
  v13 = [v12 traitCollection];
  v14 = [v13 accessibilityContrast];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = v14 == 1;
  sub_100004CB8(&qword_1006466F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100511DA0;
  *(v15 + 32) = sub_1004D998C();
  *(v15 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004DE57C();
  swift_unknownObjectRelease();

  v16 = objc_opt_self();
  v17 = [v16 processInfo];
  v18 = [v17 isLowPowerModeEnabled];

  *(v12 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = v18;
  v19 = sub_1004DDA8C();
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  sub_1004DDA4C();
  v21 = v12;
  v22 = sub_1004DDA3C();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver] = sub_100400D18(0, 0, v5, &unk_100534A18, v23);

  v24 = [v16 processInfo];
  v25 = [v24 thermalState];

  *&v21[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel] = v25;
  v20(v5, 1, 1, v19);
  v26 = v21;
  v27 = sub_1004DDA3C();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver] = sub_100400D18(0, 0, v5, &unk_100534A28, v28);

  v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v20(v5, 1, 1, v19);
  v29 = sub_1004DDA3C();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v26;
  *&v26[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver] = sub_100400D18(0, 0, v5, &unk_100534A38, v30);

  return v26;
}

uint64_t sub_1004005D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100004CB8(&qword_100646D10);
  v4[4] = swift_task_alloc();
  v5 = sub_1004DE24C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004DDA4C();
  v4[9] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100400700, v7, v6);
}

uint64_t sub_100400700()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004DE26C();

  sub_1004DE23C();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_1004DDA3C();
  v4 = sub_100403BAC();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100400834;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_100400834()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100400C8C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1004009CC;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1004009CC()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100400A30, v1, v2);
}

uint64_t sub_100400A30()
{
  v1 = v0[4];
  v2 = sub_1004D7B7C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[3];
    v7 = [objc_opt_self() processInfo];
    v8 = [v7 isLowPowerModeEnabled];

    v9 = *(v6 + v5);
    *(v6 + v5) = v8;
    if (v8 != v9)
    {
      v10 = v0[3];
      if (*(v10 + v0[13]))
      {
        v11 = *(v10 + v0[14]);
        if (v11)
        {
          v12 = *(v10 + v0[15]);
          v13 = 60;
          if (v8)
          {
            v13 = 30;
          }

          v14 = 30;
          if (v8)
          {
            v14 = 20;
          }

          v15 = 60;
          if (v8)
          {
            v15 = 30;
          }

          v16 = 20;
          if (v8)
          {
            v16 = 15;
          }

          if (v12 == 3)
          {
            v15 = v16;
          }

          v17 = v12 >= 2;
          if (v12 == 2)
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          if (v17)
          {
            v19 = v18;
          }

          else
          {
            v19 = v13;
          }

          [v11 setPreferredFramesPerSecond:v19];
        }
      }
    }

    sub_10001074C(v0[4], &qword_100646D10);
    v0[16] = sub_1004DDA3C();
    v20 = sub_100403BAC();
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_100400834;
    v22 = v0[4];
    v23 = v0[5];

    return dispatch thunk of AsyncIteratorProtocol.next()(v22, v23, v20);
  }
}

uint64_t sub_100400C8C()
{
  *(v0 + 16) = *(v0 + 144);
  sub_100004CB8(&qword_100646410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100400D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004CB8(&qword_1006466B8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100403C04(a3, v25 - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001074C(v11, &qword_1006466B8);
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004DD9BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004DD52C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001074C(a3, &qword_1006466B8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001074C(a3, &qword_1006466B8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100401008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_100004CB8(&qword_100646D10);
  v4[4] = swift_task_alloc();
  v5 = sub_1004DE24C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1004DDA4C();
  v4[9] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100401138, v7, v6);
}

uint64_t sub_100401138()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004DE26C();

  sub_1004DE23C();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer;
  v0[12] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel;
  v0[13] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled;
  v0[14] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = v3;
  v0[16] = sub_1004DDA3C();
  v4 = sub_100403BAC();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_10040126C;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_10040126C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100403E28;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100401404;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100401404()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100401468, v1, v2);
}

uint64_t sub_100401468()
{
  v1 = v0[4];
  v2 = sub_1004D7B7C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[12];
  v6 = v0[3];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v9 = *(v6 + v5);
  *(v6 + v5) = v8;
  if (v8 != v9)
  {
    v10 = v0[3];
    if (*(v10 + v0[13]))
    {
      v11 = *(v10 + v0[14]);
      if (v11)
      {
        if (v8 < 2)
        {
          goto LABEL_12;
        }

        if (v8 == 2)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 30;
          v14 = 20;
          goto LABEL_14;
        }

        if (v8 == 3)
        {
          v12 = *(v10 + v0[15]) == 0;
          v13 = 20;
          v14 = 15;
        }

        else
        {
LABEL_12:
          v12 = *(v10 + v0[15]) == 0;
          v13 = 60;
          v14 = 30;
        }

LABEL_14:
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        [v11 setPreferredFramesPerSecond:v15];
      }
    }
  }

  sub_10001074C(v0[4], &qword_100646D10);
  v0[16] = sub_1004DDA3C();
  v16 = sub_100403BAC();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_10040126C;
  v18 = v0[4];
  v19 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v16);
}

uint64_t sub_1004016C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_100004CB8(&qword_100646D10);
  v4[7] = swift_task_alloc();
  v5 = sub_1004DE24C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1004DDA4C();
  v4[12] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1004017F4, v7, v6);
}

uint64_t sub_1004017F4()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1004DE26C();

  sub_1004DE23C();
  v2 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  v0[15] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled;
  v0[16] = v2;
  v3 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
  v0[17] = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled;
  v0[18] = v3;
  swift_beginAccess();
  v0[19] = sub_1004DDA3C();
  v4 = sub_100403BAC();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100401940;
  v6 = v0[7];
  v7 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_100401940()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100401D64;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100401AD8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100401AD8()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100401B3C, v1, v2);
}

uint64_t sub_100401B3C()
{
  v1 = v0[7];
  v2 = sub_1004D7B7C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[15];
    v6 = v0[6];
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v8 = *(v6 + v5);
    *(v6 + v5) = IsReduceMotionEnabled;
    if (IsReduceMotionEnabled != v8)
    {
      v9 = IsReduceMotionEnabled;
      v10 = v0[16];
      v11 = v0[6];
      v12 = *(v11 + v10);
      if (v12)
      {
        v13 = ((v9 | *(v11 + v0[17])) & 1) != 0 ? 1 : *(v11 + v0[18]);
        [v12 setEnableSetNeedsDisplay:v13];
        v14 = *(v11 + v10);
        if (v14)
        {
          v15 = v0[6];
          if ((*(v15 + v0[17]) & 1) != 0 || *(v15 + v0[15]) == 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = *(v15 + v0[18]);
          }

          [v14 setPaused:v16];
        }
      }
    }

    sub_10001074C(v0[7], &qword_100646D10);
    v0[19] = sub_1004DDA3C();
    v17 = sub_100403BAC();
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_100401940;
    v19 = v0[7];
    v20 = v0[8];

    return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
  }
}

uint64_t sub_100401D64()
{
  *(v0 + 40) = *(v0 + 168);
  sub_100004CB8(&qword_100646410);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id ShaderFallback.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver])
  {

    sub_1004DDAFC();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver])
  {

    sub_1004DDAFC();
  }

  if (*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver])
  {

    sub_1004DDAFC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShaderFallback();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100401FD0()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  if (!*&v0[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView])
  {
    v2 = v0;
    if (qword_100645590 != -1)
    {
      swift_once();
    }

    v3 = xmmword_100673E00;
    if (xmmword_100673E00)
    {
      v4 = byte_100673E28;
      v5 = qword_100673E18;
      v25 = xmmword_100673E00;
      v26 = unk_100673E10;
      v27 = qword_100673E18;
      v28 = unk_100673E20;
      v29 = byte_100673E28 & 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v5;
      [v2 bounds];
      v11 = [objc_allocWithZone(MTKView) initWithFrame:v3 device:{v7, v8, v9, v10}];
      [v11 setAutoresizingMask:18];
      v12 = [v11 layer];

      [v12 setAllowsDisplayCompositing:0];
      if ((v4 & 1) != 0 && *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor() == 1)
      {
        [v11 setColorPixelFormat:552];
      }

      v13 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = sub_1003F7728(&v25);
      *&v15[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = &off_1005FA6D0;
      swift_unknownObjectWeakAssign();
      sub_1003F766C(0, 0.5, 0.5, 0.5);
      sub_1003F714C([v11 colorPixelFormat]);
      [v11 setDelegate:v2];
      v31.value.super.isa = 0;
      v31.is_nil = 0;
      ShaderFallback.setImage(_:animated:)(v31, v16);
      v17 = [v11 delegate];
      if (v17)
      {
        v18 = v17;
        [v2 frame];
        [v18 mtkView:v11 drawableSizeWillChange:{v19, v20}];
        swift_unknownObjectRelease();
      }

      [v11 setPreferredFramesPerSecond:60];
      v21 = *&v2[v1];
      *&v2[v1] = v11;
      v22 = v11;

      v23 = *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer];
      *&v2[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer] = v15;
      v24 = v15;

      [v2 addSubview:v22];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

id sub_100402340()
{
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView;
  result = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled))
    {
      v3 = 1;
    }

    else
    {
      v4 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
      v5 = *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView);
      swift_beginAccess();
      result = v5;
      v3 = *(v0 + v4);
    }

    [result setEnableSetNeedsDisplay:v3];
    result = *(v0 + v1);
    if (result)
    {
      if ((*(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) == 1)
      {
        v6 = 1;
      }

      else
      {
        v7 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused;
        v8 = *(v0 + v1);
        swift_beginAccess();
        result = v8;
        v6 = *(v0 + v7);
      }

      return [result setPaused:v6];
    }
  }

  return result;
}

Swift::Void __swiftcall ShaderFallback.draw(in:)(MTKView in)
{
  v2 = v1;
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator);
  sub_1004D823C();
  sub_100402B74(v7);
  (*(v5 + 8))(v7, v4);
  v9 = *(v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer);
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis];
    v11 = v2 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_configuration;
    swift_beginAccess();
    v12 = *(v11 + 16);
    *(v10 + 64) = v12;
    *&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = *(v8 + 344);
    memmove(&v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], (v8 + 16), 0x170uLL);
    v13 = &v9[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
    *v13 = *(v8 + 400) / 786.0;
    *(v13 + 4) = 0;
  }

  [v9 drawInMTKView:in.super.super.super.isa];
}

void __swiftcall ShaderFallback.Configuration.init(fallbackImage:transitionSpeed:intensity:blur:pinchMix:speed:ySpeed:xSpeed:bassAmount:saturation:whiteScrim:blackScrim:)(ShaderFallbackKit::ShaderFallback::Configuration *__return_ptr retstr, ShaderFallbackKit::ShaderFallback::Configuration::FallbackImage fallbackImage, Swift::Double transitionSpeed, Swift::Double intensity, Swift::Double blur, Swift::Double pinchMix, Swift::Double speed, Swift::Double ySpeed, Swift::Double xSpeed, Swift::Double bassAmount, Swift::Double saturation, Swift::Double whiteScrim, Swift::Double blackScrim)
{
  retstr->fallbackImage = fallbackImage & 1;
  retstr->transitionSpeed = transitionSpeed;
  retstr->intensity = intensity;
  retstr->blur = blur;
  retstr->pinchMix = pinchMix;
  retstr->speed = speed;
  retstr->ySpeed = ySpeed;
  retstr->xSpeed = xSpeed;
  retstr->bassAmount = bassAmount;
  *&retstr->saturation = *&saturation;
  retstr->blackScrim = blackScrim;
}

double ShaderFallback.Configuration.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v13 = v2[2];
  v14 = v4;
  v5 = v2[5];
  v15 = v2[4];
  v16 = v5;
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  a1(&v11);
  v7 = v14;
  a2[2] = v13;
  a2[3] = v7;
  v8 = v16;
  a2[4] = v15;
  a2[5] = v8;
  result = *&v11;
  v10 = v12;
  *a2 = v11;
  a2[1] = v10;
  return result;
}

double sub_100402778()
{
  LOBYTE(static ShaderFallback.Configuration.zero) = 0;
  result = 0.0;
  *(&static ShaderFallback.Configuration.zero + 8) = 0u;
  *&algn_1006740D0[8] = 0u;
  *(&xmmword_1006740E0 + 8) = 0u;
  unk_1006740F8 = 0u;
  *(&xmmword_100674100 + 8) = 0u;
  qword_100674118 = 0;
  return result;
}

__int128 *ShaderFallback.Configuration.zero.unsafeMutableAddressor()
{
  if (qword_1006455D0 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.zero;
}

double static ShaderFallback.Configuration.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1006455D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1006740F0;
  a1[2] = xmmword_1006740E0;
  a1[3] = v1;
  v2 = unk_100674110;
  a1[4] = xmmword_100674100;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.zero;
  v4 = *algn_1006740D0;
  *a1 = static ShaderFallback.Configuration.zero;
  a1[1] = v4;
  return result;
}

double sub_10040286C()
{
  LOBYTE(static ShaderFallback.Configuration.default) = 0;
  *(&static ShaderFallback.Configuration.default + 8) = xmmword_100533F30;
  *&algn_100674130[8] = xmmword_100533F40;
  *(&xmmword_100674140 + 8) = xmmword_100533F50;
  unk_100674158 = xmmword_100533F60;
  result = 2.0;
  *(&xmmword_100674160 + 8) = xmmword_100533F70;
  qword_100674178 = 0x3FD6666666666666;
  return result;
}

__int128 *ShaderFallback.Configuration.default.unsafeMutableAddressor()
{
  if (qword_1006455D8 != -1)
  {
    swift_once();
  }

  return &static ShaderFallback.Configuration.default;
}

double static ShaderFallback.Configuration.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1006455D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_100674150;
  a1[2] = xmmword_100674140;
  a1[3] = v1;
  v2 = unk_100674170;
  a1[4] = xmmword_100674160;
  a1[5] = v2;
  result = *&static ShaderFallback.Configuration.default;
  v4 = *algn_100674130;
  *a1 = static ShaderFallback.Configuration.default;
  a1[1] = v4;
  return result;
}

BOOL sub_100402990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s17ShaderFallbackKit0aB0C13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v10);
}

uint64_t sub_1004029EC()
{
  if (qword_1006455C8 != -1)
  {
    swift_once();
  }

  memmove((v0 + 16), &static Uniforms.standard, 0x170uLL);
  *(v0 + 384) = xmmword_100533F80;
  *(v0 + 400) = xmmword_100533F90;
  *(v0 + 416) = 1028443341;
  *(v0 + 424) = 0x3F50624DD2F1A9FCLL;
  *(v0 + 432) = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(v0 + 448) = xmmword_100533FA0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 464) = _Q0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  sub_1004D823C();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = 0;
  sub_1004D823C();
  sub_1004D823C();
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = 0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = 0x4024000000000000;
  return v0;
}

void sub_100402B74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v27 = *(v5 + 16);
  v27(&v26 - v10, v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime, v4, v9);
  sub_1004D819C();
  v13 = v12;
  v14 = v5;
  v26 = v5;
  v15 = *(v5 + 8);
  v15(v11, v4);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) = v13;
  v16 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime;
  swift_beginAccess();
  (*(v14 + 24))(v2 + v16, a1, v4);
  swift_endAccess();
  v17 = v27;
  (v27)(v11, v2 + v16, v4);
  v18 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime;
  swift_beginAccess();
  v17(v7, v2 + v18, v4);
  sub_1004D819C();
  v20 = v19;
  v15(v7, v4);
  v15(v11, v4);
  v21 = v20 * v2[96];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTime) = v21;
  v22 = v20 * v2[97];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForPan) = v22;
  v23 = v20 * v2[98];
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_deltaTimeForXPan) = v23;
  v24 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed;
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed) = v21 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan) = v22 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan) = v23 + *(v2 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  (v27)(v11, v2 + v16, v4);
  swift_beginAccess();
  (*(v26 + 40))(v2 + v18, v11, v4);
  swift_endAccess();
  v25 = *(v2 + v24);
  v2[4] = v25;
  sub_100402ED8();
  sub_100403094();
}

double sub_100402E88(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration) = *(a1 + 8);
  *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime) = *(v1 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime);
  v3 = *(a1 + 24);
  result = *(a1 + 32);
  *(v1 + 448) = result;
  *(v1 + 456) = v3;
  v4 = *(a1 + 80);
  *(v1 + 464) = *(a1 + 64);
  *(v1 + 480) = v4;
  *(v1 + 424) = *(a1 + 40);
  *(v1 + 440) = *(a1 + 56);
  return result;
}

long double sub_100402ED8()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsed);
  *v2.i64 = sin(v1 * 0.1);
  v3.i64[0] = 1.0;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v15 = vnegq_f64(v4);
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBlur) = (fabs(*v2.i64) * *vbslq_s8(v15, v3, v2).i64 + 1.0) * 0.5 * 0.2 + 0.9;
  *v5.i64 = sin(v1 * 0.25);
  v6.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoWarp) = (fabs(*v5.i64) * *vbslq_s8(v15, v6, v5).i64 + 1.0) * 0.5 * 0.35 + 0.75;
  v7 = *(v0 + 404);
  *v8.i64 = sin(v1 * 0.5);
  v9.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass) = (fabs(*v8.i64) * *vbslq_s8(v15, v9, v8).i64 + 1.0) * 0.5 * (v7 + -0.1) + 0.1;
  *v10.i64 = sin(v1 * 0.75);
  v11.i64[0] = 1.0;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid) = (*vbslq_s8(v15, v11, v10).i64 * fabs(sqrt(fabs(*v10.i64))) + 1.0) * 0.5 + 0.0;
  *v12.i64 = sin(v1);
  v13.i64[0] = 1.0;
  result = (*vbslq_s8(v15, v13, v12).i64 * pow(fabs(*v12.i64), 0.75) + 1.0) * 0.5 * 0.5 + 0.5;
  *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi) = result;
  return result;
}

float sub_100403094()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoBass);
  v2 = *(v0 + 368);
  *v2.f64 = v1;
  *(v0 + 368) = v1;
  v3 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoMid);
  *(v2.f64 + 1) = v3;
  *(v0 + 368) = v2;
  v4 = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lfoHi);
  *&v2.f64[1] = v4;
  *(v0 + 368) = v2;
  v5 = *(v0 + 408);
  *(v0 + 356) = v5;
  v2.f64[0] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForXPan);
  v2.f64[1] = *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_totalTimeElapsedForPan);
  *(v0 + 24) = vmul_f32(vrev64_s32(*(v0 + 412)), vcvt_f32_f64(v2));
  v6 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  v7 = 0.0;
  if (v6 >= 0.0)
  {
    v7 = (*(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_elapsedTime) - *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transtionStartTime)) / *(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_transitionDuration);
  }

  if (v6 >= 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 * v8 * (3.0 - (v8 + v8));
  v10 = vcvtq_f64_f32(*(v0 + 384));
  *(v0 + 384) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 424), v10), v9), v10));
  v11 = *(v0 + 448);
  *v10.f64 = v9 * (*(v0 + 440) - *(v0 + 392)) + *(v0 + 392);
  *(v0 + 392) = LODWORD(v10.f64[0]);
  *v10.f64 = v9 * (v11 - *(v0 + 344)) + *(v0 + 344);
  *(v0 + 344) = LODWORD(v10.f64[0]);
  v12 = vcvtq_f64_f32(*(v0 + 360));
  *(v0 + 360) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 480), v12), v9), v12));
  v13 = vcvtq_f64_f32(*(v0 + 400));
  *(v0 + 400) = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(vsubq_f64(*(v0 + 456), v13), v9), v13));
  result = v9 * (*(v0 + 472) - v5) + v5;
  *(v0 + 408) = result;
  return result;
}

uint64_t sub_100403230()
{
  v1 = OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_startTime;
  v2 = sub_1004D826C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_lastUpdateTime, v2);
  v3(v0 + OBJC_IVAR____TtCC17ShaderFallbackKit14ShaderFallbackP33_E0493FC84B3F5E1A1D946DD3789AC6F610Calculator_currentTime, v2);

  return swift_deallocClassInstance();
}

void sub_100403378(unsigned __int8 *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 accessibilityContrast];

  v4 = v3 == 1;
  v5 = a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled];
  a1[OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled] = v4;
  if (v4 != v5)
  {
    sub_100402340();
  }
}

id sub_1004034BC(char a1)
{
  if (a1)
  {
    if (qword_100645580 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_100645580 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = qword_100673DB0;
  v2 = sub_1004DD3FC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  return v3;
}

uint64_t type metadata accessor for ShaderFallback.Calculator()
{
  result = qword_1006467D8;
  if (!qword_1006467D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100403644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035B28;

  return sub_1004005D0(a1, v4, v5, v6);
}

uint64_t sub_1004036F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100401008(a1, v4, v5, v6);
}

uint64_t sub_1004037AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_1004016C4(a1, v4, v5, v6);
}

unint64_t sub_100403864()
{
  result = qword_1006466F8;
  if (!qword_1006466F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006466F8);
  }

  return result;
}

__n128 sub_1004038B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004038D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
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

uint64_t sub_100403918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10040399C()
{
  result = sub_1004D826C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100403A98()
{
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback__image) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_metalView) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_renderer) = 0;
  v1 = OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_calculator;
  type metadata accessor for ShaderFallback.Calculator();
  swift_allocObject();
  *(v0 + v1) = sub_1004029EC();
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_reduceMotionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_powerStateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevelObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isHighContrastEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isReduceMotionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_isLowPowerModeEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC17ShaderFallbackKit14ShaderFallback_thermalLevel) = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_100403BAC()
{
  result = qword_100646D18;
  if (!qword_100646D18)
  {
    sub_1004DE24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646D18);
  }

  return result;
}

uint64_t sub_100403C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006466B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100403C74()
{

  return swift_deallocObject();
}

uint64_t sub_100403CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

uint64_t sub_100403D64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10012B324(a1, v4);
}

uint64_t Array<A>.joined(separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a1;
  v25 = a6;
  v8 = sub_1004DE7CC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a2;
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD8C();
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(v24 + 8))(a3);
  }

  else
  {
    (*(v13 + 32))(v15, v12, a3);
    *&v26 = a2;

    v17 = sub_1004DDDDC();
    v21 = v28;
    v26 = v28;
    v27 = v29;
    __chkstk_darwin(v17);
    v18 = v23;
    v19 = v24;
    *(&v21 - 4) = a3;
    *(&v21 - 3) = v18;
    v20 = v22;
    *(&v21 - 2) = v19;
    *(&v21 - 1) = v20;
    sub_1004DE8EC();
    swift_getWitnessTable();
    sub_1004DD79C();
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v15, a3);
  }
}

uint64_t sub_100404128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  v13(v9, v14, v15, v12);
  v13(v11, a2, a4, a5);
  return (*(v8 + 8))(v11, a4);
}

id variable initialization expression of BrightnessManager.brightnessClient()
{
  v0 = objc_allocWithZone(BrightnessSystemClient);

  return [v0 init];
}

unint64_t sub_1004042C0(uint64_t a1)
{
  v1 = sub_100404B04(a1);
  sub_100004CB8(&qword_100646DA0);
  swift_arrayDestroy();
  return v1;
}

unint64_t variable initialization expression of BrightnessManager.disableCBFeatures()
{
  v0 = sub_100404C08(&off_1005FA9E8);
  sub_100404D04(&unk_1005FAA08);
  return v0;
}

unint64_t variable initialization expression of BrightnessManager.enableCBFeatures()
{
  v0 = sub_100404C08(&off_1005FAA20);
  sub_100404D04(&unk_1005FAA40);
  return v0;
}

uint64_t variable initialization expression of Datavault.logger@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D966C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WeakArray.items()
{
  type metadata accessor for WeakArray.WeakBox();

  return sub_1004DD8DC();
}

uint64_t variable initialization expression of WeakValuesDictionary.storage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100404D6C();
  swift_getTupleTypeMetadata2();
  v6 = sub_1004DD8DC();
  v7 = sub_10041D108(v6, a1, v5, a3);

  return v7;
}

uint64_t sub_1004044CC(uint64_t a1, uint64_t a2)
{
  result = sub_1004DDBDC();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100404520(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DDBEC();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100404578@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1004DDBFC();
  *a1 = v3;
  return result;
}

Swift::Int sub_1004045A0()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100404614()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(v1);
  return sub_1004DF2BC();
}

uint64_t sub_100404680()
{
  sub_1004055A4(&qword_100646EA8, type metadata accessor for Name);
  sub_1004055A4(&qword_100646EB0, type metadata accessor for Name);

  return sub_1004DEE0C();
}

uint64_t sub_10040473C()
{
  sub_1004055A4(&qword_100646EB8, _s3__C3KeyVMa_0);
  sub_1004055A4(&qword_100646EC0, _s3__C3KeyVMa_0);

  return sub_1004DEE0C();
}

_DWORD *sub_1004047F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100404808@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100404814()
{
  sub_1004055A4(&qword_100646E98, type metadata accessor for UILayoutPriority);
  sub_1004055A4(&qword_100646EA0, type metadata accessor for UILayoutPriority);
  return sub_1004DEE0C();
}

uint64_t sub_1004048D0()
{
  sub_1004055A4(&qword_100646F48, _s3__C19NSKeyValueChangeKeyVMa_0);
  sub_1004055A4(&qword_100646F50, _s3__C19NSKeyValueChangeKeyVMa_0);

  return sub_1004DEE0C();
}

void sub_100404994()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF29C(LODWORD(v1));
}

uint64_t sub_1004049D0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

unint64_t sub_100404A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646F08);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10041CA54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100404B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646F00);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10041CA54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100404C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646EF8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10041CA54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100404D04(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100646DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100404D6C()
{
  result = qword_100646DB0;
  if (!qword_100646DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100646DB0);
  }

  return result;
}

void *sub_100404DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100004CB8(&qword_100646EF0);
  v3 = sub_1004DEDBC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_10041CA80(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_10041CA80(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100404ED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646EE8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10041CA54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100404FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646EE0);
    v3 = sub_1004DEDBC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100028EF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004050AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646ED8);
    v3 = sub_1004DEDBC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10041CB40(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10040518C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646ED0);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10041CA54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1004052A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646EC8);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = sub_10041CBAC(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_1004053EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100405468(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1004055A4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10040600C(a1, a2, 0);
  v6 = v5 != 0;

  return v6;
}

uint64_t static ApplicationRecordUtilities.openApplication(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_100405B08, 0, 0);
}

uint64_t sub_100405B08()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004DD3FC();
    v0[21] = v3;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_100405C6C;
    v4 = swift_continuation_init();
    v0[17] = sub_100004CB8(&qword_100646F58);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100405E5C;
    v0[13] = &unk_1005FB5C8;
    v0[14] = v4;
    [v2 openApplicationWithBundleIdentifier:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100405C6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100405DE4;
  }

  else
  {
    v2 = sub_100405D7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100405D7C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100405DE4()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100405E5C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100008C70((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004CB8(qword_100646F60);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

NSString sub_100405F28()
{
  result = sub_1004DD3FC();
  static NSNotificationName.applicationRegistered = result;
  return result;
}

uint64_t *NSNotificationName.applicationRegistered.unsafeMutableAddressor()
{
  if (qword_100646D20 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.applicationRegistered;
}

id static NSNotificationName.applicationRegistered.getter()
{
  if (qword_100646D20 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.applicationRegistered;

  return v1;
}

id sub_10040600C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1004DD3FC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1004D7F4C();

    swift_willThrow();
  }

  return v6;
}

uint64_t static ArrayBuilder.buildBlock(_:)()
{
  sub_1004DD98C();
  sub_1004DD98C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1004DD7BC();
}

uint64_t static ArrayBuilder.buildExpression(_:)(uint64_t a1)
{
  v2 = sub_1004DE7CC();
  sub_1004DF00C();
  v3 = *(v2 - 8);
  swift_allocObject();
  sub_1004DD89C();
  (*(v3 + 16))(v4, a1, v2);
  v5.location = sub_1004DD98C();
  CFRange.init(_:)(v5);
  swift_getWitnessTable();
  v6 = sub_1004DD71C();

  return v6;
}

uint64_t Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(a1, a2, a3, a4);
  return v8;
}

{
  sub_100004CB8(&qword_100646FF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  sub_100035868(a1, inited + 32);
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  sub_100008D24(a1);
  return v9;
}

{
  sub_100004CB8(&qword_100646FF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = a1;
  *(inited + 40) = 0;
  v9 = swift_allocObject();
  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, a2, a3, a4);
  return v9;
}

uint64_t Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004DBEBC();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1004DBEFC();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 40) = _swiftEmptyArrayStorage;
  v13 = (v5 + 40);
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v43 = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v29[0] = v5 + 40;
    v29[1] = a1;
    v30 = a2;
    v15 = a1 + 32;
    v37 = a4;

    v38 = _swiftEmptyArrayStorage;
    do
    {
      sub_100035868(v15, aBlock);
      v17 = v40;
      v16 = v41;
      sub_100008C70(aBlock, v40);
      v18 = swift_allocObject();
      v19 = v5;
      swift_weakInit();
      v20 = *(v16 + 1);

      v20(sub_10040826C, v18, v17, v16);

      sub_100008D24(aBlock);
      sub_1004DD84C();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
      v38 = v43;
      v5 = v19;
      v15 += 40;
      --v14;
    }

    while (v14);

    v21 = v38;
    LOBYTE(a2) = v30;
    v13 = v29[0];
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  *v13 = v21;

  if (a2)
  {
    v22 = objc_opt_self();

    if (![v22 isMainThread])
    {
      sub_100406C5C();
      v23 = sub_1004DE14C();
      v41 = sub_100051F90;
      v42 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      v40 = &unk_1005FB638;
      v24 = _Block_copy(aBlock);

      v25 = v31;
      sub_1004DBEDC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1004071EC();
      sub_100004CB8(&unk_100648120);
      sub_100407244();
      v26 = v33;
      v27 = v36;
      sub_1004DE92C();
      sub_1004DE15C();
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      (*(v32 + 8))(v25, v34);
      return v5;
    }

    (*(v5 + 16))();
  }

  return v5;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_100406C5C();
    v12 = v5;
    v9 = sub_1004DE14C();
    aBlock[4] = sub_1004072A8;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005FB660;
    v10 = _Block_copy(aBlock);

    sub_1004DBEDC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004071EC();
    sub_100004CB8(&unk_100648120);
    sub_100407244();
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

uint64_t sub_100406C24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100406C5C()
{
  result = qword_100648110;
  if (!qword_100648110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100648110);
  }

  return result;
}

uint64_t Whitetail.Binding.add(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100008C70(a1, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_1004072B0, v5, v3, v4);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1004DD84C();
    if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004DD8BC();
    }

    sub_1004DD90C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100406F78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Whitetail.Binding.add(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = a1._rawValue + 32;
    do
    {
      sub_100035868(v3, v9);
      v5 = v10;
      v4 = v11;
      sub_100008C70(v9, v10);
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = *(v4 + 8);

      v8 = v12;
      v7(sub_10040826C, v6, v5, v4);
      if (v8)
      {

        v12 = 0;
      }

      else
      {
        v12 = 0;

        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1004DD84C();
        if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004DD8BC();
        }

        sub_1004DD90C();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      sub_100008D24(v9);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_100407170(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t sub_1004071D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1004071EC()
{
  result = qword_100646FE8;
  if (!qword_100646FE8)
  {
    sub_1004DBEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646FE8);
  }

  return result;
}

unint64_t sub_100407244()
{
  result = qword_100646FF0;
  if (!qword_100646FF0)
  {
    sub_100008DE4(&unk_100648120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646FF0);
  }

  return result;
}

uint64_t Whitetail.Binding.description.getter()
{
  sub_1004DEAAC(21);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  sub_1004DD5FC(v4);
  v5._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  sub_1004DD5FC(v6);
  sub_1004DEC6C();
  v7._countAndFlagsBits = 0x6576726573626F20;
  v7._object = 0xEB000000003D7372;
  sub_1004DD5FC(v7);
  swift_beginAccess();

  v0 = sub_1004DD88C();
  v2 = v1;

  v8._countAndFlagsBits = v0;
  v8._object = v2;
  sub_1004DD5FC(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  sub_1004DD5FC(v9);
  return 0;
}

uint64_t Whitetail.Binding.deinit()
{

  return v0;
}

uint64_t Whitetail.Binding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id DistributedNotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_10001185C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100012680;
  v11[3] = &unk_1005FB6B0;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:a3 handler:v8];
  _Block_release(v8);

  return v9;
}

id sub_1004075C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MusicDarwinNotificationObserver);
  v11[4] = sub_100051F90;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100012680;
  v11[3] = &unk_1005FB980;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithNotificationName:v5 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t NotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for NotificationObserver();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v7 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v7 + 32) = 1;
  *(v7 + 48) = sub_10001185C;
  *(v7 + 56) = v6;
  v8 = objc_opt_self();

  v9 = a3;

  v10 = [v8 defaultCenter];
  *(v7 + 40) = v10;
  v11 = *(v7 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;

  v14 = v11;
  [v13 addObserver:v7 selector:"handleNotification:" name:v14 object:Strong];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100407838()
{

  return swift_deallocObject();
}

uint64_t KeyValueObservationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a1;
  v11[5] = a2;
  v12 = a3;

  v13 = sub_1004D7F7C();

  return v13;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004DD81C();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t UserDefaultsKeyValueTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = sub_100407AE8(a5, a6, a3, a4, sub_100051F90, v12);

  return v13;
}

uint64_t sub_100407AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v10 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v38 = a1;
  v39 = a2;

  v20 = sub_1004DD6DC();
  v22 = v21;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = &v19[*(v11 + 28)];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[*(v11 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_100646D78;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1006481D0;
  v27 = *(qword_1006481D0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v40;
  sub_100448FBC(v26, v19, v36, v37);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_100407FCC(v19);
  }

  sub_100408028(v19, v16);
  sub_10040808C(v19, v13);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_10040808C(v13, v31 + v30);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v32 = swift_allocObject();
  sub_10040808C(v16, v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v32;
  v33 = (v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v33 = sub_1004081EC;
  v33[1] = v31;
  return result;
}

uint64_t sub_100407D78(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_100407AE8(v8, v7, v5, v6, sub_100051F90, v9);

  return v10;
}

uint64_t sub_100407E2C()
{

  return swift_deallocObject();
}

uint64_t sub_100407EE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100407F34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100407F7C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100407FCC(uint64_t a1)
{
  v2 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100408028(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040808C(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004080F0()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1004D82AC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_1004081EC()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100448CEC(v2);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v11 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = a3;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v11 + 40) = v15;
  v16 = *(v11 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v11 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  if (a4)
  {
    v12 = &selRef_defaultCenter;
  }

  else
  {
    v12 = &selRef_default;
  }

  v13 = objc_opt_self();
  v14 = a1;

  v15 = [v13 *v12];
  *(v6 + 40) = v15;
  v16 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = v15;

  v19 = v16;
  [v18 addObserver:v6 selector:"handleNotification:" name:v19 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_100010A38(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_100010A38(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100408684(uint64_t a1)
{
  v3 = sub_1004DBEBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004DBEFC();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D7B7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v25 - v13;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1, v14);
  }

  v26 = v4;
  v27 = v3;
  v16 = *(v9 + 16);
  v16(&v25 - v13, a1, v8, v14);
  (v16)(v11, v15, v8);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  (*(v9 + 32))(v18 + v17, v15, v8);
  v19 = objc_opt_self();

  if ([v19 isMainThread])
  {
    (*(v1 + 48))(v11);
  }

  else
  {
    sub_100006F10(0, &qword_100648110);
    v25 = sub_1004DE14C();
    aBlock[4] = sub_100408ED0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005FB9F8;
    v21 = _Block_copy(aBlock);

    sub_1004DBEDC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004071EC();
    sub_100004CB8(&unk_100648120);
    sub_100407244();
    v22 = v29;
    v23 = v27;
    sub_1004DE92C();
    v24 = v25;
    sub_1004DE15C();
    _Block_release(v21);

    (*(v26 + 8))(v22, v23);
    (*(v28 + 8))(v7, v30);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t NotificationObserver.debugDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_1004DEAAC(65);
  v17._object = 0x80000001004F9E90;
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1004DD5FC(v17);
  v18._countAndFlagsBits = sub_1004DD43C();
  sub_1004DD5FC(v18);

  v19._countAndFlagsBits = 0x3D7463656A626F20;
  v19._object = 0xE800000000000000;
  sub_1004DD5FC(v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"description"])
    {
      v5 = [v4 description];
      swift_unknownObjectRelease();
      v2 = sub_1004DD43C();
      v7 = v6;

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0xE300000000000000;
LABEL_6:
  v20._countAndFlagsBits = v2;
  v20._object = v7;
  sub_1004DD5FC(v20);

  v21._countAndFlagsBits = 0x3D7265746E656320;
  v21._object = 0xE800000000000000;
  sub_1004DD5FC(v21);
  sub_100006F10(0, &unk_1006480F0);
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_1004DE5FC();

  if (v10)
  {
    v11 = 0xE700000000000000;
    v12._countAndFlagsBits = 0x746C7561666564;
  }

  else
  {
    v13 = [v8 description];
    v14 = sub_1004DD43C();
    v11 = v15;

    v12._countAndFlagsBits = v14;
  }

  v12._object = v11;
  sub_1004DD5FC(v12);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_1004DD5FC(v22);
  return 0;
}

uint64_t sub_100408E0C()
{
  v1 = sub_1004D7B7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100408F3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BrightnessManager.__allocating_init(windowScene:)(void *a1)
{
  v2 = swift_allocObject();
  BrightnessManager.init(windowScene:)(a1);
  return v2;
}

void *BrightnessManager.init(windowScene:)(void *a1)
{
  v1[2] = [objc_allocWithZone(BrightnessSystemClient) init];
  v3 = sub_100404B04(&off_1005FAA58);
  sub_100004CB8(&qword_100646DA0);
  swift_arrayDestroy();
  v1[3] = v3;
  v4 = sub_100404B04(&off_1005FAAA8);
  swift_arrayDestroy();
  v1[4] = v4;
  v5 = sub_100404C08(&off_1005FAAF8);
  sub_100404D04(&unk_1005FAB18);
  v1[5] = v5;
  v6 = sub_100404C08(&off_1005FAB30);
  sub_100404D04(&unk_1005FAB50);
  v1[6] = v6;
  v1[7] = _swiftEmptyArrayStorage;
  sub_100004CB8(&qword_100647220);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100511A20;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 16) = UISceneWillDeactivateNotification;
  swift_unknownObjectWeakAssign();
  *(v8 + 32) = 1;
  *(v8 + 48) = sub_1004096CC;
  *(v8 + 56) = v7;
  v9 = objc_opt_self();
  v10 = a1;

  swift_retain_n();
  v11 = UISceneWillDeactivateNotification;
  v12 = [v9 defaultCenter];
  *(v8 + 40) = v12;
  v13 = *(v8 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = v12;

  v16 = v13;
  [v15 addObserver:v8 selector:"handleNotification:" name:v16 object:Strong];

  swift_unknownObjectRelease();
  *(v27 + 32) = v8;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v19 + 16) = UISceneDidActivateNotification;
  swift_unknownObjectWeakAssign();
  *(v19 + 32) = 1;
  *(v19 + 48) = sub_1004096FC;
  *(v19 + 56) = v17;
  swift_retain_n();
  v20 = UISceneDidActivateNotification;
  v21 = [v9 defaultCenter];
  *(v19 + 40) = v21;
  v22 = *(v19 + 16);
  v23 = swift_unknownObjectWeakLoadStrong();
  v24 = v21;

  v25 = v22;
  [v24 addObserver:v19 selector:"handleNotification:" name:v25 object:v23];

  swift_unknownObjectRelease();
  *(v27 + 40) = v19;

  v1[7] = v27;

  return v1;
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  isa = sub_1004DD1FC().super.isa;
  v3 = sub_1004DD3FC();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004DD1FC().super.isa;
  v5 = sub_1004DD3FC();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t sub_100409480(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  isa = sub_1004DD1FC().super.isa;
  v3 = sub_1004DD3FC();
  [v1 setProperty:isa forKey:v3];

  v4 = sub_1004DD1FC().super.isa;
  v5 = sub_1004DD3FC();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100409694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Collection<>.compare<A>(with:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v157 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v146 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v121 - v17;
  v134 = swift_getAssociatedTypeWitness();
  v123 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v121 - v20;
  v21 = *(a7 + 8);
  v128 = sub_1004DED4C();
  __chkstk_darwin(v128);
  v127 = &v121 - v22;
  v129 = v21;
  v142 = sub_1004DED3C();
  v125 = *(v142 - 1);
  __chkstk_darwin(v142);
  v138 = &v121 - v23;
  v24 = *(a6 + 8);
  v25 = swift_getAssociatedTypeWitness();
  v132 = *(v25 - 8);
  __chkstk_darwin(v25);
  v145 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v160 = &v121 - v28;
  v151 = type metadata accessor for CollectionComparisonOperation();
  __chkstk_darwin(v151);
  v140 = (&v121 - v29);
  v161 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v158 = sub_1004DE7CC();
  v136 = *(v158 - 1);
  __chkstk_darwin(v158);
  v137 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v152 = &v121 - v32;
  __chkstk_darwin(v33);
  v35 = (&v121 - v34);
  v131 = sub_1004DED4C();
  __chkstk_darwin(v131);
  v130 = &v121 - v36;
  v141 = v24;
  v143 = sub_1004DED3C();
  v126 = *(v143 - 1);
  __chkstk_darwin(v143);
  v149 = &v121 - v37;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v38[6] = a8;
  if (a2)
  {
    v38[7] = a2;
    v38[8] = a3;
    v39 = sub_10040C35C;
  }

  else
  {
    v39 = sub_10040AC6C;
  }

  v144 = v39;
  sub_10000DE64(a2);
  v147 = v38;

  v153 = a4;
  v139 = a6;
  v40 = sub_1004DDD0C();
  v156 = a5;
  v41 = sub_1004DDD0C();
  result = sub_1004DD8DC();
  v168 = result;
  v135 = v41;
  v43 = __OFADD__(v41, 1);
  v44 = v41 + 1;
  if (v43)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v45 = sub_1004DD98C();
  v46 = sub_10040C1FC(&v168, v44, v45);

  v168 = v46;
  if (__OFADD__(v40, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v148 = v40;
  v154 = a7;
  v122 = a8;
  v163 = v45;
  v162 = sub_1004DD98C();
  v47 = sub_10040C1FC(&v168, v40 + 1, v162);

  v170 = v47;
  v169 = sub_1004DD8DC();
  sub_1004DD72C();
  sub_1004DED1C();
  v48 = v136 + 4;
  v49 = TupleTypeMetadata2;
  v141 = (v132 + 32);
  while (1)
  {
    v50 = v152;
    sub_1004DED2C();
    v51 = *v48;
    (*v48)(v35, v50, v158);
    v52 = *(*(v49 - 8) + 48);
    if (v52(v35, 1, v49) == 1)
    {
      break;
    }

    v53 = *v35;
    v54 = *v141;
    v55 = v35 + *(v49 + 48);
    v56 = v160;
    v57 = v161;
    (*v141)(v160, v55, v161);
    v58 = v140;
    *v140 = 0;
    *(v58 + 8) = 1;
    v58[2] = v53;
    (v54)(v58 + *(v151 + 40), v56, v57);
    result = sub_1004DD93C();
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v60 = v169;
    sub_1004DD98C();

    sub_1004DD8CC();
    v61 = v170;
    sub_10040C1A8(v59, v170);
    v62 = v61 + 8 * v59;
    sub_1004DD8CC();
    v63 = *(v62 + 32);
    result = _swift_isClassOrObjCExistentialType();
    v64 = v63 & 0xFFFFFFFFFFFFFF8;
    if ((result & 1) == 0)
    {
      v64 = v63;
    }

    if (!*(v64 + 16))
    {
      goto LABEL_51;
    }

    *(*(v62 + 32) + 32) = v60;

    v49 = TupleTypeMetadata2;
  }

  (*(v126 + 8))(v149, v143);

  v169 = sub_1004DD8DC();
  sub_1004DD72C();
  sub_1004DED1C();
  v65 = v152;
  v66 = TupleTypeMetadata2;
  sub_1004DED2C();
  v67 = v137;
  v51(v137, v65, v158);
  if (v52(v67, 1, v66) != 1)
  {
    v149 = *v141;
    v136 = v48;
    do
    {
      v68 = *v67;
      v69 = v67 + *(v66 + 48);
      v70 = v160;
      v71 = v161;
      v72 = v149;
      (v149)(v160, v69, v161);
      v73 = v140;
      *v140 = 1;
      *(v73 + 8) = 1;
      v73[2] = v68;
      (v72)(v73 + *(v151 + 40), v70, v71);
      result = sub_1004DD93C();
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_52;
      }

      v75 = v169;
      sub_1004DD98C();

      sub_1004DD8CC();
      v76 = v170;
      result = _swift_isClassOrObjCExistentialType();
      v77 = v76 & 0xFFFFFFFFFFFFFF8;
      if ((result & 1) == 0)
      {
        v77 = v76;
      }

      if (!*(v77 + 16))
      {
        goto LABEL_53;
      }

      sub_1004DD8CC();
      sub_10040C1A8(v74, *(v76 + 32));
      *(*(v76 + 32) + 8 * v74 + 32) = v75;

      v78 = v152;
      sub_1004DED2C();
      v67 = v137;
      v51(v137, v78, v158);
      v66 = TupleTypeMetadata2;
    }

    while (v52(v67, 1, TupleTypeMetadata2) != 1);
  }

  (*(v125 + 8))(v138, v142);

  v79 = v148;
  if (!v148 || !v135)
  {
LABEL_48:

    sub_1004DD99C();
    sub_1004DD99C();

    return v167;
  }

  result = sub_1004DDCFC();
  if (v79 >= 1 && v135 >= 1)
  {
    v158 = (v132 + 16);
    v143 = (v132 + 8);
    v149 = (v124 + 8);
    v142 = (v124 + 32);
    v138 = (v123 + 8);
    v137 = (v123 + 32);
    v80 = 1;
    while (1)
    {
      sub_1004DDCFC();
      v152 = (v80 - 1);
      v81 = 1;
      TupleTypeMetadata2 = v80;
      while (1)
      {
        v82 = sub_1004DDE1C();
        v83 = *v158;
        v84 = v160;
        v85 = v161;
        (*v158)(v160);
        v82(&v168, 0);
        v86 = sub_1004DDE1C();
        v87 = v145;
        v83(v145);
        v86(&v168, 0);
        v144(&v168, v84, v87);
        v88 = *v143;
        (*v143)(v87, v85);
        v88(v84, v85);
        if (v168 == 1)
        {
          sub_1004DD99C();
          sub_1004DD99C();

          v89 = v167;
          sub_1004DD98C();
          sub_1004DD8CC();
          v90 = v170;
          sub_10040C1A8(v81, v170);
          v91 = v90 + 8 * v81;
          sub_1004DD8CC();
          v92 = TupleTypeMetadata2;
          sub_10040C1A8(TupleTypeMetadata2, *(v91 + 32));
          *(*(v91 + 32) + 8 * v92 + 32) = v89;
        }

        else
        {
          v93 = (v81 - 1);
          sub_1004DD99C();
          sub_1004DD99C();

          sub_1004DD99C();
          sub_1004DD99C();

          sub_1004DD99C();
          sub_1004DD99C();

          v94 = sub_1004DD91C();
          v95 = sub_1004DD91C();
          v96 = sub_1004DD91C();
          v97 = v95 >= v94 ? v94 : v95;
          v98 = v96 >= v97 ? v97 : v96;
          if (v94 == v98)
          {

            v99 = sub_1004DDE1C();
            v100 = v160;
            v101 = v161;
            v83(v160);
            v99(&v168, 0);
            v102 = v140;
            *v140 = 0;
            v103 = &v167;
          }

          else
          {

            if (sub_1004DD91C() == v98)
            {

              v104 = sub_1004DDE1C();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v104(&v168, 0);
              v102 = v140;
              *v140 = 1;
              v103 = &v166;
              v93 = v152;
            }

            else
            {

              v105 = sub_1004DDE1C();
              v100 = v160;
              v101 = v161;
              v83(v160);
              v105(&v168, 0);
              v102 = v140;
              *v140 = 2;
              v103 = &v165;
            }
          }

          v92 = TupleTypeMetadata2;
          *(v102 + 8) = 1;
          v102[2] = v93;
          (*v141)(v102 + *(v151 + 40), v100, v101);
          sub_1004DD93C();
          v106 = *v103;
          sub_1004DD98C();
          sub_1004DD8CC();
          v107 = v170;
          sub_10040C1A8(v81, v170);
          v108 = v107 + 8 * v81;
          sub_1004DD8CC();
          sub_10040C1A8(v92, *(v108 + 32));
          *(*(v108 + 32) + 8 * v92 + 32) = v106;
        }

        v109 = v146;
        v110 = v164;
        v111 = v153;
        sub_1004DDD1C();
        v112 = *v149;
        v113 = AssociatedTypeWitness;
        (*v149)(v110, AssociatedTypeWitness);
        result = (*v142)(v110, v109, v113);
        if (v81 == v148)
        {
          break;
        }

        v43 = __OFADD__(v81++, 1);
        if (v43)
        {
          __break(1u);
          goto LABEL_50;
        }
      }

      v114 = v133;
      v115 = v155;
      sub_1004DDD1C();
      v112(v164, AssociatedTypeWitness);
      v116 = *v138;
      v117 = v134;
      (*v138)(v115, v134);
      (*v137)(v115, v114, v117);
      if (v92 == v135)
      {
        break;
      }

      v43 = __OFADD__(v92, 1);
      v80 = v92 + 1;
      if (v43)
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    sub_1004DD99C();
    sub_1004DD99C();

    v166 = sub_1004DD1CC();
    __chkstk_darwin(v166);
    v118 = v156;
    *(&v121 - 6) = v111;
    *(&v121 - 5) = v118;
    v119 = v154;
    *(&v121 - 4) = v120;
    *(&v121 - 3) = v119;
    *(&v121 - 2) = v122;
    swift_getWitnessTable();
    sub_1004DD78C();

    v116(v155, v134);

    return v168;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10040AC6C@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1004DD35C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10040ACEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for CollectionComparisonOperation();
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 40);

  return v10(v11, a4, a5);
}

uint64_t sub_10040AD80(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v41 = &v36 - v13;
  v14 = type metadata accessor for CollectionComparisonOperation();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v36 - v18;
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v36 = 1;
      v37 = v19;
      goto LABEL_8;
    }

LABEL_5:
    (*(v15 + 16))(&v36 - v18, a2, v14, v20);
    sub_1004DD98C();
    return sub_1004DD93C();
  }

  v36 = 0;
  v37 = v19;
LABEL_8:
  v39 = &v36;
  v40 = a1;
  v48 = *a1;
  __chkstk_darwin(v17);
  v38 = &v36 - 10;
  v24 = v43;
  v23 = v44;
  *(&v36 - 8) = a3;
  *(&v36 - 7) = v24;
  *(&v36 - 6) = a5;
  *(&v36 - 5) = v23;
  *(&v36 - 4) = a7;
  *(&v36 - 3) = v25;
  *(&v36 - 16) = v26;
  *(&v36 - 1) = a2;
  v27 = sub_1004DD98C();

  swift_getWitnessTable();
  v28 = v45;
  sub_1004DDD5C();

  if (v47 == 1)
  {
    (*(v15 + 16))(v21, a2, v14);
    return sub_1004DD93C();
  }

  else
  {
    v44 = v46;
    sub_1004DD99C();
    v38 = *(v21 + 2);
    v39 = v27;
    v43 = *(v15 + 8);
    v43(v21, v14);
    v45 = v28;
    v29 = *(a2 + 16);
    v30 = v41;
    v31 = v42;
    (*(v42 + 16))(v41, a2 + *(v14 + 40), AssociatedTypeWitness);
    v32 = v37;
    v33 = v38;
    if (v36)
    {
      v34 = v38;
    }

    else
    {
      v34 = v29;
    }

    if (v36)
    {
      v33 = v29;
    }

    *v37 = v34;
    *(v32 + 8) = 0;
    v32[2] = v33;
    (*(v31 + 32))(v32 + *(v14 + 40), v30, AssociatedTypeWitness);
    sub_1004DD95C();
    v35 = v43;
    v43(v21, v14);
    (*(v15 + 16))(v21, v32, v14);
    sub_1004DD93C();
    return v35(v32, v14);
  }
}

BOOL static CollectionComparisonOperationType.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

uint64_t sub_10040B204(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*(a1 + 8) != 1)
  {
    if ((a3 & 1) != 0 || v3 != a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    if ((a3 & 1) == 0 || a2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v3 != 1)
  {
    if ((a3 & 1) == 0 || a2 < 2)
    {
      return 0;
    }

LABEL_15:
    swift_getAssociatedTypeWitness();
    type metadata accessor for CollectionComparisonOperation();
    return sub_1004DD35C() & 1;
  }

  if ((a3 & 1) != 0 && a2 == 1)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_10040B390(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v4);

    return 0x6F72662065766F6DLL;
  }
}

uint64_t UICollectionView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C390;
  *(v17 + 24) = v16;
  v27 = sub_10001185C;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000121E8;
  v26 = &unk_1005FBAE8;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100016298;
    v26 = &unk_1005FBB10;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10040B6E8(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_1004D85FC();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_1004DD96C();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_100511DA0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_1004DD8FC();
      sub_1004DD8AC();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1004DEB1C();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_1004D859C();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        sub_100004CB8(&qword_100647370);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_1004DD85C().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertItemsAtIndexPaths:v26.super.isa];
          }

          else
          {
            [v46 reloadItemsAtIndexPaths:v26.super.isa];
          }
        }

        else
        {
          [v46 deleteItemsAtIndexPaths:v26.super.isa];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_1004D859C();
        v22 = v15;
        v23 = a4;
        isa = sub_1004D856C().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_1004D856C().super.isa;
        [v46 moveItemAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_1004DD96C();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10040C40C;
  *(v17 + 24) = v16;
  v27 = sub_100051F90;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000121E8;
  v26 = &unk_1005FBB88;
  v18 = _Block_copy(&aBlock);

  v19 = v8;

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100016298;
    v26 = &unk_1005FBBB0;
    a5 = _Block_copy(&aBlock);
  }

  [v19 performBatchUpdates:v18 completion:a5];
  _Block_release(a5);
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10040BD50(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_1004D85FC();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v14 = v13;
  v15 = type metadata accessor for CollectionComparisonOperation();
  v47 = *(v15 - 8);
  v36 = *(v47 + 64);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  a1(v16);
  v48 = a3;
  result = sub_1004DD96C();
  if (result)
  {
    v20 = 0;
    v45 = (v47 + 16);
    v43 = (v47 + 8);
    v38 = v42 + 16;
    v37 = xmmword_100511DA0;
    v39 = v12;
    v40 = a4;
    v44 = (v42 + 8);
    do
    {
      v27 = sub_1004DD8FC();
      sub_1004DD8AC();
      if (v27)
      {
        result = (*(v47 + 16))(v18, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, v15);
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1004DEB1C();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        (*v45)(v18, &v49, v15);
        result = swift_unknownObjectRelease();
        v28 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v29 = v14;
      sub_1004D859C();
      v30 = *v18;
      v31 = v18[8];
      (*v43)(v18, v15);
      if (v31 == 1)
      {
        sub_100004CB8(&qword_100647370);
        v32 = v42;
        v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v37;
        (*(v32 + 16))(v34 + v33, v12, v29);
        v26.super.isa = sub_1004DD85C().super.isa;

        if (v30)
        {
          if (v30 == 1)
          {
            [v46 insertRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }

          else
          {
            [v46 reloadRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
          }
        }

        else
        {
          [v46 deleteRowsAtIndexPaths:v26.super.isa withRowAnimation:100];
        }

        v12 = v39;
        a4 = v40;
        v14 = v29;
        v25 = v44;
      }

      else
      {
        v21 = v41;
        sub_1004D859C();
        v22 = v15;
        v23 = a4;
        isa = sub_1004D856C().super.isa;
        v14 = v29;
        v25 = v44;
        (*v44)(v21, v14);
        v26.super.isa = sub_1004D856C().super.isa;
        [v46 moveRowAtIndexPath:isa toIndexPath:v26.super.isa];

        a4 = v23;
        v15 = v22;
      }

      (*v25)(v12, v14);
      result = sub_1004DD96C();
      ++v20;
    }

    while (v28 != result);
  }

  return result;
}

uint64_t sub_10040C1A8(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10040C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004DD8DC();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1004DD98C();
    return v8;
  }

  return result;
}

uint64_t sub_10040C324()
{

  return swift_deallocObject();
}

uint64_t sub_10040C35C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10040C3A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10040C3C4()
{

  return swift_deallocObject();
}

uint64_t sub_10040C450()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10040C4D8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_10040C63C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

uint64_t initializeBufferWithCopyOfBuffer for CollectionComparisonOperationType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ControlEventHandler.__allocating_init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ControlEventHandler.init<A>(control:events:handler:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ControlEventHandler.init<A>(control:events:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5[3] = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v5[4] = sub_10040CAEC;
  v5[5] = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    [v13 addTarget:v5 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v5;
}

void sub_10040CA30(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastUnknownClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

uint64_t sub_10040CAB4()
{

  return swift_deallocObject();
}

uint64_t ControlEventHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t ControlEventHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100006F10(0, &qword_100647378);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = sub_1004DE62C();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, sub_10040CF9C, v11}];
}

void sub_10040CD68(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10040D174(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  sub_100006F10(0, &qword_100647468);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

void sub_10040CE68(void *a1, uint64_t a2, void (*a3)(void *))
{
  if ([a1 sender])
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10040D174(v8);
LABEL_8:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  Strong = v5;
LABEL_9:
  a3(Strong);
}

uint64_t sub_10040CF5C()
{

  return swift_deallocObject();
}

void sub_10040CFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100006F10(0, &qword_100647378);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v10 = sub_1004DE62C();
  [v7 addAction:v10 forControlEvents:{a1, 0, 0, 0, sub_10040D168, v9}];
}

uint64_t sub_10040D0F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10040D128()
{

  return swift_deallocObject();
}

uint64_t sub_10040D174(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100648130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v4 = sub_1004D809C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Datavault.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  return sub_10040D2B0(v1 + v3, a1);
}

uint64_t sub_10040D2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Datavault.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_10040D380(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10040D380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Datavault.__allocating_init(url:storageClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D809C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D803C();
  v12 = v11;
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v13 = sub_10040D724(v10, v12, v9, a2, a3);
  (*(v7 + 8))(a1, v6);
  return v13;
}

void *Datavault.__allocating_init(path:storageClass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004D809C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v17 - v13;
  sub_1004D7FAC();
  (*(v9 + 16))(v11, v14, v8);
  swift_allocObject();
  v15 = sub_10040D724(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v14, v8);
  return v15;
}

void *sub_10040D724(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v84 = a4;
  v85 = a1;
  v94 = a2;
  v86 = *v5;
  v7 = sub_1004D966C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v76[-v13];
  __chkstk_darwin(v12);
  v16 = &v76[-v15];
  v17 = sub_1004D809C();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v19 = &v76[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  v21 = *(v8 + 56);
  v93 = v5;
  v21(v5 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger, 1, 1, v7);
  v92 = a3;
  sub_1004D800C();
  v22 = [objc_opt_self() defaultManager];
  v89 = v19;
  v23 = v87;
  NSFileManager.createDirectoryIfNeeded(at:)();
  v87 = v23;
  if (!v23)
  {
    v28 = v11;
    v29 = v16;
    v83 = v20;
    v81 = v14;
    v96[0] = 0;
    v30 = v85;
    v31 = v94;
    v32 = sub_1004DD3FC();
    v82 = v22;
    [v22 fileExistsAtPath:v32 isDirectory:v96];

    if (v96[0] == 1)
    {
      sub_1004DD52C();
      sub_1004DD52C();
      v33 = rootless_check_datavault_flag();

      if (v33)
      {
        v34 = v83;
        v35 = v93;
        swift_beginAccess();
        v36 = v35 + v34;
        v24 = v35;
        v37 = v7;
        v80 = *(v8 + 48);
        if (!v80(v36, 1, v7))
        {
          v38 = v29;
          (*(v8 + 16))(v29, v24 + v83, v37);

          v78 = v37;
          v39 = sub_1004D964C();
          v40 = sub_1004DDF9C();

          v77 = v40;
          v79 = v39;
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v95[0] = v42;
            *v41 = 136315138;
            *(v41 + 4) = sub_10042E62C(v85, v94, v95);
            v43 = v79;
            _os_log_impl(&_mh_execute_header, v79, v77, "Found unsecure directory %s attempting to convert to datavault", v41, 0xCu);
            sub_100008D24(v42);
          }

          else
          {
          }

          v37 = v78;
          (*(v8 + 8))(v38, v78);
        }

        v61 = v37;
        sub_1004DD52C();
        sub_1004DD52C();

        v62 = rootless_convert_to_datavault();

        if (v62)
        {

          v63 = sub_1004D9A3C();
          sub_10040E5B0();
          swift_allocError();
          *v64 = v63;
          *(v64 + 4) = 1;
          swift_willThrow();
          v22 = v82;
          goto LABEL_4;
        }

        v65 = v24;
        v66 = v83;
        swift_beginAccess();
        if (v80(v65 + v66, 1, v37))
        {
          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          swift_endAccess();

          v31 = v94;
          v24 = v65;
        }

        else
        {
          v67 = v8;
          v68 = v81;
          (*(v8 + 16))(v81, v65 + v66, v37);
          swift_endAccess();
          v69 = v94;

          v70 = sub_1004D964C();
          v71 = sub_1004DDF9C();

          v24 = v65;
          if (os_log_type_enabled(v70, v71))
          {
            v72 = v68;
            v73 = v67;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v95[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_10042E62C(v85, v69, v95);
            _os_log_impl(&_mh_execute_header, v70, v71, "Datavault directory conversion successful %s", v74, 0xCu);
            sub_100008D24(v75);

            (*(v73 + 8))(v72, v61);
          }

          else
          {

            (*(v67 + 8))(v68, v61);
          }

          v56 = v90;
          v57 = v91;
          (*(v90 + 8))(v89, v91);
          v31 = v69;
        }

LABEL_20:
        (*(v56 + 32))(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_url, v92, v57);
        v24[2] = v85;
        v24[3] = v31;
        return v24;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);

      v31 = v94;
    }

    else
    {
      v44 = v83;
      v45 = v93;
      swift_beginAccess();
      v46 = v8;
      v47 = v7;
      if (!(*(v8 + 48))(&v45[v44], 1, v7))
      {
        v48 = v93 + v44;
        v49 = v28;
        (*(v8 + 16))(v28, v48, v7);

        v50 = sub_1004D964C();
        v51 = sub_1004DDF9C();

        v52 = v50;
        if (os_log_type_enabled(v50, v51))
        {
          v53 = v46;
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v95[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_10042E62C(v30, v31, v95);
          _os_log_impl(&_mh_execute_header, v52, v51, "Creating DataVault directory %s", v54, 0xCu);
          sub_100008D24(v55);

          (*(v53 + 8))(v49, v47);
        }

        else
        {

          (*(v46 + 8))(v28, v47);
        }
      }

      sub_1004D9A5C();
      sub_1004D9A6C();
      sub_1004D9A7C();
      sub_1004DD52C();
      sub_1004DD52C();

      v58 = rootless_mkdir_datavault();

      if (v58)
      {

        v59 = sub_1004D9A3C();
        sub_10040E5B0();
        swift_allocError();
        *v60 = v59;
        *(v60 + 4) = 0;
        swift_willThrow();
        v22 = v82;
        goto LABEL_3;
      }

      v56 = v90;
      v57 = v91;
      (*(v90 + 8))(v89, v91);
    }

    v24 = v93;
    goto LABEL_20;
  }

LABEL_3:
  v24 = v93;
LABEL_4:

  v25 = v91;
  v26 = *(v90 + 8);
  v26(v92, v91);
  v26(v89, v25);
  sub_10040E230(v24 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t Datavault.deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_1004D809C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10040E230(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);
  return v0;
}

uint64_t sub_10040E230(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Datavault.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;
  v2 = sub_1004D809C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10040E230(v0 + OBJC_IVAR____TtC14MusicUtilities9Datavault_logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Datavault()
{
  result = qword_1006474A0;
  if (!qword_1006474A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040E3A0()
{
  sub_1004D809C();
  if (v0 <= 0x3F)
  {
    sub_10040E478();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10040E478()
{
  if (!qword_1006474B0)
  {
    sub_1004D966C();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1006474B0);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Datavault.Error(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Datavault.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Datavault.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_10040E570(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10040E588(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

unint64_t sub_10040E5B0()
{
  result = qword_100647540;
  if (!qword_100647540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647540);
  }

  return result;
}

id sub_10040E6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10040E714()
{
  result = swift_slowAlloc();
  qword_100647548 = result;
  return result;
}

id CADisplayLink.init(handler:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayLinkHandler();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC14MusicUtilitiesP33_A1FC62D80C043A876151FA559C82DA5918DisplayLinkHandler__handler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v14.receiver = v5;
  v14.super_class = v4;

  v7 = objc_msgSendSuper2(&v14, "init");
  v8 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v7 selector:{"handleDisplayLinkFired:", v14.receiver, v14.super_class}];
  v9 = qword_100646D28;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_100647548;
  v12 = v7;
  objc_setAssociatedObject(v10, v11, v12, 1);

  return v10;
}

uint64_t EdgePairSequence.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1004DE7CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *v2;
  sub_1004DD98C();
  swift_getWitnessTable();
  if (sub_1004DDDBC())
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    swift_getWitnessTable();
    v18[0] = v5;
    sub_1004DDE2C();
    swift_getWitnessTable();
    sub_1004DDE3C();
    v15 = v18[0];
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    (*(v9 + 32))(a2, v12, v4);
    (*(v6 + 32))(a2 + v17, v8, v15);
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }
}

uint64_t sub_10040EB40()
{
  v0 = sub_10040EBF4();

  return v0;
}

uint64_t sub_10040EBA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10040EC18(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
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
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_10007F594;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t static Task<>.delayed(by:priority:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_100004CB8(&unk_100647600);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  sub_10040EE00(a1, &v15 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;

  return sub_10040F35C(0, 0, v12, &unk_100535EE8, v13);
}

uint64_t sub_10040EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100647600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040EE70(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10040EE98, 0, 0);
}

uint64_t sub_10040EE98(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
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
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_10040EF80;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10040EF80()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_10040F150;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_10040F150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10040F244()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10040F284(uint64_t a1)
{
  v4 = *(v1 + 3);
  v5 = *(v1 + 2);
  v6 = v1[5];
  v8 = *(v1 + 6);
  v7 = *(v1 + 7);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_10040EE70(a1, v6, v5, v4, v8, v7);
}

uint64_t sub_10040F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004CB8(&unk_100647600);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_10040EE00(a3, &v23[-1] - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10040F690(v11);
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004DD9BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004DD52C();
      sub_100045BA4(v19 + 32, v23);

      v20 = v23[0];
      sub_10040F690(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10040F690(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t static Task<>.userFeedbackDelayed(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&unk_100647600);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_1004DDA5C();
  v9 = sub_1004DDA8C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = static Task<>.delayed(by:priority:task:)(v8, a1, a2, a3, 2.0);
  sub_10040F690(v8);
  return v10;
}

uint64_t sub_10040F690(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100647600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CASpringAnimation.springParameters.getter()
{
  [v0 mass];
  v2 = v1;
  [v0 stiffness];
  v4 = v3;
  [v0 damping];
  v6 = v5;
  v7 = objc_allocWithZone(UISpringTimingParameters);

  return [v7 initWithMass:v2 stiffness:v4 damping:v6 initialVelocity:{0.0, 0.0}];
}

void CASpringAnimation.springParameters.setter(void *a1)
{
  [a1 mass];
  [v1 setMass:?];
  [a1 stiffness];
  [v1 setStiffness:?];
  [a1 damping];
  [v1 setDamping:?];
  [v1 setInitialVelocity:0.0];
}

void (*CASpringAnimation.springParameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  [v1 mass];
  v4 = v3;
  [v1 stiffness];
  v6 = v5;
  [v1 damping];
  *a1 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:v4 stiffness:v6 damping:v7 initialVelocity:{0.0, 0.0}];
  return sub_10040F8F0;
}

void sub_10040F8F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1;
  if (a2)
  {
    v4 = v2;
    [v4 mass];
    [v3 setMass:?];
    [v4 stiffness];
    [v3 setStiffness:?];
    [v4 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }

  else
  {
    [v2 mass];
    [v3 setMass:?];
    [v5 stiffness];
    [v3 setStiffness:?];
    [v5 damping];
    [v3 setDamping:?];
    [v3 setInitialVelocity:0.0];
  }
}

void static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  [a1 settlingDuration];
  v15 = v14;
  [a1 mass];
  v17 = v16;
  [a1 stiffness];
  v19 = v18;
  [a1 damping];
  v21 = v20;
  v27 = a3;
  v28 = a4;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100012680;
  v26 = &unk_1005FBE40;
  v22 = _Block_copy(&v23);

  if (a5)
  {
    v27 = a5;
    v28 = a6;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100016298;
    v26 = &unk_1005FBE68;
    a5 = _Block_copy(&v23);
  }

  [objc_opt_self() _animateUsingSpringWithDuration:a2 delay:v22 options:a5 mass:v15 stiffness:a7 damping:v17 initialVelocity:v19 animations:v21 completion:0.0];
  _Block_release(a5);
  _Block_release(v22);
}

uint64_t sub_10040FBF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setAnimationTimingFunction:a1];
  v23 = a3;
  v24 = a4;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100012680;
  v22 = &unk_1005FBE90;
  v17 = _Block_copy(&v19);

  if (a5)
  {
    v23 = a5;
    v24 = a6;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100016298;
    v22 = &unk_1005FBEB8;
    a5 = _Block_copy(&v19);
  }

  [objc_opt_self() animateWithDuration:a2 delay:v17 options:a5 animations:a7 completion:a8];
  _Block_release(a5);
  _Block_release(v17);
  return [v16 commit];
}

char *sub_10040FDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink] = 0;
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = &v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  v17 = *&v15[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating];
  *v16 = a1;
  *(v16 + 1) = a2;
  v18 = v15;
  sub_10000DE74(v17);
  v19 = &v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  v20 = *&v18[OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion];
  *v19 = a3;
  *(v19 + 1) = a4;
  sub_10000DE74(v20);

  return v18;
}

void sub_10040FEC4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating))
  {
    [a1 duration];
    v2 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
    *v2 = v3;
    *(v2 + 8) = 0;
    v4 = CACurrentMediaTime();
    v5 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = [objc_opt_self() displayLinkWithTarget:v1 selector:"displayLinkFiredWithDisplayLink:"];
    v7 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
    *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink) = v6;
    v8 = v6;

    if (v8)
    {
      v9 = [objc_opt_self() currentRunLoop];
      [v8 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1004100D0(void *a1)
{
  result = [a1 timestamp];
  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime + 8))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
  if (!v4)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = (v3 - *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime)) / *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration);

  v4(v6, v5);

  return sub_10000DE74(v4);
}

id CAAnimation.progress.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v8 = a1;
      v8[1] = a2;
      sub_10000DE74(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_10040FDC0(a1, a2, 0, 0);
    [v3 setDelegate:v11];

    return sub_10000DE74(a1);
  }

  return result;
}

uint64_t (*CAAnimation.progress.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating + 8);
      sub_10000DE64(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1004104A8;
}

uint64_t sub_100410508(void *a1, void (*a2)(void, void))
{
  if (![v2 delegate])
  {
    return 0;
  }

  type metadata accessor for CAAnimationCompletionHandler();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = (v5 + *a1);
    v7 = *v6;
    a2(*v6, v6[1]);
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

id CAAnimation.completion.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 delegate];
  if (result)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v9 = *(v7 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v8 = a1;
      v8[1] = a2;
      sub_10000DE74(v9);

      return swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

    v11 = sub_10040FDC0(0, 0, a1, a2);
    [v3 setDelegate:v11];

    return sub_10000DE74(a1);
  }

  return result;
}

uint64_t (*CAAnimation.completion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if ([v1 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v5 = *(v3 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion + 8);
      sub_10000DE64(v4);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_100410780;
}

uint64_t sub_1004107C0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t CALayer.addAsyncAnimation(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_1004DDA4C();
  v4[7] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100410904, v6, v5);
}

{
  v7 = sub_100004CB8(&qword_100647620);
  v8 = __chkstk_darwin(v7);
  v13 = a1;
  v14 = v3;
  v15 = a2;
  v16 = a3;
  (*(v10 + 104))(&v12[-v9], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  return sub_1004DDACC();
}

uint64_t sub_100410904()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1004DDA3C();
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100410A28;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 13, v5, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001004FA110, sub_100411140, v6, &type metadata for Bool);
}

uint64_t sub_100410A28()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100410B88, v3, v2);
}

uint64_t sub_100410B88()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_100410BEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v8 = sub_100004CB8(&unk_1006476E0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v42 - v11;
  (*(v9 + 16))(&v42 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v17 = *(v15 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v16 = sub_100411E74;
      v16[1] = v14;
      sub_10000DE74(v17);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v18 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v19 = sub_10040FDC0(0, 0, sub_100411E74, v14);
  [a2 setDelegate:v19];

LABEL_6:
  v20 = objc_opt_self();
  [v20 begin];
  [v20 setDisableActions:1];
  if (a5)
  {
    v21 = sub_1004DD3FC();
  }

  else
  {
    v21 = 0;
  }

  [v44 addAnimation:a2 forKey:v21];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    if (a5)
    {
      v23 = [v22 toValue];
      v24 = sub_1004DD3FC();
      [v44 setValue:v23 forKey:v24];
      swift_unknownObjectRelease();
    }

    return [v20 commit];
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    return [v20 commit];
  }

  result = [v25 animations];
  v27 = _swiftEmptyArrayStorage;
  if (result)
  {
    v28 = result;
    sub_100411D90();
    v29 = sub_1004DD87C();

    v45 = _swiftEmptyArrayStorage;
    if (v29 >> 62)
    {
LABEL_32:
      v30 = sub_1004DED5C();
      if (v30)
      {
LABEL_16:
        v31 = 0;
        do
        {
          v32 = v31;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v33 = sub_1004DEB2C();
            }

            else
            {
              if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v33 = *(v29 + 8 * v32 + 32);
            }

            v34 = v33;
            v31 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }

          sub_1004DD84C();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004DD8BC();
          }

          sub_1004DD90C();
          v27 = v45;
        }

        while (v31 != v30);
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_16;
      }
    }

LABEL_33:
  }

  if (!(v27 >> 62))
  {
    v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  result = sub_1004DED5C();
  v35 = result;
  if (!result)
  {
LABEL_46:

    return [v20 commit];
  }

LABEL_36:
  v43 = v20;
  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v37 = sub_1004DEB2C();
      }

      else
      {
        v37 = *(v27 + 8 * i + 32);
      }

      v38 = v37;
      v39 = [v37 keyPath];
      if (v39)
      {
        v40 = v39;
        v41 = [v38 toValue];
        [v44 setValue:v41 forKey:v40];

        swift_unknownObjectRelease();
        v38 = v40;
      }
    }

    v20 = v43;
    return [v20 commit];
  }

  __break(1u);
  return result;
}

id sub_100411268(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v7 = sub_100004CB8(&qword_1006476C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = *(v8 + 16);
  v57 = a1;
  v55 = v14;
  (v14)(&v54 - v12, a1, v7, v11);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v54 = *(v8 + 32);
  v54(v16 + v15, v13, v7);
  v17 = a2;
  if ([a2 delegate])
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = (v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      v20 = *(v18 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animating);
      *v19 = sub_100411C98;
      v19[1] = v16;
      sub_10000DE74(v20);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v21 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v22 = sub_10040FDC0(sub_100411C98, v16, 0, 0);
  [a2 setDelegate:v22];

LABEL_6:
  v23 = v56;
  v55(v56, v57, v7);
  v24 = swift_allocObject();
  v54(v24 + v15, v23, v7);
  v25 = [v17 delegate];
  v26 = v59;
  if (v25)
  {
    type metadata accessor for CAAnimationCompletionHandler();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      v29 = *(v27 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
      *v28 = sub_100411D14;
      v28[1] = v24;
      sub_10000DE74(v29);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v30 = objc_allocWithZone(type metadata accessor for CAAnimationCompletionHandler());

  v31 = sub_10040FDC0(0, 0, sub_100411D14, v24);
  [v17 setDelegate:v31];

LABEL_11:
  v32 = objc_opt_self();
  [v32 begin];
  [v32 setDisableActions:1];
  if (v26)
  {
    v33 = sub_1004DD3FC();
  }

  else
  {
    v33 = 0;
  }

  [v60 addAnimation:v17 forKey:v33];

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    if (v26)
    {
      v35 = [v34 toValue];
      v36 = sub_1004DD3FC();
      [v60 setValue:v35 forKey:v36];
      swift_unknownObjectRelease();
    }

    return [v32 commit];
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    return [v32 commit];
  }

  result = [v37 animations];
  v39 = _swiftEmptyArrayStorage;
  if (result)
  {
    v40 = result;
    sub_100411D90();
    v41 = sub_1004DD87C();

    v61 = _swiftEmptyArrayStorage;
    if (v41 >> 62)
    {
LABEL_37:
      v42 = sub_1004DED5C();
      if (v42)
      {
LABEL_21:
        v43 = 0;
        do
        {
          v44 = v43;
          while (1)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v45 = sub_1004DEB2C();
            }

            else
            {
              if (v44 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v45 = *(v41 + 8 * v44 + 32);
            }

            v46 = v45;
            v43 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v44;
            if (v43 == v42)
            {
              goto LABEL_38;
            }
          }

          sub_1004DD84C();
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004DD8BC();
          }

          sub_1004DD90C();
          v39 = v61;
        }

        while (v43 != v42);
      }
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
  }

  if (!(v39 >> 62))
  {
    v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  result = sub_1004DED5C();
  v47 = result;
  if (!result)
  {
LABEL_51:

    return [v32 commit];
  }

LABEL_41:
  v59 = v32;
  if (v47 >= 1)
  {
    for (i = 0; i != v47; ++i)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v49 = sub_1004DEB2C();
      }

      else
      {
        v49 = *(v39 + 8 * i + 32);
      }

      v50 = v49;
      v51 = [v49 keyPath];
      if (v51)
      {
        v52 = v51;
        v53 = [v50 toValue];
        [v60 setValue:v53 forKey:v52];

        swift_unknownObjectRelease();
        v50 = v52;
      }
    }

    v32 = v59;
    return [v32 commit];
  }

  __break(1u);
  return result;
}

uint64_t sub_100411910(double a1)
{
  v2 = sub_100004CB8(&qword_1006476D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v7 = a1;
  v8 = 0;
  sub_100004CB8(&qword_1006476C8);
  sub_1004DDAAC();
  return (*(v3 + 8))(v5, v2);
}

void sub_100411A10(char a1)
{
  v2 = sub_100004CB8(&qword_1006476D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  v6 = a1 & 1;
  v7 = 1;
  sub_100004CB8(&qword_1006476C8);
  sub_1004DDAAC();
  (*(v3 + 8))(v5, v2);
  sub_1004DDABC();
}

id static CATransaction.performWithoutAnimation(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions:1]);

  return [v2 commit];
}

void sub_100411BB4(char a1)
{
  v3 = OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink;
  v4 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_displayLink);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_animationDuration;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_startTime;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC14MusicUtilities28CAAnimationCompletionHandler_completion);
  if (v8)
  {

    v8(a1 & 1);

    sub_10000DE74(v8);
  }
}

uint64_t sub_100411C98(double a1)
{
  sub_100004CB8(&qword_1006476C8);

  return sub_100411910(a1);
}

void sub_100411D14(char a1)
{
  sub_100004CB8(&qword_1006476C8);

  sub_100411A10(a1);
}

unint64_t sub_100411D90()
{
  result = qword_1006476D0;
  if (!qword_1006476D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006476D0);
  }

  return result;
}

uint64_t sub_100411DF0(uint64_t *a1)
{
  v2 = sub_100004CB8(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_100411E74()
{
  sub_100004CB8(&unk_1006476E0);
  sub_100004CB8(&unk_1006476E0);
  return sub_1004DD9DC();
}

double CGSize.nonNegative()(double result)
{
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

CGFloat static CGAffineTransform.+ infix(_:_:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v4;
  *&t1.tx = a1[2];
  v5 = a2[1];
  *&t2.a = *a2;
  *&t2.c = v5;
  *&t2.tx = a2[2];
  CGAffineTransformConcat(&v9, &t1, &t2);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a3 = *&v9.a;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t static CGPoint.topLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topLeft = *&a1;
  unk_1006741A0 = *&a2;
  return result;
}

uint64_t static CGPoint.topCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topCenter = *&a1;
  *algn_100647758 = a2;
  return result;
}

uint64_t static CGPoint.topRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.topRight = *&a1;
  *algn_100647768 = a2;
  return result;
}

uint64_t static CGPoint.centerLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerLeft = *&a1;
  unk_100647778 = *&a2;
  return result;
}

uint64_t static CGPoint.center.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.center = *&a1;
  unk_100647788 = *&a2;
  return result;
}

uint64_t static CGPoint.centerRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.centerRight = *&a1;
  unk_100647798 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomLeft.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomLeft = *&a1;
  unk_1006477A8 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomCenter.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomCenter = *&a1;
  unk_1006477B8 = *&a2;
  return result;
}

uint64_t static CGPoint.bottomRight.setter(double a1, double a2)
{
  result = swift_beginAccess();
  static CGPoint.bottomRight = *&a1;
  unk_1006477C8 = *&a2;
  return result;
}

CTFrameRef CTFramesetterRef.createFrame(_:)(double a1, double a2, double a3, double a4)
{
  v5 = CGPathCreateWithRect(*&a1, 0);
  v8.location = 0;
  v8.length = 0;
  Frame = CTFramesetterCreateFrame(v4, v8, v5, 0);

  return Frame;
}

double CTFramesetterRef.suggestedFrameSize(constraints:)(double a1, double a2)
{
  v4.location = 0;
  v4.length = 0;
  *&result = *&CTFramesetterSuggestFrameSizeWithConstraints(v2, v4, 0, *&a1, 0);
  return result;
}

CGPoint **CTFrameRef.lineOrigins.getter()
{
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = sub_1004DED5C();
    goto LABEL_4;
  }

  type metadata accessor for CTLine(0);
  sub_1004DD86C();

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v3 = v0;
  v4 = sub_1004146B8(v2, v3);

  return v4;
}

CGPoint **sub_100412A58(CGPoint **result, uint64_t *a2, CTFrameRef frame)
{
  v3 = *result;
  if (*result)
  {
    v9.location = 0;
    v9.length = 0;
    CTFrameGetLineOrigins(frame, v9, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLine(0);
      sub_1004DD86C();

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *a2 = v8;
        return result;
      }
    }

    else
    {

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v8 = sub_1004DED5C();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *CTFrameRef.lineFrames(lines:origins:flippedCoordinates:useExtendedLineBounds:)(unint64_t a1, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(a1 + 32);
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v7 = sub_1004DED5C();
    if (!v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v9 = sub_1004DEB2C();
LABEL_6:
  v10 = v9;
  if (!*(a2 + 16))
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_36:

    return v4;
  }

  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (v4)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  options = v13;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v9, v13);
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  if ((a3 & 1) == 0)
  {
    v11 = 0.0;
  }

  v4 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100413DAC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v17 = v4[2];
  v16 = v4[3];
  if (v17 >= v16 >> 1)
  {
    v4 = sub_100413DAC((v16 > 1), v17 + 1, 1, v4);
  }

  v4[2] = v17 + 1;
  v18 = &v4[5 * v17];
  *(v18 + 4) = v10;
  *(v18 + 5) = v12;
  v18[6] = 0.0;
  v18[7] = width;
  v18[8] = height;
  v19 = v7 - 1;
  if (v7 != 1)
  {
    v20 = (a2 + 56);
    v21 = 5;
    v22 = 0.0;
    while (1)
    {
      v23 = v21 - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = sub_1004DEB2C();
      }

      else
      {
        if (v23 >= *(v8 + 16))
        {
          goto LABEL_37;
        }

        v24 = *(a1 + 8 * v21);
      }

      v10 = v24;
      v25 = *(a2 + 16);
      if (v23 == v25)
      {
        goto LABEL_36;
      }

      if (v23 >= v25)
      {
        goto LABEL_38;
      }

      v26 = *(v20 - 1);
      v27 = *v20;
      v39 = CTLineGetBoundsWithOptions(v24, options);
      v28 = v39.size.width;
      v29 = v39.size.height;
      v30 = v22 + v11 - v27;
      if (a3)
      {
        v31 = v22 + v11 - v27;
      }

      else
      {
        v31 = 0.0;
      }

      if (a3)
      {
        v11 = v27;
        v22 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100413DAC(0, v4[2] + 1, 1, v4);
      }

      v33 = v4[2];
      v32 = v4[3];
      if (v33 >= v32 >> 1)
      {
        v4 = sub_100413DAC((v32 > 1), v33 + 1, 1, v4);
      }

      v4[2] = v33 + 1;
      v34 = &v4[5 * v33];
      *(v34 + 4) = v10;
      *(v34 + 5) = v26;
      v34[6] = v31;
      v34[7] = v28;
      v34[8] = v29;
      ++v21;
      v20 += 2;
      --v19;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v19)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *CTFrameRef.linesWithFrames(flippedCoordinates:useExtendedLineBounds:)(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_1004DD86C();
  }

  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTLine(0);
    sub_1004DD86C();

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v7 = sub_1004DED5C();
LABEL_6:

  v8 = v3;
  v9 = sub_1004146B8(v7, v8);

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_46;
  }

  v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_47:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = _swiftEmptyArrayStorage[4];
      goto LABEL_11;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v10 = sub_1004DED5C();
    if (!v10)
    {
      goto LABEL_47;
    }
  }

  v12 = sub_1004DEB2C();
LABEL_11:
  v13 = v12;
  if (v9[2])
  {
    v15 = v9[4];
    v14 = *(v9 + 5);
    if (v4)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    options = v16;
    BoundsWithOptions = CTLineGetBoundsWithOptions(v12, v16);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    if ((a1 & 1) == 0)
    {
      v14 = 0.0;
    }

    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100413DAC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v20 = v4[2];
    v19 = v4[3];
    if (v20 >= v19 >> 1)
    {
      v4 = sub_100413DAC((v19 > 1), v20 + 1, 1, v4);
    }

    v4[2] = v20 + 1;
    v21 = &v4[5 * v20];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    v21[6] = 0.0;
    v21[7] = width;
    v21[8] = height;
    v22 = v10 - 1;
    if (v10 != 1)
    {
      v23 = (v9 + 7);
      v24 = 5;
      v25 = 0.0;
      do
      {
        v26 = v24 - 4;
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v27 = sub_1004DEB2C();
        }

        else
        {
          if (v26 >= *(v11 + 16))
          {
            goto LABEL_44;
          }

          v27 = _swiftEmptyArrayStorage[v24];
        }

        v13 = v27;
        v28 = v9[2];
        if (v26 == v28)
        {
          goto LABEL_43;
        }

        if (v26 >= v28)
        {
          goto LABEL_45;
        }

        v29 = *(v23 - 1);
        v30 = *v23;
        v42 = CTLineGetBoundsWithOptions(v27, options);
        v31 = v42.size.width;
        v32 = v42.size.height;
        v33 = v25 + v14 - v30;
        if (a1)
        {
          v34 = v25 + v14 - v30;
        }

        else
        {
          v34 = 0.0;
        }

        if (a1)
        {
          v14 = v30;
          v25 = v33;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100413DAC(0, v4[2] + 1, 1, v4);
        }

        v36 = v4[2];
        v35 = v4[3];
        if (v36 >= v35 >> 1)
        {
          v4 = sub_100413DAC((v35 > 1), v36 + 1, 1, v4);
        }

        v4[2] = v36 + 1;
        v37 = &v4[5 * v36];
        *(v37 + 4) = v13;
        *(v37 + 5) = v29;
        v37[6] = v34;
        v37[7] = v31;
        v37[8] = v32;
        ++v24;
        v23 += 2;
        --v22;
        v11 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      }

      while (v22);
    }

LABEL_48:

    return v4;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_43:

  return v4;
}

void *sub_1004132BC(uint64_t (*a1)(uint64_t), void (*a2)(void))
{
  v4 = a1(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a2(0);
    sub_1004DD86C();
  }

  return _swiftEmptyArrayStorage;
}

__C::_NSRange_optional __swiftcall CTRunRef.convertToGlyphRange(textRange:stringIndices:)(__C::_NSRange textRange, Swift::OpaquePointer stringIndices)
{
  v3 = v2;
  length = textRange.length;
  location = textRange.location;
  Status = CTRunGetStatus(v3);
  v10 = location + length;
  v11 = __OFADD__(location, length);
  if (Status)
  {
    if (!v11)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 1;
      v15 = location + length;
      v12 = location;
      goto LABEL_10;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v12 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v13 = -1;
  v14 = 0x8000000000000000;
  v15 = location;
LABEL_10:
  v9 = 0;
  v16 = 0;
  v17 = 0;
LABEL_11:
  v18 = v15 >= v12;
  if (Status)
  {
    v18 = v12 >= v15;
  }

  if (v18)
  {
    v19 = 0;
    v20 = v12 != v15 || v9;
    v9 = 1;
    if (v20)
    {
      v8 = 0;
      goto LABEL_60;
    }

    v21 = v12;
    v8 = 0;
    if (!v17 && v16 == 0x8000000000000000)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v17 = !__OFADD__(v12, v13);
    if (__OFADD__(v12, v13))
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0;
    }

    if (__OFADD__(v12, v13))
    {
      v21 = v14;
    }

    else
    {
      v21 = v12 + v13;
    }
  }

  v22 = *(stringIndices._rawValue + 2);
  v23 = v22;
  do
  {
    if (!v23)
    {
      v12 = v21;
      goto LABEL_11;
    }

    v19 = v23 - 1;
    v24 = *(stringIndices._rawValue + v23-- + 3);
  }

  while (v24 != v12);
  v9 = 0;
  v8 = 1;
  if (v22 == 1 || length == 1)
  {
    goto LABEL_60;
  }

  if ((Status & 1) == 0)
  {
    v25 = 1;
    goto LABEL_37;
  }

  if (v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v25 = -1;
  location += length;
LABEL_37:
  v26 = v12 >= location;
  if ((Status & 1) == 0)
  {
    v26 = location >= v12;
  }

  if (!v26)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if (Status)
    {
      v27 = 0x8000000000000000;
    }

    v8 = 1;
    while (1)
    {
      v29 = location + v25;
      if (__OFADD__(location, v25))
      {
        v29 = v27;
      }

      if (v22)
      {
        break;
      }

LABEL_44:
      v28 = v12 >= v29;
      if ((Status & 1) == 0)
      {
        v28 = v29 >= v12;
      }

      location = v29;
      if (v28)
      {
        goto LABEL_59;
      }
    }

    v30 = 0;
    while (*(stringIndices._rawValue + v30 + 4) != location)
    {
      if (v22 == ++v30)
      {
        goto LABEL_44;
      }
    }

    v32 = v19 - v30;
    v31 = v19 - v30 < 0;
    if (v19 >= v30)
    {
      v19 = v30;
    }

    if (v31)
    {
      v32 = -v32;
    }

    v8 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
LABEL_59:
      v9 = 0;
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  v9 = 0;
  v8 = 1;
LABEL_60:
  Status = v19;
LABEL_67:
  result.value.length = v8;
  result.value.location = Status;
  result.is_nil = v9;
  return result;
}

void CTRunRef.drawingWidth(range:positions:)(CFRange range, CGPoint *a2)
{
  v3 = v2;
  location = range.location;
  ImageBounds = CTRunGetImageBounds(v3, 0, range);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  if (a2)
  {
    v10 = a2;
    if ((location & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (*&v10[1].x > location)
      {

        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        CGRectGetWidth(v18);
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  GlyphCount = CTRunGetGlyphCount(v3);
  if ((GlyphCount & 0x8000000000000000) == 0)
  {
    v12 = GlyphCount;
    if (GlyphCount)
    {
      _s3__C7CGPointVMa_3(0);
      v13 = v3;
      v10 = sub_1004DD8EC();
      *&v10[1].x = v12;
    }

    else
    {
      v14 = v3;
      v10 = _swiftEmptyArrayStorage;
    }

    v16.location = 0;
    v16.length = 0;
    CTRunGetPositions(v3, v16, v10 + 2);
    v15 = CTRunGetGlyphCount(v3);
    if (v12 < v15)
    {
      goto LABEL_14;
    }

    *&v10[1].x = v15;

    if ((location & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

CFIndex CTRunRef.positions.getter()
{
  result = CTRunGetGlyphCount(v0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      _s3__C7CGPointVMa_3(0);
      v3 = v0;
      v4 = sub_1004DD8EC();
      *&v4[1].x = v2;
    }

    else
    {
      v5 = v0;
      v4 = _swiftEmptyArrayStorage;
    }

    v6.location = 0;
    v6.length = 0;
    CTRunGetPositions(v0, v6, v4 + 2);
    result = CTRunGetGlyphCount(v0);
    if (v2 >= result)
    {
      *&v4[1].x = result;

      return v4;
    }
  }

  __break(1u);
  return result;
}

void CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(CFRange a1)
{
  length = a1.length;
  a1.length = 1;
  CTRunRef.drawingWidth(range:positions:)(a1, length);
}

double CTRunRef.typographicBounds(forGlyphAtIndex:)(CFRange range)
{
  v3.location = range.location;
  v3.length = 1;
  return CTRunGetTypographicBounds(v1, v3, 0, 0, 0);
}

CFIndex sub_10041383C(uint64_t a1, void (*a2)(const __CTRun *, void, void, void *))
{
  result = CTRunGetGlyphCount(v2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v2;
    if (v5)
    {
      v7 = sub_1004DD8EC();
      v7[2] = v5;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    a2(v6, 0, 0, v7 + 4);
    result = CTRunGetGlyphCount(v6);
    if (v5 >= result)
    {
      v7[2] = result;

      return v7;
    }
  }

  __break(1u);
  return result;
}

id CTRunRef.PartialRunView.__allocating_init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v12 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v13 = a4;
  v13[1] = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setOpaque:{0, v17.receiver, v17.super_class}];

  return v15;
}

id CTRunRef.PartialRunView.init(run:range:textPosition:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run] = a1;
  v7 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range];
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = &v5[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition];
  *v8 = a4;
  v8[1] = a5;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for CTRunRef.PartialRunView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setOpaque:{0, v12.receiver, v12.super_class}];

  return v10;
}

void CTRunRef.PartialRunView.draw(_:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CTRunRef.PartialRunView();
  objc_msgSendSuper2(&v16, "drawRect:", a1, a2, a3, a4);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() blueColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    Height = CGRectGetHeight(v17);
    CGAffineTransformMakeTranslation(&v15, 0.0, Height + *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_textPosition + 8]);
    CGAffineTransformScale(&v14, &v15, 1.0, -1.0);
    v15 = v14;
    CGContextSetTextMatrix(v10, &v15);
    CTRunDraw(*&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_run], v10, *&v4[OBJC_IVAR____TtCE14MusicUtilitiesaSo8CTRunRef14PartialRunView_range]);
  }
}

id CTRunRef.PartialRunView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CTRunRef.PartialRunView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100413DAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100647850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100647858);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100413F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100647848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10041403C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100647830);
  v10 = *(sub_100004CB8(&qword_100647838) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100647838) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100414240(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100004CB8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_10041433C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004CB8(&qword_100647820);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100647828);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1004144DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

CGPoint **sub_1004146B8(CGPoint **result, const __CTFrame *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    _s3__C7CGPointVMa_3(0);
    v5 = sub_1004DD8EC();
    *&v5[1].x = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v7 = 0.0;
  v6[0] = v5 + 2;
  v6[1] = v4;
  result = sub_100412A58(v6, &v7, a2);
  if (v2)
  {
    if (*&v7 <= v4)
    {
      v5[1].x = v7;

      return v5;
    }

    goto LABEL_12;
  }

  if (*&v7 <= v4)
  {
    v5[1].x = v7;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1004DBEBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DBEFC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_100406C5C();
  v13 = sub_1004DE14C();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FBFE8;
  v14 = _Block_copy(aBlock);

  sub_1004DBEDC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1004071EC();
  sub_100004CB8(&unk_100648120);
  sub_100407244();
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100414A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static OS_dispatch_queue.syncOnMainIfNeeded(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_100406C5C();
  v5 = sub_1004DE14C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_100107FC0;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000121E8;
  v8[3] = &unk_1005FC038;
  v7 = _Block_copy(v8);

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t OS_dispatch_queue.asyncAfter(_:block:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DBEBC();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DBEFC();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DBF2C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_1004DBF1C();
  sub_1004DBF8C();
  v17 = *(v11 + 8);
  v17(v14, v10);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FC060;
  v18 = _Block_copy(aBlock);

  sub_1004DBEDC();
  v24 = _swiftEmptyArrayStorage;
  sub_1004071EC();
  sub_100004CB8(&unk_100648120);
  sub_100407244();
  sub_1004DE92C();
  sub_1004DE10C();
  _Block_release(v18);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
  v17(v16, v10);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DBF2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  v11 = sub_1004DBEBC();
  __chkstk_darwin(v11);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FC088;
  _Block_copy(aBlock);
  v14[1] = _swiftEmptyArrayStorage;
  sub_1004071EC();

  sub_100004CB8(&unk_100648120);
  sub_100407244();
  sub_1004DE92C();
  sub_1004DBF5C();
  swift_allocObject();
  sub_1004DBF3C();

  sub_1004DBF1C();
  sub_1004DBF8C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1004DE11C();

  return (v12)(v10, v4);
}

uint64_t OS_dispatch_queue.asyncAfterUIFeedbackDeadline(_:)()
{
  v0 = sub_1004DBF2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1004DBF1C();
  sub_1004DBF8C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_1004DE11C();
  return (v7)(v6, v0);
}

uint64_t static OS_dispatch_queue.UIFeedbackDeadline.getter()
{
  v0 = sub_1004DBF2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DBF1C();
  sub_1004DBF8C();
  return (*(v1 + 8))(v3, v0);
}

void NSFileManager.createDirectoryIfNeeded(at:)()
{
  v1 = v0;
  sub_1004D803C();
  LOBYTE(v15) = 0;
  v2 = sub_1004DD3FC();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v15];

  if (v3)
  {
    if (v15)
    {
      return;
    }

    sub_1004D7FDC(v15);
    v6 = v5;
    v15 = 0;
    v7 = [v0 removeItemAtURL:v5 error:&v15];

    v8 = v15;
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v15;
  }

  sub_1004D7FDC(v4);
  v11 = v10;
  v15 = 0;
  v12 = [v1 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v15];

  v8 = v15;
  if (v12)
  {
    v13 = v15;
    return;
  }

LABEL_7:
  v14 = v8;
  sub_1004D7F4C();

  swift_willThrow();
}

Swift::tuple_exists_Bool_isDirectory_Bool __swiftcall NSFileManager.directoryExists(at:)(Swift::String at)
{
  v7 = 0;
  v2 = sub_1004DD3FC();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v7];

  v5 = v3;
  result.isDirectory = v4;
  result.exists = v5;
  return result;
}

uint64_t NSFileManager.groupCacheURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100647868);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1004D809C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DD3FC();
  v15 = [v2 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (v15)
  {
    sub_1004D802C();

    v16 = *(v11 + 56);
    v16(v7, 0, 1, v10);
  }

  else
  {
    v16 = *(v11 + 56);
    v16(v7, 1, 1, v10);
  }

  sub_1004157E8(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100415858(v9);
    v17 = 1;
  }

  else
  {
    sub_1004D7FEC();
    v18 = *(v11 + 8);
    v18(v9, v10);
    sub_1004D7FEC();
    v18(v13, v10);
    v17 = 0;
  }

  return (v16)(a1, v17, 1, v10);
}

uint64_t sub_1004157E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415858(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004158C4()
{
  result = qword_100647870;
  if (!qword_100647870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647870);
  }

  return result;
}

uint64_t String.sha256Data.getter()
{
  v0 = sub_1004DD18C();
  v17 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DD17C();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DD48C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DD47C();
  v9 = sub_1004DD44C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v11 >> 60 != 15)
  {
    sub_100010530(v9, v11);
    sub_10041658C(&qword_100647878, &type metadata accessor for SHA256);
    sub_1004DD16C();
    sub_100010530(v9, v11);
    sub_100416144(v9, v11, v2);
    sub_100010584(v9, v11);
    sub_100010584(v9, v11);
    v12 = v18;
    sub_1004DD15C();
    (*(v17 + 8))(v2, v0);
    v22 = v3;
    v23 = sub_10041658C(&qword_100647880, &type metadata accessor for SHA256Digest);
    v13 = sub_1000357EC(v21);
    v14 = v19;
    (*(v19 + 16))(v13, v12, v3);
    sub_100008C70(v21, v22);
    sub_1004D7D8C();
    sub_100010584(v9, v11);
    (*(v14 + 8))(v12, v3);
    v9 = v20;
    sub_100008D24(v21);
  }

  return v9;
}

uint64_t Data.Digest.SHA256.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD18C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647878, &type metadata accessor for SHA256);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_100416144(a1, a2, v7);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.MD5.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_100416368(a1, a2, v7);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Data.Digest.SHA512.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004DD19C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10041658C(&qword_100647890, &type metadata accessor for SHA512);
  sub_1004DD16C();
  sub_100010530(a1, a2);
  sub_1004165D4(a1, a2, v7);
  sub_100010598(a1, a2);
  sub_1004DD15C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100416144(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004DD18C();
      sub_10041658C(&qword_100647878, &type metadata accessor for SHA256);
      return sub_1004DD14C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100647878, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100647878, &type metadata accessor for SHA256);
  }

  sub_1004DD18C();
  sub_10041658C(&qword_100647878, &type metadata accessor for SHA256);
  return sub_1004DD14C();
}

uint64_t sub_100416368(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004DD1AC();
      sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5);
      return sub_1004DD14C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100647888, &type metadata accessor for Insecure.MD5);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.MD5, &qword_100647888, &type metadata accessor for Insecure.MD5);
  }

  sub_1004DD1AC();
  sub_10041658C(&qword_100647888, &type metadata accessor for Insecure.MD5);
  return sub_1004DD14C();
}

uint64_t sub_10041658C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004165D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004DD19C();
      sub_10041658C(&qword_100647890, &type metadata accessor for SHA512);
      return sub_1004DD14C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100647890, &type metadata accessor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1004168C4(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100647890, &type metadata accessor for SHA512);
  }

  sub_1004DD19C();
  sub_10041658C(&qword_100647890, &type metadata accessor for SHA512);
  return sub_1004DD14C();
}

uint64_t sub_1004167F8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100416814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100416868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1004168C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1004D7CAC();
  if (!result || (result = sub_1004D7CDC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004D7CCC();
      a5(0);
      sub_10041658C(a6, a7);
      return sub_1004DD14C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004169A8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v5;
    *(result + 24) = a5 < 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a4 + a5;
    v7 = __OFADD__(a4, a5);
    if (v5 > v6)
    {
      v6 = v5;
    }

    v8 = v6 - v5;
    v9 = 1;
    while (1)
    {
      if (a5 < 1)
      {
        v5 = 0;
        a3 = 0;
        goto LABEL_24;
      }

      if (v7)
      {
        break;
      }

      if (v5 - v6 + v9 == 1)
      {
        v5 = v6;
        a3 = v8;
        goto LABEL_24;
      }

      *a2 = v5 + v9 - 1;
      if (a3 == v9)
      {
        v5 += v9;
        goto LABEL_24;
      }

      ++a2;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.append(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10(v7);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_1004DD93C();
  }

  return v11 & 1;
}

uint64_t Array.append<A>(contentsOf:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11(v8);
  if (v12)
  {
    (*(v7 + 16))(v10, a1, a5);
    sub_1004DD92C();
  }

  return v12 & 1;
}

uint64_t Array.item(where:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD5C();
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    sub_1004DD99C();
    v4 = 0;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v10 - v8;
  sub_1004DD95C();
  (*(v4 + 16))(v6, v9, v3);
  sub_1004DD94C();
  (*(v4 + 8))(v9, v3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDCEC();
  sub_100004CB8(&qword_100647898);
  if (sub_1004DDE6C())
  {
    sub_1004DD99C();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v4, 1, a1);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = a1;
  return Array.inserting(separator:)(sub_100416FE0, v4, a2, a3);
}

uint64_t Array.inserting(separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1004DD91C();
  if (result < 2)
  {

    return a3;
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v12[8] = 0;
    v12[9] = 2 * result - 1;
    __chkstk_darwin(result);
    v12[2] = a4;
    v12[3] = a3;
    v12[4] = a1;
    v12[5] = a2;
    v9 = sub_100004CB8(&qword_100647898);
    v10 = sub_10041758C();
    return sub_10041716C(sub_100417124, v12, v9, a4, &type metadata for Never, v10, &protocol witness table for Never, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_100417124(void *a1)
{
  if (*a1)
  {
    return (*(v1 + 32))();
  }

  else
  {
    return sub_1004DD99C();
  }
}

uint64_t sub_10041716C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1004DDD0C();
  if (!v19)
  {
    return sub_1004DD8DC();
  }

  v41 = v19;
  v45 = sub_1004DEC1C();
  v32 = sub_1004DEC2C();
  sub_1004DEBBC(v41);
  result = sub_1004DDCFC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1004DDE1C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1004DEC0C();
      result = sub_1004DDD4C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10041758C()
{
  result = qword_1006478A0;
  if (!qword_1006478A0)
  {
    sub_100008DE4(&qword_100647898);
    sub_100417618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006478A0);
  }

  return result;
}

unint64_t sub_100417618()
{
  result = qword_1006478A8;
  if (!qword_1006478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006478A8);
  }

  return result;
}

uint64_t Set.insert(_:if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12(v9))
  {
    (*(v8 + 16))(v11, a2, v7);
    v13 = sub_1004DDC6C();
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(a1, 1, 1, v7);
    v13 = 0;
  }

  return v13 & 1;
}
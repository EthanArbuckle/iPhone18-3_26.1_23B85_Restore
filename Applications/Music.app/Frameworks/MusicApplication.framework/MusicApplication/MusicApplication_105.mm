void sub_95CD3C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v55.origin.x = *(v4 + 176);
  v8 = *(v4 + 184);
  v9 = -v55.origin.x;
  v55.size.width = *(v4 + 192);
  v55.size.height = *(v4 + 200);
  v55.origin.y = v8;
  MaxX = CGRectGetMaxX(v55);
  Height = CGRectGetHeight(*(v4 + 176));
  v12 = *(v4 + 208);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView];
    v14 = v12;
    v15 = v13;
    [v15 setFrame:{v9, v8, MaxX, Height}];
    [v14 setFrame:{*(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200)}];
  }

  else
  {
    v16 = [objc_allocWithZone(_s4WordC8WordViewCMa()) initWithFrame:{v9, v8, MaxX, Height}];
    v17 = *(a1 + 456);
    UIView.Shadow.init(color:opacity:radius:offset:)(v17, v54, 0.0, *(a1 + 464), 0.0, 0.0);
    v15 = v16;
    v18 = v17;
    v19 = [v15 layer];
    v20 = [v15 traitCollection];
    [v20 displayScale];
    v22 = v21;

    [v19 setRasterizationScale:v22];
    v23 = [v15 layer];
    [v23 setShouldRasterize:1];

    v24 = v54[0];
    UIView.shadow.setter(v54);

    v25 = *(v4 + 176);
    v26 = *(v4 + 184);
    v27 = *(v4 + 192);
    v28 = *(v4 + 200);
    v29 = objc_allocWithZone(_s4WordC17WordContainerViewCMa());
    sub_9554E4(a2, a3);
    v30 = sub_95DAD8(v15, a2, a3, v25, v26, v27, v28);
    sub_7FCD4(v54);
    v31 = *(v4 + 208);
    *(v4 + 208) = v30;
    v14 = v30;

    if (!*(v4 + 208))
    {
      v32 = *(v4 + 128);
      *(v4 + 128) = 0;
      v33 = *(v4 + 136);
      *(v4 + 136) = 2;
      sub_955490(v32, v33);
    }
  }

  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  v34 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_923E94(9, *(v34 + 40)))
  {
    v35 = objc_opt_self();
    v36 = [v35 blueColor];
    v37 = [v36 colorWithAlphaComponent:0.7];

    [v14 setBackgroundColor:v37];
    v38 = [v35 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v40, v39 & 1, v41);
  }

  v42 = *(v4 + 104);
  if (*(v4 + 64) == 1)
  {
    if (v42 >> 62)
    {
      v43 = sub_ABB060();
      if (v43)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
      if (v43)
      {
LABEL_13:
        if (v43 >= 1)
        {
          v44 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              sub_ABAE20();
            }

            else
            {
            }

            ++v44;
            v45 = sub_95A864();
            [v15 addSubview:v45];
          }

          while (v43 != v44);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  v46 = sub_95D248(*(v4 + 104));
  v47 = v46;
  if (v46 >> 62)
  {
    v48 = sub_ABB060();
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v48 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  if (v48 < 1)
  {
    goto LABEL_35;
  }

  v49 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      sub_ABAE20();
    }

    else
    {
    }

    ++v49;
    v50 = sub_955B44();
    [v15 addSubview:v50];
  }

  while (v48 != v49);
LABEL_30:

LABEL_31:
  v51 = *(v4 + 208);
  *(v4 + 208) = v14;
  v14;

  if (!*(v4 + 208))
  {
    v52 = *(v4 + 128);
    *(v4 + 128) = 0;
    v53 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_955490(v52, v53);
  }
}

void *sub_95D248(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_ABAE20();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 88);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_ABB060() : *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_ABB060();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_ABAE30();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_ABB060();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_95E4C8();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E231A0);
              v18 = sub_735EC4(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s5GlyphCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_ABB060();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_ABB060();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_95D588(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  *(v5 + 88) = a5;
  return _swift_task_switch(sub_95D5AC, 0, 0);
}

uint64_t sub_95D5AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 208);
    v0[13] = v2;
    if (v2)
    {
      v3 = v2;

      sub_AB9940();
      v0[14] = sub_AB9930();
      v5 = sub_AB98B0();
      v0[15] = v5;
      v0[16] = v4;

      return _swift_task_switch(sub_95D770, v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 128);
  v8 = *(v6 + 136);
  sub_955664(v7, v8);

  if (v8 < 2)
  {
    sub_955490(v7, v8);
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 128);
      *(v9 + 128) = 1;
      v11 = *(v9 + 136);
      *(v9 + 136) = 2;
      sub_955490(v10, v11);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_95D770()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_95D824;
  v2 = *(v0 + 96);

  return sub_95E744(v2);
}

uint64_t sub_95D824()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_95D944, v3, v2);
}

uint64_t sub_95D944()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_95D9B0, 0, 0);
}

uint64_t sub_95D9B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 128);
    v3 = *(Strong + 136);
    sub_955664(v2, v3);

    if (v3 >= 2)
    {
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_955490(v2, v3);
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 128);
    *(v4 + 128) = 1;
    v6 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_955490(v5, v6);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

char *sub_95DAD8(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
  *&v7[v15] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView] = a1;
  v16 = &v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;
  sub_9554E4(a2, a3);
  v24.receiver = v7;
  v24.super_class = _s4WordC17WordContainerViewCMa();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a4, a5, a6, a7);
  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  v19 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_923E94(9, *(v19 + 40)) || !a2)
  {
    [v18 addSubview:v17];
    sub_1253F8(a2, a3);
  }

  else
  {
    [v18 setMaskView:v17];
    v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
    v21 = *&v18[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
    [v18 bounds];
    [v21 setFrame:?];

    [*&v18[v20] setBackgroundColor:a2];
    v22 = *&v18[v20];
    [v18 addSubview:v22];
  }

  return v18;
}

void sub_95DD54()
{
  v1 = v0;
  sub_13C80(0, &qword_E23770);
  v2 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
  v3 = sub_AB9260();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  v6 = v2;
  CASpringAnimation.springParameters.setter(v6);
  v7 = v5;
  v8 = [v1 layer];
  [v8 shadowOpacity];

  isa = sub_AB9AD0().super.super.isa;
  [v7 setFromValue:isa];

  v10 = sub_AB9C10().super.super.isa;
  [v7 setToValue:v10];

  v11 = [v1 layer];
  v12 = [v7 keyPath];
  [v11 addAnimation:v7 forKey:v12];

  v13 = [v1 layer];
  [v13 setShadowOpacity:0.0];
}

void sub_95DF6C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 472) + (*(a1 + 480) - *(a1 + 472)) * a2;
  if (a3 <= 3.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 3.0;
  }

  sub_13C80(0, &qword_E23770);
  v7 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v6);
  v8 = sub_AB9260();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v7 settlingDuration];
  [v10 setDuration:?];

  v11 = v7;
  CASpringAnimation.springParameters.setter(v11);
  v12 = v10;
  v13 = [v4 layer];
  [v13 shadowOpacity];

  isa = sub_AB9AD0().super.super.isa;
  [v12 setFromValue:isa];

  v15 = sub_AB9AD0().super.super.isa;
  [v12 setToValue:v15];

  v16 = [v4 layer];
  v17 = [v12 keyPath];
  [v16 addAnimation:v12 forKey:v17];

  v19 = [v4 layer];
  *&v18 = v5;
  [v19 setShadowOpacity:v18];
}

id sub_95E1D4()
{
  v2.receiver = v0;
  v2.super_class = _s4WordC17WordContainerViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_95E350()
{

  sub_955490(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_95E3B4()
{
  sub_95E350();

  return swift_deallocClassInstance();
}

unint64_t sub_95E468()
{
  result = qword_E23140;
  if (!qword_E23140)
  {
    _s4WordCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23140);
  }

  return result;
}

unint64_t sub_95E4C8()
{
  result = qword_E231A8;
  if (!qword_E231A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E231A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E231A8);
  }

  return result;
}

uint64_t sub_95E52C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_95E564()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_95E5A4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_95D588(v7, a1, v4, v5, v6);
}

uint64_t sub_95E668()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_95E6C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_95E708()
{

  return swift_deallocObject();
}

uint64_t sub_95E744(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  sub_AB9940();
  *(v2 + 32) = sub_AB9930();
  v4 = sub_AB98B0();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_95E7E0, v4, v3);
}

uint64_t sub_95E7E0()
{
  if (v0[2] <= 0.0)
  {
    v4 = *(v0 + 3);
    v5 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
    *(v0 + 9) = v5;
    v6 = sub_AB9260();
    v7 = [objc_opt_self() animationWithKeyPath:v6];
    *(v0 + 10) = v7;

    v8 = v7;
    [v5 settlingDuration];
    [v8 setDuration:?];

    CASpringAnimation.springParameters.setter(v5);
    v9 = v8;
    v10 = [v4 layer];
    [v10 shadowOpacity];

    isa = sub_AB9AD0().super.super.isa;
    [v9 setFromValue:isa];

    v12 = sub_AB9C10().super.super.isa;
    [v9 setToValue:v12];

    *(v0 + 11) = [v4 layer];
    v13 = [v9 keyPath];
    if (v13)
    {
      v14 = v13;
      v15 = sub_AB92A0();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 12) = v17;
    v18 = swift_task_alloc();
    *(v0 + 13) = v18;
    *v18 = v0;
    v18[1] = sub_95EE4C;

    return CALayer.addAsyncAnimation(_:forKey:)(v9, v15, v17);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 7) = v1;
    *v1 = v0;
    v1[1] = sub_95EAB8;
    v2 = v0[2];

    return static Task<>.sleep(for:)(v2);
  }
}

uint64_t sub_95EAB8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_95F014;
  }

  else
  {
    v5 = sub_95EBF4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_95EBF4()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
  v0[9] = v2;
  v3 = sub_AB9260();
  v4 = [objc_opt_self() animationWithKeyPath:v3];
  v0[10] = v4;

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  CASpringAnimation.springParameters.setter(v2);
  v6 = v5;
  v7 = [v1 layer];
  [v7 shadowOpacity];

  isa = sub_AB9AD0().super.super.isa;
  [v6 setFromValue:isa];

  v9 = sub_AB9C10().super.super.isa;
  [v6 setToValue:v9];

  v0[11] = [v1 layer];
  v10 = [v6 keyPath];
  if (v10)
  {
    v11 = v10;
    v12 = sub_AB92A0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[12] = v14;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_95EE4C;

  return CALayer.addAsyncAnimation(_:forKey:)(v6, v12, v14);
}

uint64_t sub_95EE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_95EFA8, v4, v3);
}

uint64_t sub_95EFA8()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_95F014()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_95F0A0()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    v3 = OBJC_IVAR___MusicSBS_TextContentView_specs;
    memcpy(__dst, (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
    memcpy(v13, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v13));
    memcpy(v11, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v11));
    memmove(&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), 0x2B0uLL);
    sub_95313C(__dst, v12);
    sub_95313C(__dst, v12);
    v4 = v2;
    sub_95313C(v13, v12);
    sub_953198(v11);
    sub_939DA4(v13);
    sub_953198(v13);
    sub_953198(__dst);

    v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v5)
    {
      memcpy(v8, (v1 + v3), sizeof(v8));
      memcpy(v12, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v12));
      memcpy(v9, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v9));
      memmove(&v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + v3), 0x2B0uLL);
      sub_95313C(v8, &v7);
      sub_95313C(v8, &v7);
      v6 = v5;
      sub_95313C(v12, &v7);
      sub_953198(v9);
      sub_939DA4(v12);
      sub_953198(v12);
      sub_953198(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_95F260(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling);
  v3 = result & 1;
  *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = result;
  if (v2 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v5)
      {
        *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_95F2BC(uint64_t result, char a2)
{
  v3 = result & 1;
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) != (result & 1))
  {
    v4 = v2;
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = v3;
    v5 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v5)
    {
      v7 = result;
      v8 = v5;
      sub_939E50(v7 & 1, a2 & 1);

      v9 = *(v4 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v9)
      {
        v10 = v9;
        sub_939E50(v7 & 1, a2 & 1);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v3;
      if (a2)
      {
        if (v7)
        {
          v13 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
        }

        else
        {
          sub_13C80(0, &qword_E23770);
          v13 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
        }

        v15.super.isa = v13;
        sub_13C80(0, &qword_E23940);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v15).super.isa;
        v18[4] = sub_9619CC;
        v18[5] = v12;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_1B5EB4;
        v18[3] = &block_descriptor_249;
        v17 = _Block_copy(v18);

        [(objc_class *)isa addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)isa startAnimation];
      }

      else
      {

        sub_95F538(v14, v7 & 1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_95F538(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
    v6 = *(Strong + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v6)
    {
      if (a2)
      {
        v7 = xmmword_B03DB0;
        v8 = xmmword_B28300;
        v9 = 0uLL;
      }

      else
      {
        v8 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 128];
        v7 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 144];
        v9 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 160];
      }

      v13[0] = v8;
      v13[1] = v7;
      v13[2] = v9;
      [v6 setTransform:v13];
      v10 = *&v4[v5];
      if (v10)
      {
        if (a2)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v12 = v10;
        [v12 setAlpha:v11];
      }
    }
  }
}

void sub_95F628(char a1, double a2)
{
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) != a2)
  {
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) = a2;
    v3 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v3)
    {
      v4 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
      v5 = v4 <= a2;
      if (v4 != a2)
      {
        v6 = v4 - a2;
        if (v5 || v6 >= 0.5)
        {
          *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
          v8 = a2;
          v9 = a1;
          v10 = v3;
          sub_93AB14(v9 & 1, v8);

          a1 = v9;
          a2 = v8;
        }
      }

      v11 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v11)
      {
        v12 = *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
        v13 = v12 <= a2;
        if (v12 != a2)
        {
          v14 = v12 - a2;
          if (v13 || v14 >= 0.5)
          {
            *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
            v16 = a2;
            v17 = a1;
            v18 = v11;
            sub_93AB14(v17 & 1, v16);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_95F7A8()
{
  v1 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = v3;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_95F860(char **a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
  __chkstk_darwin();
  v155 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v149 - v4;
  __chkstk_darwin();
  v156 = &v149 - v5;
  __chkstk_darwin();
  v154 = &v149 - v6;
  __chkstk_darwin();
  v181 = (&v149 - v7);
  __chkstk_darwin();
  v175 = &v149 - v8;
  __chkstk_darwin();
  v174 = &v149 - v9;
  __chkstk_darwin();
  v11 = &v149 - v10;
  __chkstk_darwin();
  v13 = &v149 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v178 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v149 - v15;
  __chkstk_darwin();
  v176 = &v149 - v16;
  __chkstk_darwin();
  v187 = &v149 - v17;
  __chkstk_darwin();
  v186 = &v149 - v18;
  __chkstk_darwin();
  v194 = &v149 - v19;
  __chkstk_darwin();
  v190 = &v149 - v20;
  __chkstk_darwin();
  v22 = &v149 - v21;
  v23 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v23)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
  v184 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
  v193 = v24;
  v197 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v25 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_15F84(v23 + v25, v22, &qword_E21E88);
  v191 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  LODWORD(v185) = v1[OBJC_IVAR___MusicSBS_TextContentView_direction];
  v198 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_capabilities];
  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v189 = v22;
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
    v152 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
    v28 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
    v195 = v27;

    v188 = v28;
  }

  else
  {
    v152 = 0;
    v195 = 0;
    v188 = _swiftEmptyArrayStorage;
  }

  v183 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection];
  v171 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
  memcpy(v205, &v1[OBJC_IVAR___MusicSBS_TextContentView_specs], 0x2B0uLL);
  v29 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  swift_beginAccess();
  v173 = v1;
  sub_15F84(&v1[v29], v13, &qword_E23A50);
  v30 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
  v168 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  v192 = v30;
  v196 = v13;
  v161 = a1;
  if (v26)
  {
    v31 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
    v153 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
    v180 = v31;
  }

  else
  {
    v153 = 0;
    v180 = 0;
  }

  v32 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  v33 = v190;
  sub_15F84(v23 + v32, v190, &qword_E21E88);
  v172 = _s19SBS_TextContentViewCMa();
  v34 = objc_allocWithZone(v172);
  v34[OBJC_IVAR___MusicSBS_TextContentView_isScrolling] = 1;
  v35 = &v34[OBJC_IVAR___MusicSBS_TextContentView_text];
  *v35 = 0;
  v35[1] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_attributedText] = 0;
  v34[OBJC_IVAR___MusicSBS_TextContentView_isSelected] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_progress] = 0;
  v170 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection] = 2;
  v36 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v37 = type metadata accessor for Lyrics.TextLine(0);
  v38 = *(v37 - 8);
  (*(v38 + 56))(&v34[v36], 1, 1, v37);
  v169 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition] = 2;
  v167 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_textView] = 0;
  v179 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView] = 0;
  v39 = v193;
  *v35 = v184;
  v35[1] = v39;
  memcpy(&v34[OBJC_IVAR___MusicSBS_TextContentView_specs], v205, 0x2B0uLL);
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_alignment] = v191;
  v34[OBJC_IVAR___MusicSBS_TextContentView_direction] = v185;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_capabilities] = v198;
  swift_beginAccess();

  sub_95313C(v205, &v202);

  sub_95313C(v205, &v202);

  v182 = v34;
  v40 = &v34[v36];
  v41 = v37;
  v42 = v196;
  sub_1FBB9C(v196, v40, &qword_E23A50);
  swift_endAccess();
  sub_15F84(v189, v194, &qword_E21E88);
  sub_15F84(v33, v186, &qword_E21E88);
  sub_15F84(v42, v11, &qword_E23A50);
  v45 = *(v38 + 48);
  v44 = v38 + 48;
  v43 = v45;
  if (v45(v11, 1, v41) == 1)
  {
    sub_12E1C(v11, &qword_E23A50);
    v46 = sub_AB35A0();
    (*(*(v46 - 8) + 56))(v187, 1, 1, v46);
  }

  else
  {
    sub_15F84(&v11[v41[7]], v187, &qword_E21E88);
    sub_961A48(v11);
  }

  v47 = v181;
  v48 = v174;
  sub_15F84(v42, v174, &qword_E23A50);
  v49 = v43(v48, 1, v41);
  v50 = v175;
  if (v49 == 1)
  {
    sub_12E1C(v48, &qword_E23A50);
    v51 = 2;
  }

  else
  {
    v52 = (*(v48 + v41[15]))();
    sub_961A48(v48);
    v51 = v52 & 1;
  }

  LODWORD(v174) = v51;
  sub_15F84(v42, v50, &qword_E23A50);
  if (v43(v50, 1, v41) == 1)
  {
    sub_12E1C(v50, &qword_E23A50);
    v165 = 0;
    v166 = 0;
  }

  else
  {
    v53 = (*(v50 + v41[16]))();
    v165 = v54;
    v166 = v53;
    sub_961A48(v50);
  }

  sub_15F84(v42, v47, &qword_E23A50);
  v55 = v43(v47, 1, v41);
  v150 = v44;
  v151 = v41;
  v149 = v43;
  if (v55 == 1)
  {
    sub_12E1C(v47, &qword_E23A50);
    v175 = 0;
  }

  else
  {
    v175 = (*(v47 + v41[17]))();
    sub_961A48(v47);
  }

  v181 = _s8TextViewCMa();
  v56 = objc_allocWithZone(v181);
  v57 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v57 = 0;
  v57[1] = 0;
  v164 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v163 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v58 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v60 = sub_AB35A0();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v61 + 56;
  v62(&v56[v59], 1, 1, v60);
  v64 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v60);
  v65 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v159 = v62;
  v160 = v60;
  v158 = v63;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v60);
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v162 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v66 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v66 = 2;
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v67 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v67[4] = 0u;
  v67[5] = 0u;
  v67[2] = 0u;
  v67[3] = 0u;
  *v67 = 0u;
  v67[1] = 0u;
  v68 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  v69 = v193;

  sub_95313C(v205, &v202);

  v70 = v192;

  *&v56[v68] = sub_92D028(_swiftEmptyArrayStorage);
  v71 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v72 = v184;
  *v71 = v184;
  v71[1] = v69;
  v73 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v73 = v72;
  v73[1] = v69;
  swift_beginAccess();

  sub_1FBB9C(v194, &v56[v59], &qword_E21E88);
  swift_endAccess();
  swift_beginAccess();
  v74 = v186;
  sub_1FBB9C(v186, &v56[v64], &qword_E21E88);
  swift_endAccess();
  swift_beginAccess();
  v75 = v187;
  sub_1FBB9C(v187, &v56[v65], &qword_E21E88);
  swift_endAccess();
  v56[v163] = v174;
  v76 = v165;
  *v57 = v166;
  v57[1] = v76;

  *&v56[v164] = v175;

  *v58 = v168;
  v58[1] = v70;

  memcpy(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v205, 0x2B0uLL);
  *&v56[v162] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v197;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v191;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v185;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v198;
  v77 = v181;
  v201.receiver = v56;
  v201.super_class = v181;
  v78 = objc_msgSendSuper2(&v201, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_12E1C(v75, &qword_E21E88);
  sub_12E1C(v74, &qword_E21E88);
  sub_12E1C(v194, &qword_E21E88);
  v79 = v182;
  v80 = *&v182[v167];
  *&v182[v167] = v78;

  v81 = v195;
  if (v195)
  {
    sub_15F84(v189, v176, &qword_E21E88);
    sub_15F84(v190, v177, &qword_E21E88);
    v82 = v196;
    v83 = v154;
    sub_15F84(v196, v154, &qword_E23A50);
    v84 = v151;
    v85 = v149;
    v86 = v149(v83, 1, v151);
    v195 = v81;
    if (v86 == 1)
    {

      sub_12E1C(v83, &qword_E23A50);
      v159(v178, 1, 1, v160);
    }

    else
    {
      sub_15F84(v83 + v84[7], v178, &qword_E21E88);

      sub_961A48(v83);
    }

    v88 = v156;
    v87 = v157;
    sub_15F84(v82, v156, &qword_E23A50);
    if (v85(v88, 1, v84) == 1)
    {
      sub_12E1C(v88, &qword_E23A50);
      v89 = 2;
    }

    else
    {
      v90 = (*(v88 + v84[15]))();
      sub_961A48(v88);
      v89 = v90 & 1;
    }

    LODWORD(v194) = v89;
    sub_15F84(v82, v87, &qword_E23A50);
    if (v85(v87, 1, v84) == 1)
    {
      sub_12E1C(v87, &qword_E23A50);
      v186 = 0;
      v187 = 0;
    }

    else
    {
      (*(v87 + v84[18]))(v206);
      v187 = v207;
      if (v207)
      {
        v186 = v206[2];

        sub_12E1C(v206, &qword_E21E80);
      }

      else
      {
        v186 = 0;
      }

      sub_961A48(v87);
    }

    v91 = v82;
    v92 = v155;
    sub_15F84(v91, v155, &qword_E23A50);
    if (v85(v92, 1, v84) == 1)
    {
      sub_12E1C(v92, &qword_E23A50);
    }

    else
    {
      (*(v92 + v84[18]))(v208);
      sub_961A48(v92);
      if (v208[3])
      {
        v185 = v208[7];

        sub_12E1C(v208, &qword_E21E80);
LABEL_38:
        v93 = objc_allocWithZone(v77);
        v94 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
        *v94 = 0;
        v94[1] = 0;
        v184 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
        v175 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
        v95 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText;
        *v95 = 0;
        v95[1] = 0;
        v96 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v98 = v159;
        v97 = v160;
        v159(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language, 1, 1, v160);
        v99 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v97);
        v100 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v97);
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
        v174 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
        v101 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
        *v101 = 2;
        *(v101 + 8) = 0u;
        *(v101 + 24) = 0u;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
        v102 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
        v102[4] = 0u;
        v102[5] = 0u;
        v102[2] = 0u;
        v102[3] = 0u;
        *v102 = 0u;
        v102[1] = 0u;
        v103 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
        sub_95313C(v205, &v202);
        v104 = v180;

        *(v93 + v103) = sub_92D028(_swiftEmptyArrayStorage);
        v105 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text;
        v106 = v152;
        v107 = v195;
        *v105 = v152;
        v105[1] = v107;
        v108 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText;
        *v108 = v106;
        v108[1] = v107;
        swift_beginAccess();

        v109 = v93 + v96;
        v110 = v176;
        sub_1FBB9C(v176, v109, &qword_E21E88);
        swift_endAccess();
        swift_beginAccess();
        v111 = v93 + v99;
        v112 = v177;
        sub_1FBB9C(v177, v111, &qword_E21E88);
        swift_endAccess();
        swift_beginAccess();
        v113 = v93 + v100;
        v114 = v178;
        sub_1FBB9C(v178, v113, &qword_E21E88);
        swift_endAccess();
        v175[v93] = v194;
        v115 = v187;
        *v94 = v186;
        v94[1] = v115;

        *(v93 + v184) = v185;

        *v95 = v153;
        v95[1] = v104;

        memcpy(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs, v205, 0x2B0uLL);
        *(v93 + v174) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words) = v188;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind) = 1;
        v116 = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) = v183 & 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities) = v198;
        v199.receiver = v93;
        v199.super_class = v181;
        v117 = objc_msgSendSuper2(&v199, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_12E1C(v114, &qword_E21E88);
        sub_12E1C(v112, &qword_E21E88);
        sub_12E1C(v110, &qword_E21E88);
        v79 = v182;
        v118 = v179;
        v119 = *&v182[v179];
        *&v182[v179] = v117;

        v120 = *&v79[v118];
        if (v120)
        {
          v121 = sub_9618E8(v116);
          v123 = v122;
          v124 = v120;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v121, v123);

          v125 = *&v79[v179];
          if (v125)
          {
            [v125 setAlpha:0.0];
            v126 = *&v79[v179];
            if (v126)
            {
              v202 = v205[8];
              v203 = v205[9];
              v204 = v205[10];
              [v126 setTransform:&v202];
            }
          }
        }

        goto LABEL_42;
      }
    }

    v185 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v127 = v169;
  v79[v170] = v183;
  v79[v127] = v171;
  v128 = v172;
  v200.receiver = v79;
  v200.super_class = v172;
  v129 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v149, v150, v151);
  v130 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v131 = *&v129[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v132 = v173;
  v133 = v196;
  if (!v131)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v134 = v129;
  v135 = v129;
  [v135 addSubview:v131];
  v136 = *&v135[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v136)
  {

    sub_953198(v205);

    goto LABEL_48;
  }

  v137 = *&v134[v130];
  if (!v137)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v138 = v136;
  [v137 frame];
  v139 = *&v134[v130];
  if (v139)
  {
    v140 = v139;

    [v140 frame];

    [v138 frame];
    [v138 setFrame:?];

    [v135 addSubview:v138];
    sub_953198(v205);
    v133 = v196;
LABEL_48:
    v141 = v189;
    sub_12E1C(v190, &qword_E21E88);
    sub_12E1C(v133, &qword_E23A50);
    sub_12E1C(v141, &qword_E21E88);
    v142 = objc_opt_self();
    v143 = swift_allocObject();
    *(v143 + 16) = v135;
    *(v143 + 24) = v132;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_961A30;
    *(v144 + 24) = v143;
    *&v204 = sub_2D4D0;
    *(&v204 + 1) = v144;
    *&v202 = _NSConcreteStackBlock;
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_1822E0;
    *(&v203 + 1) = &block_descriptor_67;
    v145 = _Block_copy(&v202);
    v146 = v135;
    v147 = v132;

    [v142 performWithoutAnimation:v145];
    _Block_release(v145);
    LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      v148 = v161;
      v161[3] = v128;

      *v148 = v146;
      return;
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
}

void sub_961040(void *a1, unsigned __int8 *a2)
{
  [a2 bounds];
  [a1 setFrame:?];
  [a1 layoutIfNeeded];
  sub_95F2BC(a2[OBJC_IVAR___MusicSBS_TextContentView_isSelected], 0);
  sub_95F628(0, *&a2[OBJC_IVAR___MusicSBS_TextContentView_progress]);
}

id sub_96111C(char a1, double a2, double a3)
{
  result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    result = [result sizeThatFits:?];
    if (a1)
    {
      result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a2, a3}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_9611C0(double a1, double a2)
{
  result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected);
    result = [result sizeThatFits:?];
    if (v6 == 1)
    {
      result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a1, a2}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9612C4()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = _s19SBS_TextContentViewCMa();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v3 = *&v0[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v4 = v3;
  [v1 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  v12 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v18 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
    if (v18 != 2)
    {
      v19 = v12;
      [v1 bounds];
      [v19 sizeThatFits:{v20, v21}];
      v14 = v22;
      v15 = v23;
      [v1 bounds];
      MaxY = CGRectGetMaxY(v33);

      v25 = MaxY - v10;
      if (v18)
      {
        v16 = MaxY - v15;
      }

      else
      {
        v16 = 0.0;
      }

      if (v18)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v25;
      }
    }
  }

  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  if (v26 == 1)
  {
    [v1 bounds];
    v27 = (CGRectGetWidth(v36) - v8) * 0.5;
    [v1 bounds];
    v13 = (CGRectGetWidth(v37) - v14) * 0.5;
  }

  else
  {
    v27 = 0.0;
    if (v26 == 2)
    {
      [v1 bounds];
      v27 = CGRectGetWidth(v34) - v8;
      [v1 bounds];
      v13 = CGRectGetWidth(v35) - v14;
    }
  }

  v28 = *&v1[v2];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  UIView.untransformedFrame.setter(v27, v17, v8, v10);

  v30 = *&v1[v11];
  if (v30)
  {
    v31 = v30;
    UIView.untransformedFrame.setter(v13, v16, v14, v15);
  }
}

id sub_961574()
{
  v2.receiver = v0;
  v2.super_class = _s19SBS_TextContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s19SBS_TextContentViewCMa()
{
  result = qword_E23230;
  if (!qword_E23230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9616BC()
{
  sub_9617A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9617A8()
{
  if (!qword_E23240)
  {
    type metadata accessor for Lyrics.TextLine(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E23240);
    }
  }
}

uint64_t sub_961800(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), a1, 0x2B0uLL);
  sub_95313C(a1, &v5);
  sub_953198(__dst);
  sub_95F0A0();
  return sub_953198(a1);
}

double sub_9618E8(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = CGPoint.centerRight.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (a1 != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v1 = CGPoint.center.unsafeMutableAddressor();
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = CGPoint.centerLeft.unsafeMutableAddressor();
LABEL_8:
  v2 = v1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_96195C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_961994()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_249(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_9619F0()
{

  return swift_deallocObject();
}

uint64_t sub_961A48(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_961AA4()
{
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v1 = (v0 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v2 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  sub_ABAFD0();
  __break(1u);
}

CGFloat sub_961C70(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

id sub_961CC8(uint64_t a1, char a2, void *__src, double a4, double a5)
{
  v5[OBJC_IVAR___MusicInstrumentalContentView_isScrolling] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_alignment] = 0;
  v6 = &v5[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v5[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dots] = _swiftEmptyArrayStorage;
  v5[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration] = 0;
  v7 = &v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  *v7 = 0;
  v7[8] = 1;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = 0;
  v8 = &v5[OBJC_IVAR___MusicInstrumentalContentView_line];
  *v8 = a1;
  v8[1] = a4;
  v8[2] = a5;
  *(v8 + 24) = a2 & 1;
  memcpy(&v5[OBJC_IVAR___MusicInstrumentalContentView_specs], __src, 0x2B0uLL);
  v10.receiver = v5;
  v10.super_class = _s23InstrumentalContentViewCMa();
  return objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_961E14()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = _s23InstrumentalContentViewCMa();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v2 = &v0[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  [v1 bounds];
  v33.origin.x = v7;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v10;
  v30.origin.x = v3;
  v30.origin.y = v4;
  v30.size.width = v5;
  v30.size.height = v6;
  if (CGRectEqualToRect(v30, v33))
  {
    return;
  }

  [v1 bounds];
  *v2 = v11;
  *(v2 + 1) = v12;
  *(v2 + 2) = v13;
  *(v2 + 3) = v14;
  v15 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (v16 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_4:
    sub_963BDC();
  }

LABEL_5:
  v17 = &v1[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v18 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
  v19 = v18 * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
  v20 = Int.seconds.getter(0);
  v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
  if (v21 == 1)
  {
    [v1 bounds];
    v22 = (CGRectGetWidth(v32) - v19) * 0.5;
  }

  else
  {
    v22 = v20;
    if (v21 == 2)
    {
      [v1 bounds];
      v22 = CGRectGetWidth(v31) - v19;
    }
  }

  v23 = *&v1[v15];
  if (v23 >> 62)
  {
    v24 = sub_ABB060();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    if (!v24)
    {
      return;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {

    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = sub_ABAE20();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v1 bounds];
      UIView.untransformedFrame.setter(v22, v28 * 0.5 - v18 * 0.5, v18, v18);

      v22 = v22 + v18 + v17[77];
    }

    while (v24 != v25);
  }
}

uint64_t sub_9620CC()
{
  v1 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 8);
  v2 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 16) + -1.8;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = (v2 - v1) / floor((v2 - v1) * 0.25) * 0.5;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = (v2 - (v1 + 1.0)) / *(v0 + OBJC_IVAR___MusicInstrumentalContentView_specs + 592);
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  v3 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_ABB060();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_ABAE20();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 layer];
      [v11 removeAllAnimations];

      [v10 setAlpha:0.0];
      v12[1] = 0;
      v12[2] = 0;
      v12[0] = 0x3FF0000000000000;
      v12[3] = 0x3FF0000000000000;
      v12[4] = 0;
      v12[5] = 0;
      [v10 setTransform:v12];
    }

    while (v7 != v8);
  }

  return result;
}

void sub_9622D4(char a1, char a2)
{
  v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = a1;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[4] = sub_9640DC;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1B5EB4;
      v7[3] = &block_descriptor_97_0;
      v5 = _Block_copy(v7);
      v6 = v2;

      [v3 addAnimations:v5];
      _Block_release(v5);
      [v3 startAnimation];
    }

    else
    {

      sub_9620CC();
    }
  }
}

void sub_962438(double a1)
{
  v2 = &v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  if (v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] == 1)
  {
    v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 >> 62)
    {
      v6 = &unk_E23000;
      if (sub_ABB060())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = &unk_E23000;
      if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }
    }

    v7 = *&v1[v4];
    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_6:
      sub_963BDC();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_7:
      v8 = &v1[v6[74]];
      v9 = v8[76];
      v10 = v9 * *(v8 + 74) + (*(v8 + 74) + -1.0) * v8[77];
      v11 = Int.seconds.getter(0);
      v12 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
      if (v12 == 1)
      {
        [v1 bounds];
        v13 = (CGRectGetWidth(v45) - v10) * 0.5;
      }

      else
      {
        v13 = v11;
        if (v12 == 2)
        {
          [v1 bounds];
          v13 = CGRectGetWidth(v44) - v10;
        }
      }

      v4 = *&v1[v4];
      if (v4 >> 62)
      {
        v14 = sub_ABB060();
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14 < 1)
      {
        __break(1u);
        return;
      }

      v15 = v1;

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_ABAE20();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        [v15 bounds];
        UIView.untransformedFrame.setter(v13, v19 * 0.5 - v9 * 0.5, v9, v9);

        v13 = v13 + v9 + v8[77];
      }

      while (v14 != v16);

      v1 = v15;
LABEL_20:
      v20 = 0;
      *v2 = 0;
      v2[8] = 0;
      v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_line + 8] + 1.0;
      if (v21 > a1)
      {
        goto LABEL_28;
      }

      v22 = (a1 - v21) / *&v1[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v22 < 9.22337204e18)
      {
        if (__OFADD__(v22, 1))
        {
          goto LABEL_42;
        }

        if (v22 + 1 >= 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = v22 + 1;
        }

LABEL_28:
        v23 = *&v1[v6[74] + 592];
        if (v23 < 0)
        {
          __break(1u);
        }

        else
        {
          v2 = v1;
          if (v23)
          {
            for (i = 0; i != v23; ++i)
            {
              v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.8];
              v26 = swift_allocObject();
              v26[2] = v20;
              v26[3] = i;
              v26[4] = v2;
              v42 = sub_964088;
              v43 = v26;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_1B5EB4;
              v41 = &block_descriptor_79_2;
              v27 = _Block_copy(&aBlock);
              v28 = v2;
              v29 = v2;

              [v25 addAnimations:v27];
              _Block_release(v27);
              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              *(v30 + 24) = i;
              v42 = sub_964094;
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_624AE8;
              v41 = &block_descriptor_85_2;
              v31 = _Block_copy(&aBlock);
              v6 = v43;
              v32 = v29;
              v2 = v28;

              [v25 addCompletion:v31];
              _Block_release(v31);
              [v25 startAnimationAfterDelay:i * 0.06];
            }
          }

          v1 = objc_opt_self();
          a1 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] + -0.4;
          v33 = swift_allocObject();
          *(v33 + 16) = v2;
          v42 = sub_9640D4;
          v43 = v33;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_1B5EB4;
          v41 = &block_descriptor_91_1;
          v4 = _Block_copy(&aBlock);
          v34 = v2;

          [v1 animateWithDuration:0x20000 delay:v4 options:0 animations:a1 completion:0.2];
          _Block_release(v4);
          v35 = *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (!v36)
          {
            *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = v37;
            return;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!sub_ABB060())
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_962A2C(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  if (a2 >= a1)
  {
    swift_beginAccess();
    v7 = *(a3 + v5);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v4 = sub_ABAE20();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) <= v4)
      {
        goto LABEL_20;
      }

      v4 = *(v7 + 8 * v4 + 32);
    }

    if (qword_E21CD0 == -1)
    {
LABEL_12:
      [v4 setAlpha:*&qword_E744E0];
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  swift_beginAccess();
  v6 = *(a3 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v4 = sub_ABAE20();

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) > v4)
  {
    v4 = *(v6 + 8 * v4 + 32);
LABEL_6:
    [v4 setAlpha:1.0];
LABEL_13:

    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_962BAC(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_ABB060();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_E21CE0 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_E74520;
      v9[1] = *algn_E74530;
      v9[2] = xmmword_E74540;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_962D00(double a1)
{
  v4 = &v2[OBJC_IVAR___MusicInstrumentalContentView_line];
  v5 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_line + 8];
  v6 = OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration;
  v7 = (a1 - (v5 + 1.0)) / *&v2[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(v7, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v8 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v7 + 1 >= v8)
  {
    v9 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted;
  v11 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted];
  if (v9 < v11)
  {
    sub_9620CC();
    v12 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v1 = *&v2[v12];
    if (!(v1 >> 62))
    {
      v13 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
LABEL_11:
        if (v13 >= 1)
        {

          v14 = 0;
          do
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v15 = sub_ABAE20();
            }

            else
            {
              v15 = *(v1 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = [v15 layer];
            [v17 removeAllAnimations];

            if (qword_E21CD0 != -1)
            {
              swift_once();
            }

            ++v14;
            [v16 setAlpha:*&qword_E744E0];
            v47 = 0;
            v48 = 0;
            aBlock = 0x3FF0000000000000;
            v49 = 0x3FF0000000000000;
            v50 = 0;
            v51 = 0;
            [v16 setTransform:&aBlock];
          }

          while (v13 != v14);

          goto LABEL_51;
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        do
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:

          v23 = sub_ABAE20();

          v18 = &unk_B38000;
LABEL_36:
          v24 = *&v2[v6] + -0.1;
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v26 = objc_allocWithZone(UIViewPropertyAnimator);
          v50 = sub_9553D0;
          v51 = v25;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_1B5EB4;
          v49 = &block_descriptor_73_1;
          v27 = _Block_copy(&aBlock);
          v28 = v23;

          v29 = [v26 initWithDuration:3 curve:v27 animations:v24];
          _Block_release(v27);
          [v29 startAnimation];

          v5 = v4[1];
LABEL_37:
          v30 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration];
          v31 = (a1 - v5) / v30;
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_71;
          }

          if (v31 <= -9.22337204e18)
          {
            goto LABEL_72;
          }

          if (v31 >= 9.22337204e18)
          {
            goto LABEL_73;
          }

          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_74;
          }

          v33 = OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted;
          if (*&v2[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] >= v32)
          {
            goto LABEL_44;
          }

          v34 = objc_opt_self();
          v35 = swift_allocObject();
          *(v35 + 16) = v2;
          *(v35 + 24) = v32;
          v50 = sub_964048;
          v51 = v35;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = sub_1B5EB4;
          v49 = &block_descriptor_67_0;
          v36 = _Block_copy(&aBlock);
          v37 = v2;

          [v34 animateWithDuration:0x20000 delay:v36 options:0 animations:v30 + -0.4 completion:0.2];
          _Block_release(v36);
          v38 = *&v2[v33];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
        }

        while (v39);
        *&v2[v33] = v40;
        goto LABEL_44;
      }

LABEL_51:
      sub_962438(a1);
      return;
    }

LABEL_66:
    v13 = sub_ABB060();
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v18 = &unk_B38000;
  if ((v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] & 1) != 0 || (v5 + 1.0 < a1 ? (v19 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn] == v8) : (v19 = 0), !v19 || v4[2] + -1.8 <= a1))
  {
LABEL_44:
    v41 = v4[2];
    v42 = v41 > a1 && v41 + v18[273] < a1;
    if (v42 && (v2[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
    {
      sub_963538();
    }

    return;
  }

  if (v9 == v11 || v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] != 1)
  {
    goto LABEL_37;
  }

  v20 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_76;
  }

  if (v20 < v11)
  {
    goto LABEL_77;
  }

  if (v11 == v20)
  {
LABEL_32:
    *&v2[v10] = v9;
    v21 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v22 = *&v2[v21];
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_78;
    }

    v18 = &unk_B38000;
    if (v20 < 0)
    {
      __break(1u);
    }

    else if (v20 < *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
      v23 = *(v22 + 8 * v20 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (v11 < v20)
  {
    v43 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    while (1)
    {
      v44 = *&v2[v43];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = sub_ABAE20();
      }

      else
      {
        if (v11 < 0)
        {
          goto LABEL_69;
        }

        if (v11 >= *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v45 = *(v44 + 8 * v11 + 32);
      }

      ++v11;
      [v45 setAlpha:1.0];

      if (v20 == v11)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

uint64_t sub_96338C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = sub_ABB060();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = a2 & 0x8000000000000001;

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = sub_ABAE20();
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      if (v8 == 1)
      {
        if (qword_E21CE0 != -1)
        {
          swift_once();
        }

        v13 = xmmword_E74520;
        v14 = *algn_E74530;
        v10 = xmmword_E74540;
      }

      else
      {
        if (qword_E21CD8 != -1)
        {
          swift_once();
        }

        v13 = xmmword_E744F0;
        v14 = xmmword_E74500;
        v10 = xmmword_E74510;
      }

      v15 = v10;
      [v12 setTransform:&v13];
    }
  }

  return result;
}

void sub_963538()
{
  if ((v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
  {
    v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 1;
    v1 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:1.0 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17 = sub_963FE0;
    v18 = v2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1B5EB4;
    v16 = &block_descriptor_250;
    v3 = _Block_copy(&v13);
    v4 = v0;

    [v1 addAnimations:v3];
    _Block_release(v3);
    [v1 startAnimation];
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.3];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_964000;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1B5EB4;
    v16 = &block_descriptor_55_3;
    v7 = _Block_copy(&v13);
    v8 = v4;

    [v5 addAnimations:v7];
    _Block_release(v7);
    [v5 startAnimationAfterDelay:1.0];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.5];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v17 = sub_964008;
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1B5EB4;
    v16 = &block_descriptor_61_2;
    v11 = _Block_copy(&v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimationAfterDelay:1.0];
  }
}

uint64_t sub_963840(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_ABB060();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_E21CE8 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_E74550;
      v9[1] = xmmword_E74560;
      v9[2] = xmmword_E74570;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_963994(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_ABB060();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setAlpha:0.0];
    }
  }

  return result;
}

uint64_t sub_963A88(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = sub_ABB060();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_E21CF0 != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = xmmword_E74580;
      v9[1] = *algn_E74590;
      v9[2] = xmmword_E745A0;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void sub_963BDC()
{
  v1 = &v0[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v2 = *&v0[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v2 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else if (v2)
  {
    v3 = v0;
    v4 = 0;
    v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    do
    {
      v6 = [objc_allocWithZone(UIView) init];
      v7 = v6;
      v8 = 1.3;
      if (!v4)
      {
        goto LABEL_7;
      }

      v9 = *(v1 + 74);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_13;
      }

      v8 = -1.3;
      if (v4 == v11)
      {
LABEL_7:
        v12 = [v6 layer];
        [v12 anchorPoint];
        [v12 setAnchorPoint:v13 + v8];
      }

      [v7 setBackgroundColor:{*(v1 + 44), v16}];
      [v7 setAlpha:0.0];
      [v7 setAutoresizingMask:40];
      v14 = [v7 layer];
      [v14 setCornerRadius:*(v1 + 76) * 0.5];

      swift_beginAccess();
      v15 = v7;
      sub_AB9730();
      if (*(&dword_10 + (*(v3 + v5) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v5) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v16 = *(&dword_10 + (*(v3 + v5) & 0xFFFFFFFFFFFFFF8));
        sub_AB97A0();
      }

      ++v4;
      sub_AB97F0();
      swift_endAccess();
      [v3 addSubview:v15];
    }

    while (v2 != v4);
  }
}

id sub_963E28()
{
  v2.receiver = v0;
  v2.super_class = _s23InstrumentalContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_963ED8(const void *a1)
{
  v3 = *v1;
  memcpy(v5, (v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), sizeof(v5));
  memcpy((v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), a1, 0x2B0uLL);
  return sub_953198(v5);
}

uint64_t sub_963FA8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_964010()
{

  return swift_deallocObject();
}

uint64_t sub_964050()
{

  return swift_deallocObject();
}

void sub_964094()
{
  v1 = *(v0 + 16) + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (*v1 <= v2)
    {
      v3 = __OFADD__(v2, 1);
      v4 = v2 + 1;
      if (v3)
      {
        __break(1u);
      }

      else
      {
        *v1 = v4;
        *(v1 + 8) = 0;
      }
    }
  }
}

void sub_964100()
{
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isScrolling) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_alignment) = 0;
  v1 = (v0 + OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = 0;
  v2 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_964254(char a1, char a2)
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR___MusicTextContentView_isSelected] = a1;
  if (a1)
  {
    v7 = Int.seconds.getter(1);
    v8 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v9 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
    if (v9 || ((v10 = [objc_allocWithZone(UILabel) init], objc_msgSend(v10, "setAdjustsFontForContentSizeCategory:", 1), objc_msgSend(v10, "setLineBreakStrategy:", 3), objc_msgSend(v10, "setNumberOfLines:", 0), objc_msgSend(v10, "setTextAlignment:", 4), objc_msgSend(v10, "setAutoresizingMask:", 18), objc_msgSend(v10, "setTextAlignment:", *&v2[OBJC_IVAR___MusicTextContentView_alignment]), v11 = OBJC_IVAR___MusicTextContentView_content, swift_beginAccess(), sub_969DAC(&v2[v11], v6), swift_getEnumCaseMultiPayload() != 1) ? (sub_969E74(v6), v12 = objc_msgSend(*&v2[OBJC_IVAR___MusicTextContentView_label], "attributedText")) : (v12 = *v6), (objc_msgSend(v10, "setAttributedText:", v12), v12, (v13 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]) == 0) ? (v14 = *&v2[OBJC_IVAR___MusicTextContentView_specs + 352], v13 = 0) : (v14 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]), v15 = v13, objc_msgSend(v10, "setTextColor:", v14), v14, objc_msgSend(v2, "addSubview:", v10), v16 = *&v2[v8], *&v2[v8] = v10, v16, (v9 = *&v2[v8]) != 0))
    {
      v17 = *&v2[OBJC_IVAR___MusicTextContentView_label];
      v18 = v9;
      [v17 frame];
      [v18 setFrame:?];

      v19 = *&v2[v8];
      if (v19)
      {
        [v19 setAlpha:0.0];
      }
    }
  }

  else
  {
    v7 = Int.seconds.getter(0);
  }

  if (a2)
  {
    v20 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v7;
    v35 = sub_96AF60;
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1B5EB4;
    v34 = &block_descriptor_191_0;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    [v20 addAnimations:v22];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v35 = sub_96AFF0;
    v36 = v24;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_624AE8;
    v34 = &block_descriptor_197_0;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v20 addCompletion:v25];
    _Block_release(v25);
    [v20 startAnimation];
LABEL_22:

    return;
  }

  [*&v2[OBJC_IVAR___MusicTextContentView_label] setAlpha:1.0 - v7];
  v27 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v28 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
  if (v28)
  {
    [v28 setAlpha:v7];
  }

  if ((a1 & 1) == 0)
  {
    v29 = *&v2[v27];
    if (v29)
    {
      [v29 removeFromSuperview];
      v20 = *&v2[v27];
    }

    else
    {
      v20 = 0;
    }

    *&v2[v27] = 0;
    goto LABEL_22;
  }
}

void sub_96471C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + OBJC_IVAR___MusicTextContentView_isSelected) & 1) == 0)
  {
    v3 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v4 = *(a2 + OBJC_IVAR___MusicTextContentView_selectedLabel);
    if (v4)
    {
      v5 = a2;
      [v4 removeFromSuperview];
      a2 = v5;
      v4 = *(v5 + v3);
    }

    *(a2 + v3) = 0;
  }
}

void sub_964830(char **a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_969DAC(&v2[v10], v9);
  memcpy(v17, &v2[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  v11 = _s15TextContentViewCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_95313C(v17, v16);
  v13 = sub_969F28(v9, v17, 0);
  sub_953198(v17);
  sub_964254(v2[OBJC_IVAR___MusicTextContentView_isSelected], 0);
  *&v13[OBJC_IVAR___MusicTextContentView_alignment] = *&v2[OBJC_IVAR___MusicTextContentView_alignment];
  v14 = sub_933428(&off_D47450);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_964A8C(v14);

  sub_12E1C(v5, &qword_E234C8);
  v15 = v13;
  [v2 bounds];
  [v15 setFrame:?];

  a1[3] = v11;
  *a1 = v15;
}

uint64_t sub_964A8C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin();
  v103 = &v95 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v6;
  v7 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v95 - v10);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v110 = OBJC_IVAR___MusicTextContentView_isScrolling;
  v120 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  v121 = v2 + OBJC_IVAR___MusicTextContentView_specs;
  v119 = OBJC_IVAR___MusicTextContentView_alignment;
  v122 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v123 = OBJC_IVAR___MusicTextContentView_label;
  v15 = OBJC_IVAR___MusicTextContentView_content;
  v124 = a1;
  v16 = a1 + 56;

  v118 = v15;
  swift_beginAccess();
  v17 = 0;
  v18 = v12 + 63;
  v19 = v11;
  v20 = v18 >> 6;
  v115 = NSFontAttributeName;
  v114 = NSParagraphStyleAttributeName;
  v113 = NSForegroundColorAttributeName;
  v106 = NSLanguageIdentifierAttributeName;
  v105 = xmmword_AF85D0;
  v116 = v2;
  v111 = v9;
  v112 = v7;
  while (v14)
  {
LABEL_9:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = *(*(v124 + 48) + (v22 | (v17 << 6)));
    v24 = v7;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v33 = *(v2 + v120);
        v34 = *(v2 + v123);
        if (!v33)
        {
          v35 = 368;
          if (*(v2 + v110))
          {
            v35 = 392;
          }

          v33 = *(v121 + v35);
        }

        goto LABEL_34;
      }

      [*(v2 + v123) setTextAlignment:*(v2 + v119)];
      v30 = *(v2 + v122);
      if (v30)
      {
        [v30 setTextAlignment:*(v2 + v119)];
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      sub_969DAC(v2 + v118, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v121;
      if (EnumCaseMultiPayload == 1)
      {
        sub_969E74(v9);
      }

      else
      {

        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0);
        sub_12E1C(&v9[*(v47 + 48)], &qword_E21E88);
        [*(v2 + v123) setFont:*(v32 + 200)];
        v48 = *(v2 + v122);
        if (v48)
        {
          [v48 setFont:*(v32 + 200)];
        }
      }

      v49 = *(v2 + v120);
      if (!v49)
      {
        v50 = 368;
        if (*(v2 + v110))
        {
          v50 = 392;
        }

        v49 = *(v32 + v50);
      }

      [*(v2 + v123) setTextColor:v49];
      v34 = *(v2 + v122);
      v7 = v24;
      if (v34)
      {
        v33 = *(v121 + 352);
LABEL_34:
        [v34 setTextColor:v33];
LABEL_35:
        v7 = v24;
      }
    }

    else
    {
      sub_969DAC(v2 + v118, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v19;
        v26 = v19;
        v27 = *(v2 + v123);
        v28 = v25;
        [v27 setAttributedText:v28];
        v29 = *(v2 + v122);
        [v29 setAttributedText:v28];

        v19 = v26;
        v9 = v111;
        v7 = v112;
      }

      else
      {
        v36 = *v19;
        v37 = v19[1];
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
        v102 = v19;
        sub_96AEF0(v19 + v38, v117);
        v39 = [objc_allocWithZone(NSMutableParagraphStyle) init];
        [v39 setAlignment:*(v2 + v119)];
        v109 = v39;
        [v39 setLineBreakStrategy:3];
        v104 = v36;
        v108 = v37;
        v40 = String.containsExcessiveHeightCharacters.getter(v36, v37);
        v41 = v121;
        if (v40)
        {
          *&v127 = Int.seconds.getter(0);
          *&v126[0] = v127;
          CTFontGetLanguageAwareOutsets();
          v42 = *&v127 + *v126;
          v43 = v109;
          [v109 lineSpacing];
          [v43 setLineSpacing:v42 + v44];
        }

        v45 = *(v2 + v120);
        v99 = v45;
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v51 = 368;
          if (*(v2 + v110))
          {
            v51 = 392;
          }

          v46 = *(v41 + v51);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50);
        inited = swift_initStackObject();
        *(inited + 16) = v105;
        *(inited + 32) = v115;
        v97 = *(v41 + 200);
        v53 = v97;
        v98 = (inited + 32);
        v54 = sub_13C80(0, &qword_E23D60);
        *(inited + 40) = v53;
        v55 = v114;
        *(inited + 64) = v54;
        *(inited + 72) = v55;
        v56 = sub_13C80(0, &qword_E229A0);
        *(inited + 80) = v109;
        v57 = v113;
        *(inited + 104) = v56;
        *(inited + 112) = v57;
        v58 = sub_13C80(0, &unk_E23820);
        v100 = v58;
        v101 = v46;
        *(inited + 120) = v46;
        v60 = v106;
        v59 = v107;
        *(inited + 144) = v58;
        *(inited + 152) = v60;
        sub_969D3C(v117, v59);
        v61 = sub_AB35A0();
        v62 = *(v61 - 8);
        LODWORD(v96) = (*(v62 + 48))(v59, 1, v61);
        v63 = v99;
        v64 = v115;
        v65 = v97;
        v66 = v114;
        v109 = v109;
        v99 = v113;
        v67 = v60;
        if (v96 == 1)
        {
          v68 = v59;
          v69 = &qword_E21E88;
LABEL_43:
          sub_12E1C(v68, v69);
          v73 = v116;
          v74 = (inited + 160);
          *(inited + 184) = &type metadata for String;
LABEL_44:
          v75 = &_s10Foundation9IndexPathVSLAAMc_ptr;
          *v74 = 0;
          v76 = 0xE000000000000000;
          goto LABEL_45;
        }

        v70 = v103;
        sub_AB3570();
        (*(v62 + 8))(v59, v61);
        v71 = sub_AB34C0();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          v68 = v70;
          v69 = &qword_E21E90;
          goto LABEL_43;
        }

        v97 = sub_AB34A0();
        v76 = v93;
        (*(v72 + 8))(v70, v71);
        v74 = (inited + 160);
        *(inited + 184) = &type metadata for String;
        v73 = v116;
        if (!v76)
        {
          goto LABEL_44;
        }

        *v74 = v97;
        v75 = &_s10Foundation9IndexPathVSLAAMc_ptr;
LABEL_45:
        *(inited + 168) = v76;
        v77 = sub_92CF00(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0);
        swift_arrayDestroy();
        v98 = *(v73 + v123);
        v78 = objc_allocWithZone(v75[42]);

        v79 = sub_AB9260();
        _s3__C3KeyVMa_2(0);
        v81 = v80;
        v96 = sub_969ED0();
        v97 = v81;
        isa = sub_AB8FD0().super.isa;

        v83 = [v78 initWithString:v79 attributes:isa];

        [v98 setAttributedText:v83];
        v2 = v116;
        v84 = *(v121 + 352);
        v128 = v100;
        *&v127 = v84;
        sub_9ACFC(&v127, v126);
        v85 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v77;
        sub_92A848(v126, v99, isUniquelyReferenced_nonNull_native);
        v87 = *(v2 + v122);
        if (v87)
        {
          v88 = objc_allocWithZone(NSAttributedString);
          v89 = v87;
          v90 = sub_AB9260();

          v91 = sub_AB8FD0().super.isa;

          v92 = [v88 initWithString:v90 attributes:v91];

          [v89 setAttributedText:v92];
          v2 = v116;

          sub_12E1C(v117, &qword_E21E88);
        }

        else
        {

          sub_12E1C(v117, &qword_E21E88);
        }

        v9 = v111;
        v7 = v112;
        v19 = v102;
      }
    }
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    if (v21 >= v20)
    {
    }

    v14 = *(v16 + 8 * v21);
    ++v17;
    if (v14)
    {
      v17 = v21;
      goto LABEL_9;
    }
  }
}

uint64_t sub_96569C()
{
  result = _s15TextContentViewC7ContentOMa(319);
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

uint64_t sub_965788(const void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *v1;
  memcpy(v10, (v5 + OBJC_IVAR___MusicTextContentView_specs), sizeof(v10));
  memcpy((v5 + OBJC_IVAR___MusicTextContentView_specs), a1, 0x2B0uLL);
  sub_95313C(a1, v9);
  sub_953198(v10);
  v6 = sub_933428(&off_D47400);
  v7 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_964A8C(v6);

  sub_12E1C(v4, &qword_E234C8);
  return sub_953198(a1);
}

uint64_t sub_9658D8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v4 = &v8 - v3;
  *(*v1 + OBJC_IVAR___MusicTextContentView_isScrolling) = a1;
  v5 = sub_933428(&off_D47478);
  v6 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_964A8C(v5);

  return sub_12E1C(v4, &qword_E234C8);
}

void sub_965A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v3 = &v20[-v2 - 8];
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_specs;
  memcpy(v23, (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(v23));
  memcpy(v24, &v4[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  memmove(&v4[OBJC_IVAR___MusicTextContentView_specs], (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), 0x2B0uLL);
  sub_95313C(v23, v22);
  sub_95313C(v23, v22);
  v6 = v4;
  sub_953198(v24);
  v7 = sub_933428(&off_D47400);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  sub_964A8C(v7);

  sub_12E1C(v3, &qword_E234C8);
  sub_953198(v23);

  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v10[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v10[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_95313C(v21, v20);
    sub_95313C(v21, v20);
    v11 = v10;
    sub_953198(v22);
    v12 = sub_933428(&off_D47400);
    v9(v3, 1, 1, v8);
    sub_964A8C(v12);

    sub_12E1C(v3, &qword_E234C8);
    sub_953198(v21);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v13[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v13[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_95313C(v21, v20);
    sub_95313C(v21, v20);
    v14 = v13;
    sub_953198(v22);
    v15 = sub_933428(&off_D47400);
    v9(v3, 1, 1, v8);
    sub_964A8C(v15);

    sub_12E1C(v3, &qword_E234C8);
    sub_953198(v21);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v16[OBJC_IVAR___MusicDespacitoContentView_specs], sizeof(v22));
    memmove(&v16[OBJC_IVAR___MusicDespacitoContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_95313C(v21, v20);
    sub_95313C(v21, v20);
    v17 = v16;
    v18 = sub_953198(v22);
    sub_965A24(v18);
    sub_953198(v21);
  }
}

void sub_965DD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_isScrolling;
  v4[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + OBJC_IVAR___MusicDespacitoContentView_isScrolling);
  v6 = sub_933428(&off_D474A0);
  v7 = _s15TextContentViewC7ContentOMa(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = v4;
  sub_964A8C(v6);

  sub_12E1C(v3, &qword_E234C8);
  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    v10[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v11 = sub_933428(&off_D474C8);
    v8(v3, 1, 1, v7);
    v12 = v10;
    sub_964A8C(v11);

    sub_12E1C(v3, &qword_E234C8);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    v13[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v14 = sub_933428(&off_D474F0);
    v8(v3, 1, 1, v7);
    v15 = v13;
    sub_964A8C(v14);

    sub_12E1C(v3, &qword_E234C8);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    v16[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = *(v1 + v5);
    v17 = v16;
    sub_965DD4();
  }
}

uint64_t sub_966038(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *&v6[OBJC_IVAR___MusicTextContentView_alignment] = a1;
  v7 = sub_933428(&off_D47518);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = v6;
  sub_964A8C(v7);

  result = sub_12E1C(v5, &qword_E234C8);
  v12 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v12)
  {
    *&v12[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v13 = sub_933428(&off_D47540);
    v9(v5, 1, 1, v8);
    v14 = v12;
    sub_964A8C(v13);

    result = sub_12E1C(v5, &qword_E234C8);
  }

  v15 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v15)
  {
    *&v15[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v16 = sub_933428(&off_D47568);
    v9(v5, 1, 1, v8);
    v17 = v15;
    sub_964A8C(v16);

    return sub_12E1C(v5, &qword_E234C8);
  }

  return result;
}

id sub_96625C()
{
  result = [*(*(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  v2 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v2)
  {
    result = [*(v2 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  }

  v3 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___MusicTextContentView_label);

    return [v4 setAlpha:1.0];
  }

  return result;
}

void sub_96630C(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  sub_964254(a1, a2);

  v7 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v7)
  {
    v8 = v7;
    sub_96630C(a1 & 1, a2 & 1);
  }

  v9 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v9)
  {
    v10 = v9;
    sub_964254(a1 & 1, a2 & 1);
  }
}

double sub_9663E4(char a1, double a2, double a3)
{
  v4 = v3;
  [*(v4 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) sizeThatFits:?];
  v9 = v8;
  v10 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v10 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) & 1) == 0)
  {
    [v10 sizeThatFits:{a2, a3}];
  }

  v11 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v11 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) & 1) == 0)
  {
    [v11 sizeThatFits:{a2, a3}];
  }

  v12 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v12)
  {
    v13 = v12;
    sub_9663E4(a1 & 1, a2, a3);
  }

  return v9;
}

uint64_t sub_9665E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v20 = _s15TextContentViewC7ContentOMa(0);
  v3 = *(v20 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v20 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text);
  v11 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text + 8);
  v13 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_969D3C(v0 + v13, v9);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
  *v7 = v12;
  v7[1] = v11;
  sub_969D3C(v9, v7 + v14);
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_969DAC(v10 + v16, v5);
  swift_beginAccess();
  v17 = v10;

  sub_969E10(v7, v10 + v16);
  swift_endAccess();
  v18 = sub_933428(&off_D47590);
  sub_969DAC(v5, v2);
  (*(v3 + 56))(v2, 0, 1, v15);
  sub_964A8C(v18);

  sub_12E1C(v2, &qword_E234C8);

  sub_969E74(v5);
  sub_969E74(v7);
  return sub_12E1C(v9, &qword_E21E88);
}

void sub_9668C4()
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v2 = (&v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v77 - v3;
  __chkstk_darwin();
  v6 = &v77 - v5;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v77 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8);
  if (v12)
  {
    v86 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
    v13 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
    if (v13)
    {
      v14 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();
      sub_969D3C(v0 + v14, v11);
      v83 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
      v15 = v6;
      v16 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
      v17 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
      swift_beginAccess();
      v85 = v15;
      sub_969D3C(v0 + v17, v15);
      sub_969D3C(v11, v4);
      v18 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();

      v19 = v13;

      sub_96A31C(v4, v13 + v18);
      swift_endAccess();
      v20 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
      *v20 = v86;
      v20[1] = v12;

      sub_9665E0();
      v21 = sub_AB35A0();
      v84 = *(*(v21 - 8) + 56);
      v84(v4, 1, 1, v21);
      v22 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
      swift_beginAccess();
      sub_96A31C(v4, &v19[v22]);
      swift_endAccess();
      v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
      *v23 = 0;
      v23[1] = 0;

      sub_967B94();
      if (v16)
      {
        v24 = sub_AB9370();
        v26 = v25;

        v86 = v16;
        if (v24 != sub_AB9370() || v26 != v27)
        {
          v69 = sub_ABB3C0();

          v28 = v85;
          if ((v69 & 1) == 0)
          {
            sub_969D3C(v85, v4);
            v71 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
            swift_beginAccess();
            sub_96A31C(v4, &v19[v71]);
            swift_endAccess();
            v72 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
            v73 = v86;
            *v72 = v83;
            v72[1] = v73;
            goto LABEL_9;
          }

LABEL_8:
          v84(v4, 1, 1, v21);
          v29 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_96A31C(v4, &v19[v29]);
          swift_endAccess();
          v30 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v30 = 0;
          v30[1] = 0;
LABEL_9:

          sub_9673A8();
          sub_9672FC(0, 0);
          v31 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v31 = 0;
          v31[1] = 0;

          sub_9668C4(v32);
          v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          [v19 setNeedsLayout];

          sub_12E1C(v28, &qword_E21E88);
          sub_12E1C(v11, &qword_E21E88);
          return;
        }
      }

      v28 = v85;
      goto LABEL_8;
    }

    v83 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
    v35 = OBJC_IVAR___MusicDespacitoContentView_language;
    v36 = v7;
    v37 = v8;
    v78 = v8;
    swift_beginAccess();
    sub_969D3C(v0 + v35, v37);
    v38 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
    v77 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
    v81 = v38;
    v39 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
    swift_beginAccess();
    v85 = v36;
    sub_969D3C(v0 + v39, v36);
    v84 = v0;
    memcpy(v89, v0 + OBJC_IVAR___MusicDespacitoContentView_specs, 0x2B0uLL);
    v82 = _s20DespacitoContentViewCMa(0);
    v40 = objc_allocWithZone(v82);
    v40[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
    *&v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
    v41 = OBJC_IVAR___MusicDespacitoContentView_language;
    v79 = OBJC_IVAR___MusicDespacitoContentView_language;
    v42 = sub_AB35A0();
    v43 = *(*(v42 - 8) + 56);
    v43(&v40[v41], 1, 1, v42);
    v80 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
    v44 = &v40[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v44 = 0;
    v44[1] = 0;
    v45 = &v40[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
    *v45 = 0;
    v45[1] = 0;
    v40[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
    v43(&v40[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v42);
    v46 = &v40[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v46 = 0;
    v46[1] = 0;
    v40[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
    v43(&v40[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v42);
    v47 = &v40[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
    *v47 = 0;
    v47[1] = 0;
    v48 = v78;
    sub_969D3C(v78, v4);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
    v50 = v86;
    *v2 = v86;
    v2[1] = v12;
    sub_969D3C(v4, v2 + v49);
    v51 = v50;
    swift_storeEnumTagMultiPayload();
    v52 = objc_allocWithZone(_s15TextContentViewCMa(0));

    sub_95313C(v89, v88);

    sub_95313C(v89, v88);
    v53 = v81;

    v54 = sub_969F28(v2, v89, 0);
    sub_953198(v89);
    sub_12E1C(v4, &qword_E21E88);
    *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v54;
    memcpy(&v40[OBJC_IVAR___MusicDespacitoContentView_specs], v89, 0x2B0uLL);
    v55 = &v40[OBJC_IVAR___MusicDespacitoContentView_text];
    *v55 = v51;
    v55[1] = v12;
    v56 = v79;
    swift_beginAccess();

    sub_95313C(v89, v88);
    sub_96A2AC(v48, &v40[v56]);
    swift_endAccess();
    v40[v80] = 2;
    v87.receiver = v40;
    v87.super_class = v82;
    v57 = objc_msgSendSuper2(&v87, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v58 = *&v57[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
    v59 = v57;
    [v59 addSubview:v58];
    if (v53)
    {
      v60 = sub_AB9370();
      v62 = v61;

      v63 = v77;
      if (v60 == sub_AB9370() && v62 == v64)
      {
      }

      else
      {
        v70 = sub_ABB3C0();

        if ((v70 & 1) == 0)
        {
          sub_969D3C(v85, v4);
          v74 = v53;
          v75 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_96A31C(v4, &v59[v75]);
          swift_endAccess();
          v76 = &v59[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v76 = v63;
          *(v76 + 1) = v74;

          sub_9673A8();
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    v65 = &v59[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v65 = 0;
    *(v65 + 1) = 0;

    sub_9668C4(v66);

    sub_953198(v89);
    sub_12E1C(v85, &qword_E21E88);
    sub_12E1C(v48, &qword_E21E88);
    v59[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 0;
    sub_965DD4();
    v67 = v84;
    [v84 addSubview:v59];
    v68 = *(v67 + v83);
    *(v67 + v83) = v59;

    return;
  }

  v33 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
  v34 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v34)
  {
    [v34 removeFromSuperview];
    v34 = *(v0 + v33);
  }

  *(v0 + v33) = 0;
}

void sub_9672FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = &v4[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v7 = v5;
    *(v7 + 1) = v6;
    v8 = v4;

    sub_9673A8();
  }
}

void sub_9673A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v2 = &v56 - v1;
  v67 = _s15TextContentViewC7ContentOMa(0);
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = sub_AB35A0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v11 = &v56 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  if (!v14 || *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText] == *&v0[OBJC_IVAR___MusicDespacitoContentView_text] && v14 == *&v0[OBJC_IVAR___MusicDespacitoContentView_text + 8] || (v64 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText], (sub_ABB3C0() & 1) != 0))
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 1;
    return;
  }

  v58 = v2;
  v63 = v5;
  v15 = 264;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v15 = 272;
  }

  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v60 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v62 = inited + 32;
  v18 = sub_13C80(0, &qword_E23D60);
  v61 = v16;
  *(inited + 40) = v16;
  *(inited + 64) = v18;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v59 = NSLanguageIdentifierAttributeName;
  v19 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_969D3C(&v0[v19], v11);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    v20 = v61;
    v21 = v61;

    v22 = v60;
    v23 = v59;
    sub_12E1C(v11, &qword_E21E88);
LABEL_13:
    v30 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_14:
    *v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_15;
  }

  v57 = v0;
  (*(v7 + 16))(v9, v11, v6);
  v24 = v61;
  v25 = v61;

  v26 = v60;
  v27 = v59;
  sub_12E1C(v11, &qword_E21E88);
  sub_AB3570();
  (*(v7 + 8))(v9, v6);
  v28 = sub_AB34C0();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_12E1C(v13, &qword_E21E90);
    v0 = v57;
    v20 = v24;
    goto LABEL_13;
  }

  v54 = sub_AB34A0();
  v31 = v55;
  (*(v29 + 8))(v13, v28);
  v30 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  if (!v31)
  {
    v0 = v57;
    v20 = v24;
    goto LABEL_14;
  }

  *v30 = v54;
  v0 = v57;
  v20 = v24;
LABEL_15:
  *(inited + 88) = v31;
  sub_92CF00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = sub_AB9260();

  _s3__C3KeyVMa_2(0);
  sub_969ED0();
  isa = sub_AB8FD0().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v36 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v37 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v37)
  {
    v38 = v63;
    *v63 = v35;
    v39 = v67;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v41 = v66;
    sub_969DAC(v37 + v40, v66);
    swift_beginAccess();
    v42 = v37;
    v43 = v35;
    sub_969E10(v38, v37 + v40);
    swift_endAccess();
    v44 = sub_933428(&off_D475E0);
    v45 = v58;
    sub_969DAC(v41, v58);
    (*(v65 + 56))(v45, 0, 1, v39);
    sub_964A8C(v44);

    sub_12E1C(v45, &qword_E234C8);

    sub_969E74(v41);
    sub_969E74(v38);
  }

  else
  {
    memcpy(v69, &v0[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
    v46 = v69[36];
    v47 = v63;
    *v63 = v35;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v48 = v35;
    sub_95313C(v69, &v68);
    v49 = v46;
    v50 = v47;
    v51 = v0;
    v52 = sub_969F28(v50, v69, v46);

    sub_953198(v69);
    [v51 addSubview:v52];

    v53 = *&v51[v36];
    *&v51[v36] = v52;

    v51[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 0;
  }
}

void sub_967B94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v2 = &v52 - v1;
  v3 = _s15TextContentViewC7ContentOMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = sub_AB35A0();
  v62 = *(v9 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v12 = &v52 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90);
  __chkstk_darwin();
  v14 = &v52 - v13;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 1;
    return;
  }

  v54 = v4;
  v55 = v6;
  v60 = v3;
  v61 = v8;
  v56 = v2;
  v59 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = NSFontAttributeName;
  v58 = inited + 32;
  v53 = &v0[OBJC_IVAR___MusicDespacitoContentView_specs];
  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 312];
  v17 = sub_13C80(0, &qword_E23D60);
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v18 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v19 = &v0[v18];
  v20 = v0;
  sub_969D3C(v19, v12);
  if ((*(v62 + 48))(v12, 1, v9))
  {

    v21 = NSFontAttributeName;
    v22 = v16;
    v23 = NSLanguageIdentifierAttributeName;
    sub_12E1C(v12, &qword_E21E88);
    v24 = v61;
LABEL_7:
    v32 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_8:
    *v32 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_9;
  }

  v52 = v0;
  v25 = v62;
  v26 = v57;
  (*(v62 + 16))(v57, v12, v9);

  v27 = NSFontAttributeName;
  v28 = v16;
  v29 = NSLanguageIdentifierAttributeName;
  sub_12E1C(v12, &qword_E21E88);
  sub_AB3570();
  (*(v25 + 8))(v26, v9);
  v30 = sub_AB34C0();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_12E1C(v14, &qword_E21E90);
    v24 = v61;
    v20 = v52;
    goto LABEL_7;
  }

  v50 = sub_AB34A0();
  v33 = v51;
  (*(v31 + 8))(v14, v30);
  v32 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  v24 = v61;
  v20 = v52;
  if (!v33)
  {
    goto LABEL_8;
  }

  *v32 = v50;
LABEL_9:
  *(inited + 88) = v33;
  sub_92CF00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(NSAttributedString);
  v35 = sub_AB9260();

  _s3__C3KeyVMa_2(0);
  sub_969ED0();
  isa = sub_AB8FD0().super.isa;

  v37 = [v34 initWithString:v35 attributes:isa];

  v38 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v39 = *&v20[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (v39)
  {
    *v24 = v37;
    v40 = v60;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v42 = v55;
    sub_969DAC(v39 + v41, v55);
    swift_beginAccess();
    v43 = v39;
    v44 = v37;
    sub_969E10(v24, v39 + v41);
    swift_endAccess();
    v45 = sub_933428(&off_D475B8);
    v46 = v56;
    sub_969DAC(v42, v56);
    (*(v54 + 56))(v46, 0, 1, v40);
    sub_964A8C(v45);

    sub_12E1C(v46, &qword_E234C8);

    sub_969E74(v42);
    sub_969E74(v24);
  }

  else
  {
    memcpy(v65, v53, 0x2B0uLL);
    *v24 = v37;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v47 = v37;
    sub_95313C(v65, &v64);
    v48 = sub_969F28(v24, v65, 0);
    sub_953198(v65);
    [v20 addSubview:v48];

    v49 = *&v20[v38];
    *&v20[v38] = v48;

    v20[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 0;
  }
}

id sub_96831C(void *a1)
{
  [a1 setAlpha:0.0];
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  return [a1 setTransform:&v3];
}

uint64_t sub_968388()
{
  v81.receiver = v0;
  v81.super_class = _s20DespacitoContentViewCMa(0);
  objc_msgSendSuper2(&v81, "layoutSubviews");
  v80 = Int.seconds.getter(0);
  v73 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v1 = v0[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  if (v1 != 2 && (v1 & 1) == 0)
  {
    sub_968BBC(v0, &v80);
  }

  v3 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v4 = *&v0[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  [v0 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;

  v9 = *&v0[v3];
  swift_beginAccess();
  v10 = v80;
  v11 = v9;
  [v0 bounds];
  [v11 setFrame:{0.0, v10, CGRectGetWidth(v82), v8}];

  [*&v0[v3] frame];
  MaxY = CGRectGetMaxY(v83);
  v80 = MaxY;
  v13 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (!v14)
  {
    v27 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  [v0 bounds];
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  [*&v0[v3] frame];
  v20 = CGRectGetMaxY(v84) + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 328];
  [v0 bounds];
  Width = CGRectGetWidth(v85);
  v22 = objc_opt_self();
  v23 = [v22 _isInAnimationBlockWithAnimationsEnabled];
  v24 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate];
  if (v23)
  {
    if (v24 != 2)
    {
      if (v24)
      {
        v25 = *&v0[v13];
        *&v0[v13] = 0;

        v26 = 0;
      }

      else
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v15;
        *(v38 + 24) = 0;
        *(v38 + 32) = v20;
        *(v38 + 40) = Width;
        *(v38 + 48) = v19;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_96AE48;
        *(v39 + 24) = v38;
        v78 = sub_36C08;
        v79 = v39;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_1822E0;
        v77 = &block_descriptor_139_0;
        v40 = _Block_copy(&aBlock);
        v41 = v15;

        [v22 performWithoutAnimation:v40];
        _Block_release(v40);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_40;
        }

        [v41 frame];
        MaxY = CGRectGetMaxY(v87);
        v80 = MaxY;
        v26 = sub_96AE48;
      }

      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      v45 = v24 & 1;
      *(v44 + 16) = v45;
      *(v44 + 24) = v15;
      v46 = v15;
      sub_96A6CC(v46, v45, sub_96AE28, v44);

      swift_unknownObjectWeakDestroy();
      v27 = v26;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v24 == 2 || (v24 & 1) == 0)
  {
LABEL_16:
    v29 = v15;
    [v29 setFrame:{0.0, v20, Width, v19}];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v86.origin.x = v31;
    v86.origin.y = v33;
    v86.size.width = v35;
    v86.size.height = v37;
    MaxY = CGRectGetMaxY(v86);

    v27 = 0;
    v80 = MaxY;
    goto LABEL_20;
  }

  [v15 removeFromSuperview];

  v28 = *&v0[v13];
  *&v0[v13] = 0;

  v27 = 0;
LABEL_20:
  v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
LABEL_21:
  v47 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v48 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v48)
  {
    v72 = v27;
    v49 = v48;
    [v0 bounds];
    [v49 sizeThatFits:{v50, v51}];
    v53 = v52;
    v54 = MaxY + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 296];
    [v0 bounds];
    v55 = CGRectGetWidth(v88);
    v56 = objc_opt_self();
    v57 = [v56 _isInAnimationBlockWithAnimationsEnabled];
    v58 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate];
    if (v57)
    {
      v59 = v73;
      if (v58 != 2)
      {
        if (v58)
        {
          [v49 removeFromSuperview];
          v60 = 0;
LABEL_33:
          v68 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v69 = swift_allocObject();
          *(v69 + 16) = v58 & 1;
          *(v69 + 24) = v68;

          sub_96A6CC(v49, v58 & 1, sub_96A3FC, v69);

          v59 = v73;
          goto LABEL_34;
        }

        v63 = swift_allocObject();
        *(v63 + 16) = v49;
        *(v63 + 24) = 0;
        *(v63 + 32) = v54;
        *(v63 + 40) = v55;
        *(v63 + 48) = v53;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_96B0A8;
        *(v64 + 24) = v63;
        v78 = sub_2D4D0;
        v79 = v64;
        aBlock = _NSConcreteStackBlock;
        v75 = 1107296256;
        v76 = sub_1822E0;
        v77 = &block_descriptor_251;
        v65 = _Block_copy(&aBlock);
        v66 = v49;

        [v56 performWithoutAnimation:v65];
        _Block_release(v65);
        v67 = swift_isEscapingClosureAtFileLocation();

        if ((v67 & 1) == 0)
        {
          v90.origin.x = 0.0;
          v90.origin.y = v54;
          v90.size.width = v55;
          v90.size.height = v53;
          v80 = CGRectGetMaxY(v90);
          v60 = sub_96B0A8;
          goto LABEL_33;
        }

LABEL_40:
        __break(1u);
        return result;
      }
    }

    else
    {
      v59 = v73;
      if (v58 != 2 && (v58 & 1) != 0)
      {
        [v49 removeFromSuperview];

        v61 = *&v0[v47];
        *&v0[v47] = 0;

        v60 = 0;
LABEL_34:
        v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
        v27 = v72;
        goto LABEL_35;
      }
    }

    [v49 setFrame:{0.0, v54, v55, v53, v72}];
    v89.origin.x = 0.0;
    v89.origin.y = v54;
    v89.size.width = v55;
    v89.size.height = v53;
    v62 = CGRectGetMaxY(v89);

    v60 = 0;
    v80 = v62;
    goto LABEL_34;
  }

  v60 = 0;
  v59 = v73;
LABEL_35:
  v70 = v0[v59];
  if (v70 != 2 && (v70 & 1) != 0)
  {
    v71 = v27;
    sub_968BBC(v0, &v80);
    v27 = v71;
  }

  sub_17654(v27);
  return sub_17654(v60);
}

uint64_t sub_968BBC(uint64_t result, double *a2)
{
  v2 = *(result + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v2)
  {
    v4 = result;
    v5 = v2;
    [v4 bounds];
    sub_9663E4(*(*&v4[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), v6, v7);
    v9 = v8;
    swift_beginAccess();
    v10 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v11 = 0.0;
    if (v4[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition])
    {
      v11 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
    }

    v12 = *a2 + v11;
    v13 = v5;
    [v4 bounds];
    [v13 setFrame:{0.0, v12, CGRectGetWidth(v25), v9}];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    MaxY = CGRectGetMaxY(v26);

    result = swift_beginAccess();
    *a2 = MaxY;
    v23 = v4[v10];
    if (v23 != 2 && (v23 & 1) == 0)
    {
      v24 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
      result = swift_beginAccess();
      *a2 = MaxY + v24;
    }
  }

  return result;
}

void sub_968D68(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
      *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    }
  }
}

void sub_968E18(char **a1@<X8>)
{
  v84 = a1;
  v81 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v72 - v5;
  __chkstk_darwin();
  v8 = &v72 - v7;
  __chkstk_darwin();
  v10 = &v72 - v9;
  v91 = &v72 - v9;
  v11 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text + 8];
  v89 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text];
  v77 = v11;
  v12 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_969D3C(&v1[v12], v10);
  v13 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8];
  v73 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  v79 = v13;
  v14 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v85 = v8;
  sub_969D3C(&v1[v14], v8);
  v15 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  v74 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText];
  v75 = v15;
  v16 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8];
  v87 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v92 = v16;
  v80 = v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  v17 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8];
  v72 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  v90 = v17;
  v18 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  v83 = v6;
  sub_969D3C(&v1[v18], v6);
  v82 = v1;
  memcpy(v95, &v1[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
  v88 = _s20DespacitoContentViewCMa(0);
  v19 = objc_allocWithZone(v88);
  v19[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
  v20 = OBJC_IVAR___MusicDespacitoContentView_language;
  v76 = OBJC_IVAR___MusicDespacitoContentView_language;
  v21 = sub_AB35A0();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v78 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
  v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  *v24 = 0;
  v24[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v21);
  v25 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v25 = 0;
  v25[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
  v26 = v21;
  v27 = v75;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v26);
  v28 = v77;
  v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  *v29 = 0;
  v29[1] = 0;
  v30 = v86;
  sub_969D3C(v91, v86);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
  v32 = v89;
  v33 = v3;
  *v3 = v89;
  v3[1] = v28;
  v34 = v3 + v31;
  v35 = v30;
  sub_969D3C(v30, v34);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(_s15TextContentViewCMa(0));
  swift_bridgeObjectRetain_n();
  sub_95313C(v95, v94);

  v36 = v79;

  v37 = sub_969F28(v33, v95, 0);
  sub_12E1C(v35, &qword_E21E88);
  *&v19[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v37;
  memcpy(&v19[OBJC_IVAR___MusicDespacitoContentView_specs], v95, 0x2B0uLL);
  v38 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
  *v38 = v32;
  v38[1] = v28;
  v39 = v76;
  swift_beginAccess();

  sub_95313C(v95, v94);
  sub_96A2AC(v91, &v19[v39]);
  swift_endAccess();
  v19[v78] = v80;
  v93.receiver = v19;
  v93.super_class = v88;
  v40 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  v42 = v40;
  [v42 addSubview:v41];
  if (v36)
  {
    v43 = v27;
    v44 = sub_AB9370();
    v46 = v45;
    if (v44 == sub_AB9370() && v46 == v47)
    {
    }

    else
    {
      v48 = sub_ABB3C0();

      if (v48)
      {
      }

      else
      {
        v49 = v86;
        sub_969D3C(v85, v86);
        v50 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
        swift_beginAccess();
        sub_96A31C(v49, &v42[v50]);
        swift_endAccess();
        v51 = &v42[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
        *v51 = v73;
        *(v51 + 1) = v36;

        sub_967B94();
      }
    }

    v27 = v43;
  }

  if (!v27)
  {

    v57 = v83;
    if (!v90)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v92)
    {
      v62 = sub_AB9370();
      v64 = v63;
      if (v62 == sub_AB9370() && v64 == v65)
      {

        goto LABEL_27;
      }

      v66 = sub_ABB3C0();

      if ((v66 & 1) == 0)
      {
        sub_9672FC(v72, v90);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v52 = sub_AB9370();
  v54 = v53;

  v56 = sub_AB9370();
  v57 = v83;
  if (v52 == v56 && v54 == v55)
  {

    goto LABEL_16;
  }

  v58 = sub_ABB3C0();

  if (v58)
  {
LABEL_16:

    if (!v90)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v59 = v86;
  sub_969D3C(v57, v86);
  v60 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_96A31C(v59, &v42[v60]);
  swift_endAccess();
  v61 = &v42[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v61 = v74;
  *(v61 + 1) = v27;

  sub_9673A8();
  if (v90)
  {
    goto LABEL_19;
  }

LABEL_27:
  v67 = &v42[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v68 = v92;
  *v67 = v87;
  *(v67 + 1) = v68;

  sub_9668C4();

  sub_953198(v95);
  sub_12E1C(v57, &qword_E21E88);
  sub_12E1C(v85, &qword_E21E88);
  sub_12E1C(v91, &qword_E21E88);
  v69 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v70 = v82;
  sub_96630C(*(*&v82[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), 0);
  sub_966038(*(*&v70[v69] + OBJC_IVAR___MusicTextContentView_alignment));
  [v70 bounds];
  [v42 setFrame:?];

  v71 = v84;
  v84[3] = v88;
  *v71 = v42;
}

uint64_t sub_969740(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_ABB3A0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

id sub_9697F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_9699DC()
{
  sub_94CBA4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_969AD4()
{
  sub_969B58();
  if (v0 <= 0x3F)
  {
    sub_13C80(319, &qword_E229A8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_969B58()
{
  if (!qword_E23490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E21E88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E23490);
    }
  }
}

unint64_t sub_969BD0()
{
  result = qword_E234C0;
  if (!qword_E234C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E234C0);
  }

  return result;
}

uint64_t sub_969C24(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicDespacitoContentView_specs), a1, 0x2B0uLL);
  sub_95313C(a1, &v5);
  sub_953198(__dst);
  sub_965A24();
  return sub_953198(a1);
}

uint64_t sub_969D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_969DAC(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_969E10(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_969E74(uint64_t a1)
{
  v2 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_969ED0()
{
  result = qword_E23D70;
  if (!qword_E23D70)
  {
    _s3__C3KeyVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23D70);
  }

  return result;
}

char *sub_969F28(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a3;
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v3[OBJC_IVAR___MusicTextContentView_isSelected] = 0;
  *&v3[OBJC_IVAR___MusicTextContentView_alignment] = 0;
  v3[OBJC_IVAR___MusicTextContentView_isScrolling] = 1;
  v12 = OBJC_IVAR___MusicTextContentView_label;
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setAdjustsFontForContentSizeCategory:1];
  [v13 setLineBreakStrategy:3];
  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:4];
  [v13 setAutoresizingMask:18];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR___MusicTextContentView_selectedLabel] = 0;
  v14 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  *&v3[OBJC_IVAR___MusicTextContentView_textColorOverride] = 0;
  sub_969DAC(a1, &v3[OBJC_IVAR___MusicTextContentView_content]);
  memcpy(&v3[OBJC_IVAR___MusicTextContentView_specs], a2, 0x2B0uLL);
  v15 = v27;
  *&v3[v14] = v27;
  sub_95313C(a2, &v29);
  v16 = _s15TextContentViewCMa(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = sub_933428(&off_D47428);
  (*(v7 + 56))(v11, 1, 1, v6);
  v20 = v18;
  sub_964A8C(v19);
  v21 = a1;

  sub_12E1C(v11, &qword_E234C8);
  sub_969DAC(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_969E74(v9);
    v22 = &unk_E23000;
  }

  else
  {

    v23 = *&v20[OBJC_IVAR___MusicTextContentView_label];
    if (*(a2 + 88))
    {
      v24 = 4;
    }

    else
    {
      v24 = *(a2 + 80);
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
    [v23 setTextAlignment:v24];
    sub_12E1C(&v9[v25], &qword_E21E88);
    v22 = &unk_E23000;
  }

  [v20 addSubview:{*&v20[v22[96]], v27}];

  sub_969E74(v21);
  return v20;
}

uint64_t sub_96A2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_96A31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_96A38C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_96A3C4()
{

  return swift_deallocObject();
}

void sub_96A408()
{
  *(v0 + OBJC_IVAR___MusicTextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_alignment) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_isScrolling) = 1;
  v1 = OBJC_IVAR___MusicTextContentView_label;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakStrategy:3];
  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:4];
  [v2 setAutoresizingMask:18];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___MusicTextContentView_selectedLabel) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_textColorOverride) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_96A534()
{
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_isScrolling) = 1;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView) = 0;
  v1 = OBJC_IVAR___MusicDespacitoContentView_language;
  v2 = sub_AB35A0();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition) = 2;
  v4 = (v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLanguage, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationText);
  *v7 = 0;
  v7[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_96A6CC(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_13C80(0, &qword_E23940);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v36 = sub_9552E0;
    v37 = v8;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1B5EB4;
    v35 = &block_descriptor_145_4;
    v9 = _Block_copy(&v32);
    v10 = a1;

    [(objc_class *)v7.super.isa addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v36 = sub_710F8;
    v37 = v11;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_624AE8;
    v35 = &block_descriptor_151_3;
    v12 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v12];
    _Block_release(v12);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v36 = sub_9552E8;
    v37 = v14;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1B5EB4;
    v35 = &block_descriptor_157_0;
    v15 = _Block_copy(&v32);
    v16 = v10;

    [v13 addAnimations:v15];
    _Block_release(v15);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];
LABEL_5:

    return;
  }

  [a1 alpha];
  v18 = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_96AE9C;
  *(v21 + 24) = v20;
  v36 = sub_36C08;
  v37 = v21;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1822E0;
  v35 = &block_descriptor_167_4;
  v22 = _Block_copy(&v32);
  v23 = a1;

  [v19 performWithoutAnimation:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    sub_13C80(0, &qword_E23940);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v36 = sub_955390;
    v37 = v24;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1B5EB4;
    v35 = &block_descriptor_173_1;
    v25 = _Block_copy(&v32);
    v26 = v23;

    [(objc_class *)v7.super.isa addAnimations:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v36 = sub_70638;
    v37 = v27;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_624AE8;
    v35 = &block_descriptor_179_0;
    v28 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v28];
    _Block_release(v28);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    v36 = sub_96AEDC;
    v37 = v29;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1B5EB4;
    v35 = &block_descriptor_185_0;
    v30 = _Block_copy(&v32);
    v31 = v26;

    [v13 addAnimations:v30];
    _Block_release(v30);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_96AD90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_251(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_96ADF0()
{

  return swift_deallocObject();
}

id sub_96AE28()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_96AE64()
{

  return swift_deallocObject();
}

uint64_t sub_96AEA4()
{

  return swift_deallocObject();
}

uint64_t sub_96AEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_96AF60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0 - v2];
  result = *(v1 + OBJC_IVAR___MusicTextContentView_selectedLabel);
  if (result)
  {

    return [result setAlpha:v2];
  }

  return result;
}

unint64_t sub_96B00C()
{
  result = qword_E234D8;
  if (!qword_E234D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E234D8);
  }

  return result;
}

uint64_t sub_96B0DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_E8BA0(v1 + v3, a1);
}

id sub_96B134()
{
  v1 = UIView.untransformedFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  if (v8 == 2)
  {
    v9 = CGPoint.centerRight.unsafeMutableAddressor();
  }

  else if (v8)
  {
    v9 = CGPoint.center.unsafeMutableAddressor();
  }

  else
  {
    v9 = CGPoint.centerLeft.unsafeMutableAddressor();
  }

  v10 = v9;
  swift_beginAccess();
  [v0 setAnchorPoint:{*v10, v10[1]}];
  return UIView.untransformedFrame.setter(v1, v3, v5, v7);
}

void sub_96B1E4(void *a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] addSubview:v4];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF93E0;
  v7 = [v4 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_13C80(0, &qword_E23568);
  isa = sub_AB9740().super.isa;

  [v5 activateConstraints:isa];
}

void (*sub_96B4C4(uint64_t a1))(__int128 *a1, char a2)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_96B520;
}

void sub_96B520(__int128 *a1, char a2)
{
  v3 = (*(a1 + 2) + *(a1 + 3));
  v8 = *v3;
  v4 = *a1;
  *v3 = *a1;
  v5 = v4;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_96B1E4(v8);
  }

  else
  {
    sub_96B1E4(v8);
  }
}

id sub_96B5B8()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_96B61C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_96B61C(char *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = &a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
  [v2 setBackgroundColor:*&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 568]];
  [v2 setAlpha:0.0];
  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v2 layer];
  [v5 setCornerRadius:v3[72]];

  [a1 insertSubview:v2 atIndex:0];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF93E0;
  v8 = [v2 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-v3[73]];

  *(v7 + 32) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v3[73]];

  *(v7 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [a1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-v3[73]];

  *(v7 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [a1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v3[73]];

  *(v7 + 56) = v19;
  sub_13C80(0, &qword_E23568);
  isa = sub_AB9740().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

id sub_96BA1C(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result == v2)
  {
    return result;
  }

  v4 = sub_96B5B8();
  if ([v1 isHighlighted])
  {
    v5 = &v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    *v5 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius];
    v5[8] = 0;
    v6 = 0.0;
LABEL_6:
    sub_96C6CC(1, v6);
    goto LABEL_7;
  }

  if ((v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius + 8] & 1) == 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    goto LABEL_6;
  }

LABEL_7:
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  v9 = v4;
  v10 = v1;
  v11 = v9;
  v12 = [v10 isHighlighted];
  v13 = objc_allocWithZone(UISpringTimingParameters);
  if (v12)
  {
    v14 = 24.0;
  }

  else
  {
    v14 = 50.0;
  }

  v15 = 322.0;
  if (!v12)
  {
    v15 = 300.0;
  }

  v16 = 2.0;
  if (v12)
  {
    v16 = 1.0;
    v17 = 0.0;
  }

  else
  {
    v17 = 0.1;
  }

  if (v12)
  {
    v18 = 0.2;
  }

  else
  {
    v18 = 0.3;
  }

  v19 = [v13 initWithMass:v16 stiffness:v15 damping:v14 initialVelocity:{0.0, 0.0}];
  v20 = sub_97B3C0(v12);
  v21 = objc_opt_self();
  v36 = sub_97428C;
  v37 = v7;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1B5EB4;
  v35 = &block_descriptor_77_1;
  v22 = _Block_copy(&v32);
  swift_unknownObjectRetain();

  [v21 _animateWithDuration:0 delay:v20 options:v22 factory:0 animations:v18 completion:v17];
  _Block_release(v22);
  swift_unknownObjectRelease();
  [v19 settlingDuration];
  v24 = v23;
  [v19 mass];
  v26 = v25;
  [v19 stiffness];
  v28 = v27;
  [v19 damping];
  v30 = v29;
  v36 = sub_974294;
  v37 = v8;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1B5EB4;
  v35 = &block_descriptor_80_3;
  v31 = _Block_copy(&v32);

  [v21 _animateUsingSpringWithDuration:0 delay:v31 options:0 mass:v24 stiffness:v17 damping:v26 initialVelocity:v28 animations:v30 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v31);
}

void sub_96BDC8(void *a1, char *a2)
{
  v4 = [a2 isHighlighted];
  v5 = 0.0;
  v6 = 1.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [a1 setAlpha:v5];
  v7 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  if ([a2 isHighlighted])
  {
    v6 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 560];
  }

  [v7 setAlpha:v6];
}

id sub_96BE8C(char *a1, void *a2)
{
  if ([a1 isHighlighted])
  {
    v4 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 512];
    v5 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 520];
    v6 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 528];
    v7 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 536];
    v8 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 544];
    v9 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 552];
  }

  else
  {
    v5 = 0;
    v4 = 1.0;
    v6 = 0;
    v7 = 1.0;
    v8 = 0;
    v9 = 0;
  }

  v10 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [v10 setTransform:&v12];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return [a2 setTransform:&v12];
}

void sub_96C0F4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v3;
    (*(v4 + 80))(ObjectType, v4);
  }

  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
  *(v1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v8 = sub_96B4C4(v17);
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v1 + v6);
    v11 = *(v7 + 8);
    v12 = v7;
    v13 = swift_getObjectType();
    v14 = *(v11 + 40);
    v15 = v9;
    v14(v10, v13, v11);
    v16 = *v12;
    *v12 = v9;
    *(v12 + 8) = v11;
  }

  v8(v17, 0);
  sub_96C220(0, 0);
}

void sub_96C220(char a1, void *a2)
{
  if ([v2 isSelected] != (a1 & 1))
  {
    if ((a1 & 1) != 0 && v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] == 1)
    {
      sub_96CAF4(0, a2 != 0);
    }

    v5 = a1 & 1;
    [v2 setSelected:a1 & 1];
    if ([v2 isHighlighted])
    {
      [v2 setHighlighted:0];
      [v2 cancelTrackingWithEvent:0];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = sub_9742B4;
      if (!a2)
      {
LABEL_7:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          if (a1)
          {
            v29 = xmmword_B03DB0;
            v28 = xmmword_B28300;
            v11 = 0;
            v12 = 0;
          }

          else
          {
            v28 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400);
            v29 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416);
            v11 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432);
            v12 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 440);
          }

          v31 = v29;
          aBlock = v28;
          v32 = v11;
          v33 = v12;
          [v10 setTransform:&aBlock];
        }

        v22 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        v23 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (v23)
        {
          v24 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          *&aBlock = v23;
          v26 = *(v24 + 88);
          v27 = v23;
          v26(a1 & 1, 0, ObjectType, v24);
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = v5;
      v8 = sub_9740B8;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v32 = v8;
    v33 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_1B5EB4;
    *(&v31 + 1) = &block_descriptor_63_6;
    v14 = _Block_copy(&aBlock);
    v15 = a2;

    [v15 addAnimations:v14];
    _Block_release(v14);
    v16 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v17 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v17)
    {
      v18 = *(v16 + 1);
      v19 = swift_getObjectType();
      *&aBlock = v17;
      v20 = *(v18 + 88);
      v21 = v17;
      v20(a1 & 1, 1, v19, v18);

      return;
    }

    goto LABEL_18;
  }
}

void sub_96C5BC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = xmmword_B03DB0;
      v5 = xmmword_B28300;
      v6 = 0uLL;
    }

    else
    {
      v5 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
      v4 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
      v6 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
    }

    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v6;
    v7 = Strong;
    [Strong setTransform:v8];
  }
}

void sub_96C6CC(char a1, double a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius;
  if (*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] != a2)
  {
    v36 = v5;
    v7 = [v5 timingParameters];
    if (v7)
    {
      v8 = [v7 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = sub_AB9260();
        v10 = [objc_opt_self() animationWithKeyPath:v9];

        v11 = v10;
        v12 = 0.0;
        if (a1)
        {
          [v36 duration];
        }

        [v11 setDuration:v12];
        [v11 setFillMode:kCAFillModeBoth];
        isa = sub_AB3A30().super.super.isa;
        [v11 setFromValue:isa];

        v14 = sub_AB3A30().super.super.isa;
        [v11 setToValue:v14];

        [v11 setRemovedOnCompletion:0];
        [v8 controlPoint1];
        v16 = v15;
        [v8 controlPoint1];
        v18 = v17;
        [v8 controlPoint2];
        v20 = v19;
        [v8 controlPoint2];
        v22 = v21;
        v23 = objc_allocWithZone(CAMediaTimingFunction);
        *&v24 = v16;
        *&v25 = v18;
        *&v26 = v20;
        *&v27 = v22;
        v28 = [v23 initWithControlPoints:v24 :v25 :v26 :v27];
        [v11 setTimingFunction:v28];

        v29 = [v2 layer];
        [v29 setShouldRasterize:0];

        v30 = objc_opt_self();
        [v30 begin];
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        aBlock[4] = sub_9742B8;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        aBlock[3] = &block_descriptor_54_3;
        v32 = _Block_copy(aBlock);
        v33 = v2;

        [v30 setCompletionBlock:v32];
        _Block_release(v32);
        v34 = [v33 layer];
        v35 = sub_AB9260();
        [v34 addAnimation:v11 forKey:v35];

        [v30 commit];
        *&v2[v6] = a2;
        return;
      }
    }

    v5 = v36;
  }
}

void sub_96CAF4(char a1, char a2)
{
  if ([v2 isSelected])
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter])
  {
    v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
    isa = sub_AB9C10().super.super.isa;
    [v6 setValue:isa forKey:kCAFilterInputAmount];

    v8 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF85F0;
    v10 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
    v11 = sub_13C80(0, &qword_E229B8);
    *(v9 + 32) = v10;
    *(v9 + 88) = v11;
    *(v9 + 56) = v11;
    *(v9 + 64) = v6;
    v12 = v10;
    v13 = v6;
    v14 = sub_AB9740().super.isa;

    [v8 setFilters:v14];

    v15 = *&v2[v5];
    *&v2[v5] = v13;
  }

  v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused;
  if (v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] != (a1 & 1))
  {
    v51 = v16;
    v18 = [v16 timingParameters];
    if (v18)
    {
      v19 = [v18 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = sub_AB9260();
        v21 = [objc_opt_self() animationWithKeyPath:v20];

        v22 = v21;
        v23 = 0.0;
        if (a2)
        {
          [v51 duration];
        }

        [v22 setDuration:{v23, "previousBlurRadius"}];
        [v22 setFillMode:kCAFillModeBoth];
        v24 = v2[v17];
        v53 = &type metadata for Int;
        aBlock[0] = v24;
        __swift_project_boxed_opaque_existential_1(aBlock, &type metadata for Int);
        v25 = sub_ABB3A0();
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        [v22 setFromValue:v25];
        swift_unknownObjectRelease();
        v53 = &type metadata for Int;
        aBlock[0] = a1 & 1;
        __swift_project_boxed_opaque_existential_1(aBlock, &type metadata for Int);
        v26 = sub_ABB3A0();
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        [v22 setToValue:v26];
        swift_unknownObjectRelease();
        [v19 controlPoint1];
        v28 = v27;
        [v19 controlPoint1];
        v30 = v29;
        [v19 controlPoint2];
        v32 = v31;
        [v19 controlPoint2];
        v34 = v33;
        v35 = objc_allocWithZone(CAMediaTimingFunction);
        *&v36 = v28;
        *&v37 = v30;
        *&v38 = v32;
        *&v39 = v34;
        v40 = [v35 initWithControlPoints:v36 :v37 :v38 :v39];
        [v22 setTimingFunction:v40];

        v41 = [v2 layer];
        [v41 setShouldRasterize:0];

        v42 = objc_opt_self();
        [v42 begin];
        v43 = swift_allocObject();
        *(v43 + 16) = v2;
        v54 = sub_974014;
        v55 = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B5EB4;
        v53 = &block_descriptor_252;
        v44 = _Block_copy(aBlock);
        v45 = v2;

        [v42 setCompletionBlock:v44];
        _Block_release(v44);
        v46 = [v45 layer];
        v47 = sub_AB9260();
        [v46 addAnimation:v22 forKey:v47];

        [v42 commit];
        v48 = [v45 layer];
        v49 = [v22 toValue];
        v50 = sub_AB9260();
        [v48 setValue:v49 forKeyPath:v50];

        swift_unknownObjectRelease();
        v2[v17] = a1 & 1;
        return;
      }
    }

    v16 = v51;
  }
}

void sub_96D124(void *a1)
{
  v1 = [a1 layer];
  [v1 setShouldRasterize:1];
}

void sub_96D17C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234C8);
  __chkstk_darwin();
  v693 = &v640 - v1;
  sub_AB35C0();
  __chkstk_darwin();
  v691 = &v640 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = sub_AB9250();
  v710 = *(v706 - 1);
  __chkstk_darwin();
  v705 = &v640 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v640 - v4;
  v703 = _s15TextContentViewC7ContentOMa(0);
  v692 = *(v703 - 1);
  __chkstk_darwin();
  v673 = (&v640 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v702 = (&v640 - v7);
  v708 = type metadata accessor for Lyrics.Translation.Line(0);
  v709 = *(v708 - 1);
  __chkstk_darwin();
  *&v704 = &v640 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23D40);
  __chkstk_darwin();
  v689 = &v640 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v674 = &v640 - v10;
  __chkstk_darwin();
  v688 = &v640 - v11;
  __chkstk_darwin();
  v680 = &v640 - v12;
  __chkstk_darwin();
  v652 = &v640 - v13;
  __chkstk_darwin();
  v679 = &v640 - v14;
  __chkstk_darwin();
  v668 = (&v640 - v15);
  __chkstk_darwin();
  v667 = &v640 - v16;
  __chkstk_darwin();
  v666 = &v640 - v17;
  __chkstk_darwin();
  v661 = &v640 - v18;
  __chkstk_darwin();
  v665 = &v640 - v19;
  __chkstk_darwin();
  v658 = &v640 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23A50);
  __chkstk_darwin();
  v687 = &v640 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v640 - v22;
  __chkstk_darwin();
  v678 = &v640 - v24;
  __chkstk_darwin();
  v26 = &v640 - v25;
  __chkstk_darwin();
  v657 = &v640 - v27;
  __chkstk_darwin();
  v656 = &v640 - v28;
  __chkstk_darwin();
  v655 = &v640 - v29;
  __chkstk_darwin();
  v654 = &v640 - v30;
  __chkstk_darwin();
  v672 = &v640 - v31;
  __chkstk_darwin();
  v671 = (&v640 - v32);
  __chkstk_darwin();
  v670 = &v640 - v33;
  __chkstk_darwin();
  v669 = &v640 - v34;
  __chkstk_darwin();
  v698 = (&v640 - v35);
  __chkstk_darwin();
  v644 = &v640 - v36;
  __chkstk_darwin();
  v643 = &v640 - v37;
  __chkstk_darwin();
  v642 = &v640 - v38;
  __chkstk_darwin();
  v641 = &v640 - v39;
  __chkstk_darwin();
  v648 = &v640 - v40;
  __chkstk_darwin();
  v647 = &v640 - v41;
  __chkstk_darwin();
  v646 = &v640 - v42;
  __chkstk_darwin();
  v645 = &v640 - v43;
  __chkstk_darwin();
  v664 = &v640 - v44;
  __chkstk_darwin();
  v663 = &v640 - v45;
  __chkstk_darwin();
  v662 = &v640 - v46;
  __chkstk_darwin();
  v660 = &v640 - v47;
  __chkstk_darwin();
  v659 = &v640 - v48;
  __chkstk_darwin();
  v686 = &v640 - v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88);
  __chkstk_darwin();
  v701 = &v640 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v700 = (&v640 - v51);
  __chkstk_darwin();
  v707 = &v640 - v52;
  __chkstk_darwin();
  v696 = (&v640 - v53);
  __chkstk_darwin();
  v695 = &v640 - v54;
  __chkstk_darwin();
  v699 = (&v640 - v55);
  __chkstk_darwin();
  v676 = &v640 - v56;
  __chkstk_darwin();
  v675 = &v640 - v57;
  __chkstk_darwin();
  v682 = &v640 - v58;
  __chkstk_darwin();
  v684 = &v640 - v59;
  __chkstk_darwin();
  v683 = &v640 - v60;
  __chkstk_darwin();
  v694 = &v640 - v61;
  __chkstk_darwin();
  v690 = &v640 - v62;
  __chkstk_darwin();
  v697 = &v640 - v63;
  __chkstk_darwin();
  v649 = &v640 - v64;
  __chkstk_darwin();
  v651 = &v640 - v65;
  __chkstk_darwin();
  v650 = &v640 - v66;
  __chkstk_darwin();
  v653 = &v640 - v67;
  __chkstk_darwin();
  v711 = &v640 - v68;
  __chkstk_darwin();
  v677 = &v640 - v69;
  __chkstk_darwin();
  v685 = &v640 - v70;
  __chkstk_darwin();
  v681 = &v640 - v71;
  v72 = type metadata accessor for Lyrics.TextLine(0);
  v712 = *(v72 - 1);
  __chkstk_darwin();
  v74 = &v640 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v640 - v75;
  __chkstk_darwin();
  v78 = &v640 - v77;
  sub_96B134();
  v79 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  v713 = v0;
  sub_E8BA0(&v0[v79], v722);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F48);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v709 = v739;
      v712 = [objc_allocWithZone(NSMutableAttributedString) init];
      v89 = v5;
      sub_AB91E0();
      v90 = v710;
      v91 = v5;
      v92 = v706;
      v708 = v710[2];
      v708(v705, v91, v706);
      if (qword_E21C90 != -1)
      {
        swift_once();
      }

      v93 = qword_E74400;
      v94 = qword_E74400;
      v700 = v93;
      v95 = v94;
      sub_AB3550();
      v96 = v95;
      v711 = sub_AB9320();
      v97 = *(v90 + 8);
      v710 = (v90 + 8);
      v699 = v97;
      (v97)(v89, v92);
      v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50);
      v98 = swift_allocObject();
      v704 = xmmword_AF4EC0;
      *(v98 + 16) = xmmword_AF4EC0;
      *(v98 + 32) = NSFontAttributeName;
      v99 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
      v100 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 232];
      v701 = sub_13C80(0, &qword_E23D60);
      *(v98 + 64) = v701;
      *(v98 + 40) = v100;
      v698 = NSFontAttributeName;
      v101 = v100;
      sub_92CF00(v98);
      swift_setDeallocating();
      sub_12E1C(v98 + 32, &qword_E224C0);
      swift_deallocClassInstance();
      v102 = objc_allocWithZone(NSAttributedString);
      v103 = sub_AB9260();

      _s3__C3KeyVMa_2(0);
      v697 = v104;
      v696 = sub_969ED0();
      isa = sub_AB8FD0().super.isa;

      v106 = [v102 initWithString:v103 attributes:isa];

      v107 = v712;
      v711 = v106;
      [v712 appendAttributedString:v106];
      *&v741[0] = v709;
      sub_AB91E0();
      v108 = v706;
      v708(v705, v89, v706);
      sub_AB3550();
      v109 = v99;
      sub_AB9320();
      (v699)(v89, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22618);
      sub_939B18();
      sub_AB9140();

      v110 = swift_allocObject();
      *(v110 + 16) = v704;
      *(v110 + 32) = v698;
      v111 = *(v99 + 30);
      *(v110 + 64) = v701;
      *(v110 + 40) = v111;
      v112 = v111;
      sub_92CF00(v110);
      swift_setDeallocating();
      sub_12E1C(v110 + 32, &qword_E224C0);
      swift_deallocClassInstance();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = sub_AB9260();

      v115 = sub_AB8FD0().super.isa;

      v116 = [v113 initWithString:v114 attributes:v115];

      [v107 appendAttributedString:v116];
      v117 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      v118 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v118 && (_s15TextContentViewCMa(0), (v119 = swift_dynamicCastClass()) != 0))
      {
        v120 = v119;
        v121 = v702;
        *v702 = v107;
        v709 = v109;
        v122 = v703;
        swift_storeEnumTagMultiPayload();
        v123 = OBJC_IVAR___MusicTextContentView_content;
        swift_beginAccess();
        v710 = v116;
        v124 = v673;
        sub_973F74(v120 + v123, v673, _s15TextContentViewC7ContentOMa);
        swift_beginAccess();
        v125 = v107;
        v708 = v118;
        sub_969E10(v121, v120 + v123);
        swift_endAccess();
        v126 = sub_933428(&off_D47608);
        v127 = v693;
        sub_973F74(v124, v693, _s15TextContentViewC7ContentOMa);
        v128 = v692[7];
        v128(v127, 0, 1, v122);
        sub_964A8C(v126);

        sub_12E1C(v127, &qword_E234C8);
        v129 = v124;
        v116 = v710;
        sub_973F14(v129, _s15TextContentViewC7ContentOMa);
        sub_973F14(v121, _s15TextContentViewC7ContentOMa);
        v130 = *(v709 + 96);
        if (*(v709 + 104))
        {
          v130 = 4;
        }

        *(v120 + OBJC_IVAR___MusicTextContentView_alignment) = v130;
        v131 = sub_933428(&off_D47630);
        v128(v127, 1, 1, v122);
        v107 = v712;
        sub_964A8C(v131);

        sub_12E1C(v127, &qword_E234C8);
        v132 = v713;
      }

      else
      {
        memcpy(v741, v109, 0x2B0uLL);
        v138 = v702;
        v139 = v703;
        *v702 = v107;
        swift_storeEnumTagMultiPayload();
        v140 = objc_allocWithZone(_s15TextContentViewCMa(0));
        v141 = v107;
        sub_95313C(v741, &v719);
        v142 = sub_969F28(v138, v741, 0);
        sub_953198(v741);
        v143 = v109[12];
        if (*(v109 + 104))
        {
          v143 = 4;
        }

        *&v142[OBJC_IVAR___MusicTextContentView_alignment] = v143;
        v144 = sub_933428(&off_D47658);
        v145 = v693;
        (v692[7])(v693, 1, 1, v139);
        sub_964A8C(v144);

        sub_12E1C(v145, &qword_E234C8);
        v146 = *v117;
        *v117 = v142;
        *(v117 + 1) = &off_D4B170;
        v147 = v142;
        v132 = v713;
        sub_96B1E4(v146);
      }

      [v132 setEnabled:0];

      goto LABEL_300;
    }

    if (!swift_dynamicCast())
    {
LABEL_300:
      __swift_destroy_boxed_opaque_existential_0(v722);
      return;
    }

    v133 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    v134 = v713;
    v135 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v136 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs])
    {
      *v135 = 0;
      v135[1] = 0;
      sub_96B1E4(v136);
LABEL_271:

      [v134 setEnabled:1];
      goto LABEL_300;
    }

    v206 = v736[0];
    v207 = *&v736[1];
    v208 = v737;
    v209 = v738;
    if (v136)
    {
      _s23InstrumentalContentViewCMa();
      v210 = swift_dynamicCastClass();
      if (v210)
      {
        v211 = v210;
        v212 = v210 + OBJC_IVAR___MusicInstrumentalContentView_line;
        *v212 = v206;
        *(v212 + 8) = v207;
        *(v212 + 16) = v208;
        *(v212 + 24) = v209;
        *(v210 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
        v136 = v136;
        sub_9620CC();
        v134 = v713;
        v213 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
        v214 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
        v215 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment];
        *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v213;
        if (v213 == v215)
        {
          goto LABEL_271;
        }

        v216 = OBJC_IVAR___MusicInstrumentalContentView_dots;
        swift_beginAccess();
        v217 = *&v211[v216];
        if (v217 >> 62)
        {
          if (sub_ABB060())
          {
LABEL_58:
            v218 = &v211[OBJC_IVAR___MusicInstrumentalContentView_specs];
            v219 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
            v220 = v219 * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
            v221 = Int.seconds.getter(0);
            v222 = *&v211[v214];
            if (v222 == 1)
            {
              [v211 bounds];
              v223 = (CGRectGetWidth(v745) - v220) * 0.5;
            }

            else
            {
              v223 = v221;
              if (v222 == 2)
              {
                [v211 bounds];
                v223 = CGRectGetWidth(v742) - v220;
              }
            }

            v605 = *&v211[v216];
            if (v605 >> 62)
            {
              v606 = sub_ABB060();
              if (v606)
              {
LABEL_283:
                if (v606 >= 1)
                {

                  v607 = 0;
                  do
                  {
                    if ((v605 & 0xC000000000000001) != 0)
                    {
                      v608 = sub_ABAE20();
                    }

                    else
                    {
                      v608 = *(v605 + 8 * v607 + 32);
                    }

                    v609 = v608;
                    ++v607;
                    [v211 bounds];
                    UIView.untransformedFrame.setter(v223, v610 * 0.5 - v219 * 0.5, v219, v219);

                    v223 = v223 + v219 + v218[77];
                  }

                  while (v606 != v607);

                  v134 = v713;
                  goto LABEL_271;
                }

LABEL_310:
                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v606 = *(&dword_10 + (v605 & 0xFFFFFFFFFFFFFF8));
              if (v606)
              {
                goto LABEL_283;
              }
            }

            v134 = v713;
            goto LABEL_271;
          }
        }

        else if (*(&dword_10 + (v217 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        sub_963BDC();
        goto LABEL_58;
      }
    }

    v274 = v713;
    memcpy(v741, &v713[v133], 0x2B0uLL);
    objc_allocWithZone(_s23InstrumentalContentViewCMa());
    sub_95313C(v741, &v719);
    v275 = sub_961CC8(v206, v209, v741, v207, v208);
    v276 = *&v274[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
    v277 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
    v278 = *&v275[OBJC_IVAR___MusicInstrumentalContentView_alignment];
    *&v275[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v276;
    if (v276 == v278)
    {
      goto LABEL_270;
    }

    v279 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v280 = *&v275[v279];
    if (v280 >> 62)
    {
      if (sub_ABB060())
      {
        goto LABEL_90;
      }
    }

    else if (*(&dword_10 + (v280 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_90:
      v281 = &v275[OBJC_IVAR___MusicInstrumentalContentView_specs];
      v282 = *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
      v283 = v282 * *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v275[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
      v284 = Int.seconds.getter(0);
      v285 = *&v275[v277];
      if (v285 == 1)
      {
        [v275 bounds];
        v286 = (CGRectGetWidth(v744) - v283) * 0.5;
      }

      else
      {
        v286 = v284;
        if (v285 == 2)
        {
          [v275 bounds];
          v286 = CGRectGetWidth(v743) - v283;
        }
      }

      v585 = *&v275[v279];
      if (v585 >> 62)
      {
        v586 = sub_ABB060();
        if (!v586)
        {
          goto LABEL_270;
        }
      }

      else
      {
        v586 = *(&dword_10 + (v585 & 0xFFFFFFFFFFFFFF8));
        if (!v586)
        {
          goto LABEL_270;
        }
      }

      if (v586 < 1)
      {
        __break(1u);
        goto LABEL_310;
      }

      v587 = 0;
      do
      {
        if ((v585 & 0xC000000000000001) != 0)
        {
          v588 = sub_ABAE20();
        }

        else
        {
          v588 = *(v585 + 8 * v587 + 32);
        }

        v589 = v588;
        ++v587;
        [v275 bounds];
        UIView.untransformedFrame.setter(v286, v590 * 0.5 - v282 * 0.5, v282, v282);

        v286 = v286 + v282 + v281[77];
      }

      while (v586 != v587);

LABEL_270:
      v136 = *v135;
      *v135 = v275;
      v135[1] = &off_D4AD40;
      v591 = v275;
      v134 = v713;
      sub_96B1E4(v136);

      goto LABEL_271;
    }

    sub_963BDC();
    goto LABEL_90;
  }

  v80 = sub_973EB0(v78, v76);
  v81 = &v76[v72[18]];
  v82 = *v81;
  v693 = *(v81 + 1);
  v83 = (v82)(v723, v80);
  v692 = v82;
  if (!v723[3])
  {
    v137 = 2;
LABEL_26:
    LODWORD(v705) = v137;
    goto LABEL_27;
  }

  v84 = *v723;
  v85 = sub_12E1C(v723, &qword_E21E80);
  v86 = (*&v76[v72[17]])(v85);
  if (!*(v86 + 16))
  {

    v137 = 2;
    goto LABEL_26;
  }

  v87 = *(v86 + 64);

  if (!*(v87 + 16))
  {

    if (v84 < 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v88 = *(v87 + 32);

  if (v84 >= v88)
  {
LABEL_25:
    v137 = 1;
    goto LABEL_26;
  }

LABEL_6:
  LODWORD(v705) = 0;
LABEL_27:
  v706 = v72;
  v148 = v72[17];
  v710 = v76;
  v149 = &v76[v148];
  v150 = *v149;
  v151 = *((*v149)(v83) + 16);

  if (!v151 || (v153 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs, (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] & 1) != 0))
  {
    v154 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v155 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v156 = v713;
    if (v155)
    {
      _s20DespacitoContentViewCMa(0);
      v152 = swift_dynamicCastClass();
      if (v152)
      {
        v157 = v152;
        v158 = v706;
        v159 = v710;
        v160 = *(v710 + v706[16]);
        v703 = v155;
        v707 = v160();
        v702 = v161;
        sub_15F84(v159 + v158[7], v699, &qword_E21E88);
        v162 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
        swift_beginAccess();
        sub_15F84(&v156[v162], v26, &qword_E23A50);
        v163 = *(v712 + 6);
        if (v163(v26, 1, v158))
        {
          sub_12E1C(v26, &qword_E23A50);
          v700 = 0;
          v164 = 0;
        }

        else
        {
          sub_973F74(v26, v74, type metadata accessor for Lyrics.TextLine);
          v224 = sub_12E1C(v26, &qword_E23A50);
          v700 = (*&v74[v158[16]])(v224);
          v164 = v225;
          sub_973F14(v74, type metadata accessor for Lyrics.TextLine);
        }

        v226 = v678;
        sub_15F84(&v156[v162], v678, &qword_E23A50);
        v227 = v163(v226, 1, v158);
        v701 = v164;
        if (v227)
        {
          sub_12E1C(v226, &qword_E23A50);
          v228 = sub_AB35A0();
          (*(*(v228 - 8) + 56))(v695, 1, 1, v228);
        }

        else
        {
          sub_15F84(v226 + v158[7], v695, &qword_E21E88);
          sub_12E1C(v226, &qword_E23A50);
        }

        v229 = v708;
        v230 = v679;
        v231 = v680;
        v232 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
        swift_beginAccess();
        sub_15F84(&v156[v232], v230, &qword_E23D40);
        v233 = *(v709 + 48);
        if (v233(v230, 1, v229))
        {
          v234 = sub_12E1C(v230, &qword_E23D40);
          v706 = 0;
          v235 = 0;
        }

        else
        {
          v236 = v704;
          sub_973F74(v230, v704, type metadata accessor for Lyrics.Translation.Line);
          sub_12E1C(v230, &qword_E23D40);
          v235 = *(v236 + 8);
          v706 = *v236;

          v234 = sub_973F14(v236, type metadata accessor for Lyrics.Translation.Line);
        }

        v237 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        if (v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] != 1)
        {
          v238 = 0;
          v712 = 0;
          v698 = 0;
          v709 = 0;
          v239 = v713;
          goto LABEL_153;
        }

        (v692)(v741, v234);
        v238 = *(&v741[1] + 1);
        if (*(&v741[1] + 1))
        {
          v712 = *&v741[1];

          sub_12E1C(v741, &qword_E21E80);
        }

        else
        {
          v712 = 0;
        }

        v239 = v713;
        if (v713[v237] == 1)
        {
          v385 = v652;
          sub_15F84(&v713[v232], v652, &qword_E23D40);
          if (!v233(v385, 1, v708))
          {
            v519 = v385;
            v520 = v704;
            sub_973F74(v519, v704, type metadata accessor for Lyrics.Translation.Line);
            sub_12E1C(v652, &qword_E23D40);
            v521 = *(v520 + 24);
            v698 = *(v520 + 16);
            v709 = v521;

            sub_973F14(v520, type metadata accessor for Lyrics.Translation.Line);
LABEL_153:
            sub_15F84(&v239[v232], v231, &qword_E23D40);
            v386 = v708;
            if (v233(v231, 1, v708))
            {
              sub_12E1C(v231, &qword_E23D40);
              v387 = sub_AB35A0();
              (*(*(v387 - 8) + 56))(v696, 1, 1, v387);
            }

            else
            {
              v388 = v704;
              sub_973F74(v231, v704, type metadata accessor for Lyrics.Translation.Line);
              sub_12E1C(v231, &qword_E23D40);
              v389 = *(v386 + 6);
              v390 = sub_AB35A0();
              v391 = *(v390 - 8);
              v392 = v388 + v389;
              v393 = v696;
              (*(v391 + 16))(v696, v392, v390);
              sub_973F14(v388, type metadata accessor for Lyrics.Translation.Line);
              (*(v391 + 56))(v393, 0, 1, v390);
            }

            v394 = v711;
            sub_15F84(v699, v711, &qword_E21E88);
            v395 = OBJC_IVAR___MusicDespacitoContentView_language;
            swift_beginAccess();
            sub_160B4(v394, &v157[v395], &qword_E21E88);
            swift_endAccess();
            v396 = &v157[OBJC_IVAR___MusicDespacitoContentView_text];
            v397 = v702;
            *v396 = v707;
            v396[1] = v397;

            sub_9665E0();
            v398 = v701;
            if (v701)
            {
              v399 = sub_AB9370();
              v401 = v400;
              if (v399 == sub_AB9370() && v401 == v402)
              {
              }

              else
              {
                v403 = sub_ABB3C0();

                if ((v403 & 1) == 0)
                {
                  v502 = v398;
                  v503 = v711;
                  sub_15F84(v695, v711, &qword_E21E88);
                  v504 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                  swift_beginAccess();
                  sub_160B4(v503, &v157[v504], &qword_E21E88);
                  swift_endAccess();
                  v505 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                  *v505 = v700;
                  v505[1] = v502;
LABEL_163:

                  sub_967B94();
                  if (v235)
                  {
                    v408 = sub_AB9370();
                    v410 = v409;

                    if (v408 == sub_AB9370() && v410 == v411)
                    {
                    }

                    else
                    {
                      v412 = sub_ABB3C0();

                      if ((v412 & 1) == 0)
                      {
                        v506 = v711;
                        sub_15F84(v696, v711, &qword_E21E88);
                        v507 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                        swift_beginAccess();
                        sub_160B4(v506, &v157[v507], &qword_E21E88);
                        swift_endAccess();
                        v508 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                        *v508 = v706;
                        v508[1] = v235;
                        v413 = v713;
LABEL_170:
                        v418 = v712;
                        v419 = v709;

                        sub_9673A8();
                        if (v419)
                        {
                          if (v238)
                          {
                            v420 = sub_AB9370();
                            v422 = v421;
                            if (v420 == sub_AB9370() && v422 == v423)
                            {
                            }

                            else
                            {
                              v424 = sub_ABB3C0();

                              if ((v424 & 1) == 0)
                              {
                                sub_9672FC(v698, v419);
                                v413 = v713;
                                goto LABEL_179;
                              }
                            }

                            v413 = v713;
                          }

                          else
                          {
                          }
                        }

                        sub_9672FC(0, 0);
LABEL_179:
                        v425 = &v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
                        *v425 = v418;
                        v425[1] = v238;

                        sub_9668C4();
                        v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = v705;
                        [v157 setNeedsLayout];

                        sub_12E1C(v696, &qword_E21E88);
                        sub_12E1C(v695, &qword_E21E88);
                        sub_12E1C(v699, &qword_E21E88);
                        sub_966038(*&v413[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);

LABEL_299:
                        [v413 setEnabled:1];
                        sub_973F14(v710, type metadata accessor for Lyrics.TextLine);
                        goto LABEL_300;
                      }
                    }
                  }

                  v413 = v713;
                  v414 = sub_AB35A0();
                  v415 = v711;
                  (*(*(v414 - 8) + 56))(v711, 1, 1, v414);
                  v416 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                  swift_beginAccess();
                  sub_160B4(v415, &v157[v416], &qword_E21E88);
                  swift_endAccess();
                  v417 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                  *v417 = 0;
                  v417[1] = 0;
                  goto LABEL_170;
                }
              }
            }

            v404 = sub_AB35A0();
            v405 = v711;
            (*(*(v404 - 8) + 56))(v711, 1, 1, v404);
            v406 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
            swift_beginAccess();
            sub_160B4(v405, &v157[v406], &qword_E21E88);
            swift_endAccess();
            v407 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
            *v407 = 0;
            v407[1] = 0;
            goto LABEL_163;
          }

          sub_12E1C(v385, &qword_E23D40);
        }

        v698 = 0;
        v709 = 0;
        goto LABEL_153;
      }
    }

    v698 = v154;
    v165 = v706;
    v166 = v710;
    v699 = (*(v710 + v706[16]))(v152);
    v697 = v167;
    sub_15F84(v166 + v165[7], v707, &qword_E21E88);
    v168 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
    swift_beginAccess();
    sub_15F84(&v156[v168], v23, &qword_E23A50);
    v169 = *(v712 + 6);
    if (v169(v23, 1, v165))
    {
      sub_12E1C(v23, &qword_E23A50);
      v694 = 0;
      v696 = 0;
    }

    else
    {
      sub_973F74(v23, v74, type metadata accessor for Lyrics.TextLine);
      v191 = sub_12E1C(v23, &qword_E23A50);
      v694 = (*&v74[v165[16]])(v191);
      v696 = v192;
      sub_973F14(v74, type metadata accessor for Lyrics.TextLine);
    }

    v193 = v709;
    v194 = v689;
    v195 = v687;
    sub_15F84(&v156[v168], v687, &qword_E23A50);
    if (v169(v195, 1, v165))
    {
      sub_12E1C(v195, &qword_E23A50);
      v196 = sub_AB35A0();
      (*(*(v196 - 8) + 56))(v700, 1, 1, v196);
    }

    else
    {
      sub_15F84(v195 + v165[7], v700, &qword_E21E88);
      sub_12E1C(v195, &qword_E23A50);
    }

    v197 = v688;
    v198 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
    swift_beginAccess();
    sub_15F84(&v156[v198], v197, &qword_E23D40);
    v199 = *(v193 + 48);
    v200 = v708;
    if (v199(v197, 1, v708))
    {
      v201 = sub_12E1C(v197, &qword_E23D40);
      v693 = 0;
      v706 = 0;
    }

    else
    {
      v202 = v704;
      sub_973F74(v197, v704, type metadata accessor for Lyrics.Translation.Line);
      sub_12E1C(v197, &qword_E23D40);
      v203 = v202[1];
      v693 = *v202;
      v706 = v203;

      v201 = sub_973F14(v202, type metadata accessor for Lyrics.Translation.Line);
    }

    v204 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    if (v156[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] == 1)
    {
      (v692)(v736, v201);
      v205 = v738;
      if (v738)
      {
        v709 = *&v737;

        sub_12E1C(v736, &qword_E21E80);
      }

      else
      {
        v709 = 0;
      }

      v240 = v674;
      if (v156[v204] == 1)
      {
        sub_15F84(&v156[v198], v674, &qword_E23D40);
        if (!v199(v240, 1, v200))
        {
          v513 = v240;
          v712 = v205;
          v514 = v240;
          v515 = v704;
          sub_973F74(v513, v704, type metadata accessor for Lyrics.Translation.Line);
          v516 = v514;
          v205 = v712;
          sub_12E1C(v516, &qword_E23D40);
          v517 = *(v515 + 24);
          v692 = *(v515 + 16);
          v695 = v517;

          sub_973F14(v515, type metadata accessor for Lyrics.Translation.Line);
LABEL_77:
          v712 = v205;
          sub_15F84(&v156[v198], v194, &qword_E23D40);
          if (v199(v194, 1, v200))
          {
            sub_12E1C(v194, &qword_E23D40);
            v241 = sub_AB35A0();
            (*(*(v241 - 8) + 56))(v701, 1, 1, v241);
          }

          else
          {
            v242 = v704;
            sub_973F74(v194, v704, type metadata accessor for Lyrics.Translation.Line);
            sub_12E1C(v194, &qword_E23D40);
            v243 = *(v200 + 6);
            v241 = sub_AB35A0();
            v244 = *(v241 - 8);
            v245 = v242 + v243;
            v156 = v713;
            v246 = v701;
            (*(v244 + 16))(v701, v245, v241);
            sub_973F14(v242, type metadata accessor for Lyrics.Translation.Line);
            (*(v244 + 56))(v246, 0, 1, v241);
          }

          memcpy(v741, &v156[v204], 0x2B0uLL);
          v708 = _s20DespacitoContentViewCMa(0);
          v247 = objc_allocWithZone(v708);
          v247[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
          v248 = OBJC_IVAR___MusicDespacitoContentView_language;
          sub_AB35A0();
          v249 = *(*(v241 - 8) + 56);
          v249(&v247[v248], 1, 1, v241);
          *&v704 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
          v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          v250 = &v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v250 = 0;
          v250[1] = 0;
          v251 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
          *v251 = 0;
          v251[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v241);
          v252 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v252 = 0;
          v252[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v241);
          v253 = &v247[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
          *v253 = 0;
          v253[1] = 0;
          v254 = v707;
          v255 = v711;
          sub_15F84(v707, v711, &qword_E21E88);
          v256 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E234D0) + 48);
          v257 = v702;
          v258 = v699;
          v259 = v697;
          *v702 = v699;
          *(v257 + 8) = v259;
          sub_15F84(v255, v257 + v256, &qword_E21E88);
          swift_storeEnumTagMultiPayload();
          v260 = objc_allocWithZone(_s15TextContentViewCMa(0));

          sub_95313C(v741, &v719);
          v261 = sub_969F28(v257, v741, 0);
          sub_12E1C(v255, &qword_E21E88);
          *&v247[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v261;
          memcpy(&v247[OBJC_IVAR___MusicDespacitoContentView_specs], v741, 0x2B0uLL);
          v262 = &v247[OBJC_IVAR___MusicDespacitoContentView_text];
          *v262 = v258;
          v262[1] = v259;
          swift_beginAccess();

          sub_95313C(v741, &v719);
          sub_1FBB9C(v254, &v247[v248], &qword_E21E88);
          swift_endAccess();
          v247[v704] = v705;
          v718.receiver = v247;
          v718.super_class = v708;
          v263 = objc_msgSendSuper2(&v718, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v264 = *&v263[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
          v265 = v263;
          [v265 addSubview:v264];
          v266 = v709;
          v267 = v696;
          if (v696)
          {
            v268 = sub_AB9370();
            v270 = v269;
            v271 = v694;
            if (v268 == sub_AB9370() && v270 == v272)
            {
            }

            else
            {
              v273 = sub_ABB3C0();

              if (v273)
              {
              }

              else
              {
                v358 = v711;
                sub_15F84(v700, v711, &qword_E21E88);
                v359 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                swift_beginAccess();
                sub_160B4(v358, &v265[v359], &qword_E21E88);
                swift_endAccess();
                v360 = &v265[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                *v360 = v271;
                v360[1] = v267;

                sub_967B94();
              }
            }
          }

          v361 = v712;
          v362 = v706;
          if (v706)
          {
            v363 = sub_AB9370();
            v365 = v364;

            v366 = v693;
            v367 = sub_AB9370();
            v369 = v713;
            if (v363 == v367 && v365 == v368)
            {
            }

            else
            {
              v370 = sub_ABB3C0();

              if (v370)
              {
              }

              else
              {
                v371 = v711;
                sub_15F84(v701, v711, &qword_E21E88);
                v372 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                swift_beginAccess();
                v373 = &v265[v372];
                v369 = v713;
                sub_160B4(v371, v373, &qword_E21E88);
                swift_endAccess();
                v374 = &v265[OBJC_IVAR___MusicDespacitoContentView_translationText];
                *v374 = v366;
                v374[1] = v362;

                sub_9673A8();
              }
            }
          }

          else
          {

            v369 = v713;
          }

          v375 = v695;
          if (!v695)
          {
            goto LABEL_219;
          }

          if (v361)
          {
            v376 = sub_AB9370();
            v378 = v377;
            if (v376 == sub_AB9370() && v378 == v379)
            {

LABEL_219:
              v509 = &v265[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
              *v509 = v266;
              *(v509 + 1) = v361;

              sub_9668C4();

              sub_953198(v741);
              sub_12E1C(v701, &qword_E21E88);
              sub_12E1C(v700, &qword_E21E88);
              sub_12E1C(v707, &qword_E21E88);
              sub_966038(*&v369[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);
              v510 = v698;
              v511 = *v698;
              *v698 = v265;
              v510[1] = &off_D4B108;
              v512 = v265;
              sub_96B1E4(v511);

              v413 = v713;
              goto LABEL_299;
            }

            v380 = sub_ABB3C0();

            if ((v380 & 1) == 0)
            {
              sub_9672FC(v692, v375);
              goto LABEL_219;
            }
          }

          goto LABEL_219;
        }

        sub_12E1C(v240, &qword_E23D40);
      }
    }

    else
    {
      v205 = 0;
      v709 = 0;
    }

    v692 = 0;
    v695 = 0;
    goto LABEL_77;
  }

  v170 = &v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v171 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (v171)
  {
    _s19SBS_TextContentViewCMa();
    v152 = swift_dynamicCastClass();
    if (v152)
    {
      v707 = v152;
      v172 = v706;
      v173 = v710;
      v174 = *(v710 + v706[16]);
      v697 = v171;
      v694 = v174();
      v703 = v175;
      v702 = v150();
      v176 = sub_15F84(v173 + v172[7], v681, &qword_E21E88);
      v177 = v713;
      v699 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      LODWORD(v691) = (*(v173 + v172[15]))(v176);
      v698 = *(v173 + v172[9]);
      v178 = v692;
      v179 = (v692)(v724);
      v180 = v726;
      if (v726)
      {
        v688 = v725;

        v179 = sub_12E1C(v724, &qword_E21E80);
      }

      else
      {
        v688 = 0;
      }

      v426 = v658;
      v427 = (v178)(v727, v179);
      if (v728)
      {
        v696 = v729;

        v427 = sub_12E1C(v727, &qword_E21E80);
      }

      else
      {
        v696 = _swiftEmptyArrayStorage;
      }

      (v178)(v730, v427);
      v700 = v180;
      if (v731)
      {
        LODWORD(v693) = v732;
        sub_12E1C(v730, &qword_E21E80);
      }

      else
      {
        LODWORD(v693) = 0;
      }

      v428 = v665;
      v429 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      v430 = v686;
      sub_15F84(&v177[v429], v686, &qword_E23A50);
      v431 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_15F84(&v177[v431], v426, &qword_E23D40);
      v432 = *(v709 + 48);
      v433 = v708;
      v709 += 48;
      if (v432(v426, 1, v708))
      {
        sub_12E1C(v426, &qword_E23D40);
        v692 = 0;
        v701 = 0;
      }

      else
      {
        v434 = v704;
        sub_973F74(v426, v704, type metadata accessor for Lyrics.Translation.Line);
        sub_12E1C(v426, &qword_E23D40);
        v435 = *(v434 + 8);
        v692 = *v434;
        v701 = v435;

        v436 = v434;
        v428 = v665;
        sub_973F14(v436, type metadata accessor for Lyrics.Translation.Line);
      }

      v437 = v712;
      v438 = v685;
      sub_15F84(&v177[v431], v428, &qword_E23D40);
      if (v432(v428, 1, v433))
      {
        sub_12E1C(v428, &qword_E23D40);
        v687 = 0;
        v695 = 0;
      }

      else
      {
        v439 = v428;
        v440 = v437;
        v441 = v430;
        v442 = v438;
        v443 = v428;
        v444 = v704;
        sub_973F74(v439, v704, type metadata accessor for Lyrics.Translation.Line);
        v445 = v443;
        v438 = v442;
        v430 = v441;
        v437 = v440;
        sub_12E1C(v445, &qword_E23D40);
        v446 = *(v444 + 24);
        v687 = *(v444 + 16);
        v695 = v446;

        sub_973F14(v444, type metadata accessor for Lyrics.Translation.Line);
      }

      v447 = &v177[v431];
      v448 = v661;
      sub_15F84(v447, v661, &qword_E23D40);
      if (v432(v448, 1, v433))
      {
        sub_12E1C(v448, &qword_E23D40);
        v449 = sub_AB35A0();
        (*(*(v449 - 8) + 56))(v438, 1, 1, v449);
      }

      else
      {
        v450 = v704;
        sub_973F74(v448, v704, type metadata accessor for Lyrics.Translation.Line);
        sub_12E1C(v448, &qword_E23D40);
        v451 = *(v433 + 6);
        v452 = sub_AB35A0();
        v453 = *(v452 - 8);
        (*(v453 + 16))(v438, v450 + v451, v452);
        sub_973F14(v450, type metadata accessor for Lyrics.Translation.Line);
        (*(v453 + 56))(v438, 0, 1, v452);
      }

      v454 = v662;
      v455 = v659;
      sub_15F84(v430, v659, &qword_E23A50);
      v456 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
      v457 = v707;
      swift_beginAccess();
      sub_160B4(v455, v457 + v456, &qword_E23A50);
      swift_endAccess();
      v458 = *(v457 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (v458)
      {
        v459 = v660;
        sub_15F84(v430, v660, &qword_E23A50);
        v462 = v437[6];
        v460 = v437 + 6;
        v461 = v462;
        v463 = v706;
        v464 = (v462)(v459, 1, v706);
        v466 = v663;
        v465 = v664;
        if (v464 == 1)
        {
          v467 = v458;
          sub_12E1C(v459, &qword_E23A50);
          v468 = sub_AB35A0();
          (*(*(v468 - 8) + 56))(v677, 1, 1, v468);
        }

        else
        {
          sub_15F84(v459 + v463[7], v677, &qword_E21E88);
          v469 = v458;
          sub_973F14(v459, type metadata accessor for Lyrics.TextLine);
        }

        sub_15F84(v430, v454, &qword_E23A50);
        if ((v461)(v454, 1, v463) == 1)
        {
          sub_12E1C(v454, &qword_E23A50);
          v470 = 2;
        }

        else
        {
          v471 = (*(v454 + v463[15]))();
          sub_973F14(v454, type metadata accessor for Lyrics.TextLine);
          v470 = v471 & 1;
        }

        LODWORD(v708) = v470;
        sub_15F84(v430, v466, &qword_E23A50);
        v712 = v460;
        if ((v461)(v466, 1, v463) == 1)
        {
          sub_12E1C(v466, &qword_E23A50);
          *&v704 = 0;
          v690 = 0;
        }

        else
        {
          *&v704 = (*(v466 + v463[16]))();
          v690 = v472;
          sub_973F14(v466, type metadata accessor for Lyrics.TextLine);
        }

        sub_15F84(v430, v465, &qword_E23A50);
        v473 = (v461)(v465, 1, v463);
        v709 = v461;
        if (v473 == 1)
        {
          sub_12E1C(v465, &qword_E23A50);
          v689 = 0;
        }

        else
        {
          v689 = (*(v465 + v463[17]))();
          sub_973F14(v465, type metadata accessor for Lyrics.TextLine);
        }

        v474 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v475 = v694;
        v476 = v703;
        *v474 = v694;
        *(v474 + 1) = v476;

        v477 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v477 = v475;
        v477[1] = v476;

        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v702;

        v478 = v711;
        sub_15F84(v685, v711, &qword_E21E88);
        v479 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        swift_beginAccess();

        sub_160B4(v478, &v458[v479], &qword_E21E88);
        swift_endAccess();
        v480 = v677;
        sub_15F84(v677, v478, &qword_E21E88);
        v481 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        swift_beginAccess();
        sub_160B4(v478, &v458[v481], &qword_E21E88);
        swift_endAccess();
        v482 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        v483 = v701;
        *v482 = v692;
        *(v482 + 1) = v483;

        v484 = &v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        v485 = v690;
        *v484 = v704;
        *(v484 + 1) = v485;

        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v689;

        v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v708;
        v487 = v698;
        v486 = v699;
        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
        LOBYTE(v481) = v691 & 1;
        v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v691 & 1;
        *&v458[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v487;

        [v458 setNeedsLayout];

        sub_12E1C(v480, &qword_E21E88);
        v488 = v707;
        v489 = &v707[OBJC_IVAR___MusicSBS_TextContentView_text];
        *v489 = v475;
        v489[1] = v476;

        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v486;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v481;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v487;

        v490 = v693 & 1;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = v490;
        *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = v705;
        v491 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        v492 = *(v488 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
        if (v492)
        {
          v413 = v713;
          v493 = v686;
          v494 = v700;
          if (v700)
          {
            LODWORD(v708) = v490;
            v495 = v645;
            sub_15F84(v686, v645, &qword_E23A50);
            v496 = v706;
            if ((v709)(v495, 1, v706) == 1)
            {
              v497 = v492;
              sub_12E1C(v495, &qword_E23A50);
              v498 = sub_AB35A0();
              (*(*(v498 - 8) + 56))(v653, 1, 1, v498);
            }

            else
            {
              sub_15F84(v495 + v496[7], v653, &qword_E21E88);
              v522 = v492;
              sub_973F14(v495, type metadata accessor for Lyrics.TextLine);
            }

            v523 = v493;
            v525 = v646;
            v524 = v647;
            sub_15F84(v523, v646, &qword_E23A50);
            if ((v709)(v525, 1, v496) == 1)
            {
              sub_12E1C(v525, &qword_E23A50);
              v526 = 2;
            }

            else
            {
              v527 = (*(v525 + v496[15]))();
              sub_973F14(v525, type metadata accessor for Lyrics.TextLine);
              v526 = v527 & 1;
            }

            LODWORD(v705) = v526;
            sub_15F84(v686, v524, &qword_E23A50);
            if ((v709)(v524, 1, v496) == 1)
            {
              sub_12E1C(v524, &qword_E23A50);
              v694 = 0;
              *&v704 = 0;
              v528 = v648;
            }

            else
            {
              (*(v524 + v496[18]))(&v719);
              *&v704 = *(&v720 + 1);
              if (*(&v720 + 1))
              {
                v694 = v720;

                sub_12E1C(&v719, &qword_E21E80);
              }

              else
              {
                v694 = 0;
              }

              v528 = v648;
              sub_973F14(v524, type metadata accessor for Lyrics.TextLine);
            }

            sub_15F84(v686, v528, &qword_E23A50);
            v592 = v706;
            if ((v709)(v528, 1, v706) == 1)
            {
              sub_12E1C(v528, &qword_E23A50);
            }

            else
            {
              (*(v528 + v592[18]))(v741);
              sub_973F14(v528, type metadata accessor for Lyrics.TextLine);
              if (*(&v741[1] + 1))
              {
                v712 = *(&v741[3] + 1);

                sub_12E1C(v741, &qword_E21E80);
LABEL_279:
                v593 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
                v594 = v688;
                *v593 = v688;
                *(v593 + 1) = v494;

                v595 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
                *v595 = v594;
                *(v595 + 1) = v494;

                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v696;

                v577 = v685;
                v596 = v711;
                sub_15F84(v685, v711, &qword_E21E88);
                v597 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
                swift_beginAccess();

                sub_160B4(v596, &v492[v597], &qword_E21E88);
                swift_endAccess();
                v598 = v653;
                sub_15F84(v653, v596, &qword_E21E88);
                v599 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
                swift_beginAccess();
                sub_160B4(v596, &v492[v599], &qword_E21E88);
                swift_endAccess();
                v600 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
                v601 = v695;
                *v600 = v687;
                *(v600 + 1) = v601;

                v602 = &v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
                v603 = v704;
                *v602 = v694;
                *(v602 + 1) = v603;

                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v712;

                v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v705;
                v604 = v698;
                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
                v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v708;
                *&v492[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v604;

                [v492 setNeedsLayout];

                sub_12E1C(v598, &qword_E21E88);
                v413 = v713;
                v493 = v686;
                v488 = v707;
                goto LABEL_298;
              }
            }

            v712 = 0;
            goto LABEL_279;
          }

          [v492 removeFromSuperview];
          v488 = v707;
          v518 = *&v707[v491];
LABEL_251:
          v577 = v685;
          *(v488 + v491) = 0;

LABEL_298:
          [v488 setNeedsLayout];

          sub_12E1C(v577, &qword_E21E88);
          sub_12E1C(v493, &qword_E23A50);
          sub_12E1C(v681, &qword_E21E88);
          goto LABEL_299;
        }

        v413 = v713;
        v493 = v686;
        if (!v700)
        {
          v518 = 0;
          goto LABEL_251;
        }

        v705 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        LODWORD(v708) = v490;
        sub_15F84(v681, v650, &qword_E21E88);
        sub_15F84(v685, v651, &qword_E21E88);
        v499 = v641;
        sub_15F84(v493, v641, &qword_E23A50);
        v500 = v706;
        if ((v709)(v499, 1, v706) == 1)
        {

          sub_12E1C(v499, &qword_E23A50);
          v501 = sub_AB35A0();
          (*(*(v501 - 8) + 56))(v649, 1, 1, v501);
        }

        else
        {
          sub_15F84(v499 + v500[7], v649, &qword_E21E88);

          sub_973F14(v499, type metadata accessor for Lyrics.TextLine);
        }

        v578 = v644;
        v579 = v642;
        sub_15F84(v493, v642, &qword_E23A50);
        v580 = (v709)(v579, 1, v500);
        v581 = v643;
        if (v580 == 1)
        {
          sub_12E1C(v579, &qword_E23A50);
          v582 = 2;
        }

        else
        {
          v583 = (*(v579 + v500[15]))();
          sub_973F14(v579, type metadata accessor for Lyrics.TextLine);
          v582 = v583 & 1;
        }

        LODWORD(v704) = v582;
        sub_15F84(v493, v581, &qword_E23A50);
        v584 = v709;
        if ((v709)(v581, 1, v500) == 1)
        {
          sub_12E1C(v581, &qword_E23A50);
          v711 = 0;
          v694 = 0;
        }

        else
        {
          (*(v581 + v500[18]))(v733);
          v694 = v735;
          if (v735)
          {
            v711 = v734;

            sub_12E1C(v733, &qword_E21E80);
          }

          else
          {
            v711 = 0;
          }

          sub_973F14(v581, type metadata accessor for Lyrics.TextLine);
        }

        sub_15F84(v493, v578, &qword_E23A50);
        if (v584(v578, 1, v500) == 1)
        {
          sub_12E1C(v578, &qword_E23A50);
        }

        else
        {
          (*(v578 + v500[18]))(v736);
          sub_973F14(v578, type metadata accessor for Lyrics.TextLine);
          if (v738)
          {
            v712 = v740;

            sub_12E1C(v736, &qword_E21E80);
LABEL_297:
            v709 = v488 + OBJC_IVAR___MusicSBS_TextContentView_specs;
            memcpy(v741, v488 + OBJC_IVAR___MusicSBS_TextContentView_specs, 0x2B0uLL);
            v706 = _s8TextViewCMa();
            v611 = objc_allocWithZone(v706);
            v612 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
            *v612 = 0;
            v612[1] = 0;
            v693 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
            v692 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
            v613 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
            *v613 = 0;
            v613[1] = 0;
            v614 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
            v615 = sub_AB35A0();
            v616 = *(*(v615 - 8) + 56);
            v616(&v611[v614], 1, 1, v615);
            v617 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
            v616(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v615);
            v618 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
            v616(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v615);
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
            v691 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
            v619 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
            *v619 = 2;
            *(v619 + 8) = 0u;
            *(v619 + 24) = 0u;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
            v620 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
            v620[4] = 0u;
            v620[5] = 0u;
            v620[2] = 0u;
            v620[3] = 0u;
            *v620 = 0u;
            v620[1] = 0u;
            v621 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
            sub_95313C(v741, &v719);
            *&v611[v621] = sub_92D028(_swiftEmptyArrayStorage);
            v622 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
            v623 = v688;
            v624 = v700;
            *v622 = v688;
            v622[1] = v624;
            v625 = &v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
            *v625 = v623;
            v625[1] = v624;
            swift_beginAccess();

            v626 = &v611[v614];
            v488 = v707;
            sub_1FBB9C(v650, v626, &qword_E21E88);
            swift_endAccess();
            swift_beginAccess();
            sub_1FBB9C(v651, &v611[v617], &qword_E21E88);
            swift_endAccess();
            swift_beginAccess();
            v627 = v649;
            sub_1FBB9C(v649, &v611[v618], &qword_E21E88);
            swift_endAccess();
            *(v692 + v611) = v704;
            v628 = v694;
            *v612 = v711;
            v612[1] = v628;

            *&v611[v693] = v712;

            v629 = v695;
            *v613 = v687;
            v613[1] = v629;

            memcpy(&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
            *&v611[v691] = 0;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v696;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
            v630 = v698;
            v631 = v699;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v699;
            v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v708;
            *&v611[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v630;
            v714.receiver = v611;
            v714.super_class = v706;

            v632 = objc_msgSendSuper2(&v714, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
            sub_12E1C(v627, &qword_E21E88);
            sub_12E1C(v651, &qword_E21E88);
            sub_12E1C(v650, &qword_E21E88);
            v633 = sub_9618E8(v631);
            v635 = v634;
            v636 = v632;
            UIView.setAnchorPoint(_:preserveFrame:)(1, v633, v635);
            [v636 setAlpha:0.0];
            v637 = *(v709 + 144);
            v638 = *(v709 + 160);
            v719 = *(v709 + 128);
            v720 = v637;
            v721 = v638;
            [v636 setTransform:&v719];

            [v488 addSubview:v636];
            v639 = *&v705[v488];
            *&v705[v488] = v636;

            v413 = v713;
            v577 = v685;
            v493 = v686;
            goto LABEL_298;
          }
        }

        v712 = 0;
        goto LABEL_297;
      }

      goto LABEL_312;
    }
  }

  v673 = v170;
  v181 = v706;
  v182 = v710;
  v699 = (*(v710 + v706[16]))(v152);
  v707 = v183;
  v703 = v150();
  v184 = sub_15F84(v182 + v181[7], v697, &qword_E21E88);
  v185 = v713;
  v701 = *&v713[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  v186 = (*(v182 + v181[15]))(v184);
  v711 = *(v182 + v181[9]);

  v188 = v692;
  v189 = (v692)(v724, v187);
  v190 = v726;
  if (v726)
  {
    v665 = v725;

    v189 = sub_12E1C(v724, &qword_E21E80);
  }

  else
  {
    v665 = 0;
  }

  v287 = v666;
  v288 = (v188)(v727, v189);
  if (v728)
  {
    v700 = v729;

    v288 = sub_12E1C(v727, &qword_E21E80);
  }

  else
  {
    v700 = _swiftEmptyArrayStorage;
  }

  v702 = v190;
  (v188)(v730, v288);
  if (v731)
  {
    LODWORD(v696) = v732;
    sub_12E1C(v730, &qword_E21E80);
  }

  else
  {
    LODWORD(v696) = 0;
  }

  v289 = v667;
  memcpy(v741, &v185[v153], 0x2B0uLL);
  v290 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  swift_beginAccess();
  sub_15F84(&v185[v290], v698, &qword_E23A50);
  v291 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  swift_beginAccess();
  sub_15F84(&v185[v291], v287, &qword_E23D40);
  v292 = *(v709 + 48);
  v293 = v708;
  if (v292(v287, 1, v708))
  {
    sub_95313C(v741, &v719);
    sub_12E1C(v287, &qword_E23D40);
    v688 = 0;
    v709 = 0;
  }

  else
  {
    v294 = v704;
    sub_973F74(v287, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_95313C(v741, &v719);
    sub_12E1C(v287, &qword_E23D40);
    v295 = v294[1];
    v688 = *v294;
    v709 = v295;

    sub_973F14(v294, type metadata accessor for Lyrics.Translation.Line);
  }

  v296 = v712;
  sub_15F84(&v185[v291], v289, &qword_E23D40);
  if (v292(v289, 1, v293))
  {
    sub_12E1C(v289, &qword_E23D40);
    v667 = 0;
    v695 = 0;
  }

  else
  {
    v297 = v704;
    sub_973F74(v289, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_12E1C(v289, &qword_E23D40);
    v298 = *(v297 + 24);
    v667 = *(v297 + 16);
    v695 = v298;

    sub_973F14(v297, type metadata accessor for Lyrics.Translation.Line);
  }

  v299 = &v185[v291];
  v300 = v668;
  sub_15F84(v299, v668, &qword_E23D40);
  if (v292(v300, 1, v293))
  {
    sub_12E1C(v300, &qword_E23D40);
    v301 = sub_AB35A0();
    v302 = v690;
    (*(*(v301 - 8) + 56))(v690, 1, 1, v301);
  }

  else
  {
    v303 = v704;
    sub_973F74(v300, v704, type metadata accessor for Lyrics.Translation.Line);
    sub_12E1C(v300, &qword_E23D40);
    v304 = *(v293 + 6);
    v305 = sub_AB35A0();
    v306 = *(v305 - 8);
    v302 = v690;
    (*(v306 + 16))(v690, v303 + v304, v305);
    sub_973F14(v303, type metadata accessor for Lyrics.Translation.Line);
    (*(v306 + 56))(v302, 0, 1, v305);
  }

  v307 = v706;
  v308 = v711;
  v692 = _s19SBS_TextContentViewCMa();
  v309 = objc_allocWithZone(v692);
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v310 = (v309 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v310 = 0;
  v310[1] = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  v691 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v311 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v296[7](v309 + OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine, 1, 1, v307);
  v689 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  v687 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  v693 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  v312 = v707;
  *v310 = v699;
  v310[1] = v312;
  memcpy(v309 + OBJC_IVAR___MusicSBS_TextContentView_specs, v741, 0x2B0uLL);
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v701;
  LODWORD(v686) = v186 & 1;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v186 & 1;
  *(v309 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v308;
  swift_beginAccess();

  sub_95313C(v741, &v719);

  v708 = v309;
  v313 = v698;
  sub_1FBB9C(v698, v309 + v311, &qword_E23A50);
  swift_endAccess();
  sub_15F84(v697, v694, &qword_E21E88);
  v314 = v706;
  sub_15F84(v302, v683, &qword_E21E88);
  v315 = v669;
  sub_15F84(v313, v669, &qword_E23A50);
  v318 = v296[6];
  v316 = v296 + 6;
  v317 = v318;
  if ((v318)(v315, 1, v314) == 1)
  {
    sub_12E1C(v315, &qword_E23A50);
    v319 = sub_AB35A0();
    (*(*(v319 - 8) + 56))(v684, 1, 1, v319);
  }

  else
  {
    sub_15F84(v315 + v314[7], v684, &qword_E21E88);
    sub_973F14(v315, type metadata accessor for Lyrics.TextLine);
  }

  v321 = v671;
  v320 = v672;
  v322 = v670;
  sub_15F84(v313, v670, &qword_E23A50);
  if ((v317)(v322, 1, v314) == 1)
  {
    sub_12E1C(v322, &qword_E23A50);
    v323 = 2;
  }

  else
  {
    v324 = (*(v322 + v314[15]))();
    sub_973F14(v322, type metadata accessor for Lyrics.TextLine);
    v323 = v324 & 1;
  }

  LODWORD(v685) = v323;
  sub_15F84(v313, v321, &qword_E23A50);
  if ((v317)(v321, 1, v314) == 1)
  {
    sub_12E1C(v321, &qword_E23A50);
    v680 = 0;
    v681 = 0;
  }

  else
  {
    v325 = (*(v321 + v314[16]))();
    v680 = v326;
    v681 = v325;
    sub_973F14(v321, type metadata accessor for Lyrics.TextLine);
  }

  LODWORD(v704) = v696 & 1;
  sub_15F84(v313, v320, &qword_E23A50);
  v327 = (v317)(v320, 1, v314);
  v712 = v316;
  v668 = v317;
  if (v327 == 1)
  {
    sub_12E1C(v320, &qword_E23A50);
    v679 = 0;
  }

  else
  {
    v679 = (*(v320 + v314[17]))();
    sub_973F14(v320, type metadata accessor for Lyrics.TextLine);
  }

  v696 = _s8TextViewCMa();
  v328 = objc_allocWithZone(v696);
  v329 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v329 = 0;
  v329[1] = 0;
  v678 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v677 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v330 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v330 = 0;
  v330[1] = 0;
  v331 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v332 = sub_AB35A0();
  v333 = *(v332 - 8);
  v334 = *(v333 + 56);
  v335 = v333 + 56;
  (v334)(&v328[v331], 1, 1, v332);
  v336 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  (v334)(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v332);
  v337 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v671 = v334;
  v672 = v332;
  v670 = v335;
  (v334)(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v332);
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v674 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v338 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v338 = 2;
  *(v338 + 8) = 0u;
  *(v338 + 24) = 0u;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v339 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v339[4] = 0u;
  v339[5] = 0u;
  v339[2] = 0u;
  v339[3] = 0u;
  *v339 = 0u;
  v339[1] = 0u;
  v340 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

  sub_95313C(v741, &v719);
  v341 = v709;

  v342 = v707;

  *&v328[v340] = sub_92D028(_swiftEmptyArrayStorage);
  v343 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v344 = v699;
  *v343 = v699;
  v343[1] = v342;
  v345 = &v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v345 = v344;
  v345[1] = v342;
  swift_beginAccess();

  sub_1FBB9C(v694, &v328[v331], &qword_E21E88);
  swift_endAccess();
  swift_beginAccess();
  v346 = &v328[v336];
  v347 = v683;
  sub_1FBB9C(v683, v346, &qword_E21E88);
  swift_endAccess();
  swift_beginAccess();
  v348 = v684;
  sub_1FBB9C(v684, &v328[v337], &qword_E21E88);
  swift_endAccess();
  v328[v677] = v685;
  v349 = v680;
  *v329 = v681;
  v329[1] = v349;

  *&v328[v678] = v679;

  *v330 = v688;
  v330[1] = v341;

  memcpy(&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
  *&v328[v674] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v703;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v701;
  v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v686;
  *&v328[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v711;
  v717.receiver = v328;
  v350 = v696;
  v717.super_class = v696;
  v351 = objc_msgSendSuper2(&v717, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_12E1C(v348, &qword_E21E88);
  sub_12E1C(v347, &qword_E21E88);
  sub_12E1C(v694, &qword_E21E88);
  v352 = v708;
  v353 = *(v708 + v687);
  *(v708 + v687) = v351;

  if (v702)
  {
    sub_15F84(v697, v682, &qword_E21E88);
    sub_15F84(v690, v675, &qword_E21E88);
    v354 = v698;
    v355 = v654;
    sub_15F84(v698, v654, &qword_E23A50);
    v356 = v706;
    v357 = v668;
    if ((v668)(v355, 1, v706) == 1)
    {

      sub_12E1C(v355, &qword_E23A50);
      v671(v676, 1, 1, v672);
    }

    else
    {
      sub_15F84(v355 + v356[7], v676, &qword_E21E88);

      sub_973F14(v355, type metadata accessor for Lyrics.TextLine);
    }

    v382 = v655;
    v381 = v656;
    sub_15F84(v354, v655, &qword_E23A50);
    if ((v357)(v382, 1, v356) == 1)
    {
      sub_12E1C(v382, &qword_E23A50);
      v383 = 2;
    }

    else
    {
      v384 = (*(v382 + v356[15]))();
      sub_973F14(v382, type metadata accessor for Lyrics.TextLine);
      v383 = v384 & 1;
    }

    LODWORD(v699) = v383;
    sub_15F84(v354, v381, &qword_E23A50);
    if ((v357)(v381, 1, v356) == 1)
    {
      sub_12E1C(v381, &qword_E23A50);
      v688 = 0;
      v694 = 0;
    }

    else
    {
      (*(v381 + v356[18]))(v733);
      v694 = v735;
      if (v735)
      {
        v688 = v734;

        sub_12E1C(v733, &qword_E21E80);
      }

      else
      {
        v688 = 0;
      }

      sub_973F14(v381, type metadata accessor for Lyrics.TextLine);
    }

    v529 = v354;
    v530 = v657;
    sub_15F84(v529, v657, &qword_E23A50);
    if ((v357)(v530, 1, v356) == 1)
    {
      sub_12E1C(v530, &qword_E23A50);
    }

    else
    {
      (*(v530 + v356[18]))(v736);
      sub_973F14(v530, type metadata accessor for Lyrics.TextLine);
      if (v738)
      {
        v712 = v740;

        sub_12E1C(v736, &qword_E21E80);
LABEL_239:
        v531 = objc_allocWithZone(v350);
        v532 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        *v532 = 0;
        v532[1] = 0;
        v706 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
        v687 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
        v533 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        *v533 = 0;
        v533[1] = 0;
        v534 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v536 = v671;
        v535 = v672;
        v671(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language], 1, 1, v672);
        v537 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v536(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v535);
        v538 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v536(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v535);
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
        v686 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
        v539 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
        *v539 = 2;
        *(v539 + 8) = 0u;
        *(v539 + 24) = 0u;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
        v540 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
        v540[4] = 0u;
        v540[5] = 0u;
        v540[2] = 0u;
        v540[3] = 0u;
        *v540 = 0u;
        v540[1] = 0u;
        v541 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

        sub_95313C(v741, &v719);
        v542 = v695;

        *&v531[v541] = sub_92D028(_swiftEmptyArrayStorage);
        v543 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v544 = v665;
        v545 = v702;
        *v543 = v665;
        v543[1] = v545;
        v546 = &v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v546 = v544;
        v546[1] = v545;
        swift_beginAccess();

        sub_1FBB9C(v682, &v531[v534], &qword_E21E88);
        swift_endAccess();
        swift_beginAccess();
        v547 = &v531[v537];
        v548 = v675;
        sub_1FBB9C(v675, v547, &qword_E21E88);
        swift_endAccess();
        swift_beginAccess();
        v549 = v676;
        sub_1FBB9C(v676, &v531[v538], &qword_E21E88);
        swift_endAccess();
        v531[v687] = v699;
        v550 = v694;
        *v532 = v688;
        v532[1] = v550;

        *(v706 + v531) = v712;

        *v533 = v667;
        v533[1] = v542;

        memcpy(&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v741, 0x2B0uLL);
        *&v531[v686] = 0;
        v551 = v701;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v700;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v551;
        v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v704;
        *&v531[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v711;
        v715.receiver = v531;
        v715.super_class = v696;
        v552 = objc_msgSendSuper2(&v715, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_12E1C(v549, &qword_E21E88);
        sub_12E1C(v548, &qword_E21E88);
        sub_12E1C(v682, &qword_E21E88);
        v352 = v708;
        v553 = v693;
        v554 = *(v708 + v693);
        *(v708 + v693) = v552;

        v555 = *(v352 + v553);
        if (v555)
        {
          v556 = sub_9618E8(v551);
          v558 = v557;
          v559 = v555;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v556, v558);

          v560 = *(v352 + v693);
          if (v560)
          {
            [v560 setAlpha:0.0];
            v561 = *(v352 + v693);
            if (v561)
            {
              v719 = v741[8];
              v720 = v741[9];
              v721 = v741[10];
              [v561 setTransform:&v719];
            }
          }
        }

        goto LABEL_243;
      }
    }

    v712 = 0;
    goto LABEL_239;
  }

LABEL_243:
  *(v352 + v691) = v704;
  v689[v352] = v705;
  v716.receiver = v352;
  v716.super_class = v692;
  v562 = objc_msgSendSuper2(&v716, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v563 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v564 = *&v562[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v565 = v690;
  if (!v564)
  {
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v566 = v562;
  v567 = v562;
  [v567 addSubview:v564];
  v568 = *&v567[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v568)
  {

    sub_953198(v741);

    goto LABEL_249;
  }

  v569 = *&v566[v563];
  if (!v569)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v570 = v568;
  [v569 frame];
  v571 = *&v566[v563];
  if (v571)
  {
    v572 = v571;

    [v572 frame];

    [v570 frame];
    [v570 setFrame:?];

    [v567 addSubview:v570];
    sub_953198(v741);
LABEL_249:
    sub_12E1C(v565, &qword_E21E88);
    sub_12E1C(v698, &qword_E23A50);
    sub_12E1C(v697, &qword_E21E88);
    v573 = v673;
    v574 = *v673;
    *v673 = v567;
    v573[1] = &off_D4ABE8;
    v575 = v567;
    v576 = v713;
    sub_96B1E4(v574);

    v413 = v576;
    goto LABEL_299;
  }

LABEL_314:
  __break(1u);
}

id sub_973594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView()
{
  result = qword_E23550;
  if (!qword_E23550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_973708()
{
  sub_973868(319, &qword_E23240, type metadata accessor for Lyrics.TextLine);
  if (v0 <= 0x3F)
  {
    sub_973868(319, &unk_E23E50, type metadata accessor for Lyrics.Translation.Line);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_973868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_9738D0()
{
  result = qword_E23560;
  if (!qword_E23560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E23560);
  }

  return result;
}

char *sub_973924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v11 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v13 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
  v15 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = a1;
  v17 = a2;
  v18 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  *v18 = 0;
  v18[1] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter] = 0;
  v19 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
  *v19 = 0;
  v19[8] = 1;
  sub_E8BA0(v16, &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line]);
  swift_beginAccess();
  v44 = a3;
  sub_1FBB9C(a3, &v5[v12], &qword_E23D40);
  swift_endAccess();
  *&v5[v14] = a4;
  memcpy(&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], a5, 0x2B0uLL);
  swift_beginAccess();
  sub_95313C(a5, v46);
  sub_1FBB9C(a2, &v5[v10], &qword_E23A50);
  swift_endAccess();
  v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter] = v20;
  v45.receiver = v5;
  v45.super_class = type metadata accessor for SyncedLyricsLineView();
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  [*&v21[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] setUserInteractionEnabled:0];
  v23 = *&v21[v22];
  v24 = v21;
  [v24 addSubview:v23];
  [v24 setExclusiveTouch:1];
  v25 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
  v26 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
  v46[0] = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
  v46[1] = v25;
  v46[2] = v26;
  [v24 setTransform:v46];
  v27 = [v24 layer];
  [v27 setShouldRasterize:1];

  v28 = [v24 layer];
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setRasterizationScale:v31];
  v32 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter;
  v33 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
  isa = sub_AB9C10().super.super.isa;
  [v33 setValue:isa forKey:kCAFilterInputRadius];

  v35 = [v24 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF4EC0;
  v37 = *&v24[v32];
  *(v36 + 56) = sub_13C80(0, &qword_E229B8);
  *(v36 + 32) = v37;
  v38 = v37;
  v39 = sub_AB9740().super.isa;

  [v35 setFilters:v39];

  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  v40 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_923E94(9, *(v40 + 40)))
  {
    v41 = [objc_opt_self() redColor];
    [v24 setBackgroundColor:v41];
  }

  sub_96D17C();
  sub_96C0F4();
  sub_12E1C(v44, &qword_E23D40);
  sub_12E1C(v17, &qword_E23A50);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v24;
}

uint64_t sub_973EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_973F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_973F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_973FDC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_252(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_974048()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_974080()
{

  return swift_deallocObject();
}

void sub_9740C4()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v4 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter) = 0;
  v7 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_97424C()
{

  return swift_deallocObject();
}

uint64_t SyncedLyricsManager.Configuration.init(animationDuration:finishLineAnimationDuration:maxEndTimeOffset:maxSelectedLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t SyncedLyricsManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
}

uint64_t SyncedLyricsManager.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
}

uint64_t SyncedLyricsManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_9744C0;
}

void sub_9744C0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_974544(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t SyncedLyricsManager.isPlayingSpatial.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

double SyncedLyricsManager.spatialOffset.getter()
{
  swift_beginAccess();
  result = 0.0;
  if (*(v0 + 88) == 1)
  {
    return Lyrics.spatialOffset.getter();
  }

  return result;
}

uint64_t SyncedLyricsManager.adjustedElapsedTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (v1)
  {

    v3 = v1(v2);
    swift_beginAccess();
    v4 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v4 = Lyrics.spatialOffset.getter();
    }

    sub_17654(v1);
    *&result = v3 - v4;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}
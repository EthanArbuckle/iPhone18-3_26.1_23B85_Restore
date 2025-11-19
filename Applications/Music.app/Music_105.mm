void sub_100B68CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100B68CF4()
{
  if (!qword_1011B38A0)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B38A0);
    }
  }
}

void sub_100B68D44()
{
  sub_100B68CA0(319, &qword_1011B3888, &type metadata accessor for ScrollPosition);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100B68E14()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  if (v0 <= 0x3F)
  {
    sub_100B68CA0(319, &qword_1011B3888, &type metadata accessor for ScrollPosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100B68F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B37E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100B68FA0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UIPageControl) init];
  type metadata accessor for PageControl();
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v3 addTarget:a2 action:"updateCurrentPage:" forControlEvents:4096];

  v4 = objc_opt_self();
  v5 = [v4 systemFillColor];
  [v3 setPageIndicatorTintColor:v5];

  v6 = [v4 labelColor];
  [v3 setCurrentPageIndicatorTintColor:v6];

  return v3;
}

uint64_t sub_100B690F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B37E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B69168(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B37E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B6923C(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_100B65AE0(a1, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100B69334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B6937C()
{
  v9 = *(v0 + 16);
  v1 = type metadata accessor for CarouselView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[17];

  v4 = *(sub_10010FC20(&qword_1011B37E0) + 32);
  v5 = type metadata accessor for ScrollPosition();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  if (*(v2 + v1[22]))
  {
  }

  v6 = v2 + v1[23];
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v6, 1, v9))
  {
    (*(v7 + 8))(v6, v9);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_100B695C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = *(type metadata accessor for CarouselView() - 8);
  v10 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_100B65270(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_100B69698()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CarouselView() - 8);
  v3 = (((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  type metadata accessor for CarouselView();
  return sub_100B65850(v0 + v3, 1);
}

void CircularProgressView.setState(_:animated:)(uint64_t a1, int a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  if ((a2 & 0x10000) != 0)
  {
    if (v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10])
    {
      return;
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 1;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10] & 1) == 0)
    {
      v16 = *v5;
      v17 = *(v5 + 4);
      if ((a2 & 0x100) != 0)
      {
        if (a1 | a2)
        {
          if ((*(v5 + 4) & 0x100) != 0 && *&v16 | *(v5 + 4))
          {
            return;
          }
        }

        else if ((*(v5 + 4) & 0x100) != 0 && !(*&v16 | *(v5 + 4)))
        {
          return;
        }
      }

      else if ((*(v5 + 4) & 0x100) == 0)
      {
        if (a2)
        {
          if (v17)
          {
            return;
          }
        }

        else if ((v17 & 1) == 0 && *&a1 == v16)
        {
          return;
        }
      }
    }

    *v5 = *&a1;
    *(v5 + 4) = a2;
    v5[10] = 0;
    if (a3)
    {
      v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
      LOBYTE(v7) = a2;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (a1 | v7)
      {
        [v6 setOpacity:0.0];
        if (a3)
        {
          return;
        }
      }

      else if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v3;
        *(v20 + 24) = v6;
        v21 = v3;
        v22 = v6;

        sub_100B6B498(sub_100B6B96C, v20, 1.0);

        if (a3)
        {
          return;
        }
      }

      else
      {
        [v6 setStrokeEnd:1.0];
        sub_10010FC20(&qword_1011B5630);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100EBC6C0;
        sub_100009F78(0, &qword_1011B3A00);
        *(v23 + 32) = NSNumber.init(integerLiteral:)(4);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v6 setLineDashPattern:isa];

        if (a3)
        {
          return;
        }
      }

      goto LABEL_46;
    }
  }

  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions:1];
  v6 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  if (v5[10])
  {
LABEL_13:
    [v6 setLineDashPattern:0];
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = v3;

      sub_100B6B498(sub_100B6AA14, v14, 0.0);

      goto LABEL_15;
    }

LABEL_40:
    if (a3)
    {
      return;
    }

    goto LABEL_46;
  }

  a1 = *v5;
  v7 = *(v5 + 4);
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  v8 = *&a1;
  [v6 setLineDashPattern:0];
  LODWORD(v9) = 1.0;
  [v6 setOpacity:v9];
  if ((v7 & 1) == 0)
  {
    if (*&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator])
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v3;

      v19 = v3;
      sub_100B6B498(sub_100B6BF8C, v18, v8);

      if (a3)
      {
        return;
      }

      goto LABEL_46;
    }

    [v6 setStrokeEnd:v8];
    goto LABEL_40;
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator;
  v11 = *&v3[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator];
  if (!v11)
  {
    type metadata accessor for CircularProgressView.SpinAnimator();
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0xD000000000000010;
    *(v11 + 24) = 0x8000000100E65810;
    *(v11 + 32) = v6;
    v12 = v6;
  }

  *&v3[v10] = v11;

  sub_100B6B180();
LABEL_15:

  if (a3)
  {
    return;
  }

LABEL_46:
  v25 = objc_opt_self();

  [v25 commit];
}

uint64_t static CircularProgressView.State.__derived_enum_equals(_:_:)(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    v5 = (a3 | a4) == 0;
    if ((a4 & 0x100) == 0)
    {
      v5 = 0;
    }

    v6 = (a3 | a4) != 0;
    if ((a4 & 0x100) == 0)
    {
      v6 = 0;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && *&a1 == *&a3)
      {
        return 1;
      }
    }

    return 0;
  }
}

BOOL sub_100B69CE8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (*&v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (*&v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

char *CircularProgressView.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state];
  *v6 = 0;
  *(v6 + 4) = 0;
  v6[10] = 1;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView] = 0;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator] = 0;
  v7 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *&v2[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *&v2[v8] = [objc_allocWithZone(CAShapeLayer) init];
  v9 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  *v9 = a1;
  v9[1] = a2;
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, a1, a2);
  v11 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  v12 = *&v10[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  v17 = [v16 CGColor];

  [v15 setFillColor:v17];
  [*&v10[v11] setLineWidth:2.5];
  v18 = [v14 layer];
  [v18 addSublayer:*&v10[v11]];

  v19 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  [*&v14[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer] setLineCap:kCALineCapRound];
  [*&v14[v19] setStrokeEnd:0.0];
  v20 = *&v14[v19];
  v21 = [v13 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
  [*&v14[v19] setLineWidth:2.5];
  [*&v14[v19] setLineDashPhase:6.0];
  v23 = [v14 layer];

  [v23 addSublayer:*&v14[v19]];
  sub_100B6A048();

  return v14;
}

void sub_100B6A048()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v2 = [objc_opt_self() tertiarySystemFillColor];
  v3 = [v2 CGColor];

  [v1 setStrokeColor:v3];
  v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v5 = [v0 tintColor];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 CGColor];

    [v4 setStrokeColor:v7];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CircularProgressView.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_100B6A048();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  [v0 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v6 = CGRectGetHeight(v26);
  if (v6 >= v5)
  {
    v6 = v5;
  }

  v7 = (v6 + -2.5) * 0.5;
  CGRect.center.getter();
  v10 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v7 clockwise:{-1.57079633, 4.71238898}];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer];
  v12 = [v10 CGPath];
  [v11 setPath:v12];

  v13 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer];
  v14 = [v10 CGPath];
  [v13 setPath:v14];

  [v13 setBounds:{x, y, width, height}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [v13 setPosition:{v15, CGRectGetHeight(v28) * 0.5}];
  v16 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v17 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v17)
  {
    [v17 setFrame:{x, y, width, height}];
    v18 = *&v0[v16];
    if (v18)
    {
      v19 = v18;
      [v19 frame];
      v20 = CGRectGetWidth(v29);
      [v19 frame];
      v21 = CGRectGetHeight(v30);
      if (v21 < v20)
      {
        v20 = v21;
      }

      v22 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v23 = [objc_opt_self() configurationWithPointSize:v20 * *&v0[v22]];
      [v19 setPreferredSymbolConfiguration:v23];
    }
  }
}

double CircularProgressView.sizeThatFits(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  swift_beginAccess();
  return *v1;
}

id CircularProgressView.preferredSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*CircularProgressView.preferredSize.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_preferredSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100B6A70C;
}

void sub_100B6A70C(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 4);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    [v1[5] invalidateIntrinsicContentSize];
  }

  free(v1);
}

void (*CircularProgressView.state.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10);
  *a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state);
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
  return sub_100B6A7FC;
}

double sub_100B6A840(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_10010FC20(&qword_1011B5630);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6C0;
  sub_100009F78(0, &qword_1011B3A00);
  *(v8 + 32) = NSNumber.init(integerLiteral:)(4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_100B6A974(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

void sub_100B6AA30()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_100B6AD2C(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_100B6AD2C(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_100B6AA30();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100B6ACF8;
}

void sub_100B6ACF8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100B6AA30();
  }
}

void sub_100B6AD2C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_100009F78(0, &unk_1011B3BD0);
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_100009F78(0, &qword_1011B7C10);
    v11 = v2;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100B6B070;
}

void sub_100B6B070(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_100B6B180()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = String._bridgeToObjectiveC()();
  [v1 removeAnimationForKey:v4];

  *&v21[0] = v3;
  *(&v21[0] + 1) = v2;

  v5._countAndFlagsBits = 0x676E69646E65;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v1 removeAnimationForKey:v6];

  [v1 setStrokeEnd:0.6];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() animationWithKeyPath:v7];

  v9 = [v1 presentationLayer];
  if (!v9)
  {
    v9 = v1;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 valueForKeyPath:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_100011EC0(v21);
  }

  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setFromValue:isa];

  v13 = Double._bridgeToObjectiveC()().super.super.isa;
  [v8 setToValue:v13];

  v14 = v8;
  [v14 setRemovedOnCompletion:1];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setDuration:1.0];
  LODWORD(v15) = 2139095040;
  [v14 setRepeatCount:v15];
  v16 = CACurrentMediaTime();
  [v14 duration];
  [v14 setBeginTime:{(v16 - fmod(v16, v17))}];

  v18 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v14 forKey:v18];
}

void sub_100B6B498(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v42[0] = v40;
    v42[1] = v41;
    if (*(&v41 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_100011EC0(v42);
    }

    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setFromValue:isa];

    v16 = Double._bridgeToObjectiveC()().super.super.isa;
    [v14 setToValue:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_10010FC20(&qword_1011B5630);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6D0;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_100009F78(0, &unk_1011B3BE0);
    v22 = v14;
    v23 = v18;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v39.receiver = v27;
    v39.super_class = v26;
    v29 = objc_msgSendSuper2(&v39, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v31 = sub_100B6BF74;
    v31[1] = v30;
    v33 = v29;

    sub_100020438(v32);
    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v36 = String._bridgeToObjectiveC()();
    [v7 removeAnimationForKey:v36];

    *&v42[0] = v35;
    *(&v42[0] + 1) = v34;

    v37._countAndFlagsBits = 0x676E69646E65;
    v37._object = 0xE600000000000000;
    String.append(_:)(v37);
    v38 = String._bridgeToObjectiveC()();

    [v7 addAnimation:v25 forKey:v38];
  }
}

void sub_100B6B998(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v17 = *(a5 + 16);
    v18 = *(a5 + 24);

    v13._countAndFlagsBits = 0x676E69646E65;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v12 removeAnimationForKey:{v14, v17, v18}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v15 = COERCE_DOUBLE(a6(a5));
    if (v16)
    {
      v15 = a2;
    }

    [v12 setStrokeEnd:v15];
  }
}

id sub_100B6BBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B6BC18()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for CircularProgressView()
{
  return objc_opt_self();
}

{
  return type metadata accessor for CircularProgressView();
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_100B6BF00(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B6BF1C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_100B6BF90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100B6C020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v64 = sub_10010FC20(&qword_1011B3568);
  __chkstk_darwin(v64);
  v69 = &v53 - v11;
  v71 = type metadata accessor for ArtworkImage.ViewModel(0);
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v15 - 8);
  v66 = &v53 - v16;
  v67 = sub_10010FC20(&unk_1011B4930);
  __chkstk_darwin(v67);
  v73 = &v53 - v17;
  v72 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v72);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v68 = &v53 - v22;
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (v23 && a1 != a2)
    {
      v56 = v10;
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = a1 + v24;
      v26 = a2 + v24;
      v65 = (v12 + 48);
      v59 = (v5 + 48);
      v60 = v4;
      v53 = (v5 + 32);
      v54 = v7;
      v55 = (v5 + 8);
      v63 = *(v21 + 72);
      v27 = v66;
      v28 = v68;
      v61 = v14;
      v58 = v19;
      while (1)
      {
        sub_100B8D7C0(v25, v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        v70 = v25;
        sub_100B8D7C0(v26, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        v29 = *v28 == *v19 && v28[1] == v19[1];
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_32:
          sub_100B8DCA8(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_100B8DCA8(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v30 = v73;
        v31 = *(v72 + 20);
        v32 = *(v67 + 48);
        sub_1000089F8(v28 + v31, v73, &qword_1011B5930);
        sub_1000089F8(v19 + v31, v30 + v32, &qword_1011B5930);
        v33 = *v65;
        v34 = v30;
        v35 = v71;
        if ((*v65)(v34, 1, v71) == 1)
        {
          break;
        }

        v62 = v23;
        v37 = v73;
        sub_1000089F8(v73, v27, &qword_1011B5930);
        if (v33(v37 + v32, 1, v35) == 1)
        {
          sub_100B8DCA8(v27, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
LABEL_26:
          v51 = &unk_1011B4930;
          goto LABEL_31;
        }

        v38 = v61;
        sub_100B8D828(v73 + v32, v61, type metadata accessor for ArtworkImage.ViewModel);
        if ((static Artwork.== infix(_:_:)() & 1) == 0)
        {
          sub_100B8DCA8(v38, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v39 = *(v71 + 20);
        v40 = *(v64 + 48);
        v41 = v69;
        sub_1000089F8(v27 + v39, v69, &qword_1011B4720);
        sub_1000089F8(v38 + v39, v41 + v40, &qword_1011B4720);
        v42 = *v59;
        v43 = v41;
        v44 = v60;
        if ((*v59)(v43, 1, v60) == 1)
        {
          sub_100B8DCA8(v38, type metadata accessor for ArtworkImage.ViewModel);
          v45 = v42(v69 + v40, 1, v44);
          v19 = v58;
          if (v45 != 1)
          {
            goto LABEL_29;
          }

          sub_1000095E8(v69, &qword_1011B4720);
          v27 = v66;
          sub_100B8DCA8(v66, type metadata accessor for ArtworkImage.ViewModel);
          v28 = v68;
          v23 = v62;
          goto LABEL_18;
        }

        v46 = v69;
        v47 = v56;
        sub_1000089F8(v69, v56, &qword_1011B4720);
        if (v42(v46 + v40, 1, v44) == 1)
        {
          sub_100B8DCA8(v61, type metadata accessor for ArtworkImage.ViewModel);
          (*v55)(v47, v44);
          v19 = v58;
LABEL_29:
          sub_1000095E8(v69, &qword_1011B3568);
          v27 = v66;
LABEL_30:
          v28 = v68;
          sub_100B8DCA8(v27, type metadata accessor for ArtworkImage.ViewModel);
          v51 = &qword_1011B5930;
LABEL_31:
          sub_1000095E8(v73, v51);
          goto LABEL_32;
        }

        v48 = v54;
        (*v53)(v54, v46 + v40, v44);
        sub_100B8C798(&qword_1011B3570, &type metadata accessor for Artwork.CropStyle);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *v55;
        (*v55)(v48, v44);
        sub_100B8DCA8(v61, type metadata accessor for ArtworkImage.ViewModel);
        v49(v47, v44);
        sub_1000095E8(v46, &qword_1011B4720);
        v27 = v66;
        sub_100B8DCA8(v66, type metadata accessor for ArtworkImage.ViewModel);
        sub_1000095E8(v73, &qword_1011B5930);
        v19 = v58;
        v28 = v68;
        v23 = v62;
        if ((v57 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v50 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v28 + *(v72 + 24), v19 + *(v72 + 24));
        sub_100B8DCA8(v19, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_100B8DCA8(v28, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v50)
        {
          v26 += v63;
          v25 = v70 + v63;
          if (--v23)
          {
            continue;
          }
        }

        return v50 & 1;
      }

      v36 = v33(v73 + v32, 1, v35);
      v28 = v68;
      if (v36 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_1000095E8(v73, &qword_1011B5930);
      goto LABEL_21;
    }

    v50 = 1;
  }

  else
  {
LABEL_33:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t sub_100B6C934(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for Artwork();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v6 - 8);
  v46 = &v36 - v7;
  v45 = sub_10010FC20(&qword_1011B4A58);
  __chkstk_darwin(v45);
  v9 = &v36 - v8;
  v44 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin(v44);
  v49 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v36 - v13);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      return 1;
    }

    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = (v4 + 48);
    v37 = (v4 + 32);
    v38 = (v4 + 48);
    v39 = (v4 + 8);
    v43 = *(v12 + 72);
    v19 = v46;
    v20 = v47;
    while (1)
    {
      sub_100B8D7C0(v16, v20, type metadata accessor for PlaylistCurators.Curator);
      v21 = v49;
      sub_100B8D7C0(v17, v49, type metadata accessor for PlaylistCurators.Curator);
      v22 = *v20 == *v21 && v20[1] == v21[1];
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v23 = v20;
      v24 = v18;
      v25 = *(v44 + 20);
      v26 = *(v45 + 48);
      sub_1000089F8(v23 + v25, v9, &unk_1011B55F0);
      sub_1000089F8(v49 + v25, &v9[v26], &unk_1011B55F0);
      v27 = *v24;
      if ((*v24)(v9, 1, v48) == 1)
      {
        if (v27(&v9[v26], 1, v48) != 1)
        {
          goto LABEL_19;
        }

        v18 = v24;
        sub_1000095E8(v9, &unk_1011B55F0);
        sub_100B8DCA8(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        sub_100B8DCA8(v47, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v42 = v16;
        v28 = v9;
        sub_1000089F8(v9, v19, &unk_1011B55F0);
        if (v27(&v9[v26], 1, v48) == 1)
        {
          (*v39)(v19, v48);
LABEL_19:
          sub_1000095E8(v9, &qword_1011B4A58);
          v20 = v47;
          break;
        }

        v29 = &v9[v26];
        v30 = v40;
        v31 = v48;
        (*v37)(v40, v29, v48);
        sub_100B8C798(&qword_1011B4A60, &type metadata accessor for Artwork);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v39;
        v33 = v30;
        v34 = v46;
        (*v39)(v33, v31);
        v19 = v34;
        v32(v34, v31);
        sub_1000095E8(v28, &unk_1011B55F0);
        sub_100B8DCA8(v49, type metadata accessor for PlaylistCurators.Curator);
        v20 = v47;
        v18 = v38;
        sub_100B8DCA8(v47, type metadata accessor for PlaylistCurators.Curator);
        v9 = v28;
        v16 = v42;
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      v17 += v43;
      v16 += v43;
      if (!--v14)
      {
        return 1;
      }
    }

    sub_100B8DCA8(v49, type metadata accessor for PlaylistCurators.Curator);
    sub_100B8DCA8(v20, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_100B8BC6C(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100B8BC6C(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  (v10)(&v13 - v8, a1, v2, v7);
  v10(v5, v9, v2);
  Published.init(initialValue:)();
  v11 = *(v3 + 8);
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t sub_100B6D118()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    sub_100014984(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100B6D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10010FC20(&qword_1011B4ED0);
  v5[7] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011B4ED8);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011B4EE0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011B4EE8);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100B6D388, 0, 0);
}

uint64_t sub_100B6D388()
{
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Collaborator();
  sub_100B8C798(&qword_1011B4EF0, &type metadata accessor for Playlist.Collaborator);
  MusicLibrarySectionedRequest.init()();
  swift_getKeyPath();
  v0[2] = Playlist.id.getter();
  v0[3] = v1;
  MusicLibrarySectionedRequest.filterSections<A>(matching:equalTo:)();

  type metadata accessor for MainActor();
  v0[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B6D4F4, v3, v2);
}

uint64_t sub_100B6D4F4()
{

  sub_100020674(&qword_1011B4EF8, &qword_1011B4EE8);
  *(v0 + 144) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  return _swift_task_switch(sub_100B6D5A0, 0, 0);
}

uint64_t sub_100B6D5A0()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  sub_100009F78(0, &qword_1011B4F00);
  v6 = static OS_dispatch_queue.main.getter();
  v0[4] = v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100020674(&qword_1011B4F08, &qword_1011B4ED8);
  sub_10002078C();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v4, &qword_1011B4ED0);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_1011B4F18, &qword_1011B4EE0);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B6D868(uint64_t a1, uint64_t a2)
{
  v244 = a1;
  v3 = sub_10010FC20(&unk_1011B4540);
  __chkstk_darwin(v3 - 8);
  v240 = &v206 - v4;
  v5 = type metadata accessor for Playlist.Collaborator();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5);
  v252 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v237 = &v206 - v8;
  __chkstk_darwin(v9);
  v255 = &v206 - v10;
  __chkstk_darwin(v11);
  v247 = &v206 - v12;
  v249 = sub_10010FC20(&qword_1011B4F20);
  v229 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v206 - v13;
  v227 = sub_10010FC20(&qword_1011B4F28);
  __chkstk_darwin(v227);
  v248 = &v206 - v14;
  v220 = type metadata accessor for Date();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_10010FC20(&qword_1011B4F30);
  __chkstk_darwin(v217);
  v219 = &v206 - v16;
  v226 = type metadata accessor for Playlist();
  v225 = *(v226 - 1);
  __chkstk_darwin(v226);
  v223 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = &v206 - v19;
  __chkstk_darwin(v20);
  v216 = &v206 - v21;
  v22 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v22 - 8);
  v214 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v206 - v25;
  __chkstk_darwin(v26);
  v222 = &v206 - v27;
  v28 = sub_10010FC20(&qword_1011B4918);
  __chkstk_darwin(v28 - 8);
  v246 = &v206 - v29;
  v239 = type metadata accessor for Playlist.Collaborator.Status();
  v234 = *(v239 - 8);
  __chkstk_darwin(v239);
  v232 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v206 - v32;
  v253 = type metadata accessor for Playlist.Collaboration();
  v254 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_10010FC20(&qword_1011B4F38);
  v259 = *(v258 - 8);
  __chkstk_darwin(v258);
  v241 = &v206 - v34;
  v256 = type metadata accessor for Logger();
  v250 = *(v256 - 8);
  __chkstk_darwin(v256);
  v242 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v231 = &v206 - v37;
  __chkstk_darwin(v38);
  v230 = &v206 - v39;
  __chkstk_darwin(v40);
  v251 = &v206 - v41;
  v236 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v236);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = &v206 - v44;
  __chkstk_darwin(v45);
  v47 = &v206 - v46;
  __chkstk_darwin(v48);
  v50 = &v206 - v49;
  __chkstk_darwin(v51);
  v260 = &v206 - v52;
  v53 = sub_10010FC20(&qword_1011B4F40);
  __chkstk_darwin(v53 - 8);
  v55 = &v206 - v54;
  v56 = sub_10010FC20(&qword_1011B4F48);
  __chkstk_darwin(v56);
  v243 = (&v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  __chkstk_darwin(v61);
  v63 = &v206 - v62;
  __chkstk_darwin(v64);
  v66 = &v206 - v65;
  __chkstk_darwin(v67);
  v261 = &v206 - v68;
  swift_beginAccess();
  v257 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v70 = *(result + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v70)
    {
      v71 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

      if (v71)
      {
        v212 = v5;
        sub_1000089F8(v244, v55, &qword_1011B4F40);
        v72 = sub_10010FC20(&qword_1011B4F50);
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v55, 1, v72) == 1)
        {
          sub_1000095E8(v55, &qword_1011B4F40);
        }

        else
        {
          v74 = MusicLibrarySectionedResponse.sections.getter();
          (*(v73 + 8))(v55, v72);
          if (*(v74 + 16))
          {
            v75 = v258;
            (*(v259 + 16))(v261, v74 + ((*(v259 + 80) + 32) & ~*(v259 + 80)), v258);

            v76 = 0;
            v77 = v260;
            goto LABEL_10;
          }
        }

        v76 = 1;
        v77 = v260;
        v75 = v258;
LABEL_10:
        v78 = v259;
        v79 = v261;
        (*(v259 + 56))(v261, v76, 1, v75);
        sub_1000089F8(v79, v66, &qword_1011B4F48);
        v80 = *(v78 + 48);
        v209 = v78 + 48;
        v208 = v80;
        if (v80(v66, 1, v75) == 1)
        {
          sub_1000095E8(v66, &qword_1011B4F48);
          v81 = v254;
          (*(v254 + 56))(v77, 1, 1, v253);
        }

        else
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();
          v77 = v260;

          (*(v78 + 8))(v66, v75);
          v81 = v254;
        }

        v82 = v251;
        v83 = Logger.collaboration.unsafeMutableAddressor();
        v84 = v250;
        v85 = *(v250 + 16);
        v210 = v83;
        v86 = v256;
        v244 = v250 + 16;
        v211 = v85;
        v85(v82);
        sub_1000089F8(v261, v63, &qword_1011B4F48);
        sub_1000089F8(v77, v50, &qword_1011B48F8);
        v87 = Logger.logObject.getter();
        v207 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v207))
        {
          v88 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v263 = v206;
          *v88 = 136446466;
          sub_1000089F8(v63, v60, &qword_1011B4F48);
          v89 = String.init<A>(describing:)();
          v91 = v90;
          sub_1000095E8(v63, &qword_1011B4F48);
          v92 = sub_100010744(v89, v91, &v263);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          sub_1000089F8(v50, v47, &qword_1011B48F8);
          v93 = String.init<A>(describing:)();
          v95 = v94;
          sub_1000095E8(v50, &qword_1011B48F8);
          v96 = v93;
          v81 = v254;
          v97 = sub_100010744(v96, v95, &v263);

          *(v88 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v87, v207, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v86 = v256;

          v98 = *(v84 + 8);
          v98(v251, v86);
        }

        else
        {

          sub_1000095E8(v50, &qword_1011B48F8);
          sub_1000095E8(v63, &qword_1011B4F48);
          v98 = *(v84 + 8);
          v98(v82, v86);
        }

        v99 = v259;
        v100 = v253;
        v101 = v243;
        sub_1000089F8(v261, v243, &qword_1011B4F48);
        v102 = v258;
        v103 = v208(v101, 1, v258);
        v104 = v246;
        v105 = v245;
        if (v103 == 1)
        {
          sub_1000095E8(v101, &qword_1011B4F48);
LABEL_25:
          v121 = v242;
          v211(v242, v210, v86);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v122, v123, "[Management] Dismissing management sheet", v124, 2u);
          }

          v98(v121, v86);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v264 = 1;
            static Published.subscript.setter();
          }

LABEL_29:
          sub_1000095E8(v260, &qword_1011B48F8);
          return sub_1000095E8(v261, &qword_1011B4F48);
        }

        v106 = v101;
        v107 = v241;
        (*(v99 + 32))(v241, v106, v102);
        sub_1000089F8(v260, v105, &qword_1011B48F8);
        v251 = *(v81 + 48);
        if ((v251)(v105, 1, v100) == 1)
        {
          (*(v99 + 8))(v107, v102);
          sub_1000095E8(v105, &qword_1011B48F8);
          v86 = v256;
          goto LABEL_25;
        }

        v236 = v98;
        v108 = v235;
        (*(v81 + 32))(v235, v105, v100);
        Playlist.Collaboration.collaboratorStatus.getter();
        v109 = v234;
        v110 = v239;
        if ((*(v234 + 48))(v104, 1, v239) == 1)
        {
          (*(v81 + 8))(v108, v100);
          (*(v99 + 8))(v241, v258);
          sub_1000095E8(v104, &qword_1011B4918);
LABEL_24:
          v86 = v256;
          v98 = v236;
          goto LABEL_25;
        }

        v111 = v233;
        (*(v109 + 32))(v233, v104, v110);
        v112 = v232;
        (*(v109 + 104))(v232, enum case for Playlist.Collaborator.Status.notJoined(_:), v110);
        sub_100B8C798(&unk_1011B4920, &type metadata accessor for Playlist.Collaborator.Status);
        v113 = v109;
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v115 = v239;
        v116 = v114;
        v118 = *(v113 + 8);
        v117 = v113 + 8;
        v119 = v112;
        v120 = v118;
        v118(v119, v239);
        if (v116)
        {
          v120(v111, v115);
          (*(v254 + 8))(v235, v100);
          (*(v99 + 8))(v241, v258);
          goto LABEL_24;
        }

        v234 = v117;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v126 = v254;
        if (!Strong || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v263 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v144 = v224;
            MusicLibrarySection.item.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v145 = v225;
            v146 = v226;
            (*(v225 + 16))(v223, v144, v226);
            static Published.subscript.setter();
            (*(v145 + 8))(v144, v146);
          }

          swift_beginAccess();
          v147 = swift_weakLoadStrong();
          v148 = v248;
          if (v147)
          {
            v149 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v263) = v149 & 1;
            static Published.subscript.setter();
          }

          v226 = v120;
          v150 = v228;
          MusicLibrarySection.items.getter();
          v151 = v229;
          v152 = v249;
          (*(v229 + 16))(v148, v150, v249);
          v153 = *(v227 + 36);
          v154 = sub_100020674(&qword_1011B4F58, &qword_1011B4F20);
          dispatch thunk of Collection.startIndex.getter();
          (*(v151 + 8))(v150, v152);
          swift_beginAccess();
          dispatch thunk of Collection.endIndex.getter();
          if (*&v153[v148] == v263)
          {
            v242 = _swiftEmptyArrayStorage;
            v246 = _swiftEmptyArrayStorage;
          }

          else
          {
            v169 = v238;
            v251 = (v238 + 16);
            v170 = (v238 + 32);
            v243 = (v238 + 8);
            v232 = (v238 + 56);
            v246 = _swiftEmptyArrayStorage;
            v242 = _swiftEmptyArrayStorage;
            v245 = v153;
            do
            {
              v176 = v154;
              v177 = dispatch thunk of Collection.subscript.read();
              v178 = *v251;
              v179 = v247;
              v180 = v212;
              (*v251)(v247);
              v177(&v263, 0);
              v154 = v176;
              dispatch thunk of Collection.formIndex(after:)();
              v181 = *v170;
              v182 = v255;
              (*v170)(v255, v179, v180);
              v183 = Playlist.Collaborator.isPending.getter();
              if (v183 == 2 || (v183 & 1) == 0)
              {
                v178(v252, v182, v180);
                v188 = v246;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_100BF9BAC(0, *(v188 + 2) + 1, 1, v188);
                }

                v190 = *(v188 + 2);
                v189 = *(v188 + 3);
                if (v190 >= v189 >> 1)
                {
                  v188 = sub_100BF9BAC(v189 > 1, v190 + 1, 1, v188);
                }

                *(v188 + 2) = v190 + 1;
                v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v246 = v188;
                v181(&v188[v191 + *(v169 + 72) * v190], v252, v180);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v171 = static Published.subscript.modify();
                  v172 = v240;
                  v173 = v255;
                  sub_100B8A3A0(v255, v240);
                  v174 = v172;
                  v169 = v238;
                  sub_1000095E8(v174, &unk_1011B4540);
                  v171(&v263, 0);
                  v175 = v173;
                  v154 = v176;

                  (*v243)(v175, v212);
                }

                else
                {
                  (*v243)(v255, v180);
                  v192 = v240;
                  (*v232)(v240, 1, 1, v180);
                  sub_1000095E8(v192, &unk_1011B4540);
                }
              }

              else
              {
                v178(v237, v182, v180);
                v184 = v242;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v184 = sub_100BF9BAC(0, v184[2] + 1, 1, v184);
                }

                v242 = v184;
                v186 = v184[2];
                v185 = v184[3];
                if (v186 >= v185 >> 1)
                {
                  v242 = sub_100BF9BAC(v185 > 1, v186 + 1, 1, v242);
                }

                (*(v169 + 8))(v182, v180);
                v187 = v242;
                *(v242 + 2) = v186 + 1;
                v181(v187 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v186, v237, v180);
              }

              v148 = v248;
              dispatch thunk of Collection.endIndex.getter();
            }

            while (*&v245[v148] != v263);
          }

          sub_1000095E8(v148, &qword_1011B4F28);
          swift_beginAccess();
          v155 = swift_weakLoadStrong();
          v156 = v246;
          if (v155)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[1] = v156;

            static Published.subscript.setter();
          }

          swift_beginAccess();
          v157 = swift_weakLoadStrong();
          v158 = v230;
          v159 = v242;
          if (v157)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[0] = v159;

            static Published.subscript.setter();
          }

          v160 = v256;
          v211(v158, v210, v256);

          v161 = Logger.logObject.getter();
          v162 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v262[0] = v164;
            *v163 = 136315138;
            v165 = Array.description.getter();
            v167 = v166;

            v168 = sub_100010744(v165, v167, v262);

            *(v163 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v161, v162, "[Management] pendingCollaborators=%s", v163, 0xCu);
            sub_10000959C(v164);
          }

          else
          {
          }

          v193 = v158;
          v194 = v236;
          v236(v193, v160);
          v195 = v231;
          v211(v231, v210, v160);

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = v195;
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v262[0] = v200;
            *v199 = 136315138;
            v201 = Array.description.getter();
            v202 = v194;
            v204 = v203;

            v205 = sub_100010744(v201, v204, v262);

            *(v199 + 4) = v205;
            _os_log_impl(&_mh_execute_header, v196, v197, "[Management] activeCollaborators=%s", v199, 0xCu);
            sub_10000959C(v200);

            v202(v198, v256);
          }

          else
          {

            v194(v195, v160);
          }

          (v226)(v233, v239);
          (*(v254 + 8))(v235, v253);
          (*(v259 + 8))(v241, v258);
          goto LABEL_29;
        }

        swift_beginAccess();
        v127 = swift_weakLoadStrong();
        v128 = v218;
        v129 = v221;
        if (v127)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v216;
          static Published.subscript.getter();

          v131 = v215;
          Playlist.collaboration.getter();
          (*(v225 + 8))(v130, v226);
          if ((v251)(v131, 1, v100) != 1)
          {
            v132 = v222;
            Playlist.Collaboration.invitationExpirationDate.getter();
            (*(v126 + 8))(v131, v100);
            v133 = v220;
LABEL_38:
            Playlist.Collaboration.invitationExpirationDate.getter();
            v134 = *(v217 + 48);
            v135 = v219;
            sub_1000089F8(v132, v219, &qword_1011B4900);
            sub_1000089F8(v129, v135 + v134, &qword_1011B4900);
            v136 = v128;
            v137 = *(v128 + 48);
            if (v137(v135, 1, v133) == 1)
            {
              sub_1000095E8(v129, &qword_1011B4900);
              sub_1000095E8(v132, &qword_1011B4900);
              if (v137(v135 + v134, 1, v133) == 1)
              {
                sub_1000095E8(v135, &qword_1011B4900);
                goto LABEL_47;
              }
            }

            else
            {
              v138 = v214;
              sub_1000089F8(v135, v214, &qword_1011B4900);
              if (v137(v135 + v134, 1, v133) != 1)
              {
                v139 = v135 + v134;
                v140 = v213;
                (*(v136 + 32))(v213, v139, v133);
                sub_100B8C798(&qword_1011B4F60, &type metadata accessor for Date);
                v141 = v138;
                v142 = dispatch thunk of static Equatable.== infix(_:_:)();
                v143 = *(v136 + 8);
                v143(v140, v133);
                sub_1000095E8(v221, &qword_1011B4900);
                sub_1000095E8(v222, &qword_1011B4900);
                v143(v141, v133);
                sub_1000095E8(v135, &qword_1011B4900);
                if (v142)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v263) = 0;
                  static Published.subscript.setter();
                }

                goto LABEL_47;
              }

              sub_1000095E8(v221, &qword_1011B4900);
              sub_1000095E8(v222, &qword_1011B4900);
              (*(v136 + 8))(v138, v133);
            }

            sub_1000095E8(v135, &qword_1011B4F30);
            goto LABEL_44;
          }

          sub_1000095E8(v131, &qword_1011B48F8);
        }

        v132 = v222;
        v133 = v220;
        (*(v128 + 56))(v222, 1, 1, v220);
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint64_t sub_100B6FD74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100B6FDEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100B6FE68(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100B70028()
{
  v0 = type metadata accessor for Playlist.Collaborator.Status();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_1011B4910);
  __chkstk_darwin(v34);
  v3 = &v30 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_10010FC20(&qword_1011B4918);
  __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v5 + 8))(v7, v4);
  v19 = type metadata accessor for Playlist.Collaboration();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_1000095E8(v10, &qword_1011B48F8);
    v21 = v33;
    (*(v33 + 56))(v18, 1, 1, v0);
  }

  else
  {
    Playlist.Collaboration.collaboratorStatus.getter();
    (*(v20 + 8))(v10, v19);
    v21 = v33;
  }

  (*(v21 + 104))(v15, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v21 + 56))(v15, 0, 1, v0);
  v22 = *(v34 + 48);
  sub_1000089F8(v18, v3, &qword_1011B4918);
  sub_1000089F8(v15, &v3[v22], &qword_1011B4918);
  v23 = *(v21 + 48);
  if (v23(v3, 1, v0) != 1)
  {
    v25 = v32;
    sub_1000089F8(v3, v32, &qword_1011B4918);
    if (v23(&v3[v22], 1, v0) != 1)
    {
      v26 = v31;
      (*(v21 + 32))(v31, &v3[v22], v0);
      sub_100B8C798(&unk_1011B4920, &type metadata accessor for Playlist.Collaborator.Status);
      v27 = v25;
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v21 + 8);
      v28(v26, v0);
      sub_1000095E8(v15, &qword_1011B4918);
      sub_1000095E8(v18, &qword_1011B4918);
      v28(v27, v0);
      sub_1000095E8(v3, &qword_1011B4918);
      return v24 & 1;
    }

    sub_1000095E8(v15, &qword_1011B4918);
    sub_1000095E8(v18, &qword_1011B4918);
    (*(v21 + 8))(v25, v0);
    goto LABEL_9;
  }

  sub_1000095E8(v15, &qword_1011B4918);
  sub_1000095E8(v18, &qword_1011B4918);
  if (v23(&v3[v22], 1, v0) != 1)
  {
LABEL_9:
    sub_1000095E8(v3, &qword_1011B4910);
    v24 = 0;
    return v24 & 1;
  }

  sub_1000095E8(v3, &qword_1011B4918);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_100B70664()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6[15] == 1 && (sub_100B70D84() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = Playlist.isOwner.getter();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_100B707DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100B13C20(v1);
  }

  return v1;
}

uint64_t sub_100B70940()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v20 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *(v20 + 16);

  if (v10 == 1)
  {
    if (!v9)
    {
      return 0;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    v20 = v9;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v12 = 0xD000000000000012;
    v13 = 0x8000000100E65FA0;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v20 = v10;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    if (v9)
    {
      v15._countAndFlagsBits = 0x2064656E696F6A20;
      v15._object = 0xAC00000020A280E2;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      v20 = v9;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12 = 0x676E69646E657020;
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x8000000100E65F80;
      v12 = 0xD000000000000011;
    }
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v12);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v17 = qword_10121B340;
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v16;
}

uint64_t sub_100B70D84()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v22 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  (*(v1 + 8))(v3, v0);
  v15 = type metadata accessor for Playlist.Collaboration();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_1000095E8(v6, &qword_1011B48F8);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    Playlist.Collaboration.invitationExpirationDate.getter();
    (*(v16 + 8))(v6, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v18 = v22;
      (*(v11 + 32))(v22, v9, v10);
      v19 = v23;
      Date.init()();
      v17 = static Date.> infix(_:_:)();
      v20 = *(v11 + 8);
      v20(v19, v10);
      v20(v18, v10);
      return v17 & 1;
    }
  }

  sub_1000095E8(v9, &qword_1011B4900);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100B71154()
{
  v1 = v0;
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v80 = *(v4 - 8);
  v81 = v4;
  __chkstk_darwin(v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v69 - v13;
  v14 = type metadata accessor for Playlist();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v72 = &v69 - v18;
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v22 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v22 - 8);
  v24 = &v69 - v23;
  v25 = sub_10010FC20(&qword_1011B4900);
  __chkstk_darwin(v25 - 8);
  v27 = &v69 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v78 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v87 = &v69 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v1;
  static Published.subscript.getter();

  Playlist.collaboration.getter();
  v33 = *(v15 + 8);
  v85 = v14;
  v33(v21, v14);
  v34 = type metadata accessor for Playlist.Collaboration();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_1000095E8(v24, &qword_1011B48F8);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    sub_1000095E8(v27, &qword_1011B4900);
    return 0;
  }

  Playlist.Collaboration.invitationExpirationDate.getter();
  (*(v35 + 8))(v24, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v29 + 32);
  v69 = v28;
  v37(v87, v27, v28);
  v38 = v29;
  if (sub_100B70D84() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v39 = v72, static Published.subscript.getter(), , , v40 = Playlist.isOwner.getter(), v33(v39, v85), v40 != 2) && (v40)
  {
    v41 = v75;
    String.LocalizationValue.init(stringLiteral:)();
    v43 = v76;
    v42 = v77;
    (*(v76 + 16))(v73, v41, v77);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v44 = qword_10121B340;
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v87, v69);
  }

  else
  {
    v46 = v79;
    static Calendar.autoupdatingCurrent.getter();
    sub_10010FC20(&qword_1011B4908);
    v47 = type metadata accessor for Calendar.Component();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100EBC6B0;
    (*(v48 + 104))(v50 + v49, enum case for Calendar.Component.day(_:), v47);
    sub_100B0EFA8(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    v51 = v78;
    Date.init()();
    v52 = v82;
    v53 = v87;
    Calendar.dateComponents(_:from:to:)();

    v54 = *(v38 + 8);
    v55 = v69;
    v54(v51, v69);
    (*(v80 + 8))(v46, v81);
    v56 = DateComponents.day.getter();
    if (v57)
    {
      (*(v83 + 8))(v52, v84);
      v54(v53, v55);
      return 0;
    }

    v58 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v70;
    static Published.subscript.getter();

    v60 = Playlist.isOwner.getter();
    v33(v59, v85);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._object = 0x8000000100E65E80;
      v64._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
      v88 = v58;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v62 = 0x2E29732879616420;
      v63 = 0xE800000000000000;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v61._object = 0x8000000100E65E80;
      v61._countAndFlagsBits = 0xD000000000000010;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
      v88 = v58;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v62 = 0xD00000000000006CLL;
      v63 = 0x8000000100E65EA0;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v62);
    v65 = v75;
    String.LocalizationValue.init(stringInterpolation:)();
    v67 = v76;
    v66 = v77;
    (*(v76 + 16))(v73, v65, v77);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v68 = qword_10121B340;
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    (*(v67 + 8))(v65, v66);
    (*(v83 + 8))(v52, v84);
    v54(v53, v69);
  }

  return v45;
}

uint64_t sub_100B71CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B48F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (sub_100B70D84())
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Playlist.collaboration.getter();
    (*(v3 + 8))(v5, v2);
    v12 = type metadata accessor for Playlist.Collaboration();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_1000095E8(v8, &qword_1011B48F8);
      v14 = type metadata accessor for URL();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    else
    {
      Playlist.Collaboration.invitationURL.getter();
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t sub_100B71F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011B3D28);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011B3D28);
  v10 = sub_10010FC20(&qword_1011B5930);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_10003D17C(v8, a1, &qword_1011B5930);
  }

  sub_1000095E8(v8, &qword_1011B3D28);
  sub_100B7218C(a1);
  sub_1000089F8(a1, v5, &qword_1011B5930);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_1011B3D28);
  return swift_endAccess();
}

uint64_t sub_100B7218C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Playlist.artwork.getter();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_1011B55F0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v11, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_100B724E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = type metadata accessor for Playlist();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100B725A4, 0, 0);
}

uint64_t sub_100B725A4()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100B726AC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_100B726AC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100B917C8;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_100B72868;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100B72868()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B728DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100B729A8, 0, 0);
}

uint64_t sub_100B729A8()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100B72AAC;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_100B72AAC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100B72CA8;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100B72C40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B72C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B72CA8()
{
  v0[10] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B72D50, v2, v1);
}

uint64_t sub_100B72D50()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B72DCC, 0, 0);
}

uint64_t sub_100B72DCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B72E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Playlist();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B72F58, 0, 0);
}

uint64_t sub_100B72F58()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100B73060;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_100B73060()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100B73270;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_100B73204;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B73204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73270()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  static Published.subscript.setter();
  *(v0 + 96) = *(v1 + 16);
  type metadata accessor for MainActor();

  *(v0 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B73364, v3, v2);
}

uint64_t sub_100B73364()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B733E0, 0, 0);
}

uint64_t sub_100B733E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73454(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_10010FC20(&unk_1011B4540);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Playlist.Collaborator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  sub_1000089F8(a1, v7, &unk_1011B4540);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011B4540);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v9 + 16))(v11, v14, v8);
    v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v20[1];
    v15(&v18[v17], v11, v8);

    sub_100B284E0(0, 0, v4, &unk_100F052F0, v18);

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_100B73798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Playlist();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B73864, 0, 0);
}

uint64_t sub_100B73864()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100B7396C;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_100B7396C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100B73B68;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100B73B00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100B73B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73B68()
{
  v0[11] = *(v0[2] + 16);
  type metadata accessor for MainActor();

  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B73C10, v2, v1);
}

uint64_t sub_100B73C10()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B73C8C, 0, 0);
}

uint64_t sub_100B73C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B73CFC(uint64_t a1, int a2)
{
  v21 = a1;
  v23 = a2;
  v3 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(v8, a1, v5, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = static Published.subscript.modify();
  sub_100B8B200(v12, v8);
  (*(v6 + 8))(v12, v5);
  v14(v24, 0);

  v15 = type metadata accessor for TaskPriority();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  (v13)(v12, v21, v5);
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23 & 1;
  (*(v6 + 32))(v18 + v17, v12, v5);

  sub_100B284E0(0, 0, v16, &unk_100F052C8, v18);
}

uint64_t sub_100B73FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = type metadata accessor for Playlist.Collaborator();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011B62E0);
  *(v6 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B74130, 0, 0);
}

uint64_t sub_100B74130()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100B74240;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_100B74240()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100B7442C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100B7442C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_100B28AF4(0, 0, v1, &unk_100F052D8, v10);

  v0[15] = *(v6 + 16);

  v0[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B745EC, v12, v11);
}

uint64_t sub_100B745EC()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100B74668, 0, 0);
}

uint64_t sub_100B74668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B746E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B74780, v7, v6);
}

uint64_t sub_100B74780()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  sub_100B8A3A0(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_10010FC20(&qword_1011B3CC8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_10010FC20(&qword_1011B3CE0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_10010FC20(&qword_1011B3CF0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_10010FC20(&qword_1011B3D00);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_1000095E8(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_1011B3D28);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100B74AEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0890);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B08A0);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  sub_10010FC20(&qword_1011B3D60);
  State.init(wrappedValue:)();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  State.init(wrappedValue:)();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  State.init(wrappedValue:)();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  State.init(wrappedValue:)();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model);
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet()
{
  sub_10010FC20(&qword_1011B3D60);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_100B8C798(&qword_1011B3D68, type metadata accessor for Collaboration.Management.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10010FC20(&qword_1011B3D70);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v27 = v2;
  v22[1] = sub_10010FC20(&qword_1011B3D78);
  v9 = sub_1001109D0(&qword_1011B3D80);
  v10 = sub_1001109D0(&qword_1011B3D88);
  v11 = sub_1001109D0(&qword_1011B3D90);
  v12 = type metadata accessor for InsetGroupedListStyle();
  v13 = sub_100B8C5D4();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1001109D0(&qword_1011B3DC0);
  v16 = sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0);
  v28 = v15;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v9;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100B8D7C0(v2, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_100B8D828(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_100020674(&unk_1011B3DD0, &qword_1011B3D70);
  v20 = v24;
  View.onChange<A>(of:initial:_:)();

  return (*(v25 + 8))(v8, v20);
}

uint64_t sub_100B75210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B3D90);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v25 = sub_10010FC20(&qword_1011B3D80);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v24 = a1;
  v27 = a1;
  sub_10010FC20(&qword_1011B4A68);
  sub_100020674(&qword_1011B4A70, &qword_1011B4A68);
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  if (qword_1011B0650 != -1)
  {
    v22 = KeyPath;
    swift_once();
    KeyPath = v22;
  }

  v14 = qword_1011B3C08;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  InsetGroupedListStyle.init()();
  v16 = sub_100B8C5D4();
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v17 = sub_1000095E8(v9, &qword_1011B3D90);
  __chkstk_darwin(v17);
  *(&v23 - 2) = v24;
  sub_10010FC20(&qword_1011B3D88);
  v28 = v7;
  v29 = v3;
  v30 = v16;
  v31 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v18 = sub_1001109D0(&qword_1011B3DC0);
  v19 = sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  View.toolbar<A>(content:)();
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_100B75610@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v166 = sub_10010FC20(&qword_1011B4A88);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v131 = &v130 - v3;
  v162 = type metadata accessor for Playlist();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B4A90);
  __chkstk_darwin(v5 - 8);
  v167 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v130 - v8;
  v9 = sub_10010FC20(&qword_1011B4A98);
  v171 = *(v9 - 8);
  v172 = v9;
  __chkstk_darwin(v9);
  v139 = &v130 - v10;
  v138 = sub_10010FC20(&qword_1011B4AA0);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v151 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v130 - v13;
  v135 = sub_10010FC20(&qword_1011B4AA8);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v130 - v14;
  v15 = sub_10010FC20(&qword_1011B4AB0);
  __chkstk_darwin(v15 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v130 - v18;
  v19 = type metadata accessor for Locale();
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for String.LocalizationValue();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v169 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v130 - v23;
  v148 = sub_10010FC20(&qword_1011B4AB8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v130 - v26;
  v147 = type metadata accessor for Playlist.Collaborator();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  v30 = sub_10010FC20(&qword_1011B4AC0);
  __chkstk_darwin(v30 - 8);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &v130 - v33;
  v156 = type metadata accessor for Prominence();
  v34 = *(v156 - 8);
  __chkstk_darwin(v156);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_10010FC20(&qword_1011B4AC8);
  __chkstk_darwin(v173);
  v38 = &v130 - v37;
  v154 = sub_10010FC20(&qword_1011B4AD0);
  v155 = *(v154 - 8);
  __chkstk_darwin(v154);
  v40 = &v130 - v39;
  v159 = sub_10010FC20(&qword_1011B4AD8);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v130 - v43;
  v174 = a1;
  v176 = a1;
  sub_100B79638(a1, v38);
  v153 = sub_10010FC20(&qword_1011B4AE0);
  v45 = sub_1001109D0(&qword_1011B4AE8);
  v46 = sub_1001109D0(&qword_1011B4AF0);
  v47 = sub_100B8F3F4();
  v48 = sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &unk_100F056A8, sub_100B8F554);
  v177 = v45;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  swift_getOpaqueTypeConformance2();
  sub_100B8F698();
  Section<>.init(header:content:)();
  v49 = v156;
  (*(v34 + 104))(v36, enum case for Prominence.increased(_:), v156);
  sub_100B8F748();
  v173 = v44;
  v50 = v154;
  View.headerProminence(_:)();
  v51 = v36;
  v52 = v175;
  (*(v34 + 8))(v51, v49);
  (*(v155 + 8))(v40, v50);
  v53 = *(v174 + 8);
  v54 = sub_100B70028();
  v56 = v171;
  v55 = v172;
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v177 + 16))
  {

    v52 = v175;
    v56 = v171;
    v55 = v172;
LABEL_9:
    (*(v56 + 56))(v52, 1, 1, v55);
    v79 = v164;
    v80 = v170;
    goto LABEL_11;
  }

  v57 = v145;
  v58 = v133;
  v59 = v147;
  (*(v145 + 16))(v133, v177 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v147);

  v60 = (*(v57 + 32))(v143, v58, v59);
  __chkstk_darwin(v60);
  v61 = v170;
  String.LocalizationValue.init(stringLiteral:)();
  v62 = v140;
  v63 = v142;
  (*(v140 + 16))(v169, v61, v142);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v64 = qword_10121B340;
  static Locale.current.getter();
  v65 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v66;
  (*(v62 + 8))(v61, v63);
  v177 = v65;
  v178 = v67;
  sub_1000098E0();
  v177 = Text.init<A>(_:)();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  Section<>.init(header:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v156 = v53;
  if (v177 == 1)
  {
    __chkstk_darwin(v71);
    sub_10010FC20(&qword_1011B4BD0);
    v72 = sub_1001109D0(&qword_1011B4BD8);
    v73 = sub_1001109D0(&qword_1011B4BE0);
    v74 = type metadata accessor for BorderlessButtonStyle();
    v75 = sub_100020674(&qword_1011B4BE8, &qword_1011B4BE0);
    v76 = sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle);
    v177 = v73;
    v178 = v74;
    v179 = v75;
    v180 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v177 = v72;
    v178 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v132;
    Section<>.init(content:)();
    v84 = v134;
    v82 = v149;
    v83 = v135;
    (*(v134 + 32))(v149, v78, v135);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v149;
    v83 = v135;
    v84 = v134;
  }

  v85 = (*(v84 + 56))(v82, v81, 1, v83);
  __chkstk_darwin(v85);
  sub_100B7E7EC(&v177);
  sub_10010FC20(&qword_1011B4BB8);
  sub_100B8F8A8();
  v86 = v150;
  Section<>.init(header:content:)();
  v87 = *(v146 + 16);
  v88 = v144;
  v89 = v148;
  v87(v144, v152, v148);
  v90 = v82;
  v91 = v136;
  sub_1000089F8(v90, v136, &qword_1011B4AB0);
  v92 = v137;
  v93 = *(v137 + 16);
  v94 = v138;
  v93(v151, v86, v138);
  v95 = v139;
  v87(v139, v88, v89);
  v96 = sub_10010FC20(&qword_1011B4BC8);
  sub_1000089F8(v91, v95 + *(v96 + 48), &qword_1011B4AB0);
  v97 = v151;
  v93((v95 + *(v96 + 64)), v151, v94);
  v98 = *(v92 + 8);
  v98(v150, v94);
  sub_1000095E8(v149, &qword_1011B4AB0);
  v99 = *(v146 + 8);
  v100 = v148;
  v99(v152, v148);
  v98(v97, v94);
  sub_1000095E8(v91, &qword_1011B4AB0);
  v99(v144, v100);
  v52 = v175;
  sub_10003D17C(v95, v175, &qword_1011B4A98);
  (*(v171 + 56))(v52, 0, 1, v172);
  (*(v145 + 8))(v143, v147);
  v80 = v170;
  v79 = v164;
LABEL_11:
  v101 = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v160;
  static Published.subscript.getter();

  v103 = Playlist.isOwner.getter();
  (*(v161 + 8))(v102, v162);
  if (v103 != 2 && (v103 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , v104 = , v177 == 1))
  {
    __chkstk_darwin(v104);
    String.LocalizationValue.init(stringLiteral:)();
    v105 = v140;
    v106 = v142;
    (*(v140 + 16))(v101, v80, v142);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v107 = qword_10121B340;
    static Locale.current.getter();
    v108 = String.init(localized:table:bundle:locale:comment:)();
    v110 = v109;
    (*(v105 + 8))(v80, v106);
    v177 = v108;
    v178 = v110;
    sub_1000098E0();
    v181 = Text.init<A>(_:)();
    v182 = v111;
    v183 = v112 & 1;
    v184 = v113;
    sub_100B7F134(&v177);
    sub_10010FC20(&unk_1011B4B80);
    sub_10010FC20(&qword_1011B2D38);
    sub_100020674(&unk_1011B4B90, &unk_1011B4B80);
    sub_100B4BD08();
    v114 = v131;
    Section<>.init(header:footer:content:)();
    v115 = v165;
    v116 = v114;
    v117 = v166;
    (*(v165 + 32))(v79, v116, v166);
    v118 = v117;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v166;
    v115 = v165;
  }

  (*(v115 + 56))(v79, v119, 1, v118);
  v120 = v158;
  v121 = *(v158 + 16);
  v122 = v157;
  v123 = v159;
  v121(v157, v173, v159);
  v124 = v163;
  sub_1000089F8(v52, v163, &qword_1011B4AC0);
  v125 = v167;
  sub_1000089F8(v79, v167, &qword_1011B4A90);
  v126 = v168;
  v121(v168, v122, v123);
  v127 = sub_10010FC20(&qword_1011B4B78);
  sub_1000089F8(v124, &v126[*(v127 + 48)], &qword_1011B4AC0);
  sub_1000089F8(v125, &v126[*(v127 + 64)], &qword_1011B4A90);
  sub_1000095E8(v79, &qword_1011B4A90);
  sub_1000095E8(v175, &qword_1011B4AC0);
  v128 = *(v120 + 8);
  v128(v173, v123);
  sub_1000095E8(v125, &qword_1011B4A90);
  sub_1000095E8(v124, &qword_1011B4AC0);
  return (v128)(v122, v123);
}

uint64_t sub_100B76D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_10010FC20(&qword_1011B4B68);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v61 - v4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B4BB8);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011B4D98);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = sub_10010FC20(&qword_1011B4DA0);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v23 = a1;
  if (sub_100B70028())
  {
    v24 = v73;
    v25 = *(v72 + 56);
    v26 = v74;

    return v25(v26, 1, 1, v24);
  }

  else
  {
    *v17 = static VerticalAlignment.center.getter();
    *(v17 + 1) = 0x4028000000000000;
    v17[16] = 0;
    v28 = sub_10010FC20(&qword_1011B4DA8);
    sub_100B77510(a1, &v17[*(v28 + 44)]);
    v29 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(sub_10010FC20(&qword_1011B4DB0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = &v17[*(sub_10010FC20(&qword_1011B4DB8) + 36)];
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v41 = &v17[*(v15 + 36)];
    *v41 = v40;
    v41[1] = sub_10072DE6C;
    v41[2] = 0;
    static AccessibilityChildBehavior.combine.getter();
    sub_100B90550();
    v61 = v22;
    View.accessibilityElement(children:)();
    (*(v12 + 8))(v14, v11);
    sub_1000095E8(v17, &qword_1011B4D98);
    v75 = sub_100B707DC();
    v42 = v23;
    v43 = v63;
    sub_100B8D7C0(v42, v63, type metadata accessor for Collaboration.Management.View);
    v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v45 = swift_allocObject();
    sub_100B8D828(v43, v45 + v44, type metadata accessor for Collaboration.Management.View);
    sub_10010FC20(&qword_1011B3CB0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_100020674(&qword_1011B4C18, &qword_1011B3CB0);
    sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    sub_100B8C798(&qword_1011B4C20, &type metadata accessor for Playlist.Collaborator);
    v46 = v70;
    ForEach<>.init(_:content:)();
    v48 = v64;
    v47 = v65;
    v49 = *(v64 + 16);
    v50 = v69;
    v49(v69, v61, v65);
    v52 = v66;
    v51 = v67;
    v53 = *(v67 + 16);
    v54 = v46;
    v55 = v68;
    v53(v66, v54, v68);
    v49(v71, v50, v47);
    v56 = sub_10010FC20(&qword_1011B4DE8);
    v57 = v71;
    v53(&v71[*(v56 + 48)], v52, v55);
    v58 = *(v51 + 8);
    v58(v70, v55);
    v59 = *(v48 + 8);
    v59(v61, v47);
    v58(v52, v55);
    v59(v69, v47);
    v60 = v74;
    sub_10003D17C(v57, v74, &qword_1011B4B68);
    return (*(v72 + 56))(v60, 0, 1, v73);
  }
}

uint64_t sub_100B77510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = sub_10010FC20(&qword_1011B4DF0);
  v167 = *(v3 - 8);
  v168 = v3;
  __chkstk_darwin(v3);
  v162 = (&v138 - v4);
  v161 = sub_10010FC20(&qword_1011B4888);
  __chkstk_darwin(v161);
  v153 = &v138 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10010FC20(&qword_1011B4DF8);
  __chkstk_darwin(v150);
  v149 = &v138 - v8;
  v145 = sub_10010FC20(&qword_1011B4E00);
  __chkstk_darwin(v145);
  v151 = &v138 - v9;
  v158 = sub_10010FC20(&qword_1011B4E08);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v138 - v10;
  v11 = sub_10010FC20(&qword_1011B4E10);
  v159 = *(v11 - 8);
  v160 = v11;
  __chkstk_darwin(v11);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v138 - v14;
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for String.LocalizationValue();
  v143 = *(v17 - 8);
  v144 = v17;
  __chkstk_darwin(v17);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v141 = &v138 - v21;
  v22 = type metadata accessor for Playlist();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&qword_1011B4E18);
  __chkstk_darwin(v24 - 8);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v138 - v27;
  v164 = sub_10010FC20(&qword_1011B4E20);
  v28 = *(v164 - 8);
  __chkstk_darwin(v164);
  v30 = &v138 - v29;
  v31 = type metadata accessor for DynamicTypeSize();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = sub_10010FC20(&qword_1011B4E28);
  __chkstk_darwin(v38 - 8);
  v165 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = a1;
  v172 = &v138 - v41;
  v154 = v6;
  sub_100B4CD34(v37);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v42 = sub_1000060E4(v31, qword_1011B3C60);
  (*(v32 + 16))(v34, v42, v31);
  sub_100B8C798(&qword_1011B1658, &type metadata accessor for DynamicTypeSize);
  v43 = dispatch thunk of static Comparable.< infix(_:_:)();
  v44 = *(v32 + 8);
  v44(v34, v31);
  v44(v37, v31);
  if (v43)
  {
    (*(v28 + 56))(v172, 1, 1, v164);
    v45 = v19;
  }

  else
  {
    v46 = Image.init(systemName:)();
    v45 = v19;
    if (qword_1011B0648 != -1)
    {
      swift_once();
    }

    v47 = qword_1011B3C00;
    KeyPath = swift_getKeyPath();
    v49 = qword_1011B0698;

    if (v49 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v50 = &v30[*(sub_10010FC20(&qword_1011B4E30) + 36)];
    v51 = *(sub_10010FC20(&qword_1011B4E38) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v52 = type metadata accessor for SymbolRenderingMode();
    (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
    *v50 = swift_getKeyPath();
    *v30 = v46;
    *(v30 + 1) = KeyPath;
    *(v30 + 2) = v47;
    *(v30 + 56) = *&v177[16];
    v53 = v176;
    *(v30 + 40) = *v177;
    *(v30 + 24) = v53;
    if (qword_1011B06A0 != -1)
    {
      swift_once();
    }

    v54 = qword_1011B3C58;
    v55 = swift_getKeyPath();
    v56 = v164;
    v57 = &v30[*(v164 + 36)];
    *v57 = v55;
    v57[1] = v54;
    v58 = v172;
    sub_10003D17C(v30, v172, &qword_1011B4E20);
    (*(v28 + 56))(v58, 0, 1, v56);
  }

  v164 = static HorizontalAlignment.leading.getter();
  v59 = 1;
  LOBYTE(v176) = 1;
  v60 = v171;
  sub_100B78920(v171, v180);
  *&v179[7] = v180[0];
  *&v179[23] = v180[1];
  *&v179[39] = v180[2];
  *&v179[55] = v180[3];
  v163 = v176;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v176 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v138;
    static Published.subscript.getter();

    v62 = Playlist.isOwner.getter();
    (*(v139 + 8))(v61, v140);
    if (v62 == 2 || (v62 & 1) == 0)
    {
      v63 = v141;
    }

    else
    {
      v63 = v141;
    }

    String.LocalizationValue.init(stringLiteral:)();
    v65 = v143;
    v64 = v144;
    (*(v143 + 16))(v45, v63, v144);
    v66 = v145;
    v67 = v151;
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v68 = qword_10121B340;
    static Locale.current.getter();
    v69 = String.init(localized:table:bundle:locale:comment:)();
    v71 = v70;
    (*(v65 + 8))(v63, v64);
    v145 = v69;
    *&v176 = v69;
    *(&v176 + 1) = v71;
    v72 = v148;
    sub_100B8D7C0(v60, v148, type metadata accessor for Collaboration.Management.View);
    v73 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v74 = swift_allocObject();
    sub_100B8D828(v72, v74 + v73, type metadata accessor for Collaboration.Management.View);
    sub_1000098E0();

    v75 = v149;
    Button<>.init<A>(_:action:)();
    v76 = static Font.subheadline.getter();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v150 + 36));
    *v78 = v77;
    v78[1] = v76;
    static Font.Weight.semibold.getter();
    sub_100B90868();
    View.fontWeight(_:)();
    sub_1000095E8(v75, &qword_1011B4DF8);
    v79 = static Color.white.getter();
    v80 = swift_getKeyPath();
    v81 = &v67[*(sub_10010FC20(&qword_1011B4E58) + 36)];
    *v81 = v80;
    v81[1] = v79;
    if (qword_1011B0688 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v82 = &v67[*(sub_10010FC20(&qword_1011B4E60) + 36)];
    v83 = v180[5];
    *v82 = v180[4];
    *(v82 + 1) = v83;
    *(v82 + 2) = v180[6];
    v84 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = &v67[*(sub_10010FC20(&qword_1011B4E68) + 36)];
    *v93 = v84;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    *(v93 + 3) = v90;
    *(v93 + 4) = v92;
    v93[40] = 0;
    if (qword_1011B04D0 != -1)
    {
      swift_once();
    }

    v151 = v71;
    v94 = static UIColor.MusicTint.normal;
    v95 = Color.init(_:)();
    v96 = static Edge.Set.all.getter();
    v97 = &v67[*(sub_10010FC20(&qword_1011B4E70) + 36)];
    *v97 = v95;
    v97[8] = v96;
    v98 = &v67[*(v66 + 36)];
    v99 = enum case for RoundedCornerStyle.continuous(_:);
    v100 = type metadata accessor for RoundedCornerStyle();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    *&v98[*(sub_10010FC20(&qword_1011B4E78) + 36)] = 256;
    v101 = v66;
    v102 = v67;
    if (qword_1011B06B0 != -1)
    {
      swift_once();
    }

    v103 = v161;
    v104 = sub_1000060E4(v161, qword_1011B3C78);
    v105 = v153;
    sub_1000089F8(v104, v153, &qword_1011B4888);
    v150 = sub_100B9094C();
    v106 = sub_100020674(&qword_1011B48C0, &qword_1011B4888);
    v107 = v152;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v105, &qword_1011B4888);
    sub_1000095E8(v102, &qword_1011B4E00);
    v108 = (v171 + *(v154 + 11));
    v109 = *v108;
    v110 = *(v108 + 1);
    LOBYTE(v173) = v109;
    v174 = v110;
    sub_10010FC20(&qword_1011B2DD8);
    v111 = State.projectedValue.getter();
    v154 = &v138;
    __chkstk_darwin(v111);
    v112 = v145;
    *(&v138 - 4) = v113;
    *(&v138 - 3) = v112;
    *(&v138 - 2) = v151;
    *&v176 = v101;
    *(&v176 + 1) = v103;
    *v177 = v150;
    *&v177[8] = v106;
    swift_getOpaqueTypeConformance2();
    v114 = v155;
    v115 = v158;
    View.alert(isPresented:content:)();

    (*(v156 + 8))(v107, v115);
    v117 = v159;
    v116 = v160;
    v118 = *(v159 + 16);
    v119 = v157;
    v118(v157, v114, v160);
    v120 = v162;
    *v162 = 0;
    *(v120 + 8) = 1;
    v121 = sub_10010FC20(&qword_1011B4EC0);
    v118((v120 + *(v121 + 48)), v119, v116);
    v122 = *(v117 + 8);
    v122(v114, v116);
    v122(v119, v116);
    sub_10003D17C(v120, v170, &qword_1011B4DF0);
    v59 = 0;
  }

  v123 = v170;
  (*(v167 + 56))(v170, v59, 1, v168);
  v124 = v172;
  v125 = v165;
  sub_1000089F8(v172, v165, &qword_1011B4E28);
  v126 = v166;
  sub_1000089F8(v123, v166, &qword_1011B4E18);
  v127 = v169;
  sub_1000089F8(v125, v169, &qword_1011B4E28);
  v128 = sub_10010FC20(&qword_1011B4E40);
  v129 = v127 + *(v128 + 48);
  v130 = v164;
  v173 = v164;
  v174 = 0;
  v131 = v163;
  v175[0] = v163;
  *&v175[1] = *v179;
  *&v175[17] = *&v179[16];
  *&v175[33] = *&v179[32];
  *&v175[49] = *&v179[48];
  v132 = *&v179[63];
  *&v175[64] = *&v179[63];
  v133 = *v175;
  *v129 = v164;
  *(v129 + 16) = v133;
  v134 = *&v175[16];
  v135 = *&v175[32];
  v136 = *&v175[48];
  *(v129 + 80) = v132;
  *(v129 + 48) = v135;
  *(v129 + 64) = v136;
  *(v129 + 32) = v134;
  sub_1000089F8(v126, v127 + *(v128 + 64), &qword_1011B4E18);
  sub_1000089F8(&v173, &v176, &qword_1011B4E48);
  sub_1000095E8(v123, &qword_1011B4E18);
  sub_1000095E8(v124, &qword_1011B4E28);
  sub_1000095E8(v126, &qword_1011B4E18);
  v176 = v130;
  v177[0] = v131;
  *&v177[17] = *&v179[16];
  *&v177[33] = *&v179[32];
  *v178 = *&v179[48];
  *&v178[15] = *&v179[63];
  *&v177[1] = *v179;
  sub_1000095E8(&v176, &qword_1011B4E48);
  return sub_1000095E8(v125, &qword_1011B4E28);
}

uint64_t sub_100B78920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v56[-v9];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v11 = qword_10121B340;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v61 = v12;
  v62 = v14;
  sub_1000098E0();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  LODWORD(v61) = static HierarchicalShapeStyle.primary.getter();
  v20 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  v24 = v23;
  sub_10011895C(v15, v17, v19 & 1);

  static Font.callout.getter();
  v25 = Text.font(_:)();
  v59 = v26;
  v28 = v27;
  v30 = v29;

  sub_10011895C(v20, v22, v24 & 1);

  v31 = sub_100B70940();
  if (v32)
  {
    v61 = v31;
    v62 = v32;
    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    LODWORD(v61) = static HierarchicalShapeStyle.secondary.getter();
    v38 = Text.foregroundStyle<A>(_:)();
    v40 = v39;
    v57 = v28;
    v42 = v41;
    v60 = v30;
    sub_10011895C(v33, v35, v37 & 1);

    static Font.caption.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v58 = a2;
    v46 = v25;
    v48 = v47;
    v50 = v49;

    v51 = v42 & 1;
    LOBYTE(v28) = v57;
    sub_10011895C(v38, v40, v51);
    v30 = v60;

    v52 = v48 & 1;
    v25 = v46;
    a2 = v58;
    sub_10021D0C0(v43, v45, v52);
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v52 = 0;
    v50 = 0;
  }

  v53 = v28 & 1;
  v54 = v59;
  sub_10021D0C0(v25, v59, v53);

  sub_10024EA48(v43, v45, v52, v50);
  sub_10024EA04(v43, v45, v52, v50);
  LOBYTE(v61) = v53;
  *a2 = v25;
  *(a2 + 8) = v54;
  *(a2 + 16) = v53;
  *(a2 + 24) = v30;
  *(a2 + 32) = v43;
  *(a2 + 40) = v45;
  *(a2 + 48) = v52;
  *(a2 + 56) = v50;
  sub_10024EA04(v43, v45, v52, v50);
  sub_10011895C(v25, v54, v53);
}

uint64_t sub_100B78DA4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B78F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v59 = a4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v54 = v6;
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v7 - 8);
  v58 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v50 = type metadata accessor for String.LocalizationValue();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = Playlist.isOwner.getter();
  (*(v19 + 8))(v21, v18);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v23 = *(v12 + 16);
    v24 = v50;
    v23(v14, v17, v50);
    if (qword_1011B0430 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v23 = *(v12 + 16);
  v24 = v50;
  v23(v14, v17, v50);
  if (qword_1011B0430 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v25 = qword_10121B340;
  static Locale.current.getter();
  v26 = v25;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v17, v24);
  String.LocalizationValue.init(stringLiteral:)();
  v23(v14, v17, v24);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v29(v17, v24);
  v60 = v49;
  v61 = v28;
  sub_1000098E0();
  v33 = Text.init<A>(_:)();
  v49 = v34;
  v50 = v33;
  v47 = v35;
  v48 = v36;
  v60 = v30;
  v61 = v32;
  Text.init<A>(_:)();
  v46[1] = v37;
  v60 = v51;
  v61 = v52;

  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v55;
  sub_100B8D7C0(v56, v55, type metadata accessor for Collaboration.Management.View);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  sub_100B8D828(v42, v44 + v43, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v38, v40, v28 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B79638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10010FC20(&qword_1011B4AE8);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = sub_10010FC20(&unk_1011B4C30);
  sub_100B79904(a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = a1 + *(v4 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  sub_100B8D7C0(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_100B8D828(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B4AF0);
  sub_100B8F3F4();
  sub_100B8F4D8(&qword_1011B4B20, &qword_1011B4AF0, &unk_100F056A8, sub_100B8F554);
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return sub_1000095E8(v9, &qword_1011B4AE8);
}

uint64_t sub_100B79904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v239 = sub_10010FC20(&qword_1011B4C48);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v217 = &v195 - v3;
  v4 = sub_10010FC20(&qword_1011B4C50);
  __chkstk_darwin(v4 - 8);
  v200 = &v195 - v5;
  v197 = sub_10010FC20(&qword_1011B4C58);
  __chkstk_darwin(v197);
  v209 = &v195 - v6;
  v207 = sub_10010FC20(&qword_1011B4C60);
  __chkstk_darwin(v207);
  v206 = &v195 - v7;
  v204 = sub_10010FC20(&qword_1011B4C68);
  __chkstk_darwin(v204);
  v203 = &v195 - v8;
  v199 = sub_10010FC20(&qword_1011B4C70);
  __chkstk_darwin(v199);
  v202 = &v195 - v9;
  v198 = sub_10010FC20(&qword_1011B4C78);
  __chkstk_darwin(v198);
  v205 = &v195 - v10;
  v201 = sub_10010FC20(&qword_1011B4C80);
  __chkstk_darwin(v201);
  v212 = &v195 - v11;
  v211 = sub_10010FC20(&qword_1011B4C88);
  __chkstk_darwin(v211);
  v216 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v210 = &v195 - v14;
  __chkstk_darwin(v15);
  v215 = &v195 - v16;
  v196 = sub_10010FC20(&qword_1011B4C90);
  __chkstk_darwin(v196);
  v214 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = (&v195 - v19);
  v20 = sub_10010FC20(&qword_1011B4C98);
  __chkstk_darwin(v20 - 8);
  v237 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v242 = &v195 - v23;
  v235 = type metadata accessor for Playlist();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v25 - 8);
  v227 = &v195 - v26;
  v230 = type metadata accessor for Artwork.CropStyle();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v28 - 8);
  v220 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v219 = &v195 - v31;
  v231 = type metadata accessor for ArtworkImage();
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v195 - v34;
  __chkstk_darwin(v35);
  v225 = &v195 - v36;
  __chkstk_darwin(v37);
  v224 = &v195 - v38;
  v39 = type metadata accessor for ArtworkImage.ReusePolicy();
  v246 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ArtworkImage.Placeholder(0);
  v243 = *(v42 - 8);
  v43 = *(v243 + 8);
  __chkstk_darwin(v42 - 8);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v195 - v46;
  v48 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v48 - 8);
  v218 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v195 - v51;
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v232 = sub_10010FC20(&qword_1011B4CA0);
  __chkstk_darwin(v232);
  v236 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = &v195 - v58;
  v208 = a1;
  v247 = *(a1 + 8);
  sub_100B71F7C(v55);
  v59 = enum case for Playlist.Variant.regular(_:);
  v60 = type metadata accessor for Playlist.Variant();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v47, v59, v60);
  (*(v61 + 56))(v47, 0, 1, v60);
  v62 = sub_10010FC20(&unk_1011B4740);
  (*(*(v62 - 8) + 56))(v47, 0, 11, v62);
  v262 = 1;
  v260 = 1;
  v258 = 1;
  v63 = *(v246 + 104);
  v245 = v41;
  v223 = v39;
  v63(v41, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v39);
  v221 = v47;
  sub_100B8D7C0(v47, v44, type metadata accessor for ArtworkImage.Placeholder);
  v64 = (v243[80] + 16) & ~v243[80];
  v65 = (v43 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_100B8D828(v44, v66 + v64, type metadata accessor for ArtworkImage.Placeholder);
  v67 = v66 + v65;
  *v67 = 0;
  *(v67 + 8) = v262;
  *(v67 + 9) = *v261;
  *(v67 + 12) = *&v261[3];
  *(v67 + 16) = 0;
  *(v67 + 24) = v260;
  *(v67 + 25) = *v259;
  *(v67 + 28) = *&v259[3];
  *(v67 + 32) = 0;
  *(v67 + 40) = v258;
  *(v67 + 41) = 2;
  v243 = v55;
  sub_1000089F8(v55, v52, &qword_1011B5930);
  v68 = type metadata accessor for ArtworkImage.ViewModel(0);
  v69 = *(*(v68 - 8) + 48);
  if (v69(v52, 1, v68) == 1)
  {
    sub_1000095E8(v52, &qword_1011B5930);
    v70 = type metadata accessor for Artwork();
    v71 = v219;
    (*(*(v70 - 8) + 56))(v219, 1, 1, v70);
  }

  else
  {
    v72 = type metadata accessor for Artwork();
    v73 = *(v72 - 8);
    v71 = v219;
    (*(v73 + 16))(v219, v52, v72);
    sub_100B8DCA8(v52, type metadata accessor for ArtworkImage.ViewModel);
    (*(v73 + 56))(v71, 0, 1, v72);
  }

  sub_1000089F8(v71, v220, &unk_1011B55F0);
  v74 = v224;
  ArtworkImage.init(_:)();
  sub_1000095E8(v71, &unk_1011B55F0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v75 = v218;
  sub_1000089F8(v243, v218, &qword_1011B5930);
  if (v69(v75, 1, v68) == 1)
  {
    sub_1000095E8(v75, &qword_1011B5930);
    v76 = v228;
    v77 = v227;
    v78 = v230;
    (*(v228 + 56))(v227, 1, 1, v230);
    v79 = v241;
  }

  else
  {
    v77 = v227;
    sub_1000089F8(v75 + *(v68 + 20), v227, &qword_1011B4720);
    sub_100B8DCA8(v75, type metadata accessor for ArtworkImage.ViewModel);
    v76 = v228;
    v78 = v230;
    v80 = (*(v228 + 48))(v77, 1, v230);
    v79 = v241;
    if (v80 != 1)
    {
      v81 = v226;
      (*(v76 + 32))(v226, v77, v78);
      goto LABEL_12;
    }
  }

  v81 = v226;
  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v82 = sub_1000060E4(v78, static Artwork.CropStyle.fallback);
  (*(v76 + 16))(v81, v82, v78);
  if ((*(v76 + 48))(v77, 1, v78) != 1)
  {
    sub_1000095E8(v77, &qword_1011B4720);
  }

LABEL_12:
  v83 = v222;
  v84 = v244;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v76 + 8))(v81, v78);
  v85 = *(v229 + 8);
  v86 = v231;
  v85(v84, v231);
  v87 = v225;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v85(v83, v86);
  sub_10010FC20(&qword_1011B33A8);
  sub_100B5A07C();
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v85(v87, v86);
  v85(v74, v86);
  (*(v246 + 8))(v245, v223);
  sub_100B8DCA8(v221, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v243, &qword_1011B5930);
  if (qword_1011B0690 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v88 = (v79 + *(sub_10010FC20(&qword_1011B4CA8) + 36));
  v89 = v249;
  *v88 = v248;
  v88[1] = v89;
  v88[2] = v250;
  if (qword_1011B05B0 != -1)
  {
    swift_once();
  }

  v90 = static Corner.small;
  v91 = *algn_10121B6D8;
  v92 = byte_10121B6E0;
  v93 = v79 + *(sub_10010FC20(&qword_1011B4CB0) + 36);
  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = v92;
  if (qword_1011B05D0 != -1)
  {
    swift_once();
  }

  v94 = static Border.artwork;
  v95 = qword_10121B738;
  v96 = byte_10121B740;
  v97 = v79 + *(sub_10010FC20(&qword_1011B4CB8) + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  *(v97 + 16) = v96;
  *(v97 + 24) = v90;
  *(v97 + 32) = v91;
  *(v97 + 40) = v92;

  static Color.black.getter();
  v98 = Color.opacity(_:)();

  v99 = v79 + *(v232 + 36);
  *v99 = v98;
  *(v99 + 8) = xmmword_100EFDBE0;
  *(v99 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v233;
  static Published.subscript.getter();

  v101 = Playlist.name.getter();
  v103 = v102;
  (*(v234 + 8))(v100, v235);
  *&v251 = v101;
  *(&v251 + 1) = v103;
  sub_1000098E0();
  v104 = Text.init<A>(_:)();
  v106 = v105;
  v108 = v107;
  LODWORD(v251) = static HierarchicalShapeStyle.primary.getter();
  v109 = Text.foregroundStyle<A>(_:)();
  v111 = v110;
  v113 = v112;
  sub_10011895C(v104, v106, v108 & 1);

  if (qword_1011B0640 != -1)
  {
    swift_once();
  }

  v114 = Text.font(_:)();
  v116 = v115;
  v118 = v117;

  sub_10011895C(v109, v111, v113 & 1);

  static Font.Weight.semibold.getter();
  v245 = Text.fontWeight(_:)();
  v244 = v119;
  LODWORD(v121) = v120;
  v246 = v122;
  sub_10011895C(v114, v116, v118 & 1);

  v123 = sub_100B70664();
  v124 = 1;
  if (v123)
  {
    v125 = static VerticalAlignment.bottom.getter();
    v126 = v213;
    *v213 = v125;
    *(v126 + 8) = 0x4020000000000000;
    *(v126 + 16) = 0;
    v127 = sub_10010FC20(&qword_1011B4CC8);
    v128 = v208;
    sub_100B7B51C(v208, (v126 + *(v127 + 44)));
    *(v126 + *(sub_10010FC20(&qword_1011B4CD0) + 36)) = 256;
    v129 = static Edge.Set.top.getter();
    if (qword_1011B0678 != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v121;
    EdgeInsets.init(_all:)();
    v130 = v126 + *(v196 + 36);
    *v130 = v129;
    *(v130 + 8) = v131;
    *(v130 + 16) = v132;
    *(v130 + 24) = v133;
    *(v130 + 32) = v134;
    *(v130 + 40) = 0;
    v135 = v200;
    sub_100B7C618(v128, v200);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v136 = v209;
    sub_10003D17C(v135, v209, &qword_1011B4C50);
    v137 = (v136 + *(v197 + 36));
    v138 = v256;
    v137[4] = v255;
    v137[5] = v138;
    v137[6] = v257;
    v139 = v252;
    *v137 = v251;
    v137[1] = v139;
    v140 = v254;
    v137[2] = v253;
    v137[3] = v140;
    KeyPath = swift_getKeyPath();
    v142 = v136;
    v143 = v206;
    sub_10003D17C(v142, v206, &qword_1011B4C58);
    v144 = v143 + *(v207 + 36);
    *v144 = KeyPath;
    *(v144 + 8) = 0;
    *(v144 + 16) = 1;
    v145 = v143;
    v146 = v203;
    sub_10003D17C(v145, v203, &qword_1011B4C60);
    *(v146 + *(v204 + 36)) = 256;
    LODWORD(KeyPath) = static HierarchicalShapeStyle.secondary.getter();
    v147 = v146;
    v148 = v202;
    sub_10003D17C(v147, v202, &qword_1011B4C68);
    *(v148 + *(v199 + 36)) = KeyPath;
    v149 = static Font.footnote.getter();
    v150 = swift_getKeyPath();
    v151 = v148;
    v152 = v205;
    sub_10003D17C(v151, v205, &qword_1011B4C70);
    v153 = (v152 + *(v198 + 36));
    *v153 = v150;
    v153[1] = v149;
    LOBYTE(v149) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v162 = v152;
    v163 = v212;
    sub_10003D17C(v162, v212, &qword_1011B4C78);
    v164 = v163 + *(v201 + 36);
    *v164 = v149;
    *(v164 + 8) = v155;
    *(v164 + 16) = v157;
    *(v164 + 24) = v159;
    *(v164 + 32) = v161;
    *(v164 + 40) = 0;
    v165 = static Edge.Set.top.getter();
    if (qword_1011B0680 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v163;
    v175 = v210;
    sub_10003D17C(v174, v210, &qword_1011B4C80);
    v176 = v175 + *(v211 + 36);
    *v176 = v165;
    *(v176 + 8) = v167;
    *(v176 + 16) = v169;
    *(v176 + 24) = v171;
    *(v176 + 32) = v173;
    *(v176 + 40) = 0;
    v177 = v215;
    sub_10003D17C(v175, v215, &qword_1011B4C88);
    v178 = v214;
    sub_1000089F8(v126, v214, &qword_1011B4C90);
    v179 = v216;
    sub_1000089F8(v177, v216, &qword_1011B4C88);
    v121 = v126;
    v180 = v217;
    sub_1000089F8(v178, v217, &qword_1011B4C90);
    v181 = sub_10010FC20(&qword_1011B4CD8);
    sub_1000089F8(v179, v180 + *(v181 + 48), &qword_1011B4C88);
    v182 = v180 + *(v181 + 64);
    sub_1000095E8(v177, &qword_1011B4C88);
    sub_1000095E8(v121, &qword_1011B4C90);
    *v182 = 0x3FF0000000000000;
    *(v182 + 8) = 0;
    sub_1000095E8(v179, &qword_1011B4C88);
    sub_1000095E8(v178, &qword_1011B4C90);
    sub_10003D17C(v180, v242, &qword_1011B4C48);
    v124 = 0;
    v79 = v241;
    LOBYTE(v121) = v247;
  }

  v183 = v242;
  (*(v238 + 56))(v242, v124, 1, v239);
  v247 = static VerticalAlignment.center.getter();
  v184 = v236;
  sub_1000089F8(v79, v236, &qword_1011B4CA0);
  v185 = v237;
  sub_1000089F8(v183, v237, &qword_1011B4C98);
  v186 = v240;
  sub_1000089F8(v184, v240, &qword_1011B4CA0);
  v187 = v79;
  v188 = sub_10010FC20(&qword_1011B4CC0);
  v189 = v186 + v188[12];
  v190 = v245;
  v191 = v244;
  *v189 = v245;
  *(v189 + 8) = v191;
  v192 = v121 & 1;
  *(v189 + 16) = v192;
  *(v189 + 24) = v246;
  sub_1000089F8(v185, v186 + v188[16], &qword_1011B4C98);
  v193 = v186 + v188[20];
  sub_10021D0C0(v190, v191, v192);

  sub_1000095E8(v183, &qword_1011B4C98);
  sub_1000095E8(v187, &qword_1011B4CA0);
  *v193 = v247;
  *(v193 + 8) = 0;
  *(v193 + 16) = 1;
  *(v193 + 24) = 0;
  *(v193 + 32) = 1;
  sub_1000095E8(v185, &qword_1011B4C98);
  sub_10011895C(v190, v191, v192);

  return sub_1000095E8(v184, &qword_1011B4CA0);
}

uint64_t sub_100B7B51C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v104 = sub_10010FC20(&qword_1011B4D40);
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v87 - v5;
  v6 = sub_10010FC20(&qword_1011B4D48);
  __chkstk_darwin(v6 - 8);
  v109 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v87 - v9;
  v10 = sub_10010FC20(&qword_1011B0C20);
  __chkstk_darwin(v10 - 8);
  v96 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v87 - v13;
  v15 = type metadata accessor for Collaboration.Management.View(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v18;
  v19 = (v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin(v20);
  v95 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v102 = sub_10010FC20(&qword_1011B4D50);
  __chkstk_darwin(v102);
  v94 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = v87 - v27;
  v28 = sub_10010FC20(&qword_1011B4D58);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v105 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = v87 - v31;
  v101 = type metadata accessor for Collaboration.Management.View;
  sub_100B8D7C0(a1, v19, type metadata accessor for Collaboration.Management.View);
  v32 = *(v17 + 80);
  v33 = swift_allocObject();
  v100 = type metadata accessor for Collaboration.Management.View;
  sub_100B8D828(v19, v33 + ((v32 + 16) & ~v32), type metadata accessor for Collaboration.Management.View);
  *&v24[*(v20 + 24)] = swift_getKeyPath();
  v91 = sub_10010FC20(&qword_1011B4820);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v24 = 0;
  *(v24 + 1) = sub_100B903A0;
  *(v24 + 2) = v33;
  v93 = v20;
  v35 = &v24[*(v20 + 28)];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = a1;
  v90 = *(a1 + 8);
  sub_100B71CC8(v14);
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v89 = v37;
  v88 = v39;
  v87[1] = v38 + 48;
  v40 = (v39)(v14, 1) == 1;
  sub_1000095E8(v14, &qword_1011B0C20);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v112;
  sub_100B8D828(v24, v112, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v44 = v102;
  v45 = (v43 + *(v102 + 36));
  *v45 = v41;
  v45[1] = sub_100239940;
  v45[2] = v42;
  v46 = v36 + *(v16 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);
  v114 = v47;
  v115 = v48;
  sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  v97 = v36;
  sub_100B8D7C0(v36, v19, v101);
  v92 = v32;
  v49 = (v32 + 16) & ~v32;
  v50 = swift_allocObject();
  v101 = v19;
  sub_100B8D828(v19, v50 + v49, v100);
  sub_10010FC20(&qword_1011B4D60);
  sub_100B9043C();
  v51 = v104;
  sub_100B8F4D8(&qword_1011B4D88, &qword_1011B4D60, &unk_100F05910, sub_100B8D4C8);
  v52 = v44;
  v53 = v112;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v54 = 1;
  v55 = v103;

  sub_1000095E8(v53, &qword_1011B4D50);
  v56 = [objc_opt_self() currentTraitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 != 6)
  {
    v58 = v101;
    sub_100B8D7C0(v97, v101, type metadata accessor for Collaboration.Management.View);
    v59 = swift_allocObject();
    sub_100B8D828(v58, v59 + v49, type metadata accessor for Collaboration.Management.View);
    v60 = swift_getKeyPath();
    v61 = v93;
    v62 = v95;
    *&v95[*(v93 + 24)] = v60;
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    *v62 = 1;
    *(v62 + 8) = sub_100B90524;
    *(v62 + 16) = v59;
    v64 = v62 + *(v61 + 28);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v96;
    sub_100B71CC8(v96);
    v66 = v88(v65, 1, v89) == 1;
    sub_1000095E8(v65, &qword_1011B0C20);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v94;
    sub_100B8D828(v62, v94, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v70 = (v69 + *(v52 + 36));
    *v70 = v67;
    v70[1] = sub_1005024EC;
    v70[2] = v68;
    v71 = v69;
    v72 = v99;
    sub_10003D17C(v71, v99, &qword_1011B4D50);
    v73 = (v72 + *(v51 + 36));
    *v73 = sub_100B7C5F0;
    v73[1] = 0;
    v74 = v72;
    v75 = v98;
    sub_10003D17C(v74, v98, &qword_1011B4D40);
    sub_10003D17C(v75, v55, &qword_1011B4D40);
    v54 = 0;
  }

  v76 = v55;
  (*(v108 + 56))(v55, v54, 1, v51);
  v78 = v105;
  v77 = v106;
  v79 = *(v106 + 16);
  v80 = v113;
  v81 = v107;
  v79(v105, v113, v107);
  v82 = v109;
  sub_1000089F8(v55, v109, &qword_1011B4D48);
  v83 = v110;
  v79(v110, v78, v81);
  v84 = sub_10010FC20(&qword_1011B4D90);
  sub_1000089F8(v82, &v83[*(v84 + 48)], &qword_1011B4D48);
  sub_1000095E8(v76, &qword_1011B4D48);
  v85 = *(v77 + 8);
  v85(v80, v81);
  sub_1000095E8(v82, &qword_1011B4D48);
  return (v85)(v78, v81);
}

uint64_t sub_100B7BFF8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B7C1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B0C20);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71CC8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1000095E8(v8, &qword_1011B0C20);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v2;
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v3 + 8))(v5, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v14;
  return result;
}

uint64_t sub_100B7C448(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B7C618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B4CE0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_1011B4CE8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_1011B4CF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v43 == 1)
  {
    *v13 = static VerticalAlignment.center.getter();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v14 = sub_10010FC20(&qword_1011B4D30);
    sub_100B7CB30(&v13[*(v14 + 44)]);
    sub_1000089F8(v13, v10, &qword_1011B4CF0);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_1011B4D08, &qword_1011B4CF0);
    sub_100B9017C();
    v15 = v42;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v13, &qword_1011B4CF0);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v17 = v42;
    sub_100B71154();
    if (v18)
    {
      LocalizedStringKey.init(_:)();
      v19 = Text.init(_:tableName:bundle:comment:)();
      v34 = v20;
      v35 = v19;
      v33 = v21;
      v36 = v22;
      v32 = static Color.accentColor.getter();
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = v41;
      sub_100B8D7C0(v40, v41, type metadata accessor for Collaboration.Management.View);
      v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v27 = swift_allocObject();
      sub_100B8D828(v25, v27 + v26, type metadata accessor for Collaboration.Management.View);
      v28 = &v7[*(v5 + 36)];
      sub_10010FC20(&qword_1011B4D00);
      OpenURLAction.init(handler:)();
      *v28 = v24;
      v29 = v34;
      *v7 = v35;
      *(v7 + 1) = v29;
      v7[16] = v33 & 1;
      *(v7 + 3) = v36;
      *(v7 + 4) = KeyPath;
      *(v7 + 5) = v32;
      sub_1000089F8(v7, v10, &qword_1011B4CE0);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_1011B4D08, &qword_1011B4CF0);
      sub_100B9017C();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v7, &qword_1011B4CE0);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  v30 = sub_10010FC20(&qword_1011B4CF8);
  return (*(*(v30 - 8) + 56))(v17, v16, 1, v30);
}

uint64_t sub_100B7CB30@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_10010FC20(&qword_1011B47D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  ProgressView<>.init<>()();
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v16 = qword_10121B340;
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  (*(v3 + 8))(v8, v2);
  v36 = v17;
  v37 = v19;
  sub_1000098E0();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v10 + 16);
  v27(v12, v15, v9);
  v34 = v15;
  v28 = v12;
  v29 = v35;
  v27(v35, v28, v9);
  v30 = &v29[*(sub_10010FC20(&qword_1011B4D38) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v30[16] = v24 & 1;
  *(v30 + 3) = v26;
  sub_10021D0C0(v20, v22, v24 & 1);
  v31 = *(v10 + 8);

  v31(v34, v9);
  sub_10011895C(v20, v22, v24 & 1);

  return (v31)(v28, v9);
}

uint64_t sub_100B7CF10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 1;

  static Published.subscript.setter();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_100B284E0(0, 0, v5, &unk_100F05858, v8);

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100B7D07C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011B0C20);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71CC8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_1000095E8(v4, &qword_1011B0C20);
    v10 = 0;
    v11 = 0;
LABEL_6:
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = URL.dataRepresentation.getter();
  v14 = QRCode.init(data:errorCorrectionLevel:)(v12, v13, 76, &v28);
  v15 = *(&v28 + 1);
  v16 = v29;
  v17 = v30;
  result = (*(v6 + 8))(v8, v5, v14);
  v11 = v30;
  if (!v30)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v31;
  v10 = v29;
  v27 = v28;
  sub_10002BC44(v15, v16);
  v19 = v17;
  v20 = static SafeAreaRegions.all.getter();
  v21 = static Edge.Set.all.getter();
  v22 = static Alignment.center.getter();
  v24 = v23;
  result = sub_1000095E8(&v28, &qword_1011B4C40);
  v25 = v27;
  v26 = v21;
LABEL_7:
  *a1 = v25;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v26;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  return result;
}

uint64_t sub_100B7D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011B4540);
  __chkstk_darwin(v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = type metadata accessor for Playlist.Collaborator();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3, a1, v12);
  v14 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v16 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v16[9]) = KeyPath;
  sub_10010FC20(&unk_1011B08A0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[5]) = v14;
  v17 = a3 + v16[6];
  v21[15] = 0;

  State.init(wrappedValue:)();
  v18 = v22;
  *v17 = v21[16];
  *(v17 + 8) = v18;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1000089F8(v11, v8, &unk_1011B4540);
  State.init(wrappedValue:)();
  sub_1000095E8(v11, &unk_1011B4540);
  v19 = v16[8];
  *(a3 + v19) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100B7D518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Collaboration.Management.View(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_10010FC20(&qword_1011B4BE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_10010FC20(&qword_1011B4BD8);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_100B8D7C0(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_100B8D828(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B4BF8);
  sub_100B8F990();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  v21 = sub_100020674(&qword_1011B4BE8, &qword_1011B4BE0);
  v22 = sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle);
  v23 = v32;
  View.buttonStyle<A>(_:)();
  v24 = v23;
  (*(v33 + 8))(v6, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v31;
  v26 = v31 + *(v8 + 56);
  v27 = *v26;
  v28 = *(v26 + 8);
  v42 = v27;
  v43 = v28;
  sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  v37 = v25;
  v38 = v11;
  v39 = v24;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  View.alert(isPresented:content:)();

  return (*(v35 + 8))(v18, v29);
}

uint64_t sub_100B7D9B0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_100B7DB58@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v10 = qword_10121B340;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *&v27[0] = v11;
  *(&v27[0] + 1) = v13;
  sub_1000098E0();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21 = v18 & 1;
  v28 = v18 & 1;
  v22 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  v24 = v27[5];
  *(a1 + 96) = v27[4];
  *(a1 + 112) = v24;
  *(a1 + 128) = v27[6];
  v25 = v27[1];
  *(a1 + 32) = v27[0];
  *(a1 + 48) = v25;
  result = v27[3];
  *(a1 + 64) = v27[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v22;
  return result;
}

uint64_t sub_100B7DE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v10 + 16);
  v48[4] = v10 + 16;
  v49 = v16;
  v16(v12, v15, v9);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v17 = qword_10121B340;
  v18 = qword_10121B340;
  v63 = v17;
  v19 = v18;
  static Locale.current.getter();
  v20 = v19;
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v15, v9);
  v48[1] = v10 + 8;
  v64 = v21;
  v65 = v23;
  v48[0] = sub_1000098E0();
  v25 = Text.init<A>(_:)();
  v54 = v26;
  v55 = v25;
  v52 = v27;
  v53 = v28;
  String.LocalizationValue.init(stringLiteral:)();
  v29 = v49;
  v49(v12, v15, v9);
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v24(v15, v9);
  v64 = v30;
  v65 = v32;
  v51 = Text.init<A>(_:)();
  v48[3] = v33;
  v50 = v34;
  v48[2] = v35 & 1;
  String.LocalizationValue.init(stringLiteral:)();
  v29(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v24(v15, v9);
  v64 = v36;
  v65 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_100B8D7C0(v58, v59, type metadata accessor for Collaboration.Management.View);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_100B8D828(v44, v46 + v45, type metadata accessor for Collaboration.Management.View);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v39, v41, v43 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B7E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *(a1 + 8);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_100B284E0(0, 0, v11, a3, v14);

  type metadata accessor for Collaboration.Management.View(0);
  sub_100B4D18C(v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B7E57C(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100B8D7C0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100B8D828(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for Collaboration.Management.View);
  sub_10010FC20(&qword_1011B3CB0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100020674(&qword_1011B4C18, &qword_1011B3CB0);
  sub_100B8C798(&qword_1011B4BB0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_100B8C798(&qword_1011B4C20, &type metadata accessor for Playlist.Collaborator);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100B7E7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *(v23 + 16);

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v23 = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v13._object = 0x8000000100E66060;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v14 = qword_10121B340;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v4 + 8))(v9, v3);
  v23 = v15;
  v24 = v17;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_100B7EAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Collaboration.Management.View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v13 = *(sub_10010FC20(&qword_1011B4C28) + 44);
  sub_100B8D7C0(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_100B8D828(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for Collaboration.Management.View);
  sub_100B8D7C0(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_100B8D828(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for Collaboration.Management.View);
  Binding.init(get:set:)();
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100B7ED2C@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_100B7EDB4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_1011B62E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = (v9 & 1) == 0;
  v15[15] = v11;

  static Published.subscript.setter();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;

  sub_100B287E0(0, 0, v8, &unk_100F05758, v13);
}

uint64_t sub_100B7EF24@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v10 = qword_10121B340;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

__n128 sub_100B7F134@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v43 & 1) == 0)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v23 = qword_10121B340;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    sub_1000098E0();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v27 & 1;
    v41.n128_u64[0] = v27 & 1;
    v41.n128_u64[1] = v28;
    LOBYTE(v42) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *(v43 + 16);

  v11 = (v4 + 16);
  if (v10)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v11)(v6, v9, v3);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v12 = qword_10121B340;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    *&v43 = v13;
    *(&v43 + 1) = v15;
    sub_1000098E0();
    v16 = Text.init<A>(_:)();
    v18 = v16;
    v19 = v17;
    v21 = v20 & 1;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v41.n128_u64[0] = v20 & 1;
    v41.n128_u64[1] = v22;
    LOBYTE(v42) = 1;
LABEL_9:
    sub_10021D0C0(v16, v17, v21);

    _ConditionalContent<>.init(storage:)();
    v40 = v43;
    v41 = v44;
    v42 = v45;
    sub_10010FC20(&qword_1011B2D40);
    sub_100B4BD94();
    _ConditionalContent<>.init(storage:)();
    sub_10011895C(v18, v19, v21);

    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*v11)(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v32 = qword_10121B340;
  static Locale.current.getter();
  v33 = String.init(localized:table:bundle:locale:comment:)();
  v35 = v34;
  (*(v4 + 8))(v9, v3);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  sub_1000098E0();
  *&v40 = Text.init<A>(_:)();
  *(&v40 + 1) = v36;
  v41.n128_u64[0] = v37 & 1;
  v41.n128_u64[1] = v38;
  v42 = 256;
  sub_10010FC20(&qword_1011B2D40);
  sub_100B4BD94();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  result = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v43;
  *(a1 + 16) = result;
  *(a1 + 32) = v30;
  *(a1 + 33) = v31;
  return result;
}

uint64_t sub_100B7F6F8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10010FC20(&qword_1011B3DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v9 = a1;
  sub_10010FC20(&qword_1011B4A78);
  sub_100020674(&qword_1011B4A80, &qword_1011B4A78);
  ToolbarItem<>.init(placement:content:)();
  sub_100020674(&qword_1011B3DC8, &qword_1011B3DC0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100B7F8E4(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  static ButtonRole.close.getter();
  sub_100B8D7C0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100B8D828(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Collaboration.Management.View);
  return Button<>.init(role:action:)();
}

uint64_t sub_100B7FA60(uint64_t a1)
{
  v16 = type metadata accessor for EnvironmentValues();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011B0890);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  sub_1000089F8(a1 + *(v12 + 20), v7, &unk_1011B0890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

void sub_100B7FCE8(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_100B4D18C(v6);
    DismissAction.callAsFunction()();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_100B7FDDC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B3BF0 = v1 == 6;
}

uint64_t sub_100B7FE74()
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    result = static Font.largeTitle.getter();
    v1 = result;
  }

  else
  {
    static Font.title2.getter();
    v1 = Font.bold()();
  }

  qword_1011B3C00 = v1;
  return result;
}

uint64_t sub_100B7FEFC()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_1011B3BF0)
  {
    v0 = 68.0;
  }

  qword_1011B3C08 = *&v0;
  return result;
}

uint64_t sub_100B80008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_1011B0638 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_1011B3BF0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_100B80098()
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    result = static Font.Weight.semibold.getter();
  }

  else
  {
    result = static Font.Weight.regular.getter();
  }

  qword_1011B3C28 = v1;
  return result;
}

uint64_t sub_100B80100()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_1011B3BF0)
  {
    v0 = 0.0;
  }

  qword_1011B3C30 = *&v0;
  return result;
}

uint64_t sub_100B80168()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_1011B3BF0)
  {
    v0 = 0.0;
  }

  qword_1011B3C38 = *&v0;
  return result;
}

uint64_t sub_100B801D0()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_1011B3BF0)
  {
    v0 = 44.0;
  }

  qword_1011B3C40 = *&v0;
  return result;
}

uint64_t sub_100B80240()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_1011B3BF0)
  {
    v0 = 169.0;
  }

  qword_1011B3C48 = *&v0;
  return result;
}

uint64_t sub_100B802B4()
{
  if (qword_1011B0638 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_1011B3BF0)
  {
    v0 = 48.0;
  }

  qword_1011B3C50 = *&v0;
  return result;
}

uint64_t sub_100B80324()
{
  if (qword_1011B0638 != -1)
  {
    swift_once();
  }

  if (byte_1011B3BF0 == 1)
  {
    result = static Color.accentColor.getter();
  }

  else
  {
    if (qword_1011B04D0 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = Color.init(_:)();
  }

  qword_1011B3C58 = result;
  return result;
}

uint64_t sub_100B803CC()
{
  v0 = type metadata accessor for DynamicTypeSize();
  sub_100006080(v0, qword_1011B3C60);
  v1 = sub_1000060E4(v0, qword_1011B3C60);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100B80454()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011B4888);
  sub_100006080(v4, qword_1011B3C78);
  v5 = sub_1000060E4(v4, qword_1011B3C78);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v0, qword_1011B3C60);
  (*(v1 + 16))(v3, v6, v0);
  sub_100B8C798(&unk_1011B48D0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100B80624@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AccessibilityTraits();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B4658);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v30 = sub_10010FC20(&qword_1011B4660);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v32 = sub_10010FC20(&qword_1011B4668);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - v10;
  v34 = sub_10010FC20(&qword_1011B4670);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v29 - v12;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_10010FC20(&qword_1011B4678);
  sub_100B80C44(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_10010FC20(&qword_1011B4680);
  v15 = sub_100B8D5F0();
  v16 = sub_100B8F4D8(&unk_1011B46B0, &qword_1011B4680, &unk_100F05048, sub_100B8D6D4);
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_1000095E8(v7, &qword_1011B4658);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_10010FC20(&qword_1011B2DD8);
  State.projectedValue.getter();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  View.alert(isPresented:content:)();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  static AccessibilityChildBehavior.combine.getter();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  View.accessibilityElement(children:)();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  static AccessibilityTraits.isButton.getter();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  View.accessibilityAddTraits(_:)();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_100B80C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = v4;
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10010FC20(&qword_1011B4700);
  __chkstk_darwin(v129);
  v132 = &v124 - v5;
  v131 = sub_10010FC20(&qword_1011B4708);
  __chkstk_darwin(v131);
  v128 = &v124 - v6;
  v7 = sub_10010FC20(&qword_1011B4710);
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v130 = &v124 - v8;
  v9 = type metadata accessor for Playlist();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011B4718);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v124 - v14;
  v15 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v15 - 8);
  v143 = &v124 - v16;
  v17 = type metadata accessor for Artwork.CropStyle();
  v144 = *(v17 - 8);
  v145 = v17;
  __chkstk_darwin(v17);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v19 - 8);
  v138 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v124 - v22;
  v23 = type metadata accessor for ArtworkImage();
  v146 = *(v23 - 8);
  v147 = v23;
  __chkstk_darwin(v23);
  v149 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v139 = &v124 - v26;
  __chkstk_darwin(v27);
  v141 = &v124 - v28;
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v152 = type metadata accessor for ArtworkImage.ReusePolicy();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v165 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ArtworkImage.Placeholder(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  __chkstk_darwin(v32 - 8);
  v134 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v36 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v36 - 8);
  v136 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v124 - v39;
  __chkstk_darwin(v40);
  v164 = &v124 - v41;
  v167 = sub_10010FC20(&qword_1011B4728);
  v153 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = &v124 - v42;
  v43 = type metadata accessor for DynamicTypeSize();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v124 - v48;
  v50 = sub_10010FC20(&unk_1011B4730);
  __chkstk_darwin(v50 - 8);
  v158 = &v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v124 - v53;
  v157 = v3;
  v55 = a1;
  sub_100B4CD34(v49);
  if (qword_1011B06A8 != -1)
  {
    swift_once();
  }

  v56 = sub_1000060E4(v43, qword_1011B3C60);
  (*(v44 + 16))(v46, v56, v43);
  sub_100B8C798(&qword_1011B1658, &type metadata accessor for DynamicTypeSize);
  v57 = dispatch thunk of static Comparable.< infix(_:_:)();
  v58 = *(v44 + 8);
  v58(v46, v43);
  v58(v49, v43);
  v59 = 1;
  v60 = 1;
  v61 = v55;
  v62 = v54;
  v63 = v167;
  v166 = v54;
  if ((v57 & 1) == 0)
  {
    v64 = v164;
    sub_100B82320(v164);
    v65 = sub_10010FC20(&unk_1011B4740);
    v66 = v148;
    (*(*(v65 - 8) + 56))(v148, 8, 11, v65);
    v190 = 1;
    v188 = 1;
    v186 = 1;
    (*(v150 + 104))(v165, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v152);
    v67 = v134;
    sub_100B8D7C0(v66, v134, type metadata accessor for ArtworkImage.Placeholder);
    v68 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v69 = swift_allocObject();
    sub_100B8D828(v67, v69 + v68, type metadata accessor for ArtworkImage.Placeholder);
    v134 = v69;
    v70 = v69 + ((v33 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v70 = 0;
    *(v70 + 8) = v190;
    *(v70 + 9) = *v189;
    *(v70 + 12) = *&v189[3];
    *(v70 + 16) = 0;
    *(v70 + 24) = v188;
    *(v70 + 25) = *v187;
    *(v70 + 28) = *&v187[3];
    *(v70 + 32) = 0;
    *(v70 + 40) = v186;
    *(v70 + 41) = 2;
    v71 = v135;
    sub_1000089F8(v64, v135, &qword_1011B5930);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v71, 1, v72) == 1)
    {
      sub_1000095E8(v71, &qword_1011B5930);
      v74 = type metadata accessor for Artwork();
      v75 = v137;
      (*(*(v74 - 8) + 56))(v137, 1, 1, v74);
    }

    else
    {
      v76 = type metadata accessor for Artwork();
      v77 = *(v76 - 8);
      v75 = v137;
      (*(v77 + 16))(v137, v71, v76);
      sub_100B8DCA8(v71, type metadata accessor for ArtworkImage.ViewModel);
      (*(v77 + 56))(v75, 0, 1, v76);
    }

    sub_1000089F8(v75, v138, &unk_1011B55F0);
    ArtworkImage.init(_:)();
    sub_1000095E8(v75, &unk_1011B55F0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v78 = v136;
    sub_1000089F8(v164, v136, &qword_1011B5930);
    v79 = v73(v78, 1, v72);
    v124 = v61;
    if (v79 == 1)
    {
      sub_1000095E8(v78, &qword_1011B5930);
      v80 = v143;
      v81 = v144;
      v82 = v145;
      (*(v144 + 56))(v143, 1, 1, v145);
      v83 = v142;
      v59 = 1;
    }

    else
    {
      v80 = v143;
      sub_1000089F8(v78 + *(v72 + 20), v143, &qword_1011B4720);
      sub_100B8DCA8(v78, type metadata accessor for ArtworkImage.ViewModel);
      v81 = v144;
      v82 = v145;
      v84 = (*(v144 + 48))(v80, 1, v145);
      v83 = v142;
      v59 = 1;
      if (v84 != 1)
      {
        (*(v81 + 32))(v142, v80, v82);
LABEL_15:
        v86 = v139;
        v87 = v149;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v81 + 8))(v83, v82);
        v88 = v147;
        v89 = *(v146 + 8);
        v89(v87, v147);
        v90 = v141;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v89(v86, v88);
        sub_10010FC20(&qword_1011B33A8);
        sub_100B5A07C();
        v91 = v140;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v89(v90, v88);
        v89(v151, v88);
        (*(v150 + 8))(v165, v152);
        sub_100B8DCA8(v148, type metadata accessor for ArtworkImage.Placeholder);
        sub_1000095E8(v164, &qword_1011B5930);
        v92 = v91 + *(sub_10010FC20(&qword_1011B47A0) + 36);
        *v92 = 0;
        *(v92 + 8) = 0;
        *(v92 + 16) = 2;
        if (qword_1011B0698 != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v93 = (v91 + *(sub_10010FC20(&qword_1011B47A8) + 36));
        v94 = v181;
        *v93 = v180;
        v93[1] = v94;
        v93[2] = v182;
        v62 = v166;
        v63 = v167;
        v95 = v91 + *(v167 + 36);
        *v95 = 0;
        *(v95 + 8) = 257;
        sub_10003D17C(v91, v62, &qword_1011B4728);
        v60 = 0;
        v61 = v124;
        goto LABEL_18;
      }
    }

    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v85 = sub_1000060E4(v82, static Artwork.CropStyle.fallback);
    (*(v81 + 16))(v83, v85, v82);
    if ((*(v81 + 48))(v80, 1, v82) != 1)
    {
      sub_1000095E8(v80, &qword_1011B4720);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v153 + 56))(v62, v60, 1, v63);
  v167 = static HorizontalAlignment.leading.getter();
  LOBYTE(v170[0]) = 1;
  sub_100B827BC(v61, v178);
  *&v177[23] = v178[1];
  *&v177[39] = v178[2];
  *&v177[55] = v178[3];
  v177[71] = v179;
  *&v177[7] = v178[0];
  LODWORD(v165) = LOBYTE(v170[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v154;
  static Published.subscript.getter();

  v97 = Playlist.isOwner.getter();
  (*(v155 + 8))(v96, v156);
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = Playlist.Collaborator.isPending.getter();
    if (v98 != 2 && (v98 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v99 = sub_100BE4310(v61, v170[0]);

      if (v99)
      {
        v100 = v128;
        ProgressView<>.init<>()();
        if (qword_1011B0688 != -1)
        {
          swift_once();
        }

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v101 = (v100 + *(v131 + 36));
        v102 = v184;
        *v101 = v183;
        v101[1] = v102;
        v101[2] = v185;
        sub_1000089F8(v100, v132, &qword_1011B4708);
        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_1011B47C0);
        sub_100B8DBF0();
        sub_100020674(&unk_1011B47E0, &qword_1011B47C0);
        v103 = v130;
        _ConditionalContent<>.init(storage:)();
        sub_1000095E8(v100, &qword_1011B4708);
      }

      else
      {
        v104 = v127;
        sub_100B8D7C0(v61, v127, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v105 = (*(v125 + 80) + 16) & ~*(v125 + 80);
        v106 = swift_allocObject();
        sub_100B8D828(v104, v106 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_100B8D7C0(v61, v104, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v107 = swift_allocObject();
        sub_100B8D828(v104, v107 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v108 = v132;
        *v132 = 1;
        *(v108 + 1) = sub_100B8DB5C;
        *(v108 + 2) = v106;
        v108[24] = 0;
        *(v108 + 4) = sub_100B8DB6C;
        *(v108 + 5) = v107;

        swift_storeEnumTagMultiPayload();
        sub_10010FC20(&qword_1011B47C0);
        sub_100B8DBF0();
        sub_100020674(&unk_1011B47E0, &qword_1011B47C0);
        v103 = v130;
        _ConditionalContent<>.init(storage:)();
      }

      sub_10003D17C(v103, v163, &qword_1011B4710);
      v59 = 0;
    }
  }

  v109 = v163;
  (*(v159 + 56))(v163, v59, 1, v160);
  v110 = v62;
  v111 = v158;
  sub_1000089F8(v110, v158, &unk_1011B4730);
  v112 = v161;
  sub_1000089F8(v109, v161, &qword_1011B4718);
  v113 = v162;
  sub_1000089F8(v111, v162, &unk_1011B4730);
  v114 = sub_10010FC20(&qword_1011B47B0);
  v115 = (v113 + v114[12]);
  v116 = v167;
  v168[0] = v167;
  v168[1] = 0;
  v117 = v165;
  LOBYTE(v169[0]) = v165;
  *(v169 + 1) = *v177;
  *(&v169[1] + 1) = *&v177[16];
  *(&v169[2] + 1) = *&v177[32];
  *(&v169[3] + 1) = *&v177[48];
  *(&v169[4] + 1) = *&v177[64];
  v118 = v169[0];
  *v115 = v167;
  v115[1] = v118;
  v119 = v169[1];
  v120 = v169[2];
  v121 = v169[3];
  *(v115 + 73) = *(&v169[3] + 9);
  v115[3] = v120;
  v115[4] = v121;
  v115[2] = v119;
  v122 = v113 + v114[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_1000089F8(v112, v113 + v114[20], &qword_1011B4718);
  sub_1000089F8(v168, v170, &qword_1011B47B8);
  sub_1000095E8(v109, &qword_1011B4718);
  sub_1000095E8(v166, &unk_1011B4730);
  sub_1000095E8(v112, &qword_1011B4718);
  v170[0] = v116;
  v170[1] = 0;
  v171 = v117;
  v173 = *&v177[16];
  v174 = *&v177[32];
  v175 = *&v177[48];
  v176 = *&v177[64];
  v172 = *v177;
  sub_1000095E8(v170, &qword_1011B47B8);
  return sub_1000095E8(v111, &unk_1011B4730);
}

uint64_t sub_100B82320@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v28 - v9;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v2 + 56);
  v17(&v28 - v15, 1, 1, v1, v14);
  Playlist.Collaborator.artwork.getter();
  v33 = *(v2 + 48);
  if (v33(v12, 1, v1) == 1)
  {
    v29 = v17;
    sub_1000095E8(v12, &unk_1011B55F0);
    sub_100009F78(0, &qword_1011B1168);
    v18 = Playlist.Collaborator.name.getter();
    v30 = v7;
    v20 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v18, v19, 0, 1);
    v7 = v30;

    if (v20)
    {
      v21 = v31;
      Artwork.init(_:)();
      sub_1000095E8(v16, &unk_1011B55F0);
      (v29)(v21, 0, 1, v1);
      sub_10003D17C(v21, v16, &unk_1011B55F0);
    }
  }

  else
  {
    sub_1000095E8(v16, &unk_1011B55F0);
    (*(v2 + 32))(v16, v12, v1);
    (v17)(v16, 0, 1, v1);
  }

  sub_1000089F8(v16, v7, &unk_1011B55F0);
  if (v33(v7, 1, v1) == 1)
  {
    sub_1000095E8(v16, &unk_1011B55F0);
    sub_1000095E8(v7, &unk_1011B55F0);
    v22 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v24 = v32;
    (*(v2 + 16))(v32, v4, v1);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    v26 = *(v25 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v2 + 8))(v4, v1);
    sub_1000095E8(v16, &unk_1011B55F0);
    v27 = type metadata accessor for Artwork.CropStyle();
    (*(*(v27 - 8) + 56))(v24 + v26, 0, 1, v27);
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

uint64_t sub_100B827BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v101 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = v96 - v10;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v96[1] = v15;
  static Published.subscript.getter();

  v16 = Playlist.isOwner.getter();
  (*(v12 + 8))(v14, v11);
  v17 = sub_100B8315C(v16 & 1);
  if (v18)
  {
    v97 = v7;
    v98 = v6;
    v109 = v17;
    v110 = v18;
    sub_1000098E0();
    v19 = Text.init<A>(_:)();
    v21 = v20;
    v23 = v22;
    LODWORD(v109) = static HierarchicalShapeStyle.primary.getter();
    v24 = Text.foregroundStyle<A>(_:)();
    v26 = v25;
    v28 = v27;
    sub_10011895C(v19, v21, v23 & 1);

    if (qword_1011B0658 != -1)
    {
      swift_once();
    }

    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_10011895C(v24, v26, v28 & 1);

    v36 = v31 & 1;
    sub_10021D0C0(v29, v35, v31 & 1);
    v102 = v33;

    v6 = v98;
    v7 = v97;
  }

  else
  {
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v102 = 0;
  }

  v37 = Playlist.Collaborator.isPending.getter();
  if (v37 == 2 || (v37 & 1) == 0 || (sub_100B70028() & 1) != 0)
  {
    v38 = Playlist.Collaborator.handle.getter();
    if (!v39)
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = -1;
      goto LABEL_17;
    }

    v40 = v38;
    v41 = v39;
    v98 = v35;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 64;
    v42._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    v43._countAndFlagsBits = v40;
    v43._object = v41;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v43);

    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
    v45 = v100;
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v7 + 16))(v99, v45, v6);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v97 = v29;
    v46 = qword_10121B340;
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    v49 = v48;
    (*(v7 + 8))(v45, v6);
    v109 = v47;
    v110 = v49;
    sub_1000098E0();
    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    LODWORD(v109) = static HierarchicalShapeStyle.secondary.getter();
    v55 = Text.foregroundStyle<A>(_:)();
    v57 = v56;
    v59 = v58;
    sub_10011895C(v50, v52, v54 & 1);

    if (qword_1011B0660 != -1)
    {
      swift_once();
    }

    v60 = Text.font(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    sub_10011895C(v55, v57, v59 & 1);

    v104 = v60;
    v105 = v62;
    v106 = v64 & 1;
    v107 = v66;
    v108 = 1;
    _ConditionalContent<>.init(storage:)();
    v67 = v109;
    v68 = v110;
    v69 = v111;
    v70 = v112;
    v71 = v113;
    sub_10069B2E4(v109, v110, v111);
    v29 = v97;
  }

  else
  {
    v98 = v35;
    v75 = v100;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v7 + 16))(v99, v75, v6);
    if (qword_1011B0430 != -1)
    {
      swift_once();
    }

    v76 = qword_10121B340;
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v79 = v78;
    (*(v7 + 8))(v75, v6);
    v109 = v77;
    v110 = v79;
    sub_1000098E0();
    v80 = Text.init<A>(_:)();
    v82 = v81;
    v84 = v83;
    LODWORD(v109) = static HierarchicalShapeStyle.secondary.getter();
    v85 = Text.foregroundStyle<A>(_:)();
    v87 = v86;
    v89 = v88;
    sub_10011895C(v80, v82, v84 & 1);

    if (qword_1011B0660 != -1)
    {
      swift_once();
    }

    v90 = Text.font(_:)();
    v92 = v91;
    v94 = v93;
    v101 = v95;

    sub_10011895C(v85, v87, v89 & 1);

    v104 = v90;
    v105 = v92;
    v106 = v94 & 1;
    v107 = v101;
    v108 = 0;
    _ConditionalContent<>.init(storage:)();
    v67 = v109;
    v68 = v110;
    v69 = v111;
    v70 = v112;
    v71 = v113;
    sub_10069B2E4(v109, v110, v111);
  }

  v35 = v98;
LABEL_17:
  v72 = v102;
  sub_10024EA48(v29, v35, v36, v102);
  sub_100B8DD08(v67, v68, v69, v70, v71);
  sub_10024EA04(v29, v35, v36, v72);
  sub_100B8DD20(v67, v68, v69, v70, v71);
  v73 = v103;
  *v103 = v29;
  v73[1] = v35;
  v73[2] = v36;
  v73[3] = v72;
  v73[4] = v67;
  v73[5] = v68;
  v73[6] = v69;
  v73[7] = v70;
  *(v73 + 64) = v71;
  sub_100B8DD20(v67, v68, v69, v70, v71);
  return sub_10024EA04(v29, v35, v36, v72);
}

uint64_t sub_100B8315C(char a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  result = Playlist.Collaborator.name.getter();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (Playlist.Collaborator.isHost.getter())
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v10);

      v11._countAndFlagsBits = 0x2972656E774F2820;
      v11._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
      String.LocalizationValue.init(stringInterpolation:)();
      if (a1)
      {
        if (qword_1011B0430 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v12 = qword_10121B340;
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_100B833D8(uint64_t a1, const char *a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_100B73CFC(a1, a3);
}

uint64_t sub_100B8355C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011B58A0);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - v6;
  v7 = sub_10010FC20(&qword_1011B46C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - v9;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = Playlist.isOwner.getter();
  (*(v11 + 8))(v13, v10);
  if (v14 == 2 || (v14 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v15 = Playlist.Collaborator.isPending.getter(), v15 == 2) || (v15 & 1) != 0)
  {
    v16 = 1;
    v17 = v34;
  }

  else
  {
    v19 = v32;
    static ButtonRole.cancel.getter();
    v20 = type metadata accessor for ButtonRole();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = v33;
    sub_100B8D7C0(a1, v33, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v23 = swift_allocObject();
    sub_100B8D828(v21, v23 + v22, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v24 = v30;
    Button.init(role:action:label:)();
    v25 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    v27 = (v24 + *(v7 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v34;
    sub_10003D17C(v24, v34, &qword_1011B46C0);
    v17 = v28;
    v16 = 0;
  }

  return (*(v8 + 56))(v17, v16, 1, v7);
}

uint64_t sub_100B83980(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&unk_1011B4540);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = type metadata accessor for Playlist.Collaborator();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1000089F8(v11, v8, &unk_1011B4540);
  sub_10010FC20(&qword_1011B44C8);
  State.wrappedValue.setter();
  sub_1000095E8(v11, &unk_1011B4540);
  v15 = (a1 + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  sub_10010FC20(&qword_1011B2DD8);
  State.wrappedValue.setter();
  v18 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Management] Remove swipe action triggered", v21, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100B83C74@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v10 = qword_10121B340;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1000098E0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100B83E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v10 + 16);
  v49(v12, v15, v9);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v16 = qword_10121B340;
  v17 = qword_10121B340;
  v48[3] = v16;
  v18 = v17;
  static Locale.current.getter();
  v19 = v18;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v48[1] = v10 + 8;
  v63 = v20;
  v64 = v22;
  v48[2] = sub_1000098E0();
  v24 = Text.init<A>(_:)();
  v54 = v25;
  v55 = v24;
  v52 = v26;
  v53 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  v28 = v49;
  v49(v12, v15, v9);
  static Locale.current.getter();
  v48[0] = v10 + 16;
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v23(v15, v9);
  v63 = v29;
  v64 = v31;
  v32 = Text.init<A>(_:)();
  v50 = v33;
  v51 = v32;
  v48[4] = v34 & 1;
  v48[5] = v35;
  String.LocalizationValue.init(stringLiteral:)();
  v28(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v23(v15, v9);
  v63 = v36;
  v64 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_100B8D7C0(v58, v59, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_100B8D828(v44, v46 + v45, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  static Alert.Button.destructive(_:action:)();
  sub_10011895C(v39, v41, v43 & 1);

  static Alert.Button.cancel(_:)();
  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t sub_100B84424()
{
  v0 = sub_10010FC20(&unk_1011B4540);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10010FC20(&qword_1011B44C8);
  State.wrappedValue.getter();
  sub_100B73454(v2);
  return sub_1000095E8(v2, &unk_1011B4540);
}

uint64_t sub_100B84500()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v8 = qword_10121B340;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100B84704@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = type metadata accessor for ColorScheme();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  v6 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10010FC20(&qword_1011B4808);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = sub_10010FC20(&qword_1011B4810);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v52 = sub_10010FC20(&qword_1011B4818);
  __chkstk_darwin(v52);
  v53 = &v52 - v17;
  sub_100B8D7C0(v1, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_100B8D828(&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v58 = v1;
  sub_10010FC20(&qword_1011B4828);
  sub_100B8DED8();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v10 + 32))(v16, v12, v9);
  v20 = &v16[*(v14 + 44)];
  v21 = v64;
  *(v20 + 4) = v63;
  *(v20 + 5) = v21;
  *(v20 + 6) = v65;
  v22 = v60;
  *v20 = v59;
  *(v20 + 1) = v22;
  v23 = v62;
  *(v20 + 2) = v61;
  *(v20 + 3) = v23;
  if (sub_100B854C4())
  {
    if (qword_1011B06A0 != -1)
    {
      swift_once();
    }

    v24 = qword_1011B3C58;
  }

  else
  {
    v25 = [objc_opt_self() tertiaryLabelColor];
    v24 = Color.init(_:)();
  }

  KeyPath = swift_getKeyPath();
  v27 = v53;
  sub_10003D17C(v16, v53, &qword_1011B4810);
  v28 = (v27 + *(v52 + 36));
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = v54;
  sub_100B8561C(v54);
  v31 = v55;
  v30 = v56;
  (*(v2 + 104))(v55, enum case for ColorScheme.light(_:), v56);
  v32 = static ColorScheme.== infix(_:_:)();
  v33 = *(v2 + 8);
  v33(v31, v30);
  v33(v29, v30);
  v34 = objc_opt_self();
  v35 = &selRef_systemBackgroundColor;
  if ((v32 & 1) == 0)
  {
    v35 = &selRef_secondarySystemBackgroundColor;
  }

  v36 = [v34 *v35];
  v37 = Color.init(_:)();
  v38 = sub_10010FC20(&qword_1011B4878);
  v39 = v57;
  v40 = (v57 + *(v38 + 36));
  v41 = sub_10010FC20(&qword_1011B4880);
  v42 = v40 + *(v41 + 52);
  v43 = *(type metadata accessor for RoundedRectangle() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *v40 = v37;
  *(v40 + *(v41 + 56)) = 256;
  return sub_10003D17C(v27, v39, &qword_1011B4818);
}

__n128 sub_100B84D1C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011B4850);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = sub_10010FC20(&qword_1011B4840);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  sub_100B84F14(a1, &v7[*(v5 + 52)]);
  if (*a1)
  {
    v12 = 2.5;
  }

  else
  {
    v12 = 0.0;
  }

  sub_10003D17C(v7, v11, &qword_1011B4850);
  v13 = &v11[*(v9 + 44)];
  *v13 = 0;
  *(v13 + 1) = v12;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v11, a2, &qword_1011B4840);
  v14 = a2 + *(sub_10010FC20(&qword_1011B4828) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_100B84F14@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_10010FC20(&qword_1011B4888);
  __chkstk_darwin(v50);
  v4 = v47 - v3;
  v5 = sub_10010FC20(&qword_1011B4890);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = sub_10010FC20(&qword_1011B4898);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[1] = *a1;
  v13 = Image.init(systemName:)();
  v14 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = KeyPath;
  v58 = v14;
  static Font.Weight.semibold.getter();
  v16 = sub_10010FC20(&qword_1011B48A0);
  v17 = sub_100B8E0D4();
  View.fontWeight(_:)();

  if (qword_1011B06B0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000060E4(v50, qword_1011B3C78);
  sub_1000089F8(v18, v4, &qword_1011B4888);
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100020674(&qword_1011B48C0, &qword_1011B4888);
  v55 = v12;
  v19 = v49;
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v4, &qword_1011B4888);
  (*(v48 + 8))(v7, v19);
  v56 = sub_100B84500();
  v57 = v20;
  sub_1000098E0();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  if (qword_1011B0668 != -1)
  {
    swift_once();
  }

  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;

  sub_10011895C(v21, v23, v25 & 1);

  if (qword_1011B0670 != -1)
  {
    swift_once();
  }

  v31 = Text.fontWeight(_:)();
  v33 = v32;
  v35 = v34;
  v50 = v36;
  sub_10011895C(v26, v28, v30 & 1);

  v37 = v51;
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v55, v53);
  v41 = v54;
  *v54 = 0;
  *(v41 + 8) = 1;
  v42 = sub_10010FC20(&qword_1011B48C8);
  v39(v41 + v42[12], v37, v40);
  v43 = v41 + v42[16];
  *v43 = v31;
  *(v43 + 1) = v33;
  v35 &= 1u;
  v43[16] = v35;
  *(v43 + 3) = v50;
  v44 = v41 + v42[20];
  *v44 = 0x4020000000000000;
  v44[8] = 0;
  sub_10021D0C0(v31, v33, v35);
  v45 = *(v38 + 8);

  v45(v55, v40);
  sub_10011895C(v31, v33, v35);

  return (v45)(v37, v40);
}

uint64_t sub_100B854C4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100B8561C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B4820);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_1000089F8(v1 + *(v10 + 24), v9, &qword_1011B4820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_100B85828()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100B858B4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_10010FC20(&qword_1011B4888);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v16 = Image.init(systemName:)();
  static Font.subheadline.getter();
  v6 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v8 = static Color.white.getter();
  v9 = swift_getKeyPath();
  if (qword_1011B0688 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (a1)
  {
    v10 = static Color.red.getter();
  }

  else
  {
    v10 = static Color.green.getter();
  }

  v11 = v10;
  v12 = static Edge.Set.all.getter();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_1011B06B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000060E4(v3, qword_1011B3C78);
  sub_1000089F8(v13, v5, &qword_1011B4888);
  sub_10010FC20(&qword_1011B4FC0);
  sub_100B91344();
  sub_100020674(&qword_1011B48C0, &qword_1011B4888);
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v5, &qword_1011B4888);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_1000095E8(v21, &qword_1011B4FC0);
}

uint64_t sub_100B85B98@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for BorderlessButtonStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011B4FB0);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_10010FC20(&qword_1011B4FB8);
  v13 = sub_1001109D0(&qword_1011B4FC0);
  v14 = sub_1001109D0(&qword_1011B4888);
  v15 = sub_100B91344();
  v16 = sub_100020674(&qword_1011B48C0, &qword_1011B4888);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  BorderlessButtonStyle.init()();
  sub_100020674(&qword_1011B5010, &qword_1011B4FB0);
  sub_100B8C798(&qword_1011B4BF0, &type metadata accessor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  View.buttonStyle<A>(_:)();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_10010FC20(&qword_1011B5018) + 36));
  sub_10010FC20(&qword_1011B5020);
  static ButtonBorderShape.circle.getter();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v0);

  Collaboration.Management.View.init(model:)(v3);
  v5 = UIHostingController.init(rootView:)();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)()
{
  v0 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = UIHostingController.init(rootView:)();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100B86338(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_100B861E0(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_100B86338(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_100B86298(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100B86338(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100B86338(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_1011B0590 != -1)
    {
      swift_once();
    }

    v14 = *&qword_10121B6A8 + *&qword_10121B6A8;
    if (v11 + *&qword_10121B6A8 + *&qword_10121B6A8 > *&a2)
    {
      v11 = *&a2 - (*&qword_10121B6A8 + *&qword_10121B6A8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_100B8659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DE18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B86600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DE18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B86664()
{
  sub_100B8DE18();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *sub_100B8668C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v9;
  v19 = *(v0 + 32);
  sub_100B8DD8C(v0, v17);
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v11 = qword_10121B340;
  static Locale.current.getter();
  v12 = v11;
  v16[1] = String.init(localized:table:bundle:locale:comment:)();
  v13 = *(v3 + 8);
  v13(v8, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v5, v8, v2);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13(v8, v2);
  v14 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v18);
}

uint64_t sub_100B86988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DDC4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B869EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DDC4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B86A50()
{
  sub_100B8DDC4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_10003D17C(a3, a4 + *(v6 + 20), &unk_1011B55F0);
}

uint64_t sub_100B86ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011B3DE0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  sub_1000089F8(v1 + *(v10 + 20), v9, &qword_1011B3DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003D17C(v9, a1, &qword_1011B0C18);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  v1 = sub_10010FC20(&qword_1011B3DE8);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static VerticalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10010FC20(&qword_1011B3DF0);
  sub_100B86E64(v0, &v3[*(v4 + 44)]);
  sub_100020674(&qword_1011B3DF8, &qword_1011B3DE8);
  View.artworkCaching(id:limit:)();
  return sub_1000095E8(v3, &qword_1011B3DE8);
}

uint64_t sub_100B86E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10010FC20(&unk_1011B3E00);
  __chkstk_darwin(v53);
  v6 = &v49 - v5;
  v7 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  v14 = sub_10010FC20(&qword_1011B4950);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_10010FC20(&qword_1011B4958);
  __chkstk_darwin(v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0x4018000000000000;
  v16[16] = 0;
  v25 = sub_10010FC20(&qword_1011B4960);
  sub_100B87548(a1, &v16[*(v25 + 44)]);
  if (qword_1011B05B8 != -1)
  {
    swift_once();
  }

  v26 = unk_10121B6F0;
  v27 = byte_10121B6F8;
  if (byte_10121B6F8)
  {
    v28 = *&static Corner.medium;
  }

  else
  {
    v28 = *&static Corner.medium + -3.0;
  }

  sub_10003D17C(v16, v21, &qword_1011B4950);
  v29 = &v21[*(v17 + 36)];
  *v29 = v28;
  *(v29 + 1) = v26;
  v29[16] = v27;
  *(v29 + 3) = 0x4008000000000000;
  *(v29 + 4) = 0;
  *(v29 + 20) = 257;
  sub_10003D17C(v21, v24, &qword_1011B4958);
  v30 = v58;
  sub_100B86ADC(v58);
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v55);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = *(v53 + 48);
  sub_1000089F8(v30, v6, &qword_1011B0C18);
  sub_1000089F8(v11, &v6[v33], &qword_1011B0C18);
  v34 = *(v32 + 48);
  v35 = v34(v6, 1, v31);
  v53 = v24;
  if (v35 != 1)
  {
    v50 = v11;
    v38 = v52;
    sub_1000089F8(v6, v52, &qword_1011B0C18);
    v39 = v31;
    if (v34(&v6[v33], 1, v31) != 1)
    {
      v40 = &v6[v33];
      v41 = v51;
      (*(v32 + 32))(v51, v40, v31);
      sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass);
      v42 = v38;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v32 + 8);
      v43(v41, v39);
      sub_1000095E8(v50, &qword_1011B0C18);
      sub_1000095E8(v58, &qword_1011B0C18);
      v43(v42, v39);
      v37 = v53;
      sub_1000095E8(v6, &qword_1011B0C18);
      goto LABEL_13;
    }

    sub_1000095E8(v50, &qword_1011B0C18);
    sub_1000095E8(v58, &qword_1011B0C18);
    (*(v32 + 8))(v38, v31);
    goto LABEL_11;
  }

  sub_1000095E8(v11, &qword_1011B0C18);
  sub_1000095E8(v58, &qword_1011B0C18);
  if (v34(&v6[v33], 1, v31) != 1)
  {
LABEL_11:
    sub_1000095E8(v6, &unk_1011B3E00);
    v36 = 0;
    v37 = v53;
    goto LABEL_13;
  }

  sub_1000095E8(v6, &qword_1011B0C18);
  v36 = 1;
  v37 = v53;
LABEL_13:
  v44 = v56;
  sub_1000089F8(v37, v56, &qword_1011B4958);
  v45 = v37;
  v46 = v57;
  sub_1000089F8(v44, v57, &qword_1011B4958);
  v47 = v46 + *(sub_10010FC20(&qword_1011B4968) + 48);
  *v47 = 0;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = (v36 & 1) == 0;
  sub_1000095E8(v45, &qword_1011B4958);
  return sub_1000095E8(v44, &qword_1011B4958);
}

uint64_t sub_100B87548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_10010FC20(&qword_1011B4970);
  __chkstk_darwin(v3 - 8);
  v70 = &v55[-v4];
  v5 = type metadata accessor for Font.TextStyle();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v67 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Text.Suffix();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_10010FC20(&qword_1011B4978) - 8;
  __chkstk_darwin(v68);
  v69 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v55[-v11];
  v12 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = sub_10010FC20(&qword_1011B4980);
  __chkstk_darwin(v15 - 8);
  v66 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  sub_100B86ADC(v14);
  v20 = sub_100B8E550(v14);
  sub_1000095E8(v14, &qword_1011B0C18);
  *v19 = static VerticalAlignment.center.getter();
  v19[1] = v20;
  *(v19 + 16) = 0;
  v65 = v19;
  sub_10010FC20(&qword_1011B4988);
  v62 = a1;
  sub_100B87C78(a1);
  v74 = sub_100B8902C();
  v75 = v21;
  sub_1000098E0();
  v58 = Text.init<A>(_:)();
  v57 = v22;
  v59 = v23;
  v74 = v58;
  v75 = v22;
  v56 = v24 & 1;
  v76 = v24 & 1;
  v77 = v23;
  String.nonBreakingSpace.unsafeMutableAddressor();

  Image.init(systemName:)();

  v25 = Text.init(_:)();
  v27 = v26;
  v29 = v28;
  v30 = static Text.+ infix(_:_:)();
  v32 = v31;
  v34 = v33;
  sub_10011895C(v25, v27, v29 & 1);

  v35 = v61;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v30, v32, v34 & 1);

  v36 = v60;
  View.textSuffix(_:)();
  (*(v63 + 8))(v35, v64);
  sub_10011895C(v58, v57, v56);

  KeyPath = swift_getKeyPath();
  v38 = v36 + *(sub_10010FC20(&qword_1011B4990) + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  v39 = (v36 + *(sub_10010FC20(&qword_1011B4998) + 36));
  v40 = *(sub_10010FC20(&qword_1011B49A0) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = type metadata accessor for Image.Scale();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v67;
  PlaylistCurators.View.fontTextStyle.getter(v67);
  v44 = type metadata accessor for Font.Design();
  v45 = v70;
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v46 = static Font.system(_:design:weight:)();
  sub_1000095E8(v45, &qword_1011B4970);
  (*(v71 + 8))(v43, v72);
  v47 = swift_getKeyPath();
  v48 = (v36 + *(v68 + 44));
  *v48 = v47;
  v48[1] = v46;
  v50 = v65;
  v49 = v66;
  sub_1000089F8(v65, v66, &qword_1011B4980);
  v51 = v69;
  sub_1000089F8(v36, v69, &qword_1011B4978);
  v52 = v73;
  sub_1000089F8(v49, v73, &qword_1011B4980);
  v53 = sub_10010FC20(&qword_1011B49A8);
  sub_1000089F8(v51, v52 + *(v53 + 48), &qword_1011B4978);
  sub_1000095E8(v36, &qword_1011B4978);
  sub_1000095E8(v50, &qword_1011B4980);
  sub_1000095E8(v51, &qword_1011B4978);
  return sub_1000095E8(v49, &qword_1011B4980);
}

uint64_t sub_100B87C78(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCurators.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_100B065A8(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_100C0CAD8(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_100B8D7C0(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_100B8D828(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100B8E928;
  *(v13 + 24) = v12;
  sub_10010FC20(&qword_1011B49B0);
  sub_10010FC20(&qword_1011B49B8);
  sub_100020674(&qword_1011B49C0, &qword_1011B49B0);
  sub_100B8EA1C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100B87F04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_100B87F6C(a2, a4);
    result = sub_10010FC20(&qword_1011B49B8);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_100B87F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v125 = a2;
  v2 = type metadata accessor for Artwork.CropStyle();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkImage();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v127 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v95 - v7;
  __chkstk_darwin(v8);
  v121 = &v95 - v9;
  __chkstk_darwin(v10);
  v119 = &v95 - v11;
  v12 = type metadata accessor for ArtworkImage.ReusePolicy();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v130 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v95 - v17;
  v18 = sub_10010FC20(&qword_1011B4720);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v23 = sub_10010FC20(&unk_1011B55F0);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v95 - v26;
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v30 = sub_10010FC20(&qword_1011B5930);
  __chkstk_darwin(v30 - 8);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v98 = &v95 - v33;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v116 = sub_10010FC20(&unk_1011B4A40);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v95 - v37;
  v104 = sub_10010FC20(&qword_1011B4A08);
  __chkstk_darwin(v104);
  v111 = &v95 - v38;
  v108 = sub_10010FC20(&qword_1011B49F8);
  __chkstk_darwin(v108);
  v109 = &v95 - v39;
  v107 = sub_10010FC20(&qword_1011B49E8);
  __chkstk_darwin(v107);
  v115 = &v95 - v40;
  v112 = sub_10010FC20(&qword_1011B49D8);
  __chkstk_darwin(v112);
  v113 = &v95 - v41;
  v42 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v42 - 8);
  v44 = &v95 - v43;
  sub_100B86ADC(&v95 - v43);
  v45 = sub_100B8ED70(v44);
  sub_1000095E8(v44, &qword_1011B0C18);
  v46 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_1000089F8(v122 + *(v46 + 20), v29, &unk_1011B55F0);
  static Artwork.CropStyle.boundedBox.getter();
  v47 = *(v129 + 56);
  v122 = v2;
  v97 = v129 + 56;
  v96 = v47;
  v47(v22, 0, 1, v2);
  v48 = type metadata accessor for Artwork();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v29, 1, v48) == 1)
  {
    sub_1000095E8(v22, &qword_1011B4720);
    sub_1000095E8(v29, &unk_1011B55F0);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
  }

  else
  {
    (*(v49 + 32))(v36, v29, v48);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_10003D17C(v22, &v36[*(v50 + 20)], &qword_1011B4720);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = sub_10010FC20(&unk_1011B4740);
  v52 = v126;
  (*(*(v51 - 8) + 56))(v126, 8, 11, v51);
  v100 = v45;
  v138 = 0;
  v136 = 0;
  v134 = 1;
  v53 = *(v128 + 104);
  v120 = v12;
  v53(v130, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  v54 = v101;
  sub_100B8D7C0(v52, v101, type metadata accessor for ArtworkImage.Placeholder);
  v55 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_100B8D828(v54, v57 + v55, type metadata accessor for ArtworkImage.Placeholder);
  v58 = v57 + v56;
  *v58 = v45;
  *(v58 + 8) = v138;
  *(v58 + 9) = *v137;
  *(v58 + 12) = *&v137[3];
  *(v58 + 16) = v45;
  *(v58 + 24) = v136;
  *(v58 + 25) = *v135;
  *(v58 + 28) = *&v135[3];
  *(v58 + 32) = 0;
  *(v58 + 40) = v134;
  *(v58 + 41) = 1;
  v59 = v98;
  sub_1000089F8(v36, v98, &qword_1011B5930);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v60 = *(*(v50 - 8) + 48);
  v61 = v36;
  if (v60(v59, 1, v50) == 1)
  {
    sub_1000095E8(v59, &qword_1011B5930);
    v62 = 1;
    v63 = v102;
  }

  else
  {
    v63 = v102;
    (*(v49 + 16))(v102, v59, v48);
    sub_100B8DCA8(v59, type metadata accessor for ArtworkImage.ViewModel);
    v62 = 0;
  }

  (*(v49 + 56))(v63, v62, 1, v48);
  sub_1000089F8(v63, v106, &unk_1011B55F0);
  v64 = v119;
  ArtworkImage.init(_:width:height:)();
  sub_1000095E8(v63, &unk_1011B55F0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v106 = v61;
  v65 = v103;
  sub_1000089F8(v61, v103, &qword_1011B5930);
  v66 = v60(v65, 1, v50);
  v67 = v120;
  if (v66 == 1)
  {
    sub_1000095E8(v65, &qword_1011B5930);
    v68 = v105;
    v69 = v122;
    v96(v105, 1, 1, v122);
    v70 = v129;
    v71 = v118;
  }

  else
  {
    v68 = v105;
    sub_1000089F8(v65 + *(v50 + 20), v105, &qword_1011B4720);
    sub_100B8DCA8(v65, type metadata accessor for ArtworkImage.ViewModel);
    v70 = v129;
    v69 = v122;
    v72 = (*(v129 + 48))(v68, 1, v122);
    v71 = v118;
    if (v72 != 1)
    {
      (*(v70 + 32))(v118, v68, v69);
      goto LABEL_15;
    }
  }

  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v73 = sub_1000060E4(v69, static Artwork.CropStyle.fallback);
  (*(v70 + 16))(v71, v73, v69);
  if ((*(v70 + 48))(v68, 1, v69) != 1)
  {
    sub_1000095E8(v68, &qword_1011B4720);
  }

LABEL_15:
  v74 = v117;
  v75 = v127;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v70 + 8))(v71, v69);
  v76 = v124;
  v77 = *(v123 + 8);
  v77(v75, v124);
  v78 = v121;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v77(v74, v76);
  sub_10010FC20(&qword_1011B33A8);
  sub_100B5A07C();
  v79 = v110;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v77(v78, v76);
  v77(v64, v76);
  (*(v128 + 8))(v130, v67);
  sub_100B8DCA8(v126, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v106, &qword_1011B5930);
  v80 = v111;
  v81 = &v111[*(v104 + 36)];
  v82 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v81 + v82) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878);
  swift_storeEnumTagMultiPayload();
  *v81 = sub_100B89890;
  v81[1] = 0;
  (*(v114 + 32))(v80, v79, v116);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v83 = v109;
  sub_10003D17C(v80, v109, &qword_1011B4A08);
  v84 = (v83 + *(v108 + 36));
  v85 = v132;
  *v84 = v131;
  v84[1] = v85;
  v84[2] = v133;
  v86 = v115;
  sub_10003D17C(v83, v115, &qword_1011B49F8);
  v87 = v86 + *(v107 + 36);
  *v87 = 0;
  *(v87 + 8) = 0;
  *(v87 + 16) = 2;
  if (qword_1011B06C0 != -1)
  {
    swift_once();
  }

  v88 = qword_1011B3C98;
  v89 = qword_1011B3CA0;
  v90 = byte_1011B3CA8;
  v91 = v86;
  v92 = v113;
  sub_10003D17C(v91, v113, &qword_1011B49E8);
  v93 = v92 + *(v112 + 36);
  *v93 = v88;
  *(v93 + 8) = v89;
  *(v93 + 16) = v90;
  *(v93 + 24) = 0;
  *(v93 + 32) = 0;
  *(v93 + 40) = 2;
  sub_10003D17C(v92, v125, &qword_1011B49D8);
}

uint64_t sub_100B8902C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  __chkstk_darwin(v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v0 + 16);
  if (v14)
  {
    sub_100B8D7C0(*v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v15 = v14 - 1;
    if (v15)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v13);
      v18._countAndFlagsBits = 2106912;
      v18._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
      v22[1] = v15;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v19._countAndFlagsBits = 0x7328726568744F20;
      v19._object = 0xE900000000000029;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v3 + 16))(v5, v8, v2);
      if (qword_1011B0430 != -1)
      {
        swift_once();
      }

      v20 = qword_10121B340;
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      countAndFlagsBits = v13->_countAndFlagsBits;
    }

    sub_100B8DCA8(v13, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011B3E00);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&qword_1011B0C18);
  __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_100B86ADC(&v27 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1000089F8(v15, v7, &qword_1011B0C18);
  sub_1000089F8(v12, &v7[v16], &qword_1011B0C18);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_1000095E8(v12, &qword_1011B0C18);
    sub_1000095E8(v15, &qword_1011B0C18);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_1000095E8(v7, &qword_1011B0C18);
LABEL_9:
      v18 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v7, v29, &qword_1011B0C18);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_1000095E8(v12, &qword_1011B0C18);
    sub_1000095E8(v15, &qword_1011B0C18);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_1000095E8(v7, &unk_1011B3E00);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_100B8C798(&qword_1011B3E10, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_1000095E8(v12, &qword_1011B0C18);
  sub_1000095E8(v15, &qword_1011B0C18);
  v23(v21, v1);
  sub_1000095E8(v7, &qword_1011B0C18);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v24 = *v18;
  v25 = type metadata accessor for Font.TextStyle();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_100B89890(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = Color.init(_:)();
  return sub_10006B010(v4, a1 + 40, &qword_1011B4A50);
}

uint64_t sub_100B89910()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_100B899D8;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10003640C;
  v4[3] = &unk_1010E5100;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_1011B3C90 = v2;
  return result;
}

id sub_100B899D8(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_100B89A78()
{
  if (qword_1011B06B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1011B3C90;
  result = Color.init(uiColor:)();
  qword_1011B3C98 = result;
  qword_1011B3CA0 = 0x3FF0000000000000;
  byte_1011B3CA8 = 1;
  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  *v5 = a1;

  return v4(v7, 0);
}

void (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_100B89C4C;
}

void sub_100B89C4C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = dispatch thunk of UIHostingController.rootView.modify();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v1);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return UIHostingController.init(rootView:)();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B3DE0);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return UIHostingController.init(rootView:)();
}

id sub_100B89F58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100B8A274()
{
  type metadata accessor for ClearBackground.Controller();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_100B8A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DD38();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B8A314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B8DD38();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B8A378()
{
  sub_100B8DD38();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100B8A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100B8C798(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100B8A648();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100B8AEF8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_100B8A648()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B48F0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100B8A880()
{
  v1 = v0;
  v32 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10010FC20(&qword_1011B48F0);
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100B8C798(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}
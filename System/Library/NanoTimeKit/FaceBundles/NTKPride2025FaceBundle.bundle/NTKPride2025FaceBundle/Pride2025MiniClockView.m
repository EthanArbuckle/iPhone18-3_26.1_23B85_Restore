@interface Pride2025MiniClockView
- (CLKUITimeViewConfiguration)configuration;
- (NSDate)overrideDate;
- (_TtC22NTKPride2025FaceBundle22Pride2025MiniClockView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation Pride2025MiniClockView

- (_TtC22NTKPride2025FaceBundle22Pride2025MiniClockView)initWithCoder:(id)a3
{
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_token] = 0;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute] = -1;
  result = sub_12924();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for Pride2025MiniClockView();
  v2 = v5.receiver;
  [(Pride2025MiniClockView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView];
  [v2 bounds];
  [v4 setFrame:?];
}

- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_7BC4(a3, v7);
  swift_unknownObjectRelease();
}

- (NSDate)overrideDate
{
  v3 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Pride2025MiniClockView();
  v21.receiver = self;
  v21.super_class = v10;
  v11 = self;
  v12 = [(Pride2025MiniClockView *)&v21 overrideDate];
  if (v12)
  {
    v13 = v12;
    sub_12684();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_126A4();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, v14, 1, v15);
  sub_87F8(v7, v9);
  v17 = (*(v16 + 48))(v9, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_12674().super.isa;
    (*(v16 + 8))(v9, v15);
    v18 = isa;
  }

  return v18;
}

- (void)setOverrideDate:(id)a3
{
  v5 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  if (a3)
  {
    sub_12684();
    v12 = sub_126A4();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_126A4();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_6554(v11, v9);
  sub_126A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = self;
  isa = 0;
  if (v14 != 1)
  {
    isa = sub_12674().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v17 = type metadata accessor for Pride2025MiniClockView();
  v18.receiver = v15;
  v18.super_class = v17;
  [(Pride2025MiniClockView *)&v18 setOverrideDate:isa];

  sub_833C();
  sub_8790(v11);
}

- (CLKUITimeViewConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Pride2025MiniClockView();
  v2 = [(Pride2025MiniClockView *)&v4 configuration];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_8614(a3);
}

@end
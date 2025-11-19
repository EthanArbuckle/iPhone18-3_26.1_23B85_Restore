@interface Pride2025FaceView
+ (Class)_timeViewClass;
- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithCoder:(id)a3;
- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation Pride2025FaceView

- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_12784();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  sub_5034(a3, a4, v7, v9);
  return result;
}

- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithCoder:(id)a3
{
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController] = 0;
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_token] = 0;
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_wobbleSpeed] = 0;
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_hour] = -1;
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_colorIndex] = 0;
  *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_tritiumIndex] = 0;
  result = sub_12924();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *&self->NTKAnalogFaceView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_token];
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = self;
    v7 = v4;
    v8 = [v5 sharedInstance];
    [v8 stopUpdatesForToken:v7];
  }

  else
  {
    v9 = self;
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  [(Pride2025FaceView *)&v10 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v2 = self;
  sub_58FC();
}

- (void)_unloadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(Pride2025FaceView *)&v7 _unloadSnapshotContentViews];
  v3 = *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerOverall];
    v5 = v3;
    v6 = v4;
    [v6 removeFromSuperlayer];
  }
}

+ (Class)_timeViewClass
{
  type metadata accessor for Pride2025HandsView();

  return swift_getObjCClassFromMetadata();
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  if (a4)
  {
    v6 = sub_12784();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_5E10(a3, v6, v8);
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = self;
  sub_6004(a4, a5, a3);
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  if (a3)
  {
    sub_12684();
    v11 = sub_126A4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_126A4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = self;
  sub_61CC(v10, a4);

  sub_4508(v10, &qword_1E5C0, qword_146F0);
}

@end
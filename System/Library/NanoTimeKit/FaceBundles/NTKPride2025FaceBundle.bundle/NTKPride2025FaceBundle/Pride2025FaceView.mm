@interface Pride2025FaceView
+ (Class)_timeViewClass;
- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithCoder:(id)coder;
- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation Pride2025FaceView

- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = sub_12784();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  deviceCopy = device;
  sub_5034(style, device, v7, v9);
  return result;
}

- (_TtC22NTKPride2025FaceBundle17Pride2025FaceView)initWithCoder:(id)coder
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
    selfCopy = self;
    v7 = v4;
    sharedInstance = [v5 sharedInstance];
    [sharedInstance stopUpdatesForToken:v7];
  }

  else
  {
    selfCopy2 = self;
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  [(Pride2025FaceView *)&v10 dealloc];
}

- (void)_loadSnapshotContentViews
{
  selfCopy = self;
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  if (slot)
  {
    v6 = sub_12784();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  sub_5E10(view, v6, v8);
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  selfCopy = self;
  sub_6004(mode, editMode, fraction);
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  if (date)
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

  selfCopy = self;
  sub_61CC(v10, duration);

  sub_4508(v10, &qword_1E5C0, qword_146F0);
}

@end
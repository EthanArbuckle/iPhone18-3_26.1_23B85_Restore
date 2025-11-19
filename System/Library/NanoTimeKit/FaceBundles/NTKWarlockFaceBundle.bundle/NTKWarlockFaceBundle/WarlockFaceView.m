@interface WarlockFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (_TtC20NTKWarlockFaceBundle15WarlockFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5 refreshHandler:(id)a6;
- (id)createFaceColorPalette;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation WarlockFaceView

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WarlockFaceView();
  v2 = v4.receiver;
  [(WarlockFaceView *)&v4 _prepareForEditing];
  sub_1A6A0();
  v3 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState];
  if (v3)
  {
    *(v3 + 84) = 0;
  }

  sub_881C();
}

- (void)_cleanupAfterEditing
{
  v2 = self;
  sub_8A74();
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a5)
  {
    sub_37530();
  }

  v8 = a3;
  v9 = self;
  sub_9184(a3, a4);
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a7)
  {
    sub_37530();
  }

  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_93A8(a4, a5, a6, a3);
}

- (id)createFaceColorPalette
{
  type metadata accessor for WarlockFace();
  v2 = objc_allocWithZone(type metadata accessor for WarlockColorPalette());
  v3 = [v2 initWithFaceClass:swift_getObjCClassFromMetadata()];

  return v3;
}

- (void)dealloc
{
  v2 = *&self->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  *&self->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;
  v3 = self;

  v4 = *&v3->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  *&v3->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;

  v5 = *&v3->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  *&v3->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;

  v6.receiver = v3;
  v6.super_class = type metadata accessor for WarlockFaceView();
  [(WarlockFaceView *)&v6 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WarlockFaceView();
  v2 = v4.receiver;
  [(WarlockFaceView *)&v4 _loadSnapshotContentViews];
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor:v3];

  sub_19218();
  sub_197C0();
  sub_19ACC();
}

- (void)_unloadSnapshotContentViews
{
  v2 = self;
  sub_18BF8();
}

- (void)_applyShowsCanonicalContent
{
  v2 = self;
  sub_18CF0();
}

- (void)_finalizeForSnapshotting:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_18E98(sub_1BA7C, v5);
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockFaceView();
  v2 = v5.receiver;
  [(WarlockFaceView *)&v5 _applyShowContentForUnadornedSnapshot];
  v3 = [v2 timeView];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden:{objc_msgSend(v2, "showContentForUnadornedSnapshot")}];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_19118();
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockFaceView();
  v6 = v11.receiver;
  v7 = a4;
  [(WarlockFaceView *)&v11 _renderSynchronouslyWithImageQueueDiscard:v5 inGroup:v7];
  v8 = *&v6[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView);
    [v9 renderSynchronouslyWithImageQueueDiscard:v5 inGroup:{v7, v11.receiver, v11.super_class}];

    v10 = v7;
  }

  else
  {
    v10 = v6;
    v6 = v7;
  }
}

- (_TtC20NTKWarlockFaceBundle15WarlockFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_37530();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return sub_1AB20(a3, a4, v7, v9);
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v3 = self;
  sub_181E4();
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (sub_2CB4C(a3))
  {
    sub_B2AC(0, &qword_58670);
    v4.super.isa = sub_376A0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5 refreshHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a5)
  {
    sub_B2AC(0, &qword_58670);
    sub_B2AC(0, &qword_5A038);
    sub_13794();
    a5 = sub_374D0();
  }

  if (v10)
  {
    v11 = swift_allocObject();
    v11[2] = v10;
    v10 = sub_2CC84;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = self;
  v14 = sub_2BC7C(a3, a4, a5, v10, v11);
  sub_103EC(v10);

  return v14;
}

@end
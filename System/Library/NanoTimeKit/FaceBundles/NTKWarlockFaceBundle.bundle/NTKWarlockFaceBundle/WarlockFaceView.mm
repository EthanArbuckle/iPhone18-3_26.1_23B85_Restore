@interface WarlockFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (_TtC20NTKWarlockFaceBundle15WarlockFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler;
- (id)createFaceColorPalette;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)timeFormatterTextDidChange:(id)change;
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
  selfCopy = self;
  sub_8A74();
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (slot)
  {
    sub_37530();
  }

  optionCopy = option;
  selfCopy = self;
  sub_9184(option, mode);
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (slot)
  {
    sub_37530();
  }

  optionCopy = option;
  toOptionCopy = toOption;
  selfCopy = self;
  sub_93A8(option, toOption, mode, fraction);
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
  selfCopy = self;

  v4 = *&selfCopy->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  *&selfCopy->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;

  v5 = *&selfCopy->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  *&selfCopy->NTKFaceView_opaque[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for WarlockFaceView();
  [(WarlockFaceView *)&v6 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WarlockFaceView();
  v2 = v4.receiver;
  [(WarlockFaceView *)&v4 _loadSnapshotContentViews];
  blackColor = [objc_opt_self() blackColor];
  [v2 setBackgroundColor:blackColor];

  sub_19218();
  sub_197C0();
  sub_19ACC();
}

- (void)_unloadSnapshotContentViews
{
  selfCopy = self;
  sub_18BF8();
}

- (void)_applyShowsCanonicalContent
{
  selfCopy = self;
  sub_18CF0();
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  v4 = _Block_copy(snapshotting);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_18E98(sub_1BA7C, v5);
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WarlockFaceView();
  v2 = v5.receiver;
  [(WarlockFaceView *)&v5 _applyShowContentForUnadornedSnapshot];
  timeView = [v2 timeView];
  if (timeView)
  {
    v4 = timeView;
    [timeView setHidden:{objc_msgSend(v2, "showContentForUnadornedSnapshot")}];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19118();
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockFaceView();
  v6 = v11.receiver;
  groupCopy = group;
  [(WarlockFaceView *)&v11 _renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy];
  v8 = *&v6[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView);
    [v9 renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:{groupCopy, v11.receiver, v11.super_class}];

    v10 = groupCopy;
  }

  else
  {
    v10 = v6;
    v6 = groupCopy;
  }
}

- (_TtC20NTKWarlockFaceBundle15WarlockFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = sub_37530();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  deviceCopy = device;
  return sub_1AB20(style, device, v7, v9);
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_181E4();
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (sub_2CB4C(options))
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

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (options)
  {
    sub_B2AC(0, &qword_58670);
    sub_B2AC(0, &qword_5A038);
    sub_13794();
    options = sub_374D0();
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

  optionCopy = option;
  selfCopy = self;
  v14 = sub_2BC7C(option, mode, options, v10, v11);
  sub_103EC(v10);

  return v14;
}

@end
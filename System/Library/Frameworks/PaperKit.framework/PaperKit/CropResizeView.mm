@interface CropResizeView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)cancelCrop;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)gestureRecognizerDidTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation CropResizeView

- (void)layoutSubviews
{
  selfCopy = self;
  CropResizeView.layoutSubviews()();
}

- (void)cancelCrop
{
  selfCopy = self;
  CropResizeView.cancelCrop()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if ([(CropResizeView *)selfCopy isHidden])
  {

    selfCopy = 0;
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = type metadata accessor for CropResizeView(0);
    v9 = [(ResizeView *)&v11 hitTest:eventCopy withEvent:x, y];

    if (v9)
    {

      selfCopy = v9;
    }
  }

  return selfCopy;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = CropResizeView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)gestureRecognizerDidTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  CropResizeView.gestureRecognizerDidTap(_:)(tap);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = CropResizeView.gestureRecognizer(_:shouldBeRequiredToFailBy:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10.super.super.isa = specialized CropResizeView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  selfCopy = self;
  static Date.now.getter();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtC8PaperKit14CropResizeView_lastTimeEditMenuDismissed;
  swift_beginAccess();
  outlined assign with take of Date?(v8, selfCopy + v11);
  swift_endAccess();
}

@end
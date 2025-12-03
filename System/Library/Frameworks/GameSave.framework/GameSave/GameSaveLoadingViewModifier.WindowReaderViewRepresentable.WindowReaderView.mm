@interface GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView
- (_TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView)initWithCoder:(id)coder;
- (_TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView

- (_TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView.init(coder:)(coder);

  return v4;
}

- (void)didMoveToWindow
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  window = [(GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView *)selfCopy window];
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding);
  v8 = *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding);
  v5 = *(&selfCopy->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding);
  v6 = window;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo8UIWindowCSgGMd, &_s7SwiftUI7BindingVySo8UIWindowCSgGMR);
  Binding.wrappedValue.setter();
}

- (_TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView)initWithFrame:(CGRect)frame
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
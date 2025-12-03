@interface EpisodeDetailTranscriptViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)textDraggableView:(id)view itemsForDrag:(id)drag;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)beginFindInteraction;
- (void)buildMenuWithBuilder:(id)builder;
- (void)copy:(id)copy;
- (void)customCopyAction;
- (void)highlightParagraph:(id)paragraph;
- (void)keyboardWillHide;
- (void)keyboardWillShow:(id)show;
- (void)presentTranslation;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)textViewDidChangeSelection:(id)selection;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EpisodeDetailTranscriptViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD6BC();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1BE99C(appearing);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BF9FC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(EpisodeDetailTranscriptViewController *)&v5 viewDidDisappear:disappearCopy];
  if (*(*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController_viewModel] + OBJC_IVAR____TtCC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController9ViewModel_menuBarProvider))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_3087B8();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1C01FC();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1C8AC8;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1C05F4(controllerCopy, animated, v8, v9);
  sub_1EBD0(v8);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = sub_304C08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304BF8();
  selfCopy = self;
  sub_1C080C();

  (*(v5 + 8))(v7, v4);
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1C0E44();

  sub_EB68(v6, &unk_3FBB70);
}

- (void)highlightParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  selfCopy = self;
  sub_1C1F60(paragraph);
}

- (_TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1C4EC4();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_1C52A4();
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v9 = sub_301CB8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301C38();
  if (!interaction)
  {
    v13 = objc_opt_self();
    viewCopy = view;
    selfCopy = self;
    sharedApplication = [v13 sharedApplication];
    sub_301C08(v17);
    v19 = v18;
    sub_2D6B88(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1C8AD8(&unk_404010, 255, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_30BF88().super.isa;

    [sharedApplication openURL:v19 options:isa completionHandler:0];
  }

  (*(v10 + 8))(v12, v9);
  return interaction != 0;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1C55D8(selectionCopy);
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  length = range.length;
  location = range.location;
  sub_124C4(0, &qword_408010);
  v9 = sub_30C368();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1C56F4(viewCopy, location, length, v9);

  return v12;
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  sub_1C5D98();
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C60B4(builder);
  swift_unknownObjectRelease();
}

- (id)textDraggableView:(id)view itemsForDrag:(id)drag
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C7AE4();

  swift_unknownObjectRelease();
  sub_124C4(0, &unk_408048);
  v7.super.isa = sub_30C358().super.isa;

  return v7.super.isa;
}

- (void)customCopyAction
{
  selfCopy = self;
  sub_1C0E44();
}

- (void)beginFindInteraction
{
  selfCopy = self;
  v2 = sub_1BC9F4();
  findInteraction = [v2 findInteraction];

  if (findInteraction)
  {
    [findInteraction presentFindNavigatorShowingReplace:0];
  }
}

- (void)presentTranslation
{
  selfCopy = self;
  sub_1C6E64();
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  selfCopy = self;
  sub_1C71DC(showCopy);
}

- (void)keyboardWillHide
{
  selfCopy = self;
  v2 = sub_1BC9F4();
  [v2 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView);
  [v3 contentInset];
  [v3 setScrollIndicatorInsets:?];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  selfCopy = self;
  v7 = sub_1BCB44();

  if (v7 == recognizerCopy)
  {
    v9 = sub_1BC9F4();
    [v9 selectedRange];
    v11 = v10;

    return v11 == 0;
  }

  else
  {

    return 1;
  }
}

@end
@interface EpisodeDetailTranscriptViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)beginFindInteraction;
- (void)buildMenuWithBuilder:(id)a3;
- (void)copy:(id)a3;
- (void)customCopyAction;
- (void)highlightParagraph:(id)a3;
- (void)keyboardWillHide;
- (void)keyboardWillShow:(id)a3;
- (void)presentTranslation;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EpisodeDetailTranscriptViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD6BC();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1BE99C(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BF9FC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(EpisodeDetailTranscriptViewController *)&v5 viewDidDisappear:v3];
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
  v2 = self;
  sub_1C01FC();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_1C05F4(v10, a4, v8, v9);
  sub_1EBD0(v8);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = sub_304C08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_304BF8();
  v8 = self;
  sub_1C080C();

  (*(v5 + 8))(v7, v4);
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_30D448();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1C0E44();

  sub_EB68(v6, &unk_3FBB70);
}

- (void)highlightParagraph:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C1F60(a3);
}

- (_TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C4EC4();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C52A4();
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = sub_301CB8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301C38();
  if (!a6)
  {
    v13 = objc_opt_self();
    v14 = a3;
    v15 = self;
    v16 = [v13 sharedApplication];
    sub_301C08(v17);
    v19 = v18;
    sub_2D6B88(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1C8AD8(&unk_404010, 255, type metadata accessor for OpenExternalURLOptionsKey);
    isa = sub_30BF88().super.isa;

    [v16 openURL:v19 options:isa completionHandler:0];
  }

  (*(v10 + 8))(v12, v9);
  return a6 != 0;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C55D8(v4);
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_124C4(0, &qword_408010);
  v9 = sub_30C368();
  v10 = a3;
  v11 = self;
  v12 = sub_1C56F4(v10, location, length, v9);

  return v12;
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  sub_1C5D98();
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C60B4(a3);
  swift_unknownObjectRelease();
}

- (id)textDraggableView:(id)a3 itemsForDrag:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C7AE4();

  swift_unknownObjectRelease();
  sub_124C4(0, &unk_408048);
  v7.super.isa = sub_30C358().super.isa;

  return v7.super.isa;
}

- (void)customCopyAction
{
  v2 = self;
  sub_1C0E44();
}

- (void)beginFindInteraction
{
  v4 = self;
  v2 = sub_1BC9F4();
  v3 = [v2 findInteraction];

  if (v3)
  {
    [v3 presentFindNavigatorShowingReplace:0];
  }
}

- (void)presentTranslation
{
  v2 = self;
  sub_1C6E64();
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C71DC(v4);
}

- (void)keyboardWillHide
{
  v4 = self;
  v2 = sub_1BC9F4();
  [v2 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v3 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews37EpisodeDetailTranscriptViewController____lazy_storage___textView);
  [v3 contentInset];
  [v3 setScrollIndicatorInsets:?];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1BCB44();

  if (v7 == v5)
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
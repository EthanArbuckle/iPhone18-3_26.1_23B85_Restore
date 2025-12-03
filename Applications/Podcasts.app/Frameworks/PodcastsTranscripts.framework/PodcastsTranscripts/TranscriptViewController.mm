@interface TranscriptViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (NSArray)keyCommands;
- (_TtC19PodcastsTranscripts24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)commandFKeyboardSearch;
- (void)didTapEmptySpace;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)showControlsIfNotRunning;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TranscriptViewController

- (void)viewDidLoad
{
  selfCopy = self;
  TranscriptViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  TranscriptViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(TranscriptViewController *)&v14 viewDidLayoutSubviews];
  sub_7DE30();
  v3 = sub_7D494();
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame:{v7, v9, v11, v13}];
    sub_7E430(2);
  }

  else
  {
    __break(1u);
  }
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = sub_96D78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96D68();
  selfCopy = self;
  TranscriptViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC19PodcastsTranscripts24TranscriptViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  viewCopy = view;
  selfCopy = self;
  TranscriptViewController.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_8E4D0();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_96048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_8E5E4(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_96048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_8E8C4();

  (*(v9 + 8))(v11, v8);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  selfCopy = self;
  *(sub_7BEDC() + 16) = 3;
  sub_70DEC();

  return 1;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  _s19PodcastsTranscripts24TranscriptViewControllerC06scrollD15WillEndDragging_12withVelocity19targetContentOffsetySo08UIScrollD0C_So7CGPointVSpyAJGtF_0(x, y);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  selfCopy = self;
  *(sub_7BEDC() + 16) = 12;
  sub_70DEC();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  TranscriptViewController.scrollViewDidScroll(_:)(scrollCopy);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_96048();
  v7 = sub_97FC8();
  viewCopy = view;
  selfCopy = self;
  v10 = _s19PodcastsTranscripts24TranscriptViewControllerC010collectionD0_34contextMenuConfigurationForItemsAt5pointSo09UIContexthI0CSgSo012UICollectionD0C_Say10Foundation9IndexPathVGSo7CGPointVtF_0(viewCopy, v7);

  return v10;
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  swift_getObjectType();
  sub_E104(0, &qword_C7958);
  sub_8DACC(&unk_C7960, v5, type metadata accessor for TranscriptViewController);
  selfCopy = self;
  v7 = sub_98388();

  return v7;
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  selfCopy = self;
  *(sub_7BEDC() + 16) = 7;
  sub_70DEC();
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
  _s19PodcastsTranscripts24TranscriptViewControllerC15findInteraction_6didEndySo06UIFindG0C_So0J7SessionCtF_0(interactionCopy);
}

- (void)commandFKeyboardSearch
{
  selfCopy = self;
  view = [(TranscriptViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view becomeFirstResponder];

    v4 = sub_79218();
    [v4 presentFindNavigatorShowingReplace:0];

    sub_87CE4();
  }

  else
  {
    __break(1u);
  }
}

- (NSArray)keyCommands
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6598);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_9CF70;
  v3 = sub_97DC8();
  v4 = [objc_opt_self() keyCommandWithInput:v3 modifierFlags:0x100000 action:"commandFKeyboardSearch"];

  *(v2 + 32) = v4;
  sub_E104(0, &qword_C7B60);
  v5.super.isa = sub_97FB8().super.isa;

  return v5.super.isa;
}

- (void)showControlsIfNotRunning
{
  selfCopy = self;
  sub_8A894();
}

- (void)didTapEmptySpace
{
  selfCopy = self;
  *(sub_7BEDC() + 16) = 10;
  sub_70DEC();
}

@end
@interface TranscriptViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (NSArray)keyCommands;
- (_TtC19PodcastsTranscripts24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)commandFKeyboardSearch;
- (void)didTapEmptySpace;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)showControlsIfNotRunning;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TranscriptViewController

- (void)viewDidLoad
{
  v2 = self;
  TranscriptViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
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
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
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

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = sub_96D78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_96D68();
  v8 = self;
  TranscriptViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC19PodcastsTranscripts24TranscriptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  v10 = a3;
  v11 = self;
  TranscriptViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_96048();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_8E4D0();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_96048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_8E5E4(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_96048();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_95FF8();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_8E8C4();

  (*(v9 + 8))(v11, v8);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v3 = self;
  *(sub_7BEDC() + 16) = 3;
  sub_70DEC();

  return 1;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = self;
  _s19PodcastsTranscripts24TranscriptViewControllerC06scrollD15WillEndDragging_12withVelocity19targetContentOffsetySo08UIScrollD0C_So7CGPointVSpyAJGtF_0(x, y);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = self;
  *(sub_7BEDC() + 16) = 12;
  sub_70DEC();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  TranscriptViewController.scrollViewDidScroll(_:)(v4);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_96048();
  v7 = sub_97FC8();
  v8 = a3;
  v9 = self;
  v10 = _s19PodcastsTranscripts24TranscriptViewControllerC010collectionD0_34contextMenuConfigurationForItemsAt5pointSo09UIContexthI0CSgSo012UICollectionD0C_Say10Foundation9IndexPathVGSo7CGPointVtF_0(v8, v7);

  return v10;
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  swift_getObjectType();
  sub_E104(0, &qword_C7958);
  sub_8DACC(&unk_C7960, v5, type metadata accessor for TranscriptViewController);
  v6 = self;
  v7 = sub_98388();

  return v7;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v4 = self;
  *(sub_7BEDC() + 16) = 7;
  sub_70DEC();
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s19PodcastsTranscripts24TranscriptViewControllerC15findInteraction_6didEndySo06UIFindG0C_So0J7SessionCtF_0(v6);
}

- (void)commandFKeyboardSearch
{
  v5 = self;
  v2 = [(TranscriptViewController *)v5 view];
  if (v2)
  {
    v3 = v2;
    [v2 becomeFirstResponder];

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
  v2 = self;
  sub_8A894();
}

- (void)didTapEmptySpace
{
  v2 = self;
  *(sub_7BEDC() + 16) = 10;
  sub_70DEC();
}

@end
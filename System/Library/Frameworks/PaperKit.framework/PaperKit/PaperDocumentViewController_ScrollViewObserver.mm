@interface PaperDocumentViewController_ScrollViewObserver
- (_TtC8PaperKit46PaperDocumentViewController_ScrollViewObserver)init;
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation PaperDocumentViewController_ScrollViewObserver

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  PaperDocumentViewController_ScrollViewObserver._observeScrollViewDidScroll(_:)(scroll);
}

- (_TtC8PaperKit46PaperDocumentViewController_ScrollViewObserver)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for PaperDocumentViewController_ScrollViewObserver();
  return [(PaperDocumentViewController_ScrollViewObserver *)&v4 init];
}

@end
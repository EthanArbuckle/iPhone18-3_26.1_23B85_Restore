@interface ICNotePreviewViewController
- (ICNotePreviewViewController)initWithNote:(id)note;
- (ICNoteResultsThumbnailView)noteResultsThumbnailView;
- (ICSearchIndexableNote)note;
- (UIStackView)stackView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ICNotePreviewViewController

- (ICNotePreviewViewController)initWithNote:(id)note
{
  noteCopy = note;
  v8.receiver = self;
  v8.super_class = ICNotePreviewViewController;
  v5 = [(ICNotePreviewViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, noteCopy);
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v4 viewDidLoad];
  noteResultsThumbnailView = [(ICNotePreviewViewController *)self noteResultsThumbnailView];
  [noteResultsThumbnailView setPreviewing:1];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v6 viewIsAppearing:appearing];
  note = [(ICNotePreviewViewController *)self note];
  noteResultsThumbnailView = [(ICNotePreviewViewController *)self noteResultsThumbnailView];
  [noteResultsThumbnailView setNote:note];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v8 viewDidLayoutSubviews];
  stackView = [(ICNotePreviewViewController *)self stackView];
  [stackView frame];
  v5 = v4;
  v7 = v6;

  [(ICNotePreviewViewController *)self setPreferredContentSize:v5, v7];
}

- (ICSearchIndexableNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (UIStackView)stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

- (ICNoteResultsThumbnailView)noteResultsThumbnailView
{
  WeakRetained = objc_loadWeakRetained(&self->_noteResultsThumbnailView);

  return WeakRetained;
}

@end
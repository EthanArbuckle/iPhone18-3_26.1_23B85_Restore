@interface ICNotePreviewViewController
- (ICNotePreviewViewController)initWithNote:(id)a3;
- (ICNoteResultsThumbnailView)noteResultsThumbnailView;
- (ICSearchIndexableNote)note;
- (UIStackView)stackView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation ICNotePreviewViewController

- (ICNotePreviewViewController)initWithNote:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNotePreviewViewController;
  v5 = [(ICNotePreviewViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_note, v4);
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v4 viewDidLoad];
  v3 = [(ICNotePreviewViewController *)self noteResultsThumbnailView];
  [v3 setPreviewing:1];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v6 viewIsAppearing:a3];
  v4 = [(ICNotePreviewViewController *)self note];
  v5 = [(ICNotePreviewViewController *)self noteResultsThumbnailView];
  [v5 setNote:v4];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICNotePreviewViewController;
  [(ICNotePreviewViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(ICNotePreviewViewController *)self stackView];
  [v3 frame];
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
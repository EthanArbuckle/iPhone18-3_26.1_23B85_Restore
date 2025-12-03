@interface PreviewViewController
- (void)_updatePreview;
- (void)dragAndDropPreviewDidUpdate:(id)update;
- (void)setLabelMarker:(id)marker searchresult:(id)searchresult mapView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PreviewViewController

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PreviewViewController;
  [(PreviewViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[PreviewViewController traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(PreviewViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(UIImageView *)self->_imageSourceView setImage:0];
      [(PreviewViewController *)self _updatePreview];
    }
  }
}

- (void)_updatePreview
{
  v3 = [DragAndDropPreview alloc];
  dragItem = self->_dragItem;
  traitCollection = [(PreviewViewController *)self traitCollection];
  v6 = [(DragAndDropPreview *)v3 initWithDragAndDropMapItem:dragItem traitCollection:traitCollection];
  previewView = self->_previewView;
  self->_previewView = v6;

  [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
  renderPreviewImage = [(DragAndDropPreview *)self->_previewView renderPreviewImage];
  image = [renderPreviewImage image];

  [image size];
  [(PreviewViewController *)self setPreferredContentSize:?];
}

- (void)setLabelMarker:(id)marker searchresult:(id)searchresult mapView:(id)view
{
  markerCopy = marker;
  searchresultCopy = searchresult;
  viewCopy = view;
  [markerCopy coordinate];
  v11 = v10;
  [markerCopy coordinate];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  if (markerCopy)
  {
    v14 = markerCopy;
LABEL_5:
    v15 = [DragAndDropMapItem dragAndDropItemWithObject:v14];
    dragItem = self->_dragItem;
    self->_dragItem = v15;

    goto LABEL_6;
  }

  if (searchresultCopy)
  {
    v14 = searchresultCopy;
    goto LABEL_5;
  }

LABEL_6:
  [(DragAndDropMapItem *)self->_dragItem setSourceView:viewCopy];
  [(DragAndDropMapItem *)self->_dragItem setSourceCoordinate:v13.latitude, v13.longitude];
  [(PreviewViewController *)self _updatePreview];
}

- (void)dragAndDropPreviewDidUpdate:(id)update
{
  if (self->_previewView == update)
  {
    renderPreviewImage = [update renderPreviewImage];
    image = [renderPreviewImage image];

    [(UIImageView *)self->_imageSourceView setImage:image];
    [image size];
    v7 = v6;
    [image size];
    [(UIImageView *)self->_imageSourceView setFrame:0.0, 0.0, v7, v8];
    [image size];
    [(PreviewViewController *)self setPreferredContentSize:?];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PreviewViewController;
  [(PreviewViewController *)&v6 viewDidLoad];
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  imageSourceView = self->_imageSourceView;
  self->_imageSourceView = v3;

  [(UIImageView *)self->_imageSourceView setOpaque:0];
  [(UIImageView *)self->_imageSourceView setUserInteractionEnabled:0];
  view = [(PreviewViewController *)self view];
  [view addSubview:self->_imageSourceView];
}

@end
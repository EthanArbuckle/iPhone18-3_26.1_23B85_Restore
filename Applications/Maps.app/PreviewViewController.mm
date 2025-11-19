@interface PreviewViewController
- (void)_updatePreview;
- (void)dragAndDropPreviewDidUpdate:(id)a3;
- (void)setLabelMarker:(id)a3 searchresult:(id)a4 mapView:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PreviewViewController

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PreviewViewController;
  [(PreviewViewController *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[PreviewViewController traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(PreviewViewController *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
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
  v5 = [(PreviewViewController *)self traitCollection];
  v6 = [(DragAndDropPreview *)v3 initWithDragAndDropMapItem:dragItem traitCollection:v5];
  previewView = self->_previewView;
  self->_previewView = v6;

  [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
  v8 = [(DragAndDropPreview *)self->_previewView renderPreviewImage];
  v9 = [v8 image];

  [v9 size];
  [(PreviewViewController *)self setPreferredContentSize:?];
}

- (void)setLabelMarker:(id)a3 searchresult:(id)a4 mapView:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  [v17 coordinate];
  v11 = v10;
  [v17 coordinate];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  if (v17)
  {
    v14 = v17;
LABEL_5:
    v15 = [DragAndDropMapItem dragAndDropItemWithObject:v14];
    dragItem = self->_dragItem;
    self->_dragItem = v15;

    goto LABEL_6;
  }

  if (v8)
  {
    v14 = v8;
    goto LABEL_5;
  }

LABEL_6:
  [(DragAndDropMapItem *)self->_dragItem setSourceView:v9];
  [(DragAndDropMapItem *)self->_dragItem setSourceCoordinate:v13.latitude, v13.longitude];
  [(PreviewViewController *)self _updatePreview];
}

- (void)dragAndDropPreviewDidUpdate:(id)a3
{
  if (self->_previewView == a3)
  {
    v5 = [a3 renderPreviewImage];
    v9 = [v5 image];

    [(UIImageView *)self->_imageSourceView setImage:v9];
    [v9 size];
    v7 = v6;
    [v9 size];
    [(UIImageView *)self->_imageSourceView setFrame:0.0, 0.0, v7, v8];
    [v9 size];
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
  v5 = [(PreviewViewController *)self view];
  [v5 addSubview:self->_imageSourceView];
}

@end
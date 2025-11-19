@interface QLImageItemAggregatedViewController
- (id)_imageMarkupPreviewController;
- (id)_imagePreviewController;
- (id)_instantiatePreviewControllerWithContents:(id)a3 context:(id)a4;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLImageItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(QLImageItemAggregatedViewController *)self _instantiatePreviewControllerWithContents:v8 context:v9];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000028B8;
  v14[3] = &unk_100024930;
  objc_copyWeak(&v17, &location);
  v12 = v11;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v12 loadPreviewControllerIfNeededWithContents:v8 context:v9 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)_instantiatePreviewControllerWithContents:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 canBeEdited];
  if ((v9 & 1) == 0)
  {
    v4 = [v8 item];
    if (![v4 editingMode])
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass() ^ 1;
  if ((v9 & 1) == 0)
  {
LABEL_6:
  }

  v11 = [v8 contentType];

  if (v11)
  {
    v12 = [v8 contentType];
    v13 = [UTType typeWithIdentifier:v12];

    _QLContentTypeConformsToRawImage();
  }

  if (v10)
  {
    [(QLImageItemAggregatedViewController *)self _imageMarkupPreviewController];
  }

  else
  {
    [(QLImageItemAggregatedViewController *)self _imagePreviewController];
  }
  v14 = ;

  return v14;
}

- (id)_imageMarkupPreviewController
{
  imageMarkupPreviewController = self->_imageMarkupPreviewController;
  if (!imageMarkupPreviewController)
  {
    v4 = objc_opt_new();
    v5 = self->_imageMarkupPreviewController;
    self->_imageMarkupPreviewController = v4;

    imageMarkupPreviewController = self->_imageMarkupPreviewController;
  }

  return imageMarkupPreviewController;
}

- (id)_imagePreviewController
{
  imagePreviewController = self->_imagePreviewController;
  if (!imagePreviewController)
  {
    v4 = objc_opt_new();
    v5 = self->_imagePreviewController;
    self->_imagePreviewController = v4;

    imagePreviewController = self->_imagePreviewController;
  }

  return imagePreviewController;
}

@end
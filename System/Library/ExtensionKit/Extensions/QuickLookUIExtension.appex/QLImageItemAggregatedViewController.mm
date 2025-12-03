@interface QLImageItemAggregatedViewController
- (id)_imageMarkupPreviewController;
- (id)_imagePreviewController;
- (id)_instantiatePreviewControllerWithContents:(id)contents context:(id)context;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLImageItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [(QLImageItemAggregatedViewController *)self _instantiatePreviewControllerWithContents:contentsCopy context:contextCopy];
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000028B8;
  v14[3] = &unk_100024930;
  objc_copyWeak(&v17, &location);
  v12 = v11;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [v12 loadPreviewControllerIfNeededWithContents:contentsCopy context:contextCopy completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)_instantiatePreviewControllerWithContents:(id)contents context:(id)context
{
  contentsCopy = contents;
  contextCopy = context;
  canBeEdited = [contextCopy canBeEdited];
  if ((canBeEdited & 1) == 0)
  {
    item = [contextCopy item];
    if (![item editingMode])
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass() ^ 1;
  if ((canBeEdited & 1) == 0)
  {
LABEL_6:
  }

  contentType = [contextCopy contentType];

  if (contentType)
  {
    contentType2 = [contextCopy contentType];
    v13 = [UTType typeWithIdentifier:contentType2];

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
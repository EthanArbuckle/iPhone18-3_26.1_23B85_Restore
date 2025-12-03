@interface THWIntroMediaController
- (CGSize)size;
- (THWIntroMediaController)initWithDocumentRoot:(id)root;
- (TSDInfo)info;
- (UIView)controlsView;
- (id)layoutGeometryForLayout:(id)layout;
- (id)p_controlsCanvasController;
- (void)autosizedCanvasControllerDidResize:(id)resize;
- (void)dealloc;
- (void)hostViewSizeDidChange;
- (void)p_positionControlPanel;
@end

@implementation THWIntroMediaController

- (THWIntroMediaController)initWithDocumentRoot:(id)root
{
  v9.receiver = self;
  v9.super_class = THWIntroMediaController;
  v4 = [(THWIntroMediaController *)&v9 init];
  if (v4)
  {
    properties = [root properties];
    if (![properties introMediaUrl])
    {
      goto LABEL_8;
    }

    v4->_documentRoot = root;
    v4->_url = [properties introMediaUrl];
    introMediaIsVideo = [properties introMediaIsVideo];
    v4->_isMovie = introMediaIsVideo;
    if (introMediaIsVideo)
    {
      v4->_imageData = 0;
    }

    else
    {
      v7 = [(THBookDescription *)[(THDocumentRoot *)v4->_documentRoot bookDescription] dataForAbsoluteURL:v4->_url context:[(THDocumentRoot *)v4->_documentRoot context]];
      v4->_imageData = v7;
      if (v7)
      {
        [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
      }
    }

    if (![(THWIntroMediaController *)v4 info])
    {
LABEL_8:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_imageData)
  {
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  }

  [(THWAutosizedCanvasController *)self->_controlsCanvasController setDelegate:0];
  [(THWAutosizedCanvasController *)self->_controlsCanvasController teardown];

  v3.receiver = self;
  v3.super_class = THWIntroMediaController;
  [(THWIntroMediaController *)&v3 dealloc];
}

- (TSDInfo)info
{
  if (self->_info)
  {
    return self->_info;
  }

  if (!self->_isMovie)
  {
    [TSDBitmapImageProvider naturalSizeForImageData:self->_imageData];
    if (v6 <= 0.0)
    {
      return self->_info;
    }

    v8 = v7;
    if (v7 <= 0.0)
    {
      return self->_info;
    }

    v9 = v6;
    v10 = objc_alloc_init(TSSPropertyMap);
    v11 = [[TSDMediaStyle alloc] initWithContext:-[THDocumentRoot context](self->_documentRoot name:"context") overridePropertyMap:0 isVariation:{v10, 0}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1BF25C;
    v15[3] = &unk_45AE58;
    v15[4] = self;
    v15[5] = v11;
    [-[THDocumentRoot accessController](-[THWIntroMediaController documentRoot](self "documentRoot")];
    v12 = [[TSDInfoGeometry alloc] initWithSize:{v9, v8}];
    self->_info = [[THImageInfo alloc] initWithContext:[(THDocumentRoot *)self->_documentRoot context] geometry:v12 style:v11 imageData:self->_imageData originalImageData:0];

LABEL_13:
    return self->_info;
  }

  v4 = [AVAsset assetWithURL:self->_url];
  v5 = [(AVAsset *)v4 tracksWithMediaType:AVMediaTypeVideo];
  if ([(NSArray *)v5 count])
  {
    if (v4)
    {
      [(AVAsset *)v4 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    if (CMTimeGetSeconds(&time) > 0.0)
    {
      [-[NSArray objectAtIndex:](v5 objectAtIndex:{0), "naturalSize"}];
      v12 = [[TSDInfoGeometry alloc] initWithSize:{v13, v14}];
      v10 = [[TSDMediaStyle alloc] initWithContext:-[THDocumentRoot context](self->_documentRoot name:"context") overridePropertyMap:0 isVariation:{0, 0}];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1BF21C;
      v16[3] = &unk_45AE58;
      v16[4] = self;
      v16[5] = v10;
      [-[THDocumentRoot accessController](-[THWIntroMediaController documentRoot](self "documentRoot")];
      self->_info = [[THWMovieInfo alloc] initWithContext:[(THDocumentRoot *)self->_documentRoot context] geometry:v12 style:v10 movieRemoteURL:self->_url loadedAsset:v4];
      goto LABEL_13;
    }
  }

  return self->_info;
}

- (CGSize)size
{
  geometry = [(TSDInfo *)[(THWIntroMediaController *)self info] geometry];

  [geometry size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIView)controlsView
{
  p_controlsCanvasController = [(THWIntroMediaController *)self p_controlsCanvasController];

  return [p_controlsCanvasController canvasView];
}

- (void)hostViewSizeDidChange
{
  [(THWAutosizedCanvasController *)self->_controlsCanvasController invalidateLayoutsAndFrames];

  [(THWIntroMediaController *)self p_positionControlPanel];
}

- (id)layoutGeometryForLayout:(id)layout
{
  [(THWIntroMediaControllerDelegate *)self->_delegate hostViewSizeForIntroMediaController:self];
  v4 = v3;
  v5 = [TSDLayoutGeometry alloc];
  v6 = *&CGAffineTransformIdentity.c;
  v8[0] = *&CGAffineTransformIdentity.a;
  v8[1] = v6;
  v8[2] = *&CGAffineTransformIdentity.tx;
  return [v5 initWithSize:v8 transform:{v4, 59.0}];
}

- (void)autosizedCanvasControllerDidResize:(id)resize
{
  if (resize)
  {
    if (self->_controlsCanvasController == resize)
    {
      [(THWIntroMediaController *)self p_positionControlPanel];
    }
  }
}

- (id)p_controlsCanvasController
{
  if (!self->_controlsCanvasController && self->_isMovie)
  {
    v3 = [[THWAutosizedCanvasController alloc] initWithDelegate:self documentRoot:[(THWIntroMediaController *)self documentRoot]];
    self->_controlsCanvasController = v3;
    [(TSDInteractiveCanvasController *)[(THWAutosizedCanvasController *)v3 interactiveCanvasController] setCreateRepsForOffscreenLayouts:1];
    v4 = [(THWIntroMediaControllerDelegate *)self->_delegate controlsInfoForIntroMediaController:self];
    if (v4)
    {
      [(TSDInteractiveCanvasController *)[(THWAutosizedCanvasController *)self->_controlsCanvasController interactiveCanvasController] setInfosToDisplay:[NSArray arrayWithObject:v4]];
    }
  }

  return self->_controlsCanvasController;
}

- (void)p_positionControlPanel
{
  if (self->_controlsCanvasController)
  {
    [(THWIntroMediaControllerDelegate *)self->_delegate hostViewSizeForIntroMediaController:self];
    v4 = v3;
    v6 = v5;
    [(TSDCanvasView *)[(THWAutosizedCanvasController *)self->_controlsCanvasController canvasView] frame];
    if (v7 >= 59.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 59.0;
    }

    canvasView = [(THWAutosizedCanvasController *)self->_controlsCanvasController canvasView];

    [(TSDCanvasView *)canvasView setFrame:0.0, v6 + -59.0 + -40.0, v4, v8];
  }
}

@end
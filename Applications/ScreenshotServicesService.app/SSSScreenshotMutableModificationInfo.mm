@interface SSSScreenshotMutableModificationInfo
- (SSSScreenshotMutableModificationInfoChangeObserver)changeObserver;
- (void)setAnnotationNSDatas:(id)datas;
- (void)setCropInfo:(SSSCropInfo *)info;
- (void)setImageDescription:(id)description;
- (void)setPaperKitChangeCounter:(unint64_t)counter;
- (void)setVellumOpacity:(double)opacity;
- (void)takeValueFromModificationInfo:(id)info forKey:(unint64_t)key;
@end

@implementation SSSScreenshotMutableModificationInfo

- (void)setCropInfo:(SSSCropInfo *)info
{
  totalSize = info->totalSize;
  size = info->currentRect.size;
  self->super._cropInfo.currentRect.origin = info->currentRect.origin;
  self->super._cropInfo.currentRect.size = size;
  self->super._cropInfo.totalSize = totalSize;
  changeObserver = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [changeObserver screenshotMutableModificationInfo:self valueChangedForKey:0];
}

- (void)setAnnotationNSDatas:(id)datas
{
  objc_storeStrong(&self->super._annotationNSDatas, datas);
  changeObserver = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [changeObserver screenshotMutableModificationInfo:self valueChangedForKey:1];
}

- (void)setVellumOpacity:(double)opacity
{
  self->super._vellumOpacity = opacity;
  changeObserver = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [changeObserver screenshotMutableModificationInfo:self valueChangedForKey:3];
}

- (void)setImageDescription:(id)description
{
  objc_storeStrong(&self->super._imageDescription, description);
  changeObserver = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [changeObserver screenshotMutableModificationInfo:self valueChangedForKey:4];
}

- (void)setPaperKitChangeCounter:(unint64_t)counter
{
  self->super._paperKitChangeCounter = counter;
  changeObserver = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [changeObserver screenshotMutableModificationInfo:self valueChangedForKey:2];
}

- (void)takeValueFromModificationInfo:(id)info forKey:(unint64_t)key
{
  infoCopy = info;
  v7 = infoCopy;
  if (key <= 1)
  {
    if (key)
    {
      if (key == 1)
      {
        annotationNSDatas = [infoCopy annotationNSDatas];
        [(SSSScreenshotMutableModificationInfo *)self setAnnotationNSDatas:annotationNSDatas];

        originalAnnotations = [v7 originalAnnotations];
        [(SSSScreenshotMutableModificationInfo *)self setOriginalAnnotations:originalAnnotations];
        goto LABEL_9;
      }
    }

    else
    {
      if (infoCopy)
      {
        [infoCopy cropInfo];
      }

      else
      {
        memset(v10, 0, sizeof(v10));
      }

      [(SSSScreenshotMutableModificationInfo *)self setCropInfo:v10];
    }
  }

  else
  {
    switch(key)
    {
      case 2uLL:
        -[SSSScreenshotMutableModificationInfo setPaperKitChangeCounter:](self, "setPaperKitChangeCounter:", [infoCopy paperKitChangeCounter]);
        break;
      case 3uLL:
        [infoCopy vellumOpacity];
        [(SSSScreenshotMutableModificationInfo *)self setVellumOpacity:?];
        break;
      case 4uLL:
        originalAnnotations = [infoCopy imageDescription];
        [(SSSScreenshotMutableModificationInfo *)self setImageDescription:originalAnnotations];
LABEL_9:

        break;
    }
  }
}

- (SSSScreenshotMutableModificationInfoChangeObserver)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

@end
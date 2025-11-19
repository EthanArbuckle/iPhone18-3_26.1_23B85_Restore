@interface SSSScreenshotMutableModificationInfo
- (SSSScreenshotMutableModificationInfoChangeObserver)changeObserver;
- (void)setAnnotationNSDatas:(id)a3;
- (void)setCropInfo:(SSSCropInfo *)a3;
- (void)setImageDescription:(id)a3;
- (void)setPaperKitChangeCounter:(unint64_t)a3;
- (void)setVellumOpacity:(double)a3;
- (void)takeValueFromModificationInfo:(id)a3 forKey:(unint64_t)a4;
@end

@implementation SSSScreenshotMutableModificationInfo

- (void)setCropInfo:(SSSCropInfo *)a3
{
  totalSize = a3->totalSize;
  size = a3->currentRect.size;
  self->super._cropInfo.currentRect.origin = a3->currentRect.origin;
  self->super._cropInfo.currentRect.size = size;
  self->super._cropInfo.totalSize = totalSize;
  v6 = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [v6 screenshotMutableModificationInfo:self valueChangedForKey:0];
}

- (void)setAnnotationNSDatas:(id)a3
{
  objc_storeStrong(&self->super._annotationNSDatas, a3);
  v4 = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [v4 screenshotMutableModificationInfo:self valueChangedForKey:1];
}

- (void)setVellumOpacity:(double)a3
{
  self->super._vellumOpacity = a3;
  v4 = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [v4 screenshotMutableModificationInfo:self valueChangedForKey:3];
}

- (void)setImageDescription:(id)a3
{
  objc_storeStrong(&self->super._imageDescription, a3);
  v4 = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [v4 screenshotMutableModificationInfo:self valueChangedForKey:4];
}

- (void)setPaperKitChangeCounter:(unint64_t)a3
{
  self->super._paperKitChangeCounter = a3;
  v4 = [(SSSScreenshotMutableModificationInfo *)self changeObserver];
  [v4 screenshotMutableModificationInfo:self valueChangedForKey:2];
}

- (void)takeValueFromModificationInfo:(id)a3 forKey:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v9 = [v6 annotationNSDatas];
        [(SSSScreenshotMutableModificationInfo *)self setAnnotationNSDatas:v9];

        v8 = [v7 originalAnnotations];
        [(SSSScreenshotMutableModificationInfo *)self setOriginalAnnotations:v8];
        goto LABEL_9;
      }
    }

    else
    {
      if (v6)
      {
        [v6 cropInfo];
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
    switch(a4)
    {
      case 2uLL:
        -[SSSScreenshotMutableModificationInfo setPaperKitChangeCounter:](self, "setPaperKitChangeCounter:", [v6 paperKitChangeCounter]);
        break;
      case 3uLL:
        [v6 vellumOpacity];
        [(SSSScreenshotMutableModificationInfo *)self setVellumOpacity:?];
        break;
      case 4uLL:
        v8 = [v6 imageDescription];
        [(SSSScreenshotMutableModificationInfo *)self setImageDescription:v8];
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
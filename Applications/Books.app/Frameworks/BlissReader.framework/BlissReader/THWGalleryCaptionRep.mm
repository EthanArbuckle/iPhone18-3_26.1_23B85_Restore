@interface THWGalleryCaptionRep
- (void)didUpdateLayer:(id)a3;
@end

@implementation THWGalleryCaptionRep

- (void)didUpdateLayer:(id)a3
{
  v5 = [objc_msgSend(-[THWGalleryCaptionRep layout](self "layout")];
  v6 = v5;
  currentCaptionStorage = self->_currentCaptionStorage;
  if (currentCaptionStorage)
  {
    v8 = v5 == currentCaptionStorage;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = +[CATransition animation];
    [v9 setType:kCATransitionFade];
    [v9 setDuration:0.15];
    [a3 addAnimation:v9 forKey:@"fadeAnimation"];
  }

  self->_currentCaptionStorage = v6;
}

@end
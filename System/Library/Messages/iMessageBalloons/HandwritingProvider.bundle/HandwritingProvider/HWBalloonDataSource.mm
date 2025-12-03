@interface HWBalloonDataSource
- (BOOL)shouldAnimate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HWAbstractBalloonController)balloonController;
- (HWBalloonDataSource)initWithMessageGUID:(id)d payload:(id)payload dataDetectedResult:(id)result url:(id)url;
- (HWHandwritingItem)handwritingFromPayload;
- (void)playbackWithCompletionBlock:(id)block;
- (void)stopPlayback;
- (void)thumbnailURLWithSize:(CGSize)size completion:(id)completion;
@end

@implementation HWBalloonDataSource

- (HWBalloonDataSource)initWithMessageGUID:(id)d payload:(id)payload dataDetectedResult:(id)result url:(id)url
{
  v8.receiver = self;
  v8.super_class = HWBalloonDataSource;
  v6 = [(HWBalloonDataSource *)&v8 initWithMessageGUID:d payload:payload dataDetectedResult:result url:url];
  if (v6 && qword_32248 != -1)
  {
    sub_138DC();
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  handwritingFromPayload = [(HWBalloonDataSource *)self handwritingFromPayload];
  drawing = [handwritingFromPayload drawing];
  IsValid = DKDrawingIsValid();

  if (IsValid)
  {
    v8 = fmin(width, 1.79769313e308);
    if (height >= v8 / 2.5)
    {
      v9 = v8 / 2.5;
    }

    else
    {
      v9 = height;
    }

    v10 = 0;
    v11 = 0;
    v24 = CGRectInset(*(&v8 - 2), 0.0, 0.0);
    v12 = v24.size.width;
    v13 = v24.size.height;
    drawing2 = [handwritingFromPayload drawing];
    [DKInkThumbnailRenderer sizeForDrawing:drawing2 inSize:v12, v13];
    v16 = v15;
    v18 = v17;

    v19 = ceil(v16 + 0.0);
    v20 = ceil(v18 + 0.0);
  }

  else
  {
    v19 = *&HWEmptyBubbleWidth;
    v20 = *&HWEmptyBubbleHeight;
  }

  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)thumbnailURLWithSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  handwritingFromPayload = [(HWBalloonDataSource *)self handwritingFromPayload];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14F8;
  v10[3] = &unk_28600;
  v11 = completionCopy;
  v9 = completionCopy;
  [HWAbstractBalloonController _writeThumbnailOfHandwriting:handwritingFromPayload atSize:0 useHighFidelityInk:v10 toDiskWithCompletionHandler:width, height];
}

- (HWHandwritingItem)handwritingFromPayload
{
  payload = [(HWBalloonDataSource *)self payload];
  if (payload && !self->_cachedHandwritingItem)
  {
    v4 = [HWEncoding decodeHandwritingFromData:payload];
    cachedHandwritingItem = self->_cachedHandwritingItem;
    self->_cachedHandwritingItem = v4;
  }

  v6 = self->_cachedHandwritingItem;
  v7 = v6;

  return v6;
}

- (BOOL)shouldAnimate
{
  if (([(HWBalloonDataSource *)self isPlayed]& 1) != 0)
  {
    LOBYTE(isLast) = 0;
  }

  else
  {
    isLast = [(HWBalloonDataSource *)self isLast];
    if (isLast)
    {
      LOBYTE(isLast) = [(HWBalloonDataSource *)self isFromMe]^ 1;
    }
  }

  return isLast;
}

- (void)playbackWithCompletionBlock:(id)block
{
  blockCopy = block;
  balloonController = [(HWBalloonDataSource *)self balloonController];
  if (balloonController && ([(HWBalloonDataSource *)self isFromMe]& 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_16B8;
    v6[3] = &unk_28628;
    v7 = blockCopy;
    [balloonController playbackWithCompletionBlock:v6];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

- (void)stopPlayback
{
  [(HWBalloonDataSource *)self markAsPlayed];
  balloonController = [(HWBalloonDataSource *)self balloonController];
  [balloonController cancelPlayback];
}

- (HWAbstractBalloonController)balloonController
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonController);

  return WeakRetained;
}

@end
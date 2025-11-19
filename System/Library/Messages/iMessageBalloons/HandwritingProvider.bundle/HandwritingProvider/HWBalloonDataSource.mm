@interface HWBalloonDataSource
- (BOOL)shouldAnimate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HWAbstractBalloonController)balloonController;
- (HWBalloonDataSource)initWithMessageGUID:(id)a3 payload:(id)a4 dataDetectedResult:(id)a5 url:(id)a6;
- (HWHandwritingItem)handwritingFromPayload;
- (void)playbackWithCompletionBlock:(id)a3;
- (void)stopPlayback;
- (void)thumbnailURLWithSize:(CGSize)a3 completion:(id)a4;
@end

@implementation HWBalloonDataSource

- (HWBalloonDataSource)initWithMessageGUID:(id)a3 payload:(id)a4 dataDetectedResult:(id)a5 url:(id)a6
{
  v8.receiver = self;
  v8.super_class = HWBalloonDataSource;
  v6 = [(HWBalloonDataSource *)&v8 initWithMessageGUID:a3 payload:a4 dataDetectedResult:a5 url:a6];
  if (v6 && qword_32248 != -1)
  {
    sub_138DC();
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HWBalloonDataSource *)self handwritingFromPayload];
  v6 = [v5 drawing];
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
    v14 = [v5 drawing];
    [DKInkThumbnailRenderer sizeForDrawing:v14 inSize:v12, v13];
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

- (void)thumbnailURLWithSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(HWBalloonDataSource *)self handwritingFromPayload];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14F8;
  v10[3] = &unk_28600;
  v11 = v7;
  v9 = v7;
  [HWAbstractBalloonController _writeThumbnailOfHandwriting:v8 atSize:0 useHighFidelityInk:v10 toDiskWithCompletionHandler:width, height];
}

- (HWHandwritingItem)handwritingFromPayload
{
  v3 = [(HWBalloonDataSource *)self payload];
  if (v3 && !self->_cachedHandwritingItem)
  {
    v4 = [HWEncoding decodeHandwritingFromData:v3];
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
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(HWBalloonDataSource *)self isLast];
    if (v3)
    {
      LOBYTE(v3) = [(HWBalloonDataSource *)self isFromMe]^ 1;
    }
  }

  return v3;
}

- (void)playbackWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(HWBalloonDataSource *)self balloonController];
  if (v5 && ([(HWBalloonDataSource *)self isFromMe]& 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_16B8;
    v6[3] = &unk_28628;
    v7 = v4;
    [v5 playbackWithCompletionBlock:v6];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)stopPlayback
{
  [(HWBalloonDataSource *)self markAsPlayed];
  v3 = [(HWBalloonDataSource *)self balloonController];
  [v3 cancelPlayback];
}

- (HWAbstractBalloonController)balloonController
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonController);

  return WeakRetained;
}

@end
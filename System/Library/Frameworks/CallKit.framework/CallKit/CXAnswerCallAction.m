@interface CXAnswerCallAction
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CXAnswerCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithDateConnected:(NSDate *)dateConnected;
- (void)updateAsFulfilledWithDateConnected:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXAnswerCallAction

- (id)customDescription
{
  v8.receiver = self;
  v8.super_class = CXAnswerCallAction;
  v3 = [(CXCallAction *)&v8 customDescription];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio];
  v4 = NSStringFromSize(v10);
  [v3 appendFormat:@" localLandscapeAspectRatio=%@", v4];

  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  v5 = NSStringFromSize(v11);
  [v3 appendFormat:@" localPortraitAspectRatio=%@", v5];

  v6 = [(CXAnswerCallAction *)self dateConnected];
  [v3 appendFormat:@" dateConnected=%@", v6];

  [v3 appendFormat:@" downgradeToAudio=%d", -[CXAnswerCallAction downgradeToAudio](self, "downgradeToAudio")];
  [v3 appendFormat:@" pauseVideoToStart=%d", -[CXAnswerCallAction pauseVideoToStart](self, "pauseVideoToStart")];
  [v3 appendFormat:@" screening=%d", -[CXAnswerCallAction screening](self, "screening")];
  [v3 appendFormat:@" receptionist=%d", -[CXAnswerCallAction receptionist](self, "receptionist")];

  return v3;
}

- (void)fulfill
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXAnswerCallAction *)self fulfillWithDateConnected:v3];
}

- (void)fulfillWithDateConnected:(NSDate *)dateConnected
{
  v6 = dateConnected;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXAnswerCallAction fulfillWithDateConnected:]", @"dateConnected"}];
  }

  v4 = [(CXAnswerCallAction *)self copy];
  [v4 updateAsFulfilledWithDateConnected:v6];
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateConnected:(id)a3
{
  v4 = a3;
  [(CXAction *)self updateAsFulfilled];
  [(CXAnswerCallAction *)self setDateConnected:v4];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8.receiver = self;
  v8.super_class = CXAnswerCallAction;
  v6 = a3;
  [(CXCallAction *)&v8 updateSanitizedCopy:v6 withZone:a4];
  v7 = [(CXAnswerCallAction *)self dateConnected:v8.receiver];
  [v6 setDateConnected:v7];
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXAnswerCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio:v7.receiver];
  [v6 setLocalLandscapeAspectRatio:?];
  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  [v6 setLocalPortraitAspectRatio:?];
  [v6 setDowngradeToAudio:{-[CXAnswerCallAction downgradeToAudio](self, "downgradeToAudio")}];
  [v6 setPauseVideoToStart:{-[CXAnswerCallAction pauseVideoToStart](self, "pauseVideoToStart")}];
  [v6 setScreening:{-[CXAnswerCallAction screening](self, "screening")}];
}

- (CXAnswerCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CXAnswerCallAction;
  v5 = [(CXCallAction *)&v22 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_localLandscapeAspectRatio = &v5->_localLandscapeAspectRatio;
    v8 = NSStringFromSelector(sel_localLandscapeAspectRatio);
    [v4 decodeSizeForKey:v8];
    *&p_localLandscapeAspectRatio->width = v9;
    v6->_localLandscapeAspectRatio.height = v10;

    v11 = NSStringFromSelector(sel_localPortraitAspectRatio);
    [v4 decodeSizeForKey:v11];
    v6->_localPortraitAspectRatio.width = v12;
    v6->_localPortraitAspectRatio.height = v13;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_dateConnected);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = v16;

    v18 = NSStringFromSelector(sel_downgradeToAudio);
    v6->_downgradeToAudio = [v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_pauseVideoToStart);
    v6->_pauseVideoToStart = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_screening);
    v6->_screening = [v4 decodeBoolForKey:v20];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v23.receiver = self;
  v23.super_class = CXAnswerCallAction;
  v4 = a3;
  [(CXCallAction *)&v23 encodeWithCoder:v4];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio:v23.receiver];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [v4 encodeSize:v9 forKey:{v6, v8}];

  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  v11 = v10;
  v13 = v12;
  v14 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [v4 encodeSize:v14 forKey:{v11, v13}];

  v15 = [(CXAnswerCallAction *)self dateConnected];
  v16 = NSStringFromSelector(sel_dateConnected);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(CXAnswerCallAction *)self downgradeToAudio];
  v18 = NSStringFromSelector(sel_downgradeToAudio);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(CXAnswerCallAction *)self pauseVideoToStart];
  v20 = NSStringFromSelector(sel_pauseVideoToStart);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(CXAnswerCallAction *)self screening];
  v22 = NSStringFromSelector(sel_screening);
  [v4 encodeBool:v21 forKey:v22];
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
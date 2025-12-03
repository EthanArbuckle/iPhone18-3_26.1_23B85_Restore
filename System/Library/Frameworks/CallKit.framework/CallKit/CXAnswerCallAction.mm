@interface CXAnswerCallAction
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CXAnswerCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithDateConnected:(NSDate *)dateConnected;
- (void)updateAsFulfilledWithDateConnected:(id)connected;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXAnswerCallAction

- (id)customDescription
{
  v8.receiver = self;
  v8.super_class = CXAnswerCallAction;
  customDescription = [(CXCallAction *)&v8 customDescription];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio];
  v4 = NSStringFromSize(v10);
  [customDescription appendFormat:@" localLandscapeAspectRatio=%@", v4];

  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  v5 = NSStringFromSize(v11);
  [customDescription appendFormat:@" localPortraitAspectRatio=%@", v5];

  dateConnected = [(CXAnswerCallAction *)self dateConnected];
  [customDescription appendFormat:@" dateConnected=%@", dateConnected];

  [customDescription appendFormat:@" downgradeToAudio=%d", -[CXAnswerCallAction downgradeToAudio](self, "downgradeToAudio")];
  [customDescription appendFormat:@" pauseVideoToStart=%d", -[CXAnswerCallAction pauseVideoToStart](self, "pauseVideoToStart")];
  [customDescription appendFormat:@" screening=%d", -[CXAnswerCallAction screening](self, "screening")];
  [customDescription appendFormat:@" receptionist=%d", -[CXAnswerCallAction receptionist](self, "receptionist")];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXAnswerCallAction *)self fulfillWithDateConnected:date];
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
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateConnected:(id)connected
{
  connectedCopy = connected;
  [(CXAction *)self updateAsFulfilled];
  [(CXAnswerCallAction *)self setDateConnected:connectedCopy];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXAnswerCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXAnswerCallAction *)self dateConnected:v8.receiver];
  [copyCopy setDateConnected:v7];
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXAnswerCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio:v7.receiver];
  [copyCopy setLocalLandscapeAspectRatio:?];
  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  [copyCopy setLocalPortraitAspectRatio:?];
  [copyCopy setDowngradeToAudio:{-[CXAnswerCallAction downgradeToAudio](self, "downgradeToAudio")}];
  [copyCopy setPauseVideoToStart:{-[CXAnswerCallAction pauseVideoToStart](self, "pauseVideoToStart")}];
  [copyCopy setScreening:{-[CXAnswerCallAction screening](self, "screening")}];
}

- (CXAnswerCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CXAnswerCallAction;
  v5 = [(CXCallAction *)&v22 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_localLandscapeAspectRatio = &v5->_localLandscapeAspectRatio;
    v8 = NSStringFromSelector(sel_localLandscapeAspectRatio);
    [coderCopy decodeSizeForKey:v8];
    *&p_localLandscapeAspectRatio->width = v9;
    v6->_localLandscapeAspectRatio.height = v10;

    v11 = NSStringFromSelector(sel_localPortraitAspectRatio);
    [coderCopy decodeSizeForKey:v11];
    v6->_localPortraitAspectRatio.width = v12;
    v6->_localPortraitAspectRatio.height = v13;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_dateConnected);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = v16;

    v18 = NSStringFromSelector(sel_downgradeToAudio);
    v6->_downgradeToAudio = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_pauseVideoToStart);
    v6->_pauseVideoToStart = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_screening);
    v6->_screening = [coderCopy decodeBoolForKey:v20];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = CXAnswerCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v23 encodeWithCoder:coderCopy];
  [(CXAnswerCallAction *)self localLandscapeAspectRatio:v23.receiver];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [coderCopy encodeSize:v9 forKey:{v6, v8}];

  [(CXAnswerCallAction *)self localPortraitAspectRatio];
  v11 = v10;
  v13 = v12;
  v14 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [coderCopy encodeSize:v14 forKey:{v11, v13}];

  dateConnected = [(CXAnswerCallAction *)self dateConnected];
  v16 = NSStringFromSelector(sel_dateConnected);
  [coderCopy encodeObject:dateConnected forKey:v16];

  downgradeToAudio = [(CXAnswerCallAction *)self downgradeToAudio];
  v18 = NSStringFromSelector(sel_downgradeToAudio);
  [coderCopy encodeBool:downgradeToAudio forKey:v18];

  pauseVideoToStart = [(CXAnswerCallAction *)self pauseVideoToStart];
  v20 = NSStringFromSelector(sel_pauseVideoToStart);
  [coderCopy encodeBool:pauseVideoToStart forKey:v20];

  screening = [(CXAnswerCallAction *)self screening];
  v22 = NSStringFromSelector(sel_screening);
  [coderCopy encodeBool:screening forKey:v22];
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
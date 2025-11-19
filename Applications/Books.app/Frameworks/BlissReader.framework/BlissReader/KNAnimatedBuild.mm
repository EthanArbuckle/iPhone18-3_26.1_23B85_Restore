@interface KNAnimatedBuild
+ (id)createWithBuildType:(int)a3 attributes:(id)a4 direction:(unint64_t)a5 effect:(id)a6 deliveryStyle:(unint64_t)a7 stageCount:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 automatic:(BOOL)a14 renderer:(id)a15 animateAtEndOfPreviousBuild:(BOOL)a16 isEmphasisBuild:(BOOL)a17;
- (BOOL)hasBounce;
- (KNAnimatedBuild)initWithBuildType:(int)a3 attributes:(id)a4 direction:(unint64_t)a5 effect:(id)a6 deliveryStyle:(unint64_t)a7 stageCount:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 automatic:(BOOL)a14 renderer:(id)a15 animateAtEndOfPreviousBuild:(BOOL)a16 isEmphasisBuild:(BOOL)a17;
- (id)description;
- (unint64_t)deliveryOption;
- (void)dealloc;
@end

@implementation KNAnimatedBuild

- (KNAnimatedBuild)initWithBuildType:(int)a3 attributes:(id)a4 direction:(unint64_t)a5 effect:(id)a6 deliveryStyle:(unint64_t)a7 stageCount:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 automatic:(BOOL)a14 renderer:(id)a15 animateAtEndOfPreviousBuild:(BOOL)a16 isEmphasisBuild:(BOOL)a17
{
  v29.receiver = self;
  v29.super_class = KNAnimatedBuild;
  v26 = [(KNAnimatedBuild *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->mEventIndex = a9;
    v26->mStageIndex = a10;
    v26->mStartTime = a11;
    v26->mEventStartTime = a12;
    v26->mDuration = a13;
    v26->mEndTime = a11 + a13;
    v26->mEventEndTime = a12 + a13;
    v26->mAutomatic = a14;
    v26->mRenderer = a15;
    v27->mAnimateAtEndOfPreviousBuild = a16;
    v27->mBuildType = a3;
    v27->mEffect = a6;
    v27->mAttributes = a4;
    v27->mStageCount = a8;
    v27->mDeliveryStyle = a7;
    v27->mDirection = a5;
    v27->mIsEmphasisBuild = a17;
  }

  return v27;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNAnimatedBuild;
  [(KNAnimatedBuild *)&v3 dealloc];
}

+ (id)createWithBuildType:(int)a3 attributes:(id)a4 direction:(unint64_t)a5 effect:(id)a6 deliveryStyle:(unint64_t)a7 stageCount:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 automatic:(BOOL)a14 renderer:(id)a15 animateAtEndOfPreviousBuild:(BOOL)a16 isEmphasisBuild:(BOOL)a17
{
  LOWORD(v20) = __PAIR16__(a17, a16);
  LOBYTE(v19) = a14;
  v17 = [[KNAnimatedBuild alloc] initWithBuildType:*&a3 attributes:a4 direction:a5 effect:a6 deliveryStyle:a7 stageCount:a8 eventIndex:a11 stageIndex:a12 startTime:a13 eventStartTime:a9 duration:a10 automatic:v19 renderer:a15 animateAtEndOfPreviousBuild:v20 isEmphasisBuild:?];

  return v17;
}

- (unint64_t)deliveryOption
{
  v2 = [(NSDictionary *)[(KNAnimatedBuild *)self attributes] objectForKey:@"KNBuildCustomAttributesDeliveryOption"];

  return [v2 unsignedIntegerValue];
}

- (BOOL)hasBounce
{
  v2 = [(NSDictionary *)[(KNAnimatedBuild *)self attributes] objectForKey:@"KNBuildCustomAttributesBounce"];

  return [v2 BOOLValue];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = KNAnimatedBuild;
  v3 = [(KNAnimatedBuild *)&v5 description];
  return [NSString stringWithFormat:@"<%@: %@ event(%ld), stage(%ld) start(%.1f) eventStart(%.1f) duration(%.1f) end(%.1f) eventEnd(%.1f) automatic(%d) animateAtEndOfPrevious(%d) isVisibleAtBeginning(%d) isVisibleAtEnd(%d) renderer:(%@)>", v3, KNAnimationTypeAsString(), self->mEventIndex, self->mStageIndex, *&self->mStartTime, *&self->mEventStartTime, *&self->mDuration, *&self->mEndTime, *&self->mEventEndTime, self->mAutomatic, self->mAnimateAtEndOfPreviousBuild, self->mIsVisibleAtBeginning, self->mIsVisibleAtEnd, self->mRenderer];
}

@end
@interface KNAnimatedBuild
+ (id)createWithBuildType:(int)type attributes:(id)attributes direction:(unint64_t)direction effect:(id)effect deliveryStyle:(unint64_t)style stageCount:(unint64_t)count eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 automatic:(BOOL)self4 renderer:(id)self5 animateAtEndOfPreviousBuild:(BOOL)self6 isEmphasisBuild:(BOOL)self7;
- (BOOL)hasBounce;
- (KNAnimatedBuild)initWithBuildType:(int)type attributes:(id)attributes direction:(unint64_t)direction effect:(id)effect deliveryStyle:(unint64_t)style stageCount:(unint64_t)count eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 automatic:(BOOL)self4 renderer:(id)self5 animateAtEndOfPreviousBuild:(BOOL)self6 isEmphasisBuild:(BOOL)self7;
- (id)description;
- (unint64_t)deliveryOption;
- (void)dealloc;
@end

@implementation KNAnimatedBuild

- (KNAnimatedBuild)initWithBuildType:(int)type attributes:(id)attributes direction:(unint64_t)direction effect:(id)effect deliveryStyle:(unint64_t)style stageCount:(unint64_t)count eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 automatic:(BOOL)self4 renderer:(id)self5 animateAtEndOfPreviousBuild:(BOOL)self6 isEmphasisBuild:(BOOL)self7
{
  v29.receiver = self;
  v29.super_class = KNAnimatedBuild;
  v26 = [(KNAnimatedBuild *)&v29 init];
  v27 = v26;
  if (v26)
  {
    v26->mEventIndex = index;
    v26->mStageIndex = stageIndex;
    v26->mStartTime = time;
    v26->mEventStartTime = startTime;
    v26->mDuration = duration;
    v26->mEndTime = time + duration;
    v26->mEventEndTime = startTime + duration;
    v26->mAutomatic = automatic;
    v26->mRenderer = renderer;
    v27->mAnimateAtEndOfPreviousBuild = build;
    v27->mBuildType = type;
    v27->mEffect = effect;
    v27->mAttributes = attributes;
    v27->mStageCount = count;
    v27->mDeliveryStyle = style;
    v27->mDirection = direction;
    v27->mIsEmphasisBuild = emphasisBuild;
  }

  return v27;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNAnimatedBuild;
  [(KNAnimatedBuild *)&v3 dealloc];
}

+ (id)createWithBuildType:(int)type attributes:(id)attributes direction:(unint64_t)direction effect:(id)effect deliveryStyle:(unint64_t)style stageCount:(unint64_t)count eventIndex:(int64_t)index stageIndex:(int64_t)self0 startTime:(double)self1 eventStartTime:(double)self2 duration:(double)self3 automatic:(BOOL)self4 renderer:(id)self5 animateAtEndOfPreviousBuild:(BOOL)self6 isEmphasisBuild:(BOOL)self7
{
  LOWORD(v20) = __PAIR16__(emphasisBuild, build);
  LOBYTE(v19) = automatic;
  v17 = [[KNAnimatedBuild alloc] initWithBuildType:*&type attributes:attributes direction:direction effect:effect deliveryStyle:style stageCount:count eventIndex:time stageIndex:startTime startTime:duration eventStartTime:index duration:stageIndex automatic:v19 renderer:renderer animateAtEndOfPreviousBuild:v20 isEmphasisBuild:?];

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
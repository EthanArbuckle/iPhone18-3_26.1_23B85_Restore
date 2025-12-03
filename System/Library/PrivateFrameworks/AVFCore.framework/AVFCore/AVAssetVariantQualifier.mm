@interface AVAssetVariantQualifier
+ (AVAssetVariantQualifier)assetVariantQualifierWithPredicate:(NSPredicate *)predicate;
+ (AVAssetVariantQualifier)assetVariantQualifierWithVariant:(AVAssetVariant *)variant;
+ (NSPredicate)predicateForBinauralAudio:(BOOL)isBinauralAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForChannelCount:(NSInteger)channelCount mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption operatorType:(NSPredicateOperatorType)operatorType;
+ (NSPredicate)predicateForDownmixAudio:(BOOL)isDownmixAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForImmersiveAudio:(BOOL)isImmersiveAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForPresentationHeight:(CGFloat)height operatorType:(NSPredicateOperatorType)operatorType;
+ (NSPredicate)predicateForPresentationWidth:(CGFloat)width operatorType:(NSPredicateOperatorType)operatorType;
+ (id)assetVariantQualifierForMaximumValueInKeyPath:(id)path;
+ (id)assetVariantQualifierForMinimumValueInKeyPath:(id)path;
+ (id)predicateForAudioSampleRate:(double)rate mediaSelectionOption:(id)option operatorType:(unint64_t)type;
+ (id)predicateForAudioSampleRate:(double)rate operatorType:(unint64_t)type;
+ (id)predicateForBinauralAudio:(BOOL)audio;
+ (id)predicateForChannelCount:(int64_t)count operatorType:(unint64_t)type;
+ (id)predicateForDownmixAudio:(BOOL)audio;
+ (id)predicateForImmersiveAudio:(BOOL)audio;
- (AVAssetVariantQualifier)initWithCoder:(id)coder;
- (AVAssetVariantQualifier)initWithVariant:(id)variant;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetVariantQualifier

- (AVAssetVariantQualifier)initWithVariant:(id)variant
{
  v6.receiver = self;
  v6.super_class = AVAssetVariantQualifier;
  v4 = [(AVAssetVariantQualifier *)&v6 init];
  if (v4)
  {
    v4->_variant = variant;
  }

  return v4;
}

+ (AVAssetVariantQualifier)assetVariantQualifierWithPredicate:(NSPredicate *)predicate
{
  if (!predicate)
  {
    selfCopy = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"predicate cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy2 = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSPredicate objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierWithPredicate initWithFigAssetVariantQualifierWithPredicate:]([AVAssetVariantQualifierWithPredicate alloc], "initWithFigAssetVariantQualifierWithPredicate:", [objc_alloc(MEMORY[0x1E6970AB0]) initWithPredicate:predicate]);

  return v6;
}

+ (AVAssetVariantQualifier)assetVariantQualifierWithVariant:(AVAssetVariant *)variant
{
  if (!variant)
  {
    selfCopy = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"variant cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy2 = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only AVAssetVariant objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = [[self alloc] initWithVariant:variant];

  return v6;
}

+ (id)assetVariantQualifierForMinimumValueInKeyPath:(id)path
{
  if (!path)
  {
    selfCopy = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"keyPath cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy2 = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSString objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierForMinimumInKeyPath initWithFigAssetVariantQualifierForMinimumInKeyPath:]([AVAssetVariantQualifierForMinimumInKeyPath alloc], "initWithFigAssetVariantQualifierForMinimumInKeyPath:", [objc_alloc(MEMORY[0x1E6970AA8]) initWithKeyPath:path]);

  return v6;
}

+ (id)assetVariantQualifierForMaximumValueInKeyPath:(id)path
{
  if (!path)
  {
    selfCopy = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"keyPath cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy2 = self;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSString objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierForMaximumInKeyPath initWithFigAssetVariantQualifierForMaximumInKeyPath:]([AVAssetVariantQualifierForMaximumInKeyPath alloc], "initWithFigAssetVariantQualifierForMaximumInKeyPath:", [objc_alloc(MEMORY[0x1E6970AA0]) initWithKeyPath:path]);

  return v6;
}

+ (NSPredicate)predicateForChannelCount:(NSInteger)channelCount mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption operatorType:(NSPredicateOperatorType)operatorType
{
  v5 = [[AVAssetVariantChannelCountPredicate alloc] initWithChannelCount:channelCount mediaSelectionOption:mediaSelectionOption operatorType:operatorType];

  return v5;
}

+ (id)predicateForChannelCount:(int64_t)count operatorType:(unint64_t)type
{
  v4 = [[AVAssetVariantChannelCountPredicate alloc] initWithChannelCount:count mediaSelectionOption:0 operatorType:type];

  return v4;
}

+ (NSPredicate)predicateForBinauralAudio:(BOOL)isBinauralAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantBinauralAudioPredicate alloc] initWithBinauralAudio:isBinauralAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForBinauralAudio:(BOOL)audio
{
  v3 = [[AVAssetVariantBinauralAudioPredicate alloc] initWithBinauralAudio:audio mediaSelectionOption:0];

  return v3;
}

+ (NSPredicate)predicateForImmersiveAudio:(BOOL)isImmersiveAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantImmersiveAudioPredicate alloc] initWithImmersiveAudio:isImmersiveAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForImmersiveAudio:(BOOL)audio
{
  v3 = [[AVAssetVariantImmersiveAudioPredicate alloc] initWithImmersiveAudio:audio mediaSelectionOption:0];

  return v3;
}

+ (NSPredicate)predicateForDownmixAudio:(BOOL)isDownmixAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantDownmixAudioPredicate alloc] initWithDownmixAudio:isDownmixAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForDownmixAudio:(BOOL)audio
{
  v3 = [[AVAssetVariantDownmixAudioPredicate alloc] initWithDownmixAudio:audio mediaSelectionOption:0];

  return v3;
}

+ (id)predicateForAudioSampleRate:(double)rate mediaSelectionOption:(id)option operatorType:(unint64_t)type
{
  v5 = [[AVAssetVariantAudioSampleRatePredicate alloc] initWithSampleRate:option mediaSelectionOption:type operatorType:rate];

  return v5;
}

+ (id)predicateForAudioSampleRate:(double)rate operatorType:(unint64_t)type
{
  v4 = [[AVAssetVariantAudioSampleRatePredicate alloc] initWithSampleRate:0 mediaSelectionOption:type operatorType:rate];

  return v4;
}

+ (NSPredicate)predicateForPresentationWidth:(CGFloat)width operatorType:(NSPredicateOperatorType)operatorType
{
  v4 = [[AVAssetVariantPresentationWidthPredicate alloc] initWithPresentationWidth:operatorType operatorType:width];

  return v4;
}

+ (NSPredicate)predicateForPresentationHeight:(CGFloat)height operatorType:(NSPredicateOperatorType)operatorType
{
  v4 = [[AVAssetVariantPresentationHeightPredicate alloc] initWithPresentationHeight:operatorType operatorType:height];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantQualifier;
  [(AVAssetVariantQualifier *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVAssetVariantQualifier alloc];
  variant = self->_variant;

  return [(AVAssetVariantQualifier *)v4 initWithVariant:variant];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  variant = self->_variant;

  [coder encodeObject:variant forKey:@"variant"];
}

- (AVAssetVariantQualifier)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v9, v10, v11, v12, v13, v15.receiver), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = AVAssetVariantQualifier;
  v6 = [(AVAssetVariantQualifier *)&v15 init];
  if (v6)
  {
    v6->_variant = [coder decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  }

  return v6;
}

@end
@interface AVAssetVariantQualifier
+ (AVAssetVariantQualifier)assetVariantQualifierWithPredicate:(NSPredicate *)predicate;
+ (AVAssetVariantQualifier)assetVariantQualifierWithVariant:(AVAssetVariant *)variant;
+ (NSPredicate)predicateForBinauralAudio:(BOOL)isBinauralAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForChannelCount:(NSInteger)channelCount mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption operatorType:(NSPredicateOperatorType)operatorType;
+ (NSPredicate)predicateForDownmixAudio:(BOOL)isDownmixAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForImmersiveAudio:(BOOL)isImmersiveAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption;
+ (NSPredicate)predicateForPresentationHeight:(CGFloat)height operatorType:(NSPredicateOperatorType)operatorType;
+ (NSPredicate)predicateForPresentationWidth:(CGFloat)width operatorType:(NSPredicateOperatorType)operatorType;
+ (id)assetVariantQualifierForMaximumValueInKeyPath:(id)a3;
+ (id)assetVariantQualifierForMinimumValueInKeyPath:(id)a3;
+ (id)predicateForAudioSampleRate:(double)a3 mediaSelectionOption:(id)a4 operatorType:(unint64_t)a5;
+ (id)predicateForAudioSampleRate:(double)a3 operatorType:(unint64_t)a4;
+ (id)predicateForBinauralAudio:(BOOL)a3;
+ (id)predicateForChannelCount:(int64_t)a3 operatorType:(unint64_t)a4;
+ (id)predicateForDownmixAudio:(BOOL)a3;
+ (id)predicateForImmersiveAudio:(BOOL)a3;
- (AVAssetVariantQualifier)initWithCoder:(id)a3;
- (AVAssetVariantQualifier)initWithVariant:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAssetVariantQualifier

- (AVAssetVariantQualifier)initWithVariant:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetVariantQualifier;
  v4 = [(AVAssetVariantQualifier *)&v6 init];
  if (v4)
  {
    v4->_variant = a3;
  }

  return v4;
}

+ (AVAssetVariantQualifier)assetVariantQualifierWithPredicate:(NSPredicate *)predicate
{
  if (!predicate)
  {
    v8 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"predicate cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSPredicate objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierWithPredicate initWithFigAssetVariantQualifierWithPredicate:]([AVAssetVariantQualifierWithPredicate alloc], "initWithFigAssetVariantQualifierWithPredicate:", [objc_alloc(MEMORY[0x1E6970AB0]) initWithPredicate:predicate]);

  return v6;
}

+ (AVAssetVariantQualifier)assetVariantQualifierWithVariant:(AVAssetVariant *)variant
{
  if (!variant)
  {
    v8 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"variant cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only AVAssetVariant objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = [[a1 alloc] initWithVariant:variant];

  return v6;
}

+ (id)assetVariantQualifierForMinimumValueInKeyPath:(id)a3
{
  if (!a3)
  {
    v8 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"keyPath cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSString objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierForMinimumInKeyPath initWithFigAssetVariantQualifierForMinimumInKeyPath:]([AVAssetVariantQualifierForMinimumInKeyPath alloc], "initWithFigAssetVariantQualifierForMinimumInKeyPath:", [objc_alloc(MEMORY[0x1E6970AA8]) initWithKeyPath:a3]);

  return v6;
}

+ (id)assetVariantQualifierForMaximumValueInKeyPath:(id)a3
{
  if (!a3)
  {
    v8 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"keyPath cannot be nil";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = a1;
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"supports only NSString objects";
LABEL_8:
    v18 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v16, v9, v10, v11, v12, v13, v19), 0}];
    objc_exception_throw(v18);
  }

  v6 = -[AVAssetVariantQualifierForMaximumInKeyPath initWithFigAssetVariantQualifierForMaximumInKeyPath:]([AVAssetVariantQualifierForMaximumInKeyPath alloc], "initWithFigAssetVariantQualifierForMaximumInKeyPath:", [objc_alloc(MEMORY[0x1E6970AA0]) initWithKeyPath:a3]);

  return v6;
}

+ (NSPredicate)predicateForChannelCount:(NSInteger)channelCount mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption operatorType:(NSPredicateOperatorType)operatorType
{
  v5 = [[AVAssetVariantChannelCountPredicate alloc] initWithChannelCount:channelCount mediaSelectionOption:mediaSelectionOption operatorType:operatorType];

  return v5;
}

+ (id)predicateForChannelCount:(int64_t)a3 operatorType:(unint64_t)a4
{
  v4 = [[AVAssetVariantChannelCountPredicate alloc] initWithChannelCount:a3 mediaSelectionOption:0 operatorType:a4];

  return v4;
}

+ (NSPredicate)predicateForBinauralAudio:(BOOL)isBinauralAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantBinauralAudioPredicate alloc] initWithBinauralAudio:isBinauralAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForBinauralAudio:(BOOL)a3
{
  v3 = [[AVAssetVariantBinauralAudioPredicate alloc] initWithBinauralAudio:a3 mediaSelectionOption:0];

  return v3;
}

+ (NSPredicate)predicateForImmersiveAudio:(BOOL)isImmersiveAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantImmersiveAudioPredicate alloc] initWithImmersiveAudio:isImmersiveAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForImmersiveAudio:(BOOL)a3
{
  v3 = [[AVAssetVariantImmersiveAudioPredicate alloc] initWithImmersiveAudio:a3 mediaSelectionOption:0];

  return v3;
}

+ (NSPredicate)predicateForDownmixAudio:(BOOL)isDownmixAudio mediaSelectionOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  v4 = [[AVAssetVariantDownmixAudioPredicate alloc] initWithDownmixAudio:isDownmixAudio mediaSelectionOption:mediaSelectionOption];

  return v4;
}

+ (id)predicateForDownmixAudio:(BOOL)a3
{
  v3 = [[AVAssetVariantDownmixAudioPredicate alloc] initWithDownmixAudio:a3 mediaSelectionOption:0];

  return v3;
}

+ (id)predicateForAudioSampleRate:(double)a3 mediaSelectionOption:(id)a4 operatorType:(unint64_t)a5
{
  v5 = [[AVAssetVariantAudioSampleRatePredicate alloc] initWithSampleRate:a4 mediaSelectionOption:a5 operatorType:a3];

  return v5;
}

+ (id)predicateForAudioSampleRate:(double)a3 operatorType:(unint64_t)a4
{
  v4 = [[AVAssetVariantAudioSampleRatePredicate alloc] initWithSampleRate:0 mediaSelectionOption:a4 operatorType:a3];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVAssetVariantQualifier alloc];
  variant = self->_variant;

  return [(AVAssetVariantQualifier *)v4 initWithVariant:variant];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  variant = self->_variant;

  [a3 encodeObject:variant forKey:@"variant"];
}

- (AVAssetVariantQualifier)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v8 = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v9, v10, v11, v12, v13, v15.receiver), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = AVAssetVariantQualifier;
  v6 = [(AVAssetVariantQualifier *)&v15 init];
  if (v6)
  {
    v6->_variant = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"variant"];
  }

  return v6;
}

@end
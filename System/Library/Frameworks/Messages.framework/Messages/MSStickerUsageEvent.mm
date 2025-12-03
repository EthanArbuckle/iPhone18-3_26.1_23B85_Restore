@interface MSStickerUsageEvent
+ (BOOL)isPreferredRepresentationAnimated:(id)animated;
+ (int64_t)effectTypeForMediaPayload:(id)payload;
+ (int64_t)effectTypeForSticker:(id)sticker;
+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)type;
+ (int64_t)stickerTypeFromExternalURI:(id)i;
- (MSStickerUsageEvent)initWithMediaPayload:(id)payload;
- (MSStickerUsageEvent)initWithSticker:(id)sticker;
- (void)send;
@end

@implementation MSStickerUsageEvent

+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE1BDA8[type - 1];
  }
}

+ (int64_t)stickerTypeFromExternalURI:(id)i
{
  iCopy = i;
  if ([iCopy containsString:@"sticker:///user/"])
  {
    v4 = 0;
  }

  else if ([iCopy containsString:@"sticker:///memoji/"])
  {
    v4 = 1;
  }

  else if ([iCopy containsString:@"sticker:///emoji/"])
  {
    v4 = 2;
  }

  else
  {
    [iCopy containsString:@"sticker:///third_party/"];
    v4 = 3;
  }

  return v4;
}

+ (BOOL)isPreferredRepresentationAnimated:(id)animated
{
  animatedCopy = animated;
  if ([animatedCopy count])
  {
    firstObject = [animatedCopy firstObject];
    role = [firstObject role];
    v6 = [role isEqualToString:*MEMORY[0x1E69DEA78]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)effectTypeForSticker:(id)sticker
{
  stickerCopy = sticker;
  representations = [stickerCopy representations];
  v5 = [MSStickerUsageEvent isPreferredRepresentationAnimated:representations];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = +[MSStickerUsageEvent effectTypeFromVKCStickerEffectType:](MSStickerUsageEvent, "effectTypeFromVKCStickerEffectType:", [stickerCopy stickerEffectType]);
  }

  return v6;
}

+ (int64_t)effectTypeForMediaPayload:(id)payload
{
  payloadCopy = payload;
  stickerRepresentations = [payloadCopy stickerRepresentations];
  v5 = [MSStickerUsageEvent isPreferredRepresentationAnimated:stickerRepresentations];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = +[MSStickerUsageEvent effectTypeFromVKCStickerEffectType:](MSStickerUsageEvent, "effectTypeFromVKCStickerEffectType:", [payloadCopy stickerEffectType]);
  }

  return v6;
}

- (MSStickerUsageEvent)initWithSticker:(id)sticker
{
  stickerCopy = sticker;
  v8.receiver = self;
  v8.super_class = MSStickerUsageEvent;
  v5 = [(MSStickerUsageEvent *)&v8 init];
  if (v5)
  {
    externalURI = [stickerCopy externalURI];
    [(MSStickerUsageEvent *)v5 setStickerType:[MSStickerUsageEvent stickerTypeFromExternalURI:externalURI]];

    [(MSStickerUsageEvent *)v5 setEffectType:[MSStickerUsageEvent effectTypeForSticker:stickerCopy]];
    [(MSStickerUsageEvent *)v5 setSourceType:+[MSStickerUsageEvent autoSourceType]];
  }

  return v5;
}

- (MSStickerUsageEvent)initWithMediaPayload:(id)payload
{
  payloadCopy = payload;
  v8.receiver = self;
  v8.super_class = MSStickerUsageEvent;
  v5 = [(MSStickerUsageEvent *)&v8 init];
  if (v5)
  {
    externalURI = [payloadCopy externalURI];
    [(MSStickerUsageEvent *)v5 setStickerType:[MSStickerUsageEvent stickerTypeFromExternalURI:externalURI]];

    [(MSStickerUsageEvent *)v5 setEffectType:[MSStickerUsageEvent effectTypeForMediaPayload:payloadCopy]];
    [(MSStickerUsageEvent *)v5 setSourceType:+[MSStickerUsageEvent autoSourceType]];
  }

  return v5;
}

- (void)send
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"usageSource";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MSStickerUsageEvent sourceType](self, "sourceType")}];
  v9[0] = v3;
  v8[1] = @"stickerType";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MSStickerUsageEvent stickerType](self, "stickerType")}];
  v9[1] = v4;
  v8[2] = @"usageType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MSStickerUsageEvent usageType](self, "usageType")}];
  v9[2] = v5;
  v8[3] = @"effectType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MSStickerUsageEvent effectType](self, "effectType")}];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  AnalyticsSendEvent();
}

@end
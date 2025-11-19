@interface MSStickerUsageEvent
+ (BOOL)isPreferredRepresentationAnimated:(id)a3;
+ (int64_t)effectTypeForMediaPayload:(id)a3;
+ (int64_t)effectTypeForSticker:(id)a3;
+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)a3;
+ (int64_t)stickerTypeFromExternalURI:(id)a3;
- (MSStickerUsageEvent)initWithMediaPayload:(id)a3;
- (MSStickerUsageEvent)initWithSticker:(id)a3;
- (void)send;
@end

@implementation MSStickerUsageEvent

+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE1BDA8[a3 - 1];
  }
}

+ (int64_t)stickerTypeFromExternalURI:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"sticker:///user/"])
  {
    v4 = 0;
  }

  else if ([v3 containsString:@"sticker:///memoji/"])
  {
    v4 = 1;
  }

  else if ([v3 containsString:@"sticker:///emoji/"])
  {
    v4 = 2;
  }

  else
  {
    [v3 containsString:@"sticker:///third_party/"];
    v4 = 3;
  }

  return v4;
}

+ (BOOL)isPreferredRepresentationAnimated:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 role];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69DEA78]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)effectTypeForSticker:(id)a3
{
  v3 = a3;
  v4 = [v3 representations];
  v5 = [MSStickerUsageEvent isPreferredRepresentationAnimated:v4];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = +[MSStickerUsageEvent effectTypeFromVKCStickerEffectType:](MSStickerUsageEvent, "effectTypeFromVKCStickerEffectType:", [v3 stickerEffectType]);
  }

  return v6;
}

+ (int64_t)effectTypeForMediaPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 stickerRepresentations];
  v5 = [MSStickerUsageEvent isPreferredRepresentationAnimated:v4];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = +[MSStickerUsageEvent effectTypeFromVKCStickerEffectType:](MSStickerUsageEvent, "effectTypeFromVKCStickerEffectType:", [v3 stickerEffectType]);
  }

  return v6;
}

- (MSStickerUsageEvent)initWithSticker:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSStickerUsageEvent;
  v5 = [(MSStickerUsageEvent *)&v8 init];
  if (v5)
  {
    v6 = [v4 externalURI];
    [(MSStickerUsageEvent *)v5 setStickerType:[MSStickerUsageEvent stickerTypeFromExternalURI:v6]];

    [(MSStickerUsageEvent *)v5 setEffectType:[MSStickerUsageEvent effectTypeForSticker:v4]];
    [(MSStickerUsageEvent *)v5 setSourceType:+[MSStickerUsageEvent autoSourceType]];
  }

  return v5;
}

- (MSStickerUsageEvent)initWithMediaPayload:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSStickerUsageEvent;
  v5 = [(MSStickerUsageEvent *)&v8 init];
  if (v5)
  {
    v6 = [v4 externalURI];
    [(MSStickerUsageEvent *)v5 setStickerType:[MSStickerUsageEvent stickerTypeFromExternalURI:v6]];

    [(MSStickerUsageEvent *)v5 setEffectType:[MSStickerUsageEvent effectTypeForMediaPayload:v4]];
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
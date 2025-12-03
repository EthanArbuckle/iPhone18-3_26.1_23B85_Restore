@interface LPContactsBadgeStyle
- (LPContactsBadgeStyle)initWithPlatform:(int64_t)platform;
@end

@implementation LPContactsBadgeStyle

- (LPContactsBadgeStyle)initWithPlatform:(int64_t)platform
{
  v8.receiver = self;
  v8.super_class = LPContactsBadgeStyle;
  v3 = [(LPContactsBadgeStyle *)&v8 init];
  if (v3)
  {
    v4 = [[LPPointUnit alloc] initWithValue:24.0];
    v5 = *(v3 + 2);
    *(v3 + 2) = v4;

    *(v3 + 24) = xmmword_1AE9C6760;
    *(v3 + 5) = 0;
    v3[8] = 1;
    v6 = v3;
  }

  return v3;
}

@end
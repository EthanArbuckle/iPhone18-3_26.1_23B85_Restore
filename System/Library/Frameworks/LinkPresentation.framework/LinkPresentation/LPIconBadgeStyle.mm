@interface LPIconBadgeStyle
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPIconBadgeStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = LPIconBadgeStyle;
  v4 = [(LPImageViewStyle *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[27] = self->_offset;
    v6 = v4;
  }

  return v5;
}

@end
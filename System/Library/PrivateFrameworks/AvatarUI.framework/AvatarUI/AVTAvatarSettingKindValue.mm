@interface AVTAvatarSettingKindValue
+ (id)valueWithSettingKind:(id)kind;
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTAvatarSettingKindValue)initWithSettingKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVTAvatarSettingKindValue

- (AVTAvatarSettingKindValue)initWithSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  v6.receiver = self;
  v6.super_class = AVTAvatarSettingKindValue;
  result = [(AVTAvatarSettingKindValue *)&v6 init];
  if (result)
  {
    result->_settingKind.destination = var0;
    result->_settingKind.category = var1;
  }

  return result;
}

+ (id)valueWithSettingKind:(id)kind
{
  v3 = [[self alloc] initWithSettingKind:{kind.var0, kind.var1}];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      settingKind = [(AVTAvatarSettingKindValue *)self settingKind];
      v7 = v6;
      settingKind2 = [(AVTAvatarSettingKindValue *)equalCopy settingKind];
      v11 = v7 == v9 && settingKind == settingKind2;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTAvatarSettingKindValue alloc];
  settingKind = [(AVTAvatarSettingKindValue *)self settingKind];

  return [(AVTAvatarSettingKindValue *)v4 initWithSettingKind:settingKind, v5];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind
{
  category = self->_settingKind.category;
  destination = self->_settingKind.destination;
  result.var1 = category;
  result.var0 = destination;
  return result;
}

@end
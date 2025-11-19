@interface AVTAvatarSettingKindValue
+ (id)valueWithSettingKind:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTAvatarSettingKindValue)initWithSettingKind:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVTAvatarSettingKindValue

- (AVTAvatarSettingKindValue)initWithSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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

+ (id)valueWithSettingKind:(id)a3
{
  v3 = [[a1 alloc] initWithSettingKind:{a3.var0, a3.var1}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AVTAvatarSettingKindValue *)self settingKind];
      v7 = v6;
      v8 = [(AVTAvatarSettingKindValue *)v4 settingKind];
      v11 = v7 == v9 && v5 == v8;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTAvatarSettingKindValue alloc];
  v6 = [(AVTAvatarSettingKindValue *)self settingKind];

  return [(AVTAvatarSettingKindValue *)v4 initWithSettingKind:v6, v5];
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
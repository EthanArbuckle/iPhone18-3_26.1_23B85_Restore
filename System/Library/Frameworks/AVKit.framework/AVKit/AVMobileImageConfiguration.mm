@interface AVMobileImageConfiguration
- (AVMobileImageConfiguration)initWithImageName:(id)name font:(id)font imageContainedInBundle:(BOOL)bundle;
- (AVMobileImageConfiguration)initWithString:(id)string font:(id)font;
- (BOOL)isEqual:(id)equal;
@end

@implementation AVMobileImageConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = AVMobileImageConfiguration;
  v5 = [(AVMobileImageConfiguration *)&v8 isEqual:equalCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v5 = [(NSString *)self->_string isEqualToString:v6[2]]&& [(UIFont *)self->_font isEqual:v6[3]]&& self->_imageContainedInBundle == *(v6 + 8);
  }

  return v5;
}

- (AVMobileImageConfiguration)initWithImageName:(id)name font:(id)font imageContainedInBundle:(BOOL)bundle
{
  nameCopy = name;
  fontCopy = font;
  v14.receiver = self;
  v14.super_class = AVMobileImageConfiguration;
  v10 = [(AVMobileImageConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    string = v10->_string;
    v10->_string = v11;

    objc_storeStrong(&v10->_font, font);
    v10->_imageContainedInBundle = bundle;
  }

  return v10;
}

- (AVMobileImageConfiguration)initWithString:(id)string font:(id)font
{
  stringCopy = string;
  fontCopy = font;
  v12.receiver = self;
  v12.super_class = AVMobileImageConfiguration;
  v8 = [(AVMobileImageConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [stringCopy copy];
    string = v8->_string;
    v8->_string = v9;

    objc_storeStrong(&v8->_font, font);
    v8->_imageContainedInBundle = 0;
  }

  return v8;
}

@end
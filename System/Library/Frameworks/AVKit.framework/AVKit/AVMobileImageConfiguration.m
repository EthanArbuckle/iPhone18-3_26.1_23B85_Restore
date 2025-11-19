@interface AVMobileImageConfiguration
- (AVMobileImageConfiguration)initWithImageName:(id)a3 font:(id)a4 imageContainedInBundle:(BOOL)a5;
- (AVMobileImageConfiguration)initWithString:(id)a3 font:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation AVMobileImageConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AVMobileImageConfiguration;
  v5 = [(AVMobileImageConfiguration *)&v8 isEqual:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v5 = [(NSString *)self->_string isEqualToString:v6[2]]&& [(UIFont *)self->_font isEqual:v6[3]]&& self->_imageContainedInBundle == *(v6 + 8);
  }

  return v5;
}

- (AVMobileImageConfiguration)initWithImageName:(id)a3 font:(id)a4 imageContainedInBundle:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = AVMobileImageConfiguration;
  v10 = [(AVMobileImageConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    string = v10->_string;
    v10->_string = v11;

    objc_storeStrong(&v10->_font, a4);
    v10->_imageContainedInBundle = a5;
  }

  return v10;
}

- (AVMobileImageConfiguration)initWithString:(id)a3 font:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AVMobileImageConfiguration;
  v8 = [(AVMobileImageConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    string = v8->_string;
    v8->_string = v9;

    objc_storeStrong(&v8->_font, a4);
    v8->_imageContainedInBundle = 0;
  }

  return v8;
}

@end
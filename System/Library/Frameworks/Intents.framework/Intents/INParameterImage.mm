@interface INParameterImage
- (INParameterImage)initWithParameter:(id)parameter image:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation INParameterImage

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [INParameterImage alloc];
  v6 = [(INParameter *)self->_parameter copyWithZone:zone];
  v7 = [(INImage *)self->_image copyWithZone:zone];
  v8 = [(INParameterImage *)v5 initWithParameter:v6 image:v7];

  return v8;
}

- (INParameterImage)initWithParameter:(id)parameter image:(id)image
{
  parameterCopy = parameter;
  imageCopy = image;
  v14.receiver = self;
  v14.super_class = INParameterImage;
  v8 = [(INParameterImage *)&v14 init];
  if (v8)
  {
    v9 = [parameterCopy copy];
    parameter = v8->_parameter;
    v8->_parameter = v9;

    v11 = [imageCopy copy];
    image = v8->_image;
    v8->_image = v11;
  }

  return v8;
}

@end
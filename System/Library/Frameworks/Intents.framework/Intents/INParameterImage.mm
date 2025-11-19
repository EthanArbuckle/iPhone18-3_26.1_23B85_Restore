@interface INParameterImage
- (INParameterImage)initWithParameter:(id)a3 image:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation INParameterImage

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [INParameterImage alloc];
  v6 = [(INParameter *)self->_parameter copyWithZone:a3];
  v7 = [(INImage *)self->_image copyWithZone:a3];
  v8 = [(INParameterImage *)v5 initWithParameter:v6 image:v7];

  return v8;
}

- (INParameterImage)initWithParameter:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INParameterImage;
  v8 = [(INParameterImage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    parameter = v8->_parameter;
    v8->_parameter = v9;

    v11 = [v7 copy];
    image = v8->_image;
    v8->_image = v11;
  }

  return v8;
}

@end
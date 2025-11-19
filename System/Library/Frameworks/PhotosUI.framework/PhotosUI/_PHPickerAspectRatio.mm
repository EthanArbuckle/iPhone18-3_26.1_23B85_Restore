@interface _PHPickerAspectRatio
+ (_PHPickerAspectRatio)deviceAspectRatio;
+ (id)aspectRatio:(double)a3;
- (_PHPickerAspectRatio)initWithCoder:(id)a3;
- (id)_initWithAspectRatio:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _PHPickerAspectRatio

- (_PHPickerAspectRatio)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PHPickerAspectRatio;
  v5 = [(_PHPickerAspectRatio *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"PHPickerAspectRatioAspectRatioKey"];
    v5->__aspectRatio = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_PHPickerAspectRatio alloc];
  aspectRatio = self->__aspectRatio;

  return [(_PHPickerAspectRatio *)v4 _initWithAspectRatio:aspectRatio];
}

- (id)_initWithAspectRatio:(double)a3
{
  v5.receiver = self;
  v5.super_class = _PHPickerAspectRatio;
  result = [(_PHPickerAspectRatio *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

+ (id)aspectRatio:(double)a3
{
  if (a3 <= 0.0)
  {
    v5 = _PFAssertFailHandler();
    return +[(_PHPickerAspectRatio *)v5];
  }

  else
  {
    v3 = [[_PHPickerAspectRatio alloc] _initWithAspectRatio:a3];

    return v3;
  }
}

+ (_PHPickerAspectRatio)deviceAspectRatio
{
  v2 = [[_PHPickerAspectRatio alloc] _initWithAspectRatio:0.0];

  return v2;
}

@end
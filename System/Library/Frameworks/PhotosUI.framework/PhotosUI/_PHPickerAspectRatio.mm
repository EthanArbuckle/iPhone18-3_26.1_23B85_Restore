@interface _PHPickerAspectRatio
+ (_PHPickerAspectRatio)deviceAspectRatio;
+ (id)aspectRatio:(double)ratio;
- (_PHPickerAspectRatio)initWithCoder:(id)coder;
- (id)_initWithAspectRatio:(double)ratio;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _PHPickerAspectRatio

- (_PHPickerAspectRatio)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _PHPickerAspectRatio;
  v5 = [(_PHPickerAspectRatio *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"PHPickerAspectRatioAspectRatioKey"];
    v5->__aspectRatio = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PHPickerAspectRatio alloc];
  aspectRatio = self->__aspectRatio;

  return [(_PHPickerAspectRatio *)v4 _initWithAspectRatio:aspectRatio];
}

- (id)_initWithAspectRatio:(double)ratio
{
  v5.receiver = self;
  v5.super_class = _PHPickerAspectRatio;
  result = [(_PHPickerAspectRatio *)&v5 init];
  if (result)
  {
    *(result + 1) = ratio;
  }

  return result;
}

+ (id)aspectRatio:(double)ratio
{
  if (ratio <= 0.0)
  {
    v5 = _PFAssertFailHandler();
    return +[(_PHPickerAspectRatio *)v5];
  }

  else
  {
    v3 = [[_PHPickerAspectRatio alloc] _initWithAspectRatio:ratio];

    return v3;
  }
}

+ (_PHPickerAspectRatio)deviceAspectRatio
{
  v2 = [[_PHPickerAspectRatio alloc] _initWithAspectRatio:0.0];

  return v2;
}

@end
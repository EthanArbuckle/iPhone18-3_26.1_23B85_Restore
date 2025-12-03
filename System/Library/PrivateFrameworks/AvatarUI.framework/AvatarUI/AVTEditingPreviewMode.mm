@interface AVTEditingPreviewMode
+ (id)defaultPreviewMode;
+ (id)stringForPreviewModeType:(unint64_t)type;
- (AVTEditingPreviewMode)initWithType:(unint64_t)type options:(id)options;
- (id)description;
@end

@implementation AVTEditingPreviewMode

+ (id)defaultPreviewMode
{
  v2 = [AVTEditingPreviewMode alloc];
  v3 = +[AVTEditingPreviewModeOptions defaultOptions];
  v4 = [(AVTEditingPreviewMode *)v2 initWithType:0 options:v3];

  return v4;
}

+ (id)stringForPreviewModeType:(unint64_t)type
{
  if (type == 1)
  {
    return @"body";
  }

  else
  {
    return @"default";
  }
}

- (AVTEditingPreviewMode)initWithType:(unint64_t)type options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = AVTEditingPreviewMode;
  v8 = [(AVTEditingPreviewMode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = AVTEditingPreviewMode;
  v3 = [(AVTEditingPreviewMode *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [objc_opt_class() stringForPreviewModeType:{-[AVTEditingPreviewMode type](self, "type")}];
  [v4 appendFormat:@" type: %@\n", v5];

  options = [(AVTEditingPreviewMode *)self options];
  [v4 appendFormat:@" options: %@\n", options];

  v7 = [v4 copy];

  return v7;
}

@end
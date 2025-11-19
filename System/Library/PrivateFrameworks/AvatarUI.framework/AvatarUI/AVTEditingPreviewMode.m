@interface AVTEditingPreviewMode
+ (id)defaultPreviewMode;
+ (id)stringForPreviewModeType:(unint64_t)a3;
- (AVTEditingPreviewMode)initWithType:(unint64_t)a3 options:(id)a4;
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

+ (id)stringForPreviewModeType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"body";
  }

  else
  {
    return @"default";
  }
}

- (AVTEditingPreviewMode)initWithType:(unint64_t)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVTEditingPreviewMode;
  v8 = [(AVTEditingPreviewMode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_options, a4);
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

  v6 = [(AVTEditingPreviewMode *)self options];
  [v4 appendFormat:@" options: %@\n", v6];

  v7 = [v4 copy];

  return v7;
}

@end
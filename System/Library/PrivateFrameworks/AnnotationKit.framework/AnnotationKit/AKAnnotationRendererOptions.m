@interface AKAnnotationRendererOptions
+ (id)defaultOptions;
- (double)scaleFactor;
@end

@implementation AKAnnotationRendererOptions

- (double)scaleFactor
{
  [(AKAnnotationRendererOptions *)self availableHeadroom];
  v3 = 0.0;
  if (v4 != 0.0)
  {
    [(AKAnnotationRendererOptions *)self desiredHeadroom];
    if (v5 != 0.0)
    {
      [(AKAnnotationRendererOptions *)self availableHeadroom];
      v7 = v6;
      [(AKAnnotationRendererOptions *)self desiredHeadroom];
      return v7 / v8;
    }
  }

  return v3;
}

+ (id)defaultOptions
{
  if (qword_27E39B7C0 != -1)
  {
    sub_23F4BD590();
  }

  v3 = qword_27E39B7B8;

  return v3;
}

@end
@interface _UIPageCurl
+ (void)be_swizzlePageCurlFilter;
- (id)bepageCurlHack_newAnimationForState:(id)state withKeyPath:(id)path duration:(double)duration fromValue:(id)value;
- (id)bepageCurlHack_newFilter;
@end

@implementation _UIPageCurl

+ (void)be_swizzlePageCurlFilter
{
  if (qword_36AAA8 != -1)
  {
    sub_2639B0();
  }
}

- (id)bepageCurlHack_newAnimationForState:(id)state withKeyPath:(id)path duration:(double)duration fromValue:(id)value
{
  valueCopy = value;
  pathCopy = path;
  stateCopy = state;
  v13 = +[BEPageCurlConfig shared];
  v14 = v13;
  if (duration == 0.4)
  {
    [v13 tapAnimationDuration];
    v16 = v15;
  }

  else
  {
    pageCurlDelegate = [v13 pageCurlDelegate];
    [pageCurlDelegate interactiveAnimationDuration];
    v16 = v18;
  }

  v19 = [(_UIPageCurl *)self bepageCurlHack_newAnimationForState:stateCopy withKeyPath:pathCopy duration:valueCopy fromValue:v16];

  return v19;
}

- (id)bepageCurlHack_newFilter
{
  bepageCurlHack_newFilter = [(_UIPageCurl *)self bepageCurlHack_newFilter];
  v3 = +[BEPageCurlConfig shared];
  [v3 applyToFilter:bepageCurlHack_newFilter];

  return bepageCurlHack_newFilter;
}

@end
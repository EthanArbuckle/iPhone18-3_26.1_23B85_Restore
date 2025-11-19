@interface CAMetalDisplayLinkUpdate
+ (CAMetalDisplayLinkUpdate)updateWithDrawable:(id)a3 targetTimestamp:(double)a4 targetPresentationTimestamp:(double)a5;
- (void)dealloc;
@end

@implementation CAMetalDisplayLinkUpdate

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAMetalDisplayLinkUpdate;
  [(CAMetalDisplayLinkUpdate *)&v3 dealloc];
}

+ (CAMetalDisplayLinkUpdate)updateWithDrawable:(id)a3 targetTimestamp:(double)a4 targetPresentationTimestamp:(double)a5
{
  v8 = objc_alloc_init(CAMetalDisplayLinkUpdate);
  if (v8)
  {
    v8->_drawable = a3;
    v8->_targetTimestamp = a4;
    v8->_targetPresentationTimestamp = a5;
  }

  return v8;
}

@end
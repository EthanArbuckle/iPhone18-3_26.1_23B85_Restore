@interface CAMetalDisplayLinkUpdate
+ (CAMetalDisplayLinkUpdate)updateWithDrawable:(id)drawable targetTimestamp:(double)timestamp targetPresentationTimestamp:(double)presentationTimestamp;
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

+ (CAMetalDisplayLinkUpdate)updateWithDrawable:(id)drawable targetTimestamp:(double)timestamp targetPresentationTimestamp:(double)presentationTimestamp
{
  v8 = objc_alloc_init(CAMetalDisplayLinkUpdate);
  if (v8)
  {
    v8->_drawable = drawable;
    v8->_targetTimestamp = timestamp;
    v8->_targetPresentationTimestamp = presentationTimestamp;
  }

  return v8;
}

@end
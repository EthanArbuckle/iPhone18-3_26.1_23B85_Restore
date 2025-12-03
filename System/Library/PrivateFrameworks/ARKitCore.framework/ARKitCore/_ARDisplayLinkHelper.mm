@interface _ARDisplayLinkHelper
- (_ARDisplayLinkHelper)initWithDisplayLink:(id)link;
- (void)callback:(id)callback;
@end

@implementation _ARDisplayLinkHelper

- (_ARDisplayLinkHelper)initWithDisplayLink:(id)link
{
  linkCopy = link;
  v8.receiver = self;
  v8.super_class = _ARDisplayLinkHelper;
  v5 = [(_ARDisplayLinkHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_displayLink, linkCopy);
  }

  return v6;
}

- (void)callback:(id)callback
{
  WeakRetained = objc_loadWeakRetained(&self->_displayLink);
  [WeakRetained displayLinkCallback];
}

@end
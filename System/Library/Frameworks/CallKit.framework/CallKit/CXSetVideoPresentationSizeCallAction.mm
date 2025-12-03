@interface CXSetVideoPresentationSizeCallAction
- (CGSize)videoPresentationSize;
- (CXSetVideoPresentationSizeCallAction)initWithCallUUID:(id)d videoPresentationSize:(CGSize)size;
- (CXSetVideoPresentationSizeCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetVideoPresentationSizeCallAction

- (CXSetVideoPresentationSizeCallAction)initWithCallUUID:(id)d videoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationSizeCallAction;
  result = [(CXCallAction *)&v7 initWithCallUUID:d];
  if (result)
  {
    result->_videoPresentationSize.width = width;
    result->_videoPresentationSize.height = height;
  }

  return result;
}

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXSetVideoPresentationSizeCallAction;
  customDescription = [(CXCallAction *)&v6 customDescription];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize];
  v4 = NSStringFromSize(v8);
  [customDescription appendFormat:@" videoPresentationSize=%@", v4];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationSizeCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize:v7.receiver];
  [copyCopy setVideoPresentationSize:?];
}

- (CXSetVideoPresentationSizeCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CXSetVideoPresentationSizeCallAction;
  v5 = [(CXCallAction *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_videoPresentationSize = &v5->_videoPresentationSize;
    v8 = NSStringFromSelector(sel_videoPresentationSize);
    [coderCopy decodeSizeForKey:v8];
    *&p_videoPresentationSize->width = v9;
    v6->_videoPresentationSize.height = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CXSetVideoPresentationSizeCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v10 encodeWithCoder:coderCopy];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize:v10.receiver];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_videoPresentationSize);
  [coderCopy encodeSize:v9 forKey:{v6, v8}];
}

- (CGSize)videoPresentationSize
{
  width = self->_videoPresentationSize.width;
  height = self->_videoPresentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
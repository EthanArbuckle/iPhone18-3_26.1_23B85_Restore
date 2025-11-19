@interface CXSetVideoPresentationSizeCallAction
- (CGSize)videoPresentationSize;
- (CXSetVideoPresentationSizeCallAction)initWithCallUUID:(id)a3 videoPresentationSize:(CGSize)a4;
- (CXSetVideoPresentationSizeCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetVideoPresentationSizeCallAction

- (CXSetVideoPresentationSizeCallAction)initWithCallUUID:(id)a3 videoPresentationSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationSizeCallAction;
  result = [(CXCallAction *)&v7 initWithCallUUID:a3];
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
  v3 = [(CXCallAction *)&v6 customDescription];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize];
  v4 = NSStringFromSize(v8);
  [v3 appendFormat:@" videoPresentationSize=%@", v4];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationSizeCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize:v7.receiver];
  [v6 setVideoPresentationSize:?];
}

- (CXSetVideoPresentationSizeCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CXSetVideoPresentationSizeCallAction;
  v5 = [(CXCallAction *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_videoPresentationSize = &v5->_videoPresentationSize;
    v8 = NSStringFromSelector(sel_videoPresentationSize);
    [v4 decodeSizeForKey:v8];
    *&p_videoPresentationSize->width = v9;
    v6->_videoPresentationSize.height = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CXSetVideoPresentationSizeCallAction;
  v4 = a3;
  [(CXCallAction *)&v10 encodeWithCoder:v4];
  [(CXSetVideoPresentationSizeCallAction *)self videoPresentationSize:v10.receiver];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(sel_videoPresentationSize);
  [v4 encodeSize:v9 forKey:{v6, v8}];
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
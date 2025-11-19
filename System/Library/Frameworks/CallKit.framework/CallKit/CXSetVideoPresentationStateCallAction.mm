@interface CXSetVideoPresentationStateCallAction
- (CXSetVideoPresentationStateCallAction)initWithCallUUID:(id)a3 videoPresentationState:(int64_t)a4;
- (CXSetVideoPresentationStateCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetVideoPresentationStateCallAction

- (CXSetVideoPresentationStateCallAction)initWithCallUUID:(id)a3 videoPresentationState:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = CXSetVideoPresentationStateCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_videoPresentationState = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetVideoPresentationStateCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" videoPresentationState=%ld", -[CXSetVideoPresentationStateCallAction videoPresentationState](self, "videoPresentationState")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationStateCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [v6 setVideoPresentationState:{-[CXSetVideoPresentationStateCallAction videoPresentationState](self, "videoPresentationState", v7.receiver, v7.super_class)}];
}

- (CXSetVideoPresentationStateCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetVideoPresentationStateCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_videoPresentationState);
    v5->_videoPresentationState = [v4 decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationStateCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetVideoPresentationStateCallAction *)self videoPresentationState:v7.receiver];
  v6 = NSStringFromSelector(sel_videoPresentationState);
  [v4 encodeInteger:v5 forKey:v6];
}

@end
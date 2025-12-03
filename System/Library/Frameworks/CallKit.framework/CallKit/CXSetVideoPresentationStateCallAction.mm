@interface CXSetVideoPresentationStateCallAction
- (CXSetVideoPresentationStateCallAction)initWithCallUUID:(id)d videoPresentationState:(int64_t)state;
- (CXSetVideoPresentationStateCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetVideoPresentationStateCallAction

- (CXSetVideoPresentationStateCallAction)initWithCallUUID:(id)d videoPresentationState:(int64_t)state
{
  v6.receiver = self;
  v6.super_class = CXSetVideoPresentationStateCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_videoPresentationState = state;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetVideoPresentationStateCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" videoPresentationState=%ld", -[CXSetVideoPresentationStateCallAction videoPresentationState](self, "videoPresentationState")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationStateCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setVideoPresentationState:{-[CXSetVideoPresentationStateCallAction videoPresentationState](self, "videoPresentationState", v7.receiver, v7.super_class)}];
}

- (CXSetVideoPresentationStateCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetVideoPresentationStateCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_videoPresentationState);
    v5->_videoPresentationState = [coderCopy decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetVideoPresentationStateCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetVideoPresentationStateCallAction *)self videoPresentationState:v7.receiver];
  v6 = NSStringFromSelector(sel_videoPresentationState);
  [coderCopy encodeInteger:v5 forKey:v6];
}

@end
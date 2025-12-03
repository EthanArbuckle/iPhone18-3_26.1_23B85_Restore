@interface PKFakeUITapGestureForRequirements
- (BOOL)isEnabled;
@end

@implementation PKFakeUITapGestureForRequirements

- (BOOL)isEnabled
{
  delegate = [(PKFakeUITapGestureForRequirements *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKFakeUITapGestureForRequirements *)self delegate];
    v6 = [delegate2 _scribbleInteractionIsEnabled:0];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKFakeUITapGestureForRequirements;
    return [(PKFakeUITapGestureForRequirements *)&v8 isEnabled];
  }
}

@end
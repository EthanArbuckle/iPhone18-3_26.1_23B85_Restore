@interface DisplayMainViewController.KeyboardResponder
- (UIEdgeInsets)floatingKeyboardEdgeInsets;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)loadView;
@end

@implementation DisplayMainViewController.KeyboardResponder

- (UIEdgeInsets)floatingKeyboardEdgeInsets
{
  selfCopy = self;
  sub_100036E98();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100037010();
}

- (void)insertText:(id)text
{
  v4 = sub_100057A50();
  v6 = v5;
  selfCopy = self;
  sub_1000370C0(v4, v6);
}

- (void)deleteBackward
{
  selfCopy = self;
  sub_1000372B4();
}

@end
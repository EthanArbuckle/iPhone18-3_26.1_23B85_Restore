@interface KeyboardObserver
+ (id)sharedInstance;
- (CGRect)keyboardFrame;
- (KeyboardObserver)init;
- (void)keyboardWillOrDidChangeFrame:(id)a3;
@end

@implementation KeyboardObserver

+ (id)sharedInstance
{
  if (qword_10195EA88 != -1)
  {
    dispatch_once(&qword_10195EA88, &stru_10164D730);
  }

  v3 = qword_10195EA90;

  return v3;
}

- (KeyboardObserver)init
{
  v8.receiver = self;
  v8.super_class = KeyboardObserver;
  v2 = [(KeyboardObserver *)&v8 init];
  v3 = v2;
  if (v2)
  {
    size = CGRectNull.size;
    v2->_keyboardFrame.origin = CGRectNull.origin;
    v2->_keyboardFrame.size = size;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];
  }

  return v3;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)keyboardWillOrDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v9 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];

  if (v9)
  {
    [v9 CGRectValue];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  [(KeyboardObserver *)self setKeyboardFrame:x, y, width, height];
}

@end
@interface TUIStringTextFragment
- (TUIStringTextFragment)initWithString:(id)string;
@end

@implementation TUIStringTextFragment

- (TUIStringTextFragment)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TUIStringTextFragment;
  v5 = [(TUIStringTextFragment *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

@end
@interface TUIStringTextFragment
- (TUIStringTextFragment)initWithString:(id)a3;
@end

@implementation TUIStringTextFragment

- (TUIStringTextFragment)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIStringTextFragment;
  v5 = [(TUIStringTextFragment *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

@end
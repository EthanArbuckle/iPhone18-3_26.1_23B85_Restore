@interface MapsSiriAction
- (MapsSiriAction)initWithTitle:(id)a3 userInfo:(id)a4;
@end

@implementation MapsSiriAction

- (MapsSiriAction)initWithTitle:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MapsSiriAction;
  v8 = [(MapsSiriAction *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_userInfo, a4);
  }

  return v8;
}

@end
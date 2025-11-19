@interface UIToolbar
- (id)barButtonViews;
@end

@implementation UIToolbar

- (id)barButtonViews
{
  v3 = objc_opt_new();
  v4 = [(UIToolbar *)self items];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E0F8;
  v7[3] = &unk_1000C5218;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

@end
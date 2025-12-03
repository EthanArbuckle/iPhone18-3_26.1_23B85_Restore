@interface MapsSiriAction
- (MapsSiriAction)initWithTitle:(id)title userInfo:(id)info;
@end

@implementation MapsSiriAction

- (MapsSiriAction)initWithTitle:(id)title userInfo:(id)info
{
  titleCopy = title;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = MapsSiriAction;
  v8 = [(MapsSiriAction *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_userInfo, info);
  }

  return v8;
}

@end
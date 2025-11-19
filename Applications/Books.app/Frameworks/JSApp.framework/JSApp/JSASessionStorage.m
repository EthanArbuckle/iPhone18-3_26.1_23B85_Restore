@interface JSASessionStorage
+ (id)sharedInstance;
- (JSASessionStorage)init;
- (void)removeItem:(id)a3;
@end

@implementation JSASessionStorage

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_859C;
  block[3] = &unk_B25E8;
  block[4] = a1;
  if (qword_CC0A0 != -1)
  {
    dispatch_once(&qword_CC0A0, block);
  }

  v2 = qword_CC0A8;

  return v2;
}

- (JSASessionStorage)init
{
  v6.receiver = self;
  v6.super_class = JSASessionStorage;
  v2 = [(JSASessionStorage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    values = v2->_values;
    v2->_values = v3;
  }

  return v2;
}

- (void)removeItem:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_values removeObjectForKey:?];
  }
}

@end
@interface THBookUserDefaults
- (BOOL)BOOLForKey:(id)key;
- (THBookUserDefaults)initWithBookID:(id)d;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)p_modifyBookDefaultsDictionary:(id)dictionary;
- (void)p_readBookDefaultsDictionary:(id)dictionary;
- (void)registerDefaults:(id)defaults;
- (void)removeObjectForKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation THBookUserDefaults

- (THBookUserDefaults)initWithBookID:(id)d
{
  if (!d)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8.receiver = self;
  v8.super_class = THBookUserDefaults;
  v5 = [(THBookUserDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (d)
    {
      v5->_bookID = [d copy];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THBookUserDefaults;
  [(THBookUserDefaults *)&v3 dealloc];
}

- (id)objectForKey:(id)key
{
  if (!key)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1D183C;
  v12 = sub_1D184C;
  v13 = 0;
  if (key)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1D1858;
    v7[3] = &unk_45F130;
    v7[4] = key;
    v7[5] = &v8;
    [(THBookUserDefaults *)self p_readBookDefaultsDictionary:v7];
    v5 = v9[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    if (key)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1D19E8;
      v5[3] = &unk_45F158;
      v5[4] = object;
      v5[5] = key;
      [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v5];
      return;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (key)
    {
      return;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
}

- (void)removeObjectForKey:(id)key
{
  if (key)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1D1AD8;
    v3[3] = &unk_45F180;
    v3[4] = key;
    [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (BOOL)BOOLForKey:(id)key
{
  [(THBookUserDefaults *)self objectForKey:key];
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3 || (objc_opt_class(), (v3 = TSUDynamicCast()) != 0))
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  v6 = [NSNumber numberWithBool:bool];

  [(THBookUserDefaults *)self setObject:v6 forKey:key];
}

- (void)registerDefaults:(id)defaults
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1D1C0C;
  v3[3] = &unk_45F180;
  v3[4] = defaults;
  [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v3];
}

- (void)p_readBookDefaultsDictionary:(id)dictionary
{
  objc_opt_class();
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", self->_bookID];
  v5 = TSUCheckedDynamicCast();
  v6 = *(dictionary + 2);

  v6(dictionary, v5);
}

- (void)p_modifyBookDefaultsDictionary:(id)dictionary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1D183C;
  v12 = sub_1D184C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1D1ED0;
  v7[3] = &unk_45F1A8;
  v7[4] = &v8;
  [(THBookUserDefaults *)self p_readBookDefaultsDictionary:v7];
  if (!v9[5])
  {
    v5 = +[NSMutableDictionary dictionary];
    v9[5] = v5;
  }

  (*(dictionary + 2))(dictionary);
  v6 = +[NSUserDefaults standardUserDefaults];
  [(NSUserDefaults *)v6 setObject:v9[5] forKey:self->_bookID];
  _Block_object_dispose(&v8, 8);
}

@end
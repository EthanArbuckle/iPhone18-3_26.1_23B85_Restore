@interface THBookUserDefaults
- (BOOL)BOOLForKey:(id)a3;
- (THBookUserDefaults)initWithBookID:(id)a3;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)p_modifyBookDefaultsDictionary:(id)a3;
- (void)p_readBookDefaultsDictionary:(id)a3;
- (void)registerDefaults:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation THBookUserDefaults

- (THBookUserDefaults)initWithBookID:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8.receiver = self;
  v8.super_class = THBookUserDefaults;
  v5 = [(THBookUserDefaults *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v5->_bookID = [a3 copy];
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

- (id)objectForKey:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1D183C;
  v12 = sub_1D184C;
  v13 = 0;
  if (a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1D1858;
    v7[3] = &unk_45F130;
    v7[4] = a3;
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1D19E8;
      v5[3] = &unk_45F158;
      v5[4] = a3;
      v5[5] = a4;
      [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v5];
      return;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (a4)
    {
      return;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
}

- (void)removeObjectForKey:(id)a3
{
  if (a3)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1D1AD8;
    v3[3] = &unk_45F180;
    v3[4] = a3;
    [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (BOOL)BOOLForKey:(id)a3
{
  [(THBookUserDefaults *)self objectForKey:a3];
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3 || (objc_opt_class(), (v3 = TSUDynamicCast()) != 0))
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v6 = [NSNumber numberWithBool:a3];

  [(THBookUserDefaults *)self setObject:v6 forKey:a4];
}

- (void)registerDefaults:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1D1C0C;
  v3[3] = &unk_45F180;
  v3[4] = a3;
  [(THBookUserDefaults *)self p_modifyBookDefaultsDictionary:v3];
}

- (void)p_readBookDefaultsDictionary:(id)a3
{
  objc_opt_class();
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", self->_bookID];
  v5 = TSUCheckedDynamicCast();
  v6 = *(a3 + 2);

  v6(a3, v5);
}

- (void)p_modifyBookDefaultsDictionary:(id)a3
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

  (*(a3 + 2))(a3);
  v6 = +[NSUserDefaults standardUserDefaults];
  [(NSUserDefaults *)v6 setObject:v9[5] forKey:self->_bookID];
  _Block_object_dispose(&v8, 8);
}

@end
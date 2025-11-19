@interface InstapaperLoginSession
- (void)engine:(id)a3 connection:(id)a4 didReceiveAuthToken:(id)a5 andTokenSecret:(id)a6;
- (void)engine:(id)a3 didFailConnection:(id)a4 error:(id)a5;
@end

@implementation InstapaperLoginSession

- (void)engine:(id)a3 connection:(id)a4 didReceiveAuthToken:(id)a5 andTokenSecret:(id)a6
{
  v6 = a6;
  if (a5)
  {
    v10 = sub_23E3AA9D0();
    v12 = v11;
    if (v6)
    {
LABEL_3:
      v13 = sub_23E3AA9D0();
      v6 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_23E34D14C(v17, v18, v10, v12, v13, v6);
}

- (void)engine:(id)a3 didFailConnection:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v12 = a5;
  sub_23E34D464(v12, v11, a5);
}

@end
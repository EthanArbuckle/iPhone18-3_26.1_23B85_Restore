@interface InstapaperLoginSession
- (void)engine:(id)engine connection:(id)connection didReceiveAuthToken:(id)token andTokenSecret:(id)secret;
- (void)engine:(id)engine didFailConnection:(id)connection error:(id)error;
@end

@implementation InstapaperLoginSession

- (void)engine:(id)engine connection:(id)connection didReceiveAuthToken:(id)token andTokenSecret:(id)secret
{
  secretCopy = secret;
  if (token)
  {
    v10 = sub_23E3AA9D0();
    v12 = v11;
    if (secretCopy)
    {
LABEL_3:
      v13 = sub_23E3AA9D0();
      secretCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (secret)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  engineCopy = engine;
  connectionCopy = connection;
  selfCopy = self;
  sub_23E34D14C(selfCopy, v18, v10, v12, v13, secretCopy);
}

- (void)engine:(id)engine didFailConnection:(id)connection error:(id)error
{
  engineCopy = engine;
  connectionCopy = connection;
  selfCopy = self;
  errorCopy = error;
  sub_23E34D464(errorCopy, v11, error);
}

@end
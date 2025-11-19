@interface NSFileManager
- (BOOL)crl_directoryExistsAt:(id)a3;
@end

@implementation NSFileManager

- (BOOL)crl_directoryExistsAt:(id)a3
{
  v4 = sub_10007DD94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007DD24();
  v8 = self;
  if (sub_10007DCA4())
  {
    HIBYTE(v12) = 0;
    sub_10007DD44();
    v9 = sub_10007E404();

    v10 = [(NSFileManager *)v8 fileExistsAtPath:v9 isDirectory:&v12 + 7];

    (*(v5 + 8))(v7, v4);
    return v10 & HIBYTE(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

@end
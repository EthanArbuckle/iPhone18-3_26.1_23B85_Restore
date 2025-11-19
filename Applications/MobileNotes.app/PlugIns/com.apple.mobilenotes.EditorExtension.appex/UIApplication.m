@interface UIApplication
- (void)my_openURL:(id)a3 originatingView:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation UIApplication

- (void)my_openURL:(id)a3 originatingView:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v9 = sub_10000B344();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  sub_10000B314();
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_10000B1D4;
  }

  else
  {
    v15 = 0;
  }

  v16 = a4;
  v17 = self;
  sub_100009A2C(v16, v14, v15, v18);
  sub_10000ADF4(v14);

  (*(v10 + 8))(v13, v9);
}

@end
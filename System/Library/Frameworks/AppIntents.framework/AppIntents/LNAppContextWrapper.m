@interface LNAppContextWrapper
- (LNAppContextWrapper)init;
- (void)performAction:(id)a3 options:(id)a4 reportingProgress:(id)a5 delegate:(id)a6 auditToken:(id *)a7 completionHandler:(id)a8;
@end

@implementation LNAppContextWrapper

- (void)performAction:(id)a3 options:(id)a4 reportingProgress:(id)a5 delegate:(id)a6 auditToken:(id *)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(LNAppContextWrapper *)self appContext];
  v20 = *&a7->var0[4];
  v21[0] = *a7->var0;
  v21[1] = v20;
  [v19 performAction:v18 options:v17 reportingProgress:v16 delegate:v15 auditToken:v21 completionHandler:v14];
}

- (LNAppContextWrapper)init
{
  v7.receiver = self;
  v7.super_class = LNAppContextWrapper;
  v2 = [(LNAppContextWrapper *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    appContext = v2->_appContext;
    v2->_appContext = v3;

    v5 = v2;
  }

  return v2;
}

@end
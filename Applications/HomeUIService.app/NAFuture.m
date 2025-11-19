@interface NAFuture
- (id)_commitConfigurationReturningDirective:(unint64_t)a3 withContextMessage:(id)a4;
@end

@implementation NAFuture

- (id)_commitConfigurationReturningDirective:(unint64_t)a3 withContextMessage:(id)a4
{
  v6 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004F604;
  v18[3] = &unk_1000C78E0;
  v18[4] = a3;
  v7 = [(NAFuture *)self flatMap:v18];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10004F670;
  v16 = &unk_1000C5998;
  v17 = v6;
  v8 = v6;
  v9 = [v7 recover:&v13];
  v10 = [NAScheduler mainThreadScheduler:v13];
  v11 = [v9 reschedule:v10];

  return v11;
}

@end
@interface CameradReloaderController
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation CameradReloaderController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[CameradReloaderController setupWithInputs:responder:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v11, 0x20u);
  }

  [(CameradReloaderController *)self setInputs:v6];
  v9 = [(CameradReloaderController *)self inputs];

  if (!v9)
  {
    v10 = [(CameradReloaderController *)self result];
    [v10 setStatusCode:&off_100004170];

    [(CameradReloaderController *)self setFinished:1];
  }
}

- (void)start
{
  v3 = [(CameradReloaderController *)self result];
  [v3 setStatusCode:&off_100004188];

  LOBYTE(v3) = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  if (v3 & 1) != 0 || (v4)
  {
    v17 = 0;
    v7 = [CRPearlController powerCycleSensor:&v17];
    v6 = v17;
    v8 = [(CameradReloaderController *)self result];
    v9 = v8;
    if (!v7 || v6)
    {
      v10 = &off_1000041B8;
    }

    else
    {
      v10 = &off_1000041D0;
    }

    [v8 setStatusCode:v10];
  }

  else
  {
    v5 = [(CameradReloaderController *)self result];
    [v5 setStatusCode:&off_1000041A0];

    v6 = 0;
  }

  v18[0] = @"error";
  v11 = [v6 description];
  v12 = v11;
  if (!v11)
  {
    v12 = +[NSNull null];
  }

  v18[1] = @"errorCode";
  v19[0] = v12;
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
  v14 = v13;
  if (!v13)
  {
    v14 = +[NSNull null];
  }

  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [(CameradReloaderController *)self result];
  [v16 setData:v15];

  if (!v13)
  {
  }

  if (!v11)
  {
  }

  [(CameradReloaderController *)self setFinished:1];
}

@end
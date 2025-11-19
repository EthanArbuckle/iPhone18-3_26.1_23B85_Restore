@interface TouchIdPrearmContext
+ (void)prearmForUser:(id)a3 request:(id)a4 reply:(id)a5;
- (TouchIdPrearmContext)initWithUserId:(id)a3;
@end

@implementation TouchIdPrearmContext

- (TouchIdPrearmContext)initWithUserId:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TouchIdPrearmContext;
  v5 = [(TouchIdPrearmContext *)&v18 init];
  if (v5)
  {
    v6 = +[BiometryHelper touchIdInstance];
    v7 = [v6 device];

    v17 = 0;
    v8 = [v7 createMatchOperationWithError:&v17];
    v9 = v17;
    matchOperation = v5->_matchOperation;
    v5->_matchOperation = v8;

    [(BKMatchOperation *)v5->_matchOperation setPriority:50];
    [(BKMatchOperation *)v5->_matchOperation setPurpose:5];
    [(BKMatchOperation *)v5->_matchOperation setUserID:v4];
    v11 = v5->_matchOperation;
    v16 = v9;
    v12 = [(BKMatchOperation *)v11 startWithError:&v16];
    v13 = v16;
    v14 = v16;

    if ((v12 & 1) == 0)
    {
      objc_storeStrong(&v5->_failure, v13);
    }
  }

  return v5;
}

+ (void)prearmForUser:(id)a3 request:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ContextManager sharedInstance];
  v23 = 0;
  v11 = [v10 loadModule:1 error:&v23];
  v12 = v23;

  if (v11)
  {
    v13 = [v11 mechanismManager];
    v24 = @"UserId";
    v25 = v7;
    v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = v12;
    v15 = [v13 loadMechanism:1 initParams:v14 request:v8 error:&v22];
    v16 = v22;

    v21 = v16;
    LODWORD(v14) = [v15 isAvailableForPurpose:0 error:&v21];
    v12 = v21;

    if (v14)
    {
      v17 = [[TouchIdPrearmContext alloc] initWithUserId:v7];
      v18 = [(TouchIdPrearmContext *)v17 failure];

      if (v18)
      {
        v19 = [(TouchIdPrearmContext *)v17 failure];
        v20 = [LAErrorHelper errorWithCode:-1 message:@"Failed to prearm" suberror:v19];

        v17 = 0;
        v12 = v20;
      }
    }

    else
    {
      v17 = 0;
    }

    v9[2](v9, v17, v12);
  }

  else
  {
    v9[2](v9, 0, v12);
  }
}

@end
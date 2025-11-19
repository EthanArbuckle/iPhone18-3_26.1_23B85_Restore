@interface TUITransaction
+ (id)_currentOrNewTransactionWithName:(id)a3 options:(id)a4 block:(id)a5;
+ (id)currentOrImplicitTransaction;
+ (id)implicitTransaction;
+ (id)noAnimationTransaction;
+ (id)transactionWithName:(id)a3 options:(id)a4;
+ (id)transactionWithOptions:(id)a3;
+ (void)js_transactionWithBlock:(id)a3 options:(id)a4;
@end

@implementation TUITransaction

+ (id)transactionWithOptions:(id)a3
{
  v3 = a3;
  v4 = [_TUITransactionAutoProxy alloc];
  v5 = [[_TUITransaction alloc] initWithName:0 options:v3];

  v6 = [(_TUITransactionAutoProxy *)v4 initWithTransaction:v5];

  return v6;
}

+ (id)currentOrImplicitTransaction
{
  v3 = +[NSThread currentThread];
  v4 = [v3 threadDictionary];
  v5 = [v4 objectForKeyedSubscript:@"TUITransactionCurrent"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 implicitTransaction];
  }

  v8 = v7;

  return v8;
}

+ (id)implicitTransaction
{
  v2 = [_TUITransactionAutoProxy alloc];
  v3 = [_TUITransaction alloc];
  v4 = +[TUITransactionOptions defaultImplicitOptions];
  v5 = [(_TUITransaction *)v3 initWithName:0 options:v4];
  v6 = [(_TUITransactionAutoProxy *)v2 initWithTransaction:v5];

  return v6;
}

+ (id)noAnimationTransaction
{
  v2 = [_TUITransactionAutoProxy alloc];
  v3 = [_TUITransaction alloc];
  v4 = +[TUITransactionOptions noAnimationOptions];
  v5 = [(_TUITransaction *)v3 initWithName:0 options:v4];
  v6 = [(_TUITransactionAutoProxy *)v2 initWithTransaction:v5];

  return v6;
}

+ (id)transactionWithName:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [_TUITransactionAutoProxy alloc];
  v8 = [[_TUITransaction alloc] initWithName:v6 options:v5];

  v9 = [(_TUITransactionAutoProxy *)v7 initWithTransaction:v8];

  return v9;
}

+ (id)_currentOrNewTransactionWithName:(id)a3 options:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSThread currentThread];
  v11 = [v10 threadDictionary];
  v12 = [v11 objectForKeyedSubscript:@"TUITransactionCurrent"];

  if (v12)
  {
    v9[2](v9, v12);
  }

  else
  {
    v13 = [_TUITransactionAutoProxy alloc];
    v14 = [[_TUITransaction alloc] initWithName:v7 options:v8];
    v12 = [(_TUITransactionAutoProxy *)v13 initWithTransaction:v14];

    v15 = +[NSThread currentThread];
    v16 = [v15 threadDictionary];
    [v16 setObject:v12 forKeyedSubscript:@"TUITransactionCurrent"];

    v9[2](v9, v12);
    v17 = +[NSThread currentThread];
    v18 = [v17 threadDictionary];
    [v18 setObject:0 forKeyedSubscript:@"TUITransactionCurrent"];
  }

  return v12;
}

+ (void)js_transactionWithBlock:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isObject])
  {
    v8 = +[TUITransactionOptions defaultImplicitOptions];
    v9 = objc_opt_class();
    v10 = [v7 objectForKeyedSubscript:@"animated"];
    v11 = TUIDynamicCast(v9, v10);

    v12 = objc_opt_class();
    v13 = [v7 objectForKeyedSubscript:@"duration"];
    v14 = TUIDynamicCast(v12, v13);

    if (v11 && ![v11 BOOLValue] || v14 && (objc_msgSend(v14, "floatValue"), v15 == 0.0))
    {
      v16 = +[TUITransactionOptions noAnimationOptions];
    }

    else
    {
      v16 = [v8 mutableCopy];
      if (v11)
      {
        [v11 floatValue];
        [v16 setAnimate:v17 != 0.0];
      }

      if (v14)
      {
        [v14 floatValue];
        [v16 setDuration:v18];
      }
    }

    v19 = [a1 transactionWithOptions:v16];
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    v21 = [v6 callWithArguments:v20];

    [v19 commit];
  }
}

@end
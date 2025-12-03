@interface TUITransaction
+ (id)_currentOrNewTransactionWithName:(id)name options:(id)options block:(id)block;
+ (id)currentOrImplicitTransaction;
+ (id)implicitTransaction;
+ (id)noAnimationTransaction;
+ (id)transactionWithName:(id)name options:(id)options;
+ (id)transactionWithOptions:(id)options;
+ (void)js_transactionWithBlock:(id)block options:(id)options;
@end

@implementation TUITransaction

+ (id)transactionWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [_TUITransactionAutoProxy alloc];
  v5 = [[_TUITransaction alloc] initWithName:0 options:optionsCopy];

  v6 = [(_TUITransactionAutoProxy *)v4 initWithTransaction:v5];

  return v6;
}

+ (id)currentOrImplicitTransaction
{
  v3 = +[NSThread currentThread];
  threadDictionary = [v3 threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:@"TUITransactionCurrent"];
  v6 = v5;
  if (v5)
  {
    implicitTransaction = v5;
  }

  else
  {
    implicitTransaction = [self implicitTransaction];
  }

  v8 = implicitTransaction;

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

+ (id)transactionWithName:(id)name options:(id)options
{
  optionsCopy = options;
  nameCopy = name;
  v7 = [_TUITransactionAutoProxy alloc];
  v8 = [[_TUITransaction alloc] initWithName:nameCopy options:optionsCopy];

  v9 = [(_TUITransactionAutoProxy *)v7 initWithTransaction:v8];

  return v9;
}

+ (id)_currentOrNewTransactionWithName:(id)name options:(id)options block:(id)block
{
  nameCopy = name;
  optionsCopy = options;
  blockCopy = block;
  v10 = +[NSThread currentThread];
  threadDictionary = [v10 threadDictionary];
  v12 = [threadDictionary objectForKeyedSubscript:@"TUITransactionCurrent"];

  if (v12)
  {
    blockCopy[2](blockCopy, v12);
  }

  else
  {
    v13 = [_TUITransactionAutoProxy alloc];
    v14 = [[_TUITransaction alloc] initWithName:nameCopy options:optionsCopy];
    v12 = [(_TUITransactionAutoProxy *)v13 initWithTransaction:v14];

    v15 = +[NSThread currentThread];
    threadDictionary2 = [v15 threadDictionary];
    [threadDictionary2 setObject:v12 forKeyedSubscript:@"TUITransactionCurrent"];

    blockCopy[2](blockCopy, v12);
    v17 = +[NSThread currentThread];
    threadDictionary3 = [v17 threadDictionary];
    [threadDictionary3 setObject:0 forKeyedSubscript:@"TUITransactionCurrent"];
  }

  return v12;
}

+ (void)js_transactionWithBlock:(id)block options:(id)options
{
  blockCopy = block;
  optionsCopy = options;
  if ([blockCopy isObject])
  {
    v8 = +[TUITransactionOptions defaultImplicitOptions];
    v9 = objc_opt_class();
    v10 = [optionsCopy objectForKeyedSubscript:@"animated"];
    v11 = TUIDynamicCast(v9, v10);

    v12 = objc_opt_class();
    v13 = [optionsCopy objectForKeyedSubscript:@"duration"];
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

    v19 = [self transactionWithOptions:v16];
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    v21 = [blockCopy callWithArguments:v20];

    [v19 commit];
  }
}

@end
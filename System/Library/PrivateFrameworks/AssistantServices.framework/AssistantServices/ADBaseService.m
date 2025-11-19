@interface ADBaseService
- (ADBaseService)init;
- (SEL)_selectorForCommandClass:(id)a3 andDomain:(id)a4;
- (id)commandsForDomain:(id)a3;
- (void)_registerCommandClass:(id)a3 forDomain:(id)a4 withSelector:(SEL)a5 forRegistry:(id)a6;
- (void)_unhandledCommand:(id)a3 forDomain:(id)a4 completion:(id)a5;
- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6;
@end

@implementation ADBaseService

- (void)_unhandledCommand:(id)a3 forDomain:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = a5;
    v7 = [[SACommandFailed alloc] initWithReason:@"Command not supported"];
    (*(a5 + 2))(v6, v7, 0);
  }
}

- (void)handleCommand:(id)a3 forDomain:(id)a4 executionContext:(id)a5 reply:(id)a6
{
  v13 = a4;
  v9 = a6;
  v10 = a3;
  v11 = [v10 encodedClassName];
  v12 = [(ADBaseService *)self _selectorForCommandClass:v11 andDomain:v13];

  if (v12)
  {
    [self v12];
  }

  else
  {
    [(ADBaseService *)self _unhandledCommand:v10 forDomain:v13 completion:v9];
  }
}

- (id)commandsForDomain:(id)a3
{
  v3 = [(NSDictionary *)self->_commandRegistry objectForKey:a3];
  v4 = [v3 allKeys];

  return v4;
}

- (SEL)_selectorForCommandClass:(id)a3 andDomain:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_commandRegistry objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 pointerValue];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_registerCommandClass:(id)a3 forDomain:(id)a4 withSelector:(SEL)a5 forRegistry:(id)a6
{
  v13 = a4;
  v9 = a6;
  if (v9)
  {
    v10 = a3;
    v11 = [v9 objectForKey:v13];
    if (!v11)
    {
      v11 = +[NSMutableDictionary dictionary];
      [v9 setObject:v11 forKey:v13];
    }

    v12 = [NSValue valueWithPointer:a5];
    [v11 setObject:v12 forKey:v10];
  }
}

- (ADBaseService)init
{
  v9.receiver = self;
  v9.super_class = ADBaseService;
  v2 = [(ADBaseService *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(ADService *)v2 setIdentifier:v4];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(ADBaseService *)v2 _registerCommandHandlersWithRegistry:v5];
    v6 = [v5 copy];
    commandRegistry = v2->_commandRegistry;
    v2->_commandRegistry = v6;
  }

  return v2;
}

@end
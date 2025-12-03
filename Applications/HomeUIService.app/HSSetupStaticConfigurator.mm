@interface HSSetupStaticConfigurator
- (HSSetupStaticConfigurator)initWithContentViewControllers:(id)controllers;
- (HSSetupStaticConfigurator)initWithViewControllers:(id)controllers;
- (id)_nextViewControllerForResults:(id)results;
@end

@implementation HSSetupStaticConfigurator

- (HSSetupStaticConfigurator)initWithViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011CDC;
  v11[3] = &unk_1000C5D68;
  selfCopy = self;
  v12 = selfCopy;
  [controllersCopy na_each:v11];
  firstObject = [controllersCopy firstObject];
  v10.receiver = selfCopy;
  v10.super_class = HSSetupStaticConfigurator;
  v8 = [(HSSetupConfigurator *)&v10 initWithInitialViewController:firstObject];

  if (v8)
  {
    objc_storeStrong(&v8->_staticViewControllers, controllers);
  }

  return v8;
}

- (HSSetupStaticConfigurator)initWithContentViewControllers:(id)controllers
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011D94;
  v8[3] = &unk_1000C5D90;
  selfCopy = self;
  v9 = selfCopy;
  v5 = [controllers na_map:v8];
  v6 = [(HSSetupStaticConfigurator *)selfCopy initWithViewControllers:v5];

  return v6;
}

- (id)_nextViewControllerForResults:(id)results
{
  staticViewControllers = [(HSSetupStaticConfigurator *)self staticViewControllers];
  currentViewController = [(HSSetupStaticConfigurator *)self currentViewController];
  v6 = [staticViewControllers indexOfObject:currentViewController];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentViewController2 = [(HSSetupStaticConfigurator *)self currentViewController];
    staticViewControllers2 = [(HSSetupStaticConfigurator *)self staticViewControllers];
    NSLog(@"currentViewController %@ not in staticViewControllers %@", currentViewController2, staticViewControllers2);
  }

  v9 = v6 + 1;
  staticViewControllers3 = [(HSSetupStaticConfigurator *)self staticViewControllers];
  v11 = [staticViewControllers3 count];

  if (v9 < v11 && (-[HSSetupStaticConfigurator staticViewControllers](self, "staticViewControllers"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectAtIndexedSubscript:v9], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [NAFuture futureWithResult:v13];
  }

  else
  {
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

@end
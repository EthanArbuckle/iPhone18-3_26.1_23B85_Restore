@interface BCAugmentedExperienceRegistry
+ (id)sharedRegistry;
- (BCAugmentedExperienceRegistry)init;
- (id)presenterForExperienceType:(int64_t)a3;
- (void)registerPresenterClass:(Class)a3 forExperienceType:(int64_t)a4;
@end

@implementation BCAugmentedExperienceRegistry

+ (id)sharedRegistry
{
  if (qword_342748 != -1)
  {
    sub_1E70D0();
  }

  v3 = qword_342740;

  return v3;
}

- (BCAugmentedExperienceRegistry)init
{
  v6.receiver = self;
  v6.super_class = BCAugmentedExperienceRegistry;
  v2 = [(BCAugmentedExperienceRegistry *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    presenters = v2->_presenters;
    v2->_presenters = v3;
  }

  return v2;
}

- (void)registerPresenterClass:(Class)a3 forExperienceType:(int64_t)a4
{
  v7 = [(BCAugmentedExperienceRegistry *)self presenters];
  v6 = [NSNumber numberWithInteger:a4];
  [v7 setObject:a3 forKey:v6];
}

- (id)presenterForExperienceType:(int64_t)a3
{
  v4 = [(BCAugmentedExperienceRegistry *)self presenters];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = objc_alloc_init(v6);
    if ([v7 conformsToProtocol:&OBJC_PROTOCOL___BCAugmentedExperiencePresenting])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface MetalHUDElementListPreferences
+ (id)allElementCandidates;
- (id)init:(id)init;
- (void)_updatePreferences;
- (void)setElementEnabled:(id)enabled enabled:(BOOL)a4;
- (void)setToDefault;
@end

@implementation MetalHUDElementListPreferences

+ (id)allElementCandidates
{
  if (qword_49E48 != -1)
  {
    sub_26AB4();
  }

  v3 = qword_49E40;

  return v3;
}

- (id)init:(id)init
{
  initCopy = init;
  v15.receiver = self;
  v15.super_class = MetalHUDElementListPreferences;
  v6 = [(MetalHUDElementListPreferences *)&v15 init];
  if (v6)
  {
    v7 = objc_opt_new();
    elements = v6->_elements;
    v6->_elements = v7;

    objc_storeStrong(&v6->_preferences, init);
    preferences = [initCopy preferences];
    v10 = [preferences objectForKeyedSubscript:@"MTL_HUD_ELEMENTS"];

    if (v10)
    {
      v11 = v6->_elements;
      lowercaseString = [v10 lowercaseString];
      v13 = [lowercaseString componentsSeparatedByString:{@", "}];
      [(NSMutableSet *)v11 addObjectsFromArray:v13];

      if (![initCopy version])
      {
        [(NSMutableSet *)v6->_elements addObject:@"gamemode"];
        [(NSMutableSet *)v6->_elements addObject:@"metalfx"];
      }
    }

    else
    {
      [(MetalHUDElementListPreferences *)v6 setToDefault];
    }
  }

  return v6;
}

- (void)setToDefault
{
  v3 = [NSMutableSet alloc];
  layer = [CFSTR(""device layer];
  v5 = [v3 initWithArray:layer];
  elements = self->_elements;
  self->_elements = v5;

  [(MetalHUDElementListPreferences *)self _updatePreferences];
}

- (void)_updatePreferences
{
  allObjects = [(NSMutableSet *)self->_elements allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];

  if (v5)
  {
    preferences = [(MetalHUDPreferences *)self->_preferences preferences];
    [preferences setObject:v5 forKeyedSubscript:@"MTL_HUD_ELEMENTS"];

    [(MetalHUDPreferences *)self->_preferences writePreferences];
  }
}

- (void)setElementEnabled:(id)enabled enabled:(BOOL)a4
{
  elements = self->_elements;
  if (a4)
  {
    [(NSMutableSet *)elements addObject:enabled];
  }

  else
  {
    [(NSMutableSet *)elements removeObject:enabled];
  }

  [(MetalHUDElementListPreferences *)self _updatePreferences];
}

@end
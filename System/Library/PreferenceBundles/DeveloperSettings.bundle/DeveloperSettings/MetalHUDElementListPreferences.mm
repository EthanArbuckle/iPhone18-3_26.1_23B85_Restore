@interface MetalHUDElementListPreferences
+ (id)allElementCandidates;
- (id)init:(id)a3;
- (void)_updatePreferences;
- (void)setElementEnabled:(id)a3 enabled:(BOOL)a4;
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

- (id)init:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MetalHUDElementListPreferences;
  v6 = [(MetalHUDElementListPreferences *)&v15 init];
  if (v6)
  {
    v7 = objc_opt_new();
    elements = v6->_elements;
    v6->_elements = v7;

    objc_storeStrong(&v6->_preferences, a3);
    v9 = [v5 preferences];
    v10 = [v9 objectForKeyedSubscript:@"MTL_HUD_ELEMENTS"];

    if (v10)
    {
      v11 = v6->_elements;
      v12 = [v10 lowercaseString];
      v13 = [v12 componentsSeparatedByString:{@", "}];
      [(NSMutableSet *)v11 addObjectsFromArray:v13];

      if (![v5 version])
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
  v4 = [CFSTR(""device layer];
  v5 = [v3 initWithArray:v4];
  elements = self->_elements;
  self->_elements = v5;

  [(MetalHUDElementListPreferences *)self _updatePreferences];
}

- (void)_updatePreferences
{
  v3 = [(NSMutableSet *)self->_elements allObjects];
  v5 = [v3 componentsJoinedByString:{@", "}];

  if (v5)
  {
    v4 = [(MetalHUDPreferences *)self->_preferences preferences];
    [v4 setObject:v5 forKeyedSubscript:@"MTL_HUD_ELEMENTS"];

    [(MetalHUDPreferences *)self->_preferences writePreferences];
  }
}

- (void)setElementEnabled:(id)a3 enabled:(BOOL)a4
{
  elements = self->_elements;
  if (a4)
  {
    [(NSMutableSet *)elements addObject:a3];
  }

  else
  {
    [(NSMutableSet *)elements removeObject:a3];
  }

  [(MetalHUDElementListPreferences *)self _updatePreferences];
}

@end
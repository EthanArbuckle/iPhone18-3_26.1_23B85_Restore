@interface _SFBrowserConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)usesDarkTheme;
- (UITraitEnvironment)traitEnvironment;
- (_SFBrowserConfiguration)initWithPrivateBrowsingEnabled:(BOOL)a3 traitEnvironment:(id)a4 controlledByAutomation:(BOOL)a5;
- (id)description;
- (int64_t)barTintStyle;
@end

@implementation _SFBrowserConfiguration

- (int64_t)barTintStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);
  v4 = WeakRetained;
  configuration = self->_configuration;
  if (configuration == 1)
  {
    goto LABEL_5;
  }

  if (configuration)
  {
    goto LABEL_8;
  }

  v6 = [WeakRetained traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 >= 3)
  {
LABEL_5:
    v9 = [v4 traitCollection];
    v7 = [v9 userInterfaceStyle];

    if (v7 < 3)
    {
      v8 = &unk_1D47DE708;
      goto LABEL_7;
    }

LABEL_8:
    v10 = 5;
    goto LABEL_9;
  }

  v8 = &unk_1D47DE6F0;
LABEL_7:
  v10 = v8[v7];
LABEL_9:

  return v10;
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

- (_SFBrowserConfiguration)initWithPrivateBrowsingEnabled:(BOOL)a3 traitEnvironment:(id)a4 controlledByAutomation:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _SFBrowserConfiguration;
  v7 = a4;
  v8 = [(_SFBrowserConfiguration *)&v11 init];
  objc_storeWeak(&v8->_traitEnvironment, v7);

  v9 = 2;
  if (!v5)
  {
    v9 = 0;
  }

  if (v6)
  {
    v9 = 1;
  }

  v8->_configuration = v9;
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && self->_configuration == v5->_configuration;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  configuration = self->_configuration;
  v6 = @"default";
  if (configuration == 1)
  {
    v6 = @"private";
  }

  if (configuration == 2)
  {
    v7 = @"automation";
  }

  else
  {
    v7 = v6;
  }

  return [v3 stringWithFormat:@"<%@: %p; %@>", v4, self, v7];
}

- (BOOL)usesDarkTheme
{
  v2 = [(_SFBrowserConfiguration *)self barTintStyle];

  return MEMORY[0x1EEE1E558](v2);
}

@end
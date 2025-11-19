@interface _SFPerSitePreferencesSection
- (_SFPerSitePreferencesSection)initWithTitle:(id)a3 preferences:(id)a4;
@end

@implementation _SFPerSitePreferencesSection

- (_SFPerSitePreferencesSection)initWithTitle:(id)a3 preferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _SFPerSitePreferencesSection;
  v8 = [(_SFPerSitePreferencesSection *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    preferences = v8->_preferences;
    v8->_preferences = v11;

    v13 = v8;
  }

  return v8;
}

@end
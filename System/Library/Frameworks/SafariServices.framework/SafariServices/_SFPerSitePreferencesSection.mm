@interface _SFPerSitePreferencesSection
- (_SFPerSitePreferencesSection)initWithTitle:(id)title preferences:(id)preferences;
@end

@implementation _SFPerSitePreferencesSection

- (_SFPerSitePreferencesSection)initWithTitle:(id)title preferences:(id)preferences
{
  titleCopy = title;
  preferencesCopy = preferences;
  v15.receiver = self;
  v15.super_class = _SFPerSitePreferencesSection;
  v8 = [(_SFPerSitePreferencesSection *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [preferencesCopy copy];
    preferences = v8->_preferences;
    v8->_preferences = v11;

    v13 = v8;
  }

  return v8;
}

@end
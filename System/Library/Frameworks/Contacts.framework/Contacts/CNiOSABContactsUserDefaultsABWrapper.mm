@interface CNiOSABContactsUserDefaultsABWrapper
- (id)displayedContactsFilterRepresentationPref;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (void)setDisplayedContactsFilterRepresentationPref:(id)pref;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count;
@end

@implementation CNiOSABContactsUserDefaultsABWrapper

- (id)displayedContactsFilterRepresentationPref
{
  v2 = ABPeoplePickerPrefs();
  v3 = CFPreferencesCopyAppValue(@"displayedGroupRepresentation", v2);

  return v3;
}

- (void)setDisplayedContactsFilterRepresentationPref:(id)pref
{
  prefCopy = pref;
  v4 = ABPeoplePickerPrefs();
  CFPreferencesSetAppValue(@"displayedGroupRepresentation", prefCopy, v4);

  v5 = ABPeoplePickerPrefs();

  CFPreferencesAppSynchronize(v5);
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  v2 = ABPeoplePickerPrefs();

  return CFPreferencesGetAppIntegerValue(@"lastIgnoredNewDuplicatesCount", v2, 0);
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  v4 = ABPeoplePickerPrefs();
  CFPreferencesSetAppValue(@"lastIgnoredNewDuplicatesCount", v3, v4);
  v5 = ABPeoplePickerPrefs();

  CFPreferencesAppSynchronize(v5);
}

@end
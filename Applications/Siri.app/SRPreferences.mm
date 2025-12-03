@interface SRPreferences
- (NSUUID)lastPinnedTranscriptItemIdentifier;
- (SRPreferences)init;
- (void)preferences:(id)preferences didChangeValueForKey:(id)key;
- (void)setLastPinnedTranscriptItemIdentifier:(id)identifier;
@end

@implementation SRPreferences

- (SRPreferences)init
{
  v7.receiver = self;
  v7.super_class = SRPreferences;
  v2 = [(SRPreferences *)&v7 init];
  if (v2)
  {
    v3 = [SRUIFPreferences alloc];
    v4 = [v3 initWithSuiteName:SRUIFPreferencesDefaultDomain];
    internalPreferences = v2->_internalPreferences;
    v2->_internalPreferences = v4;

    [(SRUIFPreferences *)v2->_internalPreferences setDelegate:v2];
  }

  return v2;
}

- (void)preferences:(id)preferences didChangeValueForKey:(id)key
{
  preferencesCopy = preferences;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"SiriIsActive"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LastKnownInterfaceOrientation") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LastTranscriptVerticalContentOffset") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LastVisibleTranscriptItemIndex") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LastPinnedTranscriptItemIdentifier") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"TapToEditTipCount"))
  {
    [preferencesCopy synchronize];
  }
}

- (void)setLastPinnedTranscriptItemIdentifier:(id)identifier
{
  internalPreferences = self->_internalPreferences;
  uUIDString = [identifier UUIDString];
  [(SRUIFPreferences *)internalPreferences setObject:uUIDString forKey:@"LastPinnedTranscriptItemIdentifier"];
}

- (NSUUID)lastPinnedTranscriptItemIdentifier
{
  v3 = [NSUUID alloc];
  v4 = [(SRUIFPreferences *)self->_internalPreferences objectForKey:@"LastPinnedTranscriptItemIdentifier"];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

@end
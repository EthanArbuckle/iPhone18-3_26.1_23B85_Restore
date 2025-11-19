@interface SRPreferences
- (NSUUID)lastPinnedTranscriptItemIdentifier;
- (SRPreferences)init;
- (void)preferences:(id)a3 didChangeValueForKey:(id)a4;
- (void)setLastPinnedTranscriptItemIdentifier:(id)a3;
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

- (void)preferences:(id)a3 didChangeValueForKey:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (([v5 isEqualToString:@"SiriIsActive"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"LastKnownInterfaceOrientation") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"LastTranscriptVerticalContentOffset") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"LastVisibleTranscriptItemIndex") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"LastPinnedTranscriptItemIdentifier") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"TapToEditTipCount"))
  {
    [v6 synchronize];
  }
}

- (void)setLastPinnedTranscriptItemIdentifier:(id)a3
{
  internalPreferences = self->_internalPreferences;
  v4 = [a3 UUIDString];
  [(SRUIFPreferences *)internalPreferences setObject:v4 forKey:@"LastPinnedTranscriptItemIdentifier"];
}

- (NSUUID)lastPinnedTranscriptItemIdentifier
{
  v3 = [NSUUID alloc];
  v4 = [(SRUIFPreferences *)self->_internalPreferences objectForKey:@"LastPinnedTranscriptItemIdentifier"];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

@end
@interface MFNanoBridgeSettingsUnifiedMailbox
- (BOOL)isEqual:(id)a3;
- (MFNanoBridgeSettingsUnifiedMailbox)initWithCoder:(id)a3;
- (MFNanoBridgeSettingsUnifiedMailbox)initWithType:(int64_t)a3;
- (id)displayName;
- (id)icon;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFNanoBridgeSettingsUnifiedMailbox

- (MFNanoBridgeSettingsUnifiedMailbox)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsUnifiedMailbox;
  result = [(MFNanoBridgeSettingsUnifiedMailbox *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [NSNumber numberWithInteger:self->_type];
  [v5 encodeObject:v4 forKey:@"kNSCodingKeyType"];
}

- (MFNanoBridgeSettingsUnifiedMailbox)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(MFNanoBridgeSettingsUnifiedMailbox *)self initWithType:v6];
  return v7;
}

- (id)displayName
{
  if (self->_type == 7)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ALL_INBOXES" value:&stru_3D2B0 table:@"Main"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)icon
{
  if (self->_type == 7)
  {
    v4 = [UIImage mf_systemImageNamed:MFImageGlyphFavoriteInboxUnifiedMailbox forView:7, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFNanoBridgeSettingsUnifiedMailbox;
  if ([(MFNanoBridgeSettingsMailbox *)&v7 isEqual:v4])
  {
    v5 = [v4 type] == self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
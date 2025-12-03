@interface MFNanoBridgeSettingsUnifiedMailbox
- (BOOL)isEqual:(id)equal;
- (MFNanoBridgeSettingsUnifiedMailbox)initWithCoder:(id)coder;
- (MFNanoBridgeSettingsUnifiedMailbox)initWithType:(int64_t)type;
- (id)displayName;
- (id)icon;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFNanoBridgeSettingsUnifiedMailbox

- (MFNanoBridgeSettingsUnifiedMailbox)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsUnifiedMailbox;
  result = [(MFNanoBridgeSettingsUnifiedMailbox *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [NSNumber numberWithInteger:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kNSCodingKeyType"];
}

- (MFNanoBridgeSettingsUnifiedMailbox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [(MFNanoBridgeSettingsUnifiedMailbox *)self initWithType:unsignedIntegerValue];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = MFNanoBridgeSettingsUnifiedMailbox;
  if ([(MFNanoBridgeSettingsMailbox *)&v7 isEqual:equalCopy])
  {
    v5 = [equalCopy type] == self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
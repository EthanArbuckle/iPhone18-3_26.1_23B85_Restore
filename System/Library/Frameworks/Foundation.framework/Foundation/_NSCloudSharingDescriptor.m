@interface _NSCloudSharingDescriptor
- (_NSCloudSharingDescriptor)initWithCoder:(id)a3;
- (id)_variantSubstrings;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NSCloudSharingDescriptor

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSCloudSharingDescriptor;
  [(_NSCloudSharingDescriptor *)&v3 dealloc];
}

- (_NSCloudSharingDescriptor)initWithCoder:(id)a3
{
  self->_operation = [a3 decodeIntegerForKey:@"NSShareOperation"];
  self->_invitationsSentViaThirdPartyService = [a3 decodeBoolForKey:@"NSShareViaThirdParty"];
  self->_publicShare = [a3 decodeBoolForKey:@"NSSharePublic"];
  self->_numberOfInvitations = [a3 decodeIntegerForKey:@"NSShareNumberOfInviations"];
  self->_sharedContentType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSShareContentType"];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_operation forKey:@"NSShareOperation"];
  [a3 encodeBool:self->_invitationsSentViaThirdPartyService forKey:@"NSShareViaThirdParty"];
  [a3 encodeBool:self->_publicShare forKey:@"NSSharePublic"];
  [a3 encodeInteger:self->_numberOfInvitations forKey:@"NSShareNumberOfInviations"];
  sharedContentType = self->_sharedContentType;

  [a3 encodeObject:sharedContentType forKey:@"NSShareContentType"];
}

- (id)_variantSubstrings
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  v5 = self->_operation - 1;
  if (v5 < 3)
  {
    v6 = off_1E69F32B8[v5];
LABEL_13:
    [v4 addObject:v6];
    return v4;
  }

  if (self->_publicShare)
  {
    v7 = @"Public";
LABEL_9:
    [v3 addObject:v7];
    goto LABEL_10;
  }

  if (self->_invitationsSentViaThirdPartyService)
  {
    v7 = @"3rdParty";
    goto LABEL_9;
  }

  if (self->_numberOfInvitations >= 2)
  {
    v7 = @"Multiple";
    goto LABEL_9;
  }

LABEL_10:
  if (softLinkUTTypeConformsTo(self->_sharedContentType, @"public.presentation") || [(NSString *)self->_sharedContentType isEqualToString:@"key"])
  {
    v6 = @"Presentation";
    goto LABEL_13;
  }

  if (softLinkUTTypeConformsTo(self->_sharedContentType, @"public.spreadsheet") || [(NSString *)self->_sharedContentType isEqualToString:@"numbers"])
  {
    v6 = @"Spreadsheet";
    goto LABEL_13;
  }

  if (softLinkUTTypeConformsTo(self->_sharedContentType, @"com.apple.notes.note"))
  {
    v6 = @"Note";
    goto LABEL_13;
  }

  if (softLinkUTTypeConformsTo(self->_sharedContentType, @"com.apple.iwork.pages.pages") || [(NSString *)self->_sharedContentType isEqualToString:@"pages"])
  {
    v6 = @"Document";
    goto LABEL_13;
  }

  return v4;
}

@end
@interface LSAppClipMetadata
- (BOOL)wantsEphemeralNotifications;
- (BOOL)wantsLocationConfirmation;
- (LSAppClipMetadata)initWithCoder:(id)coder;
- (id)_initWithApplicationRecord:(id)record parentApplicationIdentifiers:(id)identifiers appClipPlist:(id)plist;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSAppClipMetadata

- (id)_initWithApplicationRecord:(id)record parentApplicationIdentifiers:(id)identifiers appClipPlist:(id)plist
{
  v15.receiver = self;
  v15.super_class = LSAppClipMetadata;
  v7 = [(LSAppClipMetadata *)&v15 init];
  if (v7)
  {
    v8 = [identifiers copy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v7->_parentApplicationIdentifiers, v10);

    v11 = [plist copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v7->_appClipPlist, v13);
  }

  return v7;
}

- (BOOL)wantsEphemeralNotifications
{
  v2 = [(NSDictionary *)self->_appClipPlist objectForKeyedSubscript:@"NSAppClipRequestEphemeralUserNotification"];
  if (_NSIsNSNumber())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)wantsLocationConfirmation
{
  v2 = [(NSDictionary *)self->_appClipPlist objectForKeyedSubscript:@"NSAppClipRequestLocationConfirmation"];
  if (_NSIsNSNumber())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_parentApplicationIdentifiers forKey:@"parentApplicationIdentifiers"];
  appClipPlist = self->_appClipPlist;

  [coder encodeObject:appClipPlist forKey:@"appClipPlist"];
}

- (LSAppClipMetadata)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = LSAppClipMetadata;
  v4 = [(LSAppClipMetadata *)&v14 init];
  if (v4)
  {
    v5 = [coder ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"parentApplicationIdentifiers"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v4->_parentApplicationIdentifiers, v7);

    v8 = objc_opt_class();
    v9 = XNSGetPropertyListClasses();
    v10 = [coder ls_decodeDictionaryWithKeysOfClass:v8 valuesOfClasses:v9 forKey:@"appClipPlist"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v4->_appClipPlist, v12);
  }

  return v4;
}

@end
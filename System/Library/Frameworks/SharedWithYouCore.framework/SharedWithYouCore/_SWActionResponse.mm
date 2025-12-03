@interface _SWActionResponse
+ (id)responseWithDestinationResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToActionResponse:(id)response;
- (BSActionResponse)sourceBSActionResponse;
- (_SWActionResponse)initWithCoder:(id)coder;
- (_SWActionResponse)initWithDestinationResponse:(id)response;
- (_SWActionResponse)initWithSuccess:(BOOL)success error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSActionResponseSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWActionResponse

- (_SWActionResponse)initWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = _SWActionResponse;
  v8 = [(_SWActionResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_success = success;
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (_SWActionResponse)initWithDestinationResponse:(id)response
{
  responseCopy = response;
  info = [responseCopy info];
  [info flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  info2 = [responseCopy info];

  v8 = [info2 objectForSetting:1];

  v9 = [(_SWActionResponse *)self initWithSuccess:IsYes error:v8];
  return v9;
}

+ (id)responseWithDestinationResponse:(id)response
{
  responseCopy = response;
  info = [responseCopy info];
  v5 = [info objectForSetting:483940];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = NSClassFromString(v5), [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v6 instancesRespondToSelector:sel_initWithDestinationResponse_])
  {
    v7 = [[v6 alloc] initWithDestinationResponse:responseCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithBSActionResponseSettings:(id)settings
{
  settingsCopy = settings;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [settingsCopy setObject:v6 forSetting:483940];

  [settingsCopy setFlag:-[_SWActionResponse success](self forSetting:{"success"), 1}];
  error = [(_SWActionResponse *)self error];
  [settingsCopy setObject:error forSetting:1];
}

- (BSActionResponse)sourceBSActionResponse
{
  sourceBSActionResponse = self->_sourceBSActionResponse;
  if (!sourceBSActionResponse)
  {
    v4 = objc_alloc_init(_SWBSActionResponseSettings);
    [(_SWActionResponse *)self encodeWithBSActionResponseSettings:v4];
    v5 = objc_alloc(MEMORY[0x1E698E600]);
    bsSettings = [(_SWBSActionResponseSettings *)v4 bsSettings];
    v7 = [v5 initWithInfo:bsSettings error:0];
    v8 = self->_sourceBSActionResponse;
    self->_sourceBSActionResponse = v7;

    sourceBSActionResponse = self->_sourceBSActionResponse;
  }

  return sourceBSActionResponse;
}

- (_SWActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _SWActionResponse;
  v5 = [(_SWActionResponse *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_success);
    v5->_success = [coderCopy decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_error);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    error = v5->_error;
    v5->_error = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  success = [(_SWActionResponse *)self success];
  v6 = NSStringFromSelector(sel_success);
  [coderCopy encodeBool:success forKey:v6];

  error = [(_SWActionResponse *)self error];
  v7 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSuccess:{-[_SWActionResponse success](self, "success")}];
  error = [(_SWActionResponse *)self error];
  [v4 setError:error];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWActionResponse *)self isEqualToActionResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToActionResponse:(id)response
{
  responseCopy = response;
  if (responseCopy == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  success = [(_SWActionResponse *)self success];
  if (success == [(_SWActionResponse *)responseCopy success])
  {
    error = [(_SWActionResponse *)self error];
    if (error || ([(_SWActionResponse *)responseCopy error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      error2 = [(_SWActionResponse *)self error];
      error3 = [(_SWActionResponse *)responseCopy error];
      v7 = [error2 isEqual:error3];

      if (error)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end
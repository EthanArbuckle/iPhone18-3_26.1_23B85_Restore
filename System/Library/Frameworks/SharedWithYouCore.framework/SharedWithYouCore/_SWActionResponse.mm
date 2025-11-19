@interface _SWActionResponse
+ (id)responseWithDestinationResponse:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToActionResponse:(id)a3;
- (BSActionResponse)sourceBSActionResponse;
- (_SWActionResponse)initWithCoder:(id)a3;
- (_SWActionResponse)initWithDestinationResponse:(id)a3;
- (_SWActionResponse)initWithSuccess:(BOOL)a3 error:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSActionResponseSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWActionResponse

- (_SWActionResponse)initWithSuccess:(BOOL)a3 error:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _SWActionResponse;
  v8 = [(_SWActionResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_success = a3;
    objc_storeStrong(&v8->_error, a4);
  }

  return v9;
}

- (_SWActionResponse)initWithDestinationResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  [v5 flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  v7 = [v4 info];

  v8 = [v7 objectForSetting:1];

  v9 = [(_SWActionResponse *)self initWithSuccess:IsYes error:v8];
  return v9;
}

+ (id)responseWithDestinationResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:483940];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = NSClassFromString(v5), [(objc_class *)v6 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v6 instancesRespondToSelector:sel_initWithDestinationResponse_])
  {
    v7 = [[v6 alloc] initWithDestinationResponse:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithBSActionResponseSettings:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forSetting:483940];

  [v4 setFlag:-[_SWActionResponse success](self forSetting:{"success"), 1}];
  v7 = [(_SWActionResponse *)self error];
  [v4 setObject:v7 forSetting:1];
}

- (BSActionResponse)sourceBSActionResponse
{
  sourceBSActionResponse = self->_sourceBSActionResponse;
  if (!sourceBSActionResponse)
  {
    v4 = objc_alloc_init(_SWBSActionResponseSettings);
    [(_SWActionResponse *)self encodeWithBSActionResponseSettings:v4];
    v5 = objc_alloc(MEMORY[0x1E698E600]);
    v6 = [(_SWBSActionResponseSettings *)v4 bsSettings];
    v7 = [v5 initWithInfo:v6 error:0];
    v8 = self->_sourceBSActionResponse;
    self->_sourceBSActionResponse = v7;

    sourceBSActionResponse = self->_sourceBSActionResponse;
  }

  return sourceBSActionResponse;
}

- (_SWActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SWActionResponse;
  v5 = [(_SWActionResponse *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_success);
    v5->_success = [v4 decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_error);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    error = v5->_error;
    v5->_error = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SWActionResponse *)self success];
  v6 = NSStringFromSelector(sel_success);
  [v4 encodeBool:v5 forKey:v6];

  v8 = [(_SWActionResponse *)self error];
  v7 = NSStringFromSelector(sel_error);
  [v4 encodeObject:v8 forKey:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSuccess:{-[_SWActionResponse success](self, "success")}];
  v5 = [(_SWActionResponse *)self error];
  [v4 setError:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWActionResponse *)self isEqualToActionResponse:v4];

  return v5;
}

- (BOOL)isEqualToActionResponse:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v7 = 1;
    goto LABEL_12;
  }

  v6 = [(_SWActionResponse *)self success];
  if (v6 == [(_SWActionResponse *)v5 success])
  {
    v8 = [(_SWActionResponse *)self error];
    if (v8 || ([(_SWActionResponse *)v5 error], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(_SWActionResponse *)self error];
      v10 = [(_SWActionResponse *)v5 error];
      v7 = [v9 isEqual:v10];

      if (v8)
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
@interface EKCredentials
+ (id)credentialsWithUsername:(id)a3 password:(id)a4;
- (id)description;
@end

@implementation EKCredentials

+ (id)credentialsWithUsername:(id)a3 password:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = EKCredentials;
  v4 = [(EKCredentials *)&v10 description];
  v5 = v4;
  username = self->_username;
  if (self->_password)
  {
    v7 = @"******";
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 stringWithFormat:@"[%@] username: [%@], password: [%@]", v4, self->_username, v7];

  return v8;
}

@end
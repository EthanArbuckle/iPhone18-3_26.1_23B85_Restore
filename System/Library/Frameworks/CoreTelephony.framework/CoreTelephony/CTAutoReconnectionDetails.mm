@interface CTAutoReconnectionDetails
- (BOOL)isEqual:(id)a3;
- (CTAutoReconnectionDetails)initWithCoder:(id)a3;
- (CTAutoReconnectionDetails)initWithSuccess:(BOOL)a3 skipped:(BOOL)a4 duration:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTAutoReconnectionDetails

- (CTAutoReconnectionDetails)initWithSuccess:(BOOL)a3 skipped:(BOOL)a4 duration:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = CTAutoReconnectionDetails;
  result = [(CTAutoReconnectionDetails *)&v9 init];
  if (result)
  {
    result->_success = a3;
    result->_skipped = a4;
    result->_duration = a5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  if ([(CTAutoReconnectionDetails *)self success])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  [v3 appendFormat:@" success=%s", v4];
  if ([(CTAutoReconnectionDetails *)self skipped])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@" skipped=%s", v5];
  [v3 appendFormat:@" duration=%lu", -[CTAutoReconnectionDetails duration](self, "duration")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTAutoReconnectionDetails *)self success], v5 == [(CTAutoReconnectionDetails *)v4 success]) && (v6 = [(CTAutoReconnectionDetails *)self skipped], v6 == [(CTAutoReconnectionDetails *)v4 skipped]))
    {
      v9 = [(CTAutoReconnectionDetails *)self duration];
      v7 = v9 == [(CTAutoReconnectionDetails *)v4 duration];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CTAutoReconnectionDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTAutoReconnectionDetails;
  v5 = [(CTAutoReconnectionDetails *)&v7 init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"success"];
    v5->_skipped = [v4 decodeBoolForKey:@"skipped"];
    v5->_duration = [v4 decodeIntegerForKey:@"duration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTAutoReconnectionDetails success](self forKey:{"success"), @"success"}];
  [v4 encodeBool:-[CTAutoReconnectionDetails skipped](self forKey:{"skipped"), @"skipped"}];
  [v4 encodeInteger:-[CTAutoReconnectionDetails duration](self forKey:{"duration"), @"duration"}];
}

@end
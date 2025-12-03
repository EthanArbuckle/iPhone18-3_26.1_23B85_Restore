@interface CTAutoReconnectionDetails
- (BOOL)isEqual:(id)equal;
- (CTAutoReconnectionDetails)initWithCoder:(id)coder;
- (CTAutoReconnectionDetails)initWithSuccess:(BOOL)success skipped:(BOOL)skipped duration:(unint64_t)duration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTAutoReconnectionDetails

- (CTAutoReconnectionDetails)initWithSuccess:(BOOL)success skipped:(BOOL)skipped duration:(unint64_t)duration
{
  v9.receiver = self;
  v9.super_class = CTAutoReconnectionDetails;
  result = [(CTAutoReconnectionDetails *)&v9 init];
  if (result)
  {
    result->_success = success;
    result->_skipped = skipped;
    result->_duration = duration;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTAutoReconnectionDetails *)self success], v5 == [(CTAutoReconnectionDetails *)equalCopy success]) && (v6 = [(CTAutoReconnectionDetails *)self skipped], v6 == [(CTAutoReconnectionDetails *)equalCopy skipped]))
    {
      duration = [(CTAutoReconnectionDetails *)self duration];
      v7 = duration == [(CTAutoReconnectionDetails *)equalCopy duration];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CTAutoReconnectionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTAutoReconnectionDetails;
  v5 = [(CTAutoReconnectionDetails *)&v7 init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v5->_skipped = [coderCopy decodeBoolForKey:@"skipped"];
    v5->_duration = [coderCopy decodeIntegerForKey:@"duration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTAutoReconnectionDetails success](self forKey:{"success"), @"success"}];
  [coderCopy encodeBool:-[CTAutoReconnectionDetails skipped](self forKey:{"skipped"), @"skipped"}];
  [coderCopy encodeInteger:-[CTAutoReconnectionDetails duration](self forKey:{"duration"), @"duration"}];
}

@end
@interface CTStewieMessageAck
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageAck:(id)ack;
- (CTStewieMessageAck)init;
- (CTStewieMessageAck)initWithCoder:(id)coder;
- (CTStewieMessageAck)initWithError:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieMessageAck

- (CTStewieMessageAck)init
{
  v7.receiver = self;
  v7.super_class = CTStewieMessageAck;
  v2 = [(CTStewieMessageAck *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_success = 0;
    error = v2->_error;
    v2->_error = 0;

    v3->_transportType = 0;
    v5 = v3;
  }

  return v3;
}

- (CTStewieMessageAck)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = CTStewieMessageAck;
  v6 = [(CTStewieMessageAck *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_success = 0;
    objc_storeStrong(&v6->_error, error);
    v7->_transportType = 0;
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  success = [(CTStewieMessageAck *)self success];
  v5 = @"NO";
  if (success)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@", success=%@", v5];
  error = [(CTStewieMessageAck *)self error];
  [v3 appendFormat:@", error=%@", error];

  [v3 appendFormat:@", transportType=%s", CTStewieTransportTypeAsString(-[CTStewieMessageAck transportType](self, "transportType"))];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToMessageAck:(id)ack
{
  ackCopy = ack;
  success = [(CTStewieMessageAck *)self success];
  if (success == [ackCopy success])
  {
    error = [(CTStewieMessageAck *)self error];
    error2 = [ackCopy error];
    if (error == error2 || (-[CTStewieMessageAck error](self, "error"), v3 = objc_claimAutoreleasedReturnValue(), [ackCopy error], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      transportType = [(CTStewieMessageAck *)self transportType];
      v8 = transportType == [ackCopy transportType];
      if (error == error2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieMessageAck *)self isEqualToMessageAck:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSuccess:{-[CTStewieMessageAck success](self, "success")}];
  error = [(CTStewieMessageAck *)self error];
  v7 = [error copyWithZone:zone];
  [v5 setError:v7];

  [v5 setTransportType:{-[CTStewieMessageAck transportType](self, "transportType")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTStewieMessageAck success](self forKey:{"success"), @"success"}];
  error = [(CTStewieMessageAck *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  [coderCopy encodeInteger:-[CTStewieMessageAck transportType](self forKey:{"transportType"), @"transportType"}];
}

- (CTStewieMessageAck)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CTStewieMessageAck;
  v5 = [(CTStewieMessageAck *)&v10 init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_transportType = [coderCopy decodeIntegerForKey:@"transportType"];
    v8 = v5;
  }

  return v5;
}

@end
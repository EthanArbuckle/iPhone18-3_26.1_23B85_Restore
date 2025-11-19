@interface CTStewieMessageAck
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageAck:(id)a3;
- (CTStewieMessageAck)init;
- (CTStewieMessageAck)initWithCoder:(id)a3;
- (CTStewieMessageAck)initWithError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (CTStewieMessageAck)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CTStewieMessageAck;
  v6 = [(CTStewieMessageAck *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_success = 0;
    objc_storeStrong(&v6->_error, a3);
    v7->_transportType = 0;
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTStewieMessageAck *)self success];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@", success=%@", v5];
  v6 = [(CTStewieMessageAck *)self error];
  [v3 appendFormat:@", error=%@", v6];

  [v3 appendFormat:@", transportType=%s", CTStewieTransportTypeAsString(-[CTStewieMessageAck transportType](self, "transportType"))];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToMessageAck:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieMessageAck *)self success];
  if (v7 == [v6 success])
  {
    v9 = [(CTStewieMessageAck *)self error];
    v10 = [v6 error];
    if (v9 == v10 || (-[CTStewieMessageAck error](self, "error"), v3 = objc_claimAutoreleasedReturnValue(), [v6 error], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(CTStewieMessageAck *)self transportType];
      v8 = v11 == [v6 transportType];
      if (v9 == v10)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieMessageAck *)self isEqualToMessageAck:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSuccess:{-[CTStewieMessageAck success](self, "success")}];
  v6 = [(CTStewieMessageAck *)self error];
  v7 = [v6 copyWithZone:a3];
  [v5 setError:v7];

  [v5 setTransportType:{-[CTStewieMessageAck transportType](self, "transportType")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[CTStewieMessageAck success](self forKey:{"success"), @"success"}];
  v4 = [(CTStewieMessageAck *)self error];
  [v5 encodeObject:v4 forKey:@"error"];

  [v5 encodeInteger:-[CTStewieMessageAck transportType](self forKey:{"transportType"), @"transportType"}];
}

- (CTStewieMessageAck)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTStewieMessageAck;
  v5 = [(CTStewieMessageAck *)&v10 init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"success"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_transportType = [v4 decodeIntegerForKey:@"transportType"];
    v8 = v5;
  }

  return v5;
}

@end
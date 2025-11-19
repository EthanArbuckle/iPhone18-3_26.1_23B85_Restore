@interface ATRequest
- (ATRequest)initWithCoder:(id)a3;
- (ATRequest)initWithCommand:(id)a3 dataClass:(id)a4 parameters:(id)a5;
- (id)additionalDescription;
- (id)partialResponseWithParameters:(id)a3;
- (id)responseWithError:(id)a3 parameters:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATRequest;
  v4 = a3;
  [(ATMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_command forKey:{@"command", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_dataClass forKey:@"dataClass"];
}

- (ATRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATRequest;
  v5 = [(ATMessage *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    command = v5->_command;
    v5->_command = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v8;
  }

  return v5;
}

- (id)additionalDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATRequest *)self command];
  v5 = [(ATRequest *)self dataClass];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)partialResponseWithParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ATResponse);
  [(ATMessage *)v5 setMessageID:[(ATMessage *)self messageID]];
  [(ATMessage *)v5 setSessionID:[(ATMessage *)self sessionID]];
  [(ATResponse *)v5 setPartial:1];
  [(ATMessage *)v5 setParameters:v4];

  return v5;
}

- (id)responseWithError:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ATResponse);
  [(ATMessage *)v8 setMessageID:[(ATMessage *)self messageID]];
  [(ATMessage *)v8 setSessionID:[(ATMessage *)self sessionID]];
  [(ATResponse *)v8 setError:v7];

  [(ATMessage *)v8 setParameters:v6];

  return v8;
}

- (ATRequest)initWithCommand:(id)a3 dataClass:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATRequest;
  v11 = [(ATRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ATRequest *)v11 setCommand:v8];
    [(ATRequest *)v12 setDataClass:v9];
    [(ATMessage *)v12 setParameters:v10];
  }

  return v12;
}

@end
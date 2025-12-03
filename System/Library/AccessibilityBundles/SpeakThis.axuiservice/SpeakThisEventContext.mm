@interface SpeakThisEventContext
- (SpeakThisEventContext)initWithDisplayID:(int64_t)d contextID:(unsigned int)iD displayHardwareID:(id)hardwareID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SpeakThisEventContext

- (SpeakThisEventContext)initWithDisplayID:(int64_t)d contextID:(unsigned int)iD displayHardwareID:(id)hardwareID
{
  hardwareIDCopy = hardwareID;
  v13.receiver = self;
  v13.super_class = SpeakThisEventContext;
  v10 = [(SpeakThisEventContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_displayID = d;
    v10->_contextID = iD;
    objc_storeStrong(&v10->_displayHardwareID, hardwareID);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[2] = self->_displayID;
  *(v5 + 2) = self->_contextID;
  v6 = [(NSString *)self->_displayHardwareID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

@end
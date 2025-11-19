@interface SpeakThisEventContext
- (SpeakThisEventContext)initWithDisplayID:(int64_t)a3 contextID:(unsigned int)a4 displayHardwareID:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SpeakThisEventContext

- (SpeakThisEventContext)initWithDisplayID:(int64_t)a3 contextID:(unsigned int)a4 displayHardwareID:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SpeakThisEventContext;
  v10 = [(SpeakThisEventContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_displayID = a3;
    v10->_contextID = a4;
    objc_storeStrong(&v10->_displayHardwareID, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[2] = self->_displayID;
  *(v5 + 2) = self->_contextID;
  v6 = [(NSString *)self->_displayHardwareID copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

@end
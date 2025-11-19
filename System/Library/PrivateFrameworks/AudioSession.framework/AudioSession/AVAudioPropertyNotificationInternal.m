@interface AVAudioPropertyNotificationInternal
- (AVAudioPropertyNotificationInternal)initWithPropertyName:(id)a3 sourceSessionID:(id)a4 nodeSessionID:(id)a5 propertyData:(id)a6;
- (BOOL)isEqual:(id)a3;
@end

@implementation AVAudioPropertyNotificationInternal

- (AVAudioPropertyNotificationInternal)initWithPropertyName:(id)a3 sourceSessionID:(id)a4 nodeSessionID:(id)a5 propertyData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AVAudioPropertyNotificationInternal;
  v15 = [(AVAudioPropertyNotificationInternal *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_propertyName, a3);
    objc_storeStrong(&v16->_sourceSessionID, a4);
    objc_storeStrong(&v16->_nodeSessionID, a5);
    objc_storeStrong(&v16->_propertyData, a6);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    propertyName = self->_propertyName;
    v7 = [v5 propertyName];
    LOBYTE(propertyName) = [(NSString *)propertyName isEqualToString:v7];

    v11 = 0;
    if (propertyName)
    {
      sourceSessionID = self->_sourceSessionID;
      if ((sourceSessionID == 0) != (v5[2] != 0) && (!sourceSessionID || ![(NSNumber *)sourceSessionID isEqualToNumber:?]))
      {
        nodeSessionID = self->_nodeSessionID;
        if ((nodeSessionID == 0) != (v5[3] != 0) && (!nodeSessionID || ![(NSNumber *)nodeSessionID isEqualToNumber:?]))
        {
          propertyData = self->_propertyData;
          if ((propertyData == 0) != (v5[4] != 0) && (!propertyData || ![(NSDictionary *)propertyData isEqualToDictionary:?]))
          {
            v11 = 1;
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
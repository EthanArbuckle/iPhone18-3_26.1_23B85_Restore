@interface AVAudioPropertyNotificationInternal
- (AVAudioPropertyNotificationInternal)initWithPropertyName:(id)name sourceSessionID:(id)d nodeSessionID:(id)iD propertyData:(id)data;
- (BOOL)isEqual:(id)equal;
@end

@implementation AVAudioPropertyNotificationInternal

- (AVAudioPropertyNotificationInternal)initWithPropertyName:(id)name sourceSessionID:(id)d nodeSessionID:(id)iD propertyData:(id)data
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = AVAudioPropertyNotificationInternal;
  v15 = [(AVAudioPropertyNotificationInternal *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_propertyName, name);
    objc_storeStrong(&v16->_sourceSessionID, d);
    objc_storeStrong(&v16->_nodeSessionID, iD);
    objc_storeStrong(&v16->_propertyData, data);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    propertyName = self->_propertyName;
    propertyName = [v5 propertyName];
    LOBYTE(propertyName) = [(NSString *)propertyName isEqualToString:propertyName];

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
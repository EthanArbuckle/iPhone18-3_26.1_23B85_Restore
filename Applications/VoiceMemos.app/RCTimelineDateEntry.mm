@interface RCTimelineDateEntry
- (BOOL)isEqual:(id)equal;
- (RCTimelineDateEntry)initWithDateEntry:(id)entry updateFidelity:(int64_t)fidelity userInfo:(id)info;
- (id)description;
- (unint64_t)hash;
@end

@implementation RCTimelineDateEntry

- (RCTimelineDateEntry)initWithDateEntry:(id)entry updateFidelity:(int64_t)fidelity userInfo:(id)info
{
  entryCopy = entry;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = RCTimelineDateEntry;
  v11 = [(RCTimelineDateEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateEntry, entry);
    v12->_updateFidelity = fidelity;
    objc_storeStrong(&v12->_userInfo, info);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateEntry = [(RCTimelineDateEntry *)self dateEntry];
      dateEntry2 = [(RCTimelineDateEntry *)v5 dateEntry];
      v8 = [dateEntry isEqual:dateEntry2];

      updateFidelity = [(RCTimelineDateEntry *)self updateFidelity];
      updateFidelity2 = [(RCTimelineDateEntry *)v5 updateFidelity];
      userInfo = [(RCTimelineDateEntry *)self userInfo];
      userInfo2 = [(RCTimelineDateEntry *)v5 userInfo];

      v13 = [userInfo isEqual:userInfo2];
      if (updateFidelity == updateFidelity2)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 & v13;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  dateEntry = [(RCTimelineDateEntry *)self dateEntry];
  v4 = [dateEntry hash];
  v5 = [(RCTimelineDateEntry *)self updateFidelity]^ v4;
  userInfo = [(RCTimelineDateEntry *)self userInfo];
  v7 = [userInfo hash];

  return v5 ^ v7;
}

- (id)description
{
  dateEntry = [(RCTimelineDateEntry *)self dateEntry];
  bls_shortLoggingString = [dateEntry bls_shortLoggingString];
  updateFidelity = [(RCTimelineDateEntry *)self updateFidelity];
  userInfo = [(RCTimelineDateEntry *)self userInfo];
  v7 = [NSString stringWithFormat:@"date = %@  updateFidelity = %ld;  userInfo = %@", bls_shortLoggingString, updateFidelity, userInfo];;

  return v7;
}

@end
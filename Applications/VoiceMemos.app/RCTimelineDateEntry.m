@interface RCTimelineDateEntry
- (BOOL)isEqual:(id)a3;
- (RCTimelineDateEntry)initWithDateEntry:(id)a3 updateFidelity:(int64_t)a4 userInfo:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation RCTimelineDateEntry

- (RCTimelineDateEntry)initWithDateEntry:(id)a3 updateFidelity:(int64_t)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RCTimelineDateEntry;
  v11 = [(RCTimelineDateEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateEntry, a3);
    v12->_updateFidelity = a4;
    objc_storeStrong(&v12->_userInfo, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RCTimelineDateEntry *)self dateEntry];
      v7 = [(RCTimelineDateEntry *)v5 dateEntry];
      v8 = [v6 isEqual:v7];

      v9 = [(RCTimelineDateEntry *)self updateFidelity];
      v10 = [(RCTimelineDateEntry *)v5 updateFidelity];
      v11 = [(RCTimelineDateEntry *)self userInfo];
      v12 = [(RCTimelineDateEntry *)v5 userInfo];

      v13 = [v11 isEqual:v12];
      if (v9 == v10)
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
  v3 = [(RCTimelineDateEntry *)self dateEntry];
  v4 = [v3 hash];
  v5 = [(RCTimelineDateEntry *)self updateFidelity]^ v4;
  v6 = [(RCTimelineDateEntry *)self userInfo];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = [(RCTimelineDateEntry *)self dateEntry];
  v4 = [v3 bls_shortLoggingString];
  v5 = [(RCTimelineDateEntry *)self updateFidelity];
  v6 = [(RCTimelineDateEntry *)self userInfo];
  v7 = [NSString stringWithFormat:@"date = %@  updateFidelity = %ld;  userInfo = %@", v4, v5, v6];;

  return v7;
}

@end
@interface MFAccountStatus
- (MFAccountStatus)initWithAccount:(id)a3 accountStatus:(int64_t)a4 error:(id)a5;
- (id)stringForAccountStatusType;
@end

@implementation MFAccountStatus

- (MFAccountStatus)initWithAccount:(id)a3 accountStatus:(int64_t)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MFAccountStatus;
  v11 = [(MFAccountStatus *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a3);
    v12->_status = a4;
    objc_storeStrong(&v12->_error, a5);
  }

  return v12;
}

- (id)stringForAccountStatusType
{
  v2 = [(MFAccountStatus *)self status];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1006531F0 + v2);
  }
}

@end
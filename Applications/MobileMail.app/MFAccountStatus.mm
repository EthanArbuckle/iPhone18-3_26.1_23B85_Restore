@interface MFAccountStatus
- (MFAccountStatus)initWithAccount:(id)account accountStatus:(int64_t)status error:(id)error;
- (id)stringForAccountStatusType;
@end

@implementation MFAccountStatus

- (MFAccountStatus)initWithAccount:(id)account accountStatus:(int64_t)status error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = MFAccountStatus;
  v11 = [(MFAccountStatus *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    v12->_status = status;
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

- (id)stringForAccountStatusType
{
  status = [(MFAccountStatus *)self status];
  if (status > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1006531F0 + status);
  }
}

@end
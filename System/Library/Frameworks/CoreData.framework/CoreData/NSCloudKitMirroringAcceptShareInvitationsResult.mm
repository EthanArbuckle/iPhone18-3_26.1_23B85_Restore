@interface NSCloudKitMirroringAcceptShareInvitationsResult
- (NSCloudKitMirroringAcceptShareInvitationsResult)initWithRequest:(id)a3 storeIdentifier:(id)a4 acceptedShares:(id)a5 acceptedShareMetadatas:(id)a6 error:(id)a7;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringAcceptShareInvitationsResult

- (NSCloudKitMirroringAcceptShareInvitationsResult)initWithRequest:(id)a3 storeIdentifier:(id)a4 acceptedShares:(id)a5 acceptedShareMetadatas:(id)a6 error:(id)a7
{
  v13 = (a5 | a6) == 0;
  if (!(a5 | a6))
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  if (!a5 || !a6)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid arguments to initialize a share invitations result. If the operation failed both acceptedShares and acceptedShareMetadatas should be nil, otherwise there should be both arrays.\n", buf, 2u);
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Invalid arguments to initialize a share invitations result. If the operation failed both acceptedShares and acceptedShareMetadatas should be nil, otherwise there should be both arrays.", buf, 2u);
    }

    goto LABEL_10;
  }

  if ([a5 count])
  {
    v14 = 1;
  }

  else
  {
    v14 = [a6 count] != 0;
  }

LABEL_11:
  v19.receiver = self;
  v19.super_class = NSCloudKitMirroringAcceptShareInvitationsResult;
  v17 = [(NSCloudKitMirroringResult *)&v19 initWithRequest:a3 storeIdentifier:a4 success:!v13 madeChanges:v14 error:a7];
  if (v17)
  {
    v17->_acceptedShares = a5;
    v17->_acceptedShareMetadatas = a6;
  }

  return v17;
}

- (void)dealloc
{
  self->_acceptedShares = 0;

  self->_acceptedShareMetadatas = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringAcceptShareInvitationsResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end
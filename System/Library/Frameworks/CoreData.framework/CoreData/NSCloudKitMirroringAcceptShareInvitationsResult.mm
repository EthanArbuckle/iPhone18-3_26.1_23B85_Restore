@interface NSCloudKitMirroringAcceptShareInvitationsResult
- (NSCloudKitMirroringAcceptShareInvitationsResult)initWithRequest:(id)request storeIdentifier:(id)identifier acceptedShares:(id)shares acceptedShareMetadatas:(id)metadatas error:(id)error;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringAcceptShareInvitationsResult

- (NSCloudKitMirroringAcceptShareInvitationsResult)initWithRequest:(id)request storeIdentifier:(id)identifier acceptedShares:(id)shares acceptedShareMetadatas:(id)metadatas error:(id)error
{
  v13 = (shares | metadatas) == 0;
  if (!(shares | metadatas))
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  if (!shares || !metadatas)
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

  if ([shares count])
  {
    v14 = 1;
  }

  else
  {
    v14 = [metadatas count] != 0;
  }

LABEL_11:
  v19.receiver = self;
  v19.super_class = NSCloudKitMirroringAcceptShareInvitationsResult;
  v17 = [(NSCloudKitMirroringResult *)&v19 initWithRequest:request storeIdentifier:identifier success:!v13 madeChanges:v14 error:error];
  if (v17)
  {
    v17->_acceptedShares = shares;
    v17->_acceptedShareMetadatas = metadatas;
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
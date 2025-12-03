@interface MPRemoteCommandStatus
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code customData:(id)data type:(id)type;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code dialog:(id)dialog;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code dialog:(id)dialog error:(id)error;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code error:(id)error;
+ (MPRemoteCommandStatus)successStatus;
+ (id)statusWithCode:(int64_t)code;
- (MPRemoteCommandStatus)initWithMediaRemoteType:(id)type;
- (NSData)customData;
- (NSError)error;
- (NSString)customDataType;
- (id)analyticSignature;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)statusCode;
- (int64_t)type;
@end

@implementation MPRemoteCommandStatus

- (id)analyticSignature
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  [mediaRemoteType statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  type = [(MPRemoteCommandStatus *)self type];
  v6 = MEMORY[0x1E696AEC0];
  statusCode = [(MPRemoteCommandStatus *)self statusCode];
  v8 = statusCode;
  if (type <= 2)
  {
    if (type == 1)
    {
      [v6 stringWithFormat:@"code-%lld|%@", statusCode, v4];
      goto LABEL_10;
    }

    if (type == 2)
    {
      [v6 stringWithFormat:@"dialog-%lld|%@", statusCode, v4];
      v10 = LABEL_10:;
      goto LABEL_13;
    }

LABEL_8:
    [v6 stringWithFormat:@"%lld|%@", statusCode, v4];
    goto LABEL_10;
  }

  if (type == 3)
  {
    error = [(MPRemoteCommandStatus *)self error];
    msv_analyticSignature = [error msv_analyticSignature];
    v10 = [v6 stringWithFormat:@"error-%lld|%@|%@", v8, v4, msv_analyticSignature];
  }

  else
  {
    if (type != 999)
    {
      goto LABEL_8;
    }

    error = [(MPRemoteCommandStatus *)self customDataType];
    v10 = [v6 stringWithFormat:@"custom-%lld|%@|%@", v8, v4, error];
  }

LABEL_13:

  return v10;
}

- (NSString)customDataType
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  customDataType = [mediaRemoteType customDataType];

  return customDataType;
}

- (NSData)customData
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  customData = [mediaRemoteType customData];

  return customData;
}

- (NSError)error
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  commandError = [mediaRemoteType commandError];

  return commandError;
}

- (int64_t)type
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  statusType = [mediaRemoteType statusType];
  if (statusType == 999)
  {
    v4 = 999;
  }

  else
  {
    v4 = 0;
  }

  if (statusType == 3)
  {
    v4 = 3;
  }

  if (statusType == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (statusType == 1)
  {
    v5 = 1;
  }

  if (statusType <= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (int64_t)statusCode
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = MPRemoteCommandHandlerStatusFromMRMediaRemoteCommandHandlerStatus([mediaRemoteType statusCode]);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v5 = [mediaRemoteType copyWithZone:zone];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  mediaRemoteType = [(MPRemoteCommandStatus *)self mediaRemoteType];
  [mediaRemoteType statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  type = [(MPRemoteCommandStatus *)self type];
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        error = [(MPRemoteCommandStatus *)self error];

        v11 = MEMORY[0x1E696AEC0];
        v12 = objc_opt_class();
        dialog = [(MPRemoteCommandStatus *)self dialog];
        v14 = dialog;
        if (error)
        {
          error2 = [(MPRemoteCommandStatus *)self error];
          msv_treeDescription = [error2 msv_treeDescription];
          v17 = [v11 stringWithFormat:@"<%@: %p status=%@ dialog=%@ error=%@>", v12, self, v4, v14, msv_treeDescription];
        }

        else
        {
          v17 = [v11 stringWithFormat:@"<%@: %p status=%@ dialog=%@>", v12, self, v4, dialog];
        }

        goto LABEL_18;
      case 3:
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        error3 = [(MPRemoteCommandStatus *)self error];
        msv_treeDescription2 = [error3 msv_treeDescription];
        [v18 stringWithFormat:@"<%@: %p status=%@ error=%@>", v19, self, v4, msv_treeDescription2, v22];
        goto LABEL_12;
      case 999:
        v6 = MEMORY[0x1E696AEC0];
        v7 = objc_opt_class();
        error3 = [(MPRemoteCommandStatus *)self customDataType];
        msv_treeDescription2 = [(MPRemoteCommandStatus *)self customData];
        [v6 stringWithFormat:@"<%@: %p status=%@ customData=%@/%lu bytes", v7, self, v4, error3, objc_msgSend(msv_treeDescription2, "length")];
        v17 = LABEL_12:;

        goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (type)
  {
    if (type != 1)
    {
LABEL_14:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p status=%@ unknown/type=%ld>", objc_opt_class(), self, v4, -[MPRemoteCommandStatus type](self, "type")];
      goto LABEL_15;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p status=%@>", objc_opt_class(), self, v4, v21];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p status=%@ unknown>", objc_opt_class(), self, v4, v21];
  }

  v17 = LABEL_15:;
LABEL_18:

  return v17;
}

- (MPRemoteCommandStatus)initWithMediaRemoteType:(id)type
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = MPRemoteCommandStatus;
  v6 = [(MPRemoteCommandStatus *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, type);
    if ([(MPRemoteCommandStatus *)v7 type]== 2)
    {
      v8 = [MPRemoteCommandHandlerDialog alloc];
      mediaRemoteType = [(MPRemoteCommandStatus *)v7 mediaRemoteType];
      dialog = [mediaRemoteType dialog];
      v11 = [(MPRemoteCommandHandlerDialog *)v8 initWithMediaRemoteType:dialog];
      dialog = v7->_dialog;
      v7->_dialog = v11;
    }
  }

  return v7;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code customData:(id)data type:(id)type
{
  typeCopy = type;
  dataCopy = data;
  v10 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(code) customData:dataCopy type:typeCopy];

  v11 = [[self alloc] initWithMediaRemoteType:v10];

  return v11;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code dialog:(id)dialog error:(id)error
{
  errorCopy = error;
  dialogCopy = dialog;
  v10 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(code);
  v11 = MEMORY[0x1E69B0B00];
  mediaRemoteType = [dialogCopy mediaRemoteType];

  v13 = [v11 statusWithCode:v10 dialog:mediaRemoteType error:errorCopy];

  v14 = [[self alloc] initWithMediaRemoteType:v13];

  return v14;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code dialog:(id)dialog
{
  dialogCopy = dialog;
  v7 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(code);
  v8 = MEMORY[0x1E69B0B00];
  mediaRemoteType = [dialogCopy mediaRemoteType];

  v10 = [v8 statusWithCode:v7 dialog:mediaRemoteType];

  v11 = [[self alloc] initWithMediaRemoteType:v10];

  return v11;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  v7 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(code) error:errorCopy];

  v8 = [[self alloc] initWithMediaRemoteType:v7];

  return v8;
}

+ (id)statusWithCode:(int64_t)code
{
  v4 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(code)];
  v5 = [[self alloc] initWithMediaRemoteType:v4];

  return v5;
}

+ (MPRemoteCommandStatus)successStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPRemoteCommandStatus_successStatus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (successStatus_onceToken != -1)
  {
    dispatch_once(&successStatus_onceToken, block);
  }

  v2 = successStatus___success;

  return v2;
}

void __38__MPRemoteCommandStatus_successStatus__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusWithCode:0];
  v2 = successStatus___success;
  successStatus___success = v1;
}

@end
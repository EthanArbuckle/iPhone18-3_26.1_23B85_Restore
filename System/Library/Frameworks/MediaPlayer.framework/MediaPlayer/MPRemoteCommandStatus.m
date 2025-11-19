@interface MPRemoteCommandStatus
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 customData:(id)a4 type:(id)a5;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 dialog:(id)a4;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 dialog:(id)a4 error:(id)a5;
+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 error:(id)a4;
+ (MPRemoteCommandStatus)successStatus;
+ (id)statusWithCode:(int64_t)a3;
- (MPRemoteCommandStatus)initWithMediaRemoteType:(id)a3;
- (NSData)customData;
- (NSError)error;
- (NSString)customDataType;
- (id)analyticSignature;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)statusCode;
- (int64_t)type;
@end

@implementation MPRemoteCommandStatus

- (id)analyticSignature
{
  v3 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  [v3 statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  v5 = [(MPRemoteCommandStatus *)self type];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(MPRemoteCommandStatus *)self statusCode];
  v8 = v7;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [v6 stringWithFormat:@"code-%lld|%@", v7, v4];
      goto LABEL_10;
    }

    if (v5 == 2)
    {
      [v6 stringWithFormat:@"dialog-%lld|%@", v7, v4];
      v10 = LABEL_10:;
      goto LABEL_13;
    }

LABEL_8:
    [v6 stringWithFormat:@"%lld|%@", v7, v4];
    goto LABEL_10;
  }

  if (v5 == 3)
  {
    v9 = [(MPRemoteCommandStatus *)self error];
    v11 = [v9 msv_analyticSignature];
    v10 = [v6 stringWithFormat:@"error-%lld|%@|%@", v8, v4, v11];
  }

  else
  {
    if (v5 != 999)
    {
      goto LABEL_8;
    }

    v9 = [(MPRemoteCommandStatus *)self customDataType];
    v10 = [v6 stringWithFormat:@"custom-%lld|%@|%@", v8, v4, v9];
  }

LABEL_13:

  return v10;
}

- (NSString)customDataType
{
  v2 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = [v2 customDataType];

  return v3;
}

- (NSData)customData
{
  v2 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = [v2 customData];

  return v3;
}

- (NSError)error
{
  v2 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = [v2 commandError];

  return v3;
}

- (int64_t)type
{
  v2 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = [v2 statusType];
  if (v3 == 999)
  {
    v4 = 999;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 3)
  {
    v4 = 3;
  }

  if (v3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 1)
  {
    v5 = 1;
  }

  if (v3 <= 2)
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
  v2 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v3 = MPRemoteCommandHandlerStatusFromMRMediaRemoteCommandHandlerStatus([v2 statusCode]);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  v5 = [v4 copyWithZone:a3];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  v3 = [(MPRemoteCommandStatus *)self mediaRemoteType];
  [v3 statusCode];
  v4 = MRMediaRemoteCopyCommandHandlerStatusDescription();

  v5 = [(MPRemoteCommandStatus *)self type];
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v10 = [(MPRemoteCommandStatus *)self error];

        v11 = MEMORY[0x1E696AEC0];
        v12 = objc_opt_class();
        v13 = [(MPRemoteCommandStatus *)self dialog];
        v14 = v13;
        if (v10)
        {
          v15 = [(MPRemoteCommandStatus *)self error];
          v16 = [v15 msv_treeDescription];
          v17 = [v11 stringWithFormat:@"<%@: %p status=%@ dialog=%@ error=%@>", v12, self, v4, v14, v16];
        }

        else
        {
          v17 = [v11 stringWithFormat:@"<%@: %p status=%@ dialog=%@>", v12, self, v4, v13];
        }

        goto LABEL_18;
      case 3:
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v8 = [(MPRemoteCommandStatus *)self error];
        v9 = [v8 msv_treeDescription];
        [v18 stringWithFormat:@"<%@: %p status=%@ error=%@>", v19, self, v4, v9, v22];
        goto LABEL_12;
      case 999:
        v6 = MEMORY[0x1E696AEC0];
        v7 = objc_opt_class();
        v8 = [(MPRemoteCommandStatus *)self customDataType];
        v9 = [(MPRemoteCommandStatus *)self customData];
        [v6 stringWithFormat:@"<%@: %p status=%@ customData=%@/%lu bytes", v7, self, v4, v8, objc_msgSend(v9, "length")];
        v17 = LABEL_12:;

        goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 != 1)
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

- (MPRemoteCommandStatus)initWithMediaRemoteType:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MPRemoteCommandStatus;
  v6 = [(MPRemoteCommandStatus *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, a3);
    if ([(MPRemoteCommandStatus *)v7 type]== 2)
    {
      v8 = [MPRemoteCommandHandlerDialog alloc];
      v9 = [(MPRemoteCommandStatus *)v7 mediaRemoteType];
      v10 = [v9 dialog];
      v11 = [(MPRemoteCommandHandlerDialog *)v8 initWithMediaRemoteType:v10];
      dialog = v7->_dialog;
      v7->_dialog = v11;
    }
  }

  return v7;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 customData:(id)a4 type:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(a3) customData:v9 type:v8];

  v11 = [[a1 alloc] initWithMediaRemoteType:v10];

  return v11;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 dialog:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(a3);
  v11 = MEMORY[0x1E69B0B00];
  v12 = [v9 mediaRemoteType];

  v13 = [v11 statusWithCode:v10 dialog:v12 error:v8];

  v14 = [[a1 alloc] initWithMediaRemoteType:v13];

  return v14;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 dialog:(id)a4
{
  v6 = a4;
  v7 = MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(a3);
  v8 = MEMORY[0x1E69B0B00];
  v9 = [v6 mediaRemoteType];

  v10 = [v8 statusWithCode:v7 dialog:v9];

  v11 = [[a1 alloc] initWithMediaRemoteType:v10];

  return v11;
}

+ (MPRemoteCommandStatus)statusWithCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(a3) error:v6];

  v8 = [[a1 alloc] initWithMediaRemoteType:v7];

  return v8;
}

+ (id)statusWithCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69B0B00] statusWithCode:MRMediaRemoteCommandHandlerStatusFromMPRemoteCommandHandlerStatus(a3)];
  v5 = [[a1 alloc] initWithMediaRemoteType:v4];

  return v5;
}

+ (MPRemoteCommandStatus)successStatus
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPRemoteCommandStatus_successStatus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
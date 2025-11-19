@interface CNChangeHistoryAnchor
+ (id)limitedAccessHistoryAnchor;
+ (id)log;
- (CNChangeHistoryAnchor)initWithCoder:(id)a3;
- (CNChangeHistoryAnchor)initWithHistoryToken:(id)a3 error:(id *)a4;
- (CNChangeHistoryAnchor)initWithSequenceNumber:(int64_t)a3 changeRecordID:(int64_t)a4;
- (NSData)historyToken;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryAnchor

- (NSData)historyToken
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(CNChangeHistoryAnchor *)self encodeWithCoder:v3];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryAnchor version](self, "version")}];
  v5 = [v3 appendName:@"version" object:v4];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryAnchor sequenceNumber](self, "sequenceNumber")}];
  v7 = [v3 appendName:@"sequenceNumber" object:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryAnchor changeRecordID](self, "changeRecordID")}];
  v9 = [v3 appendName:@"changeRecordID" object:v8];

  v10 = [v3 build];

  return v10;
}

+ (id)log
{
  if (log_cn_once_token_0_20 != -1)
  {
    +[CNChangeHistoryAnchor log];
  }

  v3 = log_cn_once_object_0_20;

  return v3;
}

uint64_t __28__CNChangeHistoryAnchor_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNChangeHistoryAnchor");
  v1 = log_cn_once_object_0_20;
  log_cn_once_object_0_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)limitedAccessHistoryAnchor
{
  v2 = [[CNChangeHistoryAnchor alloc] initWithSequenceNumber:-1];

  return v2;
}

- (CNChangeHistoryAnchor)initWithSequenceNumber:(int64_t)a3 changeRecordID:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = CNChangeHistoryAnchor;
  v6 = [(CNChangeHistoryAnchor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_changeRecordID = a4;
    v6->_sequenceNumber = a3;
    v6->_version = 2;
    v8 = v6;
  }

  return v7;
}

- (CNChangeHistoryAnchor)initWithHistoryToken:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v14 = 0;
  v8 = [[v6 alloc] initForReadingFromData:v7 error:&v14];

  v9 = v14;
  if (v8)
  {
    v10 = [(CNChangeHistoryAnchor *)self initWithCoder:v8];
    [v8 finishDecoding];
    self = v10;
    v11 = self;
  }

  else
  {
    v12 = [MEMORY[0x1E6996708] errorWithCode:6 underlyingError:v9];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v11 = 0;
  }

  return v11;
}

- (CNChangeHistoryAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNChangeHistoryAnchor;
  v5 = [(CNChangeHistoryAnchor *)&v10 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v5->_version = 1;
  if ([v4 containsValueForKey:@"_version"])
  {
    v6->_version = [v4 decodeIntegerForKey:@"_version"];
  }

  if (![v4 containsValueForKey:@"_sequenceNumber"])
  {
    goto LABEL_9;
  }

  v7 = [v4 decodeIntegerForKey:@"_sequenceNumber"];
  v6->_changeRecordID = -1;
  v6->_sequenceNumber = v7;
  if (v6->_version >= 2)
  {
    if ([v4 containsValueForKey:@"_changeRecordID"])
    {
      v6->_changeRecordID = [v4 decodeIntegerForKey:@"_changeRecordID"];
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v8 = v6;
LABEL_10:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"_version"];
  [v5 encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [v5 encodeInteger:self->_changeRecordID forKey:@"_changeRecordID"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryAnchor *)self sequenceNumber];
  if (v5 >= [v4 sequenceNumber])
  {
    v7 = [(CNChangeHistoryAnchor *)self sequenceNumber];
    if (v7 > [v4 sequenceNumber])
    {
      v6 = 1;
      goto LABEL_7;
    }

    v8 = [(CNChangeHistoryAnchor *)self changeRecordID];
    if (v8 >= [v4 changeRecordID])
    {
      v9 = [(CNChangeHistoryAnchor *)self changeRecordID];
      v6 = v9 > [v4 changeRecordID];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

@end
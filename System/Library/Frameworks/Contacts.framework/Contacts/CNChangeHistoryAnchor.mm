@interface CNChangeHistoryAnchor
+ (id)limitedAccessHistoryAnchor;
+ (id)log;
- (CNChangeHistoryAnchor)initWithCoder:(id)coder;
- (CNChangeHistoryAnchor)initWithHistoryToken:(id)token error:(id *)error;
- (CNChangeHistoryAnchor)initWithSequenceNumber:(int64_t)number changeRecordID:(int64_t)d;
- (NSData)historyToken;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryAnchor

- (NSData)historyToken
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(CNChangeHistoryAnchor *)self encodeWithCoder:v3];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
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

  build = [v3 build];

  return build;
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

- (CNChangeHistoryAnchor)initWithSequenceNumber:(int64_t)number changeRecordID:(int64_t)d
{
  v10.receiver = self;
  v10.super_class = CNChangeHistoryAnchor;
  v6 = [(CNChangeHistoryAnchor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_changeRecordID = d;
    v6->_sequenceNumber = number;
    v6->_version = 2;
    v8 = v6;
  }

  return v7;
}

- (CNChangeHistoryAnchor)initWithHistoryToken:(id)token error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  tokenCopy = token;
  v14 = 0;
  v8 = [[v6 alloc] initForReadingFromData:tokenCopy error:&v14];

  v9 = v14;
  if (v8)
  {
    v10 = [(CNChangeHistoryAnchor *)self initWithCoder:v8];
    [v8 finishDecoding];
    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = [MEMORY[0x1E6996708] errorWithCode:6 underlyingError:v9];
    if (error)
    {
      v12 = v12;
      *error = v12;
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CNChangeHistoryAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CNChangeHistoryAnchor;
  v5 = [(CNChangeHistoryAnchor *)&v10 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v5->_version = 1;
  if ([coderCopy containsValueForKey:@"_version"])
  {
    v6->_version = [coderCopy decodeIntegerForKey:@"_version"];
  }

  if (![coderCopy containsValueForKey:@"_sequenceNumber"])
  {
    goto LABEL_9;
  }

  v7 = [coderCopy decodeIntegerForKey:@"_sequenceNumber"];
  v6->_changeRecordID = -1;
  v6->_sequenceNumber = v7;
  if (v6->_version >= 2)
  {
    if ([coderCopy containsValueForKey:@"_changeRecordID"])
    {
      v6->_changeRecordID = [coderCopy decodeIntegerForKey:@"_changeRecordID"];
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

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"_version"];
  [coderCopy encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [coderCopy encodeInteger:self->_changeRecordID forKey:@"_changeRecordID"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  sequenceNumber = [(CNChangeHistoryAnchor *)self sequenceNumber];
  if (sequenceNumber >= [compareCopy sequenceNumber])
  {
    sequenceNumber2 = [(CNChangeHistoryAnchor *)self sequenceNumber];
    if (sequenceNumber2 > [compareCopy sequenceNumber])
    {
      v6 = 1;
      goto LABEL_7;
    }

    changeRecordID = [(CNChangeHistoryAnchor *)self changeRecordID];
    if (changeRecordID >= [compareCopy changeRecordID])
    {
      changeRecordID2 = [(CNChangeHistoryAnchor *)self changeRecordID];
      v6 = changeRecordID2 > [compareCopy changeRecordID];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

@end
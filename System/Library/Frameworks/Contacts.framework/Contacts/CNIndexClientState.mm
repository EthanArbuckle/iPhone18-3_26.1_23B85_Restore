@interface CNIndexClientState
+ (CNIndexClientState)clientStateWithData:(id)data logger:(id)logger;
- (CNIndexClientState)init;
- (CNIndexClientState)initWithCoder:(id)coder;
- (id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNIndexClientState

- (CNIndexClientState)init
{
  v7.receiver = self;
  v7.super_class = CNIndexClientState;
  v2 = [(CNIndexClientState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFullSyncDone = 0;
    snapshotAnchor = v2->_snapshotAnchor;
    v2->_indexVersion = 5;
    v2->_snapshotAnchor = 0;

    v3->_fullSyncOffset = 0;
    v5 = v3;
  }

  return v3;
}

+ (CNIndexClientState)clientStateWithData:(id)data logger:(id)logger
{
  dataCopy = data;
  loggerCopy = logger;
  v7 = &unk_1EE585000;
  v8 = objc_alloc_init(CNIndexClientState);
  v13 = 0;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v13];
  v10 = v13;
  if (v9)
  {
    v7 = [[CNIndexClientState alloc] initWithCoder:v9];
    v11 = 1;
  }

  else
  {
    [loggerCopy failedToCreateUnarchiverForClientStateWithError:v10];
    v11 = 0;
  }

  [v9 finishDecoding];
  if ((v11 | 2) == 2)
  {
    v7 = v8;
  }

  return v7;
}

- (id)data
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [(CNIndexClientState *)self encodeWithCoder:v3];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"indexVersion" integerValue:self->_indexVersion];
  v5 = [v3 appendName:@"isFullSyncDone" BOOLValue:self->_isFullSyncDone];
  v6 = [v3 appendName:@"fullSyncOffset" integerValue:self->_fullSyncOffset];
  v7 = [v3 appendName:@"snapshotAnchor" object:self->_snapshotAnchor];
  build = [v3 build];

  return build;
}

- (CNIndexClientState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CNIndexClientState;
  v5 = [(CNIndexClientState *)&v10 init];
  if (v5)
  {
    v5->_indexVersion = [coderCopy decodeIntegerForKey:@"1"];
    v5->_isFullSyncDone = [coderCopy decodeBoolForKey:@"2"];
    v5->_fullSyncOffset = [coderCopy decodeIntegerForKey:@"4"];
    v6 = -[CNChangeHistoryAnchor initWithSequenceNumber:]([CNChangeHistoryAnchor alloc], "initWithSequenceNumber:", [coderCopy decodeIntegerForKey:@"5"]);
    snapshotAnchor = v5->_snapshotAnchor;
    v5->_snapshotAnchor = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CNIndexClientState indexVersion](self forKey:{"indexVersion"), @"1"}];
  [coderCopy encodeBool:-[CNIndexClientState isFullSyncDone](self forKey:{"isFullSyncDone"), @"2"}];
  [coderCopy encodeInteger:-[CNIndexClientState fullSyncOffset](self forKey:{"fullSyncOffset"), @"4"}];
  snapshotAnchor = [(CNIndexClientState *)self snapshotAnchor];
  [coderCopy encodeInteger:objc_msgSend(snapshotAnchor forKey:{"sequenceNumber"), @"5"}];
}

@end
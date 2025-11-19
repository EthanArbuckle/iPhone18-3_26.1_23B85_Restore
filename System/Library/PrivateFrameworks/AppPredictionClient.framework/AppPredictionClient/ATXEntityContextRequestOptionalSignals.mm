@interface ATXEntityContextRequestOptionalSignals
- (ATXEntityContextRequestOptionalSignals)initWithCoder:(id)a3;
- (ATXEntityContextRequestOptionalSignals)initWithEntityID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXEntityContextRequestOptionalSignals

- (ATXEntityContextRequestOptionalSignals)initWithEntityID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXEntityContextRequestOptionalSignals;
  v5 = [(ATXEntityContextRequestOptionalSignals *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    entityID = v5->_entityID;
    v5->_entityID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXEntityContextRequestOptionalSignals *)self entityID];
  [v4 encodeObject:v5 forKey:@"entityID"];

  v6 = [(ATXEntityContextRequestOptionalSignals *)self isFromPinnedMessage];
  [v4 encodeObject:v6 forKey:@"isFromPinnedMessage"];

  v7 = [(ATXEntityContextRequestOptionalSignals *)self isFromGroupMessage];
  [v4 encodeObject:v7 forKey:@"isFromGroupMessage"];

  v8 = [(ATXEntityContextRequestOptionalSignals *)self isMentionedInGroup];
  [v4 encodeObject:v8 forKey:@"isMentionedInGroup"];

  v9 = [(ATXEntityContextRequestOptionalSignals *)self isAudioMessage];
  [v4 encodeObject:v9 forKey:@"isAudioMessage"];

  v10 = [(ATXEntityContextRequestOptionalSignals *)self isFromMailingList];
  [v4 encodeObject:v10 forKey:@"isFromMailingList"];
}

- (ATXEntityContextRequestOptionalSignals)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ATXEntityContextRequestOptionalSignals;
  v5 = [(ATXEntityContextRequestOptionalSignals *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityID"];
    entityID = v5->_entityID;
    v5->_entityID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isFromPinnedMessage"];
    isFromPinnedMessage = v5->_isFromPinnedMessage;
    v5->_isFromPinnedMessage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isFromGroupMessage"];
    isFromGroupMessage = v5->_isFromGroupMessage;
    v5->_isFromGroupMessage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMentionedInGroup"];
    isMentionedInGroup = v5->_isMentionedInGroup;
    v5->_isMentionedInGroup = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAudioMessage"];
    isAudioMessage = v5->_isAudioMessage;
    v5->_isAudioMessage = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isFromMailingList"];
    isFromMailingList = v5->_isFromMailingList;
    v5->_isFromMailingList = v16;

    v18 = v5;
  }

  return v5;
}

@end
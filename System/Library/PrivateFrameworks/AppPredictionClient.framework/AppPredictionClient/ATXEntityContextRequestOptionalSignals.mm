@interface ATXEntityContextRequestOptionalSignals
- (ATXEntityContextRequestOptionalSignals)initWithCoder:(id)coder;
- (ATXEntityContextRequestOptionalSignals)initWithEntityID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXEntityContextRequestOptionalSignals

- (ATXEntityContextRequestOptionalSignals)initWithEntityID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ATXEntityContextRequestOptionalSignals;
  v5 = [(ATXEntityContextRequestOptionalSignals *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    entityID = v5->_entityID;
    v5->_entityID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityID = [(ATXEntityContextRequestOptionalSignals *)self entityID];
  [coderCopy encodeObject:entityID forKey:@"entityID"];

  isFromPinnedMessage = [(ATXEntityContextRequestOptionalSignals *)self isFromPinnedMessage];
  [coderCopy encodeObject:isFromPinnedMessage forKey:@"isFromPinnedMessage"];

  isFromGroupMessage = [(ATXEntityContextRequestOptionalSignals *)self isFromGroupMessage];
  [coderCopy encodeObject:isFromGroupMessage forKey:@"isFromGroupMessage"];

  isMentionedInGroup = [(ATXEntityContextRequestOptionalSignals *)self isMentionedInGroup];
  [coderCopy encodeObject:isMentionedInGroup forKey:@"isMentionedInGroup"];

  isAudioMessage = [(ATXEntityContextRequestOptionalSignals *)self isAudioMessage];
  [coderCopy encodeObject:isAudioMessage forKey:@"isAudioMessage"];

  isFromMailingList = [(ATXEntityContextRequestOptionalSignals *)self isFromMailingList];
  [coderCopy encodeObject:isFromMailingList forKey:@"isFromMailingList"];
}

- (ATXEntityContextRequestOptionalSignals)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ATXEntityContextRequestOptionalSignals;
  v5 = [(ATXEntityContextRequestOptionalSignals *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityID"];
    entityID = v5->_entityID;
    v5->_entityID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isFromPinnedMessage"];
    isFromPinnedMessage = v5->_isFromPinnedMessage;
    v5->_isFromPinnedMessage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isFromGroupMessage"];
    isFromGroupMessage = v5->_isFromGroupMessage;
    v5->_isFromGroupMessage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMentionedInGroup"];
    isMentionedInGroup = v5->_isMentionedInGroup;
    v5->_isMentionedInGroup = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAudioMessage"];
    isAudioMessage = v5->_isAudioMessage;
    v5->_isAudioMessage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isFromMailingList"];
    isFromMailingList = v5->_isFromMailingList;
    v5->_isFromMailingList = v16;

    v18 = v5;
  }

  return v5;
}

@end
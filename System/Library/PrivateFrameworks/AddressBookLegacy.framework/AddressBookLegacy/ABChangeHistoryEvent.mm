@interface ABChangeHistoryEvent
+ (id)groupAddEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)groupDeleteEventWithRecordID:(int)d identifier:(id)identifier externalID:(id)iD;
+ (id)groupUpdateEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)groupWithRecordID:(int)d identifier:(id)identifier eventType:(int)type externalID:(id)iD;
+ (id)linkEventWithRecordID:(int)d identifier:(id)identifier linkToIdentifier:(id)toIdentifier unifiedIdentifier:(id)unifiedIdentifier;
+ (id)meCardChangedEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)personAddEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)personDeleteEventWithRecordID:(int)d identifier:(id)identifier externalID:(id)iD personLink:(int)link;
+ (id)personUpdateEventWithRecordID:(int)d identifier:(id)identifier imagesChanged:(BOOL)changed personLink:(int)link;
+ (id)personWithRecordID:(int)d identifier:(id)identifier eventType:(int)type;
+ (id)personWithRecordID:(int)d identifier:(id)identifier eventType:(int)type imagesChanged:(BOOL)changed externalID:(id)iD personLink:(int)link;
+ (id)setPreferredImageEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)setPreferredNameEventWithRecordID:(int)d identifier:(id)identifier;
+ (id)unifiedPersonAddEventWithUnifiedIdentifier:(id)identifier;
+ (id)unifiedPersonDeleteEventWithUnifiedIdentifier:(id)identifier;
+ (id)unifiedPersonUpdateEventWithUnifiedIdentifier:(id)identifier;
+ (id)unifiedPersonWithIdentifier:(id)identifier eventType:(int)type;
+ (id)unlinkEventWithRecordID:(int)d identifier:(id)identifier;
- (ABChangeHistoryEvent)initWithEntityType:(int)type eventType:(int)eventType sequenceNumber:(int64_t)number recordID:(int)d recordGUID:(id)iD externalID:(id)externalID imagesChanged:(BOOL)changed personLink:(int)self0 personLinkUUID:(id)self1 linkToPersonUUID:(id)self2;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)descriptionForEntityType:(int)type;
- (id)descriptionForEventType:(int)type;
- (void)dealloc;
@end

@implementation ABChangeHistoryEvent

+ (id)personAddEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:v5 identifier:identifier eventType:0];
}

+ (id)personUpdateEventWithRecordID:(int)d identifier:(id)identifier imagesChanged:(BOOL)changed personLink:(int)link
{
  v6 = *&link;
  changedCopy = changed;
  v9 = *&d;
  v10 = objc_opt_class();

  return [v10 personWithRecordID:v9 identifier:identifier eventType:1 imagesChanged:changedCopy externalID:0 personLink:v6];
}

+ (id)personDeleteEventWithRecordID:(int)d identifier:(id)identifier externalID:(id)iD personLink:(int)link
{
  v6 = *&link;
  v9 = *&d;
  v10 = objc_opt_class();

  return [v10 personWithRecordID:v9 identifier:identifier eventType:2 imagesChanged:0 externalID:iD personLink:v6];
}

+ (id)unifiedPersonAddEventWithUnifiedIdentifier:(id)identifier
{
  v4 = objc_opt_class();

  return [v4 unifiedPersonWithIdentifier:identifier eventType:3];
}

+ (id)unifiedPersonUpdateEventWithUnifiedIdentifier:(id)identifier
{
  v4 = objc_opt_class();

  return [v4 unifiedPersonWithIdentifier:identifier eventType:4];
}

+ (id)unifiedPersonDeleteEventWithUnifiedIdentifier:(id)identifier
{
  v4 = objc_opt_class();

  return [v4 unifiedPersonWithIdentifier:identifier eventType:5];
}

+ (id)linkEventWithRecordID:(int)d identifier:(id)identifier linkToIdentifier:(id)toIdentifier unifiedIdentifier:(id)unifiedIdentifier
{
  HIDWORD(v8) = -1;
  LOBYTE(v8) = 0;
  v6 = [[ABChangeHistoryEvent alloc] initWithEntityType:0 eventType:6 sequenceNumber:-2 recordID:*&d recordGUID:identifier externalID:0 imagesChanged:v8 personLink:unifiedIdentifier personLinkUUID:toIdentifier linkToPersonUUID:?];

  return v6;
}

+ (id)unlinkEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:v5 identifier:identifier eventType:7];
}

+ (id)setPreferredNameEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:v5 identifier:identifier eventType:8];
}

+ (id)setPreferredImageEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:v5 identifier:identifier eventType:9];
}

+ (id)meCardChangedEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:v5 identifier:identifier eventType:10];
}

+ (id)groupAddEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 groupWithRecordID:v5 identifier:identifier eventType:0 externalID:0];
}

+ (id)groupUpdateEventWithRecordID:(int)d identifier:(id)identifier
{
  v5 = *&d;
  v6 = objc_opt_class();

  return [v6 groupWithRecordID:v5 identifier:identifier eventType:1 externalID:0];
}

+ (id)groupDeleteEventWithRecordID:(int)d identifier:(id)identifier externalID:(id)iD
{
  v6 = *&d;
  v7 = objc_opt_class();

  return [v7 groupWithRecordID:v6 identifier:identifier eventType:2 externalID:0];
}

+ (id)personWithRecordID:(int)d identifier:(id)identifier eventType:(int)type
{
  v5 = *&type;
  v7 = *&d;
  v8 = objc_opt_class();

  return [v8 personWithRecordID:v7 identifier:identifier eventType:v5 imagesChanged:0 externalID:0 personLink:0xFFFFFFFFLL];
}

+ (id)unifiedPersonWithIdentifier:(id)identifier eventType:(int)type
{
  v4 = *&type;
  v6 = objc_opt_class();

  return [v6 personWithRecordID:0xFFFFFFFFLL identifier:identifier eventType:v4 imagesChanged:0 externalID:0 personLink:0xFFFFFFFFLL];
}

+ (id)personWithRecordID:(int)d identifier:(id)identifier eventType:(int)type imagesChanged:(BOOL)changed externalID:(id)iD personLink:(int)link
{
  HIDWORD(v10) = link;
  LOBYTE(v10) = changed;
  v8 = [[ABChangeHistoryEvent alloc] initWithEntityType:0 eventType:*&type sequenceNumber:-2 recordID:*&d recordGUID:identifier externalID:iD imagesChanged:v10 personLink:0 personLinkUUID:0 linkToPersonUUID:?];

  return v8;
}

+ (id)groupWithRecordID:(int)d identifier:(id)identifier eventType:(int)type externalID:(id)iD
{
  HIDWORD(v8) = -1;
  LOBYTE(v8) = 0;
  v6 = [[ABChangeHistoryEvent alloc] initWithEntityType:1 eventType:*&type sequenceNumber:-2 recordID:*&d recordGUID:identifier externalID:iD imagesChanged:v8 personLink:0 personLinkUUID:0 linkToPersonUUID:?];

  return v6;
}

- (ABChangeHistoryEvent)initWithEntityType:(int)type eventType:(int)eventType sequenceNumber:(int64_t)number recordID:(int)d recordGUID:(id)iD externalID:(id)externalID imagesChanged:(BOOL)changed personLink:(int)self0 personLinkUUID:(id)self1 linkToPersonUUID:(id)self2
{
  v21.receiver = self;
  v21.super_class = ABChangeHistoryEvent;
  v18 = [(ABChangeHistoryEvent *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_entityType = type;
    v18->_eventType = eventType;
    v18->_sequenceNumber = number;
    v18->_recordID = d;
    v18->_recordGUID = [iD copy];
    v19->_externalID = [externalID copy];
    v19->_imagesChanged = changed;
    v19->_personLink = link;
    v19->_personLinkUUID = [uID copy];
    v19->_linkToPersonUUID = [uUID copy];
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABChangeHistoryEvent;
  [(ABChangeHistoryEvent *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  [v3 appendName:@"entityType" object:{-[ABChangeHistoryEvent descriptionForEntityType:](self, "descriptionForEntityType:", self->_entityType)}];
  [v3 appendName:@"eventType" object:{-[ABChangeHistoryEvent descriptionForEventType:](self, "descriptionForEventType:", self->_eventType)}];
  [v3 appendName:@"sequenceNumber" object:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", self->_sequenceNumber)}];
  if (self->_recordID != -1)
  {
    [v3 appendName:@"recordID" object:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
  }

  if (self->_recordGUID)
  {
    [v3 appendName:@"recordGUID" object:?];
  }

  if (self->_externalID)
  {
    [v3 appendName:@"externalID" object:?];
  }

  if (self->_imagesChanged)
  {
    [v3 appendName:@"imagesChanged" BOOLValue:1];
  }

  if (self->_personLink >= 1)
  {
    [v3 appendName:@"_personLink" object:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
  }

  if (self->_linkToPersonUUID)
  {
    [v3 appendName:@"linkToPersonUUID" object:?];
  }

  if (self->_personLinkUUID)
  {
    [v3 appendName:@"personLinkUUID" object:?];
  }

  return [v3 build];
}

- (id)descriptionForEntityType:(int)type
{
  v3 = *&type;
  if (descriptionForEntityType__cn_once_token_1 != -1)
  {
    [ABChangeHistoryEvent descriptionForEntityType:];
  }

  result = [descriptionForEntityType__cn_once_object_1 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
  if (!result)
  {
    return @"Unknown";
  }

  return result;
}

uint64_t __49__ABChangeHistoryEvent_descriptionForEntityType___block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F2FF4870;
  v1[1] = &unk_1F2FF4888;
  v2[0] = @"Person";
  v2[1] = @"Group";
  v1[2] = &unk_1F2FF48A0;
  v2[2] = @"MultiValue";
  result = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:{3), "copy"}];
  descriptionForEntityType__cn_once_object_1 = result;
  return result;
}

- (id)descriptionForEventType:(int)type
{
  v3 = *&type;
  if (descriptionForEventType__cn_once_token_2 != -1)
  {
    [ABChangeHistoryEvent descriptionForEventType:];
  }

  result = [descriptionForEventType__cn_once_object_2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
  if (!result)
  {
    return @"Unknown";
  }

  return result;
}

uint64_t __48__ABChangeHistoryEvent_descriptionForEventType___block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1F2FF4870;
  v1[1] = &unk_1F2FF4888;
  v2[0] = @"Add";
  v2[1] = @"Update";
  v1[2] = &unk_1F2FF48A0;
  v1[3] = &unk_1F2FF48B8;
  v2[2] = @"Delete";
  v2[3] = @"UnifiedAdd";
  v1[4] = &unk_1F2FF48D0;
  v1[5] = &unk_1F2FF48E8;
  v2[4] = @"UnifiedUpdate";
  v2[5] = @"Delete";
  v1[6] = &unk_1F2FF4900;
  v1[7] = &unk_1F2FF4918;
  v2[6] = @"Link";
  v2[7] = @"Unlink";
  v1[8] = &unk_1F2FF4930;
  v1[9] = &unk_1F2FF4948;
  v2[8] = @"SetPreferredName";
  v2[9] = @"SetPreferredImage";
  v1[10] = &unk_1F2FF4960;
  v2[10] = @"MeCardChanged";
  result = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:{11), "copy"}];
  descriptionForEventType__cn_once_object_2 = result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v12[6] = MEMORY[0x1E69E9820];
  v12[7] = 3221225472;
  v12[8] = __32__ABChangeHistoryEvent_isEqual___block_invoke;
  v12[9] = &unk_1E7CCD5A8;
  v12[10] = self;
  v12[11] = equal;
  v11[5] = equal;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_2;
  v12[3] = &unk_1E7CCD5A8;
  v12[4] = self;
  v12[5] = equal;
  v10[5] = equal;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_3;
  v11[3] = &unk_1E7CCD5A8;
  v11[4] = self;
  v9[5] = equal;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_4;
  v10[3] = &unk_1E7CCD5A8;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_5;
  v9[3] = &unk_1E7CCD5A8;
  v9[4] = self;
  v7[5] = equal;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_6;
  v8[3] = &unk_1E7CCD5A8;
  v8[4] = self;
  v8[5] = equal;
  v6[5] = equal;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_7;
  v7[3] = &unk_1E7CCD5A8;
  v7[4] = self;
  v5[5] = equal;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_8;
  v6[3] = &unk_1E7CCD5A8;
  v6[4] = self;
  v4[5] = equal;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_9;
  v5[3] = &unk_1E7CCD5A8;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__ABChangeHistoryEvent_isEqual___block_invoke_10;
  v4[3] = &unk_1E7CCD5A8;
  v4[4] = self;
  return [MEMORY[0x1E69966F0] isObject:v12 equalToOther:v11 withBlocks:{v10, v9, v8, v7, v6, v5, v4, 0}];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) entityType];
  v4 = [*(a1 + 40) entityType];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) eventType];
  v4 = [*(a1 + 40) eventType];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sequenceNumber];
  v4 = [*(a1 + 40) sequenceNumber];

  return [v2 isSequenceNumber:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) recordID];
  v4 = [*(a1 + 40) recordID];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) recordGUID];
  v4 = [*(a1 + 40) recordGUID];

  return [v2 isObject:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) externalID];
  v4 = [*(a1 + 40) externalID];

  return [v2 isObject:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) imagesChanged];
  v4 = [*(a1 + 40) imagesChanged];

  return [v2 isBool:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) personLink];
  v4 = [*(a1 + 40) personLink];

  return [v2 isInteger:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) personLinkUUID];
  v4 = [*(a1 + 40) personLinkUUID];

  return [v2 isObject:v3 equalToOther:v4];
}

uint64_t __32__ABChangeHistoryEvent_isEqual___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) linkToPersonUUID];
  v4 = [*(a1 + 40) linkToPersonUUID];

  return [v2 isObject:v3 equalToOther:v4];
}

@end
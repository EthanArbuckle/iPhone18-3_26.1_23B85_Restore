@interface PersonalizedItemPriorityFunctionEntry
+ (id)defaultEntryWithPriority:(int64_t)priority;
+ (id)entryWithPriority:(int64_t)priority matchBlock:(id)block;
+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type;
+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type matchBlock:(id)block;
+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type sourceSubtype:(int64_t)subtype;
+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type sourceSubtype:(int64_t)subtype matchBlock:(id)block;
- (BOOL)matches:(id)matches;
- (PersonalizedItemPriorityFunctionEntry)initWithPriority:(int64_t)priority matchesAnySourceType:(BOOL)type sourceType:(int64_t)sourceType matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype matchBlock:(id)block;
@end

@implementation PersonalizedItemPriorityFunctionEntry

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  if ((-[PersonalizedItemPriorityFunctionEntry matchesAnySourceType](self, "matchesAnySourceType") || (v5 = [matchesCopy sourceType], v5 == -[PersonalizedItemPriorityFunctionEntry sourceType](self, "sourceType"))) && (-[PersonalizedItemPriorityFunctionEntry matchesAnySourceSubtype](self, "matchesAnySourceSubtype") || (v6 = objc_msgSend(matchesCopy, "sourceSubtype"), v6 == -[PersonalizedItemPriorityFunctionEntry sourceSubtype](self, "sourceSubtype"))))
  {
    matchBlock = [(PersonalizedItemPriorityFunctionEntry *)self matchBlock];
    if (matchBlock)
    {
      v8 = matchBlock;
      matchBlock2 = [(PersonalizedItemPriorityFunctionEntry *)self matchBlock];
      v10 = (matchBlock2)[2](matchBlock2, matchesCopy);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (PersonalizedItemPriorityFunctionEntry)initWithPriority:(int64_t)priority matchesAnySourceType:(BOOL)type sourceType:(int64_t)sourceType matchesAnySourceSubtype:(BOOL)subtype sourceSubtype:(int64_t)sourceSubtype matchBlock:(id)block
{
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = PersonalizedItemPriorityFunctionEntry;
  v15 = [(PersonalizedItemPriorityFunctionEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_priority = priority;
    v15->_matchesAnySourceType = type;
    v15->_matchesAnySourceSubtype = subtype;
    v15->_sourceType = sourceType;
    v15->_sourceSubtype = sourceSubtype;
    v17 = objc_retainBlock(blockCopy);
    matchBlock = v16->_matchBlock;
    v16->_matchBlock = v17;
  }

  return v16;
}

+ (id)defaultEntryWithPriority:(int64_t)priority
{
  v3 = [[self alloc] initWithPriority:priority matchesAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:0];

  return v3;
}

+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type
{
  v4 = [[self alloc] initWithPriority:priority matchesAnySourceType:0 sourceType:type matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:0];

  return v4;
}

+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type sourceSubtype:(int64_t)subtype
{
  v5 = [[self alloc] initWithPriority:priority matchesAnySourceType:0 sourceType:type matchesAnySourceSubtype:0 sourceSubtype:subtype matchBlock:0];

  return v5;
}

+ (id)entryWithPriority:(int64_t)priority matchBlock:(id)block
{
  blockCopy = block;
  v7 = [[self alloc] initWithPriority:priority matchesAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:blockCopy];

  return v7;
}

+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type matchBlock:(id)block
{
  blockCopy = block;
  v9 = [[self alloc] initWithPriority:priority matchesAnySourceType:0 sourceType:type matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:blockCopy];

  return v9;
}

+ (id)entryWithPriority:(int64_t)priority sourceType:(int64_t)type sourceSubtype:(int64_t)subtype matchBlock:(id)block
{
  blockCopy = block;
  v11 = [[self alloc] initWithPriority:priority matchesAnySourceType:0 sourceType:type matchesAnySourceSubtype:0 sourceSubtype:subtype matchBlock:blockCopy];

  return v11;
}

@end
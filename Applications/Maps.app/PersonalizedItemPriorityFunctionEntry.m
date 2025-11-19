@interface PersonalizedItemPriorityFunctionEntry
+ (id)defaultEntryWithPriority:(int64_t)a3;
+ (id)entryWithPriority:(int64_t)a3 matchBlock:(id)a4;
+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4;
+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 matchBlock:(id)a5;
+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5;
+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5 matchBlock:(id)a6;
- (BOOL)matches:(id)a3;
- (PersonalizedItemPriorityFunctionEntry)initWithPriority:(int64_t)a3 matchesAnySourceType:(BOOL)a4 sourceType:(int64_t)a5 matchesAnySourceSubtype:(BOOL)a6 sourceSubtype:(int64_t)a7 matchBlock:(id)a8;
@end

@implementation PersonalizedItemPriorityFunctionEntry

- (BOOL)matches:(id)a3
{
  v4 = a3;
  if ((-[PersonalizedItemPriorityFunctionEntry matchesAnySourceType](self, "matchesAnySourceType") || (v5 = [v4 sourceType], v5 == -[PersonalizedItemPriorityFunctionEntry sourceType](self, "sourceType"))) && (-[PersonalizedItemPriorityFunctionEntry matchesAnySourceSubtype](self, "matchesAnySourceSubtype") || (v6 = objc_msgSend(v4, "sourceSubtype"), v6 == -[PersonalizedItemPriorityFunctionEntry sourceSubtype](self, "sourceSubtype"))))
  {
    v7 = [(PersonalizedItemPriorityFunctionEntry *)self matchBlock];
    if (v7)
    {
      v8 = v7;
      v9 = [(PersonalizedItemPriorityFunctionEntry *)self matchBlock];
      v10 = (v9)[2](v9, v4);
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

- (PersonalizedItemPriorityFunctionEntry)initWithPriority:(int64_t)a3 matchesAnySourceType:(BOOL)a4 sourceType:(int64_t)a5 matchesAnySourceSubtype:(BOOL)a6 sourceSubtype:(int64_t)a7 matchBlock:(id)a8
{
  v14 = a8;
  v20.receiver = self;
  v20.super_class = PersonalizedItemPriorityFunctionEntry;
  v15 = [(PersonalizedItemPriorityFunctionEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_priority = a3;
    v15->_matchesAnySourceType = a4;
    v15->_matchesAnySourceSubtype = a6;
    v15->_sourceType = a5;
    v15->_sourceSubtype = a7;
    v17 = objc_retainBlock(v14);
    matchBlock = v16->_matchBlock;
    v16->_matchBlock = v17;
  }

  return v16;
}

+ (id)defaultEntryWithPriority:(int64_t)a3
{
  v3 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:0];

  return v3;
}

+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4
{
  v4 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:0 sourceType:a4 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:0];

  return v4;
}

+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5
{
  v5 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:0 sourceType:a4 matchesAnySourceSubtype:0 sourceSubtype:a5 matchBlock:0];

  return v5;
}

+ (id)entryWithPriority:(int64_t)a3 matchBlock:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:1 sourceType:0 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:v6];

  return v7;
}

+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 matchBlock:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:0 sourceType:a4 matchesAnySourceSubtype:1 sourceSubtype:0 matchBlock:v8];

  return v9;
}

+ (id)entryWithPriority:(int64_t)a3 sourceType:(int64_t)a4 sourceSubtype:(int64_t)a5 matchBlock:(id)a6
{
  v10 = a6;
  v11 = [[a1 alloc] initWithPriority:a3 matchesAnySourceType:0 sourceType:a4 matchesAnySourceSubtype:0 sourceSubtype:a5 matchBlock:v10];

  return v11;
}

@end
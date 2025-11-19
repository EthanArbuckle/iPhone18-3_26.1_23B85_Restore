@interface PTPushResult
+ (PTPushResult)leaveChannelPushResult;
+ (PTPushResult)pushResultForActiveRemoteParticipant:(PTParticipant *)participant;
+ (PTPushResult)serviceUpdatePushResult;
- (id)_initWithResultType:(int64_t)a3 participant:(id)a4;
@end

@implementation PTPushResult

- (id)_initWithResultType:(int64_t)a3 participant:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PTPushResult;
  v8 = [(PTPushResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_participant, a4);
  }

  return v9;
}

+ (PTPushResult)leaveChannelPushResult
{
  v2 = [[PTPushResult alloc] _initWithResultType:1 participant:0];

  return v2;
}

+ (PTPushResult)pushResultForActiveRemoteParticipant:(PTParticipant *)participant
{
  v3 = participant;
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "+[PTPushResult pushResultForActiveRemoteParticipant:]", @"participant"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"participant must be a kind of PTParticipant"];
  }

  v4 = [[PTPushResult alloc] _initWithResultType:2 participant:v3];

  return v4;
}

+ (PTPushResult)serviceUpdatePushResult
{
  v2 = [[PTPushResult alloc] _initWithResultType:4 participant:0];

  return v2;
}

@end
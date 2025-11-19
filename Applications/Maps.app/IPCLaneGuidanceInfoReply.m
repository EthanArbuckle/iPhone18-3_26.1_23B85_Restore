@interface IPCLaneGuidanceInfoReply
+ (id)ipcReplyForLaneGuidanceInfo:(id)a3;
- (IPCLaneGuidanceInfoReply)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
- (id)laneGuidanceInfo;
@end

@implementation IPCLaneGuidanceInfoReply

- (id)dictionaryValue
{
  v16.receiver = self;
  v16.super_class = IPCLaneGuidanceInfoReply;
  v3 = [(IPCMessageObject *)&v16 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLaneInfoIDKey"];

  v7 = [(IPCLaneGuidanceInfoReply *)self lanes];
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  [v4 setObject:v8 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLanesKey"];

  v9 = [NSNumber numberWithBool:[(IPCLaneGuidanceInfoReply *)self isForManeuver]];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyIsForManeuverKey"];

  v10 = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyInstructionsKey"];

  v12 = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  [v4 setObject:v13 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyMidStepKey"];

  v14 = [v4 copy];

  return v14;
}

- (id)laneGuidanceInfo
{
  v3 = [NavSignLaneGuidanceInfo alloc];
  v4 = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  v5 = [(IPCLaneGuidanceInfoReply *)self lanes];
  v6 = [(IPCLaneGuidanceInfoReply *)self isForManeuver];
  v7 = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  v8 = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  v9 = [(NavSignLaneGuidanceInfo *)v3 initWithLaneInfoId:v4 lanes:v5 forManeuver:v6 midStepTitles:v7 details:v8];

  return v9;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = IPCLaneGuidanceInfoReply;
  v3 = [(IPCLaneGuidanceInfoReply *)&v11 description];
  v4 = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  v5 = [(IPCLaneGuidanceInfoReply *)self lanes];
  v6 = [(IPCLaneGuidanceInfoReply *)self isForManeuver];
  v7 = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  v8 = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  v9 = [NSString stringWithFormat:@"%@             laneInfoID : {%@}             lanes : {%@}             isForManeuver : %d             instructions: {%@}             midStepTitles {%@}", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (IPCLaneGuidanceInfoReply)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IPCLaneGuidanceInfoReply;
  v5 = [(IPCMessageObject *)&v17 initWithDictionary:v4];
  if (v5)
  {
    v6 = [NSUUID alloc];
    v7 = [v4 objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLaneInfoIDKey"];
    v8 = [v6 initWithUUIDString:v7];
    [(IPCLaneGuidanceInfoReply *)v5 setLaneInfoId:v8];

    v9 = [v4 objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLanesKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
      v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:0];
    }

    else
    {
      v12 = 0;
    }

    [(IPCLaneGuidanceInfoReply *)v5 setLanes:v12];
    v13 = [v4 objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyIsForManeuverKey"];
    -[IPCLaneGuidanceInfoReply setIsForManeuver:](v5, "setIsForManeuver:", [v13 BOOLValue]);

    v14 = sub_10002E398(v4, @"kIPCLaneGuidanceInfoReplyInstructionsKey");
    [(IPCLaneGuidanceInfoReply *)v5 setTextAlternatives:v14];

    v15 = sub_10002E398(v4, @"kIPCLaneGuidanceInfoReplyMidStepKey");
    [(IPCLaneGuidanceInfoReply *)v5 setMidStepTitles:v15];
  }

  return v5;
}

+ (id)ipcReplyForLaneGuidanceInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IPCLaneGuidanceInfoReply);
  v5 = [v3 laneInfoId];
  [(IPCLaneGuidanceInfoReply *)v4 setLaneInfoId:v5];

  v6 = [v3 lanes];
  [(IPCLaneGuidanceInfoReply *)v4 setLanes:v6];

  -[IPCLaneGuidanceInfoReply setIsForManeuver:](v4, "setIsForManeuver:", [v3 isForManeuver]);
  v7 = [v3 textAlternatives];
  [(IPCLaneGuidanceInfoReply *)v4 setTextAlternatives:v7];

  v8 = [v3 midStepTitles];

  [(IPCLaneGuidanceInfoReply *)v4 setMidStepTitles:v8];

  return v4;
}

@end
@interface IPCLaneGuidanceInfoReply
+ (id)ipcReplyForLaneGuidanceInfo:(id)info;
- (IPCLaneGuidanceInfoReply)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
- (id)laneGuidanceInfo;
@end

@implementation IPCLaneGuidanceInfoReply

+ (id)ipcReplyForLaneGuidanceInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(IPCLaneGuidanceInfoReply);
  laneInfoId = [infoCopy laneInfoId];
  [(IPCLaneGuidanceInfoReply *)v4 setLaneInfoId:laneInfoId];

  lanes = [infoCopy lanes];
  [(IPCLaneGuidanceInfoReply *)v4 setLanes:lanes];

  -[IPCLaneGuidanceInfoReply setIsForManeuver:](v4, "setIsForManeuver:", [infoCopy isForManeuver]);
  textAlternatives = [infoCopy textAlternatives];
  [(IPCLaneGuidanceInfoReply *)v4 setTextAlternatives:textAlternatives];

  midStepTitles = [infoCopy midStepTitles];

  [(IPCLaneGuidanceInfoReply *)v4 setMidStepTitles:midStepTitles];

  return v4;
}

- (id)laneGuidanceInfo
{
  v3 = [NavSignLaneGuidanceInfo alloc];
  laneInfoId = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  lanes = [(IPCLaneGuidanceInfoReply *)self lanes];
  isForManeuver = [(IPCLaneGuidanceInfoReply *)self isForManeuver];
  midStepTitles = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  textAlternatives = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  v9 = [(NavSignLaneGuidanceInfo *)v3 initWithLaneInfoId:laneInfoId lanes:lanes forManeuver:isForManeuver midStepTitles:midStepTitles details:textAlternatives];

  return v9;
}

- (IPCLaneGuidanceInfoReply)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = IPCLaneGuidanceInfoReply;
  v5 = [(IPCMessageObject *)&v17 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [NSUUID alloc];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLaneInfoIDKey"];
    v8 = [v6 initWithUUIDString:v7];
    [(IPCLaneGuidanceInfoReply *)v5 setLaneInfoId:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLanesKey"];
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
    v13 = [dictionaryCopy objectForKeyedSubscript:@"kIPCLaneGuidanceInfoReplyIsForManeuverKey"];
    -[IPCLaneGuidanceInfoReply setIsForManeuver:](v5, "setIsForManeuver:", [v13 BOOLValue]);

    v14 = IPCMessageGetServerFormattedInstructionArrayForKey(dictionaryCopy, @"kIPCLaneGuidanceInfoReplyInstructionsKey");
    [(IPCLaneGuidanceInfoReply *)v5 setTextAlternatives:v14];

    v15 = IPCMessageGetServerFormattedInstructionArrayForKey(dictionaryCopy, @"kIPCLaneGuidanceInfoReplyMidStepKey");
    [(IPCLaneGuidanceInfoReply *)v5 setMidStepTitles:v15];
  }

  return v5;
}

- (id)dictionaryValue
{
  v16.receiver = self;
  v16.super_class = IPCLaneGuidanceInfoReply;
  dictionaryValue = [(IPCMessageObject *)&v16 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  laneInfoId = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  uUIDString = [laneInfoId UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLaneInfoIDKey"];

  lanes = [(IPCLaneGuidanceInfoReply *)self lanes];
  v8 = [NSKeyedArchiver archivedDataWithRootObject:lanes requiringSecureCoding:1 error:0];
  [v4 setObject:v8 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyLanesKey"];

  v9 = [NSNumber numberWithBool:[(IPCLaneGuidanceInfoReply *)self isForManeuver]];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyIsForManeuverKey"];

  textAlternatives = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  v11 = [NSKeyedArchiver archivedDataWithRootObject:textAlternatives requiringSecureCoding:1 error:0];
  [v4 setObject:v11 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyInstructionsKey"];

  midStepTitles = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  v13 = [NSKeyedArchiver archivedDataWithRootObject:midStepTitles requiringSecureCoding:1 error:0];
  [v4 setObject:v13 forKeyedSubscript:@"kIPCLaneGuidanceInfoReplyMidStepKey"];

  v14 = [v4 copy];

  return v14;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = IPCLaneGuidanceInfoReply;
  v3 = [(IPCLaneGuidanceInfoReply *)&v11 description];
  laneInfoId = [(IPCLaneGuidanceInfoReply *)self laneInfoId];
  lanes = [(IPCLaneGuidanceInfoReply *)self lanes];
  isForManeuver = [(IPCLaneGuidanceInfoReply *)self isForManeuver];
  textAlternatives = [(IPCLaneGuidanceInfoReply *)self textAlternatives];
  midStepTitles = [(IPCLaneGuidanceInfoReply *)self midStepTitles];
  v9 = [NSString stringWithFormat:@"%@             laneInfoID : {%@}             lanes : {%@}             isForManeuver : %d             instructions: {%@}             midStepTitles {%@}", v3, laneInfoId, lanes, isForManeuver, textAlternatives, midStepTitles];

  return v9;
}

@end
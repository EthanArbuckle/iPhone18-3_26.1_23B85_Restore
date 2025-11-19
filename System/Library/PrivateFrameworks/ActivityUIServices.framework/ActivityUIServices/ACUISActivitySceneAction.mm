@interface ACUISActivitySceneAction
- (ACUISActivitySceneAction)initWithCommand:(int64_t)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)command;
@end

@implementation ACUISActivitySceneAction

- (ACUISActivitySceneAction)initWithCommand:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:0];

  v9.receiver = self;
  v9.super_class = ACUISActivitySceneAction;
  v7 = [(ACUISActivitySceneAction *)&v9 initWithInfo:v5 responder:0];

  return v7;
}

- (int64_t)command
{
  v2 = [(ACUISActivitySceneAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"command";
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5)
  {
    return 0;
  }

  v8 = [a4 unsignedIntegerValue];
  if ((v8 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E72627C0[v8 - 1];
  }
}

@end
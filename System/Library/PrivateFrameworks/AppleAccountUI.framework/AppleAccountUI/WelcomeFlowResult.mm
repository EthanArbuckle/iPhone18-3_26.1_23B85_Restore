@interface WelcomeFlowResult
- (NSDictionary)info;
- (NSError)error;
- (NSString)stage;
- (int64_t)outcome;
- (void)setError:(id)error;
- (void)setInfo:(id)info;
- (void)setOutcome:(int64_t)outcome;
- (void)setStage:(id)stage;
@end

@implementation WelcomeFlowResult

- (int64_t)outcome
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C550F30C();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setOutcome:(int64_t)outcome
{
  MEMORY[0x1E69E5928](self);
  sub_1C550F3C8(outcome);
  MEMORY[0x1E69E5920](self);
}

- (NSString)stage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C550F648();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setStage:(id)stage
{
  MEMORY[0x1E69E5928](stage);
  MEMORY[0x1E69E5928](self);
  sub_1C550F720(stage);
  MEMORY[0x1E69E5920](self);
}

- (NSDictionary)info
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1C550FA48();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1C5596434();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInfo:(id)info
{
  MEMORY[0x1E69E5928](info);
  MEMORY[0x1E69E5928](self);
  if (info)
  {
    v3 = sub_1C5596444();
    MEMORY[0x1E69E5920](info);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1C550FB88(v4);
  MEMORY[0x1E69E5920](self);
}

- (NSError)error
{
  MEMORY[0x1E69E5928](self);
  v6 = sub_1C550FE78();
  MEMORY[0x1E69E5920](self);
  if (v6)
  {
    v3 = sub_1C5594864();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setError:(id)error
{
  MEMORY[0x1E69E5928](error);
  MEMORY[0x1E69E5928](self);
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = 0;
  }

  sub_1C550FF78(errorCopy);
  MEMORY[0x1E69E5920](self);
}

@end
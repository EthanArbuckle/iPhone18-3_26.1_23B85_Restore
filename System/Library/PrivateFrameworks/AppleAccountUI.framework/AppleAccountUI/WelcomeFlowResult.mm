@interface WelcomeFlowResult
- (NSDictionary)info;
- (NSError)error;
- (NSString)stage;
- (int64_t)outcome;
- (void)setError:(id)a3;
- (void)setInfo:(id)a3;
- (void)setOutcome:(int64_t)a3;
- (void)setStage:(id)a3;
@end

@implementation WelcomeFlowResult

- (int64_t)outcome
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C550F30C();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setOutcome:(int64_t)a3
{
  MEMORY[0x1E69E5928](self);
  sub_1C550F3C8(a3);
  MEMORY[0x1E69E5920](self);
}

- (NSString)stage
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C550F648();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setStage:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C550F720(a3);
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

- (void)setInfo:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v3 = sub_1C5596444();
    MEMORY[0x1E69E5920](a3);
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

- (void)setError:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  sub_1C550FF78(v3);
  MEMORY[0x1E69E5920](self);
}

@end